package com.android.server.wifi;

import android.R;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Icon;
import android.net.wifi.ScanResult;
import android.util.Log;
import com.android.internal.notification.SystemNotificationChannels;

/* JADX INFO: loaded from: classes.dex */
public class ConnectToNetworkNotificationBuilder {
    public static final String ACTION_CONNECT_TO_NETWORK = "com.android.server.wifi.ConnectToNetworkNotification.CONNECT_TO_NETWORK";
    public static final String ACTION_PICK_WIFI_NETWORK = "com.android.server.wifi.ConnectToNetworkNotification.PICK_WIFI_NETWORK";
    public static final String ACTION_PICK_WIFI_NETWORK_AFTER_CONNECT_FAILURE = "com.android.server.wifi.ConnectToNetworkNotification.PICK_NETWORK_AFTER_FAILURE";
    public static final String ACTION_USER_DISMISSED_NOTIFICATION = "com.android.server.wifi.ConnectToNetworkNotification.USER_DISMISSED_NOTIFICATION";
    public static final String AVAILABLE_NETWORK_NOTIFIER_TAG = "com.android.server.wifi.ConnectToNetworkNotification.AVAILABLE_NETWORK_NOTIFIER_TAG";
    private Context mContext;
    private FrameworkFacade mFrameworkFacade;
    private Resources mResources;

    public ConnectToNetworkNotificationBuilder(Context context, FrameworkFacade framework) {
        this.mContext = context;
        this.mResources = context.getResources();
        this.mFrameworkFacade = framework;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0024  */
    public Notification createConnectToAvailableNetworkNotification(String notifierTag, ScanResult network) {
        byte b;
        CharSequence title;
        int iHashCode = notifierTag.hashCode();
        if (iHashCode != 594918769) {
            if (iHashCode == 2017428693 && notifierTag.equals(OpenNetworkNotifier.TAG)) {
                b = 0;
            } else {
                b = -1;
            }
        } else if (notifierTag.equals(CarrierNetworkNotifier.TAG)) {
            b = 1;
        } else {
            b = -1;
        }
        if (b == 0) {
            title = this.mContext.getText(R.string.permlab_accessNetworkState);
        } else if (b == 1) {
            title = this.mContext.getText(R.string.permlab_accessLastKnownCellId);
        } else {
            Log.wtf("ConnectToNetworkNotificationBuilder", "Unknown network notifier." + notifierTag);
            return null;
        }
        Notification.Action connectAction = new Notification.Action.Builder((Icon) null, this.mResources.getText(R.string.permlab_accessImsCallService), getPrivateBroadcast(ACTION_CONNECT_TO_NETWORK, notifierTag)).build();
        Notification.Action allNetworksAction = new Notification.Action.Builder((Icon) null, this.mResources.getText(R.string.permlab_accessHiddenProfile), getPrivateBroadcast(ACTION_PICK_WIFI_NETWORK, notifierTag)).build();
        return createNotificationBuilder(title, network.SSID, notifierTag).setContentIntent(getPrivateBroadcast(ACTION_PICK_WIFI_NETWORK, notifierTag)).addAction(connectAction).addAction(allNetworksAction).build();
    }

    public Notification createNetworkConnectingNotification(String notifierTag, ScanResult network) {
        return createNotificationBuilder(this.mContext.getText(R.string.permlab_accessWifiState), network.SSID, notifierTag).setProgress(0, 0, true).build();
    }

    public Notification createNetworkConnectedNotification(String notifierTag, ScanResult network) {
        return createNotificationBuilder(this.mContext.getText(R.string.permlab_accessNotifications), network.SSID, notifierTag).build();
    }

    public Notification createNetworkFailedNotification(String notifierTag) {
        return createNotificationBuilder(this.mContext.getText(R.string.permlab_accessWimaxState), this.mContext.getText(R.string.permlab_accessLocationExtraCommands), notifierTag).setContentIntent(getPrivateBroadcast(ACTION_PICK_WIFI_NETWORK_AFTER_CONNECT_FAILURE, notifierTag)).setAutoCancel(true).build();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    private int getNotifierRequestCode(String notifierTag) {
        byte b;
        int iHashCode = notifierTag.hashCode();
        if (iHashCode != 594918769) {
            if (iHashCode == 2017428693 && notifierTag.equals(OpenNetworkNotifier.TAG)) {
                b = 0;
            } else {
                b = -1;
            }
        } else if (notifierTag.equals(CarrierNetworkNotifier.TAG)) {
            b = 1;
        } else {
            b = -1;
        }
        if (b != 0) {
            return b != 1 ? 0 : 2;
        }
        return 1;
    }

    private Notification.Builder createNotificationBuilder(CharSequence title, CharSequence content, String extraData) {
        return this.mFrameworkFacade.makeNotificationBuilder(this.mContext, SystemNotificationChannels.NETWORK_AVAILABLE).setSmallIcon(R.drawable.pointer_wait_15).setTicker(title).setContentTitle(title).setContentText(content).setDeleteIntent(getPrivateBroadcast(ACTION_USER_DISMISSED_NOTIFICATION, extraData)).setShowWhen(false).setLocalOnly(true).setColor(this.mResources.getColor(R.color.system_notification_accent_color, this.mContext.getTheme()));
    }

    private PendingIntent getPrivateBroadcast(String action, String extraData) {
        Intent intent = new Intent(action).setPackage("android");
        int requestCode = 0;
        if (extraData != null) {
            intent.putExtra(AVAILABLE_NETWORK_NOTIFIER_TAG, extraData);
            requestCode = getNotifierRequestCode(extraData);
        }
        return this.mFrameworkFacade.getBroadcast(this.mContext, requestCode, intent, 134217728);
    }
}
