package com.android.server.wifi.scanner;

import android.app.AlarmManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.wifi.IWifiScanner;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiFeaturesUtils;
import android.net.wifi.WifiScanner;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.WorkSource;
import android.provider.Settings;
import android.util.ArrayMap;
import android.util.LocalLog;
import android.util.Log;
import android.util.Pair;
import android.util.StatsLog;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.app.IBatteryStats;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.AsyncChannel;
import com.android.internal.util.State;
import com.android.internal.util.StateMachine;
import com.android.server.wifi.ClientModeImpl;
import com.android.server.wifi.Clock;
import com.android.server.wifi.FrameworkFacade;
import com.android.server.wifi.ScoringParams;
import com.android.server.wifi.WifiConnectivityManager;
import com.android.server.wifi.WifiInjector;
import com.android.server.wifi.WifiLog;
import com.android.server.wifi.WifiMetrics;
import com.android.server.wifi.WifiNative;
import com.android.server.wifi.hotspot2.anqp.NAIRealmData;
import com.android.server.wifi.util.ScanResultUtil;
import com.android.server.wifi.util.WifiHandler;
import com.android.server.wifi.util.WifiPermissionsUtil;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public class WifiScanningServiceImpl extends IWifiScanner.Stub {
    private static final int BASE = 160000;
    private static final int CMD_DRIVER_LOADED = 160006;
    private static final int CMD_DRIVER_UNLOADED = 160007;
    private static final int CMD_FULL_SCAN_RESULTS = 160001;
    private static final int CMD_PNO_NETWORK_FOUND = 160011;
    private static final int CMD_PNO_SCAN_FAILED = 160012;
    private static final int CMD_SCAN_FAILED = 160010;
    private static final int CMD_SCAN_PAUSED = 160008;
    private static final int CMD_SCAN_RESTARTED = 160009;
    private static final int CMD_SCAN_RESULTS_AVAILABLE = 160000;
    private static final boolean DBG = false;
    private static final String TAG = "WifiScanningService";
    private static final int UNKNOWN_PID = -1;
    private final AlarmManager mAlarmManager;
    private WifiBackgroundScanStateMachine mBackgroundScanStateMachine;
    private BackgroundScanScheduler mBackgroundScheduler;
    private final IBatteryStats mBatteryStats;
    private ChannelHelper mChannelHelper;
    private ClientHandler mClientHandler;
    private final Clock mClock;
    private final Context mContext;
    private final FrameworkFacade mFrameworkFacade;
    private WifiLog mLog;
    private final Looper mLooper;
    private WifiPnoScanStateMachine mPnoScanStateMachine;
    private int mPocketModeSwitch;
    private WifiScannerImpl mScannerImpl;
    private final WifiScannerImpl.WifiScannerImplFactory mScannerImplFactory;
    private SensorEventListener mSensorEventListener;
    private final SensorManager mSensorManager;
    private final Sensor mSigMotion;
    private final RequestList<Void> mSingleScanListeners;
    private WifiSingleScanStateMachine mSingleScanStateMachine;
    private final WifiMetrics mWifiMetrics;
    private final WifiPermissionsUtil mWifiPermissionsUtil;
    private final LocalLog mLocalLog = new LocalLog(512);
    private int mWifiState = 1;
    private boolean mInPocketMode = false;
    private boolean mIsRequestTriggerSensor = false;
    private final ArrayMap<Messenger, ClientInfo> mClients = new ArrayMap<>();
    private WifiNative.ScanSettings mPreviousSchedule = null;

    /* JADX INFO: Access modifiers changed from: private */
    public void localLog(String message) {
        this.mLocalLog.log(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logw(String message) {
        Log.w(TAG, message);
        this.mLocalLog.log(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loge(String message) {
        Log.e(TAG, message);
        this.mLocalLog.log(message);
    }

    public Messenger getMessenger() {
        if (this.mClientHandler != null) {
            this.mLog.trace("getMessenger() uid=%").c(Binder.getCallingUid()).flush();
            return new Messenger(this.mClientHandler);
        }
        loge("WifiScanningServiceImpl trying to get messenger w/o initialization");
        return null;
    }

    public Bundle getAvailableChannels(int band) {
        this.mChannelHelper.updateChannels();
        WifiScanner.ChannelSpec[] channelSpecs = this.mChannelHelper.getAvailableScanChannels(band);
        ArrayList<Integer> list = new ArrayList<>(channelSpecs.length);
        for (WifiScanner.ChannelSpec channelSpec : channelSpecs) {
            list.add(Integer.valueOf(channelSpec.frequency));
        }
        Bundle b = new Bundle();
        b.putIntegerArrayList("Channels", list);
        this.mLog.trace("getAvailableChannels uid=%").c(Binder.getCallingUid()).flush();
        return b;
    }

    private void enforceNetworkStack(int uid) {
        this.mContext.enforcePermission("android.permission.NETWORK_STACK", -1, uid, "NetworkStack");
    }

    private boolean isPrivilegedMessage(int msgWhat) {
        return msgWhat == 159774 || msgWhat == 159775 || msgWhat == 159768 || msgWhat == 159769 || msgWhat == 159771;
    }

    private String getPackageName(Message msg) {
        if (!(msg.obj instanceof Bundle)) {
            return null;
        }
        Bundle bundle = (Bundle) msg.obj;
        return bundle.getString("PackageName");
    }

    private boolean shouldIgnoreLocationSettingsForSingleScan(Message msg) {
        if (msg.what != 159765 || !(msg.obj instanceof Bundle)) {
            return false;
        }
        Bundle bundle = (Bundle) msg.obj;
        WifiScanner.ScanSettings scanSettings = bundle.getParcelable("ScanSettings");
        return scanSettings.ignoreLocationSettings;
    }

    private boolean shouldHideFromAppsForSingleScan(Message msg) {
        if (msg.what != 159765 || !(msg.obj instanceof Bundle)) {
            return false;
        }
        Bundle bundle = (Bundle) msg.obj;
        WifiScanner.ScanSettings scanSettings = bundle.getParcelable("ScanSettings");
        return scanSettings.hideFromAppOps;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforcePermission(int uid, Message msg) throws SecurityException {
        try {
            enforceNetworkStack(uid);
        } catch (SecurityException e) {
            if (isPrivilegedMessage(msg.what)) {
                throw e;
            }
            this.mWifiPermissionsUtil.enforceCanAccessScanResultsForWifiScanner(getPackageName(msg), uid, shouldIgnoreLocationSettingsForSingleScan(msg), shouldHideFromAppsForSingleScan(msg));
        }
    }

    private class ClientHandler extends WifiHandler {
        ClientHandler(String tag, Looper looper) {
            super(tag, looper);
        }

        @Override // com.android.server.wifi.util.WifiHandler, android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 69633:
                    if (msg.replyTo == null) {
                        WifiScanningServiceImpl.this.logw("msg.replyTo is null");
                    } else {
                        ExternalClientInfo client = (ExternalClientInfo) WifiScanningServiceImpl.this.mClients.get(msg.replyTo);
                        if (client == null) {
                            AsyncChannel ac = WifiScanningServiceImpl.this.mFrameworkFacade.makeWifiAsyncChannel(WifiScanningServiceImpl.TAG);
                            ac.connected(WifiScanningServiceImpl.this.mContext, this, msg.replyTo);
                            ExternalClientInfo client2 = WifiScanningServiceImpl.this.new ExternalClientInfo(msg.sendingUid, msg.replyTo, ac);
                            client2.register();
                            ac.replyToMessage(msg, 69634, 0);
                            WifiScanningServiceImpl.this.localLog("client connected: " + client2);
                        } else {
                            WifiScanningServiceImpl.this.logw("duplicate client connection: " + msg.sendingUid + ", messenger=" + msg.replyTo);
                            client.mChannel.replyToMessage(msg, 69634, 3);
                        }
                    }
                    break;
                case 69634:
                default:
                    try {
                        WifiScanningServiceImpl.this.enforcePermission(msg.sendingUid, msg);
                        if (msg.what == 159748) {
                            WifiScanningServiceImpl.this.mBackgroundScanStateMachine.sendMessage(Message.obtain(msg));
                            break;
                        } else if (msg.what == 159773) {
                            WifiScanningServiceImpl.this.mSingleScanStateMachine.sendMessage(Message.obtain(msg));
                            break;
                        } else {
                            ClientInfo ci = (ClientInfo) WifiScanningServiceImpl.this.mClients.get(msg.replyTo);
                            if (ci != null) {
                                switch (msg.what) {
                                    case 159746:
                                        if (WifiScanningServiceImpl.this.mInPocketMode) {
                                            Log.i(WifiScanningServiceImpl.TAG, "Current mode is PocketMode");
                                            break;
                                        }
                                    case 159747:
                                        WifiScanningServiceImpl.this.mBackgroundScanStateMachine.sendMessage(Message.obtain(msg));
                                        break;
                                    case 159765:
                                        if (WifiScanningServiceImpl.this.mInPocketMode) {
                                            Log.i(WifiScanningServiceImpl.TAG, "Current mode is PocketMode");
                                            break;
                                        }
                                    case 159766:
                                        WifiScanningServiceImpl.this.mSingleScanStateMachine.sendMessage(Message.obtain(msg));
                                        break;
                                    case 159768:
                                        if (WifiScanningServiceImpl.this.mInPocketMode) {
                                            Log.i(WifiScanningServiceImpl.TAG, "Current mode is PocketMode");
                                            break;
                                        }
                                    case 159769:
                                        WifiScanningServiceImpl.this.mPnoScanStateMachine.sendMessage(Message.obtain(msg));
                                        break;
                                    case 159771:
                                        WifiScanningServiceImpl.this.logScanRequest("registerScanListener", ci, msg.arg2, null, null, null);
                                        WifiScanningServiceImpl.this.mSingleScanListeners.addRequest(ci, msg.arg2, null, null);
                                        WifiScanningServiceImpl.this.replySucceeded(msg);
                                        break;
                                    case 159772:
                                        WifiScanningServiceImpl.this.logScanRequest("deregisterScanListener", ci, msg.arg2, null, null, null);
                                        WifiScanningServiceImpl.this.mSingleScanListeners.removeRequest(ci, msg.arg2);
                                        break;
                                    case 159774:
                                        WifiScanningServiceImpl.this.mBackgroundScanStateMachine.sendMessage(WifiScanningServiceImpl.CMD_DRIVER_LOADED);
                                        WifiScanningServiceImpl.this.mSingleScanStateMachine.sendMessage(WifiScanningServiceImpl.CMD_DRIVER_LOADED);
                                        WifiScanningServiceImpl.this.mPnoScanStateMachine.sendMessage(WifiScanningServiceImpl.CMD_DRIVER_LOADED);
                                        break;
                                    case 159775:
                                        WifiScanningServiceImpl.this.mBackgroundScanStateMachine.sendMessage(WifiScanningServiceImpl.CMD_DRIVER_UNLOADED);
                                        WifiScanningServiceImpl.this.mSingleScanStateMachine.sendMessage(WifiScanningServiceImpl.CMD_DRIVER_UNLOADED);
                                        WifiScanningServiceImpl.this.mPnoScanStateMachine.sendMessage(WifiScanningServiceImpl.CMD_DRIVER_UNLOADED);
                                        break;
                                    default:
                                        WifiScanningServiceImpl.this.replyFailed(msg, -3, "Invalid request");
                                        break;
                                }
                            } else {
                                WifiScanningServiceImpl.this.loge("Could not find client info for message " + msg.replyTo + ", msg=" + msg);
                                WifiScanningServiceImpl.this.replyFailed(msg, -2, "Could not find listener");
                                break;
                            }
                        }
                    } catch (SecurityException e) {
                        WifiScanningServiceImpl.this.localLog("failed to authorize app: " + e);
                        WifiScanningServiceImpl.this.replyFailed(msg, -4, "Not authorized");
                        return;
                    }
                    break;
                case 69635:
                    ExternalClientInfo client3 = (ExternalClientInfo) WifiScanningServiceImpl.this.mClients.get(msg.replyTo);
                    if (client3 != null) {
                        client3.mChannel.disconnect();
                    }
                    break;
                case 69636:
                    ExternalClientInfo client4 = (ExternalClientInfo) WifiScanningServiceImpl.this.mClients.get(msg.replyTo);
                    if (client4 != null && msg.arg1 != 2 && msg.arg1 != 3) {
                        WifiScanningServiceImpl.this.localLog("client disconnected: " + client4 + ", reason: " + msg.arg1);
                        client4.cleanup();
                        break;
                    }
                    break;
            }
        }
    }

    WifiScanningServiceImpl(Context context, Looper looper, WifiScannerImpl.WifiScannerImplFactory scannerImplFactory, IBatteryStats batteryStats, WifiInjector wifiInjector) {
        this.mSingleScanListeners = new RequestList<>();
        this.mContext = context;
        this.mLooper = looper;
        this.mScannerImplFactory = scannerImplFactory;
        this.mBatteryStats = batteryStats;
        this.mAlarmManager = (AlarmManager) this.mContext.getSystemService("alarm");
        this.mWifiMetrics = wifiInjector.getWifiMetrics();
        this.mClock = wifiInjector.getClock();
        this.mLog = wifiInjector.makeLog(TAG);
        this.mFrameworkFacade = wifiInjector.getFrameworkFacade();
        this.mWifiPermissionsUtil = wifiInjector.getWifiPermissionsUtil();
        this.mSensorManager = (SensorManager) this.mContext.getSystemService("sensor");
        this.mSigMotion = this.mSensorManager.getDefaultSensor(65538);
        if (WifiFeaturesUtils.FeatureProperty.SUPPORT_SPRD_WIFI_POCKET_MODE) {
            this.mSensorEventListener = new WifiSensorEventListener();
            this.mPocketModeSwitch = Settings.Global.getInt(this.mContext.getContentResolver(), "power_saving", 0);
            this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("power_saving"), false, new ContentObserver(this.mClientHandler) { // from class: com.android.server.wifi.scanner.WifiScanningServiceImpl.1
                @Override // android.database.ContentObserver
                public void onChange(boolean selfChange) {
                    WifiScanningServiceImpl wifiScanningServiceImpl = WifiScanningServiceImpl.this;
                    wifiScanningServiceImpl.mPocketModeSwitch = Settings.Global.getInt(wifiScanningServiceImpl.mContext.getContentResolver(), "power_saving", 0);
                    if (WifiScanningServiceImpl.this.mPocketModeSwitch != 1 || WifiScanningServiceImpl.this.mWifiState != 3) {
                        if (WifiScanningServiceImpl.this.mIsRequestTriggerSensor) {
                            WifiScanningServiceImpl.this.mSensorManager.unregisterListener(WifiScanningServiceImpl.this.mSensorEventListener);
                            WifiScanningServiceImpl.this.mIsRequestTriggerSensor = false;
                        }
                        WifiScanningServiceImpl.this.mInPocketMode = false;
                    } else if (!WifiScanningServiceImpl.this.mIsRequestTriggerSensor) {
                        WifiScanningServiceImpl.this.mSensorManager.registerListener(WifiScanningServiceImpl.this.mSensorEventListener, WifiScanningServiceImpl.this.mSigMotion, 3);
                        WifiScanningServiceImpl.this.mIsRequestTriggerSensor = true;
                    }
                    Log.i(WifiScanningServiceImpl.TAG, "onChange() mPocketModeSwitch = " + WifiScanningServiceImpl.this.mPocketModeSwitch);
                }
            });
        }
    }

    public void startService() {
        this.mBackgroundScanStateMachine = new WifiBackgroundScanStateMachine(this.mLooper);
        this.mSingleScanStateMachine = new WifiSingleScanStateMachine(this.mLooper);
        this.mPnoScanStateMachine = new WifiPnoScanStateMachine(this.mLooper);
        if (WifiFeaturesUtils.FeatureProperty.SUPPORT_SPRD_WIFI_POCKET_MODE) {
            this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.wifi.scanner.WifiScanningServiceImpl.2
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    int state = intent.getIntExtra("scan_enabled", 1);
                    if (state == 3) {
                        WifiScanningServiceImpl.this.mWifiState = state;
                        if (WifiScanningServiceImpl.this.mPocketModeSwitch == 1 && !WifiScanningServiceImpl.this.mIsRequestTriggerSensor) {
                            WifiScanningServiceImpl.this.mSensorManager.registerListener(WifiScanningServiceImpl.this.mSensorEventListener, WifiScanningServiceImpl.this.mSigMotion, 3);
                            WifiScanningServiceImpl.this.mIsRequestTriggerSensor = true;
                            return;
                        }
                        return;
                    }
                    if (state == 1) {
                        WifiScanningServiceImpl.this.mWifiState = state;
                        if (WifiScanningServiceImpl.this.mIsRequestTriggerSensor) {
                            WifiScanningServiceImpl.this.mInPocketMode = false;
                            WifiScanningServiceImpl.this.mSensorManager.unregisterListener(WifiScanningServiceImpl.this.mSensorEventListener);
                            WifiScanningServiceImpl.this.mIsRequestTriggerSensor = false;
                        }
                    }
                }
            }, new IntentFilter("wifi_scan_available"));
        }
        this.mBackgroundScanStateMachine.start();
        this.mSingleScanStateMachine.start();
        this.mPnoScanStateMachine.start();
        this.mClientHandler = new ClientHandler(TAG, this.mLooper);
    }

    @VisibleForTesting
    public void setWifiHandlerLogForTest(WifiLog log) {
        this.mClientHandler.setWifiLog(log);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WorkSource computeWorkSource(ClientInfo ci, WorkSource requestedWorkSource) {
        if (requestedWorkSource != null) {
            requestedWorkSource.clearNames();
            if (!requestedWorkSource.isEmpty()) {
                return requestedWorkSource;
            }
        }
        if (ci.getUid() > 0) {
            return new WorkSource(ci.getUid());
        }
        loge("Unable to compute workSource for client: " + ci + ", requested: " + requestedWorkSource);
        return new WorkSource();
    }

    private class RequestInfo<T> {
        final ClientInfo clientInfo;
        final int handlerId;
        final T settings;
        final WorkSource workSource;

        RequestInfo(ClientInfo clientInfo, int handlerId, WorkSource requestedWorkSource, T settings) {
            this.clientInfo = clientInfo;
            this.handlerId = handlerId;
            this.settings = settings;
            this.workSource = WifiScanningServiceImpl.this.computeWorkSource(clientInfo, requestedWorkSource);
        }

        void reportEvent(int what, int arg1, Object obj) {
            this.clientInfo.reportEvent(what, arg1, this.handlerId, obj);
        }
    }

    private class RequestList<T> extends ArrayList<RequestInfo<T>> {
        private RequestList() {
        }

        void addRequest(ClientInfo ci, int handler, WorkSource reqworkSource, T settings) {
            add(WifiScanningServiceImpl.this.new RequestInfo(ci, handler, reqworkSource, settings));
        }

        T removeRequest(ClientInfo ci, int handlerId) {
            T removed = null;
            Iterator<RequestInfo<T>> iter = iterator();
            while (iter.hasNext()) {
                RequestInfo<T> entry = iter.next();
                if (entry.clientInfo == ci && entry.handlerId == handlerId) {
                    removed = entry.settings;
                    iter.remove();
                }
            }
            return removed;
        }

        Collection<T> getAllSettings() {
            ArrayList<T> settingsList = new ArrayList<>();
            for (RequestInfo<T> entry : this) {
                settingsList.add(entry.settings);
            }
            return settingsList;
        }

        Collection<T> getAllSettingsForClient(ClientInfo ci) {
            ArrayList<T> settingsList = new ArrayList<>();
            for (RequestInfo<T> entry : this) {
                if (entry.clientInfo == ci) {
                    settingsList.add(entry.settings);
                }
            }
            return settingsList;
        }

        void removeAllForClient(ClientInfo ci) {
            Iterator<RequestInfo<T>> iter = iterator();
            while (iter.hasNext()) {
                RequestInfo<T> entry = iter.next();
                if (entry.clientInfo == ci) {
                    iter.remove();
                }
            }
        }

        WorkSource createMergedWorkSource() {
            WorkSource mergedSource = new WorkSource();
            for (RequestInfo<T> entry : this) {
                mergedSource.add(entry.workSource);
            }
            return mergedSource;
        }
    }

    class WifiSingleScanStateMachine extends StateMachine implements WifiNative.ScanEventHandler {

        @VisibleForTesting
        public static final int CACHED_SCAN_RESULTS_MAX_AGE_IN_MILLIS = 180000;
        private WifiNative.ScanSettings mActiveScanSettings;
        private RequestList<WifiScanner.ScanSettings> mActiveScans;
        private final List<ScanResult> mCachedScanResults;
        private final DefaultState mDefaultState;
        private final DriverStartedState mDriverStartedState;
        private final IdleState mIdleState;
        private RequestList<WifiScanner.ScanSettings> mPendingScans;
        private final ScanningState mScanningState;

        WifiSingleScanStateMachine(Looper looper) {
            super("WifiSingleScanStateMachine", looper);
            this.mDefaultState = new DefaultState();
            this.mDriverStartedState = new DriverStartedState();
            this.mIdleState = new IdleState();
            this.mScanningState = new ScanningState();
            this.mActiveScanSettings = null;
            this.mActiveScans = new RequestList<>();
            this.mPendingScans = new RequestList<>();
            this.mCachedScanResults = new ArrayList();
            setLogRecSize(128);
            setLogOnlyTransitions(false);
            addState(this.mDefaultState);
            addState(this.mDriverStartedState, this.mDefaultState);
            addState(this.mIdleState, this.mDriverStartedState);
            addState(this.mScanningState, this.mDriverStartedState);
            setInitialState(this.mDefaultState);
        }

        @Override // com.android.server.wifi.WifiNative.ScanEventHandler
        public void onScanStatus(int event) {
            if (event == 0 || event == 1 || event == 2) {
                sendMessage(WifiConnectivityManager.MAX_PERIODIC_SCAN_INTERVAL_MS);
                return;
            }
            if (event == 3) {
                sendMessage(WifiScanningServiceImpl.CMD_SCAN_FAILED);
                return;
            }
            Log.e(WifiScanningServiceImpl.TAG, "Unknown scan status event: " + event);
        }

        @Override // com.android.server.wifi.WifiNative.ScanEventHandler
        public void onFullScanResult(ScanResult fullScanResult, int bucketsScanned) {
            sendMessage(WifiScanningServiceImpl.CMD_FULL_SCAN_RESULTS, 0, bucketsScanned, fullScanResult);
        }

        @Override // com.android.server.wifi.WifiNative.ScanEventHandler
        public void onScanPaused(WifiScanner.ScanData[] scanData) {
            Log.e(WifiScanningServiceImpl.TAG, "Got scan paused for single scan");
        }

        @Override // com.android.server.wifi.WifiNative.ScanEventHandler
        public void onScanRestarted() {
            Log.e(WifiScanningServiceImpl.TAG, "Got scan restarted for single scan");
        }

        class DefaultState extends State {
            DefaultState() {
            }

            public void enter() {
                WifiSingleScanStateMachine.this.mActiveScans.clear();
                WifiSingleScanStateMachine.this.mPendingScans.clear();
            }

            public boolean processMessage(Message msg) {
                switch (msg.what) {
                    case 159765:
                    case 159766:
                        WifiScanningServiceImpl.this.replyFailed(msg, -1, "not available");
                        return true;
                    case 159773:
                        msg.obj = new WifiScanner.ParcelableScanResults(filterCachedScanResultsByAge());
                        WifiScanningServiceImpl.this.replySucceeded(msg);
                        return true;
                    case WifiConnectivityManager.MAX_PERIODIC_SCAN_INTERVAL_MS /* 160000 */:
                        return true;
                    case WifiScanningServiceImpl.CMD_FULL_SCAN_RESULTS /* 160001 */:
                        return true;
                    case WifiScanningServiceImpl.CMD_DRIVER_LOADED /* 160006 */:
                        if (WifiScanningServiceImpl.this.mScannerImpl == null) {
                            WifiSingleScanStateMachine.this.loge("Failed to start single scan state machine because scanner impl is null");
                            return true;
                        }
                        WifiSingleScanStateMachine wifiSingleScanStateMachine = WifiSingleScanStateMachine.this;
                        wifiSingleScanStateMachine.transitionTo(wifiSingleScanStateMachine.mIdleState);
                        return true;
                    case WifiScanningServiceImpl.CMD_DRIVER_UNLOADED /* 160007 */:
                        WifiSingleScanStateMachine wifiSingleScanStateMachine2 = WifiSingleScanStateMachine.this;
                        wifiSingleScanStateMachine2.transitionTo(wifiSingleScanStateMachine2.mDefaultState);
                        return true;
                    default:
                        return false;
                }
            }

            private ScanResult[] filterCachedScanResultsByAge() {
                final long currentTimeInMillis = WifiScanningServiceImpl.this.mClock.getElapsedSinceBootMillis();
                return (ScanResult[]) WifiSingleScanStateMachine.this.mCachedScanResults.stream().filter(new Predicate() { // from class: com.android.server.wifi.scanner.-$$Lambda$WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState$InbNEkwBcgp-s8u0tfPo_eYbuRI
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return WifiScanningServiceImpl.WifiSingleScanStateMachine.DefaultState.lambda$filterCachedScanResultsByAge$0(currentTimeInMillis, (ScanResult) obj);
                    }
                }).toArray(new IntFunction() { // from class: com.android.server.wifi.scanner.-$$Lambda$WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState$IadGqqQgFfoD3kqhYRHB92f1PGI
                    @Override // java.util.function.IntFunction
                    public final Object apply(int i) {
                        return WifiScanningServiceImpl.WifiSingleScanStateMachine.DefaultState.lambda$filterCachedScanResultsByAge$1(i);
                    }
                });
            }

            static /* synthetic */ boolean lambda$filterCachedScanResultsByAge$0(long currentTimeInMillis, ScanResult scanResult) {
                return currentTimeInMillis - (scanResult.timestamp / 1000) < 180000;
            }

            static /* synthetic */ ScanResult[] lambda$filterCachedScanResultsByAge$1(int x$0) {
                return new ScanResult[x$0];
            }
        }

        class DriverStartedState extends State {
            DriverStartedState() {
            }

            public void exit() {
                WifiSingleScanStateMachine.this.mCachedScanResults.clear();
                WifiScanningServiceImpl.this.mWifiMetrics.incrementScanReturnEntry(2, WifiSingleScanStateMachine.this.mPendingScans.size());
                WifiSingleScanStateMachine wifiSingleScanStateMachine = WifiSingleScanStateMachine.this;
                wifiSingleScanStateMachine.sendOpFailedToAllAndClear(wifiSingleScanStateMachine.mPendingScans, -1, "Scan was interrupted");
            }

            public boolean processMessage(Message msg) {
                ClientInfo ci = (ClientInfo) WifiScanningServiceImpl.this.mClients.get(msg.replyTo);
                switch (msg.what) {
                    case 159765:
                        int handler = msg.arg2;
                        Bundle scanParams = (Bundle) msg.obj;
                        if (scanParams == null) {
                            WifiScanningServiceImpl.this.logCallback("singleScanInvalidRequest", ci, handler, "null params");
                            WifiScanningServiceImpl.this.replyFailed(msg, -3, "params null");
                            return true;
                        }
                        scanParams.setDefusable(true);
                        WifiScanner.ScanSettings scanSettings = scanParams.getParcelable("ScanSettings");
                        WorkSource workSource = (WorkSource) scanParams.getParcelable("WorkSource");
                        if (WifiSingleScanStateMachine.this.validateScanRequest(ci, handler, scanSettings)) {
                            WifiScanningServiceImpl.this.mWifiMetrics.incrementOneshotScanCount();
                            if (scanSettings.band == 4 || scanSettings.band == 6 || scanSettings.band == 7) {
                                WifiScanningServiceImpl.this.mWifiMetrics.incrementOneshotScanWithDfsCount();
                            }
                            WifiScanningServiceImpl.this.logScanRequest("addSingleScanRequest", ci, handler, workSource, scanSettings, null);
                            WifiScanningServiceImpl.this.replySucceeded(msg);
                            if (WifiSingleScanStateMachine.this.getCurrentState() != WifiSingleScanStateMachine.this.mScanningState) {
                                WifiSingleScanStateMachine.this.mPendingScans.addRequest(ci, handler, workSource, scanSettings);
                                WifiSingleScanStateMachine.this.tryToStartNewScan();
                            } else if (WifiSingleScanStateMachine.this.activeScanSatisfies(scanSettings)) {
                                WifiSingleScanStateMachine.this.mActiveScans.addRequest(ci, handler, workSource, scanSettings);
                            } else {
                                WifiSingleScanStateMachine.this.mPendingScans.addRequest(ci, handler, workSource, scanSettings);
                            }
                        } else {
                            WifiScanningServiceImpl.this.logCallback("singleScanInvalidRequest", ci, handler, "bad request");
                            WifiScanningServiceImpl.this.replyFailed(msg, -3, "bad request");
                            WifiScanningServiceImpl.this.mWifiMetrics.incrementScanReturnEntry(3, 1);
                        }
                        return true;
                    case 159766:
                        WifiSingleScanStateMachine.this.removeSingleScanRequest(ci, msg.arg2);
                        return true;
                    case WifiScanningServiceImpl.CMD_DRIVER_LOADED /* 160006 */:
                        return true;
                    default:
                        return false;
                }
            }
        }

        class IdleState extends State {
            IdleState() {
            }

            public void enter() {
                WifiSingleScanStateMachine.this.tryToStartNewScan();
            }

            public boolean processMessage(Message msg) {
                return false;
            }
        }

        class ScanningState extends State {
            private WorkSource mScanWorkSource;

            ScanningState() {
            }

            public void enter() {
                this.mScanWorkSource = WifiSingleScanStateMachine.this.mActiveScans.createMergedWorkSource();
                try {
                    WifiScanningServiceImpl.this.mBatteryStats.noteWifiScanStartedFromSource(this.mScanWorkSource);
                } catch (RemoteException e) {
                    WifiSingleScanStateMachine.this.loge(e.toString());
                }
                StatsLog.write(39, this.mScanWorkSource, 1);
            }

            public void exit() {
                WifiSingleScanStateMachine.this.mActiveScanSettings = null;
                try {
                    WifiScanningServiceImpl.this.mBatteryStats.noteWifiScanStoppedFromSource(this.mScanWorkSource);
                } catch (RemoteException e) {
                    WifiSingleScanStateMachine.this.loge(e.toString());
                }
                StatsLog.write(39, this.mScanWorkSource, 0);
                WifiScanningServiceImpl.this.mWifiMetrics.incrementScanReturnEntry(0, WifiSingleScanStateMachine.this.mActiveScans.size());
                WifiSingleScanStateMachine wifiSingleScanStateMachine = WifiSingleScanStateMachine.this;
                wifiSingleScanStateMachine.sendOpFailedToAllAndClear(wifiSingleScanStateMachine.mActiveScans, -1, "Scan was interrupted");
            }

            public boolean processMessage(Message msg) {
                switch (msg.what) {
                    case WifiConnectivityManager.MAX_PERIODIC_SCAN_INTERVAL_MS /* 160000 */:
                        WifiScanningServiceImpl.this.mWifiMetrics.incrementScanReturnEntry(1, WifiSingleScanStateMachine.this.mActiveScans.size());
                        WifiSingleScanStateMachine wifiSingleScanStateMachine = WifiSingleScanStateMachine.this;
                        wifiSingleScanStateMachine.reportScanResults(WifiScanningServiceImpl.this.mScannerImpl.getLatestSingleScanResults());
                        WifiSingleScanStateMachine.this.mActiveScans.clear();
                        WifiSingleScanStateMachine wifiSingleScanStateMachine2 = WifiSingleScanStateMachine.this;
                        wifiSingleScanStateMachine2.transitionTo(wifiSingleScanStateMachine2.mIdleState);
                        return true;
                    case WifiScanningServiceImpl.CMD_FULL_SCAN_RESULTS /* 160001 */:
                        WifiSingleScanStateMachine.this.reportFullScanResult((ScanResult) msg.obj, msg.arg2);
                        return true;
                    case WifiScanningServiceImpl.CMD_SCAN_FAILED /* 160010 */:
                        WifiScanningServiceImpl.this.mWifiMetrics.incrementScanReturnEntry(0, WifiSingleScanStateMachine.this.mActiveScans.size());
                        WifiSingleScanStateMachine wifiSingleScanStateMachine3 = WifiSingleScanStateMachine.this;
                        wifiSingleScanStateMachine3.sendOpFailedToAllAndClear(wifiSingleScanStateMachine3.mActiveScans, -1, "Scan failed");
                        WifiSingleScanStateMachine wifiSingleScanStateMachine4 = WifiSingleScanStateMachine.this;
                        wifiSingleScanStateMachine4.transitionTo(wifiSingleScanStateMachine4.mIdleState);
                        return true;
                    default:
                        return false;
                }
            }
        }

        boolean validateScanType(int type) {
            return type == 0 || type == 1 || type == 2;
        }

        boolean validateScanRequest(ClientInfo ci, int handler, WifiScanner.ScanSettings settings) {
            if (ci == null) {
                Log.d(WifiScanningServiceImpl.TAG, "Failing single scan request ClientInfo not found " + handler);
                return false;
            }
            if (settings.band == 0 && (settings.channels == null || settings.channels.length == 0)) {
                Log.d(WifiScanningServiceImpl.TAG, "Failing single scan because channel list was empty");
                return false;
            }
            if (!validateScanType(settings.type)) {
                Log.e(WifiScanningServiceImpl.TAG, "Invalid scan type " + settings.type);
                return false;
            }
            if (WifiScanningServiceImpl.this.mContext.checkPermission("android.permission.NETWORK_STACK", -1, ci.getUid()) == -1) {
                if (!ArrayUtils.isEmpty(settings.hiddenNetworks)) {
                    Log.e(WifiScanningServiceImpl.TAG, "Failing single scan because app " + ci.getUid() + " does not have permission to set hidden networks");
                    return false;
                }
                if (settings.type != 0) {
                    Log.e(WifiScanningServiceImpl.TAG, "Failing single scan because app " + ci.getUid() + " does not have permission to set type");
                    return false;
                }
                return true;
            }
            return true;
        }

        int getNativeScanType(int type) {
            if (type == 0) {
                return 0;
            }
            if (type == 1) {
                return 1;
            }
            if (type == 2) {
                return 2;
            }
            throw new IllegalArgumentException("Invalid scan type " + type);
        }

        boolean activeScanTypeSatisfies(int requestScanType) {
            int i = this.mActiveScanSettings.scanType;
            if (i == 0 || i == 1) {
                return requestScanType != 2;
            }
            if (i == 2) {
                return true;
            }
            throw new IllegalArgumentException("Invalid scan type " + this.mActiveScanSettings.scanType);
        }

        int mergeScanTypes(int existingScanType, int newScanType) {
            if (existingScanType == 0 || existingScanType == 1) {
                return newScanType;
            }
            if (existingScanType == 2) {
                return existingScanType;
            }
            throw new IllegalArgumentException("Invalid scan type " + existingScanType);
        }

        boolean activeScanSatisfies(WifiScanner.ScanSettings settings) {
            if (this.mActiveScanSettings == null || !activeScanTypeSatisfies(getNativeScanType(settings.type))) {
                return false;
            }
            WifiNative.BucketSettings activeBucket = this.mActiveScanSettings.buckets[0];
            ChannelHelper.ChannelCollection activeChannels = WifiScanningServiceImpl.this.mChannelHelper.createChannelCollection();
            activeChannels.addChannels(activeBucket);
            if (!activeChannels.containsSettings(settings)) {
                return false;
            }
            if ((settings.reportEvents & 2) != 0 && (activeBucket.report_events & 2) == 0) {
                return false;
            }
            if (!ArrayUtils.isEmpty(settings.hiddenNetworks)) {
                if (ArrayUtils.isEmpty(this.mActiveScanSettings.hiddenNetworks)) {
                    return false;
                }
                List<WifiNative.HiddenNetwork> activeHiddenNetworks = new ArrayList<>();
                for (WifiNative.HiddenNetwork hiddenNetwork : this.mActiveScanSettings.hiddenNetworks) {
                    activeHiddenNetworks.add(hiddenNetwork);
                }
                for (WifiScanner.ScanSettings.HiddenNetwork hiddenNetwork2 : settings.hiddenNetworks) {
                    WifiNative.HiddenNetwork nativeHiddenNetwork = new WifiNative.HiddenNetwork();
                    nativeHiddenNetwork.ssid = hiddenNetwork2.ssid;
                    if (!activeHiddenNetworks.contains(nativeHiddenNetwork)) {
                        return false;
                    }
                }
                return true;
            }
            return true;
        }

        void removeSingleScanRequest(ClientInfo ci, int handler) {
            if (ci != null) {
                WifiScanningServiceImpl.this.logScanRequest("removeSingleScanRequest", ci, handler, null, null, null);
                this.mPendingScans.removeRequest(ci, handler);
                this.mActiveScans.removeRequest(ci, handler);
            }
        }

        void removeSingleScanRequests(ClientInfo ci) {
            if (ci != null) {
                WifiScanningServiceImpl.this.logScanRequest("removeSingleScanRequests", ci, -1, null, null, null);
                this.mPendingScans.removeAllForClient(ci);
                this.mActiveScans.removeAllForClient(ci);
            }
        }

        void tryToStartNewScan() {
            if (this.mPendingScans.size() != 0) {
                WifiScanningServiceImpl.this.mChannelHelper.updateChannels();
                WifiNative.ScanSettings settings = new WifiNative.ScanSettings();
                settings.num_buckets = 1;
                WifiNative.BucketSettings bucketSettings = new WifiNative.BucketSettings();
                bucketSettings.bucket = 0;
                bucketSettings.period_ms = 0;
                bucketSettings.report_events = 1;
                ChannelHelper.ChannelCollection channels = WifiScanningServiceImpl.this.mChannelHelper.createChannelCollection();
                List<WifiNative.HiddenNetwork> hiddenNetworkList = new ArrayList<>();
                Iterator<RequestInfo<T>> it = this.mPendingScans.iterator();
                while (it.hasNext()) {
                    RequestInfo<WifiScanner.ScanSettings> entry = (RequestInfo) it.next();
                    settings.scanType = mergeScanTypes(settings.scanType, getNativeScanType(entry.settings.type));
                    channels.addChannels(entry.settings);
                    if (entry.settings.hiddenNetworks != null) {
                        for (int i = 0; i < entry.settings.hiddenNetworks.length; i++) {
                            WifiNative.HiddenNetwork hiddenNetwork = new WifiNative.HiddenNetwork();
                            hiddenNetwork.ssid = entry.settings.hiddenNetworks[i].ssid;
                            hiddenNetworkList.add(hiddenNetwork);
                        }
                    }
                    if ((entry.settings.reportEvents & 2) != 0) {
                        bucketSettings.report_events |= 2;
                    }
                }
                if (hiddenNetworkList.size() > 0) {
                    settings.hiddenNetworks = new WifiNative.HiddenNetwork[hiddenNetworkList.size()];
                    int numHiddenNetworks = 0;
                    Iterator<WifiNative.HiddenNetwork> it2 = hiddenNetworkList.iterator();
                    while (it2.hasNext()) {
                        settings.hiddenNetworks[numHiddenNetworks] = it2.next();
                        numHiddenNetworks++;
                    }
                }
                channels.fillBucketSettings(bucketSettings, ScoringParams.Values.MAX_EXPID);
                settings.buckets = new WifiNative.BucketSettings[]{bucketSettings};
                if (WifiScanningServiceImpl.this.mScannerImpl.startSingleScan(settings, this)) {
                    this.mActiveScanSettings = settings;
                    RequestList<WifiScanner.ScanSettings> tmp = this.mActiveScans;
                    this.mActiveScans = this.mPendingScans;
                    this.mPendingScans = tmp;
                    this.mPendingScans.clear();
                    transitionTo(this.mScanningState);
                    return;
                }
                WifiScanningServiceImpl.this.mWifiMetrics.incrementScanReturnEntry(0, this.mPendingScans.size());
                sendOpFailedToAllAndClear(this.mPendingScans, -1, "Failed to start single scan");
            }
        }

        void sendOpFailedToAllAndClear(RequestList<?> clientHandlers, int reason, String description) {
            Iterator<RequestInfo<T>> it = clientHandlers.iterator();
            while (it.hasNext()) {
                RequestInfo<?> entry = (RequestInfo) it.next();
                WifiScanningServiceImpl.this.logCallback("singleScanFailed", entry.clientInfo, entry.handlerId, "reason=" + reason + ", " + description);
                entry.reportEvent(159762, 0, new WifiScanner.OperationResult(reason, description));
            }
            clientHandlers.clear();
        }

        void reportFullScanResult(ScanResult result, int bucketsScanned) {
            Iterator<RequestInfo<T>> it = this.mActiveScans.iterator();
            while (it.hasNext()) {
                RequestInfo<WifiScanner.ScanSettings> entry = (RequestInfo) it.next();
                if (ScanScheduleUtil.shouldReportFullScanResultForSettings(WifiScanningServiceImpl.this.mChannelHelper, result, bucketsScanned, entry.settings, -1)) {
                    entry.reportEvent(159764, 0, result);
                }
            }
            Iterator<RequestInfo<T>> it2 = WifiScanningServiceImpl.this.mSingleScanListeners.iterator();
            while (it2.hasNext()) {
                ((RequestInfo) it2.next()).reportEvent(159764, 0, result);
            }
        }

        void reportScanResults(WifiScanner.ScanData results) {
            if (results != null && results.getResults() != null) {
                if (results.getResults().length > 0) {
                    WifiScanningServiceImpl.this.mWifiMetrics.incrementNonEmptyScanResultCount();
                } else {
                    WifiScanningServiceImpl.this.mWifiMetrics.incrementEmptyScanResultCount();
                }
            }
            WifiScanner.ScanData[] allResults = {results};
            Iterator<RequestInfo<T>> it = this.mActiveScans.iterator();
            while (it.hasNext()) {
                RequestInfo<WifiScanner.ScanSettings> entry = (RequestInfo) it.next();
                WifiScanner.ScanData[] resultsToDeliver = ScanScheduleUtil.filterResultsForSettings(WifiScanningServiceImpl.this.mChannelHelper, allResults, entry.settings, -1);
                WifiScanner.ParcelableScanData parcelableResultsToDeliver = new WifiScanner.ParcelableScanData(resultsToDeliver);
                WifiScanningServiceImpl.this.logCallback("singleScanResults", entry.clientInfo, entry.handlerId, WifiScanningServiceImpl.describeForLog(resultsToDeliver));
                entry.reportEvent(159749, 0, parcelableResultsToDeliver);
                entry.reportEvent(159767, 0, null);
            }
            WifiScanner.ParcelableScanData parcelableAllResults = new WifiScanner.ParcelableScanData(allResults);
            for (RequestInfo<Void> entry2 : WifiScanningServiceImpl.this.mSingleScanListeners) {
                WifiScanningServiceImpl.this.logCallback("singleScanResults", entry2.clientInfo, entry2.handlerId, WifiScanningServiceImpl.describeForLog(allResults));
                entry2.reportEvent(159749, 0, parcelableAllResults);
            }
            if (results.getBandScanned() == 7 || results.getBandScanned() == 3) {
                this.mCachedScanResults.clear();
                this.mCachedScanResults.addAll(Arrays.asList(results.getResults()));
            }
        }

        List<ScanResult> getCachedScanResultsAsList() {
            return this.mCachedScanResults;
        }
    }

    class WifiBackgroundScanStateMachine extends StateMachine implements WifiNative.ScanEventHandler {
        private final RequestList<WifiScanner.ScanSettings> mActiveBackgroundScans;
        private final DefaultState mDefaultState;
        private final PausedState mPausedState;
        private final StartedState mStartedState;

        WifiBackgroundScanStateMachine(Looper looper) {
            super("WifiBackgroundScanStateMachine", looper);
            this.mDefaultState = new DefaultState();
            this.mStartedState = new StartedState();
            this.mPausedState = new PausedState();
            this.mActiveBackgroundScans = new RequestList<>();
            setLogRecSize(512);
            setLogOnlyTransitions(false);
            addState(this.mDefaultState);
            addState(this.mStartedState, this.mDefaultState);
            addState(this.mPausedState, this.mDefaultState);
            setInitialState(this.mDefaultState);
        }

        public Collection<WifiScanner.ScanSettings> getBackgroundScanSettings(ClientInfo ci) {
            return this.mActiveBackgroundScans.getAllSettingsForClient(ci);
        }

        public void removeBackgroundScanSettings(ClientInfo ci) {
            this.mActiveBackgroundScans.removeAllForClient(ci);
            updateSchedule();
        }

        @Override // com.android.server.wifi.WifiNative.ScanEventHandler
        public void onScanStatus(int event) {
            if (event == 0 || event == 1 || event == 2) {
                sendMessage(WifiConnectivityManager.MAX_PERIODIC_SCAN_INTERVAL_MS);
                return;
            }
            if (event == 3) {
                sendMessage(WifiScanningServiceImpl.CMD_SCAN_FAILED);
                return;
            }
            Log.e(WifiScanningServiceImpl.TAG, "Unknown scan status event: " + event);
        }

        @Override // com.android.server.wifi.WifiNative.ScanEventHandler
        public void onFullScanResult(ScanResult fullScanResult, int bucketsScanned) {
            sendMessage(WifiScanningServiceImpl.CMD_FULL_SCAN_RESULTS, 0, bucketsScanned, fullScanResult);
        }

        @Override // com.android.server.wifi.WifiNative.ScanEventHandler
        public void onScanPaused(WifiScanner.ScanData[] scanData) {
            sendMessage(WifiScanningServiceImpl.CMD_SCAN_PAUSED, scanData);
        }

        @Override // com.android.server.wifi.WifiNative.ScanEventHandler
        public void onScanRestarted() {
            sendMessage(WifiScanningServiceImpl.CMD_SCAN_RESTARTED);
        }

        class DefaultState extends State {
            DefaultState() {
            }

            public void enter() {
                WifiBackgroundScanStateMachine.this.mActiveBackgroundScans.clear();
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            public boolean processMessage(Message msg) {
                switch (msg.what) {
                    case 159746:
                    case 159747:
                    case 159748:
                    case 159765:
                    case 159766:
                        WifiScanningServiceImpl.this.replyFailed(msg, -1, "not available");
                        return true;
                    case WifiConnectivityManager.MAX_PERIODIC_SCAN_INTERVAL_MS /* 160000 */:
                    case WifiScanningServiceImpl.CMD_FULL_SCAN_RESULTS /* 160001 */:
                    default:
                        return true;
                    case WifiScanningServiceImpl.CMD_DRIVER_LOADED /* 160006 */:
                        WifiScanningServiceImpl.this.mScannerImpl = WifiScanningServiceImpl.this.mScannerImplFactory.create(WifiScanningServiceImpl.this.mContext, WifiScanningServiceImpl.this.mLooper, WifiScanningServiceImpl.this.mClock);
                        if (WifiScanningServiceImpl.this.mScannerImpl == null) {
                            WifiBackgroundScanStateMachine.this.loge("Failed to start bgscan scan state machine because scanner impl is null");
                            return true;
                        }
                        WifiScanningServiceImpl.this.mChannelHelper = WifiScanningServiceImpl.this.mScannerImpl.getChannelHelper();
                        WifiScanningServiceImpl.this.mBackgroundScheduler = new BackgroundScanScheduler(WifiScanningServiceImpl.this.mChannelHelper);
                        WifiNative.ScanCapabilities capabilities = new WifiNative.ScanCapabilities();
                        if (!WifiScanningServiceImpl.this.mScannerImpl.getScanCapabilities(capabilities)) {
                            WifiBackgroundScanStateMachine.this.loge("could not get scan capabilities");
                            return true;
                        }
                        if (capabilities.max_scan_buckets > 0) {
                            WifiScanningServiceImpl.this.mBackgroundScheduler.setMaxBuckets(capabilities.max_scan_buckets);
                            WifiScanningServiceImpl.this.mBackgroundScheduler.setMaxApPerScan(capabilities.max_ap_cache_per_scan);
                            Log.i(WifiScanningServiceImpl.TAG, "wifi driver loaded with scan capabilities: max buckets=" + capabilities.max_scan_buckets);
                            WifiBackgroundScanStateMachine wifiBackgroundScanStateMachine = WifiBackgroundScanStateMachine.this;
                            wifiBackgroundScanStateMachine.transitionTo(wifiBackgroundScanStateMachine.mStartedState);
                            return true;
                        }
                        WifiBackgroundScanStateMachine.this.loge("invalid max buckets in scan capabilities " + capabilities.max_scan_buckets);
                        return true;
                    case WifiScanningServiceImpl.CMD_DRIVER_UNLOADED /* 160007 */:
                        Log.i(WifiScanningServiceImpl.TAG, "wifi driver unloaded");
                        WifiBackgroundScanStateMachine wifiBackgroundScanStateMachine2 = WifiBackgroundScanStateMachine.this;
                        wifiBackgroundScanStateMachine2.transitionTo(wifiBackgroundScanStateMachine2.mDefaultState);
                        return true;
                }
            }
        }

        class StartedState extends State {
            StartedState() {
            }

            public void enter() {
            }

            public void exit() {
                WifiBackgroundScanStateMachine.this.sendBackgroundScanFailedToAllAndClear(-1, "Scan was interrupted");
                if (WifiScanningServiceImpl.this.mScannerImpl != null) {
                    WifiScanningServiceImpl.this.mScannerImpl.cleanup();
                }
            }

            public boolean processMessage(Message msg) {
                ClientInfo ci = (ClientInfo) WifiScanningServiceImpl.this.mClients.get(msg.replyTo);
                switch (msg.what) {
                    case 159746:
                        WifiScanningServiceImpl.this.mWifiMetrics.incrementBackgroundScanCount();
                        Bundle scanParams = (Bundle) msg.obj;
                        if (scanParams == null) {
                            WifiScanningServiceImpl.this.replyFailed(msg, -3, "params null");
                            return true;
                        }
                        scanParams.setDefusable(true);
                        WifiScanner.ScanSettings scanSettings = scanParams.getParcelable("ScanSettings");
                        WorkSource workSource = (WorkSource) scanParams.getParcelable("WorkSource");
                        if (!WifiBackgroundScanStateMachine.this.addBackgroundScanRequest(ci, msg.arg2, scanSettings, workSource)) {
                            WifiScanningServiceImpl.this.replyFailed(msg, -3, "bad request");
                        } else {
                            WifiScanningServiceImpl.this.replySucceeded(msg);
                        }
                        return true;
                    case 159747:
                        WifiBackgroundScanStateMachine.this.removeBackgroundScanRequest(ci, msg.arg2);
                        return true;
                    case 159748:
                        WifiBackgroundScanStateMachine wifiBackgroundScanStateMachine = WifiBackgroundScanStateMachine.this;
                        wifiBackgroundScanStateMachine.reportScanResults(WifiScanningServiceImpl.this.mScannerImpl.getLatestBatchedScanResults(true));
                        WifiScanningServiceImpl.this.replySucceeded(msg);
                        return true;
                    case WifiConnectivityManager.MAX_PERIODIC_SCAN_INTERVAL_MS /* 160000 */:
                        WifiBackgroundScanStateMachine wifiBackgroundScanStateMachine2 = WifiBackgroundScanStateMachine.this;
                        wifiBackgroundScanStateMachine2.reportScanResults(WifiScanningServiceImpl.this.mScannerImpl.getLatestBatchedScanResults(true));
                        return true;
                    case WifiScanningServiceImpl.CMD_FULL_SCAN_RESULTS /* 160001 */:
                        WifiBackgroundScanStateMachine.this.reportFullScanResult((ScanResult) msg.obj, msg.arg2);
                        return true;
                    case WifiScanningServiceImpl.CMD_DRIVER_LOADED /* 160006 */:
                        Log.e(WifiScanningServiceImpl.TAG, "wifi driver loaded received while already loaded");
                        return true;
                    case WifiScanningServiceImpl.CMD_DRIVER_UNLOADED /* 160007 */:
                        return false;
                    case WifiScanningServiceImpl.CMD_SCAN_PAUSED /* 160008 */:
                        WifiBackgroundScanStateMachine.this.reportScanResults((WifiScanner.ScanData[]) msg.obj);
                        WifiBackgroundScanStateMachine wifiBackgroundScanStateMachine3 = WifiBackgroundScanStateMachine.this;
                        wifiBackgroundScanStateMachine3.transitionTo(wifiBackgroundScanStateMachine3.mPausedState);
                        return true;
                    case WifiScanningServiceImpl.CMD_SCAN_FAILED /* 160010 */:
                        Log.e(WifiScanningServiceImpl.TAG, "WifiScanner background scan gave CMD_SCAN_FAILED");
                        WifiBackgroundScanStateMachine.this.sendBackgroundScanFailedToAllAndClear(-1, "Background Scan failed");
                        return true;
                    default:
                        return false;
                }
            }
        }

        class PausedState extends State {
            PausedState() {
            }

            public void enter() {
            }

            public boolean processMessage(Message msg) {
                if (msg.what == WifiScanningServiceImpl.CMD_SCAN_RESTARTED) {
                    WifiBackgroundScanStateMachine wifiBackgroundScanStateMachine = WifiBackgroundScanStateMachine.this;
                    wifiBackgroundScanStateMachine.transitionTo(wifiBackgroundScanStateMachine.mStartedState);
                    return true;
                }
                WifiBackgroundScanStateMachine.this.deferMessage(msg);
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean addBackgroundScanRequest(ClientInfo ci, int handler, WifiScanner.ScanSettings settings, WorkSource workSource) {
            if (ci == null) {
                Log.d(WifiScanningServiceImpl.TAG, "Failing scan request ClientInfo not found " + handler);
                return false;
            }
            if (settings.periodInMs < 1000) {
                loge("Failing scan request because periodInMs is " + settings.periodInMs + ", min scan period is: 1000");
                return false;
            }
            if (settings.band == 0 && settings.channels == null) {
                loge("Channels was null with unspecified band");
                return false;
            }
            if (settings.band != 0 || settings.channels.length != 0) {
                int minSupportedPeriodMs = WifiScanningServiceImpl.this.mChannelHelper.estimateScanDuration(settings);
                if (settings.periodInMs < minSupportedPeriodMs) {
                    loge("Failing scan request because minSupportedPeriodMs is " + minSupportedPeriodMs + " but the request wants " + settings.periodInMs);
                    return false;
                }
                if (settings.maxPeriodInMs != 0 && settings.maxPeriodInMs != settings.periodInMs) {
                    if (settings.maxPeriodInMs < settings.periodInMs) {
                        loge("Failing scan request because maxPeriodInMs is " + settings.maxPeriodInMs + " but less than periodInMs " + settings.periodInMs);
                        return false;
                    }
                    if (settings.maxPeriodInMs > 1024000) {
                        loge("Failing scan request because maxSupportedPeriodMs is 1024000 but the request wants " + settings.maxPeriodInMs);
                        return false;
                    }
                    if (settings.stepCount < 1) {
                        loge("Failing scan request because stepCount is " + settings.stepCount + " which is less than 1");
                        return false;
                    }
                }
                WifiScanningServiceImpl.this.logScanRequest("addBackgroundScanRequest", ci, handler, null, settings, null);
                this.mActiveBackgroundScans.addRequest(ci, handler, workSource, settings);
                if (updateSchedule()) {
                    return true;
                }
                this.mActiveBackgroundScans.removeRequest(ci, handler);
                WifiScanningServiceImpl.this.localLog("Failing scan request because failed to reset scan");
                return false;
            }
            loge("No channels specified");
            return false;
        }

        private boolean updateSchedule() {
            if (WifiScanningServiceImpl.this.mChannelHelper != null && WifiScanningServiceImpl.this.mBackgroundScheduler != null && WifiScanningServiceImpl.this.mScannerImpl != null) {
                WifiScanningServiceImpl.this.mChannelHelper.updateChannels();
                Collection<WifiScanner.ScanSettings> settings = this.mActiveBackgroundScans.getAllSettings();
                WifiScanningServiceImpl.this.mBackgroundScheduler.updateSchedule(settings);
                WifiNative.ScanSettings schedule = WifiScanningServiceImpl.this.mBackgroundScheduler.getSchedule();
                if (ScanScheduleUtil.scheduleEquals(WifiScanningServiceImpl.this.mPreviousSchedule, schedule)) {
                    return true;
                }
                WifiScanningServiceImpl.this.mPreviousSchedule = schedule;
                if (schedule.num_buckets == 0) {
                    WifiScanningServiceImpl.this.mScannerImpl.stopBatchedScan();
                    return true;
                }
                WifiScanningServiceImpl.this.localLog("starting scan: base period=" + schedule.base_period_ms + ", max ap per scan=" + schedule.max_ap_per_scan + ", batched scans=" + schedule.report_threshold_num_scans);
                for (int b = 0; b < schedule.num_buckets; b++) {
                    WifiNative.BucketSettings bucket = schedule.buckets[b];
                    WifiScanningServiceImpl.this.localLog("bucket " + bucket.bucket + " (" + bucket.period_ms + "ms)[" + bucket.report_events + "]: " + ChannelHelper.toString(bucket));
                }
                if (WifiScanningServiceImpl.this.mScannerImpl.startBatchedScan(schedule, this)) {
                    return true;
                }
                WifiScanningServiceImpl.this.mPreviousSchedule = null;
                loge("error starting scan: base period=" + schedule.base_period_ms + ", max ap per scan=" + schedule.max_ap_per_scan + ", batched scans=" + schedule.report_threshold_num_scans);
                for (int b2 = 0; b2 < schedule.num_buckets; b2++) {
                    WifiNative.BucketSettings bucket2 = schedule.buckets[b2];
                    loge("bucket " + bucket2.bucket + " (" + bucket2.period_ms + "ms)[" + bucket2.report_events + "]: " + ChannelHelper.toString(bucket2));
                }
                return false;
            }
            loge("Failed to update schedule because WifiScanningService is not initialized");
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeBackgroundScanRequest(ClientInfo ci, int handler) {
            if (ci != null) {
                WifiScanner.ScanSettings settings = this.mActiveBackgroundScans.removeRequest(ci, handler);
                WifiScanningServiceImpl.this.logScanRequest("removeBackgroundScanRequest", ci, handler, null, settings, null);
                updateSchedule();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void reportFullScanResult(ScanResult result, int bucketsScanned) {
            Iterator<RequestInfo<T>> it = this.mActiveBackgroundScans.iterator();
            while (it.hasNext()) {
                RequestInfo<WifiScanner.ScanSettings> entry = (RequestInfo) it.next();
                ClientInfo ci = entry.clientInfo;
                int handler = entry.handlerId;
                WifiScanner.ScanSettings settings = entry.settings;
                if (WifiScanningServiceImpl.this.mBackgroundScheduler.shouldReportFullScanResultForSettings(result, bucketsScanned, settings)) {
                    ScanResult newResult = new ScanResult(result);
                    if (result.informationElements != null) {
                        newResult.informationElements = (ScanResult.InformationElement[]) result.informationElements.clone();
                    } else {
                        newResult.informationElements = null;
                    }
                    ci.reportEvent(159764, 0, handler, newResult);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void reportScanResults(WifiScanner.ScanData[] results) {
            if (results == null) {
                Log.d(WifiScanningServiceImpl.TAG, "The results is null, nothing to report.");
                return;
            }
            for (WifiScanner.ScanData result : results) {
                if (result != null && result.getResults() != null) {
                    if (result.getResults().length > 0) {
                        WifiScanningServiceImpl.this.mWifiMetrics.incrementNonEmptyScanResultCount();
                    } else {
                        WifiScanningServiceImpl.this.mWifiMetrics.incrementEmptyScanResultCount();
                    }
                }
            }
            Iterator<RequestInfo<T>> it = this.mActiveBackgroundScans.iterator();
            while (it.hasNext()) {
                RequestInfo<WifiScanner.ScanSettings> entry = (RequestInfo) it.next();
                ClientInfo ci = entry.clientInfo;
                int handler = entry.handlerId;
                WifiScanner.ScanSettings settings = entry.settings;
                WifiScanner.ScanData[] resultsToDeliver = WifiScanningServiceImpl.this.mBackgroundScheduler.filterResultsForSettings(results, settings);
                if (resultsToDeliver != null) {
                    WifiScanningServiceImpl.this.logCallback("backgroundScanResults", ci, handler, WifiScanningServiceImpl.describeForLog(resultsToDeliver));
                    WifiScanner.ParcelableScanData parcelableScanData = new WifiScanner.ParcelableScanData(resultsToDeliver);
                    ci.reportEvent(159749, 0, handler, parcelableScanData);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendBackgroundScanFailedToAllAndClear(int reason, String description) {
            Iterator<RequestInfo<T>> it = this.mActiveBackgroundScans.iterator();
            while (it.hasNext()) {
                RequestInfo<WifiScanner.ScanSettings> entry = (RequestInfo) it.next();
                ClientInfo ci = entry.clientInfo;
                int handler = entry.handlerId;
                ci.reportEvent(159762, 0, handler, new WifiScanner.OperationResult(reason, description));
            }
            this.mActiveBackgroundScans.clear();
        }
    }

    class WifiPnoScanStateMachine extends StateMachine implements WifiNative.PnoEventHandler {
        private final RequestList<Pair<WifiScanner.PnoSettings, WifiScanner.ScanSettings>> mActivePnoScans;
        private final DefaultState mDefaultState;
        private final HwPnoScanState mHwPnoScanState;
        private InternalClientInfo mInternalClientInfo;
        private final SingleScanState mSingleScanState;
        private final StartedState mStartedState;

        WifiPnoScanStateMachine(Looper looper) {
            super("WifiPnoScanStateMachine", looper);
            this.mDefaultState = new DefaultState();
            this.mStartedState = new StartedState();
            this.mHwPnoScanState = new HwPnoScanState();
            this.mSingleScanState = new SingleScanState();
            this.mActivePnoScans = new RequestList<>();
            setLogRecSize(256);
            setLogOnlyTransitions(false);
            addState(this.mDefaultState);
            addState(this.mStartedState, this.mDefaultState);
            addState(this.mHwPnoScanState, this.mStartedState);
            addState(this.mSingleScanState, this.mHwPnoScanState);
            setInitialState(this.mDefaultState);
        }

        public void removePnoSettings(ClientInfo ci) {
            this.mActivePnoScans.removeAllForClient(ci);
            transitionTo(this.mStartedState);
        }

        @Override // com.android.server.wifi.WifiNative.PnoEventHandler
        public void onPnoNetworkFound(ScanResult[] results) {
            sendMessage(WifiScanningServiceImpl.CMD_PNO_NETWORK_FOUND, 0, 0, results);
        }

        @Override // com.android.server.wifi.WifiNative.PnoEventHandler
        public void onPnoScanFailed() {
            sendMessage(WifiScanningServiceImpl.CMD_PNO_SCAN_FAILED, 0, 0, null);
        }

        class DefaultState extends State {
            DefaultState() {
            }

            public void enter() {
            }

            public boolean processMessage(Message msg) {
                switch (msg.what) {
                    case 159749:
                    case 159762:
                    case WifiScanningServiceImpl.CMD_PNO_NETWORK_FOUND /* 160011 */:
                    case WifiScanningServiceImpl.CMD_PNO_SCAN_FAILED /* 160012 */:
                        WifiPnoScanStateMachine.this.loge("Unexpected message " + msg.what);
                        return true;
                    case 159768:
                    case 159769:
                        WifiScanningServiceImpl.this.replyFailed(msg, -1, "not available");
                        return true;
                    case WifiScanningServiceImpl.CMD_DRIVER_LOADED /* 160006 */:
                        if (WifiScanningServiceImpl.this.mScannerImpl == null) {
                            WifiPnoScanStateMachine.this.loge("Failed to start pno scan state machine because scanner impl is null");
                            return true;
                        }
                        WifiPnoScanStateMachine wifiPnoScanStateMachine = WifiPnoScanStateMachine.this;
                        wifiPnoScanStateMachine.transitionTo(wifiPnoScanStateMachine.mStartedState);
                        return true;
                    case WifiScanningServiceImpl.CMD_DRIVER_UNLOADED /* 160007 */:
                        WifiPnoScanStateMachine wifiPnoScanStateMachine2 = WifiPnoScanStateMachine.this;
                        wifiPnoScanStateMachine2.transitionTo(wifiPnoScanStateMachine2.mDefaultState);
                        return true;
                    default:
                        return false;
                }
            }
        }

        class StartedState extends State {
            StartedState() {
            }

            public void enter() {
            }

            public void exit() {
                WifiPnoScanStateMachine.this.sendPnoScanFailedToAllAndClear(-1, "Scan was interrupted");
            }

            public boolean processMessage(Message msg) {
                switch (msg.what) {
                    case 159768:
                        Bundle pnoParams = (Bundle) msg.obj;
                        if (pnoParams == null) {
                            WifiScanningServiceImpl.this.replyFailed(msg, -3, "params null");
                            return true;
                        }
                        pnoParams.setDefusable(true);
                        WifiScanner.PnoSettings pnoSettings = pnoParams.getParcelable("PnoSettings");
                        if (!WifiScanningServiceImpl.this.mScannerImpl.isHwPnoSupported(pnoSettings.isConnected)) {
                            WifiScanningServiceImpl.this.replyFailed(msg, -3, "not supported");
                        } else {
                            WifiPnoScanStateMachine.this.deferMessage(msg);
                            WifiPnoScanStateMachine wifiPnoScanStateMachine = WifiPnoScanStateMachine.this;
                            wifiPnoScanStateMachine.transitionTo(wifiPnoScanStateMachine.mHwPnoScanState);
                        }
                        return true;
                    case 159769:
                        WifiScanningServiceImpl.this.replyFailed(msg, -1, "no scan running");
                        return true;
                    case WifiScanningServiceImpl.CMD_DRIVER_LOADED /* 160006 */:
                        return true;
                    default:
                        return false;
                }
            }
        }

        class HwPnoScanState extends State {
            HwPnoScanState() {
            }

            public void enter() {
            }

            public void exit() {
                WifiScanningServiceImpl.this.mScannerImpl.resetHwPnoList();
                WifiPnoScanStateMachine.this.removeInternalClient();
            }

            public boolean processMessage(Message msg) {
                ClientInfo ci = (ClientInfo) WifiScanningServiceImpl.this.mClients.get(msg.replyTo);
                switch (msg.what) {
                    case 159768:
                        Bundle pnoParams = (Bundle) msg.obj;
                        if (pnoParams == null) {
                            WifiScanningServiceImpl.this.replyFailed(msg, -3, "params null");
                            return true;
                        }
                        pnoParams.setDefusable(true);
                        WifiScanner.PnoSettings pnoSettings = pnoParams.getParcelable("PnoSettings");
                        WifiScanner.ScanSettings scanSettings = pnoParams.getParcelable("ScanSettings");
                        if (!WifiPnoScanStateMachine.this.addHwPnoScanRequest(ci, msg.arg2, scanSettings, pnoSettings)) {
                            WifiScanningServiceImpl.this.replyFailed(msg, -3, "bad request");
                            WifiPnoScanStateMachine wifiPnoScanStateMachine = WifiPnoScanStateMachine.this;
                            wifiPnoScanStateMachine.transitionTo(wifiPnoScanStateMachine.mStartedState);
                        } else {
                            WifiScanningServiceImpl.this.replySucceeded(msg);
                        }
                        return true;
                    case 159769:
                        WifiPnoScanStateMachine.this.removeHwPnoScanRequest(ci, msg.arg2);
                        WifiPnoScanStateMachine wifiPnoScanStateMachine2 = WifiPnoScanStateMachine.this;
                        wifiPnoScanStateMachine2.transitionTo(wifiPnoScanStateMachine2.mStartedState);
                        return true;
                    case WifiScanningServiceImpl.CMD_PNO_NETWORK_FOUND /* 160011 */:
                        ScanResult[] scanResults = (ScanResult[]) msg.obj;
                        if (WifiPnoScanStateMachine.this.isSingleScanNeeded(scanResults)) {
                            WifiScanner.ScanSettings activeScanSettings = WifiPnoScanStateMachine.this.getScanSettings();
                            if (activeScanSettings == null) {
                                WifiPnoScanStateMachine.this.sendPnoScanFailedToAllAndClear(-1, "couldn't retrieve setting");
                                WifiPnoScanStateMachine wifiPnoScanStateMachine3 = WifiPnoScanStateMachine.this;
                                wifiPnoScanStateMachine3.transitionTo(wifiPnoScanStateMachine3.mStartedState);
                            } else {
                                WifiPnoScanStateMachine.this.addSingleScanRequest(activeScanSettings);
                                WifiPnoScanStateMachine wifiPnoScanStateMachine4 = WifiPnoScanStateMachine.this;
                                wifiPnoScanStateMachine4.transitionTo(wifiPnoScanStateMachine4.mSingleScanState);
                            }
                        } else {
                            WifiPnoScanStateMachine.this.reportPnoNetworkFound((ScanResult[]) msg.obj);
                        }
                        return true;
                    case WifiScanningServiceImpl.CMD_PNO_SCAN_FAILED /* 160012 */:
                        WifiPnoScanStateMachine.this.sendPnoScanFailedToAllAndClear(-1, "pno scan failed");
                        WifiPnoScanStateMachine wifiPnoScanStateMachine5 = WifiPnoScanStateMachine.this;
                        wifiPnoScanStateMachine5.transitionTo(wifiPnoScanStateMachine5.mStartedState);
                        return true;
                    default:
                        return false;
                }
            }
        }

        class SingleScanState extends State {
            SingleScanState() {
            }

            public void enter() {
            }

            public boolean processMessage(Message msg) {
                int i = msg.what;
                if (i == 159749) {
                    WifiScanner.ParcelableScanData parcelableScanData = (WifiScanner.ParcelableScanData) msg.obj;
                    WifiScanner.ScanData[] scanDatas = parcelableScanData.getResults();
                    WifiScanner.ScanData lastScanData = scanDatas[scanDatas.length - 1];
                    WifiPnoScanStateMachine.this.reportPnoNetworkFound(lastScanData.getResults());
                    WifiPnoScanStateMachine wifiPnoScanStateMachine = WifiPnoScanStateMachine.this;
                    wifiPnoScanStateMachine.transitionTo(wifiPnoScanStateMachine.mHwPnoScanState);
                } else if (i == 159762) {
                    WifiPnoScanStateMachine.this.sendPnoScanFailedToAllAndClear(-1, "single scan failed");
                    WifiPnoScanStateMachine wifiPnoScanStateMachine2 = WifiPnoScanStateMachine.this;
                    wifiPnoScanStateMachine2.transitionTo(wifiPnoScanStateMachine2.mStartedState);
                } else {
                    return false;
                }
                return true;
            }
        }

        private WifiNative.PnoSettings convertSettingsToPnoNative(WifiScanner.ScanSettings scanSettings, WifiScanner.PnoSettings pnoSettings) {
            WifiNative.PnoSettings nativePnoSetting = new WifiNative.PnoSettings();
            nativePnoSetting.periodInMs = scanSettings.periodInMs;
            nativePnoSetting.min5GHzRssi = pnoSettings.min5GHzRssi;
            nativePnoSetting.min24GHzRssi = pnoSettings.min24GHzRssi;
            nativePnoSetting.initialScoreMax = pnoSettings.initialScoreMax;
            nativePnoSetting.currentConnectionBonus = pnoSettings.currentConnectionBonus;
            nativePnoSetting.sameNetworkBonus = pnoSettings.sameNetworkBonus;
            nativePnoSetting.secureBonus = pnoSettings.secureBonus;
            nativePnoSetting.band5GHzBonus = pnoSettings.band5GHzBonus;
            nativePnoSetting.isConnected = pnoSettings.isConnected;
            nativePnoSetting.networkList = new WifiNative.PnoNetwork[pnoSettings.networkList.length];
            for (int i = 0; i < pnoSettings.networkList.length; i++) {
                nativePnoSetting.networkList[i] = new WifiNative.PnoNetwork();
                nativePnoSetting.networkList[i].ssid = pnoSettings.networkList[i].ssid;
                nativePnoSetting.networkList[i].flags = pnoSettings.networkList[i].flags;
                nativePnoSetting.networkList[i].auth_bit_field = pnoSettings.networkList[i].authBitField;
                nativePnoSetting.networkList[i].frequencies = pnoSettings.networkList[i].frequencies;
            }
            return nativePnoSetting;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public WifiScanner.ScanSettings getScanSettings() {
            Iterator<Pair<WifiScanner.PnoSettings, WifiScanner.ScanSettings>> it = this.mActivePnoScans.getAllSettings().iterator();
            if (it.hasNext()) {
                Pair<WifiScanner.PnoSettings, WifiScanner.ScanSettings> settingsPair = it.next();
                return (WifiScanner.ScanSettings) settingsPair.second;
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeInternalClient() {
            InternalClientInfo internalClientInfo = this.mInternalClientInfo;
            if (internalClientInfo != null) {
                internalClientInfo.cleanup();
                this.mInternalClientInfo = null;
            } else {
                Log.w(WifiScanningServiceImpl.TAG, "No Internal client for PNO");
            }
        }

        private void addInternalClient(ClientInfo ci) {
            if (this.mInternalClientInfo == null) {
                this.mInternalClientInfo = WifiScanningServiceImpl.this.new InternalClientInfo(ci.getUid(), new Messenger(getHandler()));
                this.mInternalClientInfo.register();
            } else {
                Log.w(WifiScanningServiceImpl.TAG, "Internal client for PNO already exists");
            }
        }

        private void addPnoScanRequest(ClientInfo ci, int handler, WifiScanner.ScanSettings scanSettings, WifiScanner.PnoSettings pnoSettings) {
            this.mActivePnoScans.addRequest(ci, handler, ClientModeImpl.WIFI_WORK_SOURCE, Pair.create(pnoSettings, scanSettings));
            addInternalClient(ci);
        }

        private Pair<WifiScanner.PnoSettings, WifiScanner.ScanSettings> removePnoScanRequest(ClientInfo ci, int handler) {
            Pair<WifiScanner.PnoSettings, WifiScanner.ScanSettings> settings = this.mActivePnoScans.removeRequest(ci, handler);
            return settings;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean addHwPnoScanRequest(ClientInfo ci, int handler, WifiScanner.ScanSettings scanSettings, WifiScanner.PnoSettings pnoSettings) {
            if (ci == null) {
                Log.d(WifiScanningServiceImpl.TAG, "Failing scan request ClientInfo not found " + handler);
                return false;
            }
            if (!this.mActivePnoScans.isEmpty()) {
                loge("Failing scan request because there is already an active scan");
                return false;
            }
            WifiNative.PnoSettings nativePnoSettings = convertSettingsToPnoNative(scanSettings, pnoSettings);
            if (!WifiScanningServiceImpl.this.mScannerImpl.setHwPnoList(nativePnoSettings, WifiScanningServiceImpl.this.mPnoScanStateMachine)) {
                return false;
            }
            WifiScanningServiceImpl.this.logScanRequest("addHwPnoScanRequest", ci, handler, null, scanSettings, pnoSettings);
            addPnoScanRequest(ci, handler, scanSettings, pnoSettings);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeHwPnoScanRequest(ClientInfo ci, int handler) {
            if (ci != null) {
                Pair<WifiScanner.PnoSettings, WifiScanner.ScanSettings> settings = removePnoScanRequest(ci, handler);
                WifiScanningServiceImpl.this.logScanRequest("removeHwPnoScanRequest", ci, handler, null, (WifiScanner.ScanSettings) settings.second, (WifiScanner.PnoSettings) settings.first);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void reportPnoNetworkFound(ScanResult[] results) {
            WifiScanner.ParcelableScanResults parcelableScanResults = new WifiScanner.ParcelableScanResults(results);
            Iterator<RequestInfo<T>> it = this.mActivePnoScans.iterator();
            while (it.hasNext()) {
                RequestInfo<Pair<WifiScanner.PnoSettings, WifiScanner.ScanSettings>> entry = (RequestInfo) it.next();
                ClientInfo ci = entry.clientInfo;
                int handler = entry.handlerId;
                WifiScanningServiceImpl.this.logCallback("pnoNetworkFound", ci, handler, WifiScanningServiceImpl.describeForLog(results));
                ci.reportEvent(159770, 0, handler, parcelableScanResults);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendPnoScanFailedToAllAndClear(int reason, String description) {
            Iterator<RequestInfo<T>> it = this.mActivePnoScans.iterator();
            while (it.hasNext()) {
                RequestInfo<Pair<WifiScanner.PnoSettings, WifiScanner.ScanSettings>> entry = (RequestInfo) it.next();
                ClientInfo ci = entry.clientInfo;
                int handler = entry.handlerId;
                ci.reportEvent(159762, 0, handler, new WifiScanner.OperationResult(reason, description));
            }
            this.mActivePnoScans.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addSingleScanRequest(WifiScanner.ScanSettings settings) {
            InternalClientInfo internalClientInfo = this.mInternalClientInfo;
            if (internalClientInfo != null) {
                internalClientInfo.sendRequestToClientHandler(159765, settings, ClientModeImpl.WIFI_WORK_SOURCE);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isSingleScanNeeded(ScanResult[] scanResults) {
            for (ScanResult scanResult : scanResults) {
                if (scanResult.informationElements != null && scanResult.informationElements.length > 0) {
                    return false;
                }
            }
            return true;
        }
    }

    private abstract class ClientInfo {
        protected final Messenger mMessenger;
        private boolean mScanWorkReported = false;
        private final int mUid;
        private final WorkSource mWorkSource;

        public abstract void reportEvent(int i, int i2, int i3, Object obj);

        ClientInfo(int uid, Messenger messenger) {
            this.mUid = uid;
            this.mMessenger = messenger;
            this.mWorkSource = new WorkSource(uid);
        }

        public void register() {
            WifiScanningServiceImpl.this.mClients.put(this.mMessenger, this);
        }

        private void unregister() {
            WifiScanningServiceImpl.this.mClients.remove(this.mMessenger);
        }

        public void cleanup() {
            WifiScanningServiceImpl.this.mSingleScanListeners.removeAllForClient(this);
            WifiScanningServiceImpl.this.mSingleScanStateMachine.removeSingleScanRequests(this);
            WifiScanningServiceImpl.this.mBackgroundScanStateMachine.removeBackgroundScanSettings(this);
            unregister();
            WifiScanningServiceImpl.this.localLog("Successfully stopped all requests for client " + this);
        }

        public int getUid() {
            return this.mUid;
        }

        public void reportEvent(int what, int arg1, int arg2) {
            reportEvent(what, arg1, arg2, null);
        }

        private void reportBatchedScanStart() {
            if (this.mUid == 0) {
                return;
            }
            int csph = getCsph();
            try {
                WifiScanningServiceImpl.this.mBatteryStats.noteWifiBatchedScanStartedFromSource(this.mWorkSource, csph);
            } catch (RemoteException e) {
                WifiScanningServiceImpl.this.logw("failed to report scan work: " + e.toString());
            }
        }

        private void reportBatchedScanStop() {
            if (this.mUid != 0) {
                try {
                    WifiScanningServiceImpl.this.mBatteryStats.noteWifiBatchedScanStoppedFromSource(this.mWorkSource);
                } catch (RemoteException e) {
                    WifiScanningServiceImpl.this.logw("failed to cleanup scan work: " + e.toString());
                }
            }
        }

        private int getCsph() {
            int totalScanDurationPerHour = 0;
            Collection<WifiScanner.ScanSettings> settingsList = WifiScanningServiceImpl.this.mBackgroundScanStateMachine.getBackgroundScanSettings(this);
            for (WifiScanner.ScanSettings settings : settingsList) {
                int scanDurationMs = WifiScanningServiceImpl.this.mChannelHelper.estimateScanDuration(settings);
                int scans_per_Hour = settings.periodInMs == 0 ? 1 : WifiMetrics.MIN_WIFI_GOOD_USABILITY_STATS_PERIOD_MS / settings.periodInMs;
                totalScanDurationPerHour += scanDurationMs * scans_per_Hour;
            }
            return totalScanDurationPerHour / ChannelHelper.SCAN_PERIOD_PER_CHANNEL_MS;
        }

        private void reportScanWorkUpdate() {
            if (this.mScanWorkReported) {
                reportBatchedScanStop();
                this.mScanWorkReported = false;
            }
            if (WifiScanningServiceImpl.this.mBackgroundScanStateMachine.getBackgroundScanSettings(this).isEmpty()) {
                reportBatchedScanStart();
                this.mScanWorkReported = true;
            }
        }

        public String toString() {
            return "ClientInfo[uid=" + this.mUid + "," + this.mMessenger + "]";
        }
    }

    private class ExternalClientInfo extends ClientInfo {
        private final AsyncChannel mChannel;
        private boolean mDisconnected;

        ExternalClientInfo(int uid, Messenger messenger, AsyncChannel c) {
            super(uid, messenger);
            this.mDisconnected = false;
            this.mChannel = c;
        }

        @Override // com.android.server.wifi.scanner.WifiScanningServiceImpl.ClientInfo
        public void reportEvent(int what, int arg1, int arg2, Object obj) {
            if (!this.mDisconnected) {
                this.mChannel.sendMessage(what, arg1, arg2, obj);
            }
        }

        @Override // com.android.server.wifi.scanner.WifiScanningServiceImpl.ClientInfo
        public void cleanup() {
            this.mDisconnected = true;
            WifiScanningServiceImpl.this.mPnoScanStateMachine.removePnoSettings(this);
            super.cleanup();
        }
    }

    private class InternalClientInfo extends ClientInfo {
        private static final int INTERNAL_CLIENT_HANDLER = 0;

        InternalClientInfo(int requesterUid, Messenger messenger) {
            super(requesterUid, messenger);
        }

        @Override // com.android.server.wifi.scanner.WifiScanningServiceImpl.ClientInfo
        public void reportEvent(int what, int arg1, int arg2, Object obj) {
            Message message = Message.obtain();
            message.what = what;
            message.arg1 = arg1;
            message.arg2 = arg2;
            message.obj = obj;
            try {
                this.mMessenger.send(message);
            } catch (RemoteException e) {
                WifiScanningServiceImpl.this.loge("Failed to send message: " + what);
            }
        }

        public void sendRequestToClientHandler(int what, WifiScanner.ScanSettings settings, WorkSource workSource) {
            Message msg = Message.obtain();
            msg.what = what;
            msg.arg2 = 0;
            if (settings != null) {
                Bundle bundle = new Bundle();
                bundle.putParcelable("ScanSettings", settings);
                bundle.putParcelable("WorkSource", workSource);
                msg.obj = bundle;
            }
            msg.replyTo = this.mMessenger;
            msg.sendingUid = getUid();
            WifiScanningServiceImpl.this.mClientHandler.sendMessage(msg);
        }

        public void sendRequestToClientHandler(int what) {
            sendRequestToClientHandler(what, null, null);
        }

        @Override // com.android.server.wifi.scanner.WifiScanningServiceImpl.ClientInfo
        public String toString() {
            return "InternalClientInfo[]";
        }
    }

    void replySucceeded(Message msg) {
        if (msg.replyTo != null) {
            Message reply = Message.obtain();
            reply.what = 159761;
            reply.arg2 = msg.arg2;
            if (msg.obj != null) {
                reply.obj = msg.obj;
            }
            try {
                msg.replyTo.send(reply);
                this.mLog.trace("replySucceeded recvdMessage=%").c(msg.what).flush();
            } catch (RemoteException e) {
            }
        }
    }

    void replyFailed(Message msg, int reason, String description) {
        if (msg.replyTo != null) {
            Message reply = Message.obtain();
            reply.what = 159762;
            reply.arg2 = msg.arg2;
            reply.obj = new WifiScanner.OperationResult(reason, description);
            try {
                msg.replyTo.send(reply);
                this.mLog.trace("replyFailed recvdMessage=% reason=%").c(msg.what).c(reason).flush();
            } catch (RemoteException e) {
            }
        }
    }

    private static String toString(int uid, WifiScanner.ScanSettings settings) {
        StringBuilder sb = new StringBuilder();
        sb.append("ScanSettings[uid=");
        sb.append(uid);
        sb.append(", period=");
        sb.append(settings.periodInMs);
        sb.append(", report=");
        sb.append(settings.reportEvents);
        if (settings.reportEvents == 0 && settings.numBssidsPerScan > 0 && settings.maxScansToCache > 1) {
            sb.append(", batch=");
            sb.append(settings.maxScansToCache);
            sb.append(", numAP=");
            sb.append(settings.numBssidsPerScan);
        }
        sb.append(", ");
        sb.append(ChannelHelper.toString(settings));
        sb.append("]");
        return sb.toString();
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        WifiNative.ScanSettings schedule;
        if (this.mContext.checkCallingOrSelfPermission("android.permission.DUMP") != 0) {
            pw.println("Permission Denial: can't dump WifiScanner from from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " without permission android.permission.DUMP");
            return;
        }
        pw.println("WifiScanningService - Log Begin ----");
        this.mLocalLog.dump(fd, pw, args);
        pw.println("WifiScanningService - Log End ----");
        pw.println();
        pw.println("clients:");
        Iterator<ClientInfo> it = this.mClients.values().iterator();
        while (it.hasNext()) {
            pw.println("  " + it.next());
        }
        pw.println("listeners:");
        for (ClientInfo client : this.mClients.values()) {
            Collection<WifiScanner.ScanSettings> settingsList = this.mBackgroundScanStateMachine.getBackgroundScanSettings(client);
            for (WifiScanner.ScanSettings settings : settingsList) {
                pw.println("  " + toString(client.mUid, settings));
            }
        }
        BackgroundScanScheduler backgroundScanScheduler = this.mBackgroundScheduler;
        if (backgroundScanScheduler != null && (schedule = backgroundScanScheduler.getSchedule()) != null) {
            pw.println("schedule:");
            pw.println("  base period: " + schedule.base_period_ms);
            pw.println("  max ap per scan: " + schedule.max_ap_per_scan);
            pw.println("  batched scans: " + schedule.report_threshold_num_scans);
            pw.println("  buckets:");
            for (int b = 0; b < schedule.num_buckets; b++) {
                WifiNative.BucketSettings bucket = schedule.buckets[b];
                pw.println("    bucket " + bucket.bucket + " (" + bucket.period_ms + "ms)[" + bucket.report_events + "]: " + ChannelHelper.toString(bucket));
            }
        }
        WifiPnoScanStateMachine wifiPnoScanStateMachine = this.mPnoScanStateMachine;
        if (wifiPnoScanStateMachine != null) {
            wifiPnoScanStateMachine.dump(fd, pw, args);
        }
        pw.println();
        WifiSingleScanStateMachine wifiSingleScanStateMachine = this.mSingleScanStateMachine;
        if (wifiSingleScanStateMachine != null) {
            wifiSingleScanStateMachine.dump(fd, pw, args);
            pw.println();
            pw.println("Latest scan results:");
            List<ScanResult> scanResults = this.mSingleScanStateMachine.getCachedScanResultsAsList();
            long nowMs = this.mClock.getElapsedSinceBootMillis();
            ScanResultUtil.dumpScanResults(pw, scanResults, nowMs);
            pw.println();
        }
        WifiScannerImpl wifiScannerImpl = this.mScannerImpl;
        if (wifiScannerImpl != null) {
            wifiScannerImpl.dump(fd, pw, args);
        }
    }

    void logScanRequest(String request, ClientInfo ci, int id, WorkSource workSource, WifiScanner.ScanSettings settings, WifiScanner.PnoSettings pnoSettings) {
        StringBuilder sb = new StringBuilder();
        sb.append(request);
        sb.append(": ");
        sb.append(ci == null ? "ClientInfo[unknown]" : ci.toString());
        sb.append(",Id=");
        sb.append(id);
        if (workSource != null) {
            sb.append(",");
            sb.append(workSource);
        }
        if (settings != null) {
            sb.append(", ");
            describeTo(sb, settings);
        }
        if (pnoSettings != null) {
            sb.append(", ");
            describeTo(sb, pnoSettings);
        }
        localLog(sb.toString());
    }

    void logCallback(String callback, ClientInfo ci, int id, String extra) {
        StringBuilder sb = new StringBuilder();
        sb.append(callback);
        sb.append(": ");
        sb.append(ci == null ? "ClientInfo[unknown]" : ci.toString());
        sb.append(",Id=");
        sb.append(id);
        if (extra != null) {
            sb.append(",");
            sb.append(extra);
        }
        localLog(sb.toString());
    }

    static String describeForLog(WifiScanner.ScanData[] results) {
        StringBuilder sb = new StringBuilder();
        sb.append("results=");
        for (int i = 0; i < results.length; i++) {
            if (i > 0) {
                sb.append(NAIRealmData.NAI_REALM_STRING_SEPARATOR);
            }
            sb.append(results[i].getResults().length);
        }
        return sb.toString();
    }

    static String describeForLog(ScanResult[] results) {
        return "results=" + results.length;
    }

    static String getScanTypeString(int type) {
        if (type == 0) {
            return "LOW LATENCY";
        }
        if (type == 1) {
            return "LOW POWER";
        }
        if (type == 2) {
            return "HIGH ACCURACY";
        }
        throw new IllegalArgumentException("Invalid scan type " + type);
    }

    static String describeTo(StringBuilder sb, WifiScanner.ScanSettings scanSettings) {
        sb.append("ScanSettings { ");
        sb.append(" type:");
        sb.append(getScanTypeString(scanSettings.type));
        sb.append(" band:");
        sb.append(ChannelHelper.bandToString(scanSettings.band));
        sb.append(" ignoreLocationSettings:");
        sb.append(scanSettings.ignoreLocationSettings);
        sb.append(" period:");
        sb.append(scanSettings.periodInMs);
        sb.append(" reportEvents:");
        sb.append(scanSettings.reportEvents);
        sb.append(" numBssidsPerScan:");
        sb.append(scanSettings.numBssidsPerScan);
        sb.append(" maxScansToCache:");
        sb.append(scanSettings.maxScansToCache);
        sb.append(" channels:[ ");
        if (scanSettings.channels != null) {
            for (int i = 0; i < scanSettings.channels.length; i++) {
                sb.append(scanSettings.channels[i].frequency);
                sb.append(" ");
            }
        }
        sb.append(" ] ");
        sb.append(" } ");
        return sb.toString();
    }

    static String describeTo(StringBuilder sb, WifiScanner.PnoSettings pnoSettings) {
        sb.append("PnoSettings { ");
        sb.append(" min5GhzRssi:");
        sb.append(pnoSettings.min5GHzRssi);
        sb.append(" min24GhzRssi:");
        sb.append(pnoSettings.min24GHzRssi);
        sb.append(" initialScoreMax:");
        sb.append(pnoSettings.initialScoreMax);
        sb.append(" currentConnectionBonus:");
        sb.append(pnoSettings.currentConnectionBonus);
        sb.append(" sameNetworkBonus:");
        sb.append(pnoSettings.sameNetworkBonus);
        sb.append(" secureBonus:");
        sb.append(pnoSettings.secureBonus);
        sb.append(" band5GhzBonus:");
        sb.append(pnoSettings.band5GHzBonus);
        sb.append(" isConnected:");
        sb.append(pnoSettings.isConnected);
        sb.append(" networks:[ ");
        if (pnoSettings.networkList != null) {
            for (int i = 0; i < pnoSettings.networkList.length; i++) {
                sb.append(pnoSettings.networkList[i].ssid);
                sb.append(",");
            }
        }
        sb.append(" ] ");
        sb.append(" } ");
        return sb.toString();
    }

    private class WifiSensorEventListener implements SensorEventListener {
        private WifiSensorEventListener() {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent event) {
            WifiScanningServiceImpl.this.handlePocketModeChanged(event);
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int accuracy) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePocketModeChanged(SensorEvent event) {
        int eventValue = (int) event.values[0];
        if (eventValue == 1) {
            this.mInPocketMode = true;
        } else {
            this.mInPocketMode = false;
        }
        Log.i(TAG, "handlePocketModeChanged() eventValue = " + eventValue + " mPocketModeSwitch = " + this.mPocketModeSwitch + " mInPocketMode = " + this.mInPocketMode);
    }
}
