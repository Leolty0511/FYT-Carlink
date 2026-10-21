package com.android.server.wifi;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiFeaturesUtils;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.util.IState;
import com.android.internal.util.State;
import com.android.internal.util.StateMachine;
import com.android.internal.util.WakeupMessage;
import com.android.server.wifi.util.ApConfigUtil;
import com.sprd.server.wifi.VoWifiAssistor;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class SoftApManager implements ActiveModeManager {
    private static final String ACTION_WIFI_AP_STA_JOIN = "android.net.wifi.WIFI_AP_STA_JOIN";
    private static final String ACTION_WIFI_AP_STA_LEAVE = "android.net.wifi.WIFI_AP_STA_LEAVE";
    private static final int HOSTAPD_SUPPORT_5G_CHANNEL_MAX = 165;
    private static final int HOSTAPD_SUPPORT_5G_CHANNEL_MIN = 36;
    private static final int HOSTAPD_SUPPORT_CHANNEL_INIT = 0;
    private static final int HOSTAPD_UPDATE_5G_CHANNEL_DELAY = 2000;
    private static final int MIN_SOFT_AP_TIMEOUT_DELAY_MS = 600000;

    @VisibleForTesting
    public static final String SOFT_AP_SEND_MESSAGE_TIMEOUT_TAG = "SoftApManager Soft AP Send Message Timeout";
    private static final String TAG = "SoftApManager";
    private WifiConfiguration mApConfig;
    private String mApInterfaceName;
    private final WifiManager.SoftApCallback mCallback;
    private final Context mContext;
    private String mCountryCode;
    private final FrameworkFacade mFrameworkFacade;
    private boolean mIfaceIsDestroyed;
    private boolean mIfaceIsUp;
    private final int mMode;
    private final SarManager mSarManager;
    private BroadcastReceiver mSoftApBroadcastReceiver;
    private final SoftApStateMachine mStateMachine;
    private VoWifiAssistor mVoWifiAssistor;
    private WifiApClientStats mWifiApClientStats;
    private final WifiApConfigStore mWifiApConfigStore;
    private final WifiMetrics mWifiMetrics;
    private final WifiNative mWifiNative;
    private static boolean DBG = true;
    static WifiInjector mWifiInjector = null;
    private String mConnectedStations = "";
    private int mMacAddrAcl = 0;
    String mInterfaceName = null;
    private int mReportedFrequency = -1;
    private int mReportedBandwidth = -1;
    private int mNumAssociatedStations = 0;
    private boolean mTimeoutEnabled = false;
    private long mStartTimestamp = -1;
    private final WifiNative.SoftApListener mSoftApListener = new WifiNative.SoftApListener() { // from class: com.android.server.wifi.SoftApManager.1
        @Override // com.android.server.wifi.WifiNative.SoftApListener
        public void onFailure() {
            SoftApManager.this.mStateMachine.sendMessage(2);
        }

        @Override // com.android.server.wifi.WifiNative.SoftApListener
        public void onNumAssociatedStationsChanged(int numStations) {
            SoftApManager.this.mStateMachine.sendMessage(4, numStations);
        }

        @Override // com.android.server.wifi.WifiNative.SoftApListener
        public void onStationAssociated(String macAddress) {
            Log.i(SoftApManager.TAG, "onStationAssociated macAddress: " + macAddress);
            SoftApManager.this.mStateMachine.sendMessage(14, macAddress);
        }

        @Override // com.android.server.wifi.WifiNative.SoftApListener
        public void onStationDisassociated(String macAddress) {
            Log.i(SoftApManager.TAG, "onStationDisassociated macAddress: " + macAddress);
            SoftApManager.this.mStateMachine.sendMessage(15, macAddress);
        }

        @Override // com.android.server.wifi.WifiNative.SoftApListener
        public void onSoftApChannelSwitched(int frequency, int bandwidth) {
            SoftApManager.this.mStateMachine.sendMessage(9, frequency, bandwidth);
        }

        @Override // com.android.server.wifi.WifiNative.SoftApListener
        public void onSoftApConnectionEvent(String mac) {
            SoftApManager.this.mStateMachine.sendMessage(12, mac);
        }

        @Override // com.android.server.wifi.WifiNative.SoftApListener
        public void onSoftApDisconnectionEvent(String mac) {
            SoftApManager.this.mStateMachine.sendMessage(13, mac);
        }
    };

    static /* synthetic */ String access$2284(SoftApManager x0, Object x1) {
        String str = x0.mConnectedStations + x1;
        x0.mConnectedStations = str;
        return str;
    }

    protected void log(String s) {
        Log.d(TAG, s);
    }

    protected void loge(String s) {
        Log.e(TAG, s);
    }

    private static class TetherStateChange {
        public ArrayList<String> active;
        public ArrayList<String> available;

        TetherStateChange(ArrayList<String> av, ArrayList<String> ac) {
            this.available = av;
            this.active = ac;
        }
    }

    public SoftApManager(Context context, Looper looper, FrameworkFacade framework, WifiNative wifiNative, String countryCode, WifiManager.SoftApCallback callback, WifiApConfigStore wifiApConfigStore, SoftApModeConfiguration apConfig, WifiMetrics wifiMetrics, SarManager sarManager) {
        this.mWifiApClientStats = null;
        this.mContext = context;
        this.mFrameworkFacade = framework;
        this.mWifiNative = wifiNative;
        this.mCountryCode = countryCode;
        this.mCallback = callback;
        mWifiInjector = WifiInjector.getInstance();
        WifiInjector wifiInjector = mWifiInjector;
        if (wifiInjector != null) {
            this.mWifiApClientStats = wifiInjector.getWifiApClientStats();
        }
        this.mWifiApConfigStore = wifiApConfigStore;
        this.mMode = apConfig.getTargetMode();
        WifiConfiguration config = apConfig.getWifiConfiguration();
        if (config == null) {
            this.mApConfig = this.mWifiApConfigStore.getApConfiguration();
        } else {
            this.mApConfig = config;
        }
        this.mWifiMetrics = wifiMetrics;
        this.mSarManager = sarManager;
        this.mStateMachine = new SoftApStateMachine(looper);
        Log.d(TAG, "Using SPRD softap features : " + WifiFeaturesUtils.FeatureProperty.SUPPORT_SPRD_SOFTAP_FEATURES + " maxstanum = " + WifiFeaturesUtils.FeatureProperty.SUPPORT_SPRD_SOFTAP_MAX_NUMBER);
    }

    public SoftApManager(Context context, Looper looper, FrameworkFacade framework, WifiNative wifiNative, String countryCode, WifiManager.SoftApCallback callback, WifiApConfigStore wifiApConfigStore, SoftApModeConfiguration apConfig, WifiMetrics wifiMetrics, SarManager sarManager, VoWifiAssistor voWifiAssistor) {
        this.mWifiApClientStats = null;
        this.mContext = context;
        this.mFrameworkFacade = framework;
        this.mWifiNative = wifiNative;
        this.mCountryCode = countryCode;
        this.mCallback = callback;
        mWifiInjector = WifiInjector.getInstance();
        WifiInjector wifiInjector = mWifiInjector;
        if (wifiInjector != null) {
            this.mWifiApClientStats = wifiInjector.getWifiApClientStats();
        }
        this.mWifiApConfigStore = wifiApConfigStore;
        this.mMode = apConfig.getTargetMode();
        WifiConfiguration config = apConfig.getWifiConfiguration();
        if (config == null) {
            this.mApConfig = this.mWifiApConfigStore.getApConfiguration();
        } else {
            this.mApConfig = config;
        }
        this.mWifiMetrics = wifiMetrics;
        this.mSarManager = sarManager;
        this.mStateMachine = new SoftApStateMachine(looper);
        this.mVoWifiAssistor = voWifiAssistor;
        Log.d(TAG, "Using SPRD softap features : " + WifiFeaturesUtils.FeatureProperty.SUPPORT_SPRD_SOFTAP_FEATURES + " maxstanum = " + WifiFeaturesUtils.FeatureProperty.SUPPORT_SPRD_SOFTAP_MAX_NUMBER);
    }

    @Override // com.android.server.wifi.ActiveModeManager
    public void start() {
        if (this.mVoWifiAssistor.isVoWifiAttached()) {
            this.mVoWifiAssistor.delayStartSoftAP(this);
        } else {
            startImmediately();
        }
    }

    public void startImmediately() {
        this.mStateMachine.sendMessage(0, this.mApConfig);
    }

    @Override // com.android.server.wifi.ActiveModeManager
    public void stop() {
        Log.d(TAG, " currentstate: " + getCurrentStateName());
        if (this.mApInterfaceName != null) {
            if (this.mIfaceIsUp) {
                updateApState(10, 13, 0);
            } else {
                updateApState(10, 12, 0);
            }
        }
        this.mStateMachine.quitNow();
    }

    @Override // com.android.server.wifi.ActiveModeManager
    public int getScanMode() {
        return 0;
    }

    public int getIpMode() {
        return this.mMode;
    }

    @Override // com.android.server.wifi.ActiveModeManager
    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("--Dump of SoftApManager--");
        pw.println("current StateMachine mode: " + getCurrentStateName());
        pw.println("mApInterfaceName: " + this.mApInterfaceName);
        pw.println("mIfaceIsUp: " + this.mIfaceIsUp);
        pw.println("mMode: " + this.mMode);
        pw.println("mCountryCode: " + this.mCountryCode);
        if (this.mApConfig != null) {
            pw.println("mApConfig.SSID: " + this.mApConfig.SSID);
            pw.println("mApConfig.apBand: " + this.mApConfig.apBand);
            pw.println("mApConfig.hiddenSSID: " + this.mApConfig.hiddenSSID);
        } else {
            pw.println("mApConfig: null");
        }
        pw.println("mNumAssociatedStations: " + this.mNumAssociatedStations);
        pw.println("mTimeoutEnabled: " + this.mTimeoutEnabled);
        pw.println("mReportedFrequency: " + this.mReportedFrequency);
        pw.println("mReportedBandwidth: " + this.mReportedBandwidth);
        pw.println("mStartTimestamp: " + this.mStartTimestamp);
    }

    private String getCurrentStateName() {
        IState currentState = this.mStateMachine.getCurrentState();
        if (currentState != null) {
            return currentState.getName();
        }
        return "StateMachine not active";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateApState(int newState, int currentState, int reason) {
        this.mCallback.onStateChanged(newState, reason);
        Intent intent = new Intent("android.net.wifi.WIFI_AP_STATE_CHANGED");
        intent.addFlags(67108864);
        intent.putExtra("wifi_state", newState);
        intent.putExtra("previous_wifi_state", currentState);
        if (newState == 14) {
            intent.putExtra("wifi_ap_error_code", reason);
        }
        intent.putExtra("wifi_ap_interface_name", this.mApInterfaceName);
        intent.putExtra("wifi_ap_mode", this.mMode);
        this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyStationChanged(String action, String macAddress) {
        if (action != null && this.mContext != null) {
            Intent apStaChangedIt = new Intent(action);
            apStaChangedIt.putExtra("macInfo", macAddress);
            Log.i(TAG, "notifyStationChanged macAddress=" + macAddress);
            this.mContext.sendBroadcastAsUser(apStaChangedIt, UserHandle.ALL, "android.permission.ACCESS_WIFI_STATE");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int startSoftAp(WifiConfiguration config) {
        if (config == null || config.SSID == null) {
            Log.e(TAG, "Unable to start soft AP without valid configuration");
            return 2;
        }
        WifiApClientStats wifiApClientStats = this.mWifiApClientStats;
        if (wifiApClientStats != null && wifiApClientStats.isWhiteListEnabled()) {
            config.macAddrAcl = 1;
        } else {
            config.macAddrAcl = 0;
        }
        if (TextUtils.isEmpty(this.mCountryCode)) {
            this.mCountryCode = this.mFrameworkFacade.getStringSetting(this.mContext, "wifi_country_code");
        }
        if (TextUtils.isEmpty(this.mCountryCode)) {
            if (config.apBand == 1) {
                Log.e(TAG, "Invalid country code, required for setting up soft ap in 5GHz");
                return 2;
            }
        } else if (!this.mWifiNative.setCountryCodeHal(this.mApInterfaceName, this.mCountryCode.toUpperCase(Locale.ROOT)) && config.apBand == 1) {
            Log.e(TAG, "Failed to set country code, required for setting up soft ap in 5GHz");
            return 2;
        }
        WifiConfiguration localConfig = new WifiConfiguration(config);
        int result = ApConfigUtil.updateApChannelConfig(this.mWifiNative, this.mCountryCode, this.mWifiApConfigStore.getAllowed2GChannel(), localConfig);
        if (result != 0) {
            Log.e(TAG, "Failed to update AP band and channel");
            return result;
        }
        if (localConfig.apBand == 1 && this.mCountryCode != null) {
            getSoftApSupportChannels();
        }
        if (localConfig.hiddenSSID) {
            Log.d(TAG, "SoftAP is a hidden network");
        }
        if (!this.mWifiNative.startSoftAp(this.mApInterfaceName, localConfig, this.mSoftApListener)) {
            Log.e(TAG, "Soft AP start failed");
            return 2;
        }
        this.mStartTimestamp = SystemClock.elapsedRealtime();
        Log.d(TAG, "Soft AP is started");
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopSoftAp() {
        BroadcastReceiver broadcastReceiver;
        Context context = this.mContext;
        if (context != null && (broadcastReceiver = this.mSoftApBroadcastReceiver) != null) {
            context.unregisterReceiver(broadcastReceiver);
        }
        this.mWifiNative.teardownInterface(this.mApInterfaceName);
        Log.d(TAG, "Soft AP is stopped");
    }

    private class SoftApStateMachine extends StateMachine {
        public static final int CMD_FAILURE = 2;
        public static final int CMD_INTERFACE_DESTROYED = 7;
        public static final int CMD_INTERFACE_DOWN = 8;
        public static final int CMD_INTERFACE_STATUS_CHANGED = 3;
        public static final int CMD_NOTIFY_STATION_ASSOCIATED = 14;
        public static final int CMD_NOTIFY_STATION_DISASSOCIATED = 15;
        public static final int CMD_NO_ASSOCIATED_STATIONS_TIMEOUT = 5;
        public static final int CMD_NUM_ASSOCIATED_STATIONS_CHANGED = 4;
        public static final int CMD_SOFT_AP_CHANNEL_SWITCHED = 9;
        public static final int CMD_START = 0;
        public static final int CMD_TETHER_STATE_CHANGE = 10;
        public static final int CMD_TIMEOUT_TOGGLE_CHANGED = 6;
        public static final int SOFTAP_STA_CONNECTED_EVENT = 12;
        public static final int SOFTAP_STA_DISCONNECTED_EVENT = 13;
        private final State mIdleState;
        private final State mStartedState;
        private final WifiNative.InterfaceCallback mWifiNativeInterfaceCallback;

        SoftApStateMachine(Looper looper) {
            super(SoftApManager.TAG, looper);
            this.mIdleState = new IdleState();
            this.mStartedState = new StartedState();
            this.mWifiNativeInterfaceCallback = new WifiNative.InterfaceCallback() { // from class: com.android.server.wifi.SoftApManager.SoftApStateMachine.1
                @Override // com.android.server.wifi.WifiNative.InterfaceCallback
                public void onDestroyed(String ifaceName) {
                    if (SoftApManager.this.mApInterfaceName != null && SoftApManager.this.mApInterfaceName.equals(ifaceName)) {
                        SoftApStateMachine.this.sendMessage(7);
                    }
                }

                @Override // com.android.server.wifi.WifiNative.InterfaceCallback
                public void onUp(String ifaceName) {
                    if (SoftApManager.this.mApInterfaceName != null && SoftApManager.this.mApInterfaceName.equals(ifaceName)) {
                        SoftApStateMachine.this.sendMessage(3, 1);
                    }
                }

                @Override // com.android.server.wifi.WifiNative.InterfaceCallback
                public void onDown(String ifaceName) {
                    if (SoftApManager.this.mApInterfaceName != null && SoftApManager.this.mApInterfaceName.equals(ifaceName)) {
                        SoftApStateMachine.this.sendMessage(3, 0);
                    }
                }
            };
            addState(this.mIdleState);
            addState(this.mStartedState);
            setInitialState(this.mIdleState);
            start();
        }

        private class IdleState extends State {
            private IdleState() {
            }

            public void enter() {
                SoftApManager.this.mApInterfaceName = null;
                SoftApManager.this.mIfaceIsUp = false;
                SoftApManager.this.mIfaceIsDestroyed = false;
            }

            public boolean processMessage(Message message) {
                if (message.what == 0) {
                    SoftApManager.this.mApInterfaceName = SoftApManager.this.mWifiNative.setupInterfaceForSoftApMode(SoftApStateMachine.this.mWifiNativeInterfaceCallback);
                    if (!TextUtils.isEmpty(SoftApManager.this.mApInterfaceName)) {
                        SoftApManager.this.updateApState(12, 11, 0);
                        int result = SoftApManager.this.startSoftAp((WifiConfiguration) message.obj);
                        if (result != 0) {
                            int failureReason = 0;
                            if (result == 1) {
                                failureReason = 1;
                            }
                            SoftApManager.this.updateApState(14, 12, failureReason);
                            SoftApManager.this.stopSoftAp();
                            SoftApManager.this.mWifiMetrics.incrementSoftApStartResult(false, failureReason);
                        } else {
                            SoftApStateMachine softApStateMachine = SoftApStateMachine.this;
                            softApStateMachine.transitionTo(softApStateMachine.mStartedState);
                        }
                    } else {
                        Log.e(SoftApManager.TAG, "setup failure when creating ap interface.");
                        SoftApManager.this.updateApState(14, 11, 0);
                        SoftApManager.this.mWifiMetrics.incrementSoftApStartResult(false, 0);
                    }
                }
                return true;
            }
        }

        private class StartedState extends State {
            private SoftApTimeoutEnabledSettingObserver mSettingObserver;
            private WakeupMessage mSoftApTimeoutMessage;
            private int mTimeoutDelay;

            private StartedState() {
            }

            private class SoftApTimeoutEnabledSettingObserver extends ContentObserver {
                SoftApTimeoutEnabledSettingObserver(Handler handler) {
                    super(handler);
                }

                public void register() {
                    SoftApManager.this.mFrameworkFacade.registerContentObserver(SoftApManager.this.mContext, Settings.Global.getUriFor("soft_ap_timeout_enabled"), true, this);
                    SoftApManager.this.mTimeoutEnabled = getValue();
                }

                public void unregister() {
                    SoftApManager.this.mFrameworkFacade.unregisterContentObserver(SoftApManager.this.mContext, this);
                }

                @Override // android.database.ContentObserver
                public void onChange(boolean z) {
                    super.onChange(z);
                    SoftApManager.this.mStateMachine.sendMessage(6, getValue() ? 1 : 0);
                }

                private boolean getValue() {
                    boolean enabled = SoftApManager.this.mFrameworkFacade.getIntegerSetting(SoftApManager.this.mContext, "soft_ap_timeout_enabled", 1) == 1;
                    return enabled;
                }
            }

            private int getConfigSoftApTimeoutDelay() {
                int delay = SoftApManager.this.mContext.getResources().getInteger(R.integer.config_networkNotifySwitchType);
                if (delay < SoftApManager.MIN_SOFT_AP_TIMEOUT_DELAY_MS) {
                    delay = SoftApManager.MIN_SOFT_AP_TIMEOUT_DELAY_MS;
                    Log.w(SoftApManager.TAG, "Overriding timeout delay with minimum limit value");
                }
                Log.d(SoftApManager.TAG, "Timeout delay: " + delay);
                return delay;
            }

            private void scheduleTimeoutMessage() {
                if (!SoftApManager.this.mTimeoutEnabled) {
                    return;
                }
                this.mSoftApTimeoutMessage.schedule(SystemClock.elapsedRealtime() + ((long) this.mTimeoutDelay));
                Log.d(SoftApManager.TAG, "Timeout message scheduled");
            }

            private void cancelTimeoutMessage() {
                this.mSoftApTimeoutMessage.cancel();
                Log.d(SoftApManager.TAG, "Timeout message canceled");
            }

            private void setNumAssociatedStations(int numStations) {
                if (SoftApManager.this.mNumAssociatedStations != numStations) {
                    SoftApManager.this.mNumAssociatedStations = numStations;
                    Log.d(SoftApManager.TAG, "Number of associated stations changed: " + SoftApManager.this.mNumAssociatedStations);
                    if (SoftApManager.this.mCallback != null) {
                        SoftApManager.this.mCallback.onNumClientsChanged(SoftApManager.this.mNumAssociatedStations);
                    } else {
                        Log.e(SoftApManager.TAG, "SoftApCallback is null. Dropping NumClientsChanged event.");
                    }
                    SoftApManager.this.mWifiMetrics.addSoftApNumAssociatedStationsChangedEvent(SoftApManager.this.mNumAssociatedStations, SoftApManager.this.mMode);
                    if (SoftApManager.this.mNumAssociatedStations == 0) {
                        scheduleTimeoutMessage();
                    } else {
                        cancelTimeoutMessage();
                    }
                }
            }

            private void onUpChanged(boolean isUp) {
                if (isUp != SoftApManager.this.mIfaceIsUp) {
                    SoftApManager.this.mIfaceIsUp = isUp;
                    if (isUp) {
                        Log.d(SoftApManager.TAG, "SoftAp is ready for use");
                        if (SoftApManager.this.mApInterfaceName != null) {
                            SoftApStateMachine.this.syncSoftApWhiteList();
                            if (SoftApManager.this.mWifiApClientStats != null) {
                                boolean whiteMode = SoftApManager.this.mWifiApClientStats.isWhiteListEnabled();
                                SoftApManager.this.syncSoftApSetClientWhiteListEnabled(whiteMode);
                            }
                        }
                        if (SoftApManager.this.mWifiApClientStats != null) {
                            SoftApManager.this.mWifiApClientStats.start();
                        }
                        SoftApManager.this.updateApState(13, 12, 0);
                        if (SoftApManager.this.mCallback != null) {
                            SoftApManager.this.mCallback.onNumClientsChanged(SoftApManager.this.mNumAssociatedStations);
                        }
                        SoftApManager.this.mWifiMetrics.incrementSoftApStartResult(true, 0);
                    } else {
                        SoftApStateMachine.this.sendMessage(8);
                    }
                    SoftApManager.this.mWifiMetrics.addSoftApUpChangedEvent(isUp, SoftApManager.this.mMode);
                }
            }

            public void enter() {
                SoftApManager.this.mIfaceIsUp = false;
                SoftApManager.this.mIfaceIsDestroyed = false;
                onUpChanged(SoftApManager.this.mWifiNative.isInterfaceUp(SoftApManager.this.mApInterfaceName));
                this.mTimeoutDelay = getConfigSoftApTimeoutDelay();
                Handler handler = SoftApManager.this.mStateMachine.getHandler();
                this.mSoftApTimeoutMessage = new WakeupMessage(SoftApManager.this.mContext, handler, SoftApManager.SOFT_AP_SEND_MESSAGE_TIMEOUT_TAG, 5);
                this.mSettingObserver = new SoftApTimeoutEnabledSettingObserver(handler);
                SoftApTimeoutEnabledSettingObserver softApTimeoutEnabledSettingObserver = this.mSettingObserver;
                if (softApTimeoutEnabledSettingObserver != null) {
                    softApTimeoutEnabledSettingObserver.register();
                }
                SoftApManager.this.mSarManager.setSapWifiState(13);
                Log.d(SoftApManager.TAG, "Resetting num stations on start");
                SoftApManager.this.mNumAssociatedStations = 0;
                scheduleTimeoutMessage();
            }

            public void exit() {
                if (SoftApManager.this.mWifiApClientStats != null) {
                    SoftApManager.this.mWifiApClientStats.stop();
                }
                if (!SoftApManager.this.mIfaceIsDestroyed) {
                    SoftApManager.this.stopSoftAp();
                }
                SoftApTimeoutEnabledSettingObserver softApTimeoutEnabledSettingObserver = this.mSettingObserver;
                if (softApTimeoutEnabledSettingObserver != null) {
                    softApTimeoutEnabledSettingObserver.unregister();
                }
                Log.d(SoftApManager.TAG, "Resetting num stations on stop");
                SoftApManager.this.mConnectedStations = "";
                setNumAssociatedStations(0);
                cancelTimeoutMessage();
                SoftApManager.this.mWifiMetrics.addSoftApUpChangedEvent(false, SoftApManager.this.mMode);
                SoftApManager.this.updateApState(11, 10, 0);
                SoftApManager.this.mSarManager.setSapWifiState(11);
                SoftApManager.this.mApInterfaceName = null;
                SoftApManager.this.mIfaceIsUp = false;
                SoftApManager.this.mIfaceIsDestroyed = false;
                SoftApManager.this.mStateMachine.quitNow();
            }

            private void updateUserBandPreferenceViolationMetricsIfNeeded() {
                boolean bandPreferenceViolated = false;
                if (SoftApManager.this.mApConfig.apBand != 0 || !ScanResult.is5GHz(SoftApManager.this.mReportedFrequency)) {
                    if (SoftApManager.this.mApConfig.apBand == 1 && ScanResult.is24GHz(SoftApManager.this.mReportedFrequency)) {
                        bandPreferenceViolated = true;
                    }
                } else {
                    bandPreferenceViolated = true;
                }
                if (bandPreferenceViolated) {
                    Log.e(SoftApManager.TAG, "Channel does not satisfy user band preference: " + SoftApManager.this.mReportedFrequency);
                    SoftApManager.this.mWifiMetrics.incrementNumSoftApUserBandPreferenceUnsatisfied();
                }
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Multi-variable type inference failed */
            public boolean processMessage(Message message) {
                switch (message.what) {
                    case 0:
                        return true;
                    case 1:
                    case 10:
                    case 11:
                    default:
                        return false;
                    case 2:
                        Log.w(SoftApManager.TAG, "hostapd failure, stop and report failure");
                        Log.w(SoftApManager.TAG, "interface error, stop and report failure");
                        SoftApManager.this.updateApState(14, 13, 0);
                        SoftApManager.this.updateApState(10, 14, 0);
                        SoftApManager.mWifiInjector.getWifiController().sendMessage(155671);
                        SoftApStateMachine softApStateMachine = SoftApStateMachine.this;
                        softApStateMachine.transitionTo(softApStateMachine.mIdleState);
                        return true;
                    case 3:
                        onUpChanged(message.arg1 == 1 ? 1 : 0);
                        return true;
                    case 4:
                        if (message.arg1 < 0) {
                            Log.e(SoftApManager.TAG, "Invalid number of associated stations: " + message.arg1);
                        }
                        return true;
                    case 5:
                        if (SoftApManager.this.mTimeoutEnabled) {
                            if (SoftApManager.this.mNumAssociatedStations != 0) {
                                Log.wtf(SoftApManager.TAG, "Timeout message received but has clients. Dropping.");
                            } else {
                                Log.i(SoftApManager.TAG, "Timeout message received. Stopping soft AP.");
                                SoftApManager.this.updateApState(10, 13, 0);
                                SoftApStateMachine softApStateMachine2 = SoftApStateMachine.this;
                                softApStateMachine2.transitionTo(softApStateMachine2.mIdleState);
                            }
                        } else {
                            Log.wtf(SoftApManager.TAG, "Timeout message received while timeout is disabled. Dropping.");
                        }
                        return true;
                    case 6:
                        boolean z = message.arg1 == 1 ? 1 : 0;
                        if (SoftApManager.this.mTimeoutEnabled != z) {
                            SoftApManager.this.mTimeoutEnabled = z;
                            if (!SoftApManager.this.mTimeoutEnabled) {
                                cancelTimeoutMessage();
                            }
                            if (SoftApManager.this.mTimeoutEnabled && SoftApManager.this.mNumAssociatedStations == 0) {
                                scheduleTimeoutMessage();
                            }
                        }
                        return true;
                    case 7:
                        Log.d(SoftApManager.TAG, "Interface was cleanly destroyed.");
                        SoftApManager.this.updateApState(10, 13, 0);
                        SoftApManager.this.mIfaceIsDestroyed = true;
                        SoftApStateMachine softApStateMachine3 = SoftApStateMachine.this;
                        softApStateMachine3.transitionTo(softApStateMachine3.mIdleState);
                        return true;
                    case 8:
                        Log.w(SoftApManager.TAG, "interface error, stop and report failure");
                        SoftApManager.this.updateApState(14, 13, 0);
                        SoftApManager.this.updateApState(10, 14, 0);
                        SoftApManager.mWifiInjector.getWifiController().sendMessage(155671);
                        SoftApStateMachine softApStateMachine4 = SoftApStateMachine.this;
                        softApStateMachine4.transitionTo(softApStateMachine4.mIdleState);
                        return true;
                    case 9:
                        SoftApManager.this.mReportedFrequency = message.arg1;
                        SoftApManager.this.mReportedBandwidth = message.arg2;
                        Log.d(SoftApManager.TAG, "Channel switched. Frequency: " + SoftApManager.this.mReportedFrequency + " Bandwidth: " + SoftApManager.this.mReportedBandwidth);
                        SoftApManager.this.mWifiMetrics.addSoftApChannelSwitchedEvent(SoftApManager.this.mReportedFrequency, SoftApManager.this.mReportedBandwidth, SoftApManager.this.mMode);
                        updateUserBandPreferenceViolationMetricsIfNeeded();
                        return true;
                    case 12:
                        String macStr = (String) message.obj;
                        if (SoftApManager.DBG) {
                            SoftApStateMachine.this.log("Soft AP Connected Station: " + macStr);
                        }
                        if (SoftApManager.this.mConnectedStations.equals("")) {
                            SoftApManager.this.mConnectedStations = macStr;
                        } else if (SoftApManager.this.mConnectedStations.contains(macStr)) {
                            SoftApStateMachine.this.loge("Soft AP Connected Station: " + macStr + " already saved!");
                        } else {
                            SoftApManager.access$2284(SoftApManager.this, " " + macStr);
                        }
                        if (SoftApManager.this.mWifiApClientStats != null) {
                            SoftApManager.this.mWifiApClientStats.addOrUpdateClientInfoList(SoftApManager.this.mConnectedStations);
                        }
                        List<String> mConnectedStationsDetail = SoftApManager.this.mWifiApClientStats.getStaClientInfoList();
                        setNumAssociatedStations(mConnectedStationsDetail.size());
                        SoftApManager.this.sendSoftApConnectionChangedBroadcast();
                        return true;
                    case 13:
                        String macStr2 = (String) message.obj;
                        if (SoftApManager.DBG) {
                            SoftApStateMachine.this.log("Soft AP Disconnected Station: " + macStr2);
                        }
                        if (SoftApManager.this.mConnectedStations.contains(macStr2)) {
                            String[] dataTokens = SoftApManager.this.mConnectedStations.split(" ");
                            SoftApManager.this.mConnectedStations = "";
                            for (String token : dataTokens) {
                                if (!token.equals(macStr2)) {
                                    if (SoftApManager.this.mConnectedStations.equals("")) {
                                        SoftApManager.this.mConnectedStations = token;
                                    } else {
                                        SoftApManager.access$2284(SoftApManager.this, " " + token);
                                    }
                                }
                            }
                        }
                        if (SoftApManager.this.mWifiApClientStats != null) {
                            SoftApManager.this.mWifiApClientStats.addOrUpdateClientInfoList(SoftApManager.this.mConnectedStations);
                        }
                        List<String> mConnectedStationsDetailList = SoftApManager.this.mWifiApClientStats.getStaClientInfoList();
                        setNumAssociatedStations(mConnectedStationsDetailList.size());
                        SoftApManager.this.sendSoftApConnectionChangedBroadcast();
                        return true;
                    case 14:
                        SoftApManager.this.notifyStationChanged(SoftApManager.ACTION_WIFI_AP_STA_JOIN, (String) message.obj);
                        return true;
                    case 15:
                        SoftApManager.this.notifyStationChanged(SoftApManager.ACTION_WIFI_AP_STA_LEAVE, (String) message.obj);
                        return true;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void syncSoftApWhiteList() {
            if (SoftApManager.this.mWifiApClientStats != null) {
                List<String> macList = SoftApManager.this.mWifiApClientStats.getClientMacWhiteList();
                for (String mac : macList) {
                    SoftApManager.this.mWifiNative.softApSetStationToWhiteList(mac, true);
                }
            }
        }

        private void unregisterSoftapEventHandler() {
            if (SoftApManager.this.mContext != null && SoftApManager.this.mSoftApBroadcastReceiver != null) {
                SoftApManager.this.mContext.unregisterReceiver(SoftApManager.this.mSoftApBroadcastReceiver);
            }
        }
    }

    private void getSoftApSupportChannels() {
        StringBuffer buf = new StringBuffer();
        int[] allowed5GFreqList = this.mWifiNative.getChannelsForBand(2);
        if (allowed5GFreqList != null && allowed5GFreqList.length > 0) {
            for (int i : allowed5GFreqList) {
                int channel = ApConfigUtil.convertFrequencyToChannel(i);
                buf.append(channel);
                buf.append(",");
            }
        }
        String allowed5GChannelList = buf.toString();
        Log.d(TAG, "SoftAp allowed5GChannelList = " + allowed5GChannelList);
        Settings.Global.putString(this.mContext.getContentResolver(), "hostapd_support_channels", allowed5GChannelList);
    }

    public boolean syncSoftApSetClientWhiteListEnabled(boolean enabled) {
        return this.mWifiNative.softApSetWhiteListEnabled(enabled);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSoftApConnectionChangedBroadcast() {
        Intent intent = new Intent("android.net.wifi.WIFI_AP_CONNECTION_CHANGED_ACTION");
        intent.addFlags(67108864);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }

    private void sendSoftApBlockListAvailableBroadcast() {
        Intent intent = new Intent("android.net.wifi.SOFTAP_BLOCKLIST_AVAILABLE_ACTION");
        intent.addFlags(67108864);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }
}
