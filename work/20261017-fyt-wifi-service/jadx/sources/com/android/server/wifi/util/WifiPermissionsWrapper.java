package com.android.server.wifi.util;

import android.app.ActivityManager;
import android.app.AppGlobals;
import android.app.admin.DevicePolicyManagerInternal;
import android.content.Context;
import android.os.RemoteException;
import android.os.UserHandle;
import com.android.server.LocalServices;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WifiPermissionsWrapper {
    private static final String TAG = "WifiPermissionsWrapper";
    private final Context mContext;

    public WifiPermissionsWrapper(Context context) {
        this.mContext = context;
    }

    public int getCurrentUser() {
        return ActivityManager.getCurrentUser();
    }

    public int getCallingUserId(int uid) {
        return UserHandle.getUserId(uid);
    }

    public String getTopPkgName() {
        ActivityManager am = (ActivityManager) this.mContext.getSystemService("activity");
        List<ActivityManager.RunningTaskInfo> tasks = am.getRunningTasks(1);
        if (tasks.isEmpty()) {
            return " ";
        }
        return tasks.get(0).topActivity.getPackageName();
    }

    public int getUidPermission(String permissionType, int uid) {
        return ActivityManager.checkUidPermission(permissionType, uid);
    }

    public DevicePolicyManagerInternal getDevicePolicyManagerInternal() {
        return (DevicePolicyManagerInternal) LocalServices.getService(DevicePolicyManagerInternal.class);
    }

    public int getOverrideWifiConfigPermission(int uid) throws RemoteException {
        return AppGlobals.getPackageManager().checkUidPermission("android.permission.OVERRIDE_WIFI_CONFIG", uid);
    }

    public int getChangeWifiConfigPermission(int uid) throws RemoteException {
        return AppGlobals.getPackageManager().checkUidPermission("android.permission.CHANGE_WIFI_STATE", uid);
    }

    public int getAccessWifiStatePermission(int uid) throws RemoteException {
        return AppGlobals.getPackageManager().checkUidPermission("android.permission.ACCESS_WIFI_STATE", uid);
    }

    public int getLocalMacAddressPermission(int uid) throws RemoteException {
        return AppGlobals.getPackageManager().checkUidPermission("android.permission.LOCAL_MAC_ADDRESS", uid);
    }
}
