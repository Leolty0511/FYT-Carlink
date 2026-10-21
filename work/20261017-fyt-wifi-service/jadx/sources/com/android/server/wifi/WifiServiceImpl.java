package com.android.server.wifi;

import android.R;
import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.admin.DevicePolicyManagerInternal;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ParceledListSlice;
import android.cta.PermissionUtils;
import android.database.ContentObserver;
import android.net.DhcpInfo;
import android.net.DhcpResults;
import android.net.Network;
import android.net.NetworkUtils;
import android.net.Uri;
import android.net.wifi.IDppCallback;
import android.net.wifi.INetworkRequestMatchCallback;
import android.net.wifi.IOnWifiUsabilityStatsListener;
import android.net.wifi.ISoftApCallback;
import android.net.wifi.ITrafficStateCallback;
import android.net.wifi.IWifiNetworkEventObserver;
import android.net.wifi.IWifiRssiLinkSpeedAndFrequencyObserver;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiActivityEnergyInfo;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiFeaturesUtils;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiNetworkSuggestion;
import android.net.wifi.WifiSsid;
import android.net.wifi.hotspot2.IProvisioningCallback;
import android.net.wifi.hotspot2.OsuProvider;
import android.net.wifi.hotspot2.PasspointConfiguration;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.WorkSource;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.EventLog;
import android.util.Log;
import android.util.MutableInt;
import android.util.Slog;
import android.widget.Toast;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.os.PowerProfile;
import com.android.internal.util.AsyncChannel;
import com.android.server.wifi.hotspot2.PasspointProvider;
import com.android.server.wifi.util.ExternalCallbackTracker;
import com.android.server.wifi.util.GeneralUtil;
import com.android.server.wifi.util.WifiHandler;
import com.android.server.wifi.util.WifiPermissionsUtil;
import java.io.BufferedReader;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidator;
import java.security.cert.CertificateFactory;
import java.security.cert.PKIXParameters;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes.dex */
public class WifiServiceImpl extends BaseWifiService {
    private static final String ACCESS_FINE_LOCATION_NOTE_ACTION = "android.location.ACCESS_FINE_LOCATION_NOTE_ACTION";
    private static final int BACKGROUND_IMPORTANCE_CUTOFF = 125;
    private static final long DEFAULT_SCAN_BACKGROUND_THROTTLE_INTERVAL_MS = 1800000;
    private static final int LOCATION_NOTITY_MIN_INTERNAL = 2000;
    private static final int RUN_WITH_SCISSORS_TIMEOUT_MILLIS = 4000;
    private static final String TAG = "WifiService";
    private static final boolean VDBG = false;
    final ActiveModeWarden mActiveModeWarden;
    private final ActivityManager mActivityManager;
    private final AppOpsManager mAppOps;
    private AsyncChannelExternalClientHandler mAsyncChannelExternalClientHandler;
    final ClientModeImpl mClientModeImpl;

    @VisibleForTesting
    AsyncChannel mClientModeImplChannel;
    ClientModeImplHandler mClientModeImplHandler;
    private final Clock mClock;
    private final Context mContext;
    private final WifiCountryCode mCountryCode;
    private final DppManager mDppManager;
    private final FrameworkFacade mFacade;
    private final FrameworkFacade mFrameworkFacade;

    @GuardedBy({"mLocalOnlyHotspotRequests"})
    private final ConcurrentHashMap<String, Integer> mIfaceIpModes;
    boolean mInIdleMode;
    private long mLastNoteTime;

    @GuardedBy({"mLocalOnlyHotspotRequests"})
    private final HashMap<Integer, LocalOnlyHotspotRequestInfo> mLocalOnlyHotspotRequests;
    private WifiLog mLog;
    private final PowerManager mPowerManager;
    PowerProfile mPowerProfile;
    private final ExternalCallbackTracker<ISoftApCallback> mRegisteredSoftApCallbacks;
    boolean mScanPending;
    final ScanRequestProxy mScanRequestProxy;
    final WifiSettingsStore mSettingsStore;
    private final UserManager mUserManager;
    private WifiApConfigStore mWifiApConfigStore;
    private final WifiBackupRestore mWifiBackupRestore;
    private WifiController mWifiController;
    private final WifiFeaturesUtils mWifiFeaturesUtils;
    private final WifiInjector mWifiInjector;
    private final WifiLockManager mWifiLockManager;
    private final WifiMetrics mWifiMetrics;
    private final WifiMulticastLockManager mWifiMulticastLockManager;
    private final WifiNetworkSuggestionsManager mWifiNetworkSuggestionsManager;
    private WifiPermissionsUtil mWifiPermissionsUtil;
    private WifiTrafficPoller mWifiTrafficPoller;
    private int scanRequestCounter = 0;
    private boolean mVerboseLoggingEnabled = false;

