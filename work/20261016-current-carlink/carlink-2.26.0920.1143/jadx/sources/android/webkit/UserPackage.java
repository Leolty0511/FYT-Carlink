package android.webkit;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.UserInfo;
import android.os.UserManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class UserPackage {
    private final PackageInfo mPackageInfo;
    private final UserInfo mUserInfo;

    public UserPackage(UserInfo userInfo, PackageInfo packageInfo) {
        this.mUserInfo = userInfo;
        this.mPackageInfo = packageInfo;
    }

    private static List<UserInfo> getAllUsers(Context context) {
        return ((UserManager) context.getSystemService("user")).getUsers(false);
    }

    public static List<UserPackage> getPackageInfosAllUsers(Context context, String str, int i2) {
        PackageInfo packageInfoAsUser;
        List<UserInfo> allUsers = getAllUsers(context);
        ArrayList arrayList = new ArrayList(allUsers.size());
        for (UserInfo userInfo : allUsers) {
            try {
                packageInfoAsUser = context.getPackageManager().getPackageInfoAsUser(str, i2, userInfo.id);
            } catch (PackageManager.NameNotFoundException unused) {
                packageInfoAsUser = null;
            }
            arrayList.add(new UserPackage(userInfo, packageInfoAsUser));
        }
        return arrayList;
    }

    public static boolean hasCorrectTargetSdkVersion(PackageInfo packageInfo) {
        return true;
    }

    public PackageInfo getPackageInfo() {
        return this.mPackageInfo;
    }

    public UserInfo getUserInfo() {
        return this.mUserInfo;
    }

    public boolean isEnabledPackage() {
        PackageInfo packageInfo = this.mPackageInfo;
        if (packageInfo == null) {
            return false;
        }
        return packageInfo.applicationInfo.enabled;
    }

    public boolean isInstalledPackage() {
        PackageInfo packageInfo = this.mPackageInfo;
        if (packageInfo == null) {
            return false;
        }
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        return (applicationInfo.flags & 8388608) != 0 && (applicationInfo.privateFlags & 1) == 0;
    }
}
