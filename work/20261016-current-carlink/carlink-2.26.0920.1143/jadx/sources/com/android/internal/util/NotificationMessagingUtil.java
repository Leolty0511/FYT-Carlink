package com.android.internal.util;

import android.app.Notification;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.service.notification.StatusBarNotification;
import android.util.ArrayMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class NotificationMessagingUtil {
    private static final String DEFAULT_SMS_APP_SETTING = "sms_default_application";
    private final Context mContext;
    private ArrayMap<Integer, String> mDefaultSmsApp = new ArrayMap<>();
    private final ContentObserver mSmsContentObserver;

    public NotificationMessagingUtil(Context context) {
        ContentObserver contentObserver = new ContentObserver(new Handler(Looper.getMainLooper())) { // from class: com.android.internal.util.NotificationMessagingUtil.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z2, Uri uri, int i2) {
                if (Settings.Secure.getUriFor("sms_default_application").equals(uri)) {
                    NotificationMessagingUtil.this.cacheDefaultSmsApp(i2);
                }
            }
        };
        this.mSmsContentObserver = contentObserver;
        this.mContext = context;
        context.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("sms_default_application"), false, contentObserver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cacheDefaultSmsApp(int i2) {
        this.mDefaultSmsApp.put(Integer.valueOf(i2), Settings.Secure.getStringForUser(this.mContext.getContentResolver(), "sms_default_application", i2));
    }

    private boolean isDefaultMessagingApp(StatusBarNotification statusBarNotification) {
        int userId = statusBarNotification.getUserId();
        if (userId == -10000 || userId == -1) {
            return false;
        }
        if (this.mDefaultSmsApp.get(Integer.valueOf(userId)) == null) {
            cacheDefaultSmsApp(userId);
        }
        return Objects.equals(this.mDefaultSmsApp.get(Integer.valueOf(userId)), statusBarNotification.getPackageName());
    }

    public boolean isImportantMessaging(StatusBarNotification statusBarNotification, int i2) {
        if (i2 < 2) {
            return false;
        }
        if (Notification.MessagingStyle.class.equals(statusBarNotification.getNotification().getNotificationStyle())) {
            return true;
        }
        return "msg".equals(statusBarNotification.getNotification().category) && isDefaultMessagingApp(statusBarNotification);
    }
}
