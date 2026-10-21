package android.content.pm;

import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class LauncherActivityInfo {
    private static final String TAG = "LauncherActivityInfo";
    private ActivityInfo mActivityInfo;
    private ComponentName mComponentName;
    private Context mContext;
    private final PackageManager mPm;
    private UserHandle mUser;

    public LauncherActivityInfo(Context context, ActivityInfo activityInfo, UserHandle userHandle) {
        this(context);
        this.mActivityInfo = activityInfo;
        this.mComponentName = new ComponentName(activityInfo.packageName, activityInfo.name);
        this.mUser = userHandle;
    }

    public int getApplicationFlags() {
        return this.mActivityInfo.applicationInfo.flags;
    }

    public ApplicationInfo getApplicationInfo() {
        return this.mActivityInfo.applicationInfo;
    }

    public Drawable getBadgedIcon(int i2) {
        return this.mPm.getUserBadgedIcon(getIcon(i2), this.mUser);
    }

    public ComponentName getComponentName() {
        return this.mComponentName;
    }

    public long getFirstInstallTime() {
        try {
            return this.mPm.getPackageInfo(this.mActivityInfo.packageName, 8192).firstInstallTime;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0L;
        }
    }

    public Drawable getIcon(int i2) {
        int iconResource = this.mActivityInfo.getIconResource();
        Drawable drawableForDensity = null;
        if (i2 != 0 && iconResource != 0) {
            try {
                drawableForDensity = this.mPm.getResourcesForApplication(this.mActivityInfo.applicationInfo).getDrawableForDensity(iconResource, i2);
                if (drawableForDensity != null && AppCloneUserInfo.containsCloneTag(this.mActivityInfo.packageName)) {
                    if (drawableForDensity instanceof BitmapDrawable) {
                        UserInfo userInfo = UserManager.get(this.mContext).getUserInfo(AppCloneUserInfo.getUserIdFromCloneTag(this.mActivityInfo.packageName, 0));
                        if (userInfo != null) {
                            return this.mPm.getUserBadgedIcon(drawableForDensity, userInfo.getUserHandle());
                        }
                    } else {
                        Log.e(TAG, "Unable to create badged icon for " + this.mActivityInfo);
                    }
                }
            } catch (PackageManager.NameNotFoundException | Resources.NotFoundException unused) {
            }
        }
        return drawableForDensity == null ? this.mActivityInfo.loadIcon(this.mPm) : drawableForDensity;
    }

    public CharSequence getLabel() {
        return this.mActivityInfo.loadLabel(this.mPm);
    }

    public String getName() {
        return this.mActivityInfo.name;
    }

    public UserHandle getUser() {
        return this.mUser;
    }

    public LauncherActivityInfo(Context context) {
        this.mContext = context;
        this.mPm = context.getPackageManager();
    }
}
