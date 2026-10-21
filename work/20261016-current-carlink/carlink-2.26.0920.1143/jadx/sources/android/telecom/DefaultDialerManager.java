package android.telecom;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultDialerManager {
    private static final String TAG = "DefaultDialerManager";

    private static List<String> filterByIntent(Context context, List<String> list, Intent intent, int i2) {
        if (list == null || list.isEmpty()) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        List<ResolveInfo> listQueryIntentActivitiesAsUser = context.getPackageManager().queryIntentActivitiesAsUser(intent, 0, i2);
        int size = listQueryIntentActivitiesAsUser.size();
        for (int i3 = 0; i3 < size; i3++) {
            ActivityInfo activityInfo = listQueryIntentActivitiesAsUser.get(i3).activityInfo;
            if (activityInfo != null && list.contains(activityInfo.packageName) && !arrayList.contains(activityInfo.packageName)) {
                arrayList.add(activityInfo.packageName);
            }
        }
        return arrayList;
    }

    public static String getDefaultDialerApplication(Context context) {
        return getDefaultDialerApplication(context, context.getUserId());
    }

    public static List<String> getInstalledDialerApplications(Context context, int i2) {
        List<ResolveInfo> listQueryIntentActivitiesAsUser = context.getPackageManager().queryIntentActivitiesAsUser(new Intent(Intent.ACTION_DIAL), 0, i2);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : listQueryIntentActivitiesAsUser) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (activityInfo != null && !arrayList.contains(activityInfo.packageName) && resolveInfo.targetUserId == -2) {
                arrayList.add(activityInfo.packageName);
            }
        }
        Intent intent = new Intent(Intent.ACTION_DIAL);
        intent.setData(Uri.fromParts(PhoneAccount.SCHEME_TEL, "", null));
        return filterByIntent(context, arrayList, intent, i2);
    }

    private static TelecomManager getTelecomManager(Context context) {
        return (TelecomManager) context.getSystemService(Context.TELECOM_SERVICE);
    }

    public static boolean isDefaultOrSystemDialer(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        TelecomManager telecomManager = getTelecomManager(context);
        return str.equals(telecomManager.getDefaultDialerPackage()) || str.equals(telecomManager.getSystemDialerPackage());
    }

    public static boolean setDefaultDialerApplication(Context context, String str) {
        return setDefaultDialerApplication(context, str, ActivityManager.getCurrentUser());
    }

    public static String getDefaultDialerApplication(Context context, int i2) {
        String stringForUser = Settings.Secure.getStringForUser(context.getContentResolver(), Settings.Secure.DIALER_DEFAULT_APPLICATION, i2);
        List<String> installedDialerApplications = getInstalledDialerApplications(context, i2);
        if (installedDialerApplications.contains(stringForUser)) {
            return stringForUser;
        }
        String systemDialerPackage = getTelecomManager(context).getSystemDialerPackage();
        if (!TextUtils.isEmpty(systemDialerPackage) && installedDialerApplications.contains(systemDialerPackage)) {
            return systemDialerPackage;
        }
        return null;
    }

    public static boolean setDefaultDialerApplication(Context context, String str, int i2) {
        String stringForUser = Settings.Secure.getStringForUser(context.getContentResolver(), Settings.Secure.DIALER_DEFAULT_APPLICATION, i2);
        if ((str != null && stringForUser != null && str.equals(stringForUser)) || !getInstalledDialerApplications(context).contains(str)) {
            return false;
        }
        Settings.Secure.putStringForUser(context.getContentResolver(), Settings.Secure.DIALER_DEFAULT_APPLICATION, str, i2);
        return true;
    }

    public static List<String> getInstalledDialerApplications(Context context) {
        return getInstalledDialerApplications(context, Process.myUserHandle().getIdentifier());
    }
}
