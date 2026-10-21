package android.net.wifi;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioService;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.NetworkInfo;
import android.net.http.Connection;
import android.os.Message;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.LruCache;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import u.b;
import u.l;
import u.m;

/* JADX INFO: loaded from: classes.dex */
public class WifiWatchdogStateMachine extends m {
    private static final int BASE = 135168;
    private static final int BSSID_STAT_CACHE_SIZE = 20;
    private static final int BSSID_STAT_EMPTY_COUNT = 3;
    private static final int BSSID_STAT_RANGE_HIGH_DBM = -45;
    private static final int BSSID_STAT_RANGE_LOW_DBM = -105;
    private static final int CMD_RSSI_FETCH = 135179;
    private static final boolean DBG = false;
    public static final boolean DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED = false;
    private static final int EVENT_BSSID_CHANGE = 135175;
    private static final int EVENT_NETWORK_STATE_CHANGE = 135170;
    private static final int EVENT_RSSI_CHANGE = 135171;
    private static final int EVENT_SCREEN_OFF = 135177;
    private static final int EVENT_SCREEN_ON = 135176;
    private static final int EVENT_SUPPLICANT_STATE_CHANGE = 135172;
    private static final int EVENT_WATCHDOG_SETTINGS_CHANGE = 135174;
    private static final int EVENT_WATCHDOG_TOGGLED = 135169;
    private static final int EVENT_WIFI_RADIO_STATE_CHANGE = 135173;
    private static final double EXP_COEFFICIENT_MONITOR = 0.5d;
    private static final double EXP_COEFFICIENT_RECORD = 0.1d;
    public static final int GOOD_LINK_DETECTED = 135190;
    private static final double GOOD_LINK_LOSS_THRESHOLD = 0.1d;
    private static final int GOOD_LINK_RSSI_RANGE_MAX = 20;
    private static final int GOOD_LINK_RSSI_RANGE_MIN = 3;
    private static final int LINK_MONITOR_LEVEL_THRESHOLD = 4;
    private static final long LINK_SAMPLING_INTERVAL_MS = 1000;
    public static final int POOR_LINK_DETECTED = 135189;
    private static final double POOR_LINK_LOSS_THRESHOLD = 0.5d;
    private static final double POOR_LINK_MIN_VOLUME = 2.0d;
    private static final int POOR_LINK_SAMPLE_COUNT = 3;
    private static double[] sPresetLoss;
    private BroadcastReceiver mBroadcastReceiver;
    private LruCache<String, BssidStatistics> mBssidCache;
    private ConnectedState mConnectedState;
    private ContentResolver mContentResolver;
    private Context mContext;
    private BssidStatistics mCurrentBssid;
    private VolumeWeightedEMA mCurrentLoss;
    private int mCurrentSignalLevel;
    private DefaultState mDefaultState;
    private IntentFilter mIntentFilter;
    private boolean mIsScreenOn;
    private LinkMonitoringState mLinkMonitoringState;
    private LinkProperties mLinkProperties;
    private NotConnectedState mNotConnectedState;
    private OnlineState mOnlineState;
    private OnlineWatchState mOnlineWatchState;
    private boolean mPoorNetworkDetectionEnabled;
    private int mRssiFetchToken;
    private VerifyingLinkState mVerifyingLinkState;
    private WatchdogDisabledState mWatchdogDisabledState;
    private WatchdogEnabledState mWatchdogEnabledState;
    private WifiInfo mWifiInfo;
    private WifiManager mWifiManager;
    private b mWsmChannel;
    private static final GoodLinkTarget[] GOOD_LINK_TARGET = {new GoodLinkTarget(0, 3, 1800000), new GoodLinkTarget(3, 5, 300000), new GoodLinkTarget(6, 10, Connection.SOCKET_TIMEOUT), new GoodLinkTarget(9, 30, 0)};
    private static final MaxAvoidTime[] MAX_AVOID_TIME = {new MaxAvoidTime(1800000, AudioService.STREAM_REMOTE_MUSIC), new MaxAvoidTime(300000, -70), new MaxAvoidTime(0, -55)};
    private static boolean sWifiOnly = false;

    /* JADX INFO: renamed from: android.net.wifi.WifiWatchdogStateMachine$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        public static final /* synthetic */ int[] $SwitchMap$android$net$NetworkInfo$DetailedState;

