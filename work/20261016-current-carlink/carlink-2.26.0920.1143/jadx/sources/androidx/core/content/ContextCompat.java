package androidx.core.content;

import android.accounts.AccountManager;
import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.AppOpsManager;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.SearchManager;
import android.app.UiModeManager;
import android.app.WallpaperManager;
import android.app.admin.DevicePolicyManager;
import android.app.job.JobScheduler;
import android.app.usage.UsageStatsManager;
import android.appwidget.AppWidgetManager;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.RestrictionsManager;
import android.content.pm.LauncherApps;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.hardware.ConsumerIrManager;
import android.hardware.SensorManager;
import android.hardware.camera2.CameraManager;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.hardware.usb.UsbManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.media.MediaRouter;
import android.media.projection.MediaProjectionManager;
import android.media.session.MediaSessionManager;
import android.media.tv.TvInputManager;
import android.net.ConnectivityManager;
import android.net.nsd.NsdManager;
import android.net.wifi.WifiManager;
import android.net.wifi.p2p.WifiP2pManager;
import android.nfc.NfcManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.os.DropBoxManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.Process;
import android.os.UserManager;
import android.os.Vibrator;
import android.os.storage.StorageManager;
import android.print.PrintManager;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.CaptioningManager;
import android.view.inputmethod.InputMethodManager;
import android.view.textservice.TextServicesManager;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.os.BuildCompat;
import androidx.core.os.ExecutorCompat;
import androidx.core.util.ObjectsCompat;
import java.io.File;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"PrivateConstructorForUtilityClass"})
public class ContextCompat {
    private static final String DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION_SUFFIX = ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";
    public static final int RECEIVER_EXPORTED = 2;
    public static final int RECEIVER_NOT_EXPORTED = 4;
    public static final int RECEIVER_VISIBLE_TO_INSTANT_APPS = 1;
    private static final String TAG = "ContextCompat";
    private static final Object sLock = new Object();
    private static final Object sSync = new Object();
    private static TypedValue sTempValue;

    @RequiresApi(16)
    public static class Api16Impl {
        private Api16Impl() {
        }

        @DoNotInline
        public static void startActivities(Context context, Intent[] intentArr, Bundle bundle) {
            context.startActivities(intentArr, bundle);
        }

        @DoNotInline
        public static void startActivity(Context context, Intent intent, Bundle bundle) {
            context.startActivity(intent, bundle);
        }
    }

    @RequiresApi(19)
    public static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        public static File[] getExternalCacheDirs(Context context) {
            return context.getExternalCacheDirs();
        }

        @DoNotInline
        public static File[] getExternalFilesDirs(Context context, String str) {
            return context.getExternalFilesDirs(str);
        }

