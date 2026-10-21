package com.android.server.wifi;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Log;
import com.android.internal.util.State;
import com.android.internal.util.StateMachine;
import com.android.server.wifi.util.WifiPermissionsUtil;

/* JADX INFO: loaded from: classes.dex */
public class WifiController extends StateMachine {
    private static final int BASE = 155648;
    static final int CMD_AIRPLANE_TOGGLED = 155657;
    static final int CMD_AP_START_FAILURE = 155661;
    static final int CMD_AP_STOPPED = 155663;
    static final int CMD_DEFERRED_RECOVERY_RESTART_WIFI = 155670;
    static final int CMD_DEFERRED_TOGGLE = 155659;
    static final int CMD_EMERGENCY_CALL_STATE_CHANGED = 155662;
    static final int CMD_EMERGENCY_MODE_CHANGED = 155649;
    static final int CMD_RECOVERY_DISABLE_WIFI = 155667;
    static final int CMD_RECOVERY_RESTART_WIFI = 155665;
    private static final int CMD_RECOVERY_RESTART_WIFI_CONTINUE = 155666;
    static final int CMD_RESTART_AP = 155671;
    static final int CMD_SCANNING_STOPPED = 155669;
    static final int CMD_SCAN_ALWAYS_MODE_CHANGED = 155655;
    static final int CMD_SET_AP = 155658;
    static final int CMD_STA_START_FAILURE = 155664;
    static final int CMD_STA_STOPPED = 155668;
    static final int CMD_WIFI_TOGGLED = 155656;
    private static final boolean DBG = false;
    private static final long DEFAULT_REENABLE_DELAY_MS = 500;
    private static final long DEFER_MARGIN_MS = 5;
    private static final int MAX_RECOVERY_TIMEOUT_DELAY_MS = 4000;
    private static final String TAG = "WifiController";
    private final ActiveModeWarden mActiveModeWarden;
    private ClientModeManager.Listener mClientModeCallback;
    private final ClientModeImpl mClientModeImpl;
    private final Looper mClientModeImplLooper;
    private ConnectivityManager mConnectivityManager;
    private Context mContext;
    private DefaultState mDefaultState;
    private EcmState mEcmState;
    private final FrameworkFacade mFacade;
    private boolean mFirstUserSignOnSeen;
    private long mReEnableDelayMillis;
    private int mRecoveryDelayMillis;
    private boolean mRestartSoftap;
    private ScanOnlyModeManager.Listener mScanOnlyModeCallback;
    private final WifiSettingsStore mSettingsStore;
    private StaDisabledState mStaDisabledState;
    private StaDisabledWithScanState mStaDisabledWithScanState;
    private StaEnabledState mStaEnabledState;
    OnStartTetheringCallback mTetheringCallback;
    private final WifiPermissionsUtil mWifiPermissionsUtil;

    WifiController(Context context, ClientModeImpl clientModeImpl, Looper clientModeImplLooper, WifiSettingsStore wss, Looper wifiServiceLooper, FrameworkFacade f, ActiveModeWarden amw, WifiPermissionsUtil wifiPermissionsUtil) {
        super(TAG, wifiServiceLooper);
        this.mFirstUserSignOnSeen = false;
        this.mRestartSoftap = false;
        this.mDefaultState = new DefaultState();
        this.mStaEnabledState = new StaEnabledState();
        this.mStaDisabledState = new StaDisabledState();
        this.mStaDisabledWithScanState = new StaDisabledWithScanState();
        this.mEcmState = new EcmState();
        this.mScanOnlyModeCallback = new ScanOnlyCallback();
        this.mClientModeCallback = new ClientModeCallback();
        this.mTetheringCallback = null;
        this.mFacade = f;
        this.mContext = context;
        this.mClientModeImpl = clientModeImpl;
        this.mClientModeImplLooper = clientModeImplLooper;
        this.mActiveModeWarden = amw;
        this.mSettingsStore = wss;
        this.mWifiPermissionsUtil = wifiPermissionsUtil;
        addState(this.mDefaultState);
        addState(this.mStaDisabledState, this.mDefaultState);
        addState(this.mStaEnabledState, this.mDefaultState);
        addState(this.mStaDisabledWithScanState, this.mDefaultState);
        addState(this.mEcmState, this.mDefaultState);
        setLogRecSize(100);
        setLogOnlyTransitions(false);
        this.mActiveModeWarden.registerScanOnlyCallback(this.mScanOnlyModeCallback);
        this.mActiveModeWarden.registerClientModeCallback(this.mClientModeCallback);
        readWifiReEnableDelay();
        readWifiRecoveryDelay();
    }

