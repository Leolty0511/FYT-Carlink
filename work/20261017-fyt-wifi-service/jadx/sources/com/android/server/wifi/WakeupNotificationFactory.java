package com.android.server.wifi;

import android.R;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Icon;
import com.android.internal.notification.SystemNotificationChannels;

/* JADX INFO: loaded from: classes.dex */
public class WakeupNotificationFactory {
    public static final String ACTION_DISMISS_NOTIFICATION = "com.android.server.wifi.wakeup.DISMISS_NOTIFICATION";
    public static final String ACTION_OPEN_WIFI_PREFERENCES = "com.android.server.wifi.wakeup.OPEN_WIFI_PREFERENCES";
    public static final String ACTION_OPEN_WIFI_SETTINGS = "com.android.server.wifi.wakeup.OPEN_WIFI_SETTINGS";
    public static final String ACTION_TURN_OFF_WIFI_WAKE = "com.android.server.wifi.wakeup.TURN_OFF_WIFI_WAKE";
    public static final int ONBOARD_ID = 43;
    private final Context mContext;
    private final FrameworkFacade mFrameworkFacade;

    WakeupNotificationFactory(Context context, FrameworkFacade frameworkFacade) {
        this.mContext = context;
        this.mFrameworkFacade = frameworkFacade;
    }

    public Notification createOnboardingNotification() {
        CharSequence title = this.mContext.getText(R.string.permlab_deliverCompanionMessages);
        CharSequence content = this.mContext.getText(R.string.permlab_createNetworkSockets);
        CharSequence disableText = this.mContext.getText(R.string.permlab_control_incall_experience);
        int color = this.mContext.getResources().getColor(R.color.system_notification_accent_color, this.mContext.getTheme());
        Notification.Action disableAction = new Notification.Action.Builder((Icon) null, disableText, getPrivateBroadcast(ACTION_TURN_OFF_WIFI_WAKE)).build();
        return this.mFrameworkFacade.makeNotificationBuilder(this.mContext, SystemNotificationChannels.NETWORK_STATUS).setSmallIcon(R.drawable.ic_menu_blocked_user).setTicker(title).setContentTitle(title).setContentText(content).setContentIntent(getPrivateBroadcast(ACTION_OPEN_WIFI_PREFERENCES)).setDeleteIntent(getPrivateBroadcast(ACTION_DISMISS_NOTIFICATION)).addAction(disableAction).setShowWhen(false).setLocalOnly(true).setColor(color).build();
    }

    private PendingIntent getPrivateBroadcast(String action) {
        Intent intent = new Intent(action).setPackage("android");
        return this.mFrameworkFacade.getBroadcast(this.mContext, 0, intent, 134217728);
    }
}
