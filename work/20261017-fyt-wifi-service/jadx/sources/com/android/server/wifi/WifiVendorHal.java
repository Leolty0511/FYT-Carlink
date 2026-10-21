package com.android.server.wifi;

import android.hardware.wifi.V1_0.IWifiApIface;
import android.hardware.wifi.V1_0.IWifiChip;
import android.hardware.wifi.V1_0.IWifiChipEventCallback;
import android.hardware.wifi.V1_0.IWifiIface;
import android.hardware.wifi.V1_0.IWifiStaIface;
import android.hardware.wifi.V1_0.IWifiStaIfaceEventCallback;
import android.hardware.wifi.V1_0.StaApfPacketFilterCapabilities;
import android.hardware.wifi.V1_0.StaBackgroundScanBucketParameters;
import android.hardware.wifi.V1_0.StaBackgroundScanCapabilities;
import android.hardware.wifi.V1_0.StaBackgroundScanParameters;
import android.hardware.wifi.V1_0.StaLinkLayerIfaceStats;
import android.hardware.wifi.V1_0.StaLinkLayerRadioStats;
import android.hardware.wifi.V1_0.StaLinkLayerStats;
import android.hardware.wifi.V1_0.StaRoamingCapabilities;
import android.hardware.wifi.V1_0.StaRoamingConfig;
import android.hardware.wifi.V1_0.StaScanData;
import android.hardware.wifi.V1_0.StaScanResult;
import android.hardware.wifi.V1_0.WifiDebugHostWakeReasonStats;
import android.hardware.wifi.V1_0.WifiDebugRingBufferStatus;
import android.hardware.wifi.V1_0.WifiDebugRxPacketFateReport;
import android.hardware.wifi.V1_0.WifiDebugTxPacketFateReport;
import android.hardware.wifi.V1_0.WifiInformationElement;
import android.hardware.wifi.V1_0.WifiStatus;
import android.hardware.wifi.V1_3.WifiChannelStats;
import android.net.MacAddress;
import android.net.apf.ApfCapabilities;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiScanner;
import android.net.wifi.WifiSsid;
import android.os.Handler;
import android.os.IHwInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.system.OsConstants;
import android.text.TextUtils;
import android.util.Log;
import android.util.MutableBoolean;
import android.util.MutableLong;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.HexDump;
import com.android.server.wifi.util.BitMask;
import com.android.server.wifi.util.NativeUtil;
import com.google.errorprone.annotations.CompileTimeConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class WifiVendorHal {

    @VisibleForTesting
    static final int sRssiMonCmdId = 7551;
    private WifiNative.VendorHalDeathEventHandler mDeathEventHandler;
    private String mDriverDescription;
    private String mFirmwareDescription;
    private final HalDeviceManager mHalDeviceManager;
    private final Handler mHalEventHandler;
    private IWifiChip mIWifiChip;
    private final ChipEventCallback mIWifiChipEventCallback;
    private final ChipEventCallbackV12 mIWifiChipEventCallbackV12;
    private final IWifiStaIfaceEventCallback mIWifiStaIfaceEventCallback;
    private int mLastScanCmdId;
    private final Looper mLooper;
    private WifiNative.VendorHalRadioModeChangeEventHandler mRadioModeChangeEventHandler;
    private WifiNative.WifiRssiEventHandler mWifiRssiEventHandler;
    private static final WifiLog sNoLog = new FakeWifiLog();
    public static final Object sLock = new Object();
    private static final int[][] sChipFeatureCapabilityTranslation = {new int[]{67108864, 256}, new int[]{128, 512}, new int[]{256, 1024}};
    private static final long[][] sChipFeatureCapabilityTranslation13 = {new long[]{1073741824, 4096}, new long[]{4294967296L, 8192}};
    private static final int[][] sStaFeatureCapabilityTranslation = {new int[]{2, 128}, new int[]{4, 256}, new int[]{32, 2}, new int[]{1024, 512}, new int[]{4096, 1024}, new int[]{8192, 2048}, new int[]{65536, 4}, new int[]{524288, 8}, new int[]{1048576, 8192}, new int[]{2097152, 4096}, new int[]{8388608, 16}, new int[]{16777216, 32}, new int[]{33554432, 64}};
    private static final ApfCapabilities sNoApfCapabilities = new ApfCapabilities(0, 0, 0);

    @VisibleForTesting
    WifiLog mVerboseLog = sNoLog;

    @VisibleForTesting
    WifiLog mLog = new LogcatLog("WifiVendorHal");
    private HashMap<String, IWifiStaIface> mIWifiStaIfaces = new HashMap<>();
    private HashMap<String, IWifiApIface> mIWifiApIfaces = new HashMap<>();

    @VisibleForTesting
    CurrentBackgroundScan mScan = null;

    @VisibleForTesting
    boolean mLinkLayerStatsDebug = false;
    private WifiNative.WifiLoggerEventHandler mLogEventHandler = null;
    private final HalDeviceManagerStatusListener mHalDeviceManagerStatusCallbacks = new HalDeviceManagerStatusListener();

    public void enableVerboseLogging(boolean verbose) {
        synchronized (sLock) {
            try {
                if (verbose) {
                    this.mVerboseLog = this.mLog;
                    enter("verbose=true").flush();
                } else {
                    enter("verbose=false").flush();
                    this.mVerboseLog = sNoLog;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean ok(WifiStatus status) {
        if (status.code == 0) {
            return true;
        }
        Thread cur = Thread.currentThread();
        StackTraceElement[] trace = cur.getStackTrace();
        this.mLog.err("% failed %").c(niceMethodName(trace, 3)).c(status.toString()).flush();
        return false;
    }

    private boolean boolResult(boolean result) {
        if (this.mVerboseLog == sNoLog) {
            return result;
        }
        Thread cur = Thread.currentThread();
        StackTraceElement[] trace = cur.getStackTrace();
        this.mVerboseLog.err("% returns %").c(niceMethodName(trace, 3)).c(result).flush();
        return result;
    }

    private String stringResult(String result) {
        if (this.mVerboseLog == sNoLog) {
            return result;
        }
        Thread cur = Thread.currentThread();
        StackTraceElement[] trace = cur.getStackTrace();
        this.mVerboseLog.err("% returns %").c(niceMethodName(trace, 3)).c(result).flush();
        return result;
    }

    private byte[] byteArrayResult(byte[] result) {
        if (this.mVerboseLog == sNoLog) {
            return result;
        }
        Thread cur = Thread.currentThread();
        StackTraceElement[] trace = cur.getStackTrace();
        this.mVerboseLog.err("% returns %").c(niceMethodName(trace, 3)).c(result == null ? "(null)" : HexDump.dumpHexString(result)).flush();
        return result;
    }

    private WifiLog.LogMessage enter(@CompileTimeConstant String format) {
        WifiLog wifiLog = this.mVerboseLog;
        WifiLog wifiLog2 = sNoLog;
        return wifiLog == wifiLog2 ? wifiLog2.info(format) : wifiLog.trace(format, 1);
    }

    private static String niceMethodName(StackTraceElement[] trace, int start) {
        String myFile;
        if (start >= trace.length) {
            return "";
        }
        StackTraceElement s = trace[start];
        String name = s.getMethodName();
        if (name.contains("lambda$") && (myFile = s.getFileName()) != null) {
            for (int i = start + 1; i < trace.length; i++) {
                if (myFile.equals(trace[i].getFileName())) {
                    name = trace[i].getMethodName();
                    break;
                }
            }
        }
        return name + "(l." + s.getLineNumber() + ")";
    }

    public WifiVendorHal(HalDeviceManager halDeviceManager, Looper looper) {
        this.mHalDeviceManager = halDeviceManager;
        this.mLooper = looper;
        this.mHalEventHandler = new Handler(looper);
        this.mIWifiStaIfaceEventCallback = new StaIfaceEventCallback();
        this.mIWifiChipEventCallback = new ChipEventCallback();
        this.mIWifiChipEventCallbackV12 = new ChipEventCallbackV12();
    }

    private void handleRemoteException(RemoteException e) {
        String methodName = niceMethodName(Thread.currentThread().getStackTrace(), 3);
        this.mVerboseLog.err("% RemoteException in HIDL call %").c(methodName).c(e.toString()).flush();
        clearState();
    }

    public boolean initialize(WifiNative.VendorHalDeathEventHandler handler) {
        synchronized (sLock) {
            this.mHalDeviceManager.initialize();
            this.mHalDeviceManager.registerStatusListener(this.mHalDeviceManagerStatusCallbacks, this.mHalEventHandler);
            this.mDeathEventHandler = handler;
        }
        return true;
    }

    public void registerRadioModeChangeHandler(WifiNative.VendorHalRadioModeChangeEventHandler handler) {
        synchronized (sLock) {
            this.mRadioModeChangeEventHandler = handler;
        }
    }

    public boolean isVendorHalSupported() {
        boolean zIsSupported;
        synchronized (sLock) {
            zIsSupported = this.mHalDeviceManager.isSupported();
        }
        return zIsSupported;
    }

    public boolean startVendorHalAp() {
        synchronized (sLock) {
            if (!startVendorHal()) {
                return false;
            }
            if (TextUtils.isEmpty(createApIface(null))) {
                stopVendorHal();
                return false;
            }
            return true;
        }
    }

    public boolean startVendorHalSta() {
        synchronized (sLock) {
            if (!startVendorHal()) {
                return false;
            }
            if (TextUtils.isEmpty(createStaIface(false, null))) {
                stopVendorHal();
                return false;
            }
            return true;
        }
    }

    public boolean startVendorHal() {
        synchronized (sLock) {
            if (!this.mHalDeviceManager.start()) {
                this.mLog.err("Failed to start vendor HAL").flush();
                return false;
            }
            this.mLog.info("Vendor Hal started successfully").flush();
            return true;
        }
    }

    private IWifiStaIface getStaIface(String ifaceName) {
        IWifiStaIface iWifiStaIface;
        synchronized (sLock) {
            iWifiStaIface = this.mIWifiStaIfaces.get(ifaceName);
        }
        return iWifiStaIface;
    }

    private class StaInterfaceDestroyedListenerInternal implements HalDeviceManager.InterfaceDestroyedListener {
        private final HalDeviceManager.InterfaceDestroyedListener mExternalListener;

        StaInterfaceDestroyedListenerInternal(HalDeviceManager.InterfaceDestroyedListener externalListener) {
            this.mExternalListener = externalListener;
        }

        @Override // com.android.server.wifi.HalDeviceManager.InterfaceDestroyedListener
        public void onDestroyed(String ifaceName) {
            synchronized (WifiVendorHal.sLock) {
                WifiVendorHal.this.mIWifiStaIfaces.remove(ifaceName);
            }
            HalDeviceManager.InterfaceDestroyedListener interfaceDestroyedListener = this.mExternalListener;
            if (interfaceDestroyedListener != null) {
                interfaceDestroyedListener.onDestroyed(ifaceName);
            }
        }
    }

    public String createStaIface(boolean lowPrioritySta, HalDeviceManager.InterfaceDestroyedListener destroyedListener) {
        synchronized (sLock) {
            IWifiStaIface iface = this.mHalDeviceManager.createStaIface(lowPrioritySta, new StaInterfaceDestroyedListenerInternal(destroyedListener), null);
            if (iface == null) {
                this.mLog.err("Failed to create STA iface").flush();
                return stringResult(null);
            }
            HalDeviceManager halDeviceManager = this.mHalDeviceManager;
            String ifaceName = HalDeviceManager.getName(iface);
            if (TextUtils.isEmpty(ifaceName)) {
                this.mLog.err("Failed to get iface name").flush();
                return stringResult(null);
            }
            if (!registerStaIfaceCallback(iface)) {
                this.mLog.err("Failed to register STA iface callback").flush();
                return stringResult(null);
            }
            if (!retrieveWifiChip(iface)) {
                this.mLog.err("Failed to get wifi chip").flush();
                return stringResult(null);
            }
            enableLinkLayerStats(iface);
            this.mIWifiStaIfaces.put(ifaceName, iface);
            return ifaceName;
        }
    }

    public boolean removeStaIface(String ifaceName) {
        synchronized (sLock) {
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return boolResult(false);
            }
            if (!this.mHalDeviceManager.removeIface(iface)) {
                this.mLog.err("Failed to remove STA iface").flush();
                return boolResult(false);
            }
            this.mIWifiStaIfaces.remove(ifaceName);
            return true;
        }
    }

    private IWifiApIface getApIface(String ifaceName) {
        IWifiApIface iWifiApIface;
        synchronized (sLock) {
            iWifiApIface = this.mIWifiApIfaces.get(ifaceName);
        }
        return iWifiApIface;
    }

    private class ApInterfaceDestroyedListenerInternal implements HalDeviceManager.InterfaceDestroyedListener {
        private final HalDeviceManager.InterfaceDestroyedListener mExternalListener;

        ApInterfaceDestroyedListenerInternal(HalDeviceManager.InterfaceDestroyedListener externalListener) {
            this.mExternalListener = externalListener;
        }

        @Override // com.android.server.wifi.HalDeviceManager.InterfaceDestroyedListener
        public void onDestroyed(String ifaceName) {
            synchronized (WifiVendorHal.sLock) {
                WifiVendorHal.this.mIWifiApIfaces.remove(ifaceName);
            }
            HalDeviceManager.InterfaceDestroyedListener interfaceDestroyedListener = this.mExternalListener;
            if (interfaceDestroyedListener != null) {
                interfaceDestroyedListener.onDestroyed(ifaceName);
            }
        }
    }

    public String createApIface(HalDeviceManager.InterfaceDestroyedListener destroyedListener) {
        synchronized (sLock) {
            IWifiApIface iface = this.mHalDeviceManager.createApIface(new ApInterfaceDestroyedListenerInternal(destroyedListener), null);
            if (iface == null) {
                this.mLog.err("Failed to create AP iface").flush();
                return stringResult(null);
            }
            HalDeviceManager halDeviceManager = this.mHalDeviceManager;
            String ifaceName = HalDeviceManager.getName(iface);
            if (TextUtils.isEmpty(ifaceName)) {
                this.mLog.err("Failed to get iface name").flush();
                return stringResult(null);
            }
            if (!retrieveWifiChip(iface)) {
                this.mLog.err("Failed to get wifi chip").flush();
                return stringResult(null);
            }
            this.mIWifiApIfaces.put(ifaceName, iface);
            return ifaceName;
        }
    }

    public boolean removeApIface(String ifaceName) {
        synchronized (sLock) {
            IWifiApIface iface = getApIface(ifaceName);
            if (iface == null) {
                return boolResult(false);
            }
            if (!this.mHalDeviceManager.removeIface(iface)) {
                this.mLog.err("Failed to remove AP iface").flush();
                return boolResult(false);
            }
            this.mIWifiApIfaces.remove(ifaceName);
            return true;
        }
    }

    private boolean retrieveWifiChip(IWifiIface iface) {
        synchronized (sLock) {
            boolean registrationNeeded = this.mIWifiChip == null;
            this.mIWifiChip = this.mHalDeviceManager.getChip(iface);
            if (this.mIWifiChip == null) {
                this.mLog.err("Failed to get the chip created for the Iface").flush();
                return false;
            }
            if (!registrationNeeded) {
                return true;
            }
            if (registerChipCallback()) {
                return true;
            }
            this.mLog.err("Failed to register chip callback").flush();
            this.mIWifiChip = null;
            return false;
        }
    }

    private boolean registerStaIfaceCallback(IWifiStaIface iface) {
        synchronized (sLock) {
            if (iface == null) {
                return boolResult(false);
            }
            if (this.mIWifiStaIfaceEventCallback == null) {
                return boolResult(false);
            }
            try {
                WifiStatus status = iface.registerEventCallback(this.mIWifiStaIfaceEventCallback);
                return ok(status);
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            }
        }
    }

    private boolean registerChipCallback() {
        WifiStatus status;
        synchronized (sLock) {
            if (this.mIWifiChip == null) {
                return boolResult(false);
            }
            try {
                android.hardware.wifi.V1_2.IWifiChip iWifiChipV12 = getWifiChipForV1_2Mockable();
                if (iWifiChipV12 != null) {
                    status = iWifiChipV12.registerEventCallback_1_2(this.mIWifiChipEventCallbackV12);
                } else {
                    status = this.mIWifiChip.registerEventCallback(this.mIWifiChipEventCallback);
                }
                return ok(status);
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            }
        }
    }

    public void stopVendorHal() {
        synchronized (sLock) {
            this.mHalDeviceManager.stop();
            clearState();
            this.mLog.info("Vendor Hal stopped").flush();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearState() {
        this.mIWifiChip = null;
        this.mIWifiStaIfaces.clear();
        this.mIWifiApIfaces.clear();
        this.mDriverDescription = null;
        this.mFirmwareDescription = null;
    }

    public boolean isHalStarted() {
        boolean z;
        synchronized (sLock) {
            z = (this.mIWifiStaIfaces.isEmpty() && this.mIWifiApIfaces.isEmpty()) ? false : true;
        }
        return z;
    }

    public boolean getBgScanCapabilities(String ifaceName, final WifiNative.ScanCapabilities capabilities) {
        synchronized (sLock) {
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return boolResult(false);
            }
            try {
                final MutableBoolean ans = new MutableBoolean(false);
                iface.getBackgroundScanCapabilities(new IWifiStaIface.getBackgroundScanCapabilitiesCallback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$qPUuRnlo2XMDrsA1gI_KLrbvPAI
                    @Override // android.hardware.wifi.V1_0.IWifiStaIface.getBackgroundScanCapabilitiesCallback
                    public final void onValues(WifiStatus wifiStatus, StaBackgroundScanCapabilities staBackgroundScanCapabilities) {
                        this.f$0.lambda$getBgScanCapabilities$0$WifiVendorHal(capabilities, ans, wifiStatus, staBackgroundScanCapabilities);
                    }
                });
                return ans.value;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            }
        }
    }

    public /* synthetic */ void lambda$getBgScanCapabilities$0$WifiVendorHal(WifiNative.ScanCapabilities out, MutableBoolean ans, WifiStatus status, StaBackgroundScanCapabilities cap) {
        if (ok(status)) {
            this.mVerboseLog.info("scan capabilities %").c(cap.toString()).flush();
            out.max_scan_cache_size = cap.maxCacheSize;
            out.max_ap_cache_per_scan = cap.maxApCachePerScan;
            out.max_scan_buckets = cap.maxBuckets;
            out.max_rssi_sample_size = 0;
            out.max_scan_reporting_threshold = cap.maxReportingThreshold;
            ans.value = true;
        }
    }

    @VisibleForTesting
    class CurrentBackgroundScan {
        public int cmdId;
        public WifiNative.ScanEventHandler eventHandler = null;
        public boolean paused = false;
        public WifiScanner.ScanData[] latestScanResults = null;
        public StaBackgroundScanParameters param = new StaBackgroundScanParameters();

        CurrentBackgroundScan(int id, WifiNative.ScanSettings settings) {
            this.cmdId = id;
            this.param.basePeriodInMs = settings.base_period_ms;
            this.param.maxApPerScan = settings.max_ap_per_scan;
            this.param.reportThresholdPercent = settings.report_threshold_percent;
            this.param.reportThresholdNumScans = settings.report_threshold_num_scans;
            if (settings.buckets != null) {
                for (WifiNative.BucketSettings bs : settings.buckets) {
                    this.param.buckets.add(WifiVendorHal.this.makeStaBackgroundScanBucketParametersFromBucketSettings(bs));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StaBackgroundScanBucketParameters makeStaBackgroundScanBucketParametersFromBucketSettings(WifiNative.BucketSettings bs) {
        StaBackgroundScanBucketParameters pa = new StaBackgroundScanBucketParameters();
        pa.bucketIdx = bs.bucket;
        pa.band = makeWifiBandFromFrameworkBand(bs.band);
        if (bs.channels != null) {
            for (WifiNative.ChannelSettings cs : bs.channels) {
                pa.frequencies.add(Integer.valueOf(cs.frequency));
            }
        }
        pa.periodInMs = bs.period_ms;
        pa.eventReportScheme = makeReportSchemeFromBucketSettingsReportEvents(bs.report_events);
        pa.exponentialMaxPeriodInMs = bs.max_period_ms;
        pa.exponentialBase = 2;
        pa.exponentialStepCount = bs.step_count;
        return pa;
    }

    private int makeWifiBandFromFrameworkBand(int frameworkBand) {
        if (frameworkBand == 0) {
            return 0;
        }
        if (frameworkBand == 1) {
            return 1;
        }
        if (frameworkBand == 2) {
            return 2;
        }
        if (frameworkBand == 3) {
            return 3;
        }
        if (frameworkBand == 4) {
            return 4;
        }
        if (frameworkBand == 6) {
            return 6;
        }
        if (frameworkBand == 7) {
            return 7;
        }
        throw new IllegalArgumentException("bad band " + frameworkBand);
    }

    private int makeReportSchemeFromBucketSettingsReportEvents(int reportUnderscoreEvents) {
        int ans = 0;
        BitMask in = new BitMask(reportUnderscoreEvents);
        if (in.testAndClear(1)) {
            ans = 0 | 1;
        }
        if (in.testAndClear(2)) {
            ans |= 2;
        }
        if (in.testAndClear(4)) {
            ans |= 4;
        }
        if (in.value != 0) {
            throw new IllegalArgumentException("bad " + reportUnderscoreEvents);
        }
        return ans;
    }

    public boolean startBgScan(String ifaceName, WifiNative.ScanSettings settings, WifiNative.ScanEventHandler eventHandler) {
        if (eventHandler == null) {
            return boolResult(false);
        }
        synchronized (sLock) {
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return boolResult(false);
            }
            try {
                if (this.mScan != null && !this.mScan.paused) {
                    ok(iface.stopBackgroundScan(this.mScan.cmdId));
                    this.mScan = null;
                }
                this.mLastScanCmdId = (this.mLastScanCmdId % 9) + 1;
                CurrentBackgroundScan scan = new CurrentBackgroundScan(this.mLastScanCmdId, settings);
                WifiStatus status = iface.startBackgroundScan(scan.cmdId, scan.param);
                if (!ok(status)) {
                    return false;
                }
                scan.eventHandler = eventHandler;
                this.mScan = scan;
                return true;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            }
        }
    }

    public void stopBgScan(String ifaceName) {
        synchronized (sLock) {
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return;
            }
            try {
                if (this.mScan != null) {
                    ok(iface.stopBackgroundScan(this.mScan.cmdId));
                    this.mScan = null;
                }
            } catch (RemoteException e) {
                handleRemoteException(e);
            }
        }
    }

    public void pauseBgScan(String ifaceName) {
        synchronized (sLock) {
            try {
                IWifiStaIface iface = getStaIface(ifaceName);
                if (iface == null) {
                    return;
                }
                if (this.mScan != null && !this.mScan.paused) {
                    WifiStatus status = iface.stopBackgroundScan(this.mScan.cmdId);
                    if (!ok(status)) {
                    } else {
                        this.mScan.paused = true;
                    }
                }
            } catch (RemoteException e) {
                handleRemoteException(e);
            }
        }
    }

    public void restartBgScan(String ifaceName) {
        synchronized (sLock) {
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return;
            }
            try {
                if (this.mScan != null && this.mScan.paused) {
                    WifiStatus status = iface.startBackgroundScan(this.mScan.cmdId, this.mScan.param);
                    if (!ok(status)) {
                    } else {
                        this.mScan.paused = false;
                    }
                }
            } catch (RemoteException e) {
                handleRemoteException(e);
            }
        }
    }

    public WifiScanner.ScanData[] getBgScanResults(String ifaceName) {
        synchronized (sLock) {
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return null;
            }
            if (this.mScan == null) {
                return null;
            }
            return this.mScan.latestScanResults;
        }
    }

    public WifiLinkLayerStats getWifiLinkLayerStats(String ifaceName) {
        if (getWifiStaIfaceForV1_3Mockable(ifaceName) != null) {
            return getWifiLinkLayerStats_1_3_Internal(ifaceName);
        }
        return getWifiLinkLayerStats_internal(ifaceName);
    }

    /* JADX INFO: renamed from: com.android.server.wifi.WifiVendorHal$1AnswerBox, reason: invalid class name */
    class C1AnswerBox {
        public StaLinkLayerStats value = null;

        C1AnswerBox() {
        }
    }

    private WifiLinkLayerStats getWifiLinkLayerStats_internal(String ifaceName) {
        final C1AnswerBox answer = new C1AnswerBox();
        synchronized (sLock) {
            try {
                IWifiStaIface iface = getStaIface(ifaceName);
                if (iface == null) {
                    return null;
                }
                iface.getLinkLayerStats(new IWifiStaIface.getLinkLayerStatsCallback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$lNa_8_teac3OVuDxfIe7mrSRm7Y
                    @Override // android.hardware.wifi.V1_0.IWifiStaIface.getLinkLayerStatsCallback
                    public final void onValues(WifiStatus wifiStatus, StaLinkLayerStats staLinkLayerStats) {
                        this.f$0.lambda$getWifiLinkLayerStats_internal$1$WifiVendorHal(answer, wifiStatus, staLinkLayerStats);
                    }
                });
                WifiLinkLayerStats stats = frameworkFromHalLinkLayerStats(answer.value);
                return stats;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return null;
            }
        }
    }

    public /* synthetic */ void lambda$getWifiLinkLayerStats_internal$1$WifiVendorHal(C1AnswerBox answer, WifiStatus status, StaLinkLayerStats stats) {
        if (ok(status)) {
            answer.value = stats;
        }
    }

    /* JADX INFO: renamed from: com.android.server.wifi.WifiVendorHal$2AnswerBox, reason: invalid class name */
    class C2AnswerBox {
        public android.hardware.wifi.V1_3.StaLinkLayerStats value = null;

        C2AnswerBox() {
        }
    }

    private WifiLinkLayerStats getWifiLinkLayerStats_1_3_Internal(String ifaceName) {
        final C2AnswerBox answer = new C2AnswerBox();
        synchronized (sLock) {
            try {
                android.hardware.wifi.V1_3.IWifiStaIface iface = getWifiStaIfaceForV1_3Mockable(ifaceName);
                if (iface == null) {
                    return null;
                }
                iface.getLinkLayerStats_1_3(new android.hardware.wifi.V1_3.IWifiStaIface.getLinkLayerStats_1_3Callback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$3w2QU6DXdNsy4eC63faTYVcIcMs
                    @Override // android.hardware.wifi.V1_3.IWifiStaIface.getLinkLayerStats_1_3Callback
                    public final void onValues(WifiStatus wifiStatus, android.hardware.wifi.V1_3.StaLinkLayerStats staLinkLayerStats) {
                        this.f$0.lambda$getWifiLinkLayerStats_1_3_Internal$2$WifiVendorHal(answer, wifiStatus, staLinkLayerStats);
                    }
                });
                WifiLinkLayerStats stats = frameworkFromHalLinkLayerStats_1_3(answer.value);
                return stats;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return null;
            }
        }
    }

    public /* synthetic */ void lambda$getWifiLinkLayerStats_1_3_Internal$2$WifiVendorHal(C2AnswerBox answer, WifiStatus status, android.hardware.wifi.V1_3.StaLinkLayerStats stats) {
        if (ok(status)) {
            answer.value = stats;
        }
    }

    @VisibleForTesting
    static WifiLinkLayerStats frameworkFromHalLinkLayerStats(StaLinkLayerStats stats) {
        if (stats == null) {
            return null;
        }
        WifiLinkLayerStats out = new WifiLinkLayerStats();
        setIfaceStats(out, stats.iface);
        setRadioStats(out, stats.radios);
        setTimeStamp(out, stats.timeStampInMs);
        out.version = WifiLinkLayerStats.V1_0;
        return out;
    }

    @VisibleForTesting
    static WifiLinkLayerStats frameworkFromHalLinkLayerStats_1_3(android.hardware.wifi.V1_3.StaLinkLayerStats stats) {
        if (stats == null) {
            return null;
        }
        WifiLinkLayerStats out = new WifiLinkLayerStats();
        setIfaceStats(out, stats.iface);
        setRadioStats_1_3(out, stats.radios);
        setTimeStamp(out, stats.timeStampInMs);
        out.version = WifiLinkLayerStats.V1_3;
        return out;
    }

    private static void setIfaceStats(WifiLinkLayerStats stats, StaLinkLayerIfaceStats iface) {
        if (iface == null) {
            return;
        }
        stats.beacon_rx = iface.beaconRx;
        stats.rssi_mgmt = iface.avgRssiMgmt;
        stats.rxmpdu_be = iface.wmeBePktStats.rxMpdu;
        stats.txmpdu_be = iface.wmeBePktStats.txMpdu;
        stats.lostmpdu_be = iface.wmeBePktStats.lostMpdu;
        stats.retries_be = iface.wmeBePktStats.retries;
        stats.rxmpdu_bk = iface.wmeBkPktStats.rxMpdu;
        stats.txmpdu_bk = iface.wmeBkPktStats.txMpdu;
        stats.lostmpdu_bk = iface.wmeBkPktStats.lostMpdu;
        stats.retries_bk = iface.wmeBkPktStats.retries;
        stats.rxmpdu_vi = iface.wmeViPktStats.rxMpdu;
        stats.txmpdu_vi = iface.wmeViPktStats.txMpdu;
        stats.lostmpdu_vi = iface.wmeViPktStats.lostMpdu;
        stats.retries_vi = iface.wmeViPktStats.retries;
        stats.rxmpdu_vo = iface.wmeVoPktStats.rxMpdu;
        stats.txmpdu_vo = iface.wmeVoPktStats.txMpdu;
        stats.lostmpdu_vo = iface.wmeVoPktStats.lostMpdu;
        stats.retries_vo = iface.wmeVoPktStats.retries;
    }

    private static void setRadioStats(WifiLinkLayerStats stats, List<StaLinkLayerRadioStats> radios) {
        if (radios != null && radios.size() > 0) {
            StaLinkLayerRadioStats radioStats = radios.get(0);
            stats.on_time = radioStats.onTimeInMs;
            stats.tx_time = radioStats.txTimeInMs;
            stats.tx_time_per_level = new int[radioStats.txTimeInMsPerLevel.size()];
            for (int i = 0; i < stats.tx_time_per_level.length; i++) {
                stats.tx_time_per_level[i] = radioStats.txTimeInMsPerLevel.get(i).intValue();
            }
            int i2 = radioStats.rxTimeInMs;
            stats.rx_time = i2;
            stats.on_time_scan = radioStats.onTimeInMsForScan;
        }
    }

    private static void setRadioStats_1_3(WifiLinkLayerStats stats, List<android.hardware.wifi.V1_3.StaLinkLayerRadioStats> radios) {
        if (radios != null && radios.size() > 0) {
            android.hardware.wifi.V1_3.StaLinkLayerRadioStats radioStats = radios.get(0);
            stats.on_time = radioStats.V1_0.onTimeInMs;
            stats.tx_time = radioStats.V1_0.txTimeInMs;
            stats.tx_time_per_level = new int[radioStats.V1_0.txTimeInMsPerLevel.size()];
            for (int i = 0; i < stats.tx_time_per_level.length; i++) {
                stats.tx_time_per_level[i] = radioStats.V1_0.txTimeInMsPerLevel.get(i).intValue();
            }
            stats.rx_time = radioStats.V1_0.rxTimeInMs;
            stats.on_time_scan = radioStats.V1_0.onTimeInMsForScan;
            stats.on_time_nan_scan = radioStats.onTimeInMsForNanScan;
            stats.on_time_background_scan = radioStats.onTimeInMsForBgScan;
            stats.on_time_roam_scan = radioStats.onTimeInMsForRoamScan;
            stats.on_time_pno_scan = radioStats.onTimeInMsForPnoScan;
            stats.on_time_hs20_scan = radioStats.onTimeInMsForHs20Scan;
            for (int i2 = 0; i2 < radioStats.channelStats.size(); i2++) {
                WifiChannelStats channelStats = radioStats.channelStats.get(i2);
                WifiLinkLayerStats.ChannelStats channelStatsEntry = new WifiLinkLayerStats.ChannelStats();
                channelStatsEntry.frequency = channelStats.channel.centerFreq;
                channelStatsEntry.radioOnTimeMs = channelStats.onTimeInMs;
                channelStatsEntry.ccaBusyTimeMs = channelStats.ccaBusyTimeInMs;
                stats.channelStatsMap.put(channelStats.channel.centerFreq, channelStatsEntry);
            }
        }
    }

    private static void setTimeStamp(WifiLinkLayerStats stats, long timeStampInMs) {
        stats.timeStampInMs = timeStampInMs;
    }

    private void enableLinkLayerStats(IWifiStaIface iface) {
        synchronized (sLock) {
            try {
                WifiStatus status = iface.enableLinkLayerStatsCollection(this.mLinkLayerStatsDebug);
                if (!ok(status)) {
                    this.mLog.err("unable to enable link layer stats collection").flush();
                }
            } catch (RemoteException e) {
                handleRemoteException(e);
            }
        }
    }

    @VisibleForTesting
    int wifiFeatureMaskFromChipCapabilities(int capabilities) {
        int features = 0;
        int i = 0;
        while (true) {
            int[][] iArr = sChipFeatureCapabilityTranslation;
            if (i < iArr.length) {
                if ((iArr[i][1] & capabilities) != 0) {
                    features |= iArr[i][0];
                }
                i++;
            } else {
                return features;
            }
        }
    }

    @VisibleForTesting
    long wifiFeatureMaskFromChipCapabilities_1_3(int capabilities) {
        long features = wifiFeatureMaskFromChipCapabilities(capabilities);
        int i = 0;
        while (true) {
            long[][] jArr = sChipFeatureCapabilityTranslation13;
            if (i < jArr.length) {
                if ((((long) capabilities) & jArr[i][1]) != 0) {
                    features |= jArr[i][0];
                }
                i++;
            } else {
                return features;
            }
        }
    }

    @VisibleForTesting
    int wifiFeatureMaskFromStaCapabilities(int capabilities) {
        int features = 0;
        int i = 0;
        while (true) {
            int[][] iArr = sStaFeatureCapabilityTranslation;
            if (i < iArr.length) {
                if ((iArr[i][1] & capabilities) != 0) {
                    features |= iArr[i][0];
                }
                i++;
            } else {
                return features;
            }
        }
    }

    public long getSupportedFeatureSet(String ifaceName) {
        if (!this.mHalDeviceManager.isStarted()) {
            return 0L;
        }
        try {
            final MutableLong feat = new MutableLong(0L);
            synchronized (sLock) {
                android.hardware.wifi.V1_3.IWifiChip iWifiChipV13 = getWifiChipForV1_3Mockable();
                if (iWifiChipV13 != null) {
                    iWifiChipV13.getCapabilities_1_3(new android.hardware.wifi.V1_3.IWifiChip.getCapabilities_1_3Callback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$XwdlM1fW3hc4x8NTlPEdTo9qP_w
                        @Override // android.hardware.wifi.V1_3.IWifiChip.getCapabilities_1_3Callback
                        public final void onValues(WifiStatus wifiStatus, int i) {
                            this.f$0.lambda$getSupportedFeatureSet$3$WifiVendorHal(feat, wifiStatus, i);
                        }
                    });
                } else if (this.mIWifiChip != null) {
                    this.mIWifiChip.getCapabilities(new IWifiChip.getCapabilitiesCallback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$vlEkp-ldMLMke-ZfHkkzKdBRCNo
                        @Override // android.hardware.wifi.V1_0.IWifiChip.getCapabilitiesCallback
                        public final void onValues(WifiStatus wifiStatus, int i) {
                            this.f$0.lambda$getSupportedFeatureSet$4$WifiVendorHal(feat, wifiStatus, i);
                        }
                    });
                }
                IWifiStaIface iface = getStaIface(ifaceName);
                if (iface != null) {
                    iface.getCapabilities(new IWifiStaIface.getCapabilitiesCallback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$gGT-eGu2_MxK453qjY1pSxSOP3I
                        @Override // android.hardware.wifi.V1_0.IWifiStaIface.getCapabilitiesCallback
                        public final void onValues(WifiStatus wifiStatus, int i) {
                            this.f$0.lambda$getSupportedFeatureSet$5$WifiVendorHal(feat, wifiStatus, i);
                        }
                    });
                }
            }
            long featureSet = feat.value;
            Set<Integer> supportedIfaceTypes = this.mHalDeviceManager.getSupportedIfaceTypes();
            if (supportedIfaceTypes.contains(0)) {
                featureSet |= 1;
            }
            if (supportedIfaceTypes.contains(1)) {
                featureSet |= 16;
            }
            if (supportedIfaceTypes.contains(2)) {
                featureSet |= 8;
            }
            if (supportedIfaceTypes.contains(3)) {
                return featureSet | 64;
            }
            return featureSet;
        } catch (RemoteException e) {
            handleRemoteException(e);
            return 0L;
        }
    }

    public /* synthetic */ void lambda$getSupportedFeatureSet$3$WifiVendorHal(MutableLong feat, WifiStatus status, int capabilities) {
        if (ok(status)) {
            feat.value = wifiFeatureMaskFromChipCapabilities_1_3(capabilities);
        }
    }

    public /* synthetic */ void lambda$getSupportedFeatureSet$4$WifiVendorHal(MutableLong feat, WifiStatus status, int capabilities) {
        if (ok(status)) {
            feat.value = wifiFeatureMaskFromChipCapabilities(capabilities);
        }
    }

    public /* synthetic */ void lambda$getSupportedFeatureSet$5$WifiVendorHal(MutableLong feat, WifiStatus status, int capabilities) {
        if (ok(status)) {
            feat.value |= (long) wifiFeatureMaskFromStaCapabilities(capabilities);
        }
    }

    public boolean setScanningMacOui(String ifaceName, byte[] oui) {
        if (oui != null && oui.length == 3) {
            synchronized (sLock) {
                try {
                    try {
                        IWifiStaIface iface = getStaIface(ifaceName);
                        if (iface == null) {
                            return boolResult(false);
                        }
                        WifiStatus status = iface.setScanningMacOui(oui);
                        if (!ok(status)) {
                            return false;
                        }
                        return true;
                    } catch (RemoteException e) {
                        handleRemoteException(e);
                        return false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return boolResult(false);
    }

    public boolean setMacAddress(String ifaceName, MacAddress mac) {
        byte[] macByteArray = mac.toByteArray();
        synchronized (sLock) {
            try {
                try {
                    android.hardware.wifi.V1_2.IWifiStaIface ifaceV12 = getWifiStaIfaceForV1_2Mockable(ifaceName);
                    if (ifaceV12 == null) {
                        return boolResult(false);
                    }
                    WifiStatus status = ifaceV12.setMacAddress(macByteArray);
                    if (!ok(status)) {
                        return false;
                    }
                    return true;
                } catch (RemoteException e) {
                    handleRemoteException(e);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: com.android.server.wifi.WifiVendorHal$3AnswerBox, reason: invalid class name */
    class C3AnswerBox {
        public MacAddress mac = null;

        C3AnswerBox() {
        }
    }

    public MacAddress getFactoryMacAddress(String ifaceName) {
        synchronized (sLock) {
            try {
                try {
                    android.hardware.wifi.V1_3.IWifiStaIface ifaceV13 = getWifiStaIfaceForV1_3Mockable(ifaceName);
                    if (ifaceV13 == null) {
                        return null;
                    }
                    final C3AnswerBox box = new C3AnswerBox();
                    ifaceV13.getFactoryMacAddress(new android.hardware.wifi.V1_3.IWifiStaIface.getFactoryMacAddressCallback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$NcA8MRxoMqZf5Oz8FvFvnNoRQoE
                        @Override // android.hardware.wifi.V1_3.IWifiStaIface.getFactoryMacAddressCallback
                        public final void onValues(WifiStatus wifiStatus, byte[] bArr) {
                            this.f$0.lambda$getFactoryMacAddress$6$WifiVendorHal(box, wifiStatus, bArr);
                        }
                    });
                    return box.mac;
                } catch (RemoteException e) {
                    handleRemoteException(e);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public /* synthetic */ void lambda$getFactoryMacAddress$6$WifiVendorHal(C3AnswerBox box, WifiStatus status, byte[] macBytes) {
        if (ok(status)) {
            box.mac = MacAddress.fromBytes(macBytes);
        }
    }

    /* JADX INFO: renamed from: com.android.server.wifi.WifiVendorHal$4AnswerBox, reason: invalid class name */
    class C4AnswerBox {
        public ApfCapabilities value = WifiVendorHal.sNoApfCapabilities;

        C4AnswerBox() {
        }
    }

    public ApfCapabilities getApfCapabilities(String ifaceName) {
        synchronized (sLock) {
            try {
                try {
                    IWifiStaIface iface = getStaIface(ifaceName);
                    if (iface == null) {
                        return sNoApfCapabilities;
                    }
                    final C4AnswerBox box = new C4AnswerBox();
                    iface.getApfPacketFilterCapabilities(new IWifiStaIface.getApfPacketFilterCapabilitiesCallback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$teXyvL0oUnCS1kQEBqnEheMifN8
                        @Override // android.hardware.wifi.V1_0.IWifiStaIface.getApfPacketFilterCapabilitiesCallback
                        public final void onValues(WifiStatus wifiStatus, StaApfPacketFilterCapabilities staApfPacketFilterCapabilities) {
                            this.f$0.lambda$getApfCapabilities$7$WifiVendorHal(box, wifiStatus, staApfPacketFilterCapabilities);
                        }
                    });
                    return box.value;
                } catch (RemoteException e) {
                    handleRemoteException(e);
                    return sNoApfCapabilities;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public /* synthetic */ void lambda$getApfCapabilities$7$WifiVendorHal(C4AnswerBox box, WifiStatus status, StaApfPacketFilterCapabilities capabilities) {
        if (ok(status)) {
            box.value = new ApfCapabilities(capabilities.version, capabilities.maxLength, OsConstants.ARPHRD_ETHER);
        }
    }

    public boolean installPacketFilter(String ifaceName, byte[] filter) {
        if (filter == null) {
            return boolResult(false);
        }
        ArrayList<Byte> program = NativeUtil.byteArrayToArrayList(filter);
        enter("filter length %").c(filter.length).flush();
        synchronized (sLock) {
            try {
                try {
                    IWifiStaIface iface = getStaIface(ifaceName);
                    if (iface == null) {
                        return boolResult(false);
                    }
                    WifiStatus status = iface.installApfPacketFilter(0, program);
                    if (!ok(status)) {
                        return false;
                    }
                    return true;
                } catch (RemoteException e) {
                    handleRemoteException(e);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: com.android.server.wifi.WifiVendorHal$5AnswerBox, reason: invalid class name */
    class C5AnswerBox {
        public byte[] data = null;

        C5AnswerBox() {
        }
    }

    public byte[] readPacketFilter(String ifaceName) {
        final C5AnswerBox answer = new C5AnswerBox();
        enter("").flush();
        synchronized (sLock) {
            try {
                try {
                    android.hardware.wifi.V1_2.IWifiStaIface ifaceV12 = getWifiStaIfaceForV1_2Mockable(ifaceName);
                    if (ifaceV12 == null) {
                        return byteArrayResult(null);
                    }
                    ifaceV12.readApfPacketFilterData(new android.hardware.wifi.V1_2.IWifiStaIface.readApfPacketFilterDataCallback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$fcB-WPwN4m4v3yrrOWg1GDxxXgQ
                        @Override // android.hardware.wifi.V1_2.IWifiStaIface.readApfPacketFilterDataCallback
                        public final void onValues(WifiStatus wifiStatus, ArrayList arrayList) {
                            this.f$0.lambda$readPacketFilter$8$WifiVendorHal(answer, wifiStatus, arrayList);
                        }
                    });
                    return byteArrayResult(answer.data);
                } catch (RemoteException e) {
                    handleRemoteException(e);
                    return byteArrayResult(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public /* synthetic */ void lambda$readPacketFilter$8$WifiVendorHal(C5AnswerBox answer, WifiStatus status, ArrayList dataByteArray) {
        if (ok(status)) {
            answer.data = NativeUtil.byteArrayFromArrayList(dataByteArray);
        }
    }

    public boolean setCountryCodeHal(String ifaceName, String countryCode) {
        if (countryCode != null && countryCode.length() == 2) {
            try {
                byte[] code = NativeUtil.stringToByteArray(countryCode);
                synchronized (sLock) {
                    try {
                        try {
                            IWifiApIface iface = getApIface(ifaceName);
                            if (iface == null) {
                                return boolResult(false);
                            }
                            WifiStatus status = iface.setCountryCode(code);
                            if (!ok(status)) {
                                return false;
                            }
                            return true;
                        } catch (Throwable th) {
                            throw th;
                        }
                    } catch (RemoteException e) {
                        handleRemoteException(e);
                        return false;
                    }
                }
            } catch (IllegalArgumentException e2) {
                return boolResult(false);
            }
        }
        return boolResult(false);
    }

    public boolean setLoggingEventHandler(WifiNative.WifiLoggerEventHandler handler) {
        if (handler == null) {
            return boolResult(false);
        }
        synchronized (sLock) {
            if (this.mIWifiChip == null) {
                return boolResult(false);
            }
            if (this.mLogEventHandler != null) {
                return boolResult(false);
            }
            try {
                WifiStatus status = this.mIWifiChip.enableDebugErrorAlerts(true);
                if (!ok(status)) {
                    return false;
                }
                this.mLogEventHandler = handler;
                return true;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            }
        }
    }

    public boolean resetLogHandler() {
        synchronized (sLock) {
            this.mLogEventHandler = null;
            if (this.mIWifiChip == null) {
                return boolResult(false);
            }
            try {
                WifiStatus status = this.mIWifiChip.enableDebugErrorAlerts(false);
                if (!ok(status)) {
                    return false;
                }
                WifiStatus status2 = this.mIWifiChip.stopLoggingToDebugRingBuffer();
                return ok(status2);
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            }
        }
    }

    public boolean startLoggingRingBuffer(int verboseLevel, int flags, int maxIntervalInSec, int minDataSizeInBytes, String ringName) {
        enter("verboseLevel=%, flags=%, maxIntervalInSec=%, minDataSizeInBytes=%, ringName=%").c(verboseLevel).c(flags).c(maxIntervalInSec).c(minDataSizeInBytes).c(ringName).flush();
        synchronized (sLock) {
            if (this.mIWifiChip == null) {
                return boolResult(false);
            }
            try {
                WifiStatus status = this.mIWifiChip.startLoggingToDebugRingBuffer(ringName, verboseLevel, maxIntervalInSec, minDataSizeInBytes);
                return ok(status);
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            }
        }
    }

    public int getSupportedLoggerFeatureSet() {
        return -1;
    }

    public String getDriverVersion() {
        String str;
        synchronized (sLock) {
            if (this.mDriverDescription == null) {
                requestChipDebugInfo();
            }
            str = this.mDriverDescription;
        }
        return str;
    }

    public String getFirmwareVersion() {
        String str;
        synchronized (sLock) {
            if (this.mFirmwareDescription == null) {
                requestChipDebugInfo();
            }
            str = this.mFirmwareDescription;
        }
        return str;
    }

    private void requestChipDebugInfo() {
        this.mDriverDescription = null;
        this.mFirmwareDescription = null;
        try {
            if (this.mIWifiChip == null) {
                return;
            }
            this.mIWifiChip.requestChipDebugInfo(new IWifiChip.requestChipDebugInfoCallback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$xtIgBZOv8ZXsi2hWuntD3i52tkY
                @Override // android.hardware.wifi.V1_0.IWifiChip.requestChipDebugInfoCallback
                public final void onValues(WifiStatus wifiStatus, IWifiChip.ChipDebugInfo chipDebugInfo) {
                    this.f$0.lambda$requestChipDebugInfo$9$WifiVendorHal(wifiStatus, chipDebugInfo);
                }
            });
            this.mLog.info("Driver: % Firmware: %").c(this.mDriverDescription).c(this.mFirmwareDescription).flush();
        } catch (RemoteException e) {
            handleRemoteException(e);
        }
    }

    public /* synthetic */ void lambda$requestChipDebugInfo$9$WifiVendorHal(WifiStatus status, IWifiChip.ChipDebugInfo chipDebugInfo) {
        if (ok(status)) {
            this.mDriverDescription = chipDebugInfo.driverDescription;
            this.mFirmwareDescription = chipDebugInfo.firmwareDescription;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static WifiNative.RingBufferStatus ringBufferStatus(WifiDebugRingBufferStatus h) {
        WifiNative.RingBufferStatus ans = new WifiNative.RingBufferStatus();
        ans.name = h.ringName;
        ans.flag = frameworkRingBufferFlagsFromHal(h.flags);
        ans.ringBufferId = h.ringId;
        ans.ringBufferByteSize = h.sizeInBytes;
        ans.verboseLevel = h.verboseLevel;
        return ans;
    }

    private static int frameworkRingBufferFlagsFromHal(int wifiDebugRingBufferFlag) {
        BitMask checkoff = new BitMask(wifiDebugRingBufferFlag);
        int flags = 0;
        if (checkoff.testAndClear(1)) {
            flags = 0 | 1;
        }
        if (checkoff.testAndClear(2)) {
            flags |= 2;
        }
        if (checkoff.testAndClear(4)) {
            flags |= 4;
        }
        if (checkoff.value != 0) {
            throw new IllegalArgumentException("Unknown WifiDebugRingBufferFlag " + checkoff.value);
        }
        return flags;
    }

    private static WifiNative.RingBufferStatus[] makeRingBufferStatusArray(ArrayList<WifiDebugRingBufferStatus> ringBuffers) {
        WifiNative.RingBufferStatus[] ans = new WifiNative.RingBufferStatus[ringBuffers.size()];
        int i = 0;
        for (WifiDebugRingBufferStatus b : ringBuffers) {
            ans[i] = ringBufferStatus(b);
            i++;
        }
        return ans;
    }

    /* JADX INFO: renamed from: com.android.server.wifi.WifiVendorHal$6AnswerBox, reason: invalid class name */
    class C6AnswerBox {
        public WifiNative.RingBufferStatus[] value = null;

        C6AnswerBox() {
        }
    }

    public WifiNative.RingBufferStatus[] getRingBufferStatus() {
        final C6AnswerBox ans = new C6AnswerBox();
        synchronized (sLock) {
            if (this.mIWifiChip == null) {
                return null;
            }
            try {
                this.mIWifiChip.getDebugRingBuffersStatus(new IWifiChip.getDebugRingBuffersStatusCallback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$aq7T-76I9D1SC6d_j6P5zk6VHlw
                    @Override // android.hardware.wifi.V1_0.IWifiChip.getDebugRingBuffersStatusCallback
                    public final void onValues(WifiStatus wifiStatus, ArrayList arrayList) {
                        this.f$0.lambda$getRingBufferStatus$10$WifiVendorHal(ans, wifiStatus, arrayList);
                    }
                });
                return ans.value;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return null;
            }
        }
    }

    public /* synthetic */ void lambda$getRingBufferStatus$10$WifiVendorHal(C6AnswerBox ans, WifiStatus status, ArrayList ringBuffers) {
        if (ok(status)) {
            ans.value = makeRingBufferStatusArray(ringBuffers);
        }
    }

    public boolean getRingBufferData(String ringName) {
        enter("ringName %").c(ringName).flush();
        synchronized (sLock) {
            if (this.mIWifiChip == null) {
                return boolResult(false);
            }
            try {
                WifiStatus status = this.mIWifiChip.forceDumpToDebugRingBuffer(ringName);
                return ok(status);
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            }
        }
    }

    public boolean flushRingBufferData() {
        synchronized (sLock) {
            if (this.mIWifiChip == null) {
                return boolResult(false);
            }
            android.hardware.wifi.V1_3.IWifiChip iWifiChipV13 = getWifiChipForV1_3Mockable();
            if (iWifiChipV13 == null) {
                return false;
            }
            try {
                WifiStatus status = iWifiChipV13.flushRingBufferToFile();
                return ok(status);
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            }
        }
    }

    /* JADX INFO: renamed from: com.android.server.wifi.WifiVendorHal$7AnswerBox, reason: invalid class name */
    class C7AnswerBox {
        public byte[] value;

        C7AnswerBox() {
        }
    }

    public byte[] getFwMemoryDump() {
        final C7AnswerBox ans = new C7AnswerBox();
        synchronized (sLock) {
            if (this.mIWifiChip == null) {
                return null;
            }
            try {
                this.mIWifiChip.requestFirmwareDebugDump(new IWifiChip.requestFirmwareDebugDumpCallback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$fh5yhRsoEn3OamjidwKsPe7Ejxc
                    @Override // android.hardware.wifi.V1_0.IWifiChip.requestFirmwareDebugDumpCallback
                    public final void onValues(WifiStatus wifiStatus, ArrayList arrayList) {
                        this.f$0.lambda$getFwMemoryDump$11$WifiVendorHal(ans, wifiStatus, arrayList);
                    }
                });
                return ans.value;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return null;
            }
        }
    }

    public /* synthetic */ void lambda$getFwMemoryDump$11$WifiVendorHal(C7AnswerBox ans, WifiStatus status, ArrayList blob) {
        if (ok(status)) {
            ans.value = NativeUtil.byteArrayFromArrayList(blob);
        }
    }

    /* JADX INFO: renamed from: com.android.server.wifi.WifiVendorHal$8AnswerBox, reason: invalid class name */
    class C8AnswerBox {
        public byte[] value;

        C8AnswerBox() {
        }
    }

    public byte[] getDriverStateDump() {
        final C8AnswerBox ans = new C8AnswerBox();
        synchronized (sLock) {
            if (this.mIWifiChip == null) {
                return null;
            }
            try {
                this.mIWifiChip.requestDriverDebugDump(new IWifiChip.requestDriverDebugDumpCallback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$a8RXUcZq0Hn_XzBf6E3B6YLqHl4
                    @Override // android.hardware.wifi.V1_0.IWifiChip.requestDriverDebugDumpCallback
                    public final void onValues(WifiStatus wifiStatus, ArrayList arrayList) {
                        this.f$0.lambda$getDriverStateDump$12$WifiVendorHal(ans, wifiStatus, arrayList);
                    }
                });
                return ans.value;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return null;
            }
        }
    }

    public /* synthetic */ void lambda$getDriverStateDump$12$WifiVendorHal(C8AnswerBox ans, WifiStatus status, ArrayList blob) {
        if (ok(status)) {
            ans.value = NativeUtil.byteArrayFromArrayList(blob);
        }
    }

    public boolean startPktFateMonitoring(String ifaceName) {
        synchronized (sLock) {
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return boolResult(false);
            }
            try {
                WifiStatus status = iface.startDebugPacketFateMonitoring();
                return ok(status);
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            }
        }
    }

    private byte halToFrameworkPktFateFrameType(int type) {
        if (type == 0) {
            return (byte) 0;
        }
        if (type == 1) {
            return (byte) 1;
        }
        if (type == 2) {
            return (byte) 2;
        }
        throw new IllegalArgumentException("bad " + type);
    }

    private byte halToFrameworkRxPktFate(int type) {
        switch (type) {
            case 0:
                return (byte) 0;
            case 1:
                return (byte) 1;
            case 2:
                return (byte) 2;
            case 3:
                return (byte) 3;
            case 4:
                return (byte) 4;
            case 5:
                return (byte) 5;
            case 6:
                return (byte) 6;
            case 7:
                return (byte) 7;
            case 8:
                return (byte) 8;
            case 9:
                return (byte) 9;
            case 10:
                return (byte) 10;
            default:
                throw new IllegalArgumentException("bad " + type);
        }
    }

    private byte halToFrameworkTxPktFate(int type) {
        switch (type) {
            case 0:
                return (byte) 0;
            case 1:
                return (byte) 1;
            case 2:
                return (byte) 2;
            case 3:
                return (byte) 3;
            case 4:
                return (byte) 4;
            case 5:
                return (byte) 5;
            case 6:
                return (byte) 6;
            case 7:
                return (byte) 7;
            case 8:
                return (byte) 8;
            case 9:
                return (byte) 9;
            default:
                throw new IllegalArgumentException("bad " + type);
        }
    }

    public boolean getTxPktFates(String ifaceName, final WifiNative.TxFateReport[] reportBufs) {
        if (ArrayUtils.isEmpty(reportBufs)) {
            return boolResult(false);
        }
        synchronized (sLock) {
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return boolResult(false);
            }
            try {
                final MutableBoolean ok = new MutableBoolean(false);
                iface.getDebugTxPacketFates(new IWifiStaIface.getDebugTxPacketFatesCallback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$bMF1PMemHkEQ2iatQh0WVPpTYGY
                    @Override // android.hardware.wifi.V1_0.IWifiStaIface.getDebugTxPacketFatesCallback
                    public final void onValues(WifiStatus wifiStatus, ArrayList arrayList) {
                        this.f$0.lambda$getTxPktFates$13$WifiVendorHal(reportBufs, ok, wifiStatus, arrayList);
                    }
                });
                return ok.value;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            }
        }
    }

    public /* synthetic */ void lambda$getTxPktFates$13$WifiVendorHal(WifiNative.TxFateReport[] reportBufs, MutableBoolean ok, WifiStatus status, ArrayList fates) {
        if (ok(status)) {
            int i = 0;
            Iterator it = fates.iterator();
            while (it.hasNext()) {
                WifiDebugTxPacketFateReport fate = (WifiDebugTxPacketFateReport) it.next();
                if (i >= reportBufs.length) {
                    break;
                }
                byte code = halToFrameworkTxPktFate(fate.fate);
                long us = fate.frameInfo.driverTimestampUsec;
                byte type = halToFrameworkPktFateFrameType(fate.frameInfo.frameType);
                byte[] frame = NativeUtil.byteArrayFromArrayList(fate.frameInfo.frameContent);
                reportBufs[i] = new WifiNative.TxFateReport(code, us, type, frame);
                i++;
            }
            ok.value = true;
        }
    }

    public boolean getRxPktFates(String ifaceName, final WifiNative.RxFateReport[] reportBufs) {
        if (ArrayUtils.isEmpty(reportBufs)) {
            return boolResult(false);
        }
        synchronized (sLock) {
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return boolResult(false);
            }
            try {
                final MutableBoolean ok = new MutableBoolean(false);
                iface.getDebugRxPacketFates(new IWifiStaIface.getDebugRxPacketFatesCallback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$XHfBJ_SOylRs_Rl4-IjUDiKOzAY
                    @Override // android.hardware.wifi.V1_0.IWifiStaIface.getDebugRxPacketFatesCallback
                    public final void onValues(WifiStatus wifiStatus, ArrayList arrayList) {
                        this.f$0.lambda$getRxPktFates$14$WifiVendorHal(reportBufs, ok, wifiStatus, arrayList);
                    }
                });
                return ok.value;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            }
        }
    }

    public /* synthetic */ void lambda$getRxPktFates$14$WifiVendorHal(WifiNative.RxFateReport[] reportBufs, MutableBoolean ok, WifiStatus status, ArrayList fates) {
        if (ok(status)) {
            int i = 0;
            Iterator it = fates.iterator();
            while (it.hasNext()) {
                WifiDebugRxPacketFateReport fate = (WifiDebugRxPacketFateReport) it.next();
                if (i >= reportBufs.length) {
                    break;
                }
                byte code = halToFrameworkRxPktFate(fate.fate);
                long us = fate.frameInfo.driverTimestampUsec;
                byte type = halToFrameworkPktFateFrameType(fate.frameInfo.frameType);
                byte[] frame = NativeUtil.byteArrayFromArrayList(fate.frameInfo.frameContent);
                reportBufs[i] = new WifiNative.RxFateReport(code, us, type, frame);
                i++;
            }
            ok.value = true;
        }
    }

    public int startSendingOffloadedPacket(String ifaceName, int slot, byte[] srcMac, byte[] dstMac, byte[] packet, int protocol, int periodInMs) throws RemoteException {
        enter("slot=% periodInMs=%").c(slot).c(periodInMs).flush();
        ArrayList<Byte> data = NativeUtil.byteArrayToArrayList(packet);
        synchronized (sLock) {
            try {
                try {
                    IWifiStaIface iface = getStaIface(ifaceName);
                    if (iface == null) {
                        return -1;
                    }
                    try {
                        WifiStatus status = iface.startSendingKeepAlivePackets(slot, data, (short) protocol, srcMac, dstMac, periodInMs);
                        if (!ok(status)) {
                            return -1;
                        }
                        return 0;
                    } catch (RemoteException e) {
                        handleRemoteException(e);
                        return -1;
                    }
                } catch (Throwable th) {
                    e = th;
                    throw e;
                }
            } catch (Throwable th2) {
                e = th2;
                throw e;
            }
        }
    }

    public int stopSendingOffloadedPacket(String ifaceName, int slot) {
        enter("slot=%").c(slot).flush();
        synchronized (sLock) {
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return -1;
            }
            try {
                WifiStatus status = iface.stopSendingKeepAlivePackets(slot);
                if (!ok(status)) {
                    return -1;
                }
                return 0;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return -1;
            }
        }
    }

    public int startRssiMonitoring(String ifaceName, byte maxRssi, byte minRssi, WifiNative.WifiRssiEventHandler rssiEventHandler) {
        enter("maxRssi=% minRssi=%").c(maxRssi).c(minRssi).flush();
        if (maxRssi <= minRssi || rssiEventHandler == null) {
            return -1;
        }
        synchronized (sLock) {
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return -1;
            }
            try {
                iface.stopRssiMonitoring(sRssiMonCmdId);
                WifiStatus status = iface.startRssiMonitoring(sRssiMonCmdId, maxRssi, minRssi);
                if (!ok(status)) {
                    return -1;
                }
                this.mWifiRssiEventHandler = rssiEventHandler;
                return 0;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return -1;
            }
        }
    }

    public int stopRssiMonitoring(String ifaceName) {
        synchronized (sLock) {
            this.mWifiRssiEventHandler = null;
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return -1;
            }
            try {
                WifiStatus status = iface.stopRssiMonitoring(sRssiMonCmdId);
                if (!ok(status)) {
                    return -1;
                }
                return 0;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return -1;
            }
        }
    }

    private static int[] intsFromArrayList(ArrayList<Integer> a) {
        if (a == null) {
            return null;
        }
        int[] b = new int[a.size()];
        int i = 0;
        for (Integer e : a) {
            b[i] = e.intValue();
            i++;
        }
        return b;
    }

    private static WlanWakeReasonAndCounts halToFrameworkWakeReasons(WifiDebugHostWakeReasonStats h) {
        if (h == null) {
            return null;
        }
        WlanWakeReasonAndCounts ans = new WlanWakeReasonAndCounts();
        ans.totalCmdEventWake = h.totalCmdEventWakeCnt;
        ans.totalDriverFwLocalWake = h.totalDriverFwLocalWakeCnt;
        ans.totalRxDataWake = h.totalRxPacketWakeCnt;
        ans.rxUnicast = h.rxPktWakeDetails.rxUnicastCnt;
        ans.rxMulticast = h.rxPktWakeDetails.rxMulticastCnt;
        ans.rxBroadcast = h.rxPktWakeDetails.rxBroadcastCnt;
        ans.icmp = h.rxIcmpPkWakeDetails.icmpPkt;
        ans.icmp6 = h.rxIcmpPkWakeDetails.icmp6Pkt;
        ans.icmp6Ra = h.rxIcmpPkWakeDetails.icmp6Ra;
        ans.icmp6Na = h.rxIcmpPkWakeDetails.icmp6Na;
        ans.icmp6Ns = h.rxIcmpPkWakeDetails.icmp6Ns;
        ans.ipv4RxMulticast = h.rxMulticastPkWakeDetails.ipv4RxMulticastAddrCnt;
        ans.ipv6Multicast = h.rxMulticastPkWakeDetails.ipv6RxMulticastAddrCnt;
        ans.otherRxMulticast = h.rxMulticastPkWakeDetails.otherRxMulticastAddrCnt;
        ans.cmdEventWakeCntArray = intsFromArrayList(h.cmdEventWakeCntPerType);
        ans.driverFWLocalWakeCntArray = intsFromArrayList(h.driverFwLocalWakeCntPerType);
        return ans;
    }

    /* JADX INFO: renamed from: com.android.server.wifi.WifiVendorHal$9AnswerBox, reason: invalid class name */
    class C9AnswerBox {
        public WifiDebugHostWakeReasonStats value = null;

        C9AnswerBox() {
        }
    }

    public WlanWakeReasonAndCounts getWlanWakeReasonCount() {
        final C9AnswerBox ans = new C9AnswerBox();
        synchronized (sLock) {
            if (this.mIWifiChip == null) {
                return null;
            }
            try {
                this.mIWifiChip.getDebugHostWakeReasonStats(new IWifiChip.getDebugHostWakeReasonStatsCallback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$4M4uW04Mmx55Iw-4K25_Ct6r-vI
                    @Override // android.hardware.wifi.V1_0.IWifiChip.getDebugHostWakeReasonStatsCallback
                    public final void onValues(WifiStatus wifiStatus, WifiDebugHostWakeReasonStats wifiDebugHostWakeReasonStats) {
                        this.f$0.lambda$getWlanWakeReasonCount$15$WifiVendorHal(ans, wifiStatus, wifiDebugHostWakeReasonStats);
                    }
                });
                return halToFrameworkWakeReasons(ans.value);
            } catch (RemoteException e) {
                handleRemoteException(e);
                return null;
            }
        }
    }

    public /* synthetic */ void lambda$getWlanWakeReasonCount$15$WifiVendorHal(C9AnswerBox ans, WifiStatus status, WifiDebugHostWakeReasonStats stats) {
        if (ok(status)) {
            ans.value = stats;
        }
    }

    public boolean configureNeighborDiscoveryOffload(String ifaceName, boolean enabled) {
        enter("enabled=%").c(enabled).flush();
        synchronized (sLock) {
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return boolResult(false);
            }
            try {
                WifiStatus status = iface.enableNdOffload(enabled);
                if (!ok(status)) {
                    return false;
                }
                return true;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            }
        }
    }

    public boolean getRoamingCapabilities(String ifaceName, final WifiNative.RoamingCapabilities capabilities) {
        synchronized (sLock) {
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return boolResult(false);
            }
            try {
                final MutableBoolean ok = new MutableBoolean(false);
                iface.getRoamingCapabilities(new IWifiStaIface.getRoamingCapabilitiesCallback() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$rxCjKAj6M7R-0PzNwiuTAmPm5RQ
                    @Override // android.hardware.wifi.V1_0.IWifiStaIface.getRoamingCapabilitiesCallback
                    public final void onValues(WifiStatus wifiStatus, StaRoamingCapabilities staRoamingCapabilities) {
                        this.f$0.lambda$getRoamingCapabilities$16$WifiVendorHal(capabilities, ok, wifiStatus, staRoamingCapabilities);
                    }
                });
                return ok.value;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            }
        }
    }

    public /* synthetic */ void lambda$getRoamingCapabilities$16$WifiVendorHal(WifiNative.RoamingCapabilities out, MutableBoolean ok, WifiStatus status, StaRoamingCapabilities cap) {
        if (ok(status)) {
            out.maxBlacklistSize = cap.maxBlacklistSize;
            out.maxWhitelistSize = cap.maxWhitelistSize;
            ok.value = true;
        }
    }

    public int enableFirmwareRoaming(String ifaceName, int state) {
        byte val;
        synchronized (sLock) {
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return 1;
            }
            try {
                if (state != 0) {
                    if (state == 1) {
                        val = 1;
                    } else {
                        this.mLog.err("enableFirmwareRoaming invalid argument %").c(state).flush();
                        return 1;
                    }
                } else {
                    val = 0;
                }
                WifiStatus status = iface.setRoamingState(val);
                if (ok(status)) {
                    return 0;
                }
                if (status.code != 8) {
                    return 1;
                }
                return 2;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return 1;
            }
        }
    }

    public boolean configureRoaming(String ifaceName, WifiNative.RoamingConfig config) {
        synchronized (sLock) {
            IWifiStaIface iface = getStaIface(ifaceName);
            if (iface == null) {
                return boolResult(false);
            }
            try {
                StaRoamingConfig roamingConfig = new StaRoamingConfig();
                if (config.blacklistBssids != null) {
                    for (String bssid : config.blacklistBssids) {
                        byte[] mac = NativeUtil.macAddressToByteArray(bssid);
                        roamingConfig.bssidBlacklist.add(mac);
                    }
                }
                if (config.whitelistSsids != null) {
                    for (String ssidStr : config.whitelistSsids) {
                        byte[] ssid = NativeUtil.byteArrayFromArrayList(NativeUtil.decodeSsid(ssidStr));
                        roamingConfig.ssidWhitelist.add(ssid);
                    }
                }
                WifiStatus status = iface.configureRoaming(roamingConfig);
                if (!ok(status)) {
                    return false;
                }
                return true;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            } catch (IllegalArgumentException e2) {
                this.mLog.err("Illegal argument for roaming configuration").c(e2.toString()).flush();
                return false;
            }
        }
    }

    protected android.hardware.wifi.V1_1.IWifiChip getWifiChipForV1_1Mockable() {
        IWifiChip iWifiChip = this.mIWifiChip;
        if (iWifiChip == null) {
            return null;
        }
        return android.hardware.wifi.V1_1.IWifiChip.castFrom((IHwInterface) iWifiChip);
    }

    protected android.hardware.wifi.V1_2.IWifiChip getWifiChipForV1_2Mockable() {
        IWifiChip iWifiChip = this.mIWifiChip;
        if (iWifiChip == null) {
            return null;
        }
        return android.hardware.wifi.V1_2.IWifiChip.castFrom((IHwInterface) iWifiChip);
    }

    protected android.hardware.wifi.V1_3.IWifiChip getWifiChipForV1_3Mockable() {
        IWifiChip iWifiChip = this.mIWifiChip;
        if (iWifiChip == null) {
            return null;
        }
        return android.hardware.wifi.V1_3.IWifiChip.castFrom((IHwInterface) iWifiChip);
    }

    protected android.hardware.wifi.V1_2.IWifiStaIface getWifiStaIfaceForV1_2Mockable(String ifaceName) {
        IWifiStaIface iface = getStaIface(ifaceName);
        if (iface == null) {
            return null;
        }
        return android.hardware.wifi.V1_2.IWifiStaIface.castFrom((IHwInterface) iface);
    }

    protected android.hardware.wifi.V1_3.IWifiStaIface getWifiStaIfaceForV1_3Mockable(String ifaceName) {
        IWifiStaIface iface = getStaIface(ifaceName);
        if (iface == null) {
            return null;
        }
        return android.hardware.wifi.V1_3.IWifiStaIface.castFrom((IHwInterface) iface);
    }

    private boolean sarPowerBackoffRequired_1_1(SarInfo sarInfo) {
        if (sarInfo.sarVoiceCallSupported) {
            return sarInfo.isVoiceCall || sarInfo.isEarPieceActive;
        }
        return false;
    }

    private int frameworkToHalTxPowerScenario_1_1(SarInfo sarInfo) {
        if (sarInfo.sarVoiceCallSupported && (sarInfo.isVoiceCall || sarInfo.isEarPieceActive)) {
            return 0;
        }
        throw new IllegalArgumentException("bad scenario: voice call not active/supported");
    }

    private boolean sarPowerBackoffRequired_1_2(SarInfo sarInfo) {
        if (sarInfo.sarSensorSupported) {
            return sarInfo.sensorState != 1;
        }
        if (sarInfo.sarSapSupported && sarInfo.isWifiSapEnabled) {
            return true;
        }
        return sarInfo.sarVoiceCallSupported && (sarInfo.isVoiceCall || sarInfo.isEarPieceActive);
    }

    private int frameworkToHalTxPowerScenario_1_2(SarInfo sarInfo) {
        if (sarInfo.sarSensorSupported) {
            int i = sarInfo.sensorState;
            if (i != 2) {
                if (i == 3) {
                    return (sarInfo.isVoiceCall || sarInfo.isWifiSapEnabled) ? 2 : 1;
                }
                if (i != 4) {
                    throw new IllegalArgumentException("bad scenario: Invalid sensor state");
                }
            }
            return (sarInfo.isVoiceCall || sarInfo.isWifiSapEnabled) ? 4 : 3;
        }
        if (sarInfo.sarSapSupported && sarInfo.sarVoiceCallSupported) {
            if (sarInfo.isVoiceCall || sarInfo.isEarPieceActive) {
                return 2;
            }
            if (sarInfo.isWifiSapEnabled) {
                return 4;
            }
            throw new IllegalArgumentException("bad scenario: no voice call/softAP active");
        }
        if (sarInfo.sarVoiceCallSupported) {
            if (sarInfo.isVoiceCall || sarInfo.isEarPieceActive) {
                return 0;
            }
            throw new IllegalArgumentException("bad scenario: voice call not active");
        }
        throw new IllegalArgumentException("Invalid case: voice call not supported");
    }

    public boolean selectTxPowerScenario(SarInfo sarInfo) {
        synchronized (sLock) {
            android.hardware.wifi.V1_2.IWifiChip iWifiChipV12 = getWifiChipForV1_2Mockable();
            if (iWifiChipV12 != null) {
                return selectTxPowerScenario_1_2(iWifiChipV12, sarInfo);
            }
            android.hardware.wifi.V1_1.IWifiChip iWifiChipV11 = getWifiChipForV1_1Mockable();
            if (iWifiChipV11 != null) {
                return selectTxPowerScenario_1_1(iWifiChipV11, sarInfo);
            }
            return false;
        }
    }

    private boolean selectTxPowerScenario_1_1(android.hardware.wifi.V1_1.IWifiChip iWifiChip, SarInfo sarInfo) {
        try {
            if (sarPowerBackoffRequired_1_1(sarInfo)) {
                int halScenario = frameworkToHalTxPowerScenario_1_1(sarInfo);
                if (!sarInfo.setSarScenarioNeeded(halScenario)) {
                    return true;
                }
                WifiStatus status = iWifiChip.selectTxPowerScenario(halScenario);
                if (ok(status)) {
                    this.mLog.d("Setting SAR scenario to " + halScenario);
                    return true;
                }
                this.mLog.e("Failed to set SAR scenario to " + halScenario);
                return false;
            }
            if (!sarInfo.resetSarScenarioNeeded()) {
                return true;
            }
            WifiStatus status2 = iWifiChip.resetTxPowerScenario();
            if (ok(status2)) {
                this.mLog.d("Resetting SAR scenario");
                return true;
            }
            this.mLog.e("Failed to reset SAR scenario");
            return false;
        } catch (RemoteException e) {
            handleRemoteException(e);
            return false;
        } catch (IllegalArgumentException e2) {
            this.mLog.err("Illegal argument for selectTxPowerScenario_1_1()").c(e2.toString()).flush();
            return false;
        }
    }

    private boolean selectTxPowerScenario_1_2(android.hardware.wifi.V1_2.IWifiChip iWifiChip, SarInfo sarInfo) {
        try {
            if (sarPowerBackoffRequired_1_2(sarInfo)) {
                int halScenario = frameworkToHalTxPowerScenario_1_2(sarInfo);
                if (!sarInfo.setSarScenarioNeeded(halScenario)) {
                    return true;
                }
                WifiStatus status = iWifiChip.selectTxPowerScenario_1_2(halScenario);
                if (ok(status)) {
                    this.mLog.d("Setting SAR scenario to " + halScenario);
                    return true;
                }
                this.mLog.e("Failed to set SAR scenario to " + halScenario);
                return false;
            }
            if (!sarInfo.resetSarScenarioNeeded()) {
                return true;
            }
            WifiStatus status2 = iWifiChip.resetTxPowerScenario();
            if (ok(status2)) {
                this.mLog.d("Resetting SAR scenario");
                return true;
            }
            this.mLog.e("Failed to reset SAR scenario");
            return false;
        } catch (RemoteException e) {
            handleRemoteException(e);
            return false;
        } catch (IllegalArgumentException e2) {
            this.mLog.err("Illegal argument for selectTxPowerScenario_1_2()").c(e2.toString()).flush();
            return false;
        }
    }

    public boolean setLowLatencyMode(boolean enabled) {
        int mode;
        synchronized (sLock) {
            android.hardware.wifi.V1_3.IWifiChip iWifiChipV13 = getWifiChipForV1_3Mockable();
            if (iWifiChipV13 == null) {
                return false;
            }
            if (enabled) {
                mode = 1;
            } else {
                mode = 0;
            }
            try {
                WifiStatus status = iWifiChipV13.setLatencyMode(mode);
                if (ok(status)) {
                    this.mVerboseLog.d("Setting low-latency mode to " + enabled);
                    return true;
                }
                this.mLog.e("Failed to set low-latency mode to " + enabled);
                return false;
            } catch (RemoteException e) {
                handleRemoteException(e);
                return false;
            }
        }
    }

    private static byte[] hidlIeArrayToFrameworkIeBlob(ArrayList<WifiInformationElement> ies) {
        if (ies == null || ies.isEmpty()) {
            return new byte[0];
        }
        ArrayList<Byte> ieBlob = new ArrayList<>();
        for (WifiInformationElement ie : ies) {
            ieBlob.add(Byte.valueOf(ie.id));
            ieBlob.addAll(ie.data);
        }
        return NativeUtil.byteArrayFromArrayList(ieBlob);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ScanResult hidlToFrameworkScanResult(StaScanResult scanResult) {
        if (scanResult == null) {
            return null;
        }
        ScanResult frameworkScanResult = new ScanResult();
        frameworkScanResult.SSID = NativeUtil.encodeSsid(scanResult.ssid);
        frameworkScanResult.wifiSsid = WifiSsid.createFromByteArray(NativeUtil.byteArrayFromArrayList(scanResult.ssid));
        frameworkScanResult.BSSID = NativeUtil.macAddressFromByteArray(scanResult.bssid);
        frameworkScanResult.level = scanResult.rssi;
        frameworkScanResult.frequency = scanResult.frequency;
        frameworkScanResult.timestamp = scanResult.timeStampInUs;
        return frameworkScanResult;
    }

    private static ScanResult[] hidlToFrameworkScanResults(ArrayList<StaScanResult> scanResults) {
        if (scanResults == null || scanResults.isEmpty()) {
            return new ScanResult[0];
        }
        ScanResult[] frameworkScanResults = new ScanResult[scanResults.size()];
        int i = 0;
        for (StaScanResult scanResult : scanResults) {
            frameworkScanResults[i] = hidlToFrameworkScanResult(scanResult);
            i++;
        }
        return frameworkScanResults;
    }

    private static int hidlToFrameworkScanDataFlags(int flag) {
        if (flag == 1) {
            return 1;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static WifiScanner.ScanData[] hidlToFrameworkScanDatas(int cmdId, ArrayList<StaScanData> scanDatas) {
        if (scanDatas == null || scanDatas.isEmpty()) {
            return new WifiScanner.ScanData[0];
        }
        WifiScanner.ScanData[] frameworkScanDatas = new WifiScanner.ScanData[scanDatas.size()];
        int i = 0;
        for (StaScanData scanData : scanDatas) {
            int flags = hidlToFrameworkScanDataFlags(scanData.flags);
            ScanResult[] frameworkScanResults = hidlToFrameworkScanResults(scanData.results);
            frameworkScanDatas[i] = new WifiScanner.ScanData(cmdId, flags, scanData.bucketsScanned, 0, frameworkScanResults);
            i++;
        }
        return frameworkScanDatas;
    }

    private class StaIfaceEventCallback extends IWifiStaIfaceEventCallback.Stub {
        private StaIfaceEventCallback() {
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIfaceEventCallback
        public void onBackgroundScanFailure(int cmdId) {
            WifiVendorHal.this.mVerboseLog.d("onBackgroundScanFailure " + cmdId);
            synchronized (WifiVendorHal.sLock) {
                if (WifiVendorHal.this.mScan != null && cmdId == WifiVendorHal.this.mScan.cmdId) {
                    WifiNative.ScanEventHandler eventHandler = WifiVendorHal.this.mScan.eventHandler;
                    eventHandler.onScanStatus(3);
                }
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIfaceEventCallback
        public void onBackgroundFullScanResult(int cmdId, int bucketsScanned, StaScanResult result) {
            WifiVendorHal.this.mVerboseLog.d("onBackgroundFullScanResult " + cmdId);
            synchronized (WifiVendorHal.sLock) {
                if (WifiVendorHal.this.mScan != null && cmdId == WifiVendorHal.this.mScan.cmdId) {
                    WifiNative.ScanEventHandler eventHandler = WifiVendorHal.this.mScan.eventHandler;
                    eventHandler.onFullScanResult(WifiVendorHal.hidlToFrameworkScanResult(result), bucketsScanned);
                }
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIfaceEventCallback
        public void onBackgroundScanResults(int cmdId, ArrayList<StaScanData> scanDatas) {
            WifiVendorHal.this.mVerboseLog.d("onBackgroundScanResults " + cmdId);
            synchronized (WifiVendorHal.sLock) {
                if (WifiVendorHal.this.mScan != null && cmdId == WifiVendorHal.this.mScan.cmdId) {
                    WifiNative.ScanEventHandler eventHandler = WifiVendorHal.this.mScan.eventHandler;
                    WifiVendorHal.this.mScan.latestScanResults = WifiVendorHal.hidlToFrameworkScanDatas(cmdId, scanDatas);
                    eventHandler.onScanStatus(0);
                }
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIfaceEventCallback
        public void onRssiThresholdBreached(int cmdId, byte[] currBssid, int currRssi) {
            WifiVendorHal.this.mVerboseLog.d("onRssiThresholdBreached " + cmdId + "currRssi " + currRssi);
            synchronized (WifiVendorHal.sLock) {
                if (WifiVendorHal.this.mWifiRssiEventHandler != null && cmdId == WifiVendorHal.sRssiMonCmdId) {
                    WifiNative.WifiRssiEventHandler eventHandler = WifiVendorHal.this.mWifiRssiEventHandler;
                    eventHandler.onRssiThresholdBreached((byte) currRssi);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ChipEventCallback extends IWifiChipEventCallback.Stub {
        private ChipEventCallback() {
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onChipReconfigured(int modeId) {
            WifiVendorHal.this.mVerboseLog.d("onChipReconfigured " + modeId);
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onChipReconfigureFailure(WifiStatus status) {
            WifiVendorHal.this.mVerboseLog.d("onChipReconfigureFailure " + status);
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onIfaceAdded(int type, String name) {
            WifiVendorHal.this.mVerboseLog.d("onIfaceAdded " + type + ", name: " + name);
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onIfaceRemoved(int type, String name) {
            WifiVendorHal.this.mVerboseLog.d("onIfaceRemoved " + type + ", name: " + name);
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onDebugRingBufferDataAvailable(final WifiDebugRingBufferStatus status, final ArrayList<Byte> data) {
            WifiVendorHal.this.mHalEventHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$ChipEventCallback$AqzJie2OoFIziDRxaXrZoSkKfNw
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onDebugRingBufferDataAvailable$0$WifiVendorHal$ChipEventCallback(status, data);
                }
            });
        }

        public /* synthetic */ void lambda$onDebugRingBufferDataAvailable$0$WifiVendorHal$ChipEventCallback(WifiDebugRingBufferStatus status, ArrayList data) {
            synchronized (WifiVendorHal.sLock) {
                if (WifiVendorHal.this.mLogEventHandler != null && status != null && data != null) {
                    WifiNative.WifiLoggerEventHandler eventHandler = WifiVendorHal.this.mLogEventHandler;
                    int sizeBefore = data.size();
                    boolean conversionFailure = false;
                    try {
                        eventHandler.onRingBufferData(WifiVendorHal.ringBufferStatus(status), NativeUtil.byteArrayFromArrayList(data));
                        int sizeAfter = data.size();
                        if (sizeAfter != sizeBefore) {
                            conversionFailure = true;
                        }
                    } catch (ArrayIndexOutOfBoundsException e) {
                        conversionFailure = true;
                    }
                    if (conversionFailure) {
                        Log.wtf("WifiVendorHal", "Conversion failure detected in onDebugRingBufferDataAvailable. The input ArrayList |data| is potentially corrupted. Starting size=" + sizeBefore + ", final size=" + data.size());
                    }
                }
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onDebugErrorAlert(final int errorCode, final ArrayList<Byte> debugData) {
            WifiVendorHal.this.mLog.w("onDebugErrorAlert " + errorCode);
            WifiVendorHal.this.mHalEventHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$ChipEventCallback$opFP1g0mCa0rIEtg63LvzlqySHc
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onDebugErrorAlert$1$WifiVendorHal$ChipEventCallback(debugData, errorCode);
                }
            });
        }

        public /* synthetic */ void lambda$onDebugErrorAlert$1$WifiVendorHal$ChipEventCallback(ArrayList debugData, int errorCode) {
            synchronized (WifiVendorHal.sLock) {
                if (WifiVendorHal.this.mLogEventHandler != null && debugData != null) {
                    WifiNative.WifiLoggerEventHandler eventHandler = WifiVendorHal.this.mLogEventHandler;
                    eventHandler.onWifiAlert(errorCode, NativeUtil.byteArrayFromArrayList(debugData));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ChipEventCallbackV12 extends android.hardware.wifi.V1_2.IWifiChipEventCallback.Stub {
        private ChipEventCallbackV12() {
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onChipReconfigured(int modeId) {
            WifiVendorHal.this.mIWifiChipEventCallback.onChipReconfigured(modeId);
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onChipReconfigureFailure(WifiStatus status) {
            WifiVendorHal.this.mIWifiChipEventCallback.onChipReconfigureFailure(status);
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onIfaceAdded(int type, String name) {
            WifiVendorHal.this.mIWifiChipEventCallback.onIfaceAdded(type, name);
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onIfaceRemoved(int type, String name) {
            WifiVendorHal.this.mIWifiChipEventCallback.onIfaceRemoved(type, name);
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onDebugRingBufferDataAvailable(WifiDebugRingBufferStatus status, ArrayList<Byte> data) {
            WifiVendorHal.this.mIWifiChipEventCallback.onDebugRingBufferDataAvailable(status, data);
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onDebugErrorAlert(int errorCode, ArrayList<Byte> debugData) {
            WifiVendorHal.this.mIWifiChipEventCallback.onDebugErrorAlert(errorCode, debugData);
        }

        private boolean areSameIfaceNames(List<android.hardware.wifi.V1_2.IWifiChipEventCallback.IfaceInfo> ifaceList1, List<android.hardware.wifi.V1_2.IWifiChipEventCallback.IfaceInfo> ifaceList2) {
            List<String> ifaceNamesList1 = (List) ifaceList1.stream().map(new Function() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$ChipEventCallbackV12$SrMSOw3LUVF_Z64G_aL0Tguwt3A
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((android.hardware.wifi.V1_2.IWifiChipEventCallback.IfaceInfo) obj).name;
                }
            }).collect(Collectors.toList());
            List<String> ifaceNamesList2 = (List) ifaceList2.stream().map(new Function() { // from class: com.android.server.wifi.-$$Lambda$WifiVendorHal$ChipEventCallbackV12$nAuRYe8SQ_MJ2XaULMZNtUE0izo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((android.hardware.wifi.V1_2.IWifiChipEventCallback.IfaceInfo) obj).name;
                }
            }).collect(Collectors.toList());
            return ifaceNamesList1.containsAll(ifaceNamesList2);
        }

        private boolean areSameIfaces(List<android.hardware.wifi.V1_2.IWifiChipEventCallback.IfaceInfo> ifaceList1, List<android.hardware.wifi.V1_2.IWifiChipEventCallback.IfaceInfo> ifaceList2) {
            return ifaceList1.containsAll(ifaceList2);
        }

        @Override // android.hardware.wifi.V1_2.IWifiChipEventCallback
        public void onRadioModeChange(ArrayList<android.hardware.wifi.V1_2.IWifiChipEventCallback.RadioModeInfo> radioModeInfoList) {
            WifiVendorHal.this.mVerboseLog.d("onRadioModeChange " + radioModeInfoList);
            synchronized (WifiVendorHal.sLock) {
                if (WifiVendorHal.this.mRadioModeChangeEventHandler != null && radioModeInfoList != null) {
                    WifiNative.VendorHalRadioModeChangeEventHandler handler = WifiVendorHal.this.mRadioModeChangeEventHandler;
                    if (radioModeInfoList.size() == 0 || radioModeInfoList.size() > 2) {
                        WifiVendorHal.this.mLog.e("Unexpected number of radio info in list " + radioModeInfoList.size());
                        return;
                    }
                    android.hardware.wifi.V1_2.IWifiChipEventCallback.RadioModeInfo radioModeInfo0 = radioModeInfoList.get(0);
                    android.hardware.wifi.V1_2.IWifiChipEventCallback.RadioModeInfo radioModeInfo1 = radioModeInfoList.size() == 2 ? radioModeInfoList.get(1) : null;
                    if (radioModeInfo1 != null && radioModeInfo0.ifaceInfos.size() != radioModeInfo1.ifaceInfos.size()) {
                        WifiVendorHal.this.mLog.e("Unexpected number of iface info in list " + radioModeInfo0.ifaceInfos.size() + ", " + radioModeInfo1.ifaceInfos.size());
                        return;
                    }
                    int numIfacesOnEachRadio = radioModeInfo0.ifaceInfos.size();
                    if (numIfacesOnEachRadio == 0 || numIfacesOnEachRadio > 2) {
                        WifiVendorHal.this.mLog.e("Unexpected number of iface info in list " + numIfacesOnEachRadio);
                        return;
                    }
                    if (radioModeInfoList.size() == 2 && numIfacesOnEachRadio == 1) {
                        if (areSameIfaceNames(radioModeInfo0.ifaceInfos, radioModeInfo1.ifaceInfos)) {
                            WifiVendorHal.this.mLog.e("Unexpected for both radio infos to have same iface");
                            return;
                        } else if (radioModeInfo0.bandInfo != radioModeInfo1.bandInfo) {
                            handler.onDbs();
                            return;
                        } else {
                            handler.onSbs(radioModeInfo0.bandInfo);
                            return;
                        }
                    }
                    if (radioModeInfoList.size() == 1 && numIfacesOnEachRadio == 2) {
                        android.hardware.wifi.V1_2.IWifiChipEventCallback.IfaceInfo ifaceInfo0 = radioModeInfo0.ifaceInfos.get(0);
                        android.hardware.wifi.V1_2.IWifiChipEventCallback.IfaceInfo ifaceInfo1 = radioModeInfo0.ifaceInfos.get(1);
                        if (ifaceInfo0.channel != ifaceInfo1.channel) {
                            handler.onMcc(radioModeInfo0.bandInfo);
                        } else {
                            handler.onScc(radioModeInfo0.bandInfo);
                        }
                    }
                }
            }
        }
    }

    public class HalDeviceManagerStatusListener implements HalDeviceManager.ManagerStatusListener {
        public HalDeviceManagerStatusListener() {
        }

        @Override // com.android.server.wifi.HalDeviceManager.ManagerStatusListener
        public void onStatusChanged() {
            WifiNative.VendorHalDeathEventHandler handler;
            boolean isReady = WifiVendorHal.this.mHalDeviceManager.isReady();
            boolean isStarted = WifiVendorHal.this.mHalDeviceManager.isStarted();
            WifiVendorHal.this.mVerboseLog.i("Device Manager onStatusChanged. isReady(): " + isReady + ", isStarted(): " + isStarted);
            if (!isReady) {
                synchronized (WifiVendorHal.sLock) {
                    WifiVendorHal.this.clearState();
                    handler = WifiVendorHal.this.mDeathEventHandler;
                }
                if (handler != null) {
                    handler.onDeath();
                }
            }
        }
    }
}
