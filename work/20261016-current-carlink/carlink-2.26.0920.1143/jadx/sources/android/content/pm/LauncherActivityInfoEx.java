package android.content.pm;

import android.content.Context;
import android.os.UserHandle;
import android.os.UserManager;
import com.android.internal.content.NativeLibraryHelper;

/* JADX INFO: loaded from: classes.dex */
public class LauncherActivityInfoEx extends LauncherActivityInfo {
    private Context mContext;
    private final PackageManager mPm;
    private ActivityInfo mResolveInfo;
    private UserManager mUserManager;

    public LauncherActivityInfoEx(Context context, ActivityInfo activityInfo, UserHandle userHandle) {
        super(context, activityInfo, userHandle);
        this.mContext = context;
        this.mResolveInfo = activityInfo;
        this.mPm = context.getPackageManager();
    }

    @Override // android.content.pm.LauncherActivityInfo
    public CharSequence getLabel() {
        UserInfo userIfProfile = getUserIfProfile(getUser().getIdentifier());
        if (userIfProfile != null) {
            AppCloneUserInfo appCloneUserInfo = new AppCloneUserInfo(userIfProfile);
            if (appCloneUserInfo.isAppClone()) {
                return appCloneUserInfo.name + NativeLibraryHelper.CLEAR_ABI_OVERRIDE + ((Object) this.mResolveInfo.loadLabel(this.mPm));
            }
        }
        return this.mResolveInfo.loadLabel(this.mPm);
    }

    public UserInfo getUserIfProfile(int i2) {
        for (UserInfo userInfo : getUserManager().getProfiles(UserHandle.myUserId())) {
            if (userInfo.id == i2) {
                return userInfo;
            }
        }
        return null;
    }

    public UserManager getUserManager() {
        if (this.mUserManager == null) {
            this.mUserManager = UserManager.get(this.mContext);
        }
        return this.mUserManager;
    }
}
