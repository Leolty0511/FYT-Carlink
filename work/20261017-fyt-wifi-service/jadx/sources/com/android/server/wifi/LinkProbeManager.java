package com.android.server.wifi;

import android.R;
import android.content.Context;
import android.database.ContentObserver;
import android.net.MacAddress;
import android.net.wifi.WifiInfo;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import com.android.internal.annotations.VisibleForTesting;
import com.android.server.wifi.util.TimedQuotaManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class LinkProbeManager {

    @VisibleForTesting
    static final long DELAY_AFTER_TX_SUCCESS_MS = 6000;

    @VisibleForTesting
    static final long DELAY_BETWEEN_PROBES_MS = 6000;

    @VisibleForTesting
    static final int LINK_SPEED_THRESHOLD_MBPS = 15;

    @VisibleForTesting
    static final long MAX_PROBE_COUNT_IN_PERIOD = 192;

    @VisibleForTesting
    static final long SCREEN_ON_DELAY_MS = 6000;
    private static final String TAG = "WifiLinkProbeManager";
    private static final int WIFI_LINK_PROBING_ENABLED_DEFAULT = 1;
    private final Clock mClock;
    private final Context mContext;
    private final FrameworkFacade mFrameworkFacade;
    private long mLastLinkProbeTimestampMs;
    private long mLastScreenOnTimestampMs;
    private long mLastTxSuccessCount;
    private long mLastTxSuccessIncreaseTimestampMs;
    private boolean mLinkProbingSupported;
    private final TimedQuotaManager mTimedQuotaManager;
    private final WifiMetrics mWifiMetrics;
    private final WifiNative mWifiNative;

    @VisibleForTesting
    static final long PERIOD_MILLIS = Duration.ofDays(1).toMillis();

    @VisibleForTesting
    static final int[] EXPERIMENT_DELAYS_MS = {3000, 6000, 9000, 12000, 15000};

    @VisibleForTesting
    static final int RSSI_THRESHOLD = -70;

    @VisibleForTesting
    static final int[] EXPERIMENT_RSSIS = {-65, RSSI_THRESHOLD, -75};

    @VisibleForTesting
    static final int[] EXPERIMENT_LINK_SPEEDS = {10, 15, 20};
    private List<Experiment> mExperiments = new ArrayList();
    private boolean mLinkProbingEnabled = false;
    private boolean mVerboseLoggingEnabled = false;

    public LinkProbeManager(Clock clock, WifiNative wifiNative, WifiMetrics wifiMetrics, FrameworkFacade frameworkFacade, Looper looper, Context context) {
        this.mClock = clock;
        this.mWifiNative = wifiNative;
        this.mWifiMetrics = wifiMetrics;
        this.mFrameworkFacade = frameworkFacade;
        this.mContext = context;
        this.mLinkProbingSupported = this.mContext.getResources().getBoolean(R.bool.config_cecTvSendStandbyOnSleepEnabled_allowed);
        this.mTimedQuotaManager = new TimedQuotaManager(clock, MAX_PROBE_COUNT_IN_PERIOD, PERIOD_MILLIS);
        if (this.mLinkProbingSupported) {
            this.mFrameworkFacade.registerContentObserver(this.mContext, Settings.Global.getUriFor("wifi_link_probing_enabled"), false, new ContentObserver(new Handler(looper)) { // from class: com.android.server.wifi.LinkProbeManager.1
                @Override // android.database.ContentObserver
                public void onChange(boolean selfChange) {
                    LinkProbeManager.this.updateLinkProbeSetting();
                }
            });
            updateLinkProbeSetting();
            resetOnNewConnection();
            resetOnScreenTurnedOn();
        }
        initExperiments();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLinkProbeSetting() {
        int flag = this.mFrameworkFacade.getIntegerSetting(this.mContext, "wifi_link_probing_enabled", 1);
        this.mLinkProbingEnabled = flag == 1;
    }

    public void enableVerboseLogging(boolean enable) {
        this.mVerboseLoggingEnabled = enable;
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("Dump of LinkProbeManager");
        pw.println("LinkProbeManager - link probing supported by device: " + this.mLinkProbingSupported);
        pw.println("LinkProbeManager - link probing feature flag enabled: " + this.mLinkProbingEnabled);
        pw.println("LinkProbeManager - mLastLinkProbeTimestampMs: " + this.mLastLinkProbeTimestampMs);
        pw.println("LinkProbeManager - mLastTxSuccessIncreaseTimestampMs: " + this.mLastTxSuccessIncreaseTimestampMs);
        pw.println("LinkProbeManager - mLastTxSuccessCount: " + this.mLastTxSuccessCount);
        pw.println("LinkProbeManager - mLastScreenOnTimestampMs: " + this.mLastScreenOnTimestampMs);
        pw.println("LinkProbeManager - mTimedQuotaManager: " + this.mTimedQuotaManager);
    }

    public void resetOnNewConnection() {
        this.mExperiments.forEach(new Consumer() { // from class: com.android.server.wifi.-$$Lambda$X1lFDUueUo45PAoqhGr4T3sqGcQ
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((LinkProbeManager.Experiment) obj).resetOnNewConnection();
            }
        });
        if (this.mLinkProbingSupported) {
            long now = this.mClock.getElapsedSinceBootMillis();
            this.mLastLinkProbeTimestampMs = now;
            this.mLastTxSuccessIncreaseTimestampMs = now;
            this.mLastTxSuccessCount = 0L;
        }
    }

    public void resetOnScreenTurnedOn() {
        this.mExperiments.forEach(new Consumer() { // from class: com.android.server.wifi.-$$Lambda$wnTZM417PCBfxzRuRKe4M8L3Dow
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((LinkProbeManager.Experiment) obj).resetOnScreenTurnedOn();
            }
        });
        if (this.mLinkProbingSupported) {
            this.mLastScreenOnTimestampMs = this.mClock.getElapsedSinceBootMillis();
        }
    }

    public void updateConnectionStats(final WifiInfo wifiInfo, String interfaceName) {
        this.mExperiments.forEach(new Consumer() { // from class: com.android.server.wifi.-$$Lambda$LinkProbeManager$tHdZ48pDnwi-1fdTGAdOIdJQhek
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((LinkProbeManager.Experiment) obj).updateConnectionStats(wifiInfo);
            }
        });
        if (this.mLinkProbingSupported) {
            long now = this.mClock.getElapsedSinceBootMillis();
            if (this.mLastTxSuccessCount < wifiInfo.txSuccess) {
                this.mLastTxSuccessIncreaseTimestampMs = now;
            }
            this.mLastTxSuccessCount = wifiInfo.txSuccess;
            long timeSinceLastLinkProbeMs = now - this.mLastLinkProbeTimestampMs;
            if (timeSinceLastLinkProbeMs < 6000) {
                return;
            }
            final long timeSinceLastTxSuccessIncreaseMs = now - this.mLastTxSuccessIncreaseTimestampMs;
            if (timeSinceLastTxSuccessIncreaseMs < 6000) {
                return;
            }
            long timeSinceLastScreenOnMs = now - this.mLastScreenOnTimestampMs;
            if (timeSinceLastScreenOnMs < 6000) {
                return;
            }
            final int rssi = wifiInfo.getRssi();
            final int linkSpeed = wifiInfo.getLinkSpeed();
            if ((rssi != -127 && rssi > RSSI_THRESHOLD && linkSpeed > 15) || !this.mTimedQuotaManager.requestQuota()) {
                return;
            }
            if (this.mLinkProbingEnabled) {
                if (this.mVerboseLoggingEnabled) {
                    Log.d(TAG, String.format("link probing triggered with conditions: timeSinceLastLinkProbeMs=%d timeSinceLastTxSuccessIncreaseMs=%d rssi=%d linkSpeed=%s", Long.valueOf(timeSinceLastLinkProbeMs), Long.valueOf(timeSinceLastTxSuccessIncreaseMs), Integer.valueOf(rssi), Integer.valueOf(linkSpeed)));
                }
                this.mWifiNative.probeLink(interfaceName, MacAddress.fromString(wifiInfo.getBSSID()), new WifiNative.SendMgmtFrameCallback() { // from class: com.android.server.wifi.LinkProbeManager.2
                    @Override // com.android.server.wifi.WifiNative.SendMgmtFrameCallback
                    public void onAck(int elapsedTimeMs) {
                        if (LinkProbeManager.this.mVerboseLoggingEnabled) {
                            Log.d(LinkProbeManager.TAG, "link probing success, elapsedTimeMs=" + elapsedTimeMs);
                        }
                        LinkProbeManager.this.mWifiMetrics.logLinkProbeSuccess(timeSinceLastTxSuccessIncreaseMs, rssi, linkSpeed, elapsedTimeMs);
                    }

                    @Override // com.android.server.wifi.WifiNative.SendMgmtFrameCallback
                    public void onFailure(int reason) {
                        if (LinkProbeManager.this.mVerboseLoggingEnabled) {
                            Log.d(LinkProbeManager.TAG, "link probing failure, reason=" + reason);
                        }
                        LinkProbeManager.this.mWifiMetrics.logLinkProbeFailure(timeSinceLastTxSuccessIncreaseMs, rssi, linkSpeed, reason);
                    }
                }, -1);
            }
            this.mLastLinkProbeTimestampMs = this.mClock.getElapsedSinceBootMillis();
        }
    }

    private void initExperiments() {
        for (int delay : EXPERIMENT_DELAYS_MS) {
            int[] iArr = EXPERIMENT_RSSIS;
            int length = iArr.length;
            int i = 0;
            while (i < length) {
                int rssiThreshold = iArr[i];
                int[] iArr2 = EXPERIMENT_LINK_SPEEDS;
                int length2 = iArr2.length;
                int i2 = 0;
                while (i2 < length2) {
                    int linkSpeedThreshold = iArr2[i2];
                    Experiment experiment = new Experiment(this.mClock, this.mWifiMetrics, delay, delay, delay, rssiThreshold, linkSpeedThreshold);
                    this.mExperiments.add(experiment);
                    i2++;
                    length2 = length2;
                    iArr2 = iArr2;
                    i = i;
                }
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class Experiment {
        private final Clock mClock;
        private final int mDelayBetweenProbesMs;
        private final String mExperimentId = getExperimentId();
        private long mLastLinkProbeTimestampMs;
        private long mLastScreenOnTimestampMs;
        private long mLastTxSuccessCount;
        private long mLastTxSuccessIncreaseTimestampMs;
        private final int mLinkSpeedThreshold;
        private final int mNoTxDelayMs;
        private final int mRssiThreshold;
        private final int mScreenOnDelayMs;
        private final WifiMetrics mWifiMetrics;

        Experiment(Clock clock, WifiMetrics wifiMetrics, int screenOnDelayMs, int noTxDelayMs, int delayBetweenProbesMs, int rssiThreshold, int linkSpeedThreshold) {
            this.mClock = clock;
            this.mWifiMetrics = wifiMetrics;
            this.mScreenOnDelayMs = screenOnDelayMs;
            this.mNoTxDelayMs = noTxDelayMs;
            this.mDelayBetweenProbesMs = delayBetweenProbesMs;
            this.mRssiThreshold = rssiThreshold;
            this.mLinkSpeedThreshold = linkSpeedThreshold;
            resetOnNewConnection();
            resetOnScreenTurnedOn();
        }

        private String getExperimentId() {
            return "[screenOnDelay=" + this.mScreenOnDelayMs + ",noTxDelay=" + this.mNoTxDelayMs + ",delayBetweenProbes=" + this.mDelayBetweenProbesMs + ",rssiThreshold=" + this.mRssiThreshold + ",linkSpeedThreshold=" + this.mLinkSpeedThreshold + ']';
        }

        void resetOnNewConnection() {
            long now = this.mClock.getElapsedSinceBootMillis();
            this.mLastLinkProbeTimestampMs = now;
            this.mLastTxSuccessIncreaseTimestampMs = now;
            this.mLastTxSuccessCount = 0L;
        }

        void resetOnScreenTurnedOn() {
            this.mLastScreenOnTimestampMs = this.mClock.getElapsedSinceBootMillis();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void updateConnectionStats(WifiInfo wifiInfo) {
            long now = this.mClock.getElapsedSinceBootMillis();
            if (this.mLastTxSuccessCount < wifiInfo.txSuccess) {
                this.mLastTxSuccessIncreaseTimestampMs = now;
            }
            this.mLastTxSuccessCount = wifiInfo.txSuccess;
            long timeSinceLastLinkProbeMs = now - this.mLastLinkProbeTimestampMs;
            if (timeSinceLastLinkProbeMs < this.mDelayBetweenProbesMs) {
                return;
            }
            long timeSinceLastTxSuccessIncreaseMs = now - this.mLastTxSuccessIncreaseTimestampMs;
            if (timeSinceLastTxSuccessIncreaseMs < this.mNoTxDelayMs) {
                return;
            }
            long timeSinceLastScreenOnMs = now - this.mLastScreenOnTimestampMs;
            if (timeSinceLastScreenOnMs < 6000) {
                return;
            }
            int rssi = wifiInfo.getRssi();
            int linkSpeed = wifiInfo.getLinkSpeed();
            if (rssi != -127 && rssi > this.mRssiThreshold && linkSpeed > this.mLinkSpeedThreshold) {
                return;
            }
            this.mWifiMetrics.incrementLinkProbeExperimentProbeCount(this.mExperimentId);
            this.mLastLinkProbeTimestampMs = this.mClock.getElapsedSinceBootMillis();
        }
    }
}
