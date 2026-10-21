package android.os;

import android.content.pm.UserInfo;
import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public abstract class UserManagerInternal {
    public static final int CAMERA_DISABLED_GLOBALLY = 2;
    public static final int CAMERA_DISABLED_LOCALLY = 1;
    public static final int CAMERA_NOT_DISABLED = 0;

    public interface UserRestrictionsListener {
        void onUserRestrictionsChanged(int i2, Bundle bundle, Bundle bundle2);
    }

    public abstract void addUserRestrictionsListener(UserRestrictionsListener userRestrictionsListener);

    public abstract UserInfo createUserEvenWhenDisallowed(String str, int i2);

    public abstract Bundle getBaseUserRestrictions(int i2);

    public abstract int[] getUserIds();

    public abstract boolean getUserRestriction(int i2, String str);

    public abstract boolean isUserRunning(int i2);

    public abstract boolean isUserUnlocked(int i2);

    public abstract boolean isUserUnlockingOrUnlocked(int i2);

    public abstract void onEphemeralUserStop(int i2);

    public abstract void removeAllUsers();

    public abstract boolean removeUserEvenWhenDisallowed(int i2);

    public abstract void removeUserRestrictionsListener(UserRestrictionsListener userRestrictionsListener);

    public abstract void removeUserState(int i2);

    public abstract void setBaseUserRestrictionsByDpmsForMigration(int i2, Bundle bundle);

    public abstract void setDeviceManaged(boolean z2);

    public abstract void setDevicePolicyUserRestrictions(int i2, Bundle bundle, boolean z2, int i3);

    public abstract void setForceEphemeralUsers(boolean z2);

    public abstract void setUserIcon(int i2, Bitmap bitmap);

    public abstract void setUserManaged(int i2, boolean z2);

    public abstract void setUserState(int i2, int i3);
}
