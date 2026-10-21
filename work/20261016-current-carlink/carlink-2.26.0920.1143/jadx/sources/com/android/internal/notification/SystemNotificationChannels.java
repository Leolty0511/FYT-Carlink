package com.android.internal.notification;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ParceledListSlice;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.RemoteException;
import android.provider.Settings;
import com.android.internal.R;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SystemNotificationChannels {
    public static String ACCOUNT = "ACCOUNT";
    public static String ALERTS = "ALERTS";
    public static String CAR_MODE = "CAR_MODE";
    public static String DEVELOPER = "DEVELOPER";
    public static String DEVICE_ADMIN = "DEVICE_ADMIN";
    public static String FOREGROUND_SERVICE = "FOREGROUND_SERVICE";
    public static String NETWORK_ALERTS = "NETWORK_ALERTS";
    public static String NETWORK_AVAILABLE = "NETWORK_AVAILABLE";
    public static String NETWORK_STATUS = "NETWORK_STATUS";
    public static String PHYSICAL_KEYBOARD = "PHYSICAL_KEYBOARD";
    public static String RETAIL_MODE = "RETAIL_MODE";
    public static String SECURITY = "SECURITY";
    public static String UPDATES = "UPDATES";
    public static String USB = "USB";
    public static String VIRTUAL_KEYBOARD = "VIRTUAL_KEYBOARD";
    public static String VPN = "VPN";

    private SystemNotificationChannels() {
    }

    public static void createAccountChannelForPackage(String str, int i2, Context context) {
        try {
            NotificationManager.getService().createNotificationChannelsForPackage(str, i2, new ParceledListSlice(Arrays.asList(newAccountChannel(context))));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static void createAll(Context context) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NotificationChannel(VIRTUAL_KEYBOARD, context.getString(R.string.notification_channel_virtual_keyboard), 2));
        NotificationChannel notificationChannel = new NotificationChannel(PHYSICAL_KEYBOARD, context.getString(R.string.notification_channel_physical_keyboard), 3);
        Uri uri = Settings.System.DEFAULT_NOTIFICATION_URI;
        AudioAttributes audioAttributes = Notification.AUDIO_ATTRIBUTES_DEFAULT;
        notificationChannel.setSound(uri, audioAttributes);
        arrayList.add(notificationChannel);
        arrayList.add(new NotificationChannel(SECURITY, context.getString(R.string.notification_channel_security), 2));
        arrayList.add(new NotificationChannel(CAR_MODE, context.getString(R.string.notification_channel_car_mode), 2));
        arrayList.add(newAccountChannel(context));
        arrayList.add(new NotificationChannel(DEVELOPER, context.getString(R.string.notification_channel_developer), 2));
        arrayList.add(new NotificationChannel(UPDATES, context.getString(R.string.notification_channel_updates), 2));
        arrayList.add(new NotificationChannel(NETWORK_STATUS, context.getString(R.string.notification_channel_network_status), 2));
        NotificationChannel notificationChannel2 = new NotificationChannel(NETWORK_ALERTS, context.getString(R.string.notification_channel_network_alerts), 4);
        notificationChannel2.setSound(uri, audioAttributes);
        arrayList.add(notificationChannel2);
        arrayList.add(new NotificationChannel(NETWORK_AVAILABLE, context.getString(R.string.notification_channel_network_available), 2));
        arrayList.add(new NotificationChannel(VPN, context.getString(R.string.notification_channel_vpn), 2));
        arrayList.add(new NotificationChannel(DEVICE_ADMIN, context.getString(R.string.notification_channel_device_admin), 2));
        NotificationChannel notificationChannel3 = new NotificationChannel(ALERTS, context.getString(R.string.notification_channel_alerts), 3);
        notificationChannel3.setSound(uri, audioAttributes);
        arrayList.add(notificationChannel3);
        arrayList.add(new NotificationChannel(RETAIL_MODE, context.getString(R.string.notification_channel_retail_mode), 2));
        arrayList.add(new NotificationChannel(USB, context.getString(R.string.notification_channel_usb), 1));
        NotificationChannel notificationChannel4 = new NotificationChannel(FOREGROUND_SERVICE, context.getString(R.string.notification_channel_foreground_service), 2);
        notificationChannel4.setBlockableSystem(true);
        arrayList.add(notificationChannel4);
        notificationManager.createNotificationChannels(arrayList);
    }

    private static NotificationChannel newAccountChannel(Context context) {
        return new NotificationChannel(ACCOUNT, context.getString(R.string.notification_channel_account), 2);
    }
}