        static {
            int[] iArr = new int[NetworkInfo.DetailedState.values().length];
            $SwitchMap$android$net$NetworkInfo$DetailedState = iArr;
            try {
                iArr[NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$net$NetworkInfo$DetailedState[NetworkInfo.DetailedState.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public class BssidStatistics {
        private final String mBssid;
        private long mBssidAvoidTimeMax;
        private int mGoodLinkTargetCount;
        private int mGoodLinkTargetIndex;
        private int mGoodLinkTargetRssi;
        private long mLastTimeGood;
        private long mLastTimePoor;
        private long mLastTimeSample;
        private int mRssiBase = -105;
        private int mEntriesSize = 61;
        private VolumeWeightedEMA[] mEntries = new VolumeWeightedEMA[61];

        public BssidStatistics(String str) {
            this.mBssid = str;
            for (int i2 = 0; i2 < this.mEntriesSize; i2++) {
                this.mEntries[i2] = WifiWatchdogStateMachine.this.new VolumeWeightedEMA(0.1d);
            }
        }

        public int findRssiTarget(int i2, int i3, double d2) {
            int i4 = this.mRssiBase;
            int i5 = i2 - i4;
            int i6 = i3 - i4;
            int i7 = i5 < i6 ? 1 : -1;
            int i8 = 0;
            while (i5 != i6) {
                if (i5 < 0 || i5 >= this.mEntriesSize || this.mEntries[i5].mVolume <= 1.0d) {
                    i8++;
                    if (i8 >= 3) {
                        int i9 = this.mRssiBase + i5;
                        if (presetLoss(i9) < d2) {
                            return i9;
                        }
                    } else {
                        continue;
                    }
                } else {
                    if (this.mEntries[i5].mValue < d2) {
                        return this.mRssiBase + i5;
                    }
                    i8 = 0;
                }
                i5 += i7;
            }
            return this.mRssiBase + i6;
        }

        public void newLinkDetected() {
            if (this.mBssidAvoidTimeMax > 0) {
                return;
            }
            this.mGoodLinkTargetRssi = findRssiTarget(-105, WifiWatchdogStateMachine.BSSID_STAT_RANGE_HIGH_DBM, 0.1d);
            this.mGoodLinkTargetCount = 1;
            this.mBssidAvoidTimeMax = SystemClock.elapsedRealtime() + ((long) WifiWatchdogStateMachine.MAX_AVOID_TIME[0].TIME_MS);
        }

        public boolean poorLinkDetected(int i2) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = jElapsedRealtime - this.mLastTimePoor;
            while (this.mGoodLinkTargetIndex > 0) {
                GoodLinkTarget[] goodLinkTargetArr = WifiWatchdogStateMachine.GOOD_LINK_TARGET;
                int i3 = this.mGoodLinkTargetIndex;
                if (j2 < goodLinkTargetArr[i3 - 1].REDUCE_TIME_MS) {
                    break;
                }
                this.mGoodLinkTargetIndex = i3 - 1;
            }
            this.mGoodLinkTargetCount = WifiWatchdogStateMachine.GOOD_LINK_TARGET[this.mGoodLinkTargetIndex].SAMPLE_COUNT;
            int iFindRssiTarget = findRssiTarget(i2 + 3, i2 + 20, 0.1d);
            this.mGoodLinkTargetRssi = iFindRssiTarget;
            GoodLinkTarget[] goodLinkTargetArr2 = WifiWatchdogStateMachine.GOOD_LINK_TARGET;
            int i4 = this.mGoodLinkTargetIndex;
            this.mGoodLinkTargetRssi = iFindRssiTarget + goodLinkTargetArr2[i4].RSSI_ADJ_DBM;
            if (i4 < WifiWatchdogStateMachine.GOOD_LINK_TARGET.length - 1) {
                this.mGoodLinkTargetIndex++;
            }
            int length = WifiWatchdogStateMachine.MAX_AVOID_TIME.length - 1;
            int i5 = 0;
            while (i5 < length) {
                int i6 = i5 + 1;
                if (i2 < WifiWatchdogStateMachine.MAX_AVOID_TIME[i6].MIN_RSSI_DBM) {
                    break;
                }
                i5 = i6;
            }
            long j3 = WifiWatchdogStateMachine.MAX_AVOID_TIME[i5].TIME_MS;
            if (j3 <= 0) {
                return false;
            }
            this.mBssidAvoidTimeMax = jElapsedRealtime + j3;
            return true;
        }

        public double presetLoss(int i2) {
            if (i2 <= -90) {
                return 1.0d;
            }
            if (i2 > 0) {
                return 0.0d;
            }
            if (WifiWatchdogStateMachine.sPresetLoss == null) {
                double[] unused = WifiWatchdogStateMachine.sPresetLoss = new double[90];
                for (int i3 = 0; i3 < 90; i3++) {
                    WifiWatchdogStateMachine.sPresetLoss[i3] = 1.0d / Math.pow(90 - i3, 1.5d);
                }
            }
            return WifiWatchdogStateMachine.sPresetLoss[-i2];
        }

        public void updateLoss(int i2, double d2, int i3) {
            int i4;
            if (i3 > 0 && (i4 = i2 - this.mRssiBase) >= 0 && i4 < this.mEntriesSize) {
                this.mEntries[i4].update(d2, i3);
            }
        }
    }

    public class ConnectedState extends l {
        public ConnectedState() {
        }

        @Override // u.l
        public void enter() {
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            if (message.what != WifiWatchdogStateMachine.EVENT_WATCHDOG_SETTINGS_CHANGE) {
                return false;
            }
            WifiWatchdogStateMachine.this.updateSettings();
            if (WifiWatchdogStateMachine.this.mPoorNetworkDetectionEnabled) {
                WifiWatchdogStateMachine wifiWatchdogStateMachine = WifiWatchdogStateMachine.this;
                wifiWatchdogStateMachine.transitionTo(wifiWatchdogStateMachine.mOnlineWatchState);
                return true;
            }
            WifiWatchdogStateMachine wifiWatchdogStateMachine2 = WifiWatchdogStateMachine.this;
            wifiWatchdogStateMachine2.transitionTo(wifiWatchdogStateMachine2.mOnlineState);
            return true;
        }
    }

    public class DefaultState extends l {
        public DefaultState() {
        }

        @Override // u.l
        public void enter() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // u.l
        public boolean processMessage(Message message) {
            int i2 = message.what;
            if (i2 != WifiWatchdogStateMachine.CMD_RSSI_FETCH) {
                switch (i2) {
                    case WifiWatchdogStateMachine.EVENT_NETWORK_STATE_CHANGE /* 135170 */:
                    case WifiWatchdogStateMachine.EVENT_SUPPLICANT_STATE_CHANGE /* 135172 */:
                    case WifiWatchdogStateMachine.EVENT_WIFI_RADIO_STATE_CHANGE /* 135173 */:
                    case WifiWatchdogStateMachine.EVENT_BSSID_CHANGE /* 135175 */:
                        break;
                    case WifiWatchdogStateMachine.EVENT_RSSI_CHANGE /* 135171 */:
                        WifiWatchdogStateMachine wifiWatchdogStateMachine = WifiWatchdogStateMachine.this;
                        wifiWatchdogStateMachine.mCurrentSignalLevel = wifiWatchdogStateMachine.calculateSignalLevel(message.arg1);
                        break;
                    case WifiWatchdogStateMachine.EVENT_WATCHDOG_SETTINGS_CHANGE /* 135174 */:
                        WifiWatchdogStateMachine.this.updateSettings();
                        break;
                    case WifiWatchdogStateMachine.EVENT_SCREEN_ON /* 135176 */:
                        WifiWatchdogStateMachine.this.mIsScreenOn = true;
                        break;
                    case WifiWatchdogStateMachine.EVENT_SCREEN_OFF /* 135177 */:
                        WifiWatchdogStateMachine.this.mIsScreenOn = false;
                        break;
                    default:
                        switch (i2) {
                            default:
                                WifiWatchdogStateMachine.this.loge("Unhandled message " + message + " in state " + WifiWatchdogStateMachine.this.getCurrentState().getName());
                            case WifiManager.RSSI_PKTCNT_FETCH_SUCCEEDED /* 151573 */:
                            case WifiManager.RSSI_PKTCNT_FETCH_FAILED /* 151574 */:
                                return true;
                        }
                        break;
                }
            }
            return true;
        }
    }

    public static class GoodLinkTarget {
        public final int REDUCE_TIME_MS;
        public final int RSSI_ADJ_DBM;
        public final int SAMPLE_COUNT;

        public GoodLinkTarget(int i2, int i3, int i4) {
            this.RSSI_ADJ_DBM = i2;
            this.SAMPLE_COUNT = i3;
            this.REDUCE_TIME_MS = i4;
        }
    }

    public class LinkMonitoringState extends l {
        private int mLastRssi;
        private int mLastTxBad;
        private int mLastTxGood;
        private int mSampleCount;

        public LinkMonitoringState() {
        }

        @Override // u.l
        public void enter() {
            this.mSampleCount = 0;
            WifiWatchdogStateMachine wifiWatchdogStateMachine = WifiWatchdogStateMachine.this;
            wifiWatchdogStateMachine.mCurrentLoss = wifiWatchdogStateMachine.new VolumeWeightedEMA(0.5d);
            WifiWatchdogStateMachine wifiWatchdogStateMachine2 = WifiWatchdogStateMachine.this;
            wifiWatchdogStateMachine2.sendMessage(wifiWatchdogStateMachine2.obtainMessage(WifiWatchdogStateMachine.CMD_RSSI_FETCH, WifiWatchdogStateMachine.access$2504(wifiWatchdogStateMachine2), 0));
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // u.l
        public boolean processMessage(Message message) {
            int i2;
            int i3;
            switch (message.what) {
                case WifiWatchdogStateMachine.EVENT_RSSI_CHANGE /* 135171 */:
                    WifiWatchdogStateMachine wifiWatchdogStateMachine = WifiWatchdogStateMachine.this;
                    wifiWatchdogStateMachine.mCurrentSignalLevel = wifiWatchdogStateMachine.calculateSignalLevel(message.arg1);
                    if (WifiWatchdogStateMachine.this.mCurrentSignalLevel > 4) {
                        WifiWatchdogStateMachine wifiWatchdogStateMachine2 = WifiWatchdogStateMachine.this;
                        wifiWatchdogStateMachine2.transitionTo(wifiWatchdogStateMachine2.mOnlineWatchState);
                    }
                    return true;
                case WifiWatchdogStateMachine.EVENT_BSSID_CHANGE /* 135175 */:
                    WifiWatchdogStateMachine wifiWatchdogStateMachine3 = WifiWatchdogStateMachine.this;
                    wifiWatchdogStateMachine3.transitionTo(wifiWatchdogStateMachine3.mLinkMonitoringState);
                    return true;
                case WifiWatchdogStateMachine.CMD_RSSI_FETCH /* 135179 */:
                    if (!WifiWatchdogStateMachine.this.mIsScreenOn) {
                        WifiWatchdogStateMachine wifiWatchdogStateMachine4 = WifiWatchdogStateMachine.this;
                        wifiWatchdogStateMachine4.transitionTo(wifiWatchdogStateMachine4.mOnlineState);
                    } else if (message.arg1 == WifiWatchdogStateMachine.this.mRssiFetchToken) {
                        WifiWatchdogStateMachine.this.mWsmChannel.k(WifiManager.RSSI_PKTCNT_FETCH);
                        WifiWatchdogStateMachine wifiWatchdogStateMachine5 = WifiWatchdogStateMachine.this;
                        wifiWatchdogStateMachine5.sendMessageDelayed(wifiWatchdogStateMachine5.obtainMessage(WifiWatchdogStateMachine.CMD_RSSI_FETCH, WifiWatchdogStateMachine.access$2504(wifiWatchdogStateMachine5), 0), 1000L);
                    }
                    return true;
                case WifiManager.RSSI_PKTCNT_FETCH_SUCCEEDED /* 151573 */:
                    RssiPacketCountInfo rssiPacketCountInfo = (RssiPacketCountInfo) message.obj;
                    int i4 = rssiPacketCountInfo.rssi;
                    int i5 = (this.mLastRssi + i4) / 2;
                    int i6 = rssiPacketCountInfo.txbad;
                    int i7 = rssiPacketCountInfo.txgood;
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (jElapsedRealtime - WifiWatchdogStateMachine.this.mCurrentBssid.mLastTimeSample < 2000 && (i3 = (i7 - this.mLastTxGood) + (i2 = i6 - this.mLastTxBad)) > 0) {
                        double d2 = ((double) i2) / ((double) i3);
                        WifiWatchdogStateMachine.this.mCurrentLoss.update(d2, i3);
                        WifiWatchdogStateMachine.this.mCurrentBssid.updateLoss(i5, d2, i3);
                        if (WifiWatchdogStateMachine.this.mCurrentLoss.mValue <= 0.5d || WifiWatchdogStateMachine.this.mCurrentLoss.mVolume <= WifiWatchdogStateMachine.POOR_LINK_MIN_VOLUME) {
                            this.mSampleCount = 0;
                        } else {
                            int i8 = this.mSampleCount + 1;
                            this.mSampleCount = i8;
                            if (i8 >= 3 && WifiWatchdogStateMachine.this.mCurrentBssid.poorLinkDetected(i4)) {
                                WifiWatchdogStateMachine.this.sendLinkStatusNotification(false);
                                WifiWatchdogStateMachine.access$2504(WifiWatchdogStateMachine.this);
                            }
                        }
                    }
                    WifiWatchdogStateMachine.this.mCurrentBssid.mLastTimeSample = jElapsedRealtime;
                    this.mLastTxBad = i6;
                    this.mLastTxGood = i7;
                    this.mLastRssi = i4;
                    return true;
                case WifiManager.RSSI_PKTCNT_FETCH_FAILED /* 151574 */:
                    return true;
                default:
                    return false;
            }
        }
    }

    public static class MaxAvoidTime {
        public final int MIN_RSSI_DBM;
        public final int TIME_MS;

        public MaxAvoidTime(int i2, int i3) {
            this.TIME_MS = i2;
            this.MIN_RSSI_DBM = i3;
        }
    }

    public class NotConnectedState extends l {
        public NotConnectedState() {
        }

        @Override // u.l
        public void enter() {
        }
    }

    public class OnlineState extends l {
        public OnlineState() {
        }

        @Override // u.l
        public void enter() {
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            if (message.what != WifiWatchdogStateMachine.EVENT_SCREEN_ON) {
                return false;
            }
            WifiWatchdogStateMachine.this.mIsScreenOn = true;
            if (WifiWatchdogStateMachine.this.mPoorNetworkDetectionEnabled) {
                WifiWatchdogStateMachine wifiWatchdogStateMachine = WifiWatchdogStateMachine.this;
                wifiWatchdogStateMachine.transitionTo(wifiWatchdogStateMachine.mOnlineWatchState);
            }
            return true;
        }
    }

    public class OnlineWatchState extends l {
        public OnlineWatchState() {
        }

        private void handleRssiChange() {
            if (WifiWatchdogStateMachine.this.mCurrentSignalLevel > 4 || WifiWatchdogStateMachine.this.mCurrentBssid == null) {
                return;
            }
            WifiWatchdogStateMachine wifiWatchdogStateMachine = WifiWatchdogStateMachine.this;
            wifiWatchdogStateMachine.transitionTo(wifiWatchdogStateMachine.mLinkMonitoringState);
        }

        @Override // u.l
        public void enter() {
            if (WifiWatchdogStateMachine.this.mPoorNetworkDetectionEnabled) {
                handleRssiChange();
            } else {
                WifiWatchdogStateMachine wifiWatchdogStateMachine = WifiWatchdogStateMachine.this;
                wifiWatchdogStateMachine.transitionTo(wifiWatchdogStateMachine.mOnlineState);
            }
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            if (message.what != WifiWatchdogStateMachine.EVENT_RSSI_CHANGE) {
                return false;
            }
            WifiWatchdogStateMachine wifiWatchdogStateMachine = WifiWatchdogStateMachine.this;
            wifiWatchdogStateMachine.mCurrentSignalLevel = wifiWatchdogStateMachine.calculateSignalLevel(message.arg1);
            handleRssiChange();
            return true;
        }
    }

    public class VerifyingLinkState extends l {
        private int mSampleCount;

        public VerifyingLinkState() {
        }

        @Override // u.l
        public void enter() {
            this.mSampleCount = 0;
            WifiWatchdogStateMachine.this.mCurrentBssid.newLinkDetected();
            WifiWatchdogStateMachine wifiWatchdogStateMachine = WifiWatchdogStateMachine.this;
            wifiWatchdogStateMachine.sendMessage(wifiWatchdogStateMachine.obtainMessage(WifiWatchdogStateMachine.CMD_RSSI_FETCH, WifiWatchdogStateMachine.access$2504(wifiWatchdogStateMachine), 0));
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiWatchdogStateMachine.EVENT_WATCHDOG_SETTINGS_CHANGE /* 135174 */:
                    WifiWatchdogStateMachine.this.updateSettings();
                    if (!WifiWatchdogStateMachine.this.mPoorNetworkDetectionEnabled) {
                        WifiWatchdogStateMachine.this.sendLinkStatusNotification(true);
                    }
                    return true;
                case WifiWatchdogStateMachine.EVENT_BSSID_CHANGE /* 135175 */:
                    WifiWatchdogStateMachine wifiWatchdogStateMachine = WifiWatchdogStateMachine.this;
                    wifiWatchdogStateMachine.transitionTo(wifiWatchdogStateMachine.mVerifyingLinkState);
                    return true;
                case WifiWatchdogStateMachine.CMD_RSSI_FETCH /* 135179 */:
                    if (message.arg1 == WifiWatchdogStateMachine.this.mRssiFetchToken) {
                        WifiWatchdogStateMachine.this.mWsmChannel.k(WifiManager.RSSI_PKTCNT_FETCH);
                        WifiWatchdogStateMachine wifiWatchdogStateMachine2 = WifiWatchdogStateMachine.this;
                        wifiWatchdogStateMachine2.sendMessageDelayed(wifiWatchdogStateMachine2.obtainMessage(WifiWatchdogStateMachine.CMD_RSSI_FETCH, WifiWatchdogStateMachine.access$2504(wifiWatchdogStateMachine2), 0), 1000L);
                    }
                    return true;
                case WifiManager.RSSI_PKTCNT_FETCH_SUCCEEDED /* 151573 */:
                    int i2 = ((RssiPacketCountInfo) message.obj).rssi;
                    if (WifiWatchdogStateMachine.this.mCurrentBssid.mBssidAvoidTimeMax - SystemClock.elapsedRealtime() <= 0) {
                        WifiWatchdogStateMachine.this.sendLinkStatusNotification(true);
                    } else if (i2 >= WifiWatchdogStateMachine.this.mCurrentBssid.mGoodLinkTargetRssi) {
                        int i3 = this.mSampleCount + 1;
                        this.mSampleCount = i3;
                        if (i3 >= WifiWatchdogStateMachine.this.mCurrentBssid.mGoodLinkTargetCount) {
                            WifiWatchdogStateMachine.this.mCurrentBssid.mBssidAvoidTimeMax = 0L;
                            WifiWatchdogStateMachine.this.sendLinkStatusNotification(true);
                        }
                    } else {
                        this.mSampleCount = 0;
                    }
                    return true;
                case WifiManager.RSSI_PKTCNT_FETCH_FAILED /* 151574 */:
                    return true;
                default:
                    return false;
            }
        }
    }

    public class VolumeWeightedEMA {
        private final double mAlpha;
        private double mValue = 0.0d;
        private double mVolume = 0.0d;
        private double mProduct = 0.0d;

        public VolumeWeightedEMA(double d2) {
            this.mAlpha = d2;
        }

        public void update(double d2, int i2) {
            if (i2 <= 0) {
                return;
            }
            double d3 = i2;
            double d4 = this.mAlpha;
            double d5 = (d2 * d3 * d4) + ((1.0d - d4) * this.mProduct);
            this.mProduct = d5;
            double d6 = (d3 * d4) + ((1.0d - d4) * this.mVolume);
            this.mVolume = d6;
            this.mValue = d5 / d6;
        }
    }

    public class WatchdogDisabledState extends l {
        public WatchdogDisabledState() {
        }

        @Override // u.l
        public void enter() {
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiWatchdogStateMachine.EVENT_WATCHDOG_TOGGLED /* 135169 */:
                    if (WifiWatchdogStateMachine.this.isWatchdogEnabled()) {
                        WifiWatchdogStateMachine wifiWatchdogStateMachine = WifiWatchdogStateMachine.this;
                        wifiWatchdogStateMachine.transitionTo(wifiWatchdogStateMachine.mNotConnectedState);
                    }
                    return true;
                case WifiWatchdogStateMachine.EVENT_NETWORK_STATE_CHANGE /* 135170 */:
                    if (AnonymousClass4.$SwitchMap$android$net$NetworkInfo$DetailedState[((NetworkInfo) ((Intent) message.obj).getParcelableExtra("networkInfo")).getDetailedState().ordinal()] != 1) {
                        return false;
                    }
                    WifiWatchdogStateMachine.this.sendLinkStatusNotification(true);
                    return false;
                default:
                    return false;
            }
        }
    }

    public class WatchdogEnabledState extends l {
        public WatchdogEnabledState() {
        }

        @Override // u.l
        public void enter() {
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiWatchdogStateMachine.EVENT_WATCHDOG_TOGGLED /* 135169 */:
                    if (!WifiWatchdogStateMachine.this.isWatchdogEnabled()) {
                        WifiWatchdogStateMachine wifiWatchdogStateMachine = WifiWatchdogStateMachine.this;
                        wifiWatchdogStateMachine.transitionTo(wifiWatchdogStateMachine.mWatchdogDisabledState);
                    }
                    return true;
                case WifiWatchdogStateMachine.EVENT_NETWORK_STATE_CHANGE /* 135170 */:
                    Intent intent = (Intent) message.obj;
                    NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                    WifiWatchdogStateMachine.this.mWifiInfo = (WifiInfo) intent.getParcelableExtra(WifiManager.EXTRA_WIFI_INFO);
                    WifiWatchdogStateMachine wifiWatchdogStateMachine2 = WifiWatchdogStateMachine.this;
                    wifiWatchdogStateMachine2.updateCurrentBssid(wifiWatchdogStateMachine2.mWifiInfo != null ? WifiWatchdogStateMachine.this.mWifiInfo.getBSSID() : null);
                    int i2 = AnonymousClass4.$SwitchMap$android$net$NetworkInfo$DetailedState[networkInfo.getDetailedState().ordinal()];
                    if (i2 == 1) {
                        WifiWatchdogStateMachine.this.mLinkProperties = (LinkProperties) intent.getParcelableExtra(WifiManager.EXTRA_LINK_PROPERTIES);
                        if (!WifiWatchdogStateMachine.this.mPoorNetworkDetectionEnabled) {
                            WifiWatchdogStateMachine.this.sendLinkStatusNotification(true);
                        } else if (WifiWatchdogStateMachine.this.mWifiInfo == null || WifiWatchdogStateMachine.this.mCurrentBssid == null) {
                            WifiWatchdogStateMachine.this.loge("Ignore, wifiinfo " + WifiWatchdogStateMachine.this.mWifiInfo + " bssid " + WifiWatchdogStateMachine.this.mCurrentBssid);
                            WifiWatchdogStateMachine.this.sendLinkStatusNotification(true);
                        } else {
                            WifiWatchdogStateMachine wifiWatchdogStateMachine3 = WifiWatchdogStateMachine.this;
                            wifiWatchdogStateMachine3.transitionTo(wifiWatchdogStateMachine3.mVerifyingLinkState);
                        }
                    } else if (i2 != 2) {
                        WifiWatchdogStateMachine wifiWatchdogStateMachine4 = WifiWatchdogStateMachine.this;
                        wifiWatchdogStateMachine4.transitionTo(wifiWatchdogStateMachine4.mNotConnectedState);
                    } else {
                        WifiWatchdogStateMachine wifiWatchdogStateMachine5 = WifiWatchdogStateMachine.this;
                        wifiWatchdogStateMachine5.transitionTo(wifiWatchdogStateMachine5.mOnlineWatchState);
                    }
                    return true;
                case WifiWatchdogStateMachine.EVENT_RSSI_CHANGE /* 135171 */:
                default:
                    return false;
                case WifiWatchdogStateMachine.EVENT_SUPPLICANT_STATE_CHANGE /* 135172 */:
                    if (((SupplicantState) ((Intent) message.obj).getParcelableExtra(WifiManager.EXTRA_NEW_STATE)) == SupplicantState.COMPLETED) {
                        WifiWatchdogStateMachine wifiWatchdogStateMachine6 = WifiWatchdogStateMachine.this;
                        wifiWatchdogStateMachine6.mWifiInfo = wifiWatchdogStateMachine6.mWifiManager.getConnectionInfo();
                        WifiWatchdogStateMachine wifiWatchdogStateMachine7 = WifiWatchdogStateMachine.this;
                        wifiWatchdogStateMachine7.updateCurrentBssid(wifiWatchdogStateMachine7.mWifiInfo.getBSSID());
                    }
                    return true;
                case WifiWatchdogStateMachine.EVENT_WIFI_RADIO_STATE_CHANGE /* 135173 */:
                    if (message.arg1 == 0) {
                        WifiWatchdogStateMachine wifiWatchdogStateMachine8 = WifiWatchdogStateMachine.this;
                        wifiWatchdogStateMachine8.transitionTo(wifiWatchdogStateMachine8.mNotConnectedState);
                    }
                    return true;
            }
        }
    }

    private WifiWatchdogStateMachine(Context context) {
        super("WifiWatchdogStateMachine");
        this.mWsmChannel = new b();
        this.mBssidCache = new LruCache<>(20);
        this.mRssiFetchToken = 0;
        this.mIsScreenOn = true;
        this.mDefaultState = new DefaultState();
        this.mWatchdogDisabledState = new WatchdogDisabledState();
        this.mWatchdogEnabledState = new WatchdogEnabledState();
        this.mNotConnectedState = new NotConnectedState();
        this.mVerifyingLinkState = new VerifyingLinkState();
        this.mConnectedState = new ConnectedState();
        this.mOnlineWatchState = new OnlineWatchState();
        this.mLinkMonitoringState = new LinkMonitoringState();
        this.mOnlineState = new OnlineState();
        this.mContext = context;
        this.mContentResolver = context.getContentResolver();
        this.mWifiManager = (WifiManager) context.getSystemService("wifi");
        this.mWsmChannel.c(this.mContext, getHandler(), this.mWifiManager.getWifiStateMachineMessenger());
        setupNetworkReceiver();
        registerForSettingsChanges();
        registerForWatchdogToggle();
        addState(this.mDefaultState);
        addState(this.mWatchdogDisabledState, this.mDefaultState);
        addState(this.mWatchdogEnabledState, this.mDefaultState);
        addState(this.mNotConnectedState, this.mWatchdogEnabledState);
        addState(this.mVerifyingLinkState, this.mWatchdogEnabledState);
        addState(this.mConnectedState, this.mWatchdogEnabledState);
        addState(this.mOnlineWatchState, this.mConnectedState);
        addState(this.mLinkMonitoringState, this.mConnectedState);
        addState(this.mOnlineState, this.mConnectedState);
        if (isWatchdogEnabled()) {
            setInitialState(this.mNotConnectedState);
        } else {
            setInitialState(this.mWatchdogDisabledState);
        }
        setLogRecSize(25);
        setLogOnlyTransitions(true);
        updateSettings();
    }

    public static /* synthetic */ int access$2504(WifiWatchdogStateMachine wifiWatchdogStateMachine) {
        int i2 = wifiWatchdogStateMachine.mRssiFetchToken + 1;
        wifiWatchdogStateMachine.mRssiFetchToken = i2;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int calculateSignalLevel(int i2) {
        return WifiManager.calculateSignalLevel(i2, 5);
    }

    private static boolean getSettingsGlobalBoolean(ContentResolver contentResolver, String str, boolean z2) {
        return Settings.Global.getInt(contentResolver, str, z2 ? 1 : 0) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isWatchdogEnabled() {
        return getSettingsGlobalBoolean(this.mContentResolver, "wifi_watchdog_on", true);
    }

    public static WifiWatchdogStateMachine makeWifiWatchdogStateMachine(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        sWifiOnly = !((ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE)).isNetworkSupported(0);
        putSettingsGlobalBoolean(contentResolver, "wifi_watchdog_on", true);
        WifiWatchdogStateMachine wifiWatchdogStateMachine = new WifiWatchdogStateMachine(context);
        wifiWatchdogStateMachine.start();
        return wifiWatchdogStateMachine;
    }

    private static boolean putSettingsGlobalBoolean(ContentResolver contentResolver, String str, boolean z2) {
        return Settings.Global.putInt(contentResolver, str, z2 ? 1 : 0);
    }

    private void registerForSettingsChanges() {
        this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor(Settings.Global.WIFI_WATCHDOG_POOR_NETWORK_TEST_ENABLED), false, new ContentObserver(getHandler()) { // from class: android.net.wifi.WifiWatchdogStateMachine.3
            @Override // android.database.ContentObserver
            public void onChange(boolean z2) {
                WifiWatchdogStateMachine.this.sendMessage(WifiWatchdogStateMachine.EVENT_WATCHDOG_SETTINGS_CHANGE);
            }
        });
    }

    private void registerForWatchdogToggle() {
        this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("wifi_watchdog_on"), false, new ContentObserver(getHandler()) { // from class: android.net.wifi.WifiWatchdogStateMachine.2
            @Override // android.database.ContentObserver
            public void onChange(boolean z2) {
                WifiWatchdogStateMachine.this.sendMessage(WifiWatchdogStateMachine.EVENT_WATCHDOG_TOGGLED);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLinkStatusNotification(boolean z2) {
        if (z2) {
            this.mWsmChannel.k(GOOD_LINK_DETECTED);
            BssidStatistics bssidStatistics = this.mCurrentBssid;
            if (bssidStatistics != null) {
                bssidStatistics.mLastTimeGood = SystemClock.elapsedRealtime();
                return;
            }
            return;
        }
        this.mWsmChannel.k(POOR_LINK_DETECTED);
        BssidStatistics bssidStatistics2 = this.mCurrentBssid;
        if (bssidStatistics2 != null) {
            bssidStatistics2.mLastTimePoor = SystemClock.elapsedRealtime();
        }
        logd("Poor link notification is sent");
    }

    private void setupNetworkReceiver() {
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: android.net.wifi.WifiWatchdogStateMachine.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if (action.equals(WifiManager.RSSI_CHANGED_ACTION)) {
                    WifiWatchdogStateMachine.this.obtainMessage(WifiWatchdogStateMachine.EVENT_RSSI_CHANGE, intent.getIntExtra(WifiManager.EXTRA_NEW_RSSI, AudioService.STREAM_REMOTE_MUSIC), 0).sendToTarget();
                    return;
                }
                if (action.equals(WifiManager.SUPPLICANT_STATE_CHANGED_ACTION)) {
                    WifiWatchdogStateMachine.this.sendMessage(WifiWatchdogStateMachine.EVENT_SUPPLICANT_STATE_CHANGE, intent);
                    return;
                }
                if (action.equals(WifiManager.NETWORK_STATE_CHANGED_ACTION)) {
                    WifiWatchdogStateMachine.this.sendMessage(WifiWatchdogStateMachine.EVENT_NETWORK_STATE_CHANGE, intent);
                    return;
                }
                if (action.equals(Intent.ACTION_SCREEN_ON)) {
                    WifiWatchdogStateMachine.this.sendMessage(WifiWatchdogStateMachine.EVENT_SCREEN_ON);
                } else if (action.equals(Intent.ACTION_SCREEN_OFF)) {
                    WifiWatchdogStateMachine.this.sendMessage(WifiWatchdogStateMachine.EVENT_SCREEN_OFF);
                } else if (action.equals(WifiManager.WIFI_STATE_CHANGED_ACTION)) {
                    WifiWatchdogStateMachine.this.sendMessage(WifiWatchdogStateMachine.EVENT_WIFI_RADIO_STATE_CHANGE, intent.getIntExtra("wifi_state", 4));
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        this.mIntentFilter = intentFilter;
        intentFilter.addAction(WifiManager.NETWORK_STATE_CHANGED_ACTION);
        this.mIntentFilter.addAction(WifiManager.WIFI_STATE_CHANGED_ACTION);
        this.mIntentFilter.addAction(WifiManager.RSSI_CHANGED_ACTION);
        this.mIntentFilter.addAction(WifiManager.SUPPLICANT_STATE_CHANGED_ACTION);
        this.mIntentFilter.addAction(Intent.ACTION_SCREEN_ON);
        this.mIntentFilter.addAction(Intent.ACTION_SCREEN_OFF);
        this.mContext.registerReceiver(this.mBroadcastReceiver, this.mIntentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentBssid(String str) {
        if (str == null) {
            if (this.mCurrentBssid == null) {
                return;
            }
            this.mCurrentBssid = null;
            sendMessage(EVENT_BSSID_CHANGE);
            return;
        }
        BssidStatistics bssidStatistics = this.mCurrentBssid;
        if (bssidStatistics == null || !str.equals(bssidStatistics.mBssid)) {
            BssidStatistics bssidStatistics2 = this.mBssidCache.get(str);
            this.mCurrentBssid = bssidStatistics2;
            if (bssidStatistics2 == null) {
                BssidStatistics bssidStatistics3 = new BssidStatistics(str);
                this.mCurrentBssid = bssidStatistics3;
                this.mBssidCache.put(str, bssidStatistics3);
            }
            sendMessage(EVENT_BSSID_CHANGE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSettings() {
        if (!sWifiOnly) {
            this.mPoorNetworkDetectionEnabled = getSettingsGlobalBoolean(this.mContentResolver, Settings.Global.WIFI_WATCHDOG_POOR_NETWORK_TEST_ENABLED, false);
        } else {
            logd("Disabling poor network avoidance for wi-fi only device");
            this.mPoorNetworkDetectionEnabled = false;
        }
    }

    @Override // u.m
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(fileDescriptor, printWriter, strArr);
        printWriter.println("mWifiInfo: [" + this.mWifiInfo + "]");
        printWriter.println("mLinkProperties: [" + this.mLinkProperties + "]");
        printWriter.println("mCurrentSignalLevel: [" + this.mCurrentSignalLevel + "]");
        printWriter.println("mPoorNetworkDetectionEnabled: [" + this.mPoorNetworkDetectionEnabled + "]");
    }
}
