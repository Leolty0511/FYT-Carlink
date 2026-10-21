package com.android.server.wifi;

import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.server.wifi.util.NativeUtil;

/* JADX INFO: loaded from: classes.dex */
public class WrongPasswordNotifier {
    private static final long CANCEL_TIMEOUT_MILLISECONDS = 300000;

    @VisibleForTesting
    public static final int NOTIFICATION_ID = 42;
    private final Context mContext;
    private final FrameworkFacade mFrameworkFacade;
    private final NotificationManager mNotificationManager;
    private boolean mWrongPasswordDetected;

    public WrongPasswordNotifier(Context context, FrameworkFacade frameworkFacade) {
        this.mContext = context;
        this.mFrameworkFacade = frameworkFacade;
        this.mNotificationManager = (NotificationManager) this.mContext.getSystemService("notification");
    }

    public void onWrongPasswordError(String ssid) {
        showNotification(ssid);
        this.mWrongPasswordDetected = true;
    }

    public void onNewConnectionAttempt() {
        if (this.mWrongPasswordDetected) {
            dismissNotification();
            this.mWrongPasswordDetected = false;
        }
    }

    private void showNotification(String ssid) {
        Intent intent = new Intent("android.settings.WIFI_SETTINGS");
        intent.putExtra("wifi_start_connect_ssid", NativeUtil.removeEnclosingQuotes(ssid));
        Notification.Builder builder = this.mFrameworkFacade.makeNotificationBuilder(this.mContext, SystemNotificationChannels.NETWORK_ALERTS).setAutoCancel(true).setTimeoutAfter(CANCEL_TIMEOUT_MILLISECONDS).setSmallIcon(R.drawable.pointer_wait_15).setContentTitle(this.mContext.getString(R.string.permlab_accessWimaxState)).setContentText(ssid).setContentIntent(this.mFrameworkFacade.getActivity(this.mContext, 0, intent, 134217728)).setColor(this.mContext.getResources().getColor(R.color.system_notification_accent_color));
        this.mNotificationManager.notify(42, builder.build());
    }

    private void dismissNotification() {
        this.mNotificationManager.cancel(null, 42);
    }
}
