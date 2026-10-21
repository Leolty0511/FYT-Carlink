package com.android.server.wifi;

import android.app.AlarmManager;
import android.net.wifi.IApInterface;
import android.net.wifi.IApInterfaceEventCallback;
import android.net.wifi.IClientInterface;
import android.net.wifi.IPnoScanEvent;
import android.net.wifi.IScanEvent;
import android.net.wifi.ISendMgmtFrameEvent;
import android.net.wifi.IWifiScannerImpl;
import android.net.wifi.IWificond;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiSsid;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.android.server.wifi.hotspot2.NetworkDetail;
import com.android.server.wifi.util.InformationElementUtil;
import com.android.server.wifi.util.NativeUtil;
import com.android.server.wifi.util.ScanResultUtil;
import com.android.server.wifi.wificond.ChannelSettings;
import com.android.server.wifi.wificond.HiddenNetwork;
import com.android.server.wifi.wificond.NativeScanResult;
import com.android.server.wifi.wificond.PnoNetwork;
import com.android.server.wifi.wificond.PnoSettings;
import com.android.server.wifi.wificond.RadioChainInfo;
import com.android.server.wifi.wificond.SingleScanSettings;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class WificondControl implements IBinder.DeathRecipient {
    public static final int SCAN_TYPE_PNO_SCAN = 1;
    public static final int SCAN_TYPE_SINGLE_SCAN = 0;
    public static final int SEND_MGMT_FRAME_TIMEOUT_MS = 1000;
    private static final String TAG = "WificondControl";
    private static final String TIMEOUT_ALARM_TAG = "WificondControl Send Management Frame Timeout";
    private AlarmManager mAlarmManager;
    private final CarrierNetworkConfig mCarrierNetworkConfig;
    private Clock mClock;
    private WifiNative.WificondDeathEventHandler mDeathEventHandler;
    private Handler mEventHandler;
    private boolean mIsEnhancedOpenSupported;
    private WifiInjector mWifiInjector;
    private WifiMonitor mWifiMonitor;
    private IWificond mWificond;
    private static final Object mLock = new Object();
    private static HashMap<String, String> mGbkSsids = new HashMap<>();
    private boolean mVerboseLoggingEnabled = false;
    private WifiNative mWifiNative = null;
    private HashMap<String, IClientInterface> mClientInterfaces = new HashMap<>();
    private HashMap<String, IApInterface> mApInterfaces = new HashMap<>();
    private HashMap<String, IWifiScannerImpl> mWificondScanners = new HashMap<>();
    private HashMap<String, IScanEvent> mScanEventHandlers = new HashMap<>();
    private HashMap<String, IPnoScanEvent> mPnoScanEventHandlers = new HashMap<>();
    private HashMap<String, IApInterfaceEventCallback> mApInterfaceListeners = new HashMap<>();
    private AtomicBoolean mSendMgmtFrameInProgress = new AtomicBoolean(false);
    private boolean mIsEnhancedOpenSupportedInitialized = false;

    private class ScanEventHandler extends IScanEvent.Stub {
        private String mIfaceName;

        ScanEventHandler(String ifaceName) {
            this.mIfaceName = ifaceName;
        }

        @Override // android.net.wifi.IScanEvent
        public void OnScanResultReady() {
            Log.d(WificondControl.TAG, "Scan result ready event");
            WificondControl.this.mWifiMonitor.broadcastScanResultEvent(this.mIfaceName);
        }

        @Override // android.net.wifi.IScanEvent
        public void OnScanFailed() {
            Log.d(WificondControl.TAG, "Scan failed event");
            WificondControl.this.mWifiMonitor.broadcastScanFailedEvent(this.mIfaceName);
        }
    }

    WificondControl(WifiInjector wifiInjector, WifiMonitor wifiMonitor, CarrierNetworkConfig carrierNetworkConfig, AlarmManager alarmManager, Looper looper, Clock clock) {
        this.mWifiInjector = wifiInjector;
        this.mWifiMonitor = wifiMonitor;
        this.mCarrierNetworkConfig = carrierNetworkConfig;
        this.mAlarmManager = alarmManager;
        this.mEventHandler = new Handler(looper);
        this.mClock = clock;
    }

    private class PnoScanEventHandler extends IPnoScanEvent.Stub {
        private String mIfaceName;

        PnoScanEventHandler(String ifaceName) {
            this.mIfaceName = ifaceName;
        }

        @Override // android.net.wifi.IPnoScanEvent
        public void OnPnoNetworkFound() {
            Log.d(WificondControl.TAG, "Pno scan result event");
            WificondControl.this.mWifiMonitor.broadcastPnoScanResultEvent(this.mIfaceName);
            WificondControl.this.mWifiInjector.getWifiMetrics().incrementPnoFoundNetworkEventCount();
        }

        @Override // android.net.wifi.IPnoScanEvent
        public void OnPnoScanFailed() {
            Log.d(WificondControl.TAG, "Pno Scan failed event");
            WificondControl.this.mWifiInjector.getWifiMetrics().incrementPnoScanFailedCount();
        }

        @Override // android.net.wifi.IPnoScanEvent
        public void OnPnoScanOverOffloadStarted() {
            Log.d(WificondControl.TAG, "Pno scan over offload started");
            WificondControl.this.mWifiInjector.getWifiMetrics().incrementPnoScanStartedOverOffloadCount();
        }

        @Override // android.net.wifi.IPnoScanEvent
        public void OnPnoScanOverOffloadFailed(int reason) {
            Log.d(WificondControl.TAG, "Pno scan over offload failed");
            WificondControl.this.mWifiInjector.getWifiMetrics().incrementPnoScanFailedOverOffloadCount();
        }
    }

    private class ApInterfaceEventCallback extends IApInterfaceEventCallback.Stub {
        private WifiNative.SoftApListener mSoftApListener;

        ApInterfaceEventCallback(WifiNative.SoftApListener listener) {
            this.mSoftApListener = listener;
        }

        @Override // android.net.wifi.IApInterfaceEventCallback
        public void onNumAssociatedStationsChanged(int numStations) {
            this.mSoftApListener.onNumAssociatedStationsChanged(numStations);
        }

        @Override // android.net.wifi.IApInterfaceEventCallback
        public void onStationAssociated(String macAddress) {
            this.mSoftApListener.onStationAssociated(macAddress);
        }

        @Override // android.net.wifi.IApInterfaceEventCallback
        public void onStationDisassociated(String macAddress) {
            this.mSoftApListener.onStationDisassociated(macAddress);
        }

        @Override // android.net.wifi.IApInterfaceEventCallback
        public void onSoftApChannelSwitched(int frequency, int bandwidth) {
            this.mSoftApListener.onSoftApChannelSwitched(frequency, bandwidth);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class SendMgmtFrameEvent extends ISendMgmtFrameEvent.Stub {
        private WifiNative.SendMgmtFrameCallback mCallback;
        private AlarmManager.OnAlarmListener mTimeoutCallback = new AlarmManager.OnAlarmListener() { // from class: com.android.server.wifi.-$$Lambda$WificondControl$SendMgmtFrameEvent$0ZaQY9gmgOW2SXk-WJ_BHr5PVi0
            @Override // android.app.AlarmManager.OnAlarmListener
            public final void onAlarm() {
                this.f$0.lambda$new$1$WificondControl$SendMgmtFrameEvent();
            }
        };
        private boolean mWasCalled = false;

        private void runIfFirstCall(Runnable r) {
            if (this.mWasCalled) {
                return;
            }
            this.mWasCalled = true;
            WificondControl.this.mSendMgmtFrameInProgress.set(false);
            r.run();
        }

        SendMgmtFrameEvent(WifiNative.SendMgmtFrameCallback callback) {
            this.mCallback = callback;
            WificondControl.this.mAlarmManager.set(2, WificondControl.this.mClock.getElapsedSinceBootMillis() + 1000, WificondControl.TIMEOUT_ALARM_TAG, this.mTimeoutCallback, WificondControl.this.mEventHandler);
        }

        public /* synthetic */ void lambda$new$1$WificondControl$SendMgmtFrameEvent() {
            runIfFirstCall(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WificondControl$SendMgmtFrameEvent$xvN-P3Rexx7Q_NQvmNhEJKj3dA4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0$WificondControl$SendMgmtFrameEvent();
                }
            });
        }

        public /* synthetic */ void lambda$new$0$WificondControl$SendMgmtFrameEvent() {
            if (WificondControl.this.mVerboseLoggingEnabled) {
                Log.e(WificondControl.TAG, "Timed out waiting for ACK");
            }
            this.mCallback.onFailure(4);
        }

        @Override // android.net.wifi.ISendMgmtFrameEvent
        public void OnAck(final int elapsedTimeMs) {
            WificondControl.this.mEventHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WificondControl$SendMgmtFrameEvent$zKAN9hAiccyNxTwX86xvD8OUHXs
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$OnAck$3$WificondControl$SendMgmtFrameEvent(elapsedTimeMs);
                }
            });
        }

        public /* synthetic */ void lambda$OnAck$3$WificondControl$SendMgmtFrameEvent(final int elapsedTimeMs) {
            runIfFirstCall(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WificondControl$SendMgmtFrameEvent$njppCff6WHGw4sjxuIs78G2VvuY
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$OnAck$2$WificondControl$SendMgmtFrameEvent(elapsedTimeMs);
                }
            });
        }

        public /* synthetic */ void lambda$OnAck$2$WificondControl$SendMgmtFrameEvent(int elapsedTimeMs) {
            WificondControl.this.mAlarmManager.cancel(this.mTimeoutCallback);
            this.mCallback.onAck(elapsedTimeMs);
        }

        @Override // android.net.wifi.ISendMgmtFrameEvent
        public void OnFailure(final int reason) {
            WificondControl.this.mEventHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WificondControl$SendMgmtFrameEvent$xO03JbyeEIOU-bWWoePI0pbnZDE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$OnFailure$5$WificondControl$SendMgmtFrameEvent(reason);
                }
            });
        }

        public /* synthetic */ void lambda$OnFailure$5$WificondControl$SendMgmtFrameEvent(final int reason) {
            runIfFirstCall(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WificondControl$SendMgmtFrameEvent$uZOhaKQKXcR38NG28cTNk99nhZc
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$OnFailure$4$WificondControl$SendMgmtFrameEvent(reason);
                }
            });
        }

        public /* synthetic */ void lambda$OnFailure$4$WificondControl$SendMgmtFrameEvent(int reason) {
            WificondControl.this.mAlarmManager.cancel(this.mTimeoutCallback);
            this.mCallback.onFailure(reason);
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        this.mEventHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WificondControl$JpHuQX0ohyDoa8WT39rjqI0Ce_Q
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$binderDied$0$WificondControl();
            }
        });
    }

    public /* synthetic */ void lambda$binderDied$0$WificondControl() {
        Log.e(TAG, "Wificond died!");
        clearState();
        this.mWificond = null;
        WifiNative.WificondDeathEventHandler wificondDeathEventHandler = this.mDeathEventHandler;
        if (wificondDeathEventHandler != null) {
            wificondDeathEventHandler.onDeath();
        }
    }

    public void enableVerboseLogging(boolean enable) {
        this.mVerboseLoggingEnabled = enable;
    }

    public boolean initialize(WifiNative.WificondDeathEventHandler handler) {
        if (this.mDeathEventHandler != null) {
            Log.e(TAG, "Death handler already present");
        }
        this.mDeathEventHandler = handler;
        tearDownInterfaces();
        return true;
    }

    private boolean retrieveWificondAndRegisterForDeath() {
        if (this.mWificond != null) {
            if (this.mVerboseLoggingEnabled) {
                Log.d(TAG, "Wificond handle already retrieved");
            }
            return true;
        }
        this.mWificond = this.mWifiInjector.makeWificond();
        IWificond iWificond = this.mWificond;
        if (iWificond == null) {
            Log.e(TAG, "Failed to get reference to wificond");
            return false;
        }
        try {
            iWificond.asBinder().linkToDeath(this, 0);
            return true;
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to register death notification for wificond");
            return false;
        }
    }

    public IClientInterface setupInterfaceForClientMode(String ifaceName) {
        Log.d(TAG, "Setting up interface for client mode");
        if (!retrieveWificondAndRegisterForDeath()) {
            return null;
        }
        try {
            IClientInterface clientInterface = this.mWificond.createClientInterface(ifaceName);
            if (clientInterface == null) {
                Log.e(TAG, "Could not get IClientInterface instance from wificond");
                return null;
            }
            Binder.allowBlocking(clientInterface.asBinder());
            this.mClientInterfaces.put(ifaceName, clientInterface);
            try {
                IWifiScannerImpl wificondScanner = clientInterface.getWifiScannerImpl();
                if (wificondScanner == null) {
                    Log.e(TAG, "Failed to get WificondScannerImpl");
                    return null;
                }
                this.mWificondScanners.put(ifaceName, wificondScanner);
                Binder.allowBlocking(wificondScanner.asBinder());
                ScanEventHandler scanEventHandler = new ScanEventHandler(ifaceName);
                this.mScanEventHandlers.put(ifaceName, scanEventHandler);
                wificondScanner.subscribeScanEvents(scanEventHandler);
                PnoScanEventHandler pnoScanEventHandler = new PnoScanEventHandler(ifaceName);
                this.mPnoScanEventHandlers.put(ifaceName, pnoScanEventHandler);
                wificondScanner.subscribePnoScanEvents(pnoScanEventHandler);
                return clientInterface;
            } catch (RemoteException e) {
                Log.e(TAG, "Failed to refresh wificond scanner due to remote exception");
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to get IClientInterface due to remote exception");
            return null;
        }
    }

    public boolean tearDownClientInterface(String ifaceName) {
        if (getClientInterface(ifaceName) == null) {
            Log.e(TAG, "No valid wificond client interface handler");
            return false;
        }
        try {
            IWifiScannerImpl scannerImpl = this.mWificondScanners.get(ifaceName);
            if (scannerImpl != null) {
                scannerImpl.unsubscribeScanEvents();
                scannerImpl.unsubscribePnoScanEvents();
            }
            try {
                boolean success = this.mWificond.tearDownClientInterface(ifaceName);
                if (!success) {
                    Log.e(TAG, "Failed to teardown client interface");
                    return false;
                }
                this.mClientInterfaces.remove(ifaceName);
                this.mWificondScanners.remove(ifaceName);
                this.mScanEventHandlers.remove(ifaceName);
                this.mPnoScanEventHandlers.remove(ifaceName);
                return true;
            } catch (RemoteException e) {
                Log.e(TAG, "Failed to teardown client interface due to remote exception");
                return false;
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to unsubscribe wificond scanner due to remote exception");
            return false;
        }
    }

    public IApInterface setupInterfaceForSoftApMode(String ifaceName) {
        Log.d(TAG, "Setting up interface for soft ap mode");
        if (!retrieveWificondAndRegisterForDeath()) {
            return null;
        }
        try {
            IApInterface apInterface = this.mWificond.createApInterface(ifaceName);
            if (apInterface == null) {
                Log.e(TAG, "Could not get IApInterface instance from wificond");
                return null;
            }
            Binder.allowBlocking(apInterface.asBinder());
            this.mApInterfaces.put(ifaceName, apInterface);
            return apInterface;
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to get IApInterface due to remote exception");
            return null;
        }
    }

    public boolean tearDownSoftApInterface(String ifaceName) {
        if (getApInterface(ifaceName) == null) {
            Log.e(TAG, "No valid wificond ap interface handler");
            return false;
        }
        try {
            boolean success = this.mWificond.tearDownApInterface(ifaceName);
            if (!success) {
                Log.e(TAG, "Failed to teardown AP interface");
                return false;
            }
            this.mApInterfaces.remove(ifaceName);
            this.mApInterfaceListeners.remove(ifaceName);
            return true;
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to teardown AP interface due to remote exception");
            return false;
        }
    }

    public boolean tearDownInterfaces() {
        Log.d(TAG, "tearing down interfaces in wificond");
        if (!retrieveWificondAndRegisterForDeath()) {
            return false;
        }
        try {
            for (Map.Entry<String, IWifiScannerImpl> entry : this.mWificondScanners.entrySet()) {
                entry.getValue().unsubscribeScanEvents();
                entry.getValue().unsubscribePnoScanEvents();
            }
            this.mWificond.tearDownInterfaces();
            clearState();
            return true;
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to tear down interfaces due to remote exception");
            return false;
        }
    }

    private IClientInterface getClientInterface(String ifaceName) {
        return this.mClientInterfaces.get(ifaceName);
    }

    public WifiNative.SignalPollResult signalPoll(String ifaceName) {
        IClientInterface iface = getClientInterface(ifaceName);
        if (iface == null) {
            Log.e(TAG, "No valid wificond client interface handler");
            return null;
        }
        try {
            int[] resultArray = iface.signalPoll();
            if (resultArray == null || resultArray.length != 5) {
                Log.e(TAG, "Invalid signal poll result from wificond");
                return null;
            }
            WifiNative.SignalPollResult pollResult = new WifiNative.SignalPollResult();
            pollResult.currentRssi = resultArray[0];
            pollResult.txBitrate = resultArray[1];
            pollResult.associationFrequency = resultArray[2];
            pollResult.rxBitrate = resultArray[3];
            pollResult.noise = resultArray[4];
            return pollResult;
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to do signal polling due to remote exception");
            return null;
        }
    }

    public WifiNative.TxPacketCounters getTxPacketCounters(String ifaceName) {
        IClientInterface iface = getClientInterface(ifaceName);
        if (iface == null) {
            Log.e(TAG, "No valid wificond client interface handler");
            return null;
        }
        try {
            int[] resultArray = iface.getPacketCounters();
            if (resultArray == null || resultArray.length != 2) {
                Log.e(TAG, "Invalid signal poll result from wificond");
                return null;
            }
            WifiNative.TxPacketCounters counters = new WifiNative.TxPacketCounters();
            counters.txSucceeded = resultArray[0];
            counters.txFailed = resultArray[1];
            return counters;
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to do signal polling due to remote exception");
            return null;
        }
    }

    private IWifiScannerImpl getScannerImpl(String ifaceName) {
        return this.mWificondScanners.get(ifaceName);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x018b  */
    /* JADX WARN: Code duplicated, block: B:60:0x01bc A[Catch: all -> 0x01fa, TryCatch #2 {, blocks: (B:57:0x01ad, B:58:0x01b6, B:60:0x01bc, B:63:0x01ce, B:64:0x01d8, B:65:0x01f8), top: B:74:0x01ad }] */
    /* JADX WARN: Code duplicated, block: B:62:0x01cc A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:74:0x01ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x01d8 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:54:0x018b, please report this as an issue */
    public ArrayList<ScanDetail> getScanResults(String ifaceName, int scanType) throws RemoteException {
        NativeScanResult[] nativeResults;
        String gbkStr;
        ArrayList<ScanDetail> results = new ArrayList<>();
        ArrayList<WifiSsid> gbkWifiSsids = new ArrayList<>();
        IWifiScannerImpl scannerImpl = getScannerImpl(ifaceName);
        if (scannerImpl == null) {
            Log.e(TAG, "No valid wificond scanner interface handler");
            return results;
        }
        if (scanType == 0) {
            try {
                nativeResults = scannerImpl.getScanResults();
            } catch (RemoteException e) {
                Log.e(TAG, "Failed to create ScanDetail ArrayList");
                if (this.mVerboseLoggingEnabled) {
                    Log.d(TAG, "get " + results.size() + " scan results from wificond");
                }
                synchronized (mLock) {
                    mGbkSsids.clear();
                    for (WifiSsid gbkWifiSsid : gbkWifiSsids) {
                        gbkStr = gbkWifiSsid.toString();
                        String hexStr = gbkWifiSsid.getHexString();
                        if (gbkStr == null) {
                        }
                        Log.i(TAG, "gbkStr = " + gbkStr + ", hexStr = " + hexStr);
                    }
                    return results;
                }
            }
        } else {
            try {
                nativeResults = scannerImpl.getPnoScanResults();
            } catch (RemoteException e2) {
                Log.e(TAG, "Failed to create ScanDetail ArrayList");
                if (this.mVerboseLoggingEnabled) {
                    Log.d(TAG, "get " + results.size() + " scan results from wificond");
                }
                synchronized (mLock) {
                    mGbkSsids.clear();
                    while (r0.hasNext()) {
                        gbkStr = gbkWifiSsid.toString();
                        String hexStr2 = gbkWifiSsid.getHexString();
                        if (gbkStr == null) {
                        }
                        Log.i(TAG, "gbkStr = " + gbkStr + ", hexStr = " + hexStr2);
                    }
                    return results;
                }
            }
        }
        int i = 0;
        for (int length = nativeResults.length; i < length; length = length) {
            NativeScanResult result = nativeResults[i];
            WifiSsid wifiSsid = WifiSsid.createFromByteArray(result.ssid);
            try {
                String bssid = NativeUtil.macAddressFromByteArray(result.bssid);
                if (bssid == null) {
                    Log.e(TAG, "Illegal null bssid");
                } else {
                    ScanResult.InformationElement[] ies = InformationElementUtil.parseInformationElements(result.infoElement);
                    InformationElementUtil.Capabilities capabilities = new InformationElementUtil.Capabilities();
                    capabilities.from(ies, result.capability, isEnhancedOpenSupported());
                    String flags = capabilities.generateCapabilitiesString();
                    try {
                        NetworkDetail networkDetail = new NetworkDetail(bssid, ies, null, result.frequency);
                        try {
                            ScanDetail scanDetail = new ScanDetail(networkDetail, wifiSsid, bssid, flags, result.signalMbm / 100, result.frequency, result.tsf, ies, null);
                            ScanResult scanResult = scanDetail.getScanResult();
                            if (ScanResultUtil.isScanResultForEapNetwork(scanDetail.getScanResult()) && this.mCarrierNetworkConfig.isCarrierNetwork(wifiSsid.toString())) {
                                scanResult.isCarrierAp = true;
                                scanResult.carrierApEapType = this.mCarrierNetworkConfig.getNetworkEapType(wifiSsid.toString());
                                scanResult.carrierName = this.mCarrierNetworkConfig.getCarrierName(wifiSsid.toString());
                            }
                            if (result.radioChainInfos != null) {
                                scanResult.radioChainInfos = new ScanResult.RadioChainInfo[result.radioChainInfos.size()];
                                int idx = 0;
                                for (RadioChainInfo nativeRadioChainInfo : result.radioChainInfos) {
                                    scanResult.radioChainInfos[idx] = new ScanResult.RadioChainInfo();
                                    scanResult.radioChainInfos[idx].id = nativeRadioChainInfo.chainId;
                                    scanResult.radioChainInfos[idx].level = nativeRadioChainInfo.level;
                                    idx++;
                                }
                            }
                            if (wifiSsid.isGbkEncoder()) {
                                gbkWifiSsids.add(wifiSsid);
                            }
                            results.add(scanDetail);
                        } catch (RemoteException e3) {
                            Log.e(TAG, "Failed to create ScanDetail ArrayList");
                            if (this.mVerboseLoggingEnabled) {
                                Log.d(TAG, "get " + results.size() + " scan results from wificond");
                            }
                            synchronized (mLock) {
                                mGbkSsids.clear();
                                while (r0.hasNext()) {
                                    gbkStr = gbkWifiSsid.toString();
                                    String hexStr3 = gbkWifiSsid.getHexString();
                                    if (gbkStr == null) {
                                    }
                                    Log.i(TAG, "gbkStr = " + gbkStr + ", hexStr = " + hexStr3);
                                }
                                return results;
                            }
                        }
                    } catch (IllegalArgumentException e4) {
                        Log.e(TAG, "Illegal argument for scan result with bssid: " + bssid, e4);
                    }
                }
            } catch (IllegalArgumentException e5) {
                Log.e(TAG, "Illegal argument " + result.bssid, e5);
            }
            i++;
            scannerImpl = scannerImpl;
            nativeResults = nativeResults;
        }
        if (this.mVerboseLoggingEnabled) {
            Log.d(TAG, "get " + results.size() + " scan results from wificond");
        }
        synchronized (mLock) {
            mGbkSsids.clear();
            while (r0.hasNext()) {
                gbkStr = gbkWifiSsid.toString();
                String hexStr4 = gbkWifiSsid.getHexString();
                if (gbkStr == null && hexStr4 != null) {
                    mGbkSsids.put(gbkStr, hexStr4.substring(2));
                }
                Log.i(TAG, "gbkStr = " + gbkStr + ", hexStr = " + hexStr4);
            }
        }
        return results;
    }

    public static HashMap<String, String> getGbkWifiSsids() {
        HashMap<String, String> map;
        synchronized (mLock) {
            map = new HashMap<>(mGbkSsids);
        }
        return map;
    }

    private static int getScanType(int scanType) {
        if (scanType == 0) {
            return 0;
        }
        if (scanType == 1) {
            return 1;
        }
        if (scanType == 2) {
            return 2;
        }
        throw new IllegalArgumentException("Invalid scan type " + scanType);
    }

    public boolean scan(String ifaceName, int scanType, Set<Integer> freqs, List<String> hiddenNetworkSSIDs) {
        IWifiScannerImpl scannerImpl = getScannerImpl(ifaceName);
        if (scannerImpl == null) {
            Log.e(TAG, "No valid wificond scanner interface handler");
            return false;
        }
        SingleScanSettings settings = new SingleScanSettings();
        try {
            settings.scanType = getScanType(scanType);
            settings.channelSettings = new ArrayList<>();
            settings.hiddenNetworks = new ArrayList<>();
            if (freqs != null) {
                for (Integer freq : freqs) {
                    ChannelSettings channel = new ChannelSettings();
                    channel.frequency = freq.intValue();
                    settings.channelSettings.add(channel);
                }
            }
            if (hiddenNetworkSSIDs != null) {
                for (String ssid : hiddenNetworkSSIDs) {
                    HiddenNetwork network = new HiddenNetwork();
                    try {
                        network.ssid = NativeUtil.byteArrayFromArrayList(NativeUtil.decodeSsid(ssid));
                        if (!settings.hiddenNetworks.contains(network)) {
                            settings.hiddenNetworks.add(network);
                        }
                    } catch (IllegalArgumentException e) {
                        Log.e(TAG, "Illegal argument " + ssid, e);
                    }
                }
            }
            try {
                return scannerImpl.scan(settings);
            } catch (RemoteException e2) {
                Log.e(TAG, "Failed to request scan due to remote exception");
                return false;
            }
        } catch (IllegalArgumentException e3) {
            Log.e(TAG, "Invalid scan type ", e3);
            return false;
        }
    }

    public boolean startPnoScan(String ifaceName, WifiNative.PnoSettings pnoSettings) {
        IWifiScannerImpl scannerImpl = getScannerImpl(ifaceName);
        if (scannerImpl == null) {
            Log.e(TAG, "No valid wificond scanner interface handler");
            return false;
        }
        PnoSettings settings = new PnoSettings();
        settings.pnoNetworks = new ArrayList<>();
        settings.intervalMs = pnoSettings.periodInMs;
        settings.min2gRssi = pnoSettings.min24GHzRssi;
        settings.min5gRssi = pnoSettings.min5GHzRssi;
        if (pnoSettings.networkList != null) {
            for (WifiNative.PnoNetwork network : pnoSettings.networkList) {
                PnoNetwork condNetwork = new PnoNetwork();
                condNetwork.isHidden = (network.flags & 1) != 0;
                try {
                    condNetwork.ssid = NativeUtil.byteArrayFromArrayList(NativeUtil.decodeSsid(network.ssid));
                    condNetwork.frequencies = network.frequencies;
                    settings.pnoNetworks.add(condNetwork);
                } catch (IllegalArgumentException e) {
                    Log.e(TAG, "Illegal argument " + network.ssid, e);
                }
            }
        }
        try {
            boolean success = scannerImpl.startPnoScan(settings);
            this.mWifiInjector.getWifiMetrics().incrementPnoScanStartAttempCount();
            if (!success) {
                this.mWifiInjector.getWifiMetrics().incrementPnoScanFailedCount();
            }
            return success;
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to start pno scan due to remote exception");
            return false;
        }
    }

    public boolean stopPnoScan(String ifaceName) {
        IWifiScannerImpl scannerImpl = getScannerImpl(ifaceName);
        if (scannerImpl == null) {
            Log.e(TAG, "No valid wificond scanner interface handler");
            return false;
        }
        try {
            return scannerImpl.stopPnoScan();
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to stop pno scan due to remote exception");
            return false;
        }
    }

    public void abortScan(String ifaceName) {
        IWifiScannerImpl scannerImpl = getScannerImpl(ifaceName);
        if (scannerImpl == null) {
            Log.e(TAG, "No valid wificond scanner interface handler");
            return;
        }
        try {
            scannerImpl.abortScan();
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to request abortScan due to remote exception");
        }
    }

    public int[] getChannelsForBand(int band) {
        IWificond iWificond = this.mWificond;
        if (iWificond == null) {
            Log.e(TAG, "No valid wificond scanner interface handler");
            return null;
        }
        try {
            if (band == 1) {
                return iWificond.getAvailable2gChannels();
            }
            if (band == 2) {
                return iWificond.getAvailable5gNonDFSChannels();
            }
            if (band == 4) {
                return iWificond.getAvailableDFSChannels();
            }
            throw new IllegalArgumentException("unsupported band " + band);
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to request getChannelsForBand due to remote exception");
            return null;
        }
    }

    private IApInterface getApInterface(String ifaceName) {
        return this.mApInterfaces.get(ifaceName);
    }

    public boolean registerApListener(String ifaceName, WifiNative.SoftApListener listener) {
        IApInterface iface = getApInterface(ifaceName);
        if (iface == null) {
            Log.e(TAG, "No valid ap interface handler");
            return false;
        }
        try {
            IApInterfaceEventCallback callback = new ApInterfaceEventCallback(listener);
            this.mApInterfaceListeners.put(ifaceName, callback);
            boolean success = iface.registerCallback(callback);
            if (!success) {
                Log.e(TAG, "Failed to register ap callback.");
                return false;
            }
            return true;
        } catch (RemoteException e) {
            Log.e(TAG, "Exception in registering AP callback: " + e);
            return false;
        }
    }

    public void sendMgmtFrame(String ifaceName, byte[] frame, WifiNative.SendMgmtFrameCallback callback, int mcs) {
        if (callback == null) {
            Log.e(TAG, "callback cannot be null!");
            return;
        }
        if (frame == null) {
            Log.e(TAG, "frame cannot be null!");
            callback.onFailure(1);
            return;
        }
        IClientInterface clientInterface = getClientInterface(ifaceName);
        if (clientInterface == null) {
            Log.e(TAG, "No valid wificond client interface handler");
            callback.onFailure(1);
            return;
        }
        if (!this.mSendMgmtFrameInProgress.compareAndSet(false, true)) {
            Log.e(TAG, "An existing management frame transmission is in progress!");
            callback.onFailure(5);
            return;
        }
        SendMgmtFrameEvent sendMgmtFrameEvent = new SendMgmtFrameEvent(callback);
        try {
            clientInterface.SendMgmtFrame(frame, sendMgmtFrameEvent, mcs);
        } catch (RemoteException e) {
            Log.e(TAG, "Exception while starting link probe: " + e);
            sendMgmtFrameEvent.OnFailure(1);
        }
    }

    private void clearState() {
        this.mClientInterfaces.clear();
        this.mWificondScanners.clear();
        this.mPnoScanEventHandlers.clear();
        this.mScanEventHandlers.clear();
        this.mApInterfaces.clear();
        this.mApInterfaceListeners.clear();
        this.mSendMgmtFrameInProgress.set(false);
    }

    private boolean isEnhancedOpenSupported() {
        if (this.mIsEnhancedOpenSupportedInitialized) {
            return this.mIsEnhancedOpenSupported;
        }
        if (this.mWifiNative == null) {
            this.mWifiNative = this.mWifiInjector.getWifiNative();
            if (this.mWifiNative == null) {
                return false;
            }
        }
        String iface = this.mWifiNative.getClientInterfaceName();
        if (iface == null) {
            return false;
        }
        this.mIsEnhancedOpenSupportedInitialized = true;
        this.mIsEnhancedOpenSupported = (this.mWifiNative.getSupportedFeatureSet(iface) & 536870912) != 0;
        return this.mIsEnhancedOpenSupported;
    }
}
