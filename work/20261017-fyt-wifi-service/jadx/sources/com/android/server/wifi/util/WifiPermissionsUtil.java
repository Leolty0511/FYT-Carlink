package com.android.server.wifi.util;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.UserInfo;
import android.location.LocationManager;
import android.os.Binder;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.EventLog;
import android.util.Slog;
import com.android.internal.annotations.GuardedBy;
import com.android.server.wifi.WifiInjector;
import com.android.server.wifi.WifiLog;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WifiPermissionsUtil {
    private static final String TAG = "WifiPermissionsUtil";
    private final AppOpsManager mAppOps;
    private final Context mContext;

    @GuardedBy({"mLock"})
    private LocationManager mLocationManager;
    private final Object mLock = new Object();
    private WifiLog mLog;
    private final UserManager mUserManager;
    private final WifiPermissionsWrapper mWifiPermissionsWrapper;

    public WifiPermissionsUtil(WifiPermissionsWrapper wifiPermissionsWrapper, Context context, UserManager userManager, WifiInjector wifiInjector) {
        this.mWifiPermissionsWrapper = wifiPermissionsWrapper;
        this.mContext = context;
        this.mUserManager = userManager;
        this.mAppOps = (AppOpsManager) this.mContext.getSystemService("appops");
        this.mLog = wifiInjector.makeLog(TAG);
    }

    public boolean checkConfigOverridePermission(int uid) {
        try {
            if (this.mWifiPermissionsWrapper.getTopPkgName() != null && this.mWifiPermissionsWrapper.getTopPkgName().contains("com.zjinnova")) {
                return true;
            }
            int permission = this.mWifiPermissionsWrapper.getOverrideWifiConfigPermission(uid);
            return permission == 0;
        } catch (RemoteException e) {
            this.mLog.err("Error checking for permission: %").r(e.getMessage()).flush();
            return false;
        }
    }

    public boolean checkChangePermission(int uid) {
        try {
            int permission = this.mWifiPermissionsWrapper.getChangeWifiConfigPermission(uid);
            return permission == 0;
        } catch (RemoteException e) {
            this.mLog.err("Error checking for permission: %").r(e.getMessage()).flush();
            return false;
        }
    }

    public boolean checkWifiAccessPermission(int uid) {
        try {
            int permission = this.mWifiPermissionsWrapper.getAccessWifiStatePermission(uid);
            return permission == 0;
        } catch (RemoteException e) {
            this.mLog.err("Error checking for permission: %").r(e.getMessage()).flush();
            return false;
        }
    }

    public void enforceLocationPermission(String pkgName, int uid) {
        if (!checkCallersLocationPermission(pkgName, uid, true)) {
            throw new SecurityException("UID " + uid + " does not have Coarse/Fine Location permission");
        }
    }

    public boolean isTargetSdkLessThan(String packageName, int versionCode) {
        long ident = Binder.clearCallingIdentity();
        try {
            if (this.mContext.getPackageManager().getApplicationInfo(packageName, 0).targetSdkVersion < versionCode) {
                Binder.restoreCallingIdentity(ident);
                return true;
            }
        } catch (PackageManager.NameNotFoundException e) {
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
        Binder.restoreCallingIdentity(ident);
        return false;
    }

    public boolean checkCallersLocationPermission(String pkgName, int uid, boolean coarseForTargetSdkLessThanQ) {
        boolean isTargetSdkLessThanQ = isTargetSdkLessThan(pkgName, 29);
        String permissionType = "android.permission.ACCESS_FINE_LOCATION";
        if (coarseForTargetSdkLessThanQ && isTargetSdkLessThanQ) {
            permissionType = "android.permission.ACCESS_COARSE_LOCATION";
        }
        if (this.mWifiPermissionsWrapper.getUidPermission(permissionType, uid) == -1) {
            return false;
        }
        boolean isAppOpAllowed = noteAppOpAllowed(1, pkgName, uid);
        if (!isAppOpAllowed && coarseForTargetSdkLessThanQ && isTargetSdkLessThanQ) {
            return noteAppOpAllowed(0, pkgName, uid);
        }
        return isAppOpAllowed;
    }

    public void enforceFineLocationPermission(String pkgName, int uid) {
        if (!checkCallersFineLocationPermission(pkgName, uid, false)) {
            throw new SecurityException("UID " + uid + " does not have Fine Location permission");
        }
    }

    private boolean checkCallersFineLocationPermission(String pkgName, int uid, boolean hideFromAppOps) {
        if (this.mWifiPermissionsWrapper.getUidPermission("android.permission.ACCESS_FINE_LOCATION", uid) == -1) {
            return false;
        }
        if (hideFromAppOps) {
            if (!checkAppOpAllowed(1, pkgName, uid)) {
                return false;
            }
        } else if (!noteAppOpAllowed(1, pkgName, uid)) {
            return false;
        }
        return true;
    }

    private boolean checkCallersHardwareLocationPermission(int uid) {
        return this.mWifiPermissionsWrapper.getUidPermission("android.permission.LOCATION_HARDWARE", uid) == 0;
    }

    public void enforceCanAccessScanResults(String pkgName, int uid) throws SecurityException {
        checkPackage(uid, pkgName);
        if (checkNetworkSettingsPermission(uid) || checkNetworkSetupWizardPermission(uid) || checkNetworkManagedProvisioningPermission(uid) || checkNetworkStackPermission(uid) || checkMainlineNetworkStackPermission(uid)) {
            return;
        }
        if (!isLocationModeEnabled()) {
            throw new SecurityException("Location mode is disabled for the device");
        }
        boolean canCallingUidAccessLocation = checkCallerHasPeersMacAddressPermission(uid);
        boolean canAppPackageUseLocation = checkCallersLocationPermission(pkgName, uid, true);
        if (!canCallingUidAccessLocation && !canAppPackageUseLocation) {
            throw new SecurityException("UID " + uid + " has no location permission");
        }
        if (!isScanAllowedbyApps(pkgName, uid)) {
            throw new SecurityException("UID " + uid + " has no wifi scan permission");
        }
        if (!isCurrentProfile(uid) && !checkInteractAcrossUsersFull(uid)) {
            throw new SecurityException("UID " + uid + " profile not permitted");
        }
    }

    public void enforceCanAccessScanResultsForWifiScanner(String pkgName, int uid, boolean ignoreLocationSettings, boolean hideFromAppOps) throws SecurityException {
        checkPackage(uid, pkgName);
        if (!isLocationModeEnabled()) {
            if (ignoreLocationSettings) {
                this.mLog.w("Request from " + pkgName + " violated location settings");
            } else {
                throw new SecurityException("Location mode is disabled for the device");
            }
        }
        if (!checkCallersFineLocationPermission(pkgName, uid, hideFromAppOps) || !checkCallersHardwareLocationPermission(uid)) {
            throw new SecurityException("UID " + uid + " has no location permission");
        }
        if (!isScanAllowedbyApps(pkgName, uid)) {
            throw new SecurityException("UID " + uid + " has no wifi scan permission");
        }
    }

    public boolean checkCanAccessWifiDirect(String pkgName, int uid, boolean needLocationModeEnabled) {
        try {
            checkPackage(uid, pkgName);
            if (checkNetworkSettingsPermission(uid)) {
                return true;
            }
            if (needLocationModeEnabled && !isLocationModeEnabled()) {
                Slog.e(TAG, "Location mode is disabled for the device");
                return false;
            }
            if (checkCallersLocationPermission(pkgName, uid, false)) {
                return true;
            }
            Slog.e(TAG, "UID " + uid + " has no location permission");
            return false;
        } catch (SecurityException se) {
            Slog.e(TAG, "Package check exception - " + se);
            return false;
        }
    }

    public void checkPackage(int uid, String pkgName) throws SecurityException {
        if (pkgName == null) {
            throw new SecurityException("Checking UID " + uid + " but Package Name is Null");
        }
        this.mAppOps.checkPackage(uid, pkgName);
    }

    private boolean checkCallerHasPeersMacAddressPermission(int uid) {
        return this.mWifiPermissionsWrapper.getUidPermission("android.permission.PEERS_MAC_ADDRESS", uid) == 0;
    }

    private boolean isScanAllowedbyApps(String pkgName, int uid) {
        return noteAppOpAllowed(10, pkgName, uid);
    }

    private boolean checkInteractAcrossUsersFull(int uid) {
        return this.mWifiPermissionsWrapper.getUidPermission("android.permission.INTERACT_ACROSS_USERS_FULL", uid) == 0;
    }

    private boolean isCurrentProfile(int uid) {
        int currentUser = this.mWifiPermissionsWrapper.getCurrentUser();
        int callingUserId = this.mWifiPermissionsWrapper.getCallingUserId(uid);
        if (callingUserId == currentUser) {
            return true;
        }
        List<UserInfo> userProfiles = this.mUserManager.getProfiles(currentUser);
        for (UserInfo user : userProfiles) {
            if (user.id == callingUserId) {
                return true;
            }
        }
        return false;
    }

    private boolean noteAppOpAllowed(int op, String pkgName, int uid) {
        return this.mAppOps.noteOp(op, uid, pkgName) == 0;
    }

    private boolean checkAppOpAllowed(int op, String pkgName, int uid) {
        return this.mAppOps.checkOp(op, uid, pkgName) == 0;
    }

    private boolean retrieveLocationManagerIfNecessary() {
        synchronized (this.mLock) {
            if (this.mLocationManager == null) {
                this.mLocationManager = (LocationManager) this.mContext.getSystemService("location");
            }
        }
        return this.mLocationManager != null;
    }

    public boolean isLocationModeEnabled() {
        if (retrieveLocationManagerIfNecessary()) {
            return this.mLocationManager.isLocationEnabledForUser(UserHandle.of(this.mWifiPermissionsWrapper.getCurrentUser()));
        }
        return false;
    }

    public boolean checkNetworkSettingsPermission(int uid) {
        return this.mWifiPermissionsWrapper.getUidPermission("android.permission.NETWORK_SETTINGS", uid) == 0;
    }

    public boolean checkLocalMacAddressPermission(int uid) {
        return this.mWifiPermissionsWrapper.getUidPermission("android.permission.LOCAL_MAC_ADDRESS", uid) == 0;
    }

    public boolean checkNetworkSetupWizardPermission(int uid) {
        return this.mWifiPermissionsWrapper.getUidPermission("android.permission.NETWORK_SETUP_WIZARD", uid) == 0;
    }

    public boolean checkNetworkStackPermission(int uid) {
        return this.mWifiPermissionsWrapper.getUidPermission("android.permission.NETWORK_STACK", uid) == 0;
    }

    public boolean checkMainlineNetworkStackPermission(int uid) {
        return this.mWifiPermissionsWrapper.getUidPermission("android.permission.MAINLINE_NETWORK_STACK", uid) == 0;
    }

    public boolean checkNetworkManagedProvisioningPermission(int uid) {
        return this.mWifiPermissionsWrapper.getUidPermission("android.permission.NETWORK_MANAGED_PROVISIONING", uid) == 0;
    }

    public boolean checkNetworkCarrierProvisioningPermission(int uid) {
        return this.mWifiPermissionsWrapper.getUidPermission("android.permission.NETWORK_CARRIER_PROVISIONING", uid) == 0;
    }

    public boolean checkSystemAlertWindowPermission(int callingUid, String callingPackage) {
        int mode = this.mAppOps.noteOp(24, callingUid, callingPackage);
        if (mode == 3) {
            return this.mWifiPermissionsWrapper.getUidPermission("android.permission.SYSTEM_ALERT_WINDOW", callingUid) == 0;
        }
        return mode == 0;
    }

    public boolean doesUidBelongToCurrentUser(int uid) {
        if (uid == 1000 || checkNetworkSettingsPermission(uid)) {
            return true;
        }
        boolean isCurrentProfile = isCurrentProfile(uid);
        if (!isCurrentProfile) {
            EventLog.writeEvent(1397638484, "174749461", -1, "Non foreground user trying to modify wifi configuration");
        }
        return isCurrentProfile;
    }
}
