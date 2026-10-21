package android.content.pm;

import android.Manifest;
import android.app.AppGlobals;
import android.content.Intent;
import android.opengl.GLES10;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.ArraySet;
import android.view.inputmethod.InputMethod;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AppsQueryHelper {
    public static int GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM = 2;
    public static int GET_IMES = 4;
    public static int GET_NON_LAUNCHABLE_APPS = 1;
    public static int GET_REQUIRED_FOR_SYSTEM_USER = 8;
    private List<ApplicationInfo> mAllApps;
    private final IPackageManager mPackageManager;

    public AppsQueryHelper(IPackageManager iPackageManager) {
        this.mPackageManager = iPackageManager;
    }

    public List<ApplicationInfo> getAllApps(int i2) {
        try {
            return this.mPackageManager.getInstalledApplications(GLES10.GL_TEXTURE_ENV_MODE, i2).getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<PackageInfo> getPackagesHoldingPermission(String str, int i2) {
        try {
            return this.mPackageManager.getPackagesHoldingPermissions(new String[]{str}, 0, i2).getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<String> queryApps(int i2, boolean z2, UserHandle userHandle) {
        int i3 = 0;
        boolean z3 = (GET_NON_LAUNCHABLE_APPS & i2) > 0;
        boolean z4 = (GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM & i2) > 0;
        boolean z5 = (GET_IMES & i2) > 0;
        boolean z6 = (GET_REQUIRED_FOR_SYSTEM_USER & i2) > 0;
        if (this.mAllApps == null) {
            this.mAllApps = getAllApps(userHandle.getIdentifier());
        }
        ArrayList arrayList = new ArrayList();
        if (i2 == 0) {
            int size = this.mAllApps.size();
            while (i3 < size) {
                ApplicationInfo applicationInfo = this.mAllApps.get(i3);
                if (!z2 || applicationInfo.isSystemApp()) {
                    arrayList.add(applicationInfo.packageName);
                }
                i3++;
            }
            return arrayList;
        }
        if (z3) {
            List<ResolveInfo> listQueryIntentActivitiesAsUser = queryIntentActivitiesAsUser(new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER), userHandle.getIdentifier());
            ArraySet arraySet = new ArraySet();
            int size2 = listQueryIntentActivitiesAsUser.size();
            for (int i4 = 0; i4 < size2; i4++) {
                arraySet.add(listQueryIntentActivitiesAsUser.get(i4).activityInfo.packageName);
            }
            int size3 = this.mAllApps.size();
            for (int i5 = 0; i5 < size3; i5++) {
                ApplicationInfo applicationInfo2 = this.mAllApps.get(i5);
                if (!z2 || applicationInfo2.isSystemApp()) {
                    String str = applicationInfo2.packageName;
                    if (!arraySet.contains(str)) {
                        arrayList.add(str);
                    }
                }
            }
        }
        if (z4) {
            List<PackageInfo> packagesHoldingPermission = getPackagesHoldingPermission(Manifest.permission.INTERACT_ACROSS_USERS, userHandle.getIdentifier());
            int size4 = packagesHoldingPermission.size();
            for (int i6 = 0; i6 < size4; i6++) {
                PackageInfo packageInfo = packagesHoldingPermission.get(i6);
                if ((!z2 || packageInfo.applicationInfo.isSystemApp()) && !arrayList.contains(packageInfo.packageName)) {
                    arrayList.add(packageInfo.packageName);
                }
            }
        }
        if (z5) {
            List<ResolveInfo> listQueryIntentServicesAsUser = queryIntentServicesAsUser(new Intent(InputMethod.SERVICE_INTERFACE), userHandle.getIdentifier());
            int size5 = listQueryIntentServicesAsUser.size();
            for (int i7 = 0; i7 < size5; i7++) {
                ServiceInfo serviceInfo = listQueryIntentServicesAsUser.get(i7).serviceInfo;
                if ((!z2 || serviceInfo.applicationInfo.isSystemApp()) && !arrayList.contains(serviceInfo.packageName)) {
                    arrayList.add(serviceInfo.packageName);
                }
            }
        }
        if (z6) {
            int size6 = this.mAllApps.size();
            while (i3 < size6) {
                ApplicationInfo applicationInfo3 = this.mAllApps.get(i3);
                if ((!z2 || applicationInfo3.isSystemApp()) && applicationInfo3.isRequiredForSystemUser()) {
                    arrayList.add(applicationInfo3.packageName);
                }
                i3++;
            }
        }
        return arrayList;
    }

    public List<ResolveInfo> queryIntentActivitiesAsUser(Intent intent, int i2) {
        try {
            return this.mPackageManager.queryIntentActivities(intent, null, 795136, i2).getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<ResolveInfo> queryIntentServicesAsUser(Intent intent, int i2) {
        try {
            return this.mPackageManager.queryIntentServices(intent, null, 819328, i2).getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public AppsQueryHelper() {
        this(AppGlobals.getPackageManager());
    }
}
