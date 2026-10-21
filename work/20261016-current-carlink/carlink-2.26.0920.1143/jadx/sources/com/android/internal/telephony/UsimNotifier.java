package com.android.internal.telephony;

import android.app.Activity;
import android.app.AddonManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.android.internal.R;

/* JADX INFO: loaded from: classes3.dex */
public class UsimNotifier {
    private static boolean sEnabled = false;
    private static UsimNotifier sInstance = null;
    private static boolean sLoaded = false;

    public static UsimNotifier getInstance() {
        if (sInstance == null) {
            UsimNotifier usimNotifier = (UsimNotifier) AddonManager.getDefault().getAddon(R.string.addon_usim_notify, UsimNotifier.class);
            sInstance = usimNotifier;
            if (usimNotifier == null) {
                sInstance = new UsimNotifier();
            }
        }
        return sInstance;
    }

    public static boolean isNotifyEnabled(Context context) {
        if (sLoaded) {
            return sEnabled;
        }
        if (context != null) {
            sLoaded = true;
            if (context.getResources() == null) {
                return sEnabled;
            }
            String[] stringArray = context.getResources().getStringArray(R.array.usim_notify_packages);
            if (stringArray != null && stringArray.length > 0) {
                ApplicationInfo applicationInfo = context.getApplicationInfo();
                String str = applicationInfo != null ? applicationInfo.packageName : null;
                for (String str2 : stringArray) {
                    if (str2 != null && str2.equals(str)) {
                        sEnabled = true;
                        break;
                    }
                }
            }
        }
        return sEnabled;
    }

    public void startNotify(Activity activity) {
    }
}
