package com.android.internal.telephony;

import android.content.ContentResolver;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.res.Resources;
import android.os.RemoteException;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.ArrayMap;
import android.util.Slog;
import com.android.internal.R;
import com.android.server.SystemConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class CarrierAppUtils {
    private static final boolean DEBUG = false;
    private static final String TAG = "CarrierAppUtils";

    private CarrierAppUtils() {
    }

    public static synchronized void disableCarrierAppsUntilPrivileged(String str, IPackageManager iPackageManager, TelephonyManager telephonyManager, ContentResolver contentResolver, int i2) {
        disableCarrierAppsUntilPrivileged(str, iPackageManager, telephonyManager, contentResolver, i2, Resources.getSystem().getStringArray(R.array.config_disabledUntilUsedPreinstalledCarrierApps), SystemConfig.getInstance().getDisabledUntilUsedPreinstalledCarrierAssociatedApps());
    }

    private static ApplicationInfo getApplicationInfoIfSystemApp(IPackageManager iPackageManager, int i2, String str) {
        try {
            ApplicationInfo applicationInfo = iPackageManager.getApplicationInfo(str, 32768, i2);
            if (applicationInfo == null || !applicationInfo.isSystemApp()) {
                return null;
            }
            return applicationInfo;
        } catch (RemoteException e2) {
            Slog.w(TAG, "Could not reach PackageManager", e2);
            return null;
        }
    }

    public static List<ApplicationInfo> getDefaultCarrierAppCandidates(IPackageManager iPackageManager, int i2) {
        return getDefaultCarrierAppCandidatesHelper(iPackageManager, i2, Resources.getSystem().getStringArray(R.array.config_disabledUntilUsedPreinstalledCarrierApps));
    }

    private static List<ApplicationInfo> getDefaultCarrierAppCandidatesHelper(IPackageManager iPackageManager, int i2, String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            ApplicationInfo applicationInfoIfSystemApp = getApplicationInfoIfSystemApp(iPackageManager, i2, str);
            if (applicationInfoIfSystemApp != null) {
                arrayList.add(applicationInfoIfSystemApp);
            }
        }
        return arrayList;
    }

    public static List<ApplicationInfo> getDefaultCarrierApps(IPackageManager iPackageManager, TelephonyManager telephonyManager, int i2) {
        List<ApplicationInfo> defaultCarrierAppCandidates = getDefaultCarrierAppCandidates(iPackageManager, i2);
        if (defaultCarrierAppCandidates == null || defaultCarrierAppCandidates.isEmpty()) {
            return null;
        }
        for (int size = defaultCarrierAppCandidates.size() - 1; size >= 0; size--) {
            if (!(telephonyManager.checkCarrierPrivilegesForPackageAnyPhone(defaultCarrierAppCandidates.get(size).packageName) == 1)) {
                defaultCarrierAppCandidates.remove(size);
            }
        }
        return defaultCarrierAppCandidates;
    }

    private static Map<String, List<ApplicationInfo>> getDefaultCarrierAssociatedAppsHelper(IPackageManager iPackageManager, int i2, ArrayMap<String, List<String>> arrayMap) {
        int size = arrayMap.size();
        ArrayMap arrayMap2 = new ArrayMap(size);
        for (int i3 = 0; i3 < size; i3++) {
            String strKeyAt = arrayMap.keyAt(i3);
            List<String> listValueAt = arrayMap.valueAt(i3);
            for (int i4 = 0; i4 < listValueAt.size(); i4++) {
                ApplicationInfo applicationInfoIfSystemApp = getApplicationInfoIfSystemApp(iPackageManager, i2, listValueAt.get(i4));
                if (applicationInfoIfSystemApp != null && !applicationInfoIfSystemApp.isUpdatedSystemApp()) {
                    List arrayList = (List) arrayMap2.get(strKeyAt);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        arrayMap2.put(strKeyAt, arrayList);
                    }
                    arrayList.add(applicationInfoIfSystemApp);
                }
            }
        }
        return arrayMap2;
    }

    public static synchronized void disableCarrierAppsUntilPrivileged(String str, IPackageManager iPackageManager, ContentResolver contentResolver, int i2) {
        disableCarrierAppsUntilPrivileged(str, iPackageManager, null, contentResolver, i2, Resources.getSystem().getStringArray(R.array.config_disabledUntilUsedPreinstalledCarrierApps), SystemConfig.getInstance().getDisabledUntilUsedPreinstalledCarrierAssociatedApps());
    }

    public static void disableCarrierAppsUntilPrivileged(String str, IPackageManager iPackageManager, TelephonyManager telephonyManager, ContentResolver contentResolver, int i2, String[] strArr, ArrayMap<String, List<String>> arrayMap) {
        List<ApplicationInfo> list;
        String str2;
        String str3;
        int i3;
        List<ApplicationInfo> defaultCarrierAppCandidatesHelper = getDefaultCarrierAppCandidatesHelper(iPackageManager, i2, strArr);
        if (defaultCarrierAppCandidatesHelper == null || defaultCarrierAppCandidatesHelper.isEmpty()) {
            return;
        }
        Map<String, List<ApplicationInfo>> defaultCarrierAssociatedAppsHelper = getDefaultCarrierAssociatedAppsHelper(iPackageManager, i2, arrayMap);
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        int i5 = 1;
        boolean z2 = Settings.Secure.getIntForUser(contentResolver, Settings.Secure.CARRIER_APPS_HANDLED, 0, i2) == 1;
        try {
            for (ApplicationInfo applicationInfo : defaultCarrierAppCandidatesHelper) {
                String str4 = applicationInfo.packageName;
                String str5 = "Update associated state(";
                if (((telephonyManager == 0 || telephonyManager.checkCarrierPrivilegesForPackageAnyPhone(str4) != i5) ? i4 : i5) != 0) {
                    if (!applicationInfo.isUpdatedSystemApp() && ((i3 = applicationInfo.enabledSetting) == 0 || i3 == 4)) {
                        Slog.i(TAG, "Update state(" + str4 + "): ENABLED for user " + i2);
                        iPackageManager.setApplicationEnabledSetting(str4, 1, 1, i2, str);
                    }
                    List<ApplicationInfo> list2 = defaultCarrierAssociatedAppsHelper.get(str4);
                    if (list2 != null) {
                        for (ApplicationInfo applicationInfo2 : list2) {
                            int i6 = applicationInfo2.enabledSetting;
                            if (i6 == 0 || i6 == 4) {
                                StringBuilder sb = new StringBuilder();
                                String str6 = str5;
                                sb.append(str6);
                                sb.append(applicationInfo2.packageName);
                                sb.append("): ENABLED for user ");
                                sb.append(i2);
                                Slog.i(TAG, sb.toString());
                                str3 = str6;
                                iPackageManager.setApplicationEnabledSetting(applicationInfo2.packageName, 1, 1, i2, str);
                            } else {
                                str3 = str5;
                            }
                            str5 = str3;
                        }
                    }
                    arrayList.add(applicationInfo.packageName);
                } else {
                    String str7 = "Update associated state(";
                    if (!applicationInfo.isUpdatedSystemApp() && applicationInfo.enabledSetting == 0) {
                        Slog.i(TAG, "Update state(" + str4 + "): DISABLED_UNTIL_USED for user " + i2);
                        iPackageManager.setApplicationEnabledSetting(str4, 4, 0, i2, str);
                    }
                    if (!z2 && (list = defaultCarrierAssociatedAppsHelper.get(str4)) != null) {
                        for (ApplicationInfo applicationInfo3 : list) {
                            if (applicationInfo3.enabledSetting == 0) {
                                StringBuilder sb2 = new StringBuilder();
                                str2 = str7;
                                sb2.append(str2);
                                sb2.append(applicationInfo3.packageName);
                                sb2.append("): DISABLED_UNTIL_USED for user ");
                                sb2.append(i2);
                                Slog.i(TAG, sb2.toString());
                                iPackageManager.setApplicationEnabledSetting(applicationInfo3.packageName, 4, 0, i2, str);
                            } else {
                                str2 = str7;
                            }
                            str7 = str2;
                        }
                    }
                }
                i4 = 0;
                i5 = 1;
            }
            if (!z2) {
                Settings.Secure.putIntForUser(contentResolver, Settings.Secure.CARRIER_APPS_HANDLED, 1, i2);
            }
            if (arrayList.isEmpty()) {
                return;
            }
            String[] strArr2 = new String[arrayList.size()];
            arrayList.toArray(strArr2);
            iPackageManager.grantDefaultPermissionsToEnabledCarrierApps(strArr2, i2);
        } catch (RemoteException e2) {
            Slog.w(TAG, "Could not reach PackageManager", e2);
        }
    }
}
