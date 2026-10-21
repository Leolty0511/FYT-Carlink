package com.android.server.wifi;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Log;
import com.android.internal.annotations.VisibleForTesting;
import com.android.server.wifi.rtt.RttServiceImpl;
import com.android.server.wifi.util.ScanResultUtil;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AvailableNetworkNotifier {

    @VisibleForTesting
    static final int DEFAULT_REPEAT_DELAY_SEC = 900;
    private static final int STATE_CONNECTED_NOTIFICATION = 3;
    private static final int STATE_CONNECTING_IN_NOTIFICATION = 2;
    private static final int STATE_CONNECT_FAILED_NOTIFICATION = 4;
    private static final int STATE_NO_NOTIFICATION = 0;
    private static final int STATE_SHOWING_RECOMMENDATION_NOTIFICATION = 1;
    private static final int TIME_TO_SHOW_CONNECTED_MILLIS = 5000;
    private static final int TIME_TO_SHOW_CONNECTING_MILLIS = 10000;
    private static final int TIME_TO_SHOW_FAILED_MILLIS = 5000;
    private final ClientModeImpl mClientModeImpl;
    private final Clock mClock;
    private final WifiConfigManager mConfigManager;
    private final Context mContext;
    private final FrameworkFacade mFrameworkFacade;
    private final Handler mHandler;
    private final int mNominatorId;
    private final ConnectToNetworkNotificationBuilder mNotificationBuilder;
    private final long mNotificationRepeatDelay;
    private long mNotificationRepeatTime;
    private ScanResult mRecommendedNetwork;
    private boolean mSettingEnabled;
    private final Messenger mSrcMessenger;
    private final String mStoreDataIdentifier;
    private final int mSystemMessageNotificationId;
    private final String mTag;
    private final String mToggleSettingsName;
    private final WifiMetrics mWifiMetrics;
    private int mState = 0;
    private final Set<String> mBlacklistedSsids = new ArraySet();
    private final BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.wifi.AvailableNetworkNotifier.1
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!AvailableNetworkNotifier.this.mTag.equals(intent.getExtra(ConnectToNetworkNotificationBuilder.AVAILABLE_NETWORK_NOTIFIER_TAG))) {
                return;
            }
            String action = intent.getAction();
            byte b = -1;
            switch (action.hashCode()) {
                case -1692061185:
                    if (action.equals(ConnectToNetworkNotificationBuilder.ACTION_CONNECT_TO_NETWORK)) {
                        b = 1;
                    }
                    break;
                case -1140661470:
                    if (action.equals(ConnectToNetworkNotificationBuilder.ACTION_PICK_WIFI_NETWORK)) {
                        b = 2;
                    }
                    break;
                case 303648504:
                    if (action.equals(ConnectToNetworkNotificationBuilder.ACTION_PICK_WIFI_NETWORK_AFTER_CONNECT_FAILURE)) {
                        b = 3;
                    }
                    break;
                case 1260970165:
                    if (action.equals(ConnectToNetworkNotificationBuilder.ACTION_USER_DISMISSED_NOTIFICATION)) {
                        b = 0;
                    }
                    break;
            }
            if (b == 0) {
                AvailableNetworkNotifier.this.handleUserDismissedAction();
                return;
            }
            if (b == 1) {
                AvailableNetworkNotifier.this.handleConnectToNetworkAction();
                return;
            }
            if (b == 2) {
                AvailableNetworkNotifier.this.handleSeeAllNetworksAction();
                return;
            }
            if (b != 3) {
                Log.e(AvailableNetworkNotifier.this.mTag, "Unknown action " + intent.getAction());
                return;
            }
            AvailableNetworkNotifier.this.handlePickWifiNetworkAfterConnectFailure();
        }
    };
    private final Handler.Callback mConnectionStateCallback = new Handler.Callback() { // from class: com.android.server.wifi.-$$Lambda$AvailableNetworkNotifier$uFi1H-bLBjC8591OGivQMgKmiaU
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            return this.f$0.lambda$new$0$AvailableNetworkNotifier(message);
        }
    };
    private boolean mScreenOn = false;

    @Retention(RetentionPolicy.SOURCE)
    private @interface State {
    }

    public AvailableNetworkNotifier(String tag, String storeDataIdentifier, String toggleSettingsName, int notificationIdentifier, int nominatorId, Context context, Looper looper, FrameworkFacade framework, Clock clock, WifiMetrics wifiMetrics, WifiConfigManager wifiConfigManager, WifiConfigStore wifiConfigStore, ClientModeImpl clientModeImpl, ConnectToNetworkNotificationBuilder connectToNetworkNotificationBuilder) {
        this.mTag = tag;
        this.mStoreDataIdentifier = storeDataIdentifier;
        this.mToggleSettingsName = toggleSettingsName;
        this.mSystemMessageNotificationId = notificationIdentifier;
        this.mNominatorId = nominatorId;
        this.mContext = context;
        this.mHandler = new Handler(looper);
        this.mFrameworkFacade = framework;
        this.mWifiMetrics = wifiMetrics;
        this.mClock = clock;
        this.mConfigManager = wifiConfigManager;
        this.mClientModeImpl = clientModeImpl;
        this.mNotificationBuilder = connectToNetworkNotificationBuilder;
        this.mSrcMessenger = new Messenger(new Handler(looper, this.mConnectionStateCallback));
        wifiConfigStore.registerStoreData(new SsidSetStoreData(this.mStoreDataIdentifier, new AvailableNetworkNotifierStoreData()));
        this.mNotificationRepeatDelay = ((long) this.mFrameworkFacade.getIntegerSetting(context, "wifi_networks_available_repeat_delay", DEFAULT_REPEAT_DELAY_SEC)) * 1000;
        NotificationEnabledSettingObserver settingObserver = new NotificationEnabledSettingObserver(this.mHandler);
        settingObserver.register();
        IntentFilter filter = new IntentFilter();
        filter.addAction(ConnectToNetworkNotificationBuilder.ACTION_USER_DISMISSED_NOTIFICATION);
        filter.addAction(ConnectToNetworkNotificationBuilder.ACTION_CONNECT_TO_NETWORK);
        filter.addAction(ConnectToNetworkNotificationBuilder.ACTION_PICK_WIFI_NETWORK);
        filter.addAction(ConnectToNetworkNotificationBuilder.ACTION_PICK_WIFI_NETWORK_AFTER_CONNECT_FAILURE);
        this.mContext.registerReceiver(this.mBroadcastReceiver, filter, null, this.mHandler);
    }

    public /* synthetic */ boolean lambda$new$0$AvailableNetworkNotifier(Message msg) {
        switch (msg.what) {
            case 151554:
                handleConnectionAttemptFailedToSend();
                break;
            case 151555:
                break;
            default:
                Log.e("AvailableNetworkNotifier", "Unknown message " + msg.what);
                break;
        }
        return true;
    }

    public void clearPendingNotification(boolean resetRepeatTime) {
        if (resetRepeatTime) {
            this.mNotificationRepeatTime = 0L;
        }
        if (this.mState != 0) {
            getNotificationManager().cancel(this.mSystemMessageNotificationId);
            if (this.mRecommendedNetwork != null) {
                Log.d(this.mTag, "Notification with state=" + this.mState + " was cleared for recommended network: \"" + this.mRecommendedNetwork.SSID + "\"");
            }
            this.mState = 0;
            this.mRecommendedNetwork = null;
        }
    }

    private boolean isControllerEnabled() {
        return this.mSettingEnabled && !UserManager.get(this.mContext).hasUserRestriction("no_config_wifi", UserHandle.CURRENT);
    }

    public void handleScanResults(List<ScanDetail> availableNetworks) {
        if (!isControllerEnabled()) {
            clearPendingNotification(true);
            return;
        }
        if (availableNetworks.isEmpty() && this.mState == 1) {
            clearPendingNotification(false);
            return;
        }
        if (this.mState == 0 && this.mClock.getWallClockMillis() < this.mNotificationRepeatTime) {
            return;
        }
        if (this.mState == 0 && !this.mScreenOn) {
            return;
        }
        int i = this.mState;
        if (i == 0 || i == 1) {
            ScanResult recommendation = recommendNetwork(availableNetworks);
            if (recommendation != null) {
                postInitialNotification(recommendation);
            } else {
                clearPendingNotification(false);
            }
        }
    }

    public ScanResult recommendNetwork(List<ScanDetail> networks) {
        ScanResult result = null;
        int highestRssi = Integer.MIN_VALUE;
        for (ScanDetail scanDetail : networks) {
            ScanResult scanResult = scanDetail.getScanResult();
            if (scanResult.level > highestRssi) {
                result = scanResult;
                highestRssi = scanResult.level;
            }
        }
        if (result != null && this.mBlacklistedSsids.contains(result.SSID)) {
            return null;
        }
        return result;
    }

    public void handleScreenStateChanged(boolean screenOn) {
        this.mScreenOn = screenOn;
    }

    public void handleWifiConnected(String ssid) {
        removeNetworkFromBlacklist(ssid);
        if (this.mState != 2) {
            clearPendingNotification(true);
            return;
        }
        postNotification(this.mNotificationBuilder.createNetworkConnectedNotification(this.mTag, this.mRecommendedNetwork));
        Log.d(this.mTag, "User connected to recommended network: \"" + this.mRecommendedNetwork.SSID + "\"");
        this.mWifiMetrics.incrementConnectToNetworkNotification(this.mTag, 3);
        this.mState = 3;
        this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$AvailableNetworkNotifier$fIUenOK3XCnkKxNOfiG4FqrVP9c
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleWifiConnected$1$AvailableNetworkNotifier();
            }
        }, RttServiceImpl.HAL_RANGING_TIMEOUT_MS);
    }

    public /* synthetic */ void lambda$handleWifiConnected$1$AvailableNetworkNotifier() {
        if (this.mState == 3) {
            clearPendingNotification(true);
        }
    }

    public void handleConnectionFailure() {
        if (this.mState != 2) {
            return;
        }
        postNotification(this.mNotificationBuilder.createNetworkFailedNotification(this.mTag));
        Log.d(this.mTag, "User failed to connect to recommended network: \"" + this.mRecommendedNetwork.SSID + "\"");
        this.mWifiMetrics.incrementConnectToNetworkNotification(this.mTag, 4);
        this.mState = 4;
        this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$AvailableNetworkNotifier$td7RNeapolv8UxSAWhbB9B3dpLc
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleConnectionFailure$2$AvailableNetworkNotifier();
            }
        }, RttServiceImpl.HAL_RANGING_TIMEOUT_MS);
    }

    public /* synthetic */ void lambda$handleConnectionFailure$2$AvailableNetworkNotifier() {
        if (this.mState == 4) {
            clearPendingNotification(false);
        }
    }

    private NotificationManager getNotificationManager() {
        return (NotificationManager) this.mContext.getSystemService("notification");
    }

    private void postInitialNotification(ScanResult recommendedNetwork) {
        ScanResult scanResult = this.mRecommendedNetwork;
        if (scanResult != null && TextUtils.equals(scanResult.SSID, recommendedNetwork.SSID)) {
            return;
        }
        postNotification(this.mNotificationBuilder.createConnectToAvailableNetworkNotification(this.mTag, recommendedNetwork));
        if (this.mState == 0) {
            this.mWifiMetrics.incrementConnectToNetworkNotification(this.mTag, 1);
        } else {
            this.mWifiMetrics.incrementNumNetworkRecommendationUpdates(this.mTag);
        }
        this.mState = 1;
        this.mRecommendedNetwork = recommendedNetwork;
        this.mNotificationRepeatTime = this.mClock.getWallClockMillis() + this.mNotificationRepeatDelay;
    }

    private void postNotification(Notification notification) {
        getNotificationManager().notify(this.mSystemMessageNotificationId, notification);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleConnectToNetworkAction() {
        this.mWifiMetrics.incrementConnectToNetworkNotificationAction(this.mTag, this.mState, 2);
        if (this.mState != 1) {
            return;
        }
        postNotification(this.mNotificationBuilder.createNetworkConnectingNotification(this.mTag, this.mRecommendedNetwork));
        this.mWifiMetrics.incrementConnectToNetworkNotification(this.mTag, 2);
        Log.d(this.mTag, "User initiated connection to recommended network: \"" + this.mRecommendedNetwork.SSID + "\"");
        WifiConfiguration network = createRecommendedNetworkConfig(this.mRecommendedNetwork);
        NetworkUpdateResult result = this.mConfigManager.addOrUpdateNetwork(network, 1010);
        if (result.isSuccess()) {
            this.mWifiMetrics.setNominatorForNetwork(result.netId, this.mNominatorId);
            Message msg = Message.obtain();
            msg.what = 151553;
            msg.arg1 = result.netId;
            msg.obj = null;
            msg.replyTo = this.mSrcMessenger;
            this.mClientModeImpl.sendMessage(msg);
            addNetworkToBlacklist(this.mRecommendedNetwork.SSID);
        }
        this.mState = 2;
        this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$AvailableNetworkNotifier$oTSUi0JYUdNLPt_-Lt-_qgMDQE8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleConnectToNetworkAction$3$AvailableNetworkNotifier();
            }
        }, RttServiceImpl.HAL_AWARE_RANGING_TIMEOUT_MS);
    }

    public /* synthetic */ void lambda$handleConnectToNetworkAction$3$AvailableNetworkNotifier() {
        if (this.mState == 2) {
            handleConnectionFailure();
        }
    }

    private void addNetworkToBlacklist(String ssid) {
        this.mBlacklistedSsids.add(ssid);
        this.mWifiMetrics.setNetworkRecommenderBlacklistSize(this.mTag, this.mBlacklistedSsids.size());
        this.mConfigManager.saveToStore(false);
        Log.d(this.mTag, "Network is added to the network notification blacklist: \"" + ssid + "\"");
    }

    private void removeNetworkFromBlacklist(String ssid) {
        if (ssid == null || !this.mBlacklistedSsids.remove(ssid)) {
            return;
        }
        this.mWifiMetrics.setNetworkRecommenderBlacklistSize(this.mTag, this.mBlacklistedSsids.size());
        this.mConfigManager.saveToStore(false);
        Log.d(this.mTag, "Network is removed from the network notification blacklist: \"" + ssid + "\"");
    }

    WifiConfiguration createRecommendedNetworkConfig(ScanResult recommendedNetwork) {
        return ScanResultUtil.createNetworkFromScanResult(recommendedNetwork);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSeeAllNetworksAction() {
        this.mWifiMetrics.incrementConnectToNetworkNotificationAction(this.mTag, this.mState, 3);
        startWifiSettings();
    }

    private void startWifiSettings() {
        this.mContext.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        this.mContext.startActivity(new Intent("android.settings.WIFI_SETTINGS").addFlags(268435456));
        clearPendingNotification(false);
    }

    private void handleConnectionAttemptFailedToSend() {
        handleConnectionFailure();
        this.mWifiMetrics.incrementNumNetworkConnectMessageFailedToSend(this.mTag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePickWifiNetworkAfterConnectFailure() {
        this.mWifiMetrics.incrementConnectToNetworkNotificationAction(this.mTag, this.mState, 4);
        startWifiSettings();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUserDismissedAction() {
        Log.d(this.mTag, "User dismissed notification with state=" + this.mState);
        this.mWifiMetrics.incrementConnectToNetworkNotificationAction(this.mTag, this.mState, 1);
        if (this.mState == 1) {
            addNetworkToBlacklist(this.mRecommendedNetwork.SSID);
        }
        resetStateAndDelayNotification();
    }

    private void resetStateAndDelayNotification() {
        this.mState = 0;
        this.mNotificationRepeatTime = System.currentTimeMillis() + this.mNotificationRepeatDelay;
        this.mRecommendedNetwork = null;
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println(this.mTag + ": ");
        pw.println("mSettingEnabled " + this.mSettingEnabled);
        pw.println("currentTime: " + this.mClock.getWallClockMillis());
        pw.println("mNotificationRepeatTime: " + this.mNotificationRepeatTime);
        pw.println("mState: " + this.mState);
        pw.println("mBlacklistedSsids: " + this.mBlacklistedSsids.toString());
    }

    private class AvailableNetworkNotifierStoreData implements SsidSetStoreData.DataSource {
        private AvailableNetworkNotifierStoreData() {
        }

        @Override // com.android.server.wifi.SsidSetStoreData.DataSource
        public Set<String> getSsids() {
            return new ArraySet(AvailableNetworkNotifier.this.mBlacklistedSsids);
        }

        @Override // com.android.server.wifi.SsidSetStoreData.DataSource
        public void setSsids(Set<String> ssidList) {
            AvailableNetworkNotifier.this.mBlacklistedSsids.addAll(ssidList);
            AvailableNetworkNotifier.this.mWifiMetrics.setNetworkRecommenderBlacklistSize(AvailableNetworkNotifier.this.mTag, AvailableNetworkNotifier.this.mBlacklistedSsids.size());
        }
    }

    private class NotificationEnabledSettingObserver extends ContentObserver {
        NotificationEnabledSettingObserver(Handler handler) {
            super(handler);
        }

        public void register() {
            AvailableNetworkNotifier.this.mFrameworkFacade.registerContentObserver(AvailableNetworkNotifier.this.mContext, Settings.Global.getUriFor(AvailableNetworkNotifier.this.mToggleSettingsName), true, this);
            AvailableNetworkNotifier.this.mSettingEnabled = getValue();
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            AvailableNetworkNotifier.this.mSettingEnabled = getValue();
            AvailableNetworkNotifier.this.clearPendingNotification(true);
        }

        private boolean getValue() {
            boolean enabled = AvailableNetworkNotifier.this.mFrameworkFacade.getIntegerSetting(AvailableNetworkNotifier.this.mContext, AvailableNetworkNotifier.this.mToggleSettingsName, 1) == 1;
            AvailableNetworkNotifier.this.mWifiMetrics.setIsWifiNetworksAvailableNotificationEnabled(AvailableNetworkNotifier.this.mTag, enabled);
            Log.d(AvailableNetworkNotifier.this.mTag, "Settings toggle enabled=" + enabled);
            return enabled;
        }
    }
}
