package android.content.pm;

import android.os.Binder;
import android.os.UserHandle;
import android.os.UserManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AppCloneUserInfo extends UserInfo {
    public static final String CLONE_TAG = "-clone-";
    public static final int FLAG_APP_CLONE = Integer.MIN_VALUE;
    public static final int MAX_APP_CLONE_USER_ID = 930;
    public static final int MIN_APP_CLONE_USER_ID = 920;

    public AppCloneUserInfo(UserInfo userInfo) {
        super(userInfo);
    }

    public static String addCloneTag(String str, int i2) {
        return str + CLONE_TAG + i2;
    }

    public static int adjustAppCloneUserId(ApplicationInfo applicationInfo, int i2) {
        return adjustAppCloneUserId(Binder.getCallingUid(), applicationInfo, i2);
    }

    public static boolean containsCloneTag(String str) {
        return str != null && str.contains(CLONE_TAG);
    }

    public static List<UserInfo> getProfilesForAppclone(UserManager userManager) {
        ArrayList arrayList = new ArrayList();
        for (UserInfo userInfo : userManager.getProfiles(0)) {
            if (userInfo != null && isAppCloneUserId(userInfo.id)) {
                arrayList.add(userInfo);
            }
        }
        return arrayList;
    }

    public static int getUserIdFromCloneTag(String str, int i2) {
        int iLastIndexOf;
        if (str != null && (iLastIndexOf = str.lastIndexOf(CLONE_TAG)) >= 0) {
            try {
                return Integer.parseInt(str.substring(iLastIndexOf + 7, str.length()));
            } catch (NumberFormatException e2) {
                e2.printStackTrace();
            }
        }
        return i2;
    }

    public static boolean isAppCloneUid(int i2) {
        return isAppCloneUserId(UserHandle.getUserId(i2));
    }

    public static boolean isAppCloneUserFlag(int i2) {
        return (i2 & Integer.MIN_VALUE) == Integer.MIN_VALUE;
    }

    public static boolean isAppCloneUserId(int i2) {
        return i2 > 920 && i2 < 930;
    }

    public static boolean isCrossingAppCloneUser(int i2, int i3) {
        return (i2 == 0 && isAppCloneUserId(i3)) || (i3 == 0 && isAppCloneUserId(i2));
    }

    public static String removeCloneTag(String str) {
        int iIndexOf;
        return (str == null || (iIndexOf = str.indexOf(CLONE_TAG)) < 0) ? str : str.substring(0, iIndexOf);
    }

    public boolean isAppClone() {
        return isAppCloneUserFlag(this.flags);
    }

    public static int adjustAppCloneUserId(int i2, ApplicationInfo applicationInfo, int i3) {
        int userId = UserHandle.getUserId(i2);
        if (isAppCloneUserId(userId) && !UserHandle.isSameApp(applicationInfo.uid, i2) && i3 == userId) {
            return 0;
        }
        return i3;
    }
}