    @GuardedBy({"mLocalOnlyHotspotRequests"})
    private WifiConfiguration mLocalOnlyHotspotConfig = null;
    private int mWifiApState = 11;
    private int mSoftApState = 11;
    private int mSoftApNumClients = 0;
    private boolean selfEnableWifi = false;
    private Toast mToast = null;
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.android.server.wifi.WifiServiceImpl.6
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals("android.intent.action.USER_REMOVED")) {
                WifiServiceImpl.this.mClientModeImpl.removeUserConfigs(intent.getIntExtra("android.intent.extra.user_handle", 0));
                return;
            }
            if (action.equals("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED")) {
                WifiServiceImpl.this.mClientModeImpl.sendBluetoothAdapterStateChange(intent.getIntExtra("android.bluetooth.adapter.extra.CONNECTION_STATE", 0));
                return;
            }
            if (action.equals("android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED")) {
                WifiServiceImpl.this.mWifiController.sendMessage(155649, intent.getBooleanExtra("phoneinECMState", false) ? 1 : 0, 0);
            } else if (action.equals("android.intent.action.EMERGENCY_CALL_STATE_CHANGED")) {
                WifiServiceImpl.this.mWifiController.sendMessage(155662, intent.getBooleanExtra("phoneInEmergencyCall", false) ? 1 : 0, 0);
            } else if (action.equals("android.os.action.DEVICE_IDLE_MODE_CHANGED")) {
                WifiServiceImpl.this.handleIdleModeChanged();
            }
        }
    };

    public final class LocalOnlyRequestorCallback implements LocalOnlyHotspotRequestInfo.RequestingApplicationDeathCallback {
        public LocalOnlyRequestorCallback() {
        }

        @Override // com.android.server.wifi.LocalOnlyHotspotRequestInfo.RequestingApplicationDeathCallback
        public void onLocalOnlyHotspotRequestorDeath(LocalOnlyHotspotRequestInfo requestor) {
            WifiServiceImpl.this.unregisterCallingAppAndStopLocalOnlyHotspot(requestor);
        }
    }

    private class AsyncChannelExternalClientHandler extends WifiHandler {
        AsyncChannelExternalClientHandler(String tag, Looper looper) {
            super(tag, looper);
        }

        @Override // com.android.server.wifi.util.WifiHandler, android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 69633:
                    AsyncChannel ac = WifiServiceImpl.this.mFrameworkFacade.makeWifiAsyncChannel(WifiServiceImpl.TAG);
                    ac.connect(WifiServiceImpl.this.mContext, this, msg.replyTo);
                    break;
                case 151553:
                    if (checkPrivilegedPermissionsAndReplyIfNotAuthorized(msg, 151554)) {
                        WifiConfiguration config = (WifiConfiguration) msg.obj;
                        int networkId = msg.arg1;
                        Slog.d(WifiServiceImpl.TAG, "CONNECT  nid=" + Integer.toString(networkId) + " config=" + config + " uid=" + msg.sendingUid + " name=" + WifiServiceImpl.this.mContext.getPackageManager().getNameForUid(msg.sendingUid));
                        if (config != null) {
                            WifiServiceImpl.this.mClientModeImpl.sendMessage(Message.obtain(msg));
                        } else if (config == null && networkId != -1) {
                            WifiServiceImpl.this.mClientModeImpl.sendMessage(Message.obtain(msg));
                        } else {
                            Slog.e(WifiServiceImpl.TAG, "AsyncChannelExternalClientHandler.handleMessage ignoring invalid msg=" + msg);
                            replyFailed(msg, 151554, 8);
                        }
                    }
                    break;
                case 151556:
                    if (checkPrivilegedPermissionsAndReplyIfNotAuthorized(msg, 151557)) {
                        WifiServiceImpl.this.mClientModeImpl.sendMessage(Message.obtain(msg));
                    }
                    break;
                case 151559:
                    if (checkPrivilegedPermissionsAndReplyIfNotAuthorized(msg, 151560)) {
                        WifiConfiguration config2 = (WifiConfiguration) msg.obj;
                        Slog.d(WifiServiceImpl.TAG, "SAVE nid=" + Integer.toString(msg.arg1) + " config=" + config2 + " uid=" + msg.sendingUid + " name=" + WifiServiceImpl.this.mContext.getPackageManager().getNameForUid(msg.sendingUid));
                        if (config2 != null) {
                            WifiServiceImpl.this.mClientModeImpl.sendMessage(Message.obtain(msg));
                        } else {
                            Slog.e(WifiServiceImpl.TAG, "AsyncChannelExternalClientHandler.handleMessage ignoring invalid msg=" + msg);
                            replyFailed(msg, 151560, 8);
                        }
                    }
                    break;
                case 151569:
                case 151575:
                case 151576:
                    if (checkPrivilegedPermissionsAndReplyIfNotAuthorized(msg, 151570)) {
                        WifiServiceImpl.this.mClientModeImpl.sendMessage(Message.obtain(msg));
                    }
                    break;
                case 151572:
                    if (checkChangePermissionAndReplyIfNotAuthorized(msg, 151574)) {
                        WifiServiceImpl.this.mClientModeImpl.sendMessage(Message.obtain(msg));
                    }
                    break;
                default:
                    Slog.d(WifiServiceImpl.TAG, "AsyncChannelExternalClientHandler.handleMessage ignoring msg=" + msg);
                    break;
            }
        }

        private boolean checkChangePermissionAndReplyIfNotAuthorized(Message msg, int replyWhat) {
            if (!WifiServiceImpl.this.mWifiPermissionsUtil.checkChangePermission(msg.sendingUid)) {
                Slog.e(WifiServiceImpl.TAG, "AsyncChannelExternalClientHandler.handleMessage ignoring unauthorized msg=" + msg);
                replyFailed(msg, replyWhat, 9);
                return false;
            }
            return true;
        }

        private boolean checkPrivilegedPermissionsAndReplyIfNotAuthorized(Message msg, int replyWhat) {
            if (!WifiServiceImpl.this.isPrivileged(-1, msg.sendingUid)) {
                Slog.e(WifiServiceImpl.TAG, "ClientHandler.handleMessage ignoring unauthorized msg=" + msg);
                replyFailed(msg, replyWhat, 9);
                return false;
            }
            return true;
        }

        private void replyFailed(Message msg, int what, int why) {
            if (msg.replyTo == null) {
                return;
            }
            Message reply = Message.obtain();
            reply.what = what;
            reply.arg1 = why;
            try {
                msg.replyTo.send(reply);
            } catch (RemoteException e) {
            }
        }
    }

    private class ClientModeImplHandler extends WifiHandler {
        private AsyncChannel mCmiChannel;

        ClientModeImplHandler(String tag, Looper looper, AsyncChannel asyncChannel) {
            super(tag, looper);
            this.mCmiChannel = asyncChannel;
            this.mCmiChannel.connect(WifiServiceImpl.this.mContext, this, WifiServiceImpl.this.mClientModeImpl.getHandler());
        }

        @Override // com.android.server.wifi.util.WifiHandler, android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            int i = msg.what;
            if (i == 69632) {
                if (msg.arg1 == 0) {
                    WifiServiceImpl.this.mClientModeImplChannel = this.mCmiChannel;
                    return;
                }
                Slog.e(WifiServiceImpl.TAG, "ClientModeImpl connection failure, error=" + msg.arg1);
                WifiServiceImpl.this.mClientModeImplChannel = null;
                return;
            }
            if (i == 69636) {
                Slog.e(WifiServiceImpl.TAG, "ClientModeImpl channel lost, msg.arg1 =" + msg.arg1);
                WifiServiceImpl wifiServiceImpl = WifiServiceImpl.this;
                wifiServiceImpl.mClientModeImplChannel = null;
                this.mCmiChannel.connect(wifiServiceImpl.mContext, this, WifiServiceImpl.this.mClientModeImpl.getHandler());
                return;
            }
            Slog.d(WifiServiceImpl.TAG, "ClientModeImplHandler.handleMessage ignoring msg=" + msg);
        }
    }

    public WifiServiceImpl(Context context, WifiInjector wifiInjector, AsyncChannel asyncChannel) {
        this.mContext = context;
        this.mWifiInjector = wifiInjector;
        this.mClock = wifiInjector.getClock();
        this.mFacade = this.mWifiInjector.getFrameworkFacade();
        this.mWifiMetrics = this.mWifiInjector.getWifiMetrics();
        this.mWifiTrafficPoller = this.mWifiInjector.getWifiTrafficPoller();
        this.mUserManager = this.mWifiInjector.getUserManager();
        this.mCountryCode = this.mWifiInjector.getWifiCountryCode();
        this.mClientModeImpl = this.mWifiInjector.getClientModeImpl();
        this.mActiveModeWarden = this.mWifiInjector.getActiveModeWarden();
        this.mClientModeImpl.enableRssiPolling(true);
        this.mScanRequestProxy = this.mWifiInjector.getScanRequestProxy();
        this.mSettingsStore = this.mWifiInjector.getWifiSettingsStore();
        this.mPowerManager = (PowerManager) this.mContext.getSystemService(PowerManager.class);
        this.mAppOps = (AppOpsManager) this.mContext.getSystemService("appops");
        this.mActivityManager = (ActivityManager) this.mContext.getSystemService("activity");
        this.mWifiLockManager = this.mWifiInjector.getWifiLockManager();
        this.mWifiMulticastLockManager = this.mWifiInjector.getWifiMulticastLockManager();
        HandlerThread wifiServiceHandlerThread = this.mWifiInjector.getWifiServiceHandlerThread();
        this.mAsyncChannelExternalClientHandler = new AsyncChannelExternalClientHandler(TAG, wifiServiceHandlerThread.getLooper());
        this.mClientModeImplHandler = new ClientModeImplHandler(TAG, wifiServiceHandlerThread.getLooper(), asyncChannel);
        this.mWifiController = this.mWifiInjector.getWifiController();
        this.mWifiBackupRestore = this.mWifiInjector.getWifiBackupRestore();
        this.mWifiApConfigStore = this.mWifiInjector.getWifiApConfigStore();
        this.mWifiPermissionsUtil = this.mWifiInjector.getWifiPermissionsUtil();
        this.mLog = this.mWifiInjector.makeLog(TAG);
        this.mFrameworkFacade = wifiInjector.getFrameworkFacade();
        this.mIfaceIpModes = new ConcurrentHashMap<>();
        this.mLocalOnlyHotspotRequests = new HashMap<>();
        enableVerboseLoggingInternal(getVerboseLoggingLevel());
        this.mRegisteredSoftApCallbacks = new ExternalCallbackTracker<>(this.mClientModeImplHandler);
        this.mWifiInjector.getActiveModeWarden().registerSoftApCallback(new SoftApCallbackImpl());
        this.mPowerProfile = this.mWifiInjector.getPowerProfile();
        this.mWifiNetworkSuggestionsManager = this.mWifiInjector.getWifiNetworkSuggestionsManager();
        this.mDppManager = this.mWifiInjector.getDppManager();
        this.mWifiFeaturesUtils = WifiFeaturesUtils.getInstance(this.mContext);
        this.mLastNoteTime = SystemClock.elapsedRealtime();
    }

    @VisibleForTesting
    public void setWifiHandlerLogForTest(WifiLog log) {
        this.mAsyncChannelExternalClientHandler.setWifiLog(log);
    }

    public void checkAndStartWifi() {
        if (this.mFrameworkFacade.inStorageManagerCryptKeeperBounce()) {
            Log.d(TAG, "Device still encrypted. Need to restart SystemServer.  Do not start wifi.");
            return;
        }
        boolean wifiEnabled = this.mSettingsStore.isWifiToggleEnabled();
        StringBuilder sb = new StringBuilder();
        sb.append("WifiService starting up with Wi-Fi ");
        sb.append(wifiEnabled ? "enabled" : "disabled");
        Slog.i(TAG, sb.toString());
        registerForScanModeChange();
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.wifi.WifiServiceImpl.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (WifiServiceImpl.this.mSettingsStore.handleAirplaneModeToggled()) {
                    WifiServiceImpl.this.mWifiController.sendMessage(155657);
                }
                if (WifiServiceImpl.this.mSettingsStore.isAirplaneModeOn()) {
                    Log.d(WifiServiceImpl.TAG, "resetting country code because Airplane mode is ON");
                    WifiServiceImpl.this.mCountryCode.airplaneModeEnabled();
                }
            }
        }, new IntentFilter("android.intent.action.AIRPLANE_MODE"));
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.wifi.WifiServiceImpl.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String state = intent.getStringExtra("ss");
                int phoneId = intent.getIntExtra("phone", 0);
                Log.d(WifiServiceImpl.TAG, "resetting networks because SIM changed, phoneId = " + phoneId + ", state = " + state);
                if ("ABSENT".equals(state)) {
                    WifiServiceImpl.this.mClientModeImpl.resetSimAuthNetworks(false, phoneId);
                } else if ("LOADED".equals(state)) {
                    WifiServiceImpl.this.mClientModeImpl.resetSimAuthNetworks(true, phoneId);
                }
            }
        }, new IntentFilter("android.intent.action.SIM_STATE_CHANGED"));
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.wifi.WifiServiceImpl.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                int currState = intent.getIntExtra("wifi_state", 11);
                int prevState = intent.getIntExtra("previous_wifi_state", 11);
                int errorCode = intent.getIntExtra("wifi_ap_error_code", -1);
                String ifaceName = intent.getStringExtra("wifi_ap_interface_name");
                int mode = intent.getIntExtra("wifi_ap_mode", -1);
                WifiServiceImpl.this.handleWifiApStateChange(currState, prevState, errorCode, ifaceName, mode);
                WifiServiceImpl.this.handleWifiCountryCodeToast(currState);
            }
        }, new IntentFilter("android.net.wifi.WIFI_AP_STATE_CHANGED"));
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.wifi.WifiServiceImpl.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                WifiServiceImpl wifiServiceImpl = WifiServiceImpl.this;
                wifiServiceImpl.handleWifiCountryCodeToast(wifiServiceImpl.getWifiEnabledState());
            }
        }, new IntentFilter("android.net.wifi.WIFI_STATE_CHANGED"));
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.wifi.WifiServiceImpl.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (WifiFeaturesUtils.isCountryCodeUpdateByLocaleSupported()) {
                    WifiServiceImpl.this.mCountryCode.setCountryCode(Locale.getDefault().getCountry());
                }
            }
        }, new IntentFilter("android.intent.action.LOCALE_CHANGED"));
        registerForBroadcasts();
        this.mInIdleMode = this.mPowerManager.isDeviceIdleMode();
        if (!this.mClientModeImpl.syncInitialize(this.mClientModeImplChannel)) {
            Log.wtf(TAG, "Failed to initialize ClientModeImpl");
        }
        this.mWifiController.start();
        if (wifiEnabled && !SystemProperties.getBoolean("persist.lsec.wifiap", false)) {
            if (WifiFeaturesUtils.isWifiCountryWarningSupported()) {
                this.selfEnableWifi = true;
            }
            setWifiEnabled(this.mContext.getPackageName(), wifiEnabled);
        }
    }

    public void handleBootCompleted() {
        Log.d(TAG, "Handle boot completed");
        this.mClientModeImpl.handleBootCompleted();
    }

    public void handleUserSwitch(int userId) {
        Log.d(TAG, "Handle user switch " + userId);
        this.mClientModeImpl.handleUserSwitch(userId);
    }

    public void handleUserUnlock(int userId) {
        Log.d(TAG, "Handle user unlock " + userId);
        this.mClientModeImpl.handleUserUnlock(userId);
    }

    public void handleUserStop(int userId) {
        Log.d(TAG, "Handle user stop " + userId);
        this.mClientModeImpl.handleUserStop(userId);
    }

    public boolean startScan(final String packageName) {
        if (enforceChangePermission(packageName) != 0) {
            return false;
        }
        final int callingUid = Binder.getCallingUid();
        long ident = Binder.clearCallingIdentity();
        this.mLog.info("startScan uid=%").c(callingUid).flush();
        synchronized (this) {
            if (this.mInIdleMode) {
                sendFailedScanBroadcast();
                this.mScanPending = true;
                return false;
            }
            try {
                this.mWifiPermissionsUtil.enforceCanAccessScanResults(packageName, callingUid);
                final GeneralUtil.Mutable<Boolean> scanSuccess = new GeneralUtil.Mutable<>();
                boolean runWithScissorsSuccess = this.mWifiInjector.getClientModeImplHandler().runWithScissors(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$71KWGZ9o3U1lf_2vP7tmY9cz4qQ
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$startScan$0$WifiServiceImpl(scanSuccess, callingUid, packageName);
                    }
                }, 4000L);
                if (!runWithScissorsSuccess) {
                    Log.e(TAG, "Failed to post runnable to start scan");
                    sendFailedScanBroadcast();
                    return false;
                }
                if (scanSuccess.value.booleanValue()) {
                    return true;
                }
                Log.e(TAG, "Failed to start scan");
                return false;
            } catch (SecurityException e) {
                Slog.e(TAG, "Permission violation - startScan not allowed for uid=" + callingUid + ", packageName=" + packageName + ", reason=" + e);
                return false;
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [E, java.lang.Boolean] */
    public /* synthetic */ void lambda$startScan$0$WifiServiceImpl(GeneralUtil.Mutable scanSuccess, int callingUid, String packageName) {
        scanSuccess.value = Boolean.valueOf(this.mScanRequestProxy.startScan(callingUid, packageName));
    }

    private void sendFailedScanBroadcast() {
        long callingIdentity = Binder.clearCallingIdentity();
        try {
            Intent intent = new Intent("android.net.wifi.SCAN_RESULTS");
            intent.addFlags(67108864);
            intent.putExtra("resultsUpdated", false);
            this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
        } finally {
            Binder.restoreCallingIdentity(callingIdentity);
        }
    }

    public String getCurrentNetworkWpsNfcConfigurationToken() {
        enforceConnectivityInternalPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getCurrentNetworkWpsNfcConfigurationToken uid=%").c(Binder.getCallingUid()).flush();
            return null;
        }
        return null;
    }

    void handleIdleModeChanged() {
        boolean doScan = false;
        synchronized (this) {
            boolean idle = this.mPowerManager.isDeviceIdleMode();
            if (this.mInIdleMode != idle) {
                this.mInIdleMode = idle;
                if (!idle && this.mScanPending) {
                    this.mScanPending = false;
                    doScan = true;
                }
            }
        }
        if (doScan) {
            startScan(this.mContext.getOpPackageName());
        }
    }

    private boolean checkNetworkSettingsPermission(int pid, int uid) {
        return this.mContext.checkPermission("android.permission.NETWORK_SETTINGS", pid, uid) == 0;
    }

    private boolean checkNetworkSetupWizardPermission(int pid, int uid) {
        return this.mContext.checkPermission("android.permission.NETWORK_SETUP_WIZARD", pid, uid) == 0;
    }

    private boolean checkNetworkStackPermission(int pid, int uid) {
        return this.mContext.checkPermission("android.permission.NETWORK_STACK", pid, uid) == 0;
    }

    private boolean checkNetworkManagedProvisioningPermission(int pid, int uid) {
        return this.mContext.checkPermission("android.permission.NETWORK_MANAGED_PROVISIONING", pid, uid) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPrivileged(int pid, int uid) {
        return checkNetworkSettingsPermission(pid, uid) || checkNetworkSetupWizardPermission(pid, uid) || checkNetworkStackPermission(pid, uid) || checkNetworkManagedProvisioningPermission(pid, uid);
    }

    private boolean isSettingsOrSuw(int pid, int uid) {
        return checkNetworkSettingsPermission(pid, uid) || checkNetworkSetupWizardPermission(pid, uid);
    }

    private boolean isSystem(String packageName, int uid) {
        long ident = Binder.clearCallingIdentity();
        try {
            ApplicationInfo info = this.mContext.getPackageManager().getApplicationInfoAsUser(packageName, 0, UserHandle.getUserId(uid));
            return info.isSystemApp() || info.isUpdatedSystemApp();
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    private boolean isDeviceOrProfileOwner(int uid) {
        DevicePolicyManagerInternal dpmi = this.mWifiInjector.getWifiPermissionsWrapper().getDevicePolicyManagerInternal();
        if (dpmi == null) {
            return false;
        }
        return dpmi.isActiveAdminWithPolicy(uid, -2) || dpmi.isActiveAdminWithPolicy(uid, -1);
    }

    private void enforceNetworkSettingsPermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.NETWORK_SETTINGS", TAG);
    }

    private void enforceNetworkStackPermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.NETWORK_STACK", TAG);
    }

    private void enforceAccessPermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE", TAG);
    }

    private int enforceChangePermission(String callingPackage) {
        this.mAppOps.checkPackage(Binder.getCallingUid(), callingPackage);
        if (checkNetworkSettingsPermission(Binder.getCallingPid(), Binder.getCallingUid())) {
            return 0;
        }
        this.mContext.enforceCallingOrSelfPermission("android.permission.CHANGE_WIFI_STATE", TAG);
        return this.mAppOps.noteOp("android:change_wifi_state", Binder.getCallingUid(), callingPackage);
    }

    private void enforceLocationHardwarePermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.LOCATION_HARDWARE", "LocationHardware");
    }

    private void enforceReadCredentialPermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.READ_WIFI_CREDENTIAL", TAG);
    }

    private void enforceWorkSourcePermission() {
        this.mContext.enforceCallingPermission("android.permission.UPDATE_DEVICE_STATS", TAG);
    }

    private void enforceMulticastChangePermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CHANGE_WIFI_MULTICAST_STATE", TAG);
    }

    private void enforceConnectivityInternalPermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CONNECTIVITY_INTERNAL", "ConnectivityService");
    }

    private void enforceLocationPermission(String pkgName, int uid) {
        this.mWifiPermissionsUtil.enforceLocationPermission(pkgName, uid);
    }

    private boolean isTargetSdkLessThanQOrPrivileged(String packageName, int pid, int uid) {
        return this.mWifiPermissionsUtil.isTargetSdkLessThan(packageName, 29) || isPrivileged(pid, uid) || isDeviceOrProfileOwner(uid) || isSystem(packageName, uid) || this.mWifiPermissionsUtil.checkSystemAlertWindowPermission(uid, packageName);
    }

    public synchronized boolean setWifiEnabled(String packageName, boolean enable) {
        if (enforceChangePermission(packageName) != 0) {
            return false;
        }
        if (enable) {
            SystemProperties.set("persist.lsec.wifiap", "false");
        }
        if (enable && PermissionUtils.isCtaFeatureSupported()) {
            boolean checkRet = PermissionUtils.checkCtaPermission("com.unisoc.permission.CTA_ENABLE_WIFI");
            if (!checkRet) {
                Log.w(TAG, "[setWifiEnabled]do nothing as permission CTA_ENABLE_WIFI denied");
                return false;
            }
        }
        if (!this.mWifiFeaturesUtils.isSupportWifiFeature()) {
            return false;
        }
        boolean isPrivileged = isPrivileged(Binder.getCallingPid(), Binder.getCallingUid());
        if (!isPrivileged && !isDeviceOrProfileOwner(Binder.getCallingUid()) && !this.mWifiPermissionsUtil.isTargetSdkLessThan(packageName, 29) && !isSystem(packageName, Binder.getCallingUid())) {
            this.mLog.info("setWifiEnabled not allowed for uid=%").c(Binder.getCallingUid()).flush();
            return false;
        }
        if (this.mSettingsStore.isAirplaneModeOn() && !isPrivileged) {
            this.mLog.err("setWifiEnabled in Airplane mode: only Settings can toggle wifi").flush();
            return false;
        }
        boolean apEnabled = this.mWifiApState == 13;
        if (apEnabled && !isPrivileged) {
            this.mLog.err("setWifiEnabled SoftAp enabled: only Settings can toggle wifi").flush();
            return false;
        }
        this.mLog.info("setWifiEnabled package=% uid=% enable=%").c(packageName).c(Binder.getCallingUid()).c(enable).flush();
        long ident = Binder.clearCallingIdentity();
        try {
            if (!this.mSettingsStore.handleWifiToggled(enable)) {
                Binder.restoreCallingIdentity(ident);
                return true;
            }
            Binder.restoreCallingIdentity(ident);
            this.mWifiMetrics.incrementNumWifiToggles(isPrivileged, enable);
            this.mWifiController.sendMessage(155656);
            return true;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
    }

    public int getWifiEnabledState() {
        enforceAccessPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getWifiEnabledState uid=%").c(Binder.getCallingUid()).flush();
        }
        return this.mClientModeImpl.syncGetWifiState();
    }

    public int getWifiApEnabledState() {
        enforceAccessPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getWifiApEnabledState uid=%").c(Binder.getCallingUid()).flush();
        }
        final MutableInt apState = new MutableInt(11);
        this.mWifiInjector.getClientModeImplHandler().runWithScissors(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$Tk4v3H_jLeO4POzFwYzi9LRyPtE
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getWifiApEnabledState$1$WifiServiceImpl(apState);
            }
        }, 4000L);
        return apState.value;
    }

    public /* synthetic */ void lambda$getWifiApEnabledState$1$WifiServiceImpl(MutableInt apState) {
        apState.value = this.mWifiApState;
    }

    public void updateInterfaceIpState(final String ifaceName, final int mode) {
        enforceNetworkStackPermission();
        this.mLog.info("updateInterfaceIpState uid=%").c(Binder.getCallingUid()).flush();
        this.mWifiInjector.getClientModeImplHandler().post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$UQ9JbF5sXBV77FhG4oE7wjNFgek
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateInterfaceIpState$2$WifiServiceImpl(ifaceName, mode);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: updateInterfaceIpStateInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$updateInterfaceIpState$2$WifiServiceImpl(String ifaceName, int mode) {
        if (this.mWifiApState != 13 && ifaceName != null && mode == 1) {
            Slog.d(TAG, "ignore this TetherInterface IP state");
            return;
        }
        synchronized (this.mLocalOnlyHotspotRequests) {
            Integer previousMode = -1;
            if (ifaceName != null) {
                previousMode = this.mIfaceIpModes.put(ifaceName, Integer.valueOf(mode));
            }
            Slog.d(TAG, "updateInterfaceIpState: ifaceName=" + ifaceName + " mode=" + mode + " previous mode= " + previousMode);
            if (mode != -1) {
                if (mode == 0) {
                    Slog.d(TAG, "IP mode config error - need to clean up");
                    if (this.mLocalOnlyHotspotRequests.isEmpty()) {
                        Slog.d(TAG, "no LOHS requests, stop softap");
                        stopSoftAp();
                    } else {
                        Slog.d(TAG, "we have LOHS requests, clean them up");
                        sendHotspotFailedMessageToAllLOHSRequestInfoEntriesLocked(2);
                    }
                    lambda$updateInterfaceIpState$2$WifiServiceImpl(null, -1);
                } else if (mode != 1) {
                    if (mode == 2) {
                        if (this.mLocalOnlyHotspotRequests.isEmpty()) {
                            stopSoftAp();
                            lambda$updateInterfaceIpState$2$WifiServiceImpl(null, -1);
                            return;
                        }
                        sendHotspotStartedMessageToAllLOHSRequestInfoEntriesLocked();
                    } else {
                        this.mLog.warn("updateInterfaceIpStateInternal: unknown mode %").c(mode).flush();
                    }
                } else if (!isConcurrentLohsAndTetheringSupported()) {
                    sendHotspotFailedMessageToAllLOHSRequestInfoEntriesLocked(3);
                }
            } else if (ifaceName == null) {
                this.mIfaceIpModes.clear();
            }
        }
    }

    public boolean startSoftAp(WifiConfiguration wifiConfig) {
        enforceNetworkStackPermission();
        if (!this.mWifiFeaturesUtils.isSupportWifiFeature()) {
            return false;
        }
        if (!WifiFeaturesUtils.isWifiCountryWarningSupported()) {
            this.mLog.info("startSoftAp uid=%").c(Binder.getCallingUid()).flush();
        }
        synchronized (this.mLocalOnlyHotspotRequests) {
            if (this.mIfaceIpModes.contains(1)) {
                this.mLog.err("Tethering is already active.").flush();
                return false;
            }
            if (!isConcurrentLohsAndTetheringSupported() && !this.mLocalOnlyHotspotRequests.isEmpty()) {
                stopSoftApInternal(2);
            }
            return startSoftApInternal(wifiConfig, 1);
        }
    }

    private boolean startSoftApInternal(WifiConfiguration wifiConfig, int mode) {
        this.mLog.trace("startSoftApInternal uid=% mode=%").c(Binder.getCallingUid()).c(mode).flush();
        if (wifiConfig == null || WifiApConfigStore.validateApWifiConfiguration(wifiConfig)) {
            SoftApModeConfiguration softApConfig = new SoftApModeConfiguration(mode, wifiConfig);
            this.mWifiController.sendMessage(155658, 1, 0, softApConfig);
            return true;
        }
        Slog.e(TAG, "Invalid WifiConfiguration");
        return false;
    }

    public boolean stopSoftAp() {
        boolean zStopSoftApInternal;
        enforceNetworkStackPermission();
        this.mLog.info("stopSoftAp uid=%").c(Binder.getCallingUid()).flush();
        synchronized (this.mLocalOnlyHotspotRequests) {
            if (!this.mLocalOnlyHotspotRequests.isEmpty()) {
                this.mLog.trace("Call to stop Tethering while LOHS is active, Registered LOHS callers will be updated when softap stopped.").flush();
            }
            zStopSoftApInternal = stopSoftApInternal(1);
        }
        return zStopSoftApInternal;
    }

    private boolean stopSoftApInternal(int mode) {
        this.mLog.trace("stopSoftApInternal uid=%").c(Binder.getCallingUid()).flush();
        this.mWifiController.sendMessage(155658, 0, mode);
        return true;
    }

    private final class SoftApCallbackImpl implements WifiManager.SoftApCallback {
        private SoftApCallbackImpl() {
        }

        public void onStateChanged(int state, int failureReason) {
            WifiServiceImpl.this.mSoftApState = state;
            Iterator<ISoftApCallback> iterator = WifiServiceImpl.this.mRegisteredSoftApCallbacks.getCallbacks().iterator();
            while (iterator.hasNext()) {
                ISoftApCallback callback = iterator.next();
                try {
                    callback.onStateChanged(state, failureReason);
                } catch (RemoteException e) {
                    Log.e(WifiServiceImpl.TAG, "onStateChanged: remote exception -- " + e);
                    iterator.remove();
                }
            }
        }

        public void onNumClientsChanged(int numClients) {
            WifiServiceImpl.this.mSoftApNumClients = numClients;
            Iterator<ISoftApCallback> iterator = WifiServiceImpl.this.mRegisteredSoftApCallbacks.getCallbacks().iterator();
            while (iterator.hasNext()) {
                ISoftApCallback callback = iterator.next();
                try {
                    callback.onNumClientsChanged(numClients);
                } catch (RemoteException e) {
                    Log.e(WifiServiceImpl.TAG, "onNumClientsChanged: remote exception -- " + e);
                    iterator.remove();
                }
            }
        }
    }

    public void registerSoftApCallback(final IBinder binder, final ISoftApCallback callback, final int callbackIdentifier) {
        if (binder == null) {
            throw new IllegalArgumentException("Binder must not be null");
        }
        if (callback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        enforceNetworkSettingsPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("registerSoftApCallback uid=%").c(Binder.getCallingUid()).flush();
        }
        this.mWifiInjector.getClientModeImplHandler().post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$WH1yXObMcpzajFG1KwwEOakTA7o
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$registerSoftApCallback$3$WifiServiceImpl(binder, callback, callbackIdentifier);
            }
        });
    }

    public /* synthetic */ void lambda$registerSoftApCallback$3$WifiServiceImpl(IBinder binder, ISoftApCallback callback, int callbackIdentifier) {
        if (!this.mRegisteredSoftApCallbacks.add(binder, callback, callbackIdentifier)) {
            Log.e(TAG, "registerSoftApCallback: Failed to add callback");
            return;
        }
        try {
            callback.onStateChanged(this.mSoftApState, 0);
            callback.onNumClientsChanged(this.mSoftApNumClients);
        } catch (RemoteException e) {
            Log.e(TAG, "registerSoftApCallback: remote exception -- " + e);
        }
    }

    public void unregisterSoftApCallback(final int callbackIdentifier) {
        enforceNetworkSettingsPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("unregisterSoftApCallback uid=%").c(Binder.getCallingUid()).flush();
        }
        this.mWifiInjector.getClientModeImplHandler().post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$RmshU723eQairQK6HNmdtEWCoRA
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$unregisterSoftApCallback$4$WifiServiceImpl(callbackIdentifier);
            }
        });
    }

    public /* synthetic */ void lambda$unregisterSoftApCallback$4$WifiServiceImpl(int callbackIdentifier) {
        this.mRegisteredSoftApCallbacks.remove(callbackIdentifier);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWifiApStateChange(int currentState, int previousState, int errorCode, String ifaceName, int mode) {
        Slog.d(TAG, "handleWifiApStateChange: currentState=" + currentState + " previousState=" + previousState + " errorCode= " + errorCode + " ifaceName=" + ifaceName + " mode=" + mode);
        this.mWifiApState = currentState;
        if (currentState == 14) {
            synchronized (this.mLocalOnlyHotspotRequests) {
                int errorToReport = 2;
                if (errorCode == 1) {
                    errorToReport = 1;
                }
                sendHotspotFailedMessageToAllLOHSRequestInfoEntriesLocked(errorToReport);
                lambda$updateInterfaceIpState$2$WifiServiceImpl(null, -1);
            }
            return;
        }
        if (currentState == 10 || currentState == 11) {
            synchronized (this.mLocalOnlyHotspotRequests) {
                if (this.mIfaceIpModes.getOrDefault(ifaceName, -1).intValue() == 2) {
                    sendHotspotStoppedMessageToAllLOHSRequestInfoEntriesLocked();
                } else if (!isConcurrentLohsAndTetheringSupported()) {
                    sendHotspotFailedMessageToAllLOHSRequestInfoEntriesLocked(2);
                }
                lambda$updateInterfaceIpState$2$WifiServiceImpl(null, -1);
            }
        }
    }

    @GuardedBy({"mLocalOnlyHotspotRequests"})
    private void sendHotspotFailedMessageToAllLOHSRequestInfoEntriesLocked(int arg1) {
        for (LocalOnlyHotspotRequestInfo requestor : this.mLocalOnlyHotspotRequests.values()) {
            try {
                requestor.sendHotspotFailedMessage(arg1);
                requestor.unlinkDeathRecipient();
            } catch (RemoteException e) {
            }
        }
        this.mLocalOnlyHotspotRequests.clear();
    }

    @GuardedBy({"mLocalOnlyHotspotRequests"})
    private void sendHotspotStoppedMessageToAllLOHSRequestInfoEntriesLocked() {
        for (LocalOnlyHotspotRequestInfo requestor : this.mLocalOnlyHotspotRequests.values()) {
            try {
                requestor.sendHotspotStoppedMessage();
                requestor.unlinkDeathRecipient();
            } catch (RemoteException e) {
            }
        }
        this.mLocalOnlyHotspotRequests.clear();
    }

    @GuardedBy({"mLocalOnlyHotspotRequests"})
    private void sendHotspotStartedMessageToAllLOHSRequestInfoEntriesLocked() {
        for (LocalOnlyHotspotRequestInfo requestor : this.mLocalOnlyHotspotRequests.values()) {
            try {
                requestor.sendHotspotStartedMessage(this.mLocalOnlyHotspotConfig);
            } catch (RemoteException e) {
            }
        }
    }

    @VisibleForTesting
    void registerLOHSForTest(int pid, LocalOnlyHotspotRequestInfo request) {
        this.mLocalOnlyHotspotRequests.put(Integer.valueOf(pid), request);
    }

    public int startLocalOnlyHotspot(Messenger messenger, IBinder binder, String packageName) {
        int uid = Binder.getCallingUid();
        int pid = Binder.getCallingPid();
        if (enforceChangePermission(packageName) != 0) {
            return 2;
        }
        enforceLocationPermission(packageName, uid);
        long ident = Binder.clearCallingIdentity();
        try {
            if (!this.mWifiPermissionsUtil.isLocationModeEnabled()) {
                throw new SecurityException("Location mode is not enabled.");
            }
            Binder.restoreCallingIdentity(ident);
            if (this.mUserManager.hasUserRestriction("no_config_tethering")) {
                return 4;
            }
            if (!this.mFrameworkFacade.isAppForeground(uid)) {
                return 3;
            }
            this.mLog.info("startLocalOnlyHotspot uid=% pid=%").c(uid).c(pid).flush();
            synchronized (this.mLocalOnlyHotspotRequests) {
                int i = 1;
                if (!isConcurrentLohsAndTetheringSupported() && this.mIfaceIpModes.contains(1)) {
                    this.mLog.info("Cannot start localOnlyHotspot when WiFi Tethering is active.").flush();
                    return 3;
                }
                if (this.mLocalOnlyHotspotRequests.get(Integer.valueOf(pid)) != null) {
                    this.mLog.trace("caller already has an active request").flush();
                    throw new IllegalStateException("Caller already has an active LocalOnlyHotspot request");
                }
                LocalOnlyHotspotRequestInfo request = new LocalOnlyHotspotRequestInfo(binder, messenger, new LocalOnlyRequestorCallback());
                if (this.mIfaceIpModes.contains(2)) {
                    try {
                        this.mLog.trace("LOHS already up, trigger onStarted callback").flush();
                        request.sendHotspotStartedMessage(this.mLocalOnlyHotspotConfig);
                    } catch (RemoteException e) {
                        return 2;
                    }
                } else if (this.mLocalOnlyHotspotRequests.isEmpty()) {
                    boolean is5Ghz = hasAutomotiveFeature(this.mContext) && this.mContext.getResources().getBoolean(R.bool.config_cecTvSendStandbyOnSleepEnabled_default) && is5GhzSupported();
                    Context context = this.mContext;
                    if (!is5Ghz) {
                        i = 0;
                    }
                    this.mLocalOnlyHotspotConfig = WifiApConfigStore.generateLocalOnlyHotspotConfig(context, i);
                    startSoftApInternal(this.mLocalOnlyHotspotConfig, 2);
                }
                this.mLocalOnlyHotspotRequests.put(Integer.valueOf(pid), request);
                return 0;
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
    }

    public void stopLocalOnlyHotspot() {
        int uid = Binder.getCallingUid();
        int pid = Binder.getCallingPid();
        this.mLog.info("stopLocalOnlyHotspot uid=% pid=%").c(uid).c(pid).flush();
        synchronized (this.mLocalOnlyHotspotRequests) {
            LocalOnlyHotspotRequestInfo requestInfo = this.mLocalOnlyHotspotRequests.get(Integer.valueOf(pid));
            if (requestInfo == null) {
                return;
            }
            requestInfo.unlinkDeathRecipient();
            unregisterCallingAppAndStopLocalOnlyHotspot(requestInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterCallingAppAndStopLocalOnlyHotspot(LocalOnlyHotspotRequestInfo request) {
        this.mLog.trace("unregisterCallingAppAndStopLocalOnlyHotspot pid=%").c(request.getPid()).flush();
        synchronized (this.mLocalOnlyHotspotRequests) {
            if (this.mLocalOnlyHotspotRequests.remove(Integer.valueOf(request.getPid())) == null) {
                this.mLog.trace("LocalOnlyHotspotRequestInfo not found to remove").flush();
                return;
            }
            if (this.mLocalOnlyHotspotRequests.isEmpty()) {
                this.mLocalOnlyHotspotConfig = null;
                lambda$updateInterfaceIpState$2$WifiServiceImpl(null, -1);
                long identity = Binder.clearCallingIdentity();
                try {
                    stopSoftApInternal(2);
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }

    public void startWatchLocalOnlyHotspot(Messenger messenger, IBinder binder) {
        enforceNetworkSettingsPermission();
        throw new UnsupportedOperationException("LocalOnlyHotspot is still in development");
    }

    public void stopWatchLocalOnlyHotspot() {
        enforceNetworkSettingsPermission();
        throw new UnsupportedOperationException("LocalOnlyHotspot is still in development");
    }

    public boolean softApWpsCheckPin(String wpsPin, String packageName) {
        if (enforceChangePermission(packageName) != 0) {
            return false;
        }
        return this.mClientModeImpl.syncSoftApWpsCheckPin(wpsPin);
    }

    public boolean softApBlockStation(String mac, String packageName) {
        if (!isSettingsOrSuw(Binder.getCallingPid(), Binder.getCallingUid()) || enforceChangePermission(packageName) != 0) {
            return false;
        }
        if (getWifiApEnabledState() == 13) {
            return this.mClientModeImpl.syncSoftApBlockStation(mac);
        }
        return true;
    }

    public boolean softApUnblockStation(String mac, String packageName) {
        if (!isSettingsOrSuw(Binder.getCallingPid(), Binder.getCallingUid()) || enforceChangePermission(packageName) != 0) {
            return false;
        }
        if (getWifiApEnabledState() == 13) {
            return this.mClientModeImpl.syncSoftApUnblockStation(mac);
        }
        return true;
    }

    public List<String> softApGetConnectedStationsDetail(String packageName) {
        if (enforceChangePermission(packageName) != 0) {
            return new ArrayList();
        }
        return this.mClientModeImpl.syncSoftApGetConnectedStationsDetail();
    }

    public List<String> softApGetBlockedStationsDetail(String packageName) {
        if (enforceChangePermission(packageName) != 0) {
            return new ArrayList();
        }
        if (getWifiApEnabledState() == 13) {
            return this.mClientModeImpl.syncSoftApGetBlockedStationsDetail();
        }
        return new ArrayList();
    }

    public boolean softApAddClientToWhiteList(String mac, String name, String packageName) {
        if (isSettingsOrSuw(Binder.getCallingPid(), Binder.getCallingUid()) && enforceChangePermission(packageName) == 0) {
            return this.mClientModeImpl.syncSoftApAddClientToWhiteList(mac, name);
        }
        return false;
    }

    public boolean softApDelClientFromWhiteList(String mac, String name, String packageName) {
        if (isSettingsOrSuw(Binder.getCallingPid(), Binder.getCallingUid()) && enforceChangePermission(packageName) == 0) {
            return this.mClientModeImpl.syncSoftApDelClientFromWhiteList(mac, name);
        }
        return false;
    }

    public boolean softApSetClientWhiteListEnabled(boolean enabled, String packageName) {
        if (isSettingsOrSuw(Binder.getCallingPid(), Binder.getCallingUid()) && enforceChangePermission(packageName) == 0) {
            return this.mClientModeImpl.syncSoftApSetClientWhiteListEnabled(enabled);
        }
        return false;
    }

    public List<String> softApGetClientWhiteList(String packageName) {
        if (enforceChangePermission(packageName) != 0) {
            return new ArrayList();
        }
        return this.mClientModeImpl.syncSoftApGetClientWhiteList();
    }

    public boolean softApIsWhiteListEnabled(String packageName) {
        if (enforceChangePermission(packageName) != 0) {
            return false;
        }
        return this.mClientModeImpl.syncSoftApIsWhiteListEnabled();
    }

    public WifiConfiguration getWifiApConfiguration() {
        enforceAccessPermission();
        int uid = Binder.getCallingUid();
        if (!this.mWifiPermissionsUtil.checkConfigOverridePermission(uid)) {
            throw new SecurityException("App not allowed to read or update stored WiFi Ap config (uid = " + uid + ")");
        }
        this.mLog.info("getWifiApConfiguration uid=%").c(uid).flush();
        final GeneralUtil.Mutable<WifiConfiguration> config = new GeneralUtil.Mutable<>();
        boolean success = this.mWifiInjector.getClientModeImplHandler().runWithScissors(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$YyW97EISRuEDFxd28e1BPgstanY
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getWifiApConfiguration$5$WifiServiceImpl(config);
            }
        }, 4000L);
        if (success) {
            return config.value;
        }
        Log.e(TAG, "Failed to post runnable to fetch ap config");
        return new WifiConfiguration();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [E, android.net.wifi.WifiConfiguration] */
    public /* synthetic */ void lambda$getWifiApConfiguration$5$WifiServiceImpl(GeneralUtil.Mutable config) {
        config.value = this.mWifiApConfigStore.getApConfiguration();
    }

    public boolean setWifiApConfiguration(final WifiConfiguration wifiConfig, String packageName) {
        if (enforceChangePermission(packageName) != 0) {
            return false;
        }
        int uid = Binder.getCallingUid();
        if (!this.mWifiPermissionsUtil.checkConfigOverridePermission(uid)) {
            throw new SecurityException("App not allowed to read or update stored WiFi AP config (uid = " + uid + ")");
        }
        this.mLog.info("setWifiApConfiguration uid=%").c(uid).flush();
        if (wifiConfig == null) {
            return false;
        }
        if (WifiApConfigStore.validateApWifiConfiguration(wifiConfig)) {
            this.mClientModeImplHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$1NcQfkLN2A3T-gWX_qB4iMe_lh4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setWifiApConfiguration$6$WifiServiceImpl(wifiConfig);
                }
            });
            return true;
        }
        Slog.e(TAG, "Invalid WifiConfiguration");
        return false;
    }

    public /* synthetic */ void lambda$setWifiApConfiguration$6$WifiServiceImpl(WifiConfiguration wifiConfig) {
        this.mWifiApConfigStore.setApConfiguration(wifiConfig);
        if (WifiFeaturesUtils.FeatureProperty.SUPPORT_SPRD_SOFTAP_FEATURES && getWifiApEnabledState() == 13) {
            this.mWifiController.sendMessage(155671);
        }
    }

    public void notifyUserOfApBandConversion(String packageName) {
        enforceNetworkSettingsPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("notifyUserOfApBandConversion uid=% packageName=%").c(Binder.getCallingUid()).c(packageName).flush();
        }
        this.mWifiApConfigStore.notifyUserOfApBandConversion(packageName);
    }

    public boolean isScanAlwaysAvailable() {
        enforceAccessPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("isScanAlwaysAvailable uid=%").c(Binder.getCallingUid()).flush();
        }
        return this.mSettingsStore.isScanAlwaysAvailable();
    }

    public boolean disconnect(String packageName) {
        if (enforceChangePermission(packageName) != 0) {
            return false;
        }
        if (!isTargetSdkLessThanQOrPrivileged(packageName, Binder.getCallingPid(), Binder.getCallingUid())) {
            this.mLog.info("disconnect not allowed for uid=%").c(Binder.getCallingUid()).flush();
            return false;
        }
        this.mLog.info("disconnect uid=%").c(Binder.getCallingUid()).flush();
        this.mClientModeImpl.disconnectCommand();
        return true;
    }

    public boolean reconnect(String packageName) {
        if (enforceChangePermission(packageName) != 0) {
            return false;
        }
        if (!isTargetSdkLessThanQOrPrivileged(packageName, Binder.getCallingPid(), Binder.getCallingUid())) {
            this.mLog.info("reconnect not allowed for uid=%").c(Binder.getCallingUid()).flush();
            return false;
        }
        this.mLog.info("reconnect uid=%").c(Binder.getCallingUid()).flush();
        this.mClientModeImpl.reconnectCommand(new WorkSource(Binder.getCallingUid()));
        return true;
    }

    public boolean reassociate(String packageName) {
        if (enforceChangePermission(packageName) != 0) {
            return false;
        }
        if (!isTargetSdkLessThanQOrPrivileged(packageName, Binder.getCallingPid(), Binder.getCallingUid())) {
            this.mLog.info("reassociate not allowed for uid=%").c(Binder.getCallingUid()).flush();
            return false;
        }
        this.mLog.info("reassociate uid=%").c(Binder.getCallingUid()).flush();
        this.mClientModeImpl.reassociateCommand();
        return true;
    }

    public long getSupportedFeatures() {
        enforceAccessPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getSupportedFeatures uid=%").c(Binder.getCallingUid()).flush();
        }
        return getSupportedFeaturesInternal();
    }

    public void requestActivityInfo(ResultReceiver result) {
        Bundle bundle = new Bundle();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("requestActivityInfo uid=%").c(Binder.getCallingUid()).flush();
        }
        bundle.putParcelable("controller_activity", reportActivityInfo());
        result.send(0, bundle);
    }

    public WifiActivityEnergyInfo reportActivityInfo() {
        WifiActivityEnergyInfo energyInfo;
        long[] txTimePerLevel;
        double rxIdleCurrent;
        enforceAccessPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("reportActivityInfo uid=%").c(Binder.getCallingUid()).flush();
        }
        if ((getSupportedFeatures() & 65536) == 0) {
            return null;
        }
        WifiActivityEnergyInfo energyInfo2 = null;
        AsyncChannel asyncChannel = this.mClientModeImplChannel;
        if (asyncChannel == null) {
            Slog.e(TAG, "mClientModeImplChannel is not initialized");
            return null;
        }
        WifiLinkLayerStats stats = this.mClientModeImpl.syncGetLinkLayerStats(asyncChannel);
        if (stats == null) {
            energyInfo = null;
        } else {
            double rxIdleCurrent2 = this.mPowerProfile.getAveragePower("wifi.controller.idle");
            double rxCurrent = this.mPowerProfile.getAveragePower("wifi.controller.rx");
            double txCurrent = this.mPowerProfile.getAveragePower("wifi.controller.tx");
            double voltage = this.mPowerProfile.getAveragePower("wifi.controller.voltage") / 1000.0d;
            long rxIdleTime = (stats.on_time - stats.tx_time) - stats.rx_time;
            if (stats.tx_time_per_level != null) {
                long[] txTimePerLevel2 = new long[stats.tx_time_per_level.length];
                int i = 0;
                while (true) {
                    WifiActivityEnergyInfo energyInfo3 = energyInfo2;
                    if (i >= txTimePerLevel2.length) {
                        break;
                    }
                    txTimePerLevel2[i] = stats.tx_time_per_level[i];
                    i++;
                    energyInfo2 = energyInfo3;
                }
                txTimePerLevel = txTimePerLevel2;
            } else {
                txTimePerLevel = new long[0];
            }
            long energyUsed = (long) (((((double) stats.tx_time) * txCurrent) + (((double) stats.rx_time) * rxCurrent) + (rxIdleTime * rxIdleCurrent2)) * voltage);
            if (rxIdleTime < 0 || stats.on_time < 0 || stats.tx_time < 0 || stats.rx_time < 0 || stats.on_time_scan < 0 || energyUsed < 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(" rxIdleCur=" + rxIdleCurrent2);
                sb.append(" rxCur=" + rxCurrent);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(" txCur=");
                rxIdleCurrent = txCurrent;
                sb2.append(rxIdleCurrent);
                sb.append(sb2.toString());
                sb.append(" voltage=" + voltage);
                sb.append(" on_time=" + stats.on_time);
                sb.append(" tx_time=" + stats.tx_time);
                sb.append(" tx_time_per_level=" + Arrays.toString(txTimePerLevel));
                sb.append(" rx_time=" + stats.rx_time);
                sb.append(" rxIdleTime=" + rxIdleTime);
                sb.append(" scan_time=" + stats.on_time_scan);
                sb.append(" energy=" + energyUsed);
                Log.d(TAG, " reportActivityInfo: " + sb.toString());
            } else {
                rxIdleCurrent = txCurrent;
            }
            energyInfo = new WifiActivityEnergyInfo(this.mClock.getElapsedSinceBootMillis(), 3, stats.tx_time, txTimePerLevel, stats.rx_time, stats.on_time_scan, rxIdleTime, energyUsed);
        }
        if (energyInfo != null && energyInfo.isValid()) {
            return energyInfo;
        }
        return null;
    }

    public ParceledListSlice<WifiConfiguration> getConfiguredNetworks(String packageName) {
        enforceAccessPermission();
        int callingUid = Binder.getCallingUid();
        if (callingUid != LOCATION_NOTITY_MIN_INTERNAL && callingUid != 0) {
            long ident = Binder.clearCallingIdentity();
            try {
                try {
                    this.mWifiPermissionsUtil.enforceCanAccessScanResults(packageName, callingUid);
                    Binder.restoreCallingIdentity(ident);
                } catch (SecurityException e) {
                    Slog.e(TAG, "Permission violation - getConfiguredNetworks not allowed for uid=" + callingUid + ", packageName=" + packageName + ", reason=" + e);
                    ParceledListSlice<WifiConfiguration> parceledListSlice = new ParceledListSlice<>(new ArrayList());
                    Binder.restoreCallingIdentity(ident);
                    return parceledListSlice;
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }
        boolean isTargetSdkLessThanQOrPrivileged = isTargetSdkLessThanQOrPrivileged(packageName, Binder.getCallingPid(), callingUid);
        boolean isCarrierApp = this.mWifiInjector.makeTelephonyManager().checkCarrierPrivilegesForPackageAnyPhone(packageName) == 1;
        if (!isTargetSdkLessThanQOrPrivileged && !isCarrierApp) {
            this.mLog.info("getConfiguredNetworks not allowed for uid=%").c(callingUid).flush();
            return new ParceledListSlice<>(new ArrayList());
        }
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getConfiguredNetworks uid=%").c(callingUid).flush();
        }
        int targetConfigUid = -1;
        if (isPrivileged(getCallingPid(), callingUid) || isDeviceOrProfileOwner(callingUid)) {
            targetConfigUid = 1010;
        } else if (isCarrierApp) {
            targetConfigUid = callingUid;
        }
        AsyncChannel asyncChannel = this.mClientModeImplChannel;
        if (asyncChannel == null) {
            Slog.e(TAG, "mClientModeImplChannel is not initialized");
            return null;
        }
        List<WifiConfiguration> configs = this.mClientModeImpl.syncGetConfiguredNetworks(callingUid, asyncChannel, targetConfigUid);
        if (configs == null) {
            return null;
        }
        if (isTargetSdkLessThanQOrPrivileged) {
            return new ParceledListSlice<>(configs);
        }
        List<WifiConfiguration> creatorConfigs = new ArrayList<>();
        for (WifiConfiguration config : configs) {
            if (config.creatorUid == callingUid) {
                creatorConfigs.add(config);
            }
        }
        return new ParceledListSlice<>(creatorConfigs);
    }

    public ParceledListSlice<WifiConfiguration> getPrivilegedConfiguredNetworks(String packageName) {
        enforceReadCredentialPermission();
        enforceAccessPermission();
        int callingUid = Binder.getCallingUid();
        long ident = Binder.clearCallingIdentity();
        try {
            try {
                this.mWifiPermissionsUtil.enforceCanAccessScanResults(packageName, callingUid);
                Binder.restoreCallingIdentity(ident);
                if (this.mVerboseLoggingEnabled) {
                    this.mLog.info("getPrivilegedConfiguredNetworks uid=%").c(callingUid).flush();
                }
                AsyncChannel asyncChannel = this.mClientModeImplChannel;
                if (asyncChannel != null) {
                    List<WifiConfiguration> configs = this.mClientModeImpl.syncGetPrivilegedConfiguredNetwork(asyncChannel);
                    if (configs != null) {
                        return new ParceledListSlice<>(configs);
                    }
                } else {
                    Slog.e(TAG, "mClientModeImplChannel is not initialized");
                }
                return null;
            } catch (SecurityException e) {
                Slog.e(TAG, "Permission violation - getPrivilegedConfiguredNetworks not allowed for uid=" + callingUid + ", packageName=" + packageName + ", reason=" + e);
                Binder.restoreCallingIdentity(ident);
                return null;
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
    }

    public Map<String, Map<Integer, List<ScanResult>>> getAllMatchingFqdnsForScanResults(List<ScanResult> scanResults) {
        if (!isSettingsOrSuw(Binder.getCallingPid(), Binder.getCallingUid())) {
            throw new SecurityException("WifiService: Permission denied");
        }
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getMatchingPasspointConfigurations uid=%").c(Binder.getCallingUid()).flush();
        }
        if (!this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.passpoint")) {
            return new HashMap();
        }
        return this.mClientModeImpl.syncGetAllMatchingFqdnsForScanResults(scanResults, this.mClientModeImplChannel);
    }

    public Map<OsuProvider, List<ScanResult>> getMatchingOsuProviders(List<ScanResult> scanResults) {
        if (!isSettingsOrSuw(Binder.getCallingPid(), Binder.getCallingUid())) {
            throw new SecurityException("WifiService: Permission denied");
        }
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getMatchingOsuProviders uid=%").c(Binder.getCallingUid()).flush();
        }
        if (!this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.passpoint")) {
            return new HashMap();
        }
        return this.mClientModeImpl.syncGetMatchingOsuProviders(scanResults, this.mClientModeImplChannel);
    }

    public Map<OsuProvider, PasspointConfiguration> getMatchingPasspointConfigsForOsuProviders(List<OsuProvider> osuProviders) {
        if (!isSettingsOrSuw(Binder.getCallingPid(), Binder.getCallingUid())) {
            throw new SecurityException("WifiService: Permission denied");
        }
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getMatchingPasspointConfigsForOsuProviders uid=%").c(Binder.getCallingUid()).flush();
        }
        if (!this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.passpoint")) {
            return new HashMap();
        }
        if (osuProviders == null) {
            Log.e(TAG, "Attempt to retrieve Passpoint configuration with null osuProviders");
            return new HashMap();
        }
        return this.mClientModeImpl.syncGetMatchingPasspointConfigsForOsuProviders(osuProviders, this.mClientModeImplChannel);
    }

    public List<WifiConfiguration> getWifiConfigsForPasspointProfiles(List<String> fqdnList) {
        if (!isSettingsOrSuw(Binder.getCallingPid(), Binder.getCallingUid())) {
            throw new SecurityException("WifiService: Permission denied");
        }
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getWifiConfigsForPasspointProfiles uid=%").c(Binder.getCallingUid()).flush();
        }
        if (!this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.passpoint")) {
            return new ArrayList();
        }
        if (fqdnList == null) {
            Log.e(TAG, "Attempt to retrieve WifiConfiguration with null fqdn List");
            return new ArrayList();
        }
        return this.mClientModeImpl.syncGetWifiConfigsForPasspointProfiles(fqdnList, this.mClientModeImplChannel);
    }

    public int addOrUpdateNetwork(WifiConfiguration config, String packageName) {
        if (enforceChangePermission(packageName) != 0) {
            return -1;
        }
        if (!isTargetSdkLessThanQOrPrivileged(packageName, Binder.getCallingPid(), Binder.getCallingUid())) {
            this.mLog.info("addOrUpdateNetwork not allowed for uid=%").c(Binder.getCallingUid()).flush();
            return -1;
        }
        this.mLog.info("addOrUpdateNetwork uid=%").c(Binder.getCallingUid()).flush();
        if (config == null) {
            Slog.e(TAG, "bad network configuration");
            return -1;
        }
        this.mWifiMetrics.incrementNumAddOrUpdateNetworkCalls();
        if (config.isPasspoint()) {
            PasspointConfiguration passpointConfig = PasspointProvider.convertFromWifiConfig(config);
            if (passpointConfig.getCredential() == null) {
                Slog.e(TAG, "Missing credential for Passpoint profile");
                return -1;
            }
            X509Certificate[] x509Certificates = null;
            if (config.enterpriseConfig.getCaCertificate() != null) {
                x509Certificates = new X509Certificate[]{config.enterpriseConfig.getCaCertificate()};
            }
            passpointConfig.getCredential().setCaCertificates(x509Certificates);
            passpointConfig.getCredential().setClientCertificateChain(config.enterpriseConfig.getClientCertificateChain());
            passpointConfig.getCredential().setClientPrivateKey(config.enterpriseConfig.getClientPrivateKey());
            if (addOrUpdatePasspointConfiguration(passpointConfig, packageName)) {
                return 0;
            }
            Slog.e(TAG, "Failed to add Passpoint profile");
            return -1;
        }
        Slog.i("addOrUpdateNetwork", " uid = " + Integer.toString(Binder.getCallingUid()) + " SSID " + config.SSID + " nid=" + Integer.toString(config.networkId));
        if (config.networkId == -1) {
            config.creatorUid = Binder.getCallingUid();
        } else {
            config.lastUpdateUid = Binder.getCallingUid();
        }
        AsyncChannel asyncChannel = this.mClientModeImplChannel;
        if (asyncChannel == null) {
            Slog.e(TAG, "mClientModeImplChannel is not initialized");
            return -1;
        }
        return this.mClientModeImpl.syncAddOrUpdateNetwork(asyncChannel, config);
    }

    public static void verifyCert(X509Certificate caCert) throws GeneralSecurityException, IOException {
        CertificateFactory factory = CertificateFactory.getInstance("X.509");
        CertPathValidator validator = CertPathValidator.getInstance(CertPathValidator.getDefaultType());
        CertPath path = factory.generateCertPath(Arrays.asList(caCert));
        KeyStore ks = KeyStore.getInstance("AndroidCAStore");
        ks.load(null, null);
        PKIXParameters params = new PKIXParameters(ks);
        params.setRevocationEnabled(false);
        validator.validate(path, params);
    }

    public boolean removeNetwork(int netId, String packageName) {
        if (enforceChangePermission(packageName) != 0) {
            return false;
        }
        if (!isTargetSdkLessThanQOrPrivileged(packageName, Binder.getCallingPid(), Binder.getCallingUid())) {
            this.mLog.info("removeNetwork not allowed for uid=%").c(Binder.getCallingUid()).flush();
            return false;
        }
        this.mLog.info("removeNetwork uid=%").c(Binder.getCallingUid()).flush();
        AsyncChannel asyncChannel = this.mClientModeImplChannel;
        if (asyncChannel != null) {
            return this.mClientModeImpl.syncRemoveNetwork(asyncChannel, netId);
        }
        Slog.e(TAG, "mClientModeImplChannel is not initialized");
        return false;
    }

    public boolean enableNetwork(int netId, boolean disableOthers, String packageName) {
        if (enforceChangePermission(packageName) != 0) {
            return false;
        }
        if (!isTargetSdkLessThanQOrPrivileged(packageName, Binder.getCallingPid(), Binder.getCallingUid())) {
            this.mLog.info("enableNetwork not allowed for uid=%").c(Binder.getCallingUid()).flush();
            return false;
        }
        this.mLog.info("enableNetwork uid=% disableOthers=%").c(Binder.getCallingUid()).c(disableOthers).flush();
        this.mWifiMetrics.incrementNumEnableNetworkCalls();
        AsyncChannel asyncChannel = this.mClientModeImplChannel;
        if (asyncChannel != null) {
            return this.mClientModeImpl.syncEnableNetwork(asyncChannel, netId, disableOthers);
        }
        Slog.e(TAG, "mClientModeImplChannel is not initialized");
        return false;
    }

    public boolean disableNetwork(int netId, String packageName) {
        if (enforceChangePermission(packageName) != 0) {
            return false;
        }
        if (!isTargetSdkLessThanQOrPrivileged(packageName, Binder.getCallingPid(), Binder.getCallingUid())) {
            this.mLog.info("disableNetwork not allowed for uid=%").c(Binder.getCallingUid()).flush();
            return false;
        }
        this.mLog.info("disableNetwork uid=%").c(Binder.getCallingUid()).flush();
        AsyncChannel asyncChannel = this.mClientModeImplChannel;
        if (asyncChannel != null) {
            return this.mClientModeImpl.syncDisableNetwork(asyncChannel, netId);
        }
        Slog.e(TAG, "mClientModeImplChannel is not initialized");
        return false;
    }

    public WifiInfo getConnectionInfo(String callingPackage) {
        enforceAccessPermission();
        int uid = Binder.getCallingUid();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getConnectionInfo uid=%").c(uid).flush();
        }
        long ident = Binder.clearCallingIdentity();
        try {
            WifiInfo result = this.mClientModeImpl.syncRequestConnectionInfo();
            boolean hideDefaultMacAddress = true;
            boolean hideBssidSsidAndNetworkId = true;
            try {
                if (this.mWifiInjector.getWifiPermissionsWrapper().getLocalMacAddressPermission(uid) == 0) {
                    hideDefaultMacAddress = false;
                }
                this.mWifiPermissionsUtil.enforceCanAccessScanResults(callingPackage, uid);
                hideBssidSsidAndNetworkId = false;
            } catch (RemoteException e) {
                Log.e(TAG, "Error checking receiver permission", e);
            } catch (SecurityException e2) {
            }
            if (hideDefaultMacAddress) {
                result.setMacAddress("02:00:00:00:00:00");
            }
            if (hideBssidSsidAndNetworkId) {
                result.setBSSID("02:00:00:00:00:00");
                result.setSSID(WifiSsid.createFromHex(null));
                result.setNetworkId(-1);
            }
            if (this.mVerboseLoggingEnabled && (hideBssidSsidAndNetworkId || hideDefaultMacAddress)) {
                this.mLog.v("getConnectionInfo: hideBssidSsidAndNetworkId=" + hideBssidSsidAndNetworkId + ", hideDefaultMacAddress=" + hideDefaultMacAddress);
            }
            Binder.restoreCallingIdentity(ident);
            return result;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
    }

    public List<ScanResult> getScanResults(String callingPackage) {
        enforceAccessPermission();
        int uid = Binder.getCallingUid();
        long ident = Binder.clearCallingIdentity();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getScanResults uid=%").c(uid).flush();
        }
        try {
            this.mWifiPermissionsUtil.enforceCanAccessScanResults(callingPackage, uid);
            final List<ScanResult> scanResults = new ArrayList<>();
            boolean success = this.mWifiInjector.getClientModeImplHandler().runWithScissors(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$2ZawY3HKMGxYuJvvAb04rbHcj8k
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$getScanResults$7$WifiServiceImpl(scanResults);
                }
            }, 4000L);
            if (success) {
                noteOpForCta(uid, callingPackage, "android:coarse_location");
                return scanResults;
            }
            Log.e(TAG, "Failed to post runnable to fetch scan results");
            return new ArrayList();
        } catch (SecurityException e) {
            Slog.e(TAG, "Permission violation - getScanResults not allowed for uid=" + uid + ", packageName=" + callingPackage + ", reason=" + e);
            return new ArrayList();
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    public /* synthetic */ void lambda$getScanResults$7$WifiServiceImpl(List scanResults) {
        scanResults.addAll(this.mScanRequestProxy.getScanResults());
    }

    private void noteOpForCta(int uid, String callingPackage, String opstr) {
        boolean checkRet = PermissionUtils.isCtaFeatureSupported();
        if (checkRet && !isSystem(callingPackage, uid)) {
            if (this.mAppOps.noteOpNoThrow(opstr, uid, callingPackage) == 0) {
                Log.d(TAG, "fine location attribution for " + uid + callingPackage);
                if (SystemClock.elapsedRealtime() - this.mLastNoteTime > 2000) {
                    Intent intent = new Intent(ACCESS_FINE_LOCATION_NOTE_ACTION);
                    this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
                    this.mLastNoteTime = SystemClock.elapsedRealtime();
                    return;
                }
                Log.e(TAG, "sendBroadcast too frequently");
                return;
            }
            Log.e(TAG, "failed fine location attribution for " + uid + callingPackage);
        }
    }

    public boolean addOrUpdatePasspointConfiguration(PasspointConfiguration config, String packageName) {
        if (enforceChangePermission(packageName) != 0) {
            return false;
        }
        this.mLog.info("addorUpdatePasspointConfiguration uid=%").c(Binder.getCallingUid()).flush();
        if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.passpoint")) {
            return this.mClientModeImpl.syncAddOrUpdatePasspointConfig(this.mClientModeImplChannel, config, Binder.getCallingUid(), packageName);
        }
        return false;
    }

    public boolean removePasspointConfiguration(String fqdn, String packageName) {
        int uid = Binder.getCallingUid();
        if (!this.mWifiPermissionsUtil.checkNetworkSettingsPermission(uid) && !this.mWifiPermissionsUtil.checkNetworkCarrierProvisioningPermission(uid)) {
            if (this.mWifiPermissionsUtil.isTargetSdkLessThan(packageName, 29)) {
                return false;
            }
            throw new SecurityException("WifiService: Permission denied");
        }
        this.mLog.info("removePasspointConfiguration uid=%").c(Binder.getCallingUid()).flush();
        if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.passpoint")) {
            return this.mClientModeImpl.syncRemovePasspointConfig(this.mClientModeImplChannel, fqdn);
        }
        return false;
    }

    public List<PasspointConfiguration> getPasspointConfigurations(String packageName) {
        int uid = Binder.getCallingUid();
        this.mAppOps.checkPackage(uid, packageName);
        if (!this.mWifiPermissionsUtil.checkNetworkSettingsPermission(uid) && !this.mWifiPermissionsUtil.checkNetworkSetupWizardPermission(uid)) {
            if (this.mWifiPermissionsUtil.isTargetSdkLessThan(packageName, 29)) {
                return new ArrayList();
            }
            throw new SecurityException("WifiService: Permission denied");
        }
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getPasspointConfigurations uid=%").c(Binder.getCallingUid()).flush();
        }
        if (!this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.passpoint")) {
            return new ArrayList();
        }
        return this.mClientModeImpl.syncGetPasspointConfigs(this.mClientModeImplChannel);
    }

    public void queryPasspointIcon(long bssid, String fileName) {
        enforceAccessPermission();
        this.mLog.info("queryPasspointIcon uid=%").c(Binder.getCallingUid()).flush();
        if (!this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.passpoint")) {
            throw new UnsupportedOperationException("Passpoint not enabled");
        }
        this.mClientModeImpl.syncQueryPasspointIcon(this.mClientModeImplChannel, bssid, fileName);
    }

    public int matchProviderWithCurrentNetwork(String fqdn) {
        this.mLog.info("matchProviderWithCurrentNetwork uid=%").c(Binder.getCallingUid()).flush();
        return this.mClientModeImpl.matchProviderWithCurrentNetwork(this.mClientModeImplChannel, fqdn);
    }

    public void deauthenticateNetwork(long holdoff, boolean ess) {
        this.mLog.info("deauthenticateNetwork uid=%").c(Binder.getCallingUid()).flush();
        this.mClientModeImpl.deauthenticateNetwork(this.mClientModeImplChannel, holdoff, ess);
    }

    public void setCountryCode(String countryCode) {
        Slog.i(TAG, "WifiService trying to set country code to " + countryCode);
        enforceConnectivityInternalPermission();
        this.mLog.info("setCountryCode uid=%").c((long) Binder.getCallingUid()).flush();
        long token = Binder.clearCallingIdentity();
        this.mCountryCode.setCountryCode(countryCode);
        if (!TextUtils.isEmpty(countryCode)) {
            Settings.Global.putString(this.mContext.getContentResolver(), "wifi_country_code", countryCode);
        }
        Binder.restoreCallingIdentity(token);
    }

    public String getCountryCode() {
        enforceConnectivityInternalPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getCountryCode uid=%").c(Binder.getCallingUid()).flush();
        }
        String country = this.mCountryCode.getCountryCode();
        if (TextUtils.isEmpty(country)) {
            return Settings.Global.getString(this.mContext.getContentResolver(), "wifi_country_code");
        }
        return country;
    }

    public boolean isDualBandSupported() {
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("isDualBandSupported uid=%").c(Binder.getCallingUid()).flush();
        }
        return this.mContext.getResources().getBoolean(R.bool.config_cecSystemAudioControlEnabled_default);
    }

    private int getMaxApInterfacesCount() {
        return this.mContext.getResources().getInteger(R.integer.config_notificationsBatteryFullARGB);
    }

    private boolean isConcurrentLohsAndTetheringSupported() {
        return getMaxApInterfacesCount() >= 2;
    }

    public boolean needs5GHzToAnyApBandConversion() {
        enforceNetworkSettingsPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("needs5GHzToAnyApBandConversion uid=%").c(Binder.getCallingUid()).flush();
        }
        return this.mContext.getResources().getBoolean(R.bool.config_cecSystemAudioControlDisabled_allowed);
    }

    @Deprecated
    public DhcpInfo getDhcpInfo() {
        enforceAccessPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getDhcpInfo uid=%").c(Binder.getCallingUid()).flush();
        }
        DhcpResults dhcpResults = this.mClientModeImpl.syncGetDhcpResults();
        DhcpInfo info = new DhcpInfo();
        if (dhcpResults.ipAddress != null && (dhcpResults.ipAddress.getAddress() instanceof Inet4Address)) {
            info.ipAddress = NetworkUtils.inetAddressToInt((Inet4Address) dhcpResults.ipAddress.getAddress());
        }
        if (dhcpResults.gateway != null) {
            info.gateway = NetworkUtils.inetAddressToInt((Inet4Address) dhcpResults.gateway);
        }
        int dnsFound = 0;
        for (InetAddress dns : dhcpResults.dnsServers) {
            if (dns instanceof Inet4Address) {
                if (dnsFound == 0) {
                    info.dns1 = NetworkUtils.inetAddressToInt((Inet4Address) dns);
                } else {
                    info.dns2 = NetworkUtils.inetAddressToInt((Inet4Address) dns);
                }
                dnsFound++;
                if (dnsFound > 1) {
                    break;
                }
            }
        }
        Inet4Address serverAddress = dhcpResults.serverAddress;
        if (serverAddress != null) {
            info.serverAddress = NetworkUtils.inetAddressToInt(serverAddress);
        }
        info.leaseDuration = dhcpResults.leaseDuration;
        return info;
    }

    class TdlsTaskParams {
        public boolean enable;
        public String remoteIpAddress;

        TdlsTaskParams() {
        }
    }

    class TdlsTask extends AsyncTask<TdlsTaskParams, Integer, Integer> {
        TdlsTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Integer doInBackground(TdlsTaskParams... params) {
            TdlsTaskParams param = params[0];
            String remoteIpAddress = param.remoteIpAddress.trim();
            boolean enable = param.enable;
            String macAddress = null;
            BufferedReader reader = null;
            try {
                try {
                    try {
                        BufferedReader reader2 = new BufferedReader(new FileReader("/proc/net/arp"));
                        reader2.readLine();
                        while (true) {
                            String line = reader2.readLine();
                            if (line == null) {
                                break;
                            }
                            String[] tokens = line.split("[ ]+");
                            if (tokens.length >= 6) {
                                String ip = tokens[0];
                                String mac = tokens[3];
                                if (remoteIpAddress.equals(ip)) {
                                    macAddress = mac;
                                    break;
                                }
                            }
                        }
                        if (macAddress == null) {
                            Slog.w(WifiServiceImpl.TAG, "Did not find remoteAddress {" + remoteIpAddress + "} in /proc/net/arp");
                        } else {
                            WifiServiceImpl.this.enableTdlsWithMacAddress(macAddress, enable);
                        }
                        reader2.close();
                    } catch (IOException e) {
                    }
                } catch (FileNotFoundException e2) {
                    Slog.e(WifiServiceImpl.TAG, "Could not open /proc/net/arp to lookup mac address");
                    if (0 != 0) {
                        reader.close();
                    }
                } catch (IOException e3) {
                    Slog.e(WifiServiceImpl.TAG, "Could not read /proc/net/arp to lookup mac address");
                    if (0 != 0) {
                        reader.close();
                    }
                }
                return 0;
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        reader.close();
                    } catch (IOException e4) {
                    }
                }
                throw th;
            }
        }
    }

    public void enableTdls(String remoteAddress, boolean enable) {
        if (remoteAddress == null) {
            throw new IllegalArgumentException("remoteAddress cannot be null");
        }
        this.mLog.info("enableTdls uid=% enable=%").c(Binder.getCallingUid()).c(enable).flush();
        TdlsTaskParams params = new TdlsTaskParams();
        params.remoteIpAddress = remoteAddress;
        params.enable = enable;
        new TdlsTask().execute(params);
    }

    public void enableTdlsWithMacAddress(String remoteMacAddress, boolean enable) {
        this.mLog.info("enableTdlsWithMacAddress uid=% enable=%").c(Binder.getCallingUid()).c(enable).flush();
        if (remoteMacAddress == null) {
            throw new IllegalArgumentException("remoteMacAddress cannot be null");
        }
        this.mClientModeImpl.enableTdls(remoteMacAddress, enable);
    }

    public Messenger getWifiServiceMessenger(String packageName) {
        enforceAccessPermission();
        if (enforceChangePermission(packageName) != 0) {
            throw new SecurityException("Could not create wifi service messenger");
        }
        this.mLog.info("getWifiServiceMessenger uid=%").c(Binder.getCallingUid()).flush();
        return new Messenger(this.mAsyncChannelExternalClientHandler);
    }

    public void disableEphemeralNetwork(String SSID, String packageName) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CHANGE_WIFI_STATE", TAG);
        if (!isPrivileged(Binder.getCallingPid(), Binder.getCallingUid())) {
            this.mLog.info("disableEphemeralNetwork not allowed for uid=%").c(Binder.getCallingUid()).flush();
        } else {
            this.mLog.info("disableEphemeralNetwork uid=%").c(Binder.getCallingUid()).flush();
            this.mClientModeImpl.disableEphemeralNetwork(SSID);
        }
    }

    private void registerForScanModeChange() {
        ContentObserver contentObserver = new ContentObserver(null) { // from class: com.android.server.wifi.WifiServiceImpl.7
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                WifiServiceImpl.this.mSettingsStore.handleWifiScanAlwaysAvailableToggled();
                WifiServiceImpl.this.mWifiController.sendMessage(155655);
            }
        };
        this.mFrameworkFacade.registerContentObserver(this.mContext, Settings.Global.getUriFor("wifi_scan_always_enabled"), false, contentObserver);
    }

    private void registerForBroadcasts() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.USER_REMOVED");
        intentFilter.addAction("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED");
        intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        boolean trackEmergencyCallState = this.mContext.getResources().getBoolean(R.bool.config_cecTvWakeOnOneTouchPlay_userConfigurable);
        if (trackEmergencyCallState) {
            intentFilter.addAction("android.intent.action.EMERGENCY_CALL_STATE_CHANGED");
        }
        this.mContext.registerReceiver(this.mReceiver, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.intent.action.PACKAGE_FULLY_REMOVED");
        intentFilter2.addDataScheme("package");
        this.mContext.registerReceiver(new AnonymousClass8(), intentFilter2);
    }

    /* JADX INFO: renamed from: com.android.server.wifi.WifiServiceImpl$8, reason: invalid class name */
    class AnonymousClass8 extends BroadcastReceiver {
        AnonymousClass8() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals("android.intent.action.PACKAGE_FULLY_REMOVED")) {
                final int uid = intent.getIntExtra("android.intent.extra.UID", -1);
                Uri uri = intent.getData();
                if (uid == -1 || uri == null) {
                    return;
                }
                final String pkgName = uri.getSchemeSpecificPart();
                WifiServiceImpl.this.mClientModeImpl.removeAppConfigs(pkgName, uid);
                WifiServiceImpl.this.mWifiInjector.getClientModeImplHandler().post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$8$YWn-PNZqVxtXmY8FBPiwBLYdQpM
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onReceive$0$WifiServiceImpl$8(pkgName, uid);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onReceive$0$WifiServiceImpl$8(String pkgName, int uid) {
            WifiServiceImpl.this.mScanRequestProxy.clearScanRequestTimestampsForApp(pkgName, uid);
            WifiServiceImpl.this.mWifiNetworkSuggestionsManager.removeApp(pkgName);
            WifiServiceImpl.this.mClientModeImpl.removeNetworkRequestUserApprovedAccessPointsForApp(pkgName);
            WifiServiceImpl.this.mWifiInjector.getPasspointManager().removePasspointProviderWithPackage(pkgName);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
        new WifiShellCommand(this.mWifiInjector, this).exec(this, in, out, err, args, callback, resultReceiver);
    }

    protected void dump(final FileDescriptor fd, final PrintWriter pw, final String[] args) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.DUMP") != 0) {
            pw.println("Permission Denial: can't dump WifiService from from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
            return;
        }
        if (args != null && args.length > 0 && WifiMetrics.PROTO_DUMP_ARG.equals(args[0])) {
            this.mClientModeImpl.updateWifiMetrics();
            this.mWifiMetrics.dump(fd, pw, args);
            return;
        }
        if (args == null || args.length <= 0 || !"ipclient".equals(args[0])) {
            if (args == null || args.length <= 0 || !WifiScoreReport.DUMP_ARG.equals(args[0])) {
                if (args != null && args.length > 0 && WifiScoreCard.DUMP_ARG.equals(args[0])) {
                    this.mWifiInjector.getClientModeImplHandler().runWithScissors(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$30hA-wmJf-IirsTRMV7XyzBiqYQ
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$dump$8$WifiServiceImpl(pw);
                        }
                    }, 4000L);
                    return;
                }
                this.mClientModeImpl.updateLinkLayerStatsRssiAndScoreReport();
                pw.println("Wi-Fi is " + this.mClientModeImpl.syncGetWifiStateByName());
                StringBuilder sb = new StringBuilder();
                sb.append("Verbose logging is ");
                sb.append(this.mVerboseLoggingEnabled ? "on" : "off");
                pw.println(sb.toString());
                pw.println("Stay-awake conditions: " + this.mFacade.getIntegerSetting(this.mContext, "stay_on_while_plugged_in", 0));
                pw.println("mInIdleMode " + this.mInIdleMode);
                pw.println("mScanPending " + this.mScanPending);
                this.mWifiController.dump(fd, pw, args);
                this.mSettingsStore.dump(fd, pw, args);
                this.mWifiTrafficPoller.dump(fd, pw, args);
                pw.println();
                pw.println("Locks held:");
                this.mWifiLockManager.dump(pw);
                pw.println();
                this.mWifiMulticastLockManager.dump(pw);
                pw.println();
                this.mActiveModeWarden.dump(fd, pw, args);
                pw.println();
                this.mClientModeImpl.dump(fd, pw, args);
                pw.println();
                this.mWifiInjector.getClientModeImplHandler().runWithScissors(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$13az8HpQ6rE2LvEgUJf1zT6uqg0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$dump$9$WifiServiceImpl(pw);
                    }
                }, 4000L);
                this.mClientModeImpl.updateWifiMetrics();
                this.mWifiMetrics.dump(fd, pw, args);
                pw.println();
                this.mWifiInjector.getClientModeImplHandler().runWithScissors(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$-LcYN2fDH9ln7kJ6dwOPrjBsCO8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$dump$10$WifiServiceImpl(fd, pw, args);
                    }
                }, 4000L);
                this.mWifiBackupRestore.dump(fd, pw, args);
                pw.println();
                pw.println("ScoringParams: settings put global wifi_score_params " + this.mWifiInjector.getScoringParams());
                pw.println();
                WifiScoreReport wifiScoreReport = this.mClientModeImpl.getWifiScoreReport();
                if (wifiScoreReport != null) {
                    pw.println("WifiScoreReport:");
                    wifiScoreReport.dump(fd, pw, args);
                }
                pw.println();
                SarManager sarManager = this.mWifiInjector.getSarManager();
                if (sarManager != null) {
                    sarManager.dump(fd, pw, args);
                }
                pw.println();
                return;
            }
            WifiScoreReport wifiScoreReport2 = this.mClientModeImpl.getWifiScoreReport();
            if (wifiScoreReport2 != null) {
                wifiScoreReport2.dump(fd, pw, args);
                return;
            }
            return;
        }
        String[] ipClientArgs = new String[args.length - 1];
        System.arraycopy(args, 1, ipClientArgs, 0, ipClientArgs.length);
        this.mClientModeImpl.dumpIpClient(fd, pw, ipClientArgs);
    }

    public /* synthetic */ void lambda$dump$8$WifiServiceImpl(PrintWriter pw) {
        WifiScoreCard wifiScoreCard = this.mWifiInjector.getWifiScoreCard();
        if (wifiScoreCard != null) {
            pw.println(wifiScoreCard.getNetworkListBase64(true));
        }
    }

    public /* synthetic */ void lambda$dump$9$WifiServiceImpl(PrintWriter pw) {
        WifiScoreCard wifiScoreCard = this.mWifiInjector.getWifiScoreCard();
        if (wifiScoreCard != null) {
            pw.println("WifiScoreCard:");
            pw.println(wifiScoreCard.getNetworkListBase64(true));
        }
    }

    public /* synthetic */ void lambda$dump$10$WifiServiceImpl(FileDescriptor fd, PrintWriter pw, String[] args) {
        this.mWifiNetworkSuggestionsManager.dump(fd, pw, args);
        pw.println();
    }

    public boolean acquireWifiLock(final IBinder binder, final int lockMode, final String tag, WorkSource ws) {
        this.mLog.info("acquireWifiLock uid=% lockMode=%").c(Binder.getCallingUid()).c(lockMode).flush();
        this.mContext.enforceCallingOrSelfPermission("android.permission.WAKE_LOCK", null);
        final WorkSource updatedWs = (ws == null || ws.isEmpty()) ? new WorkSource(Binder.getCallingUid()) : ws;
        final GeneralUtil.Mutable<Boolean> lockSuccess = new GeneralUtil.Mutable<>();
        boolean runWithScissorsSuccess = this.mWifiInjector.getClientModeImplHandler().runWithScissors(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$n3KWmNlfRCBZERhxLXED7cgCptg
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$acquireWifiLock$11$WifiServiceImpl(lockSuccess, lockMode, tag, binder, updatedWs);
            }
        }, 4000L);
        if (!runWithScissorsSuccess) {
            Log.e(TAG, "Failed to post runnable to acquireWifiLock");
            return false;
        }
        return lockSuccess.value.booleanValue();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [E, java.lang.Boolean] */
    public /* synthetic */ void lambda$acquireWifiLock$11$WifiServiceImpl(GeneralUtil.Mutable lockSuccess, int lockMode, String tag, IBinder binder, WorkSource updatedWs) {
        lockSuccess.value = Boolean.valueOf(this.mWifiLockManager.acquireWifiLock(lockMode, tag, binder, updatedWs));
    }

    public void updateWifiLockWorkSource(final IBinder binder, WorkSource ws) {
        this.mLog.info("updateWifiLockWorkSource uid=%").c(Binder.getCallingUid()).flush();
        this.mContext.enforceCallingOrSelfPermission("android.permission.UPDATE_DEVICE_STATS", null);
        final WorkSource updatedWs = (ws == null || ws.isEmpty()) ? new WorkSource(Binder.getCallingUid()) : ws;
        boolean runWithScissorsSuccess = this.mWifiInjector.getClientModeImplHandler().runWithScissors(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$dSBCyEfgSgPcVuPt-wH4UCtTcks
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateWifiLockWorkSource$12$WifiServiceImpl(binder, updatedWs);
            }
        }, 4000L);
        if (!runWithScissorsSuccess) {
            Log.e(TAG, "Failed to post runnable to updateWifiLockWorkSource");
        }
    }

    public /* synthetic */ void lambda$updateWifiLockWorkSource$12$WifiServiceImpl(IBinder binder, WorkSource updatedWs) {
        this.mWifiLockManager.updateWifiLockWorkSource(binder, updatedWs);
    }

    public boolean releaseWifiLock(final IBinder binder) {
        this.mLog.info("releaseWifiLock uid=%").c(Binder.getCallingUid()).flush();
        this.mContext.enforceCallingOrSelfPermission("android.permission.WAKE_LOCK", null);
        final GeneralUtil.Mutable<Boolean> lockSuccess = new GeneralUtil.Mutable<>();
        boolean runWithScissorsSuccess = this.mWifiInjector.getClientModeImplHandler().runWithScissors(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$BEFXJX9-8bK-CvmAvi2e5Iwmres
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$releaseWifiLock$13$WifiServiceImpl(lockSuccess, binder);
            }
        }, 4000L);
        if (!runWithScissorsSuccess) {
            Log.e(TAG, "Failed to post runnable to releaseWifiLock");
            return false;
        }
        return lockSuccess.value.booleanValue();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [E, java.lang.Boolean] */
    public /* synthetic */ void lambda$releaseWifiLock$13$WifiServiceImpl(GeneralUtil.Mutable lockSuccess, IBinder binder) {
        lockSuccess.value = Boolean.valueOf(this.mWifiLockManager.releaseWifiLock(binder));
    }

    public void initializeMulticastFiltering() {
        enforceMulticastChangePermission();
        this.mLog.info("initializeMulticastFiltering uid=%").c(Binder.getCallingUid()).flush();
        this.mWifiMulticastLockManager.initializeFiltering();
    }

    public void acquireMulticastLock(IBinder binder, String tag) {
        enforceMulticastChangePermission();
        this.mLog.info("acquireMulticastLock uid=%").c(Binder.getCallingUid()).flush();
        this.mWifiMulticastLockManager.acquireLock(binder, tag);
    }

    public void releaseMulticastLock(String tag) {
        enforceMulticastChangePermission();
        this.mLog.info("releaseMulticastLock uid=%").c(Binder.getCallingUid()).flush();
        this.mWifiMulticastLockManager.releaseLock(tag);
    }

    public boolean isMulticastEnabled() {
        enforceAccessPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("isMulticastEnabled uid=%").c(Binder.getCallingUid()).flush();
        }
        return this.mWifiMulticastLockManager.isMulticastEnabled();
    }

    public void enableVerboseLogging(int verbose) {
        enforceAccessPermission();
        enforceNetworkSettingsPermission();
        this.mLog.info("enableVerboseLogging uid=% verbose=%").c(Binder.getCallingUid()).c(verbose).flush();
        this.mFacade.setIntegerSetting(this.mContext, "wifi_verbose_logging_enabled", verbose);
        enableVerboseLoggingInternal(verbose);
    }

    void enableVerboseLoggingInternal(int verbose) {
        this.mVerboseLoggingEnabled = verbose > 0;
        this.mClientModeImpl.enableVerboseLogging(verbose);
        this.mWifiLockManager.enableVerboseLogging(verbose);
        this.mWifiMulticastLockManager.enableVerboseLogging(verbose);
        this.mWifiInjector.enableVerboseLogging(verbose);
    }

    public int getVerboseLoggingLevel() {
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getVerboseLoggingLevel uid=%").c(Binder.getCallingUid()).flush();
        }
        return this.mFacade.getIntegerSetting(this.mContext, "wifi_verbose_logging_enabled", 0);
    }

    public void factoryReset(String packageName) {
        List<PasspointConfiguration> configs;
        enforceConnectivityInternalPermission();
        if (enforceChangePermission(packageName) != 0) {
            return;
        }
        this.mLog.info("factoryReset uid=%").c(Binder.getCallingUid()).flush();
        if (this.mUserManager.hasUserRestriction("no_network_reset")) {
            return;
        }
        if (!this.mUserManager.hasUserRestriction("no_config_tethering")) {
            stopSoftApInternal(-1);
        }
        if (!this.mUserManager.hasUserRestriction("no_config_wifi")) {
            if (this.mClientModeImplChannel != null) {
                List<WifiConfiguration> networks = this.mClientModeImpl.syncGetConfiguredNetworks(Binder.getCallingUid(), this.mClientModeImplChannel, 1010);
                if (networks != null) {
                    EventLog.writeEvent(1397638484, "231985227", -1, "Remove certs for factory reset");
                    for (WifiConfiguration config : networks) {
                        if (config.isEnterprise()) {
                            this.mWifiInjector.getWifiKeyStore().removeKeys(config.enterpriseConfig, true);
                        }
                        removeNetwork(config.networkId, packageName);
                    }
                }
                if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.passpoint") && (configs = this.mClientModeImpl.syncGetPasspointConfigs(this.mClientModeImplChannel)) != null) {
                    Iterator<PasspointConfiguration> it = configs.iterator();
                    while (it.hasNext()) {
                        removePasspointConfiguration(it.next().getHomeSp().getFqdn(), packageName);
                    }
                }
            }
            this.mWifiInjector.getClientModeImplHandler().post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$JkApogTbDiBTzeZ_bOproLuiHLQ
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$factoryReset$14$WifiServiceImpl();
                }
            });
        }
    }

    public /* synthetic */ void lambda$factoryReset$14$WifiServiceImpl() {
        this.mWifiInjector.getWifiConfigManager().clearDeletedEphemeralNetworks();
        this.mClientModeImpl.clearNetworkRequestUserApprovedAccessPoints();
        this.mWifiNetworkSuggestionsManager.clear();
        this.mWifiInjector.getWifiScoreCard().clear();
    }

    static boolean logAndReturnFalse(String s) {
        Log.d(TAG, s);
        return false;
    }

    public Network getCurrentNetwork() {
        enforceAccessPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("getCurrentNetwork uid=%").c(Binder.getCallingUid()).flush();
        }
        return this.mClientModeImpl.getCurrentNetwork();
    }

    public static String toHexString(String s) {
        if (s == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('\'');
        sb.append(s);
        sb.append('\'');
        for (int n = 0; n < s.length(); n++) {
            sb.append(String.format(" %02x", Integer.valueOf(s.charAt(n) & 65535)));
        }
        return sb.toString();
    }

    public void enableWifiConnectivityManager(boolean enabled) {
        enforceConnectivityInternalPermission();
        this.mLog.info("enableWifiConnectivityManager uid=% enabled=%").c(Binder.getCallingUid()).c(enabled).flush();
        this.mClientModeImpl.enableWifiConnectivityManager(enabled);
    }

    public byte[] retrieveBackupData() {
        enforceNetworkSettingsPermission();
        this.mLog.info("retrieveBackupData uid=%").c(Binder.getCallingUid()).flush();
        if (this.mClientModeImplChannel == null) {
            Slog.e(TAG, "mClientModeImplChannel is not initialized");
            return null;
        }
        Slog.d(TAG, "Retrieving backup data");
        List<WifiConfiguration> wifiConfigurations = this.mClientModeImpl.syncGetPrivilegedConfiguredNetwork(this.mClientModeImplChannel);
        byte[] backupData = this.mWifiBackupRestore.retrieveBackupDataFromConfigurations(wifiConfigurations);
        Slog.d(TAG, "Retrieved backup data");
        return backupData;
    }

    private void restoreNetworks(List<WifiConfiguration> configurations) {
        if (configurations == null) {
            Slog.e(TAG, "Backup data parse failed");
            return;
        }
        for (WifiConfiguration configuration : configurations) {
            int networkId = this.mClientModeImpl.syncAddOrUpdateNetwork(this.mClientModeImplChannel, configuration);
            if (networkId == -1) {
                Slog.e(TAG, "Restore network failed: " + configuration.configKey());
            } else {
                this.mClientModeImpl.syncEnableNetwork(this.mClientModeImplChannel, networkId, false);
            }
        }
    }

    public void restoreBackupData(byte[] data) {
        enforceNetworkSettingsPermission();
        this.mLog.info("restoreBackupData uid=%").c(Binder.getCallingUid()).flush();
        if (this.mClientModeImplChannel == null) {
            Slog.e(TAG, "mClientModeImplChannel is not initialized");
            return;
        }
        Slog.d(TAG, "Restoring backup data");
        List<WifiConfiguration> wifiConfigurations = this.mWifiBackupRestore.retrieveConfigurationsFromBackupData(data);
        restoreNetworks(wifiConfigurations);
        Slog.d(TAG, "Restored backup data");
    }

    public void restoreSupplicantBackupData(byte[] supplicantData, byte[] ipConfigData) {
        enforceNetworkSettingsPermission();
        this.mLog.trace("restoreSupplicantBackupData uid=%").c(Binder.getCallingUid()).flush();
        if (this.mClientModeImplChannel == null) {
            Slog.e(TAG, "mClientModeImplChannel is not initialized");
            return;
        }
        Slog.d(TAG, "Restoring supplicant backup data");
        List<WifiConfiguration> wifiConfigurations = this.mWifiBackupRestore.retrieveConfigurationsFromSupplicantBackupData(supplicantData, ipConfigData);
        restoreNetworks(wifiConfigurations);
        Slog.d(TAG, "Restored supplicant backup data");
    }

    public void startSubscriptionProvisioning(OsuProvider provider, IProvisioningCallback callback) {
        if (provider == null) {
            throw new IllegalArgumentException("Provider must not be null");
        }
        if (callback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        if (!isSettingsOrSuw(Binder.getCallingPid(), Binder.getCallingUid())) {
            throw new SecurityException("WifiService: Permission denied");
        }
        if (!this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.passpoint")) {
            throw new UnsupportedOperationException("Passpoint not enabled");
        }
        int uid = Binder.getCallingUid();
        this.mLog.trace("startSubscriptionProvisioning uid=%").c(uid).flush();
        if (this.mClientModeImpl.syncStartSubscriptionProvisioning(uid, provider, callback, this.mClientModeImplChannel)) {
            this.mLog.trace("Subscription provisioning started with %").c(provider.toString()).flush();
        }
    }

    public void registerTrafficStateCallback(final IBinder binder, final ITrafficStateCallback callback, final int callbackIdentifier) {
        if (binder == null) {
            throw new IllegalArgumentException("Binder must not be null");
        }
        if (callback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        enforceNetworkSettingsPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("registerTrafficStateCallback uid=%").c(Binder.getCallingUid()).flush();
        }
        this.mWifiInjector.getClientModeImplHandler().post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$GMBdpFwdpKl2pT7F3MX6UEWslIU
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$registerTrafficStateCallback$15$WifiServiceImpl(binder, callback, callbackIdentifier);
            }
        });
    }

    public /* synthetic */ void lambda$registerTrafficStateCallback$15$WifiServiceImpl(IBinder binder, ITrafficStateCallback callback, int callbackIdentifier) {
        this.mWifiTrafficPoller.addCallback(binder, callback, callbackIdentifier);
    }

    public void unregisterTrafficStateCallback(final int callbackIdentifier) {
        enforceNetworkSettingsPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("unregisterTrafficStateCallback uid=%").c(Binder.getCallingUid()).flush();
        }
        this.mWifiInjector.getClientModeImplHandler().post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$NuIL-k8rXYdroC92Oftkmd9NOS8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$unregisterTrafficStateCallback$16$WifiServiceImpl(callbackIdentifier);
            }
        });
    }

    public /* synthetic */ void lambda$unregisterTrafficStateCallback$16$WifiServiceImpl(int callbackIdentifier) {
        this.mWifiTrafficPoller.removeCallback(callbackIdentifier);
    }

    public boolean is5GhzSupported() {
        return (getSupportedFeaturesInternal() & 2) == 2;
    }

    private long getSupportedFeaturesInternal() {
        AsyncChannel channel = this.mClientModeImplChannel;
        if (channel != null) {
            return this.mClientModeImpl.syncGetSupportedFeatures(channel);
        }
        Slog.e(TAG, "mClientModeImplChannel is not initialized");
        return 0L;
    }

    private static boolean hasAutomotiveFeature(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    public void registerNetworkRequestMatchCallback(final IBinder binder, final INetworkRequestMatchCallback callback, final int callbackIdentifier) {
        if (binder == null) {
            throw new IllegalArgumentException("Binder must not be null");
        }
        if (callback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        enforceNetworkSettingsPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("registerNetworkRequestMatchCallback uid=%").c(Binder.getCallingUid()).flush();
        }
        this.mWifiInjector.getClientModeImplHandler().post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$HmDIzq5QtH9CLOTJjc9I2VY1k5s
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$registerNetworkRequestMatchCallback$17$WifiServiceImpl(binder, callback, callbackIdentifier);
            }
        });
    }

    public /* synthetic */ void lambda$registerNetworkRequestMatchCallback$17$WifiServiceImpl(IBinder binder, INetworkRequestMatchCallback callback, int callbackIdentifier) {
        this.mClientModeImpl.addNetworkRequestMatchCallback(binder, callback, callbackIdentifier);
    }

    public void unregisterNetworkRequestMatchCallback(final int callbackIdentifier) {
        enforceNetworkSettingsPermission();
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("unregisterNetworkRequestMatchCallback uid=%").c(Binder.getCallingUid()).flush();
        }
        this.mWifiInjector.getClientModeImplHandler().post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$1gO2j6rXhqxSl7qb2zZu0CPig5g
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$unregisterNetworkRequestMatchCallback$18$WifiServiceImpl(callbackIdentifier);
            }
        });
    }

    public /* synthetic */ void lambda$unregisterNetworkRequestMatchCallback$18$WifiServiceImpl(int callbackIdentifier) {
        this.mClientModeImpl.removeNetworkRequestMatchCallback(callbackIdentifier);
    }

    public int addNetworkSuggestions(final List<WifiNetworkSuggestion> networkSuggestions, final String callingPackageName) {
        if (enforceChangePermission(callingPackageName) != 0) {
            return 2;
        }
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("addNetworkSuggestions uid=%").c(Binder.getCallingUid()).flush();
        }
        final int callingUid = Binder.getCallingUid();
        final GeneralUtil.Mutable<Integer> success = new GeneralUtil.Mutable<>();
        boolean runWithScissorsSuccess = this.mWifiInjector.getClientModeImplHandler().runWithScissors(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$ckCXsiqkia7GpCOf0Pq5-AZu97I
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addNetworkSuggestions$19$WifiServiceImpl(success, networkSuggestions, callingUid, callingPackageName);
            }
        }, 4000L);
        if (!runWithScissorsSuccess) {
            Log.e(TAG, "Failed to post runnable to add network suggestions");
            return 1;
        }
        if (success.value.intValue() != 0) {
            Log.e(TAG, "Failed to add network suggestions");
        }
        return success.value.intValue();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [E, java.lang.Integer] */
    public /* synthetic */ void lambda$addNetworkSuggestions$19$WifiServiceImpl(GeneralUtil.Mutable success, List networkSuggestions, int callingUid, String callingPackageName) {
        success.value = Integer.valueOf(this.mWifiNetworkSuggestionsManager.add(networkSuggestions, callingUid, callingPackageName));
    }

    public int removeNetworkSuggestions(final List<WifiNetworkSuggestion> networkSuggestions, final String callingPackageName) {
        if (enforceChangePermission(callingPackageName) != 0) {
            return 2;
        }
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("removeNetworkSuggestions uid=%").c(Binder.getCallingUid()).flush();
        }
        final int callingUid = Binder.getCallingUid();
        final GeneralUtil.Mutable<Integer> success = new GeneralUtil.Mutable<>();
        boolean runWithScissorsSuccess = this.mWifiInjector.getClientModeImplHandler().runWithScissors(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$vO2sQkdXYGF7xx2wqNIFbGtSNn8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeNetworkSuggestions$20$WifiServiceImpl(success, networkSuggestions, callingUid, callingPackageName);
            }
        }, 4000L);
        if (!runWithScissorsSuccess) {
            Log.e(TAG, "Failed to post runnable to remove network suggestions");
            return 1;
        }
        if (success.value.intValue() != 0) {
            Log.e(TAG, "Failed to remove network suggestions");
        }
        return success.value.intValue();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [E, java.lang.Integer] */
    public /* synthetic */ void lambda$removeNetworkSuggestions$20$WifiServiceImpl(GeneralUtil.Mutable success, List networkSuggestions, int callingUid, String callingPackageName) {
        success.value = Integer.valueOf(this.mWifiNetworkSuggestionsManager.remove(networkSuggestions, callingUid, callingPackageName));
    }

    public String[] getFactoryMacAddresses() {
        int uid = Binder.getCallingUid();
        if (!this.mWifiPermissionsUtil.checkNetworkSettingsPermission(uid)) {
            throw new SecurityException("App not allowed to get Wi-Fi factory MAC address (uid = " + uid + ")");
        }
        final List<String> result = new ArrayList<>();
        boolean success = this.mWifiInjector.getClientModeImplHandler().runWithScissors(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$Q_4vYHjkFLDXgDWLf0a_j79F8mo
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getFactoryMacAddresses$21$WifiServiceImpl(result);
            }
        }, 4000L);
        if (!success || result.isEmpty()) {
            return null;
        }
        return (String[]) result.stream().toArray(new IntFunction() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$S81omQ1GWa9UZQZlwud12mqtFtQ
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return WifiServiceImpl.lambda$getFactoryMacAddresses$22(i);
            }
        });
    }

    public /* synthetic */ void lambda$getFactoryMacAddresses$21$WifiServiceImpl(List result) {
        String mac = this.mClientModeImpl.getFactoryMacAddress();
        if (mac != null) {
            result.add(mac);
        }
    }

    static /* synthetic */ String[] lambda$getFactoryMacAddresses$22(int x$0) {
        return new String[x$0];
    }

    public void setDeviceMobilityState(final int state) {
        this.mContext.enforceCallingPermission("android.permission.WIFI_SET_DEVICE_MOBILITY_STATE", TAG);
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("setDeviceMobilityState uid=% state=%").c(Binder.getCallingUid()).c(state).flush();
        }
        this.mWifiInjector.getClientModeImplHandler().post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$FzO7rfBuXPts7cBufOwVEMt1V1E
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setDeviceMobilityState$23$WifiServiceImpl(state);
            }
        });
    }

    public /* synthetic */ void lambda$setDeviceMobilityState$23$WifiServiceImpl(int state) {
        this.mClientModeImpl.setDeviceMobilityState(state);
    }

    public int getMockableCallingUid() {
        return getCallingUid();
    }

    public void startDppAsConfiguratorInitiator(final IBinder binder, final String enrolleeUri, final int selectedNetworkId, final int netRole, final IDppCallback callback) {
        if (binder == null) {
            throw new IllegalArgumentException("Binder must not be null");
        }
        if (TextUtils.isEmpty(enrolleeUri)) {
            throw new IllegalArgumentException("Enrollee URI must not be null or empty");
        }
        if (selectedNetworkId < 0) {
            throw new IllegalArgumentException("Selected network ID invalid");
        }
        if (callback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        final int uid = getMockableCallingUid();
        if (!isSettingsOrSuw(Binder.getCallingPid(), Binder.getCallingUid())) {
            throw new SecurityException("WifiService: Permission denied");
        }
        this.mDppManager.mHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$Bml2hhAjlVBm4-5YcP0sseiANps
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startDppAsConfiguratorInitiator$24$WifiServiceImpl(uid, binder, enrolleeUri, selectedNetworkId, netRole, callback);
            }
        });
    }

    public /* synthetic */ void lambda$startDppAsConfiguratorInitiator$24$WifiServiceImpl(int uid, IBinder binder, String enrolleeUri, int selectedNetworkId, int netRole, IDppCallback callback) {
        this.mDppManager.startDppAsConfiguratorInitiator(uid, binder, enrolleeUri, selectedNetworkId, netRole, callback);
    }

    public void startDppAsEnrolleeInitiator(final IBinder binder, final String configuratorUri, final IDppCallback callback) {
        if (binder == null) {
            throw new IllegalArgumentException("Binder must not be null");
        }
        if (TextUtils.isEmpty(configuratorUri)) {
            throw new IllegalArgumentException("Enrollee URI must not be null or empty");
        }
        if (callback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        final int uid = getMockableCallingUid();
        if (!isSettingsOrSuw(Binder.getCallingPid(), Binder.getCallingUid())) {
            throw new SecurityException("WifiService: Permission denied");
        }
        this.mDppManager.mHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$Nja_ibn3PqgqAWektpJrDxd4Afs
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startDppAsEnrolleeInitiator$25$WifiServiceImpl(uid, binder, configuratorUri, callback);
            }
        });
    }

    public /* synthetic */ void lambda$startDppAsEnrolleeInitiator$25$WifiServiceImpl(int uid, IBinder binder, String configuratorUri, IDppCallback callback) {
        this.mDppManager.startDppAsEnrolleeInitiator(uid, binder, configuratorUri, callback);
    }

    public void stopDppSession() throws RemoteException {
        if (!isSettingsOrSuw(Binder.getCallingPid(), Binder.getCallingUid())) {
            throw new SecurityException("WifiService: Permission denied");
        }
        final int uid = getMockableCallingUid();
        this.mDppManager.mHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$nL6f9jl1761UNCF1x2-dW1DQ8zk
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$stopDppSession$26$WifiServiceImpl(uid);
            }
        });
    }

    public /* synthetic */ void lambda$stopDppSession$26$WifiServiceImpl(int uid) {
        this.mDppManager.stopDppSession(uid);
    }

    public void addOnWifiUsabilityStatsListener(final IBinder binder, final IOnWifiUsabilityStatsListener listener, final int listenerIdentifier) {
        if (binder == null) {
            throw new IllegalArgumentException("Binder must not be null");
        }
        if (listener == null) {
            throw new IllegalArgumentException("Listener must not be null");
        }
        this.mContext.enforceCallingPermission("android.permission.WIFI_UPDATE_USABILITY_STATS_SCORE", TAG);
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("addOnWifiUsabilityStatsListener uid=%").c(Binder.getCallingUid()).flush();
        }
        this.mWifiInjector.getClientModeImplHandler().post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$y7aIZhDjfu99w0qSV21S356vBls
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addOnWifiUsabilityStatsListener$27$WifiServiceImpl(binder, listener, listenerIdentifier);
            }
        });
    }

    public /* synthetic */ void lambda$addOnWifiUsabilityStatsListener$27$WifiServiceImpl(IBinder binder, IOnWifiUsabilityStatsListener listener, int listenerIdentifier) {
        this.mWifiMetrics.addOnWifiUsabilityListener(binder, listener, listenerIdentifier);
    }

    public void removeOnWifiUsabilityStatsListener(final int listenerIdentifier) {
        this.mContext.enforceCallingPermission("android.permission.WIFI_UPDATE_USABILITY_STATS_SCORE", TAG);
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("removeOnWifiUsabilityStatsListener uid=%").c(Binder.getCallingUid()).flush();
        }
        this.mWifiInjector.getClientModeImplHandler().post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$9Zw0xLePOgdlBlU6O3Tzoz1StSc
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeOnWifiUsabilityStatsListener$28$WifiServiceImpl(listenerIdentifier);
            }
        });
    }

    public /* synthetic */ void lambda$removeOnWifiUsabilityStatsListener$28$WifiServiceImpl(int listenerIdentifier) {
        this.mWifiMetrics.removeOnWifiUsabilityListener(listenerIdentifier);
    }

    public void updateWifiUsabilityScore(final int seqNum, final int score, final int predictionHorizonSec) {
        this.mContext.enforceCallingPermission("android.permission.WIFI_UPDATE_USABILITY_STATS_SCORE", TAG);
        if (this.mVerboseLoggingEnabled) {
            this.mLog.info("updateWifiUsabilityScore uid=% seqNum=% score=% predictionHorizonSec=%").c(Binder.getCallingUid()).c(seqNum).c(score).c(predictionHorizonSec).flush();
        }
        this.mWifiInjector.getClientModeImplHandler().post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$WifiServiceImpl$uhJXN_4Uu8slXNxzz_pARcY1HF4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateWifiUsabilityScore$29$WifiServiceImpl(seqNum, score, predictionHorizonSec);
            }
        });
    }

    public /* synthetic */ void lambda$updateWifiUsabilityScore$29$WifiServiceImpl(int seqNum, int score, int predictionHorizonSec) {
        this.mClientModeImpl.updateWifiUsabilityScore(seqNum, score, predictionHorizonSec);
    }

    public boolean registerWifiNetworkEventObserver(IWifiNetworkEventObserver observer) {
        enforceAccessPermission();
        this.mLog.info("registerWifiNetworkEventObserver uid=%").c(Binder.getCallingUid()).flush();
        return this.mClientModeImpl.registerWifiNetworkEventObserver(observer);
    }

    public boolean unregisterWifiNetworkEventObserver(IWifiNetworkEventObserver observer) {
        enforceAccessPermission();
        this.mLog.info("unregisterWifiNetworkEventObserver uid=%").c(Binder.getCallingUid()).flush();
        return this.mClientModeImpl.unregisterWifiNetworkEventObserver(observer);
    }

    public int getCurrentRssi() {
        enforceAccessPermission();
        this.mLog.info("getCurrentRssi uid=%").c(Binder.getCallingUid()).flush();
        AsyncChannel asyncChannel = this.mClientModeImplChannel;
        if (asyncChannel != null) {
            return this.mClientModeImpl.syncGetCurrentRssi(asyncChannel);
        }
        Log.e(TAG, "mClientModeImplChannel is not initialized");
        return WifiMetrics.MIN_RSSI_DELTA;
    }

    public boolean isNetworkValidForVoWifi() {
        enforceAccessPermission();
        this.mLog.info("isNetworkValidForVoWifi uid=%").c(Binder.getCallingUid()).flush();
        return this.mClientModeImpl.isNetworkValidForVoWifi();
    }

    public boolean setCheckingInternetForVoWifi(boolean enabled) {
        enforceAccessPermission();
        this.mLog.info("setCheckingInternetForVoWifi uid=%").c(Binder.getCallingUid()).flush();
        return this.mClientModeImpl.setCheckingInternetForVoWifi(enabled);
    }

    public void notifyAndCloseWifi(String packageName) {
        if (enforceChangePermission(packageName) != 0 && (!packageName.equals("com.sprd.ImsConnectionManager") || Binder.getCallingUid() != 1001 || !isPrivileged(Binder.getCallingPid(), Binder.getCallingUid()) || !isSystem(packageName, Binder.getCallingUid()))) {
            return;
        }
        this.mLog.info("notifyAndCloseWifi uid=%").c(Binder.getCallingUid()).flush();
        this.mWifiInjector.getVoWifiAssistor().notifyAndCloseWifi();
    }

    public boolean registerWifiRssiLinkSpeedAndFrequencyObserver(IWifiRssiLinkSpeedAndFrequencyObserver observer) {
        enforceAccessPermission();
        this.mLog.info("registerWifiNetworkEventObserver uid=%").c(Binder.getCallingUid()).flush();
        return this.mClientModeImpl.registerWifiRssiLinkSpeedAndFrequencyObserver(observer);
    }

    public boolean unregisterWifiRssiLinkSpeedAndFrequencyObserver(IWifiRssiLinkSpeedAndFrequencyObserver observer) {
        enforceAccessPermission();
        this.mLog.info("unregisterWifiNetworkEventObserver uid=%").c(Binder.getCallingUid()).flush();
        return this.mClientModeImpl.unregisterWifiRssiLinkSpeedAndFrequencyObserver(observer);
    }

    void handleWifiCountryCodeToast(int state) {
        if (WifiFeaturesUtils.isWifiCountryWarningSupported()) {
            if (state == 3) {
                if (!this.selfEnableWifi) {
                    showToast(R.string.permlab_bindCellBroadcastService);
                }
                this.selfEnableWifi = false;
            } else if (state == 13) {
                WifiConfiguration config = getWifiApConfiguration();
                if (config.apBand == 1) {
                    showToast(R.string.permlab_cameraHeadlessSystemUser);
                }
            }
        }
    }

    void showToast(int stringId) {
        Toast toast = this.mToast;
        if (toast != null) {
            toast.cancel();
            this.mToast = null;
        }
        Context context = this.mContext;
        this.mToast = Toast.makeText(context, context.getString(stringId), 0);
        this.mToast.getWindowParams().type = 2014;
        this.mToast.getWindowParams().privateFlags |= 16;
        this.mToast.getWindowParams().flags |= 524288;
        this.mToast.show();
    }
}
