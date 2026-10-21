package com.android.server.wifi.scanner;

import android.R;
import android.app.AlarmManager;
import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiScanner;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.android.server.wifi.Clock;
import com.android.server.wifi.ScanDetail;
import com.android.server.wifi.ScoringParams;
import com.android.server.wifi.WifiMonitor;
import com.android.server.wifi.WifiNative;
import com.android.server.wifi.util.ScanResultUtil;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public class WificondScannerImpl extends WifiScannerImpl implements Handler.Callback {
    private static final boolean DBG = false;
    private static final int MAX_APS_PER_SCAN = 32;
    public static final int MAX_HIDDEN_NETWORK_IDS_PER_SCAN = 16;
    private static final int MAX_SCAN_BUCKETS = 16;
    private static final int SCAN_BUFFER_CAPACITY = 10;
    private static final long SCAN_TIMEOUT_MS = 15000;
    private static final String TAG = "WificondScannerImpl";
    public static final String TIMEOUT_ALARM_TAG = "WificondScannerImpl Scan Timeout";
    private final AlarmManager mAlarmManager;
    private final ChannelHelper mChannelHelper;
    private final Clock mClock;
    private final Context mContext;
    private final Handler mEventHandler;
    private final boolean mHwPnoScanSupported;
    private final String mIfaceName;
    private ArrayList<ScanDetail> mNativePnoScanResults;
    private ArrayList<ScanDetail> mNativeScanResults;

    @GuardedBy("mSettingsLock")
    private AlarmManager.OnAlarmListener mScanTimeoutListener;
    private final WifiMonitor mWifiMonitor;
    private final WifiNative mWifiNative;
    private final Object mSettingsLock = new Object();
    private WifiScanner.ScanData mLatestSingleScanResult = new WifiScanner.ScanData(0, 0, new ScanResult[0]);
    private LastScanSettings mLastScanSettings = null;
    private LastPnoScanSettings mLastPnoScanSettings = null;

    public WificondScannerImpl(Context context, String ifaceName, WifiNative wifiNative, WifiMonitor wifiMonitor, ChannelHelper channelHelper, Looper looper, Clock clock) {
        this.mContext = context;
        this.mIfaceName = ifaceName;
        this.mWifiNative = wifiNative;
        this.mWifiMonitor = wifiMonitor;
        this.mChannelHelper = channelHelper;
        this.mAlarmManager = (AlarmManager) this.mContext.getSystemService("alarm");
        this.mEventHandler = new Handler(looper, this);
        this.mClock = clock;
        this.mHwPnoScanSupported = this.mContext.getResources().getBoolean(R.bool.config_cecSoundbarModeDisabled_default);
        wifiMonitor.registerHandler(this.mIfaceName, WifiMonitor.SCAN_FAILED_EVENT, this.mEventHandler);
        wifiMonitor.registerHandler(this.mIfaceName, WifiMonitor.PNO_SCAN_RESULTS_EVENT, this.mEventHandler);
        wifiMonitor.registerHandler(this.mIfaceName, WifiMonitor.SCAN_RESULTS_EVENT, this.mEventHandler);
    }

    @Override // com.android.server.wifi.scanner.WifiScannerImpl
    public void cleanup() {
        synchronized (this.mSettingsLock) {
            stopHwPnoScan();
            this.mLastScanSettings = null;
            this.mLastPnoScanSettings = null;
            this.mWifiMonitor.deregisterHandler(this.mIfaceName, WifiMonitor.SCAN_FAILED_EVENT, this.mEventHandler);
            this.mWifiMonitor.deregisterHandler(this.mIfaceName, WifiMonitor.PNO_SCAN_RESULTS_EVENT, this.mEventHandler);
            this.mWifiMonitor.deregisterHandler(this.mIfaceName, WifiMonitor.SCAN_RESULTS_EVENT, this.mEventHandler);
        }
    }

    @Override // com.android.server.wifi.scanner.WifiScannerImpl
    public boolean getScanCapabilities(WifiNative.ScanCapabilities capabilities) {
        capabilities.max_scan_cache_size = ScoringParams.Values.MAX_EXPID;
        capabilities.max_scan_buckets = 16;
        capabilities.max_ap_cache_per_scan = 32;
        capabilities.max_rssi_sample_size = 8;
        capabilities.max_scan_reporting_threshold = 10;
        return true;
    }

    @Override // com.android.server.wifi.scanner.WifiScannerImpl
    public ChannelHelper getChannelHelper() {
        return this.mChannelHelper;
    }

    @Override // com.android.server.wifi.scanner.WifiScannerImpl
    public boolean startSingleScan(WifiNative.ScanSettings settings, WifiNative.ScanEventHandler eventHandler) {
        if (eventHandler == null || settings == null) {
            Log.w(TAG, "Invalid arguments for startSingleScan: settings=" + settings + ",eventHandler=" + eventHandler);
            return false;
        }
        synchronized (this.mSettingsLock) {
            if (this.mLastScanSettings != null) {
                Log.w(TAG, "A single scan is already running");
                return false;
            }
            ChannelHelper.ChannelCollection allFreqs = this.mChannelHelper.createChannelCollection();
            boolean reportFullResults = false;
            for (int i = 0; i < settings.num_buckets; i++) {
                WifiNative.BucketSettings bucketSettings = settings.buckets[i];
                if ((bucketSettings.report_events & 2) != 0) {
                    reportFullResults = true;
                }
                allFreqs.addChannels(bucketSettings);
            }
            List<String> hiddenNetworkSSIDSet = new ArrayList<>();
            if (settings.hiddenNetworks != null) {
                int numHiddenNetworks = Math.min(settings.hiddenNetworks.length, 16);
                for (int i2 = 0; i2 < numHiddenNetworks; i2++) {
                    hiddenNetworkSSIDSet.add(settings.hiddenNetworks[i2].ssid);
                }
            }
            this.mLastScanSettings = new LastScanSettings(this.mClock.getElapsedSinceBootMillis(), reportFullResults, allFreqs, eventHandler);
            boolean success = false;
            if (!allFreqs.isEmpty()) {
                Set<Integer> freqs = allFreqs.getScanFreqs();
                success = this.mWifiNative.scan(this.mIfaceName, settings.scanType, freqs, hiddenNetworkSSIDSet);
                if (!success) {
                    Log.e(TAG, "Failed to start scan, freqs=" + freqs);
                }
            } else {
                Log.e(TAG, "Failed to start scan because there is no available channel to scan");
            }
            if (success) {
                this.mScanTimeoutListener = new AlarmManager.OnAlarmListener() { // from class: com.android.server.wifi.scanner.WificondScannerImpl.1
                    @Override // android.app.AlarmManager.OnAlarmListener
                    public void onAlarm() {
                        WificondScannerImpl.this.handleScanTimeout();
                    }
                };
                this.mAlarmManager.set(2, this.mClock.getElapsedSinceBootMillis() + SCAN_TIMEOUT_MS, TIMEOUT_ALARM_TAG, this.mScanTimeoutListener, this.mEventHandler);
            } else {
                this.mEventHandler.post(new Runnable() { // from class: com.android.server.wifi.scanner.WificondScannerImpl.2
                    @Override // java.lang.Runnable
                    public void run() {
                        WificondScannerImpl.this.reportScanFailure();
                    }
                });
            }
            return true;
        }
    }

    @Override // com.android.server.wifi.scanner.WifiScannerImpl
    public WifiScanner.ScanData getLatestSingleScanResults() {
        return this.mLatestSingleScanResult;
    }

    @Override // com.android.server.wifi.scanner.WifiScannerImpl
    public boolean startBatchedScan(WifiNative.ScanSettings settings, WifiNative.ScanEventHandler eventHandler) {
        Log.w(TAG, "startBatchedScan() is not supported");
        return false;
    }

    @Override // com.android.server.wifi.scanner.WifiScannerImpl
    public void stopBatchedScan() {
        Log.w(TAG, "stopBatchedScan() is not supported");
    }

    @Override // com.android.server.wifi.scanner.WifiScannerImpl
    public void pauseBatchedScan() {
        Log.w(TAG, "pauseBatchedScan() is not supported");
    }

    @Override // com.android.server.wifi.scanner.WifiScannerImpl
    public void restartBatchedScan() {
        Log.w(TAG, "restartBatchedScan() is not supported");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleScanTimeout() {
        synchronized (this.mSettingsLock) {
            Log.e(TAG, "Timed out waiting for scan result from wificond");
            reportScanFailure();
            this.mScanTimeoutListener = null;
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message msg) {
        switch (msg.what) {
            case WifiMonitor.SCAN_RESULTS_EVENT /* 147461 */:
                cancelScanTimeout();
                pollLatestScanData();
                break;
            case WifiMonitor.SCAN_FAILED_EVENT /* 147473 */:
                Log.w(TAG, "Scan failed");
                cancelScanTimeout();
                reportScanFailure();
                break;
            case WifiMonitor.PNO_SCAN_RESULTS_EVENT /* 147474 */:
                pollLatestScanDataForPno();
                break;
        }
        return true;
    }

    private void cancelScanTimeout() {
        synchronized (this.mSettingsLock) {
            if (this.mScanTimeoutListener != null) {
                this.mAlarmManager.cancel(this.mScanTimeoutListener);
                this.mScanTimeoutListener = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportScanFailure() {
        synchronized (this.mSettingsLock) {
            if (this.mLastScanSettings != null) {
                if (this.mLastScanSettings.singleScanEventHandler != null) {
                    this.mLastScanSettings.singleScanEventHandler.onScanStatus(3);
                }
                this.mLastScanSettings = null;
            }
        }
    }

    private void reportPnoScanFailure() {
        synchronized (this.mSettingsLock) {
            if (this.mLastPnoScanSettings != null) {
                if (this.mLastPnoScanSettings.pnoScanEventHandler != null) {
                    this.mLastPnoScanSettings.pnoScanEventHandler.onPnoScanFailed();
                }
                this.mLastPnoScanSettings = null;
            }
        }
    }

    private void pollLatestScanDataForPno() {
        synchronized (this.mSettingsLock) {
            if (this.mLastPnoScanSettings == null) {
                return;
            }
            this.mNativePnoScanResults = this.mWifiNative.getPnoScanResults(this.mIfaceName);
            List<ScanResult> hwPnoScanResults = new ArrayList<>();
            int numFilteredScanResults = 0;
            for (int i = 0; i < this.mNativePnoScanResults.size(); i++) {
                ScanResult result = this.mNativePnoScanResults.get(i).getScanResult();
                long timestamp_ms = result.timestamp / 1000;
                if (timestamp_ms > this.mLastPnoScanSettings.startTime) {
                    hwPnoScanResults.add(result);
                } else {
                    numFilteredScanResults++;
                }
            }
            if (numFilteredScanResults != 0) {
                Log.d(TAG, "Filtering out " + numFilteredScanResults + " pno scan results.");
            }
            if (this.mLastPnoScanSettings.pnoScanEventHandler != null) {
                ScanResult[] pnoScanResultsArray = (ScanResult[]) hwPnoScanResults.toArray(new ScanResult[hwPnoScanResults.size()]);
                this.mLastPnoScanSettings.pnoScanEventHandler.onPnoNetworkFound(pnoScanResultsArray);
            }
        }
    }

    private static int getBandScanned(ChannelHelper.ChannelCollection channelCollection) {
        if (channelCollection.containsBand(7)) {
            return 7;
        }
        if (channelCollection.containsBand(3)) {
            return 3;
        }
        if (channelCollection.containsBand(6)) {
            return 6;
        }
        if (channelCollection.containsBand(2)) {
            return 2;
        }
        if (channelCollection.containsBand(4)) {
            return 4;
        }
        if (channelCollection.containsBand(1)) {
            return 1;
        }
        return 0;
    }

    private void pollLatestScanData() {
        synchronized (this.mSettingsLock) {
            if (this.mLastScanSettings == null) {
                return;
            }
            this.mNativeScanResults = this.mWifiNative.getScanResults(this.mIfaceName);
            List<ScanResult> singleScanResults = new ArrayList<>();
            int numFilteredScanResults = 0;
            for (int i = 0; i < this.mNativeScanResults.size(); i++) {
                ScanResult result = this.mNativeScanResults.get(i).getScanResult();
                long timestamp_ms = result.timestamp / 1000;
                if (timestamp_ms > this.mLastScanSettings.startTime) {
                    if (this.mLastScanSettings.singleScanFreqs.containsChannel(result.frequency)) {
                        singleScanResults.add(result);
                    }
                } else {
                    numFilteredScanResults++;
                    Log.d(TAG, "Filtering out " + result.SSID + " timestamp = " + result.timestamp);
                }
            }
            if (numFilteredScanResults != 0) {
                Log.d(TAG, "Filtering out " + numFilteredScanResults + " scan results.");
            }
            if (this.mLastScanSettings.singleScanEventHandler != null) {
                if (this.mLastScanSettings.reportSingleScanFullResults) {
                    for (ScanResult scanResult : singleScanResults) {
                        this.mLastScanSettings.singleScanEventHandler.onFullScanResult(scanResult, 0);
                    }
                }
                Collections.sort(singleScanResults, SCAN_RESULT_SORT_COMPARATOR);
                this.mLatestSingleScanResult = new WifiScanner.ScanData(0, 0, 0, getBandScanned(this.mLastScanSettings.singleScanFreqs), (ScanResult[]) singleScanResults.toArray(new ScanResult[singleScanResults.size()]));
                this.mLastScanSettings.singleScanEventHandler.onScanStatus(0);
            }
            this.mLastScanSettings = null;
        }
    }

    @Override // com.android.server.wifi.scanner.WifiScannerImpl
    public WifiScanner.ScanData[] getLatestBatchedScanResults(boolean flush) {
        return null;
    }

    private boolean startHwPnoScan(WifiNative.PnoSettings pnoSettings) {
        return this.mWifiNative.startPnoScan(this.mIfaceName, pnoSettings);
    }

    private void stopHwPnoScan() {
        this.mWifiNative.stopPnoScan(this.mIfaceName);
    }

    private boolean isHwPnoScanRequired(boolean isConnectedPno) {
        return !isConnectedPno && this.mHwPnoScanSupported;
    }

    @Override // com.android.server.wifi.scanner.WifiScannerImpl
    public boolean setHwPnoList(WifiNative.PnoSettings settings, WifiNative.PnoEventHandler eventHandler) {
        synchronized (this.mSettingsLock) {
            if (this.mLastPnoScanSettings != null) {
                Log.w(TAG, "Already running a PNO scan");
                return false;
            }
            if (!isHwPnoScanRequired(settings.isConnected)) {
                return false;
            }
            if (startHwPnoScan(settings)) {
                this.mLastPnoScanSettings = new LastPnoScanSettings(this.mClock.getElapsedSinceBootMillis(), settings.networkList, eventHandler);
            } else {
                Log.e(TAG, "Failed to start PNO scan");
                reportPnoScanFailure();
            }
            return true;
        }
    }

    @Override // com.android.server.wifi.scanner.WifiScannerImpl
    public boolean resetHwPnoList() {
        synchronized (this.mSettingsLock) {
            if (this.mLastPnoScanSettings == null) {
                Log.w(TAG, "No PNO scan running");
                return false;
            }
            this.mLastPnoScanSettings = null;
            stopHwPnoScan();
            return true;
        }
    }

    @Override // com.android.server.wifi.scanner.WifiScannerImpl
    public boolean isHwPnoSupported(boolean isConnectedPno) {
        return isHwPnoScanRequired(isConnectedPno);
    }

    @Override // com.android.server.wifi.scanner.WifiScannerImpl
    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        synchronized (this.mSettingsLock) {
            long nowMs = this.mClock.getElapsedSinceBootMillis();
            pw.println("Latest native scan results:");
            if (this.mNativeScanResults != null) {
                List<ScanResult> scanResults = (List) this.mNativeScanResults.stream().map(new Function() { // from class: com.android.server.wifi.scanner.-$$Lambda$WificondScannerImpl$CSjtYSyNiQ_mC6mOyQ4Gpky-lqY
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((ScanDetail) obj).getScanResult();
                    }
                }).collect(Collectors.toList());
                ScanResultUtil.dumpScanResults(pw, scanResults, nowMs);
            }
            pw.println("Latest native pno scan results:");
            if (this.mNativePnoScanResults != null) {
                List<ScanResult> pnoScanResults = (List) this.mNativePnoScanResults.stream().map(new Function() { // from class: com.android.server.wifi.scanner.-$$Lambda$WificondScannerImpl$VfxaUtYlcuU7--Z28abhvk42O2k
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((ScanDetail) obj).getScanResult();
                    }
                }).collect(Collectors.toList());
                ScanResultUtil.dumpScanResults(pw, pnoScanResults, nowMs);
            }
        }
    }

    private static class LastScanSettings {
        public boolean reportSingleScanFullResults;
        public WifiNative.ScanEventHandler singleScanEventHandler;
        public ChannelHelper.ChannelCollection singleScanFreqs;
        public long startTime;

        LastScanSettings(long startTime, boolean reportSingleScanFullResults, ChannelHelper.ChannelCollection singleScanFreqs, WifiNative.ScanEventHandler singleScanEventHandler) {
            this.startTime = startTime;
            this.reportSingleScanFullResults = reportSingleScanFullResults;
            this.singleScanFreqs = singleScanFreqs;
            this.singleScanEventHandler = singleScanEventHandler;
        }
    }

    private static class LastPnoScanSettings {
        public WifiNative.PnoNetwork[] pnoNetworkList;
        public WifiNative.PnoEventHandler pnoScanEventHandler;
        public long startTime;

        LastPnoScanSettings(long startTime, WifiNative.PnoNetwork[] pnoNetworkList, WifiNative.PnoEventHandler pnoScanEventHandler) {
            this.startTime = startTime;
            this.pnoNetworkList = pnoNetworkList;
            this.pnoScanEventHandler = pnoScanEventHandler;
        }
    }
}
