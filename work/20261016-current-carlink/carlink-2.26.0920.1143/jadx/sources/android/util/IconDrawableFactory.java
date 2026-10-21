package android.util;

import android.content.Context;
import android.content.pm.AppCloneUserInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.os.UserManager;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class IconDrawableFactory {
    public static final int[] CORP_BADGE_COLORS = {R.color.profile_badge_1, R.color.profile_badge_2, R.color.profile_badge_3};
    protected final Context mContext;
    protected final boolean mEmbedShadow;
    protected final LauncherIcons mLauncherIcons;
    protected final PackageManager mPm;
    protected final UserManager mUm;

    private IconDrawableFactory(Context context, boolean z2) {
        this.mContext = context;
        this.mPm = context.getPackageManager();
        this.mUm = (UserManager) context.getSystemService(UserManager.class);
        this.mLauncherIcons = new LauncherIcons(context);
        this.mEmbedShadow = z2;
    }

    public static int getUserBadgeColor(UserManager userManager, int i2) {
        int managedProfileBadge = userManager.getManagedProfileBadge(i2);
        if (managedProfileBadge < 0) {
            managedProfileBadge = 0;
        }
        int[] iArr = CORP_BADGE_COLORS;
        return Resources.getSystem().getColor(iArr[managedProfileBadge % iArr.length], null);
    }

    public static IconDrawableFactory newInstance(Context context) {
        return new IconDrawableFactory(context, true);
    }

    public Drawable getBadgedIcon(ApplicationInfo applicationInfo) {
        return getBadgedIcon(applicationInfo, UserHandle.getUserId(applicationInfo.uid));
    }

    public Drawable getShadowedIcon(Drawable drawable) {
        return this.mLauncherIcons.wrapIconDrawableWithShadow(drawable);
    }

    public boolean needsBadging(ApplicationInfo applicationInfo, int i2) {
        return applicationInfo.isInstantApp() || this.mUm.isManagedProfile(i2);
    }

    public static IconDrawableFactory newInstance(Context context, boolean z2) {
        return new IconDrawableFactory(context, z2);
    }

    public Drawable getBadgedIcon(ApplicationInfo applicationInfo, int i2) {
        return getBadgedIcon(applicationInfo, applicationInfo, i2);
    }

    public Drawable getBadgedIcon(PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i2) {
        Drawable drawableLoadUnbadgedItemIcon = this.mPm.loadUnbadgedItemIcon(packageItemInfo, applicationInfo);
        if (!this.mEmbedShadow && !needsBadging(applicationInfo, i2)) {
            return drawableLoadUnbadgedItemIcon;
        }
        if (AppCloneUserInfo.isAppCloneUserId(i2)) {
            drawableLoadUnbadgedItemIcon = this.mPm.getUserBadgedIcon(drawableLoadUnbadgedItemIcon, new UserHandle(UserHandle.getUserId(applicationInfo.uid)));
        }
        Drawable shadowedIcon = getShadowedIcon(drawableLoadUnbadgedItemIcon);
        if (applicationInfo.isInstantApp()) {
            shadowedIcon = this.mLauncherIcons.getBadgedDrawable(shadowedIcon, R.drawable.ic_instant_icon_badge_bolt, Resources.getSystem().getColor(R.color.instant_app_badge, null));
        }
        return this.mUm.isManagedProfile(i2) ? this.mLauncherIcons.getBadgedDrawable(shadowedIcon, R.drawable.ic_corp_icon_badge_case, getUserBadgeColor(this.mUm, i2)) : shadowedIcon;
    }
}