    public void start() {
        boolean isAirplaneModeOn = this.mSettingsStore.isAirplaneModeOn();
        boolean isWifiEnabled = this.mSettingsStore.isWifiToggleEnabled();
        boolean isScanningAlwaysAvailable = this.mSettingsStore.isScanAlwaysAvailable();
        boolean isLocationModeActive = this.mWifiPermissionsUtil.isLocationModeEnabled();
        log("isAirplaneModeOn = " + isAirplaneModeOn + ", isWifiEnabled = " + isWifiEnabled + ", isScanningAvailable = " + isScanningAlwaysAvailable + ", isLocationModeActive = " + isLocationModeActive);
        if (checkScanOnlyModeAvailable()) {
            setInitialState(this.mStaDisabledWithScanState);
        } else {
            setInitialState(this.mStaDisabledState);
        }
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.net.wifi.WIFI_AP_STATE_CHANGED");
        filter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        filter.addAction("android.location.MODE_CHANGED");
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.wifi.WifiController.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if (action.equals("android.net.wifi.WIFI_AP_STATE_CHANGED")) {
                    int state = intent.getIntExtra("wifi_state", 14);
                    if (state == 14) {
                        Log.e(WifiController.TAG, "SoftAP start failed");
                        WifiController.this.sendMessage(WifiController.CMD_AP_START_FAILURE);
                        return;
                    } else {
                        if (state == 11) {
                            WifiController.this.sendMessage(WifiController.CMD_AP_STOPPED);
                            return;
                        }
                        return;
                    }
                }
                if (action.equals("android.location.MODE_CHANGED")) {
                    WifiController.this.sendMessage(WifiController.CMD_SCAN_ALWAYS_MODE_CHANGED);
                }
            }
        }, new IntentFilter(filter));
        super.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkScanOnlyModeAvailable() {
        if (!this.mWifiPermissionsUtil.isLocationModeEnabled()) {
            return false;
        }
        return this.mSettingsStore.isScanAlwaysAvailable();
    }

    private class ScanOnlyCallback implements ScanOnlyModeManager.Listener {
        private ScanOnlyCallback() {
        }

        @Override // com.android.server.wifi.ScanOnlyModeManager.Listener
        public void onStateChanged(int state) {
            if (state == 4) {
                Log.d(WifiController.TAG, "ScanOnlyMode unexpected failure: state unknown");
                return;
            }
            if (state == 1) {
                Log.d(WifiController.TAG, "ScanOnlyMode stopped");
                WifiController.this.sendMessage(WifiController.CMD_SCANNING_STOPPED);
            } else {
                if (state == 3) {
                    Log.d(WifiController.TAG, "scan mode active");
                    return;
                }
                Log.d(WifiController.TAG, "unexpected state update: " + state);
            }
        }
    }

    private class ClientModeCallback implements ClientModeManager.Listener {
        private ClientModeCallback() {
        }

        @Override // com.android.server.wifi.ClientModeManager.Listener
        public void onStateChanged(int state) {
            if (state == 4) {
                WifiController.this.logd("ClientMode unexpected failure: state unknown");
                WifiController.this.sendMessage(WifiController.CMD_STA_START_FAILURE);
                return;
            }
            if (state == 1) {
                WifiController.this.logd("ClientMode stopped");
                WifiController.this.sendMessage(WifiController.CMD_STA_STOPPED);
            } else {
                if (state == 3) {
                    WifiController.this.logd("client mode active");
                    return;
                }
                WifiController.this.logd("unexpected state update: " + state);
            }
        }
    }

    private void readWifiReEnableDelay() {
        this.mReEnableDelayMillis = this.mFacade.getLongSetting(this.mContext, "wifi_reenable_delay", DEFAULT_REENABLE_DELAY_MS);
    }

    private void readWifiRecoveryDelay() {
        this.mRecoveryDelayMillis = this.mContext.getResources().getInteger(R.integer.config_multiuserMaximumUsers);
        if (this.mRecoveryDelayMillis > MAX_RECOVERY_TIMEOUT_DELAY_MS) {
            this.mRecoveryDelayMillis = MAX_RECOVERY_TIMEOUT_DELAY_MS;
            Log.w(TAG, "Overriding timeout delay with maximum limit value");
        }
    }

    class DefaultState extends State {
        DefaultState() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:39:0x0172  */
        /* JADX WARN: Code duplicated, block: B:41:0x0176  */
        public boolean processMessage(Message msg) {
            int thewhat = msg.what - WifiController.BASE;
            WifiController.this.log("DefaultState wifi msg:" + thewhat);
            int i = msg.what;
            if (i != WifiController.CMD_EMERGENCY_MODE_CHANGED) {
                switch (i) {
                    case WifiController.CMD_SCAN_ALWAYS_MODE_CHANGED /* 155655 */:
                    case WifiController.CMD_WIFI_TOGGLED /* 155656 */:
                        break;
                    case WifiController.CMD_AIRPLANE_TOGGLED /* 155657 */:
                        if (WifiController.this.mSettingsStore.isAirplaneModeOn()) {
                            WifiController.this.log("Airplane mode toggled, shutdown all modes");
                            WifiController.this.mActiveModeWarden.shutdownWifi();
                            WifiController wifiController = WifiController.this;
                            wifiController.transitionTo(wifiController.mStaDisabledState);
                        } else {
                            WifiController.this.log("Airplane mode disabled, determine next state");
                            if (!SystemProperties.getBoolean("persist.lsec.wifiap", false)) {
                                if (!WifiController.this.mSettingsStore.isWifiToggleEnabled()) {
                                    if (WifiController.this.checkScanOnlyModeAvailable()) {
                                        WifiController wifiController2 = WifiController.this;
                                        wifiController2.transitionTo(wifiController2.mStaDisabledWithScanState);
                                    }
                                } else {
                                    WifiController wifiController3 = WifiController.this;
                                    wifiController3.transitionTo(wifiController3.mStaEnabledState);
                                }
                            } else {
                                SoftApModeConfiguration config = new SoftApModeConfiguration(1, null);
                                WifiController.this.mActiveModeWarden.enterSoftAPMode(config);
                            }
                        }
                        break;
                    case WifiController.CMD_SET_AP /* 155658 */:
                        if (msg.arg1 != 1) {
                            WifiController.this.mActiveModeWarden.stopSoftAPMode(msg.arg2);
                        } else {
                            WifiController.this.mActiveModeWarden.enterSoftAPMode((SoftApModeConfiguration) msg.obj);
                        }
                        break;
                    case WifiController.CMD_DEFERRED_TOGGLE /* 155659 */:
                        WifiController.this.log("DEFERRED_TOGGLE ignored due to state change");
                        break;
                    default:
                        switch (i) {
                            case WifiController.CMD_AP_START_FAILURE /* 155661 */:
                            case WifiController.CMD_STA_START_FAILURE /* 155664 */:
                            case WifiController.CMD_RECOVERY_RESTART_WIFI_CONTINUE /* 155666 */:
                            case WifiController.CMD_STA_STOPPED /* 155668 */:
                            case WifiController.CMD_SCANNING_STOPPED /* 155669 */:
                            case WifiController.CMD_DEFERRED_RECOVERY_RESTART_WIFI /* 155670 */:
                                break;
                            case WifiController.CMD_EMERGENCY_CALL_STATE_CHANGED /* 155662 */:
                                if (msg.arg1 == 1) {
                                    WifiController wifiController4 = WifiController.this;
                                    wifiController4.transitionTo(wifiController4.mEcmState);
                                }
                                break;
                            case WifiController.CMD_AP_STOPPED /* 155663 */:
                                WifiController.this.log("SoftAp mode disabled, determine next state");
                                if (WifiController.this.mRestartSoftap) {
                                    WifiController.this.mRestartSoftap = false;
                                    WifiController.this.setWifiTetheringEnabled(true);
                                } else if (!WifiController.this.mSettingsStore.isWifiToggleEnabled()) {
                                    if (WifiController.this.checkScanOnlyModeAvailable()) {
                                        WifiController wifiController5 = WifiController.this;
                                        wifiController5.transitionTo(wifiController5.mStaDisabledWithScanState);
                                    }
                                } else {
                                    WifiController wifiController6 = WifiController.this;
                                    wifiController6.transitionTo(wifiController6.mStaEnabledState);
                                }
                                break;
                            case WifiController.CMD_RECOVERY_RESTART_WIFI /* 155665 */:
                                WifiController wifiController7 = WifiController.this;
                                wifiController7.deferMessage(wifiController7.obtainMessage(WifiController.CMD_DEFERRED_RECOVERY_RESTART_WIFI));
                                WifiController.this.mActiveModeWarden.shutdownWifi();
                                WifiController wifiController8 = WifiController.this;
                                wifiController8.transitionTo(wifiController8.mStaDisabledState);
                                break;
                            case WifiController.CMD_RECOVERY_DISABLE_WIFI /* 155667 */:
                                WifiController.this.log("Recovery has been throttled, disable wifi");
                                WifiController.this.mActiveModeWarden.shutdownWifi();
                                WifiController wifiController9 = WifiController.this;
                                wifiController9.transitionTo(wifiController9.mStaDisabledState);
                                break;
                            case WifiController.CMD_RESTART_AP /* 155671 */:
                                WifiController.this.log("SoftAp should restart");
                                WifiController.this.mRestartSoftap = true;
                                WifiController.this.setWifiTetheringEnabled(false);
                                break;
                            default:
                                throw new RuntimeException("WifiController.handleMessage " + msg.what);
                        }
                        break;
                }
            } else if (msg.arg1 == 1) {
                WifiController wifiController10 = WifiController.this;
                wifiController10.transitionTo(wifiController10.mEcmState);
            }
            return true;
        }
    }

    class StaDisabledState extends State {
        private long mDisabledTimestamp;
        private int mDeferredEnableSerialNumber = 0;
        private boolean mHaveDeferredEnable = false;

        StaDisabledState() {
        }

        public void enter() {
            WifiController.this.mActiveModeWarden.disableWifi();
            this.mDisabledTimestamp = SystemClock.elapsedRealtime();
            this.mDeferredEnableSerialNumber++;
            this.mHaveDeferredEnable = false;
        }

        public boolean processMessage(Message msg) {
            int thewhat = msg.what - WifiController.BASE;
            WifiController.this.log("StaDisabledState wifi msg:" + thewhat);
            switch (msg.what) {
                case WifiController.CMD_SCAN_ALWAYS_MODE_CHANGED /* 155655 */:
                    if (WifiController.this.checkScanOnlyModeAvailable()) {
                        WifiController wifiController = WifiController.this;
                        wifiController.transitionTo(wifiController.mStaDisabledWithScanState);
                    }
                    return true;
                case WifiController.CMD_WIFI_TOGGLED /* 155656 */:
                    if (!WifiController.this.mSettingsStore.isWifiToggleEnabled()) {
                        if (WifiController.this.checkScanOnlyModeAvailable() && WifiController.this.mSettingsStore.isAirplaneModeOn()) {
                            WifiController wifiController2 = WifiController.this;
                            wifiController2.transitionTo(wifiController2.mStaDisabledWithScanState);
                        }
                    } else if (doDeferEnable(msg)) {
                        if (this.mHaveDeferredEnable) {
                            this.mDeferredEnableSerialNumber++;
                        }
                        this.mHaveDeferredEnable = !this.mHaveDeferredEnable;
                    } else {
                        WifiController wifiController3 = WifiController.this;
                        wifiController3.transitionTo(wifiController3.mStaEnabledState);
                    }
                    return true;
                case WifiController.CMD_SET_AP /* 155658 */:
                    if (msg.arg1 == 1) {
                        WifiController.this.mSettingsStore.setWifiSavedState(0);
                    }
                    return false;
                case WifiController.CMD_DEFERRED_TOGGLE /* 155659 */:
                    if (msg.arg1 != this.mDeferredEnableSerialNumber) {
                        WifiController.this.log("DEFERRED_TOGGLE ignored due to serial mismatch");
                    } else {
                        WifiController.this.log("DEFERRED_TOGGLE handled");
                        WifiController.this.sendMessage((Message) msg.obj);
                    }
                    return true;
                case WifiController.CMD_RECOVERY_RESTART_WIFI_CONTINUE /* 155666 */:
                    if (!WifiController.this.mSettingsStore.isWifiToggleEnabled()) {
                        if (WifiController.this.checkScanOnlyModeAvailable()) {
                            WifiController wifiController4 = WifiController.this;
                            wifiController4.transitionTo(wifiController4.mStaDisabledWithScanState);
                        }
                    } else {
                        WifiController wifiController5 = WifiController.this;
                        wifiController5.transitionTo(wifiController5.mStaEnabledState);
                    }
                    return true;
                case WifiController.CMD_DEFERRED_RECOVERY_RESTART_WIFI /* 155670 */:
                    WifiController wifiController6 = WifiController.this;
                    wifiController6.sendMessageDelayed(WifiController.CMD_RECOVERY_RESTART_WIFI_CONTINUE, wifiController6.mRecoveryDelayMillis);
                    return true;
                default:
                    return false;
            }
        }

        private boolean doDeferEnable(Message msg) {
            long delaySoFar = SystemClock.elapsedRealtime() - this.mDisabledTimestamp;
            if (delaySoFar >= WifiController.this.mReEnableDelayMillis) {
                return false;
            }
            WifiController.this.log("WifiController msg " + msg + " deferred for " + (WifiController.this.mReEnableDelayMillis - delaySoFar) + "ms");
            Message deferredMsg = WifiController.this.obtainMessage(WifiController.CMD_DEFERRED_TOGGLE);
            deferredMsg.obj = Message.obtain(msg);
            int i = this.mDeferredEnableSerialNumber + 1;
            this.mDeferredEnableSerialNumber = i;
            deferredMsg.arg1 = i;
            WifiController wifiController = WifiController.this;
            wifiController.sendMessageDelayed(deferredMsg, (wifiController.mReEnableDelayMillis - delaySoFar) + WifiController.DEFER_MARGIN_MS);
            return true;
        }
    }

    class StaEnabledState extends State {
        StaEnabledState() {
        }

        public void enter() {
            WifiController.this.log("StaEnabledState.enter()");
            WifiController.this.mActiveModeWarden.enterClientMode();
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public boolean processMessage(Message msg) {
            final String bugDetail;
            final String bugTitle;
            int thewhat = msg.what - WifiController.BASE;
            WifiController.this.log("StaEnabledState wifi msg:" + thewhat);
            switch (msg.what) {
                case WifiController.CMD_WIFI_TOGGLED /* 155656 */:
                    if (!WifiController.this.mSettingsStore.isWifiToggleEnabled()) {
                        if (WifiController.this.checkScanOnlyModeAvailable()) {
                            WifiController wifiController = WifiController.this;
                            wifiController.transitionTo(wifiController.mStaDisabledWithScanState);
                        } else {
                            WifiController wifiController2 = WifiController.this;
                            wifiController2.transitionTo(wifiController2.mStaDisabledState);
                        }
                    }
                    return true;
                case WifiController.CMD_AIRPLANE_TOGGLED /* 155657 */:
                    if (WifiController.this.mSettingsStore.isAirplaneModeOn()) {
                        return false;
                    }
                    WifiController.this.log("airplane mode toggled - and airplane mode is off.  return handled");
                    return true;
                case WifiController.CMD_SET_AP /* 155658 */:
                    if (msg.arg1 == 1) {
                        WifiController.this.mSettingsStore.setWifiSavedState(1);
                    }
                    return false;
                case WifiController.CMD_DEFERRED_TOGGLE /* 155659 */:
                case 155660:
                case WifiController.CMD_EMERGENCY_CALL_STATE_CHANGED /* 155662 */:
                case WifiController.CMD_RECOVERY_RESTART_WIFI_CONTINUE /* 155666 */:
                case WifiController.CMD_RECOVERY_DISABLE_WIFI /* 155667 */:
                default:
                    return false;
                case WifiController.CMD_AP_START_FAILURE /* 155661 */:
                case WifiController.CMD_AP_STOPPED /* 155663 */:
                    return true;
                case WifiController.CMD_STA_START_FAILURE /* 155664 */:
                    if (!WifiController.this.checkScanOnlyModeAvailable()) {
                        WifiController wifiController3 = WifiController.this;
                        wifiController3.transitionTo(wifiController3.mStaDisabledState);
                    } else {
                        WifiController wifiController4 = WifiController.this;
                        wifiController4.transitionTo(wifiController4.mStaDisabledWithScanState);
                    }
                    return true;
                case WifiController.CMD_RECOVERY_RESTART_WIFI /* 155665 */:
                    if (msg.arg1 < SelfRecovery.REASON_STRINGS.length && msg.arg1 >= 0) {
                        bugDetail = SelfRecovery.REASON_STRINGS[msg.arg1];
                        bugTitle = "Wi-Fi BugReport: " + bugDetail;
                    } else {
                        bugDetail = "";
                        bugTitle = "Wi-Fi BugReport";
                    }
                    if (msg.arg1 != 0) {
                        new Handler(WifiController.this.mClientModeImplLooper).post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiController$StaEnabledState$8UmuHOrDhEe90LG8fQyHFz8-Png
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$processMessage$0$WifiController$StaEnabledState(bugTitle, bugDetail);
                            }
                        });
                    }
                    return false;
                case WifiController.CMD_STA_STOPPED /* 155668 */:
                    WifiController wifiController5 = WifiController.this;
                    wifiController5.transitionTo(wifiController5.mStaDisabledState);
                    return true;
            }
        }

        public /* synthetic */ void lambda$processMessage$0$WifiController$StaEnabledState(String bugTitle, String bugDetail) {
            WifiController.this.mClientModeImpl.takeBugReport(bugTitle, bugDetail);
        }
    }

    class StaDisabledWithScanState extends State {
        private long mDisabledTimestamp;
        private int mDeferredEnableSerialNumber = 0;
        private boolean mHaveDeferredEnable = false;

        StaDisabledWithScanState() {
        }

        public void enter() {
            WifiController.this.mActiveModeWarden.enterScanOnlyMode();
            this.mDisabledTimestamp = SystemClock.elapsedRealtime();
            this.mDeferredEnableSerialNumber++;
            this.mHaveDeferredEnable = false;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public boolean processMessage(Message msg) {
            int thewhat = msg.what - WifiController.BASE;
            WifiController.this.log("StaDisabledWithScanState wifi msg:" + thewhat);
            switch (msg.what) {
                case WifiController.CMD_SCAN_ALWAYS_MODE_CHANGED /* 155655 */:
                    if (!WifiController.this.checkScanOnlyModeAvailable()) {
                        WifiController.this.log("StaDisabledWithScanState: scan no longer available");
                        WifiController wifiController = WifiController.this;
                        wifiController.transitionTo(wifiController.mStaDisabledState);
                    }
                    return true;
                case WifiController.CMD_WIFI_TOGGLED /* 155656 */:
                    if (WifiController.this.mSettingsStore.isWifiToggleEnabled()) {
                        if (doDeferEnable(msg)) {
                            if (this.mHaveDeferredEnable) {
                                this.mDeferredEnableSerialNumber++;
                            }
                            this.mHaveDeferredEnable = !this.mHaveDeferredEnable;
                        } else {
                            WifiController wifiController2 = WifiController.this;
                            wifiController2.transitionTo(wifiController2.mStaEnabledState);
                        }
                    }
                    return true;
                case WifiController.CMD_SET_AP /* 155658 */:
                    if (msg.arg1 == 1) {
                        WifiController.this.mSettingsStore.setWifiSavedState(0);
                    }
                    return false;
                case WifiController.CMD_DEFERRED_TOGGLE /* 155659 */:
                    if (msg.arg1 != this.mDeferredEnableSerialNumber) {
                        WifiController.this.log("DEFERRED_TOGGLE ignored due to serial mismatch");
                    } else {
                        WifiController.this.logd("DEFERRED_TOGGLE handled");
                        WifiController.this.sendMessage((Message) msg.obj);
                    }
                    return true;
                case WifiController.CMD_AP_START_FAILURE /* 155661 */:
                case WifiController.CMD_AP_STOPPED /* 155663 */:
                    return true;
                case WifiController.CMD_SCANNING_STOPPED /* 155669 */:
                    WifiController.this.log("WifiController: SCANNING_STOPPED when in scan mode -> StaDisabled");
                    WifiController wifiController3 = WifiController.this;
                    wifiController3.transitionTo(wifiController3.mStaDisabledState);
                    return true;
                default:
                    return false;
            }
        }

        private boolean doDeferEnable(Message msg) {
            long delaySoFar = SystemClock.elapsedRealtime() - this.mDisabledTimestamp;
            if (delaySoFar >= WifiController.this.mReEnableDelayMillis) {
                return false;
            }
            WifiController.this.log("WifiController msg " + msg + " deferred for " + (WifiController.this.mReEnableDelayMillis - delaySoFar) + "ms");
            Message deferredMsg = WifiController.this.obtainMessage(WifiController.CMD_DEFERRED_TOGGLE);
            deferredMsg.obj = Message.obtain(msg);
            int i = this.mDeferredEnableSerialNumber + 1;
            this.mDeferredEnableSerialNumber = i;
            deferredMsg.arg1 = i;
            WifiController wifiController = WifiController.this;
            wifiController.sendMessageDelayed(deferredMsg, (wifiController.mReEnableDelayMillis - delaySoFar) + WifiController.DEFER_MARGIN_MS);
            return true;
        }
    }

    private State getNextWifiState() {
        if (this.mSettingsStore.getWifiSavedState() == 1) {
            return this.mStaEnabledState;
        }
        if (checkScanOnlyModeAvailable()) {
            return this.mStaDisabledWithScanState;
        }
        return this.mStaDisabledState;
    }

    class EcmState extends State {
        private int mEcmEntryCount;

        EcmState() {
        }

        public void enter() {
            WifiController.this.mActiveModeWarden.stopSoftAPMode(-1);
            boolean configWiFiDisableInECBM = WifiController.this.mFacade.getConfigWiFiDisableInECBM(WifiController.this.mContext);
            WifiController.this.log("WifiController msg getConfigWiFiDisableInECBM " + configWiFiDisableInECBM);
            if (configWiFiDisableInECBM) {
                WifiController.this.mActiveModeWarden.shutdownWifi();
            }
            this.mEcmEntryCount = 1;
        }

        public boolean processMessage(Message msg) {
            int thewhat = msg.what - WifiController.BASE;
            WifiController.this.log("EcmState wifi msg:" + thewhat);
            switch (msg.what) {
                case WifiController.CMD_EMERGENCY_MODE_CHANGED /* 155649 */:
                    if (msg.arg1 == 1) {
                        this.mEcmEntryCount++;
                    } else if (msg.arg1 == 0) {
                        decrementCountAndReturnToAppropriateState();
                    }
                    return true;
                case WifiController.CMD_SET_AP /* 155658 */:
                case WifiController.CMD_RESTART_AP /* 155671 */:
                    return true;
                case WifiController.CMD_EMERGENCY_CALL_STATE_CHANGED /* 155662 */:
                    if (msg.arg1 == 1) {
                        this.mEcmEntryCount++;
                    } else if (msg.arg1 == 0) {
                        decrementCountAndReturnToAppropriateState();
                    }
                    return true;
                case WifiController.CMD_AP_STOPPED /* 155663 */:
                case WifiController.CMD_STA_STOPPED /* 155668 */:
                case WifiController.CMD_SCANNING_STOPPED /* 155669 */:
                    return true;
                case WifiController.CMD_RECOVERY_RESTART_WIFI /* 155665 */:
                case WifiController.CMD_RECOVERY_DISABLE_WIFI /* 155667 */:
                    return true;
                default:
                    return false;
            }
        }

        private void decrementCountAndReturnToAppropriateState() {
            boolean exitEcm = false;
            int i = this.mEcmEntryCount;
            if (i == 0) {
                WifiController.this.loge("mEcmEntryCount is 0; exiting Ecm");
                exitEcm = true;
            } else {
                int i2 = i - 1;
                this.mEcmEntryCount = i2;
                if (i2 == 0) {
                    exitEcm = true;
                }
            }
            if (exitEcm) {
                if (!WifiController.this.mSettingsStore.isWifiToggleEnabled()) {
                    if (WifiController.this.checkScanOnlyModeAvailable()) {
                        WifiController wifiController = WifiController.this;
                        wifiController.transitionTo(wifiController.mStaDisabledWithScanState);
                        return;
                    } else {
                        WifiController wifiController2 = WifiController.this;
                        wifiController2.transitionTo(wifiController2.mStaDisabledState);
                        return;
                    }
                }
                WifiController wifiController3 = WifiController.this;
                wifiController3.transitionTo(wifiController3.mStaEnabledState);
            }
        }
    }

    private final class OnStartTetheringCallback extends ConnectivityManager.OnStartTetheringCallback {
        private OnStartTetheringCallback() {
        }

        public void onTetheringStarted() {
            WifiController.this.logd("onTetheringStarted");
        }

        public void onTetheringFailed() {
            WifiController.this.loge("onTetheringFailed");
        }
    }

    public void setWifiTetheringEnabled(boolean enabled) {
        if (this.mConnectivityManager == null) {
            this.mConnectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        }
        ConnectivityManager connectivityManager = this.mConnectivityManager;
        if (connectivityManager != null) {
            if (enabled) {
                this.mTetheringCallback = new OnStartTetheringCallback();
                this.mConnectivityManager.startTethering(0, true, this.mTetheringCallback);
            } else {
                connectivityManager.stopTethering(0);
                this.mTetheringCallback = null;
            }
        }
    }
}