        @DoNotInline
        public static File[] getObbDirs(Context context) {
            return context.getObbDirs();
        }
    }

    @RequiresApi(21)
    public static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        public static File getCodeCacheDir(Context context) {
            return context.getCodeCacheDir();
        }

        @DoNotInline
        public static Drawable getDrawable(Context context, int i2) {
            return context.getDrawable(i2);
        }

        @DoNotInline
        public static File getNoBackupFilesDir(Context context) {
            return context.getNoBackupFilesDir();
        }
    }

    @RequiresApi(23)
    public static class Api23Impl {
        private Api23Impl() {
        }

        @DoNotInline
        public static int getColor(Context context, int i2) {
            return context.getColor(i2);
        }

        @DoNotInline
        public static <T> T getSystemService(Context context, Class<T> cls) {
            return (T) context.getSystemService(cls);
        }

        @DoNotInline
        public static String getSystemServiceName(Context context, Class<?> cls) {
            return context.getSystemServiceName(cls);
        }
    }

    @RequiresApi(24)
    public static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        public static Context createDeviceProtectedStorageContext(Context context) {
            return context.createDeviceProtectedStorageContext();
        }

        @DoNotInline
        public static File getDataDir(Context context) {
            return context.getDataDir();
        }

        @DoNotInline
        public static boolean isDeviceProtectedStorage(Context context) {
            return context.isDeviceProtectedStorage();
        }
    }

    @RequiresApi(26)
    public static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        public static Intent registerReceiver(Context context, @Nullable BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i2) {
            return ((i2 & 4) == 0 || str != null) ? context.registerReceiver(broadcastReceiver, intentFilter, str, handler, i2 & 1) : context.registerReceiver(broadcastReceiver, intentFilter, ContextCompat.obtainAndCheckReceiverPermission(context), handler);
        }

        @DoNotInline
        public static ComponentName startForegroundService(Context context, Intent intent) {
            return context.startForegroundService(intent);
        }
    }

    @RequiresApi(28)
    public static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        public static Executor getMainExecutor(Context context) {
            return context.getMainExecutor();
        }
    }

    @RequiresApi(30)
    public static class Api30Impl {
        private Api30Impl() {
        }

        @DoNotInline
        public static String getAttributionTag(Context context) {
            return context.getAttributionTag();
        }
    }

    @RequiresApi(33)
    public static class Api33Impl {
        private Api33Impl() {
        }

        @DoNotInline
        public static Intent registerReceiver(Context context, @Nullable BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i2) {
            return context.registerReceiver(broadcastReceiver, intentFilter, str, handler, i2);
        }
    }

    public static final class LegacyServiceMapHolder {
        static final HashMap<Class<?>, String> SERVICES;

        static {
            HashMap<Class<?>, String> map = new HashMap<>();
            SERVICES = map;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 22) {
                map.put(SubscriptionManager.class, Context.TELEPHONY_SUBSCRIPTION_SERVICE);
                map.put(UsageStatsManager.class, Context.USAGE_STATS_SERVICE);
            }
            if (i2 >= 21) {
                map.put(AppWidgetManager.class, Context.APPWIDGET_SERVICE);
                map.put(BatteryManager.class, Context.BATTERY_SERVICE);
                map.put(CameraManager.class, Context.CAMERA_SERVICE);
                map.put(JobScheduler.class, Context.JOB_SCHEDULER_SERVICE);
                map.put(LauncherApps.class, Context.LAUNCHER_APPS_SERVICE);
                map.put(MediaProjectionManager.class, Context.MEDIA_PROJECTION_SERVICE);
                map.put(MediaSessionManager.class, Context.MEDIA_SESSION_SERVICE);
                map.put(RestrictionsManager.class, Context.RESTRICTIONS_SERVICE);
                map.put(TelecomManager.class, Context.TELECOM_SERVICE);
                map.put(TvInputManager.class, Context.TV_INPUT_SERVICE);
            }
            if (i2 >= 19) {
                map.put(AppOpsManager.class, Context.APP_OPS_SERVICE);
                map.put(CaptioningManager.class, Context.CAPTIONING_SERVICE);
                map.put(ConsumerIrManager.class, Context.CONSUMER_IR_SERVICE);
                map.put(PrintManager.class, Context.PRINT_SERVICE);
            }
            if (i2 >= 18) {
                map.put(BluetoothManager.class, "bluetooth");
            }
            if (i2 >= 17) {
                map.put(DisplayManager.class, Context.DISPLAY_SERVICE);
                map.put(UserManager.class, "user");
            }
            if (i2 >= 16) {
                map.put(InputManager.class, "input");
                map.put(MediaRouter.class, Context.MEDIA_ROUTER_SERVICE);
                map.put(NsdManager.class, Context.NSD_SERVICE);
            }
            map.put(AccessibilityManager.class, Context.ACCESSIBILITY_SERVICE);
            map.put(AccountManager.class, "account");
            map.put(ActivityManager.class, Context.ACTIVITY_SERVICE);
            map.put(AlarmManager.class, "alarm");
            map.put(AudioManager.class, "audio");
            map.put(ClipboardManager.class, Context.CLIPBOARD_SERVICE);
            map.put(ConnectivityManager.class, Context.CONNECTIVITY_SERVICE);
            map.put(DevicePolicyManager.class, Context.DEVICE_POLICY_SERVICE);
            map.put(DownloadManager.class, Context.DOWNLOAD_SERVICE);
            map.put(DropBoxManager.class, Context.DROPBOX_SERVICE);
            map.put(InputMethodManager.class, Context.INPUT_METHOD_SERVICE);
            map.put(KeyguardManager.class, Context.KEYGUARD_SERVICE);
            map.put(LayoutInflater.class, Context.LAYOUT_INFLATER_SERVICE);
            map.put(LocationManager.class, "location");
            map.put(NfcManager.class, "nfc");
            map.put(NotificationManager.class, Context.NOTIFICATION_SERVICE);
            map.put(PowerManager.class, Context.POWER_SERVICE);
            map.put(SearchManager.class, "search");
            map.put(SensorManager.class, Context.SENSOR_SERVICE);
            map.put(StorageManager.class, Context.STORAGE_SERVICE);
            map.put(TelephonyManager.class, "phone");
            map.put(TextServicesManager.class, Context.TEXT_SERVICES_MANAGER_SERVICE);
            map.put(UiModeManager.class, Context.UI_MODE_SERVICE);
            map.put(UsbManager.class, Context.USB_SERVICE);
            map.put(Vibrator.class, Context.VIBRATOR_SERVICE);
            map.put(WallpaperManager.class, Context.WALLPAPER_SERVICE);
            map.put(WifiP2pManager.class, Context.WIFI_P2P_SERVICE);
            map.put(WifiManager.class, "wifi");
            map.put(WindowManager.class, Context.WINDOW_SERVICE);
        }

        private LegacyServiceMapHolder() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface RegisterReceiverFlags {
    }

    @OptIn(markerClass = {BuildCompat.PrereleaseSdkCheck.class})
    public static int checkSelfPermission(@NonNull Context context, @NonNull String str) {
        ObjectsCompat.requireNonNull(str, "permission must be non-null");
        if (BuildCompat.isAtLeastT() || !TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        return NotificationManagerCompat.from(context).areNotificationsEnabled() ? 0 : -1;
    }

    @Nullable
    public static Context createDeviceProtectedStorageContext(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.createDeviceProtectedStorageContext(context);
        }
        return null;
    }

    private static File createFilesDir(File file) {
        synchronized (sSync) {
            if (!file.exists()) {
                if (file.mkdirs()) {
                    return file;
                }
                Log.w(TAG, "Unable to create files subdir " + file.getPath());
            }
            return file;
        }
    }

    @Nullable
    public static String getAttributionTag(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getAttributionTag(context);
        }
        return null;
    }

    @NonNull
    public static File getCodeCacheDir(@NonNull Context context) {
        return Build.VERSION.SDK_INT >= 21 ? Api21Impl.getCodeCacheDir(context) : createFilesDir(new File(context.getApplicationInfo().dataDir, "code_cache"));
    }

    @ColorInt
    public static int getColor(@NonNull Context context, @ColorRes int i2) {
        return Build.VERSION.SDK_INT >= 23 ? Api23Impl.getColor(context, i2) : context.getResources().getColor(i2);
    }

    @Nullable
    public static ColorStateList getColorStateList(@NonNull Context context, @ColorRes int i2) {
        return ResourcesCompat.getColorStateList(context.getResources(), i2, context.getTheme());
    }

    @Nullable
    public static File getDataDir(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.getDataDir(context);
        }
        String str = context.getApplicationInfo().dataDir;
        if (str != null) {
            return new File(str);
        }
        return null;
    }

    @Nullable
    public static Drawable getDrawable(@NonNull Context context, @DrawableRes int i2) {
        int i3;
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 21) {
            return Api21Impl.getDrawable(context, i2);
        }
        if (i4 >= 16) {
            return context.getResources().getDrawable(i2);
        }
        synchronized (sLock) {
            if (sTempValue == null) {
                sTempValue = new TypedValue();
            }
            context.getResources().getValue(i2, sTempValue, true);
            i3 = sTempValue.resourceId;
        }
        return context.getResources().getDrawable(i3);
    }

    @NonNull
    public static File[] getExternalCacheDirs(@NonNull Context context) {
        return Build.VERSION.SDK_INT >= 19 ? Api19Impl.getExternalCacheDirs(context) : new File[]{context.getExternalCacheDir()};
    }

    @NonNull
    public static File[] getExternalFilesDirs(@NonNull Context context, @Nullable String str) {
        return Build.VERSION.SDK_INT >= 19 ? Api19Impl.getExternalFilesDirs(context, str) : new File[]{context.getExternalFilesDir(str)};
    }

    @NonNull
    public static Executor getMainExecutor(@NonNull Context context) {
        return Build.VERSION.SDK_INT >= 28 ? Api28Impl.getMainExecutor(context) : ExecutorCompat.create(new Handler(context.getMainLooper()));
    }

    @Nullable
    public static File getNoBackupFilesDir(@NonNull Context context) {
        return Build.VERSION.SDK_INT >= 21 ? Api21Impl.getNoBackupFilesDir(context) : createFilesDir(new File(context.getApplicationInfo().dataDir, "no_backup"));
    }

    @NonNull
    public static File[] getObbDirs(@NonNull Context context) {
        return Build.VERSION.SDK_INT >= 19 ? Api19Impl.getObbDirs(context) : new File[]{context.getObbDir()};
    }

    @Nullable
    public static <T> T getSystemService(@NonNull Context context, @NonNull Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 23) {
            return (T) Api23Impl.getSystemService(context, cls);
        }
        String systemServiceName = getSystemServiceName(context, cls);
        if (systemServiceName != null) {
            return (T) context.getSystemService(systemServiceName);
        }
        return null;
    }

    @Nullable
    public static String getSystemServiceName(@NonNull Context context, @NonNull Class<?> cls) {
        return Build.VERSION.SDK_INT >= 23 ? Api23Impl.getSystemServiceName(context, cls) : LegacyServiceMapHolder.SERVICES.get(cls);
    }

    public static boolean isDeviceProtectedStorage(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.isDeviceProtectedStorage(context);
        }
        return false;
    }

    public static String obtainAndCheckReceiverPermission(Context context) {
        String str = context.getPackageName() + DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION_SUFFIX;
        if (PermissionChecker.checkSelfPermission(context, str) == 0) {
            return str;
        }
        throw new RuntimeException(android.accessibilityservice.c.k("Permission ", str, " is required by your application to receive broadcasts, please add it to your manifest"));
    }

    @Nullable
    public static Intent registerReceiver(@NonNull Context context, @Nullable BroadcastReceiver broadcastReceiver, @NonNull IntentFilter intentFilter, int i2) {
        return registerReceiver(context, broadcastReceiver, intentFilter, null, null, i2);
    }

    public static boolean startActivities(@NonNull Context context, @NonNull Intent[] intentArr) {
        return startActivities(context, intentArr, null);
    }

    public static void startActivity(@NonNull Context context, @NonNull Intent intent, @Nullable Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            Api16Impl.startActivity(context, intent, bundle);
        } else {
            context.startActivity(intent);
        }
    }

    public static void startForegroundService(@NonNull Context context, @NonNull Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.startForegroundService(context, intent);
        } else {
            context.startService(intent);
        }
    }

    @Nullable
    @OptIn(markerClass = {BuildCompat.PrereleaseSdkCheck.class})
    public static Intent registerReceiver(@NonNull Context context, @Nullable BroadcastReceiver broadcastReceiver, @NonNull IntentFilter intentFilter, @Nullable String str, @Nullable Handler handler, int i2) {
        int i3 = i2 & 1;
        if (i3 != 0 && (i2 & 4) != 0) {
            throw new IllegalArgumentException("Cannot specify both RECEIVER_VISIBLE_TO_INSTANT_APPS and RECEIVER_NOT_EXPORTED");
        }
        if (i3 != 0) {
            i2 |= 2;
        }
        int i4 = i2;
        int i5 = i4 & 2;
        if (i5 == 0 && (i4 & 4) == 0) {
            throw new IllegalArgumentException("One of either RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED is required");
        }
        if (i5 != 0 && (i4 & 4) != 0) {
            throw new IllegalArgumentException("Cannot specify both RECEIVER_EXPORTED and RECEIVER_NOT_EXPORTED");
        }
        if (BuildCompat.isAtLeastT()) {
            return Api33Impl.registerReceiver(context, broadcastReceiver, intentFilter, str, handler, i4);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.registerReceiver(context, broadcastReceiver, intentFilter, str, handler, i4);
        }
        return ((i4 & 4) == 0 || str != null) ? context.registerReceiver(broadcastReceiver, intentFilter, str, handler) : context.registerReceiver(broadcastReceiver, intentFilter, obtainAndCheckReceiverPermission(context), handler);
    }

    public static boolean startActivities(@NonNull Context context, @NonNull Intent[] intentArr, @Nullable Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            Api16Impl.startActivities(context, intentArr, bundle);
            return true;
        }
        context.startActivities(intentArr);
        return true;
    }
}
