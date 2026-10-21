package android.appwidget;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ResourceId;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;
import android.util.DisplayMetrics;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes.dex */
public class AppWidgetProviderInfo implements Parcelable {
    public static final Parcelable.Creator<AppWidgetProviderInfo> CREATOR = new Parcelable.Creator<AppWidgetProviderInfo>() { // from class: android.appwidget.AppWidgetProviderInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppWidgetProviderInfo createFromParcel(Parcel parcel) {
            return new AppWidgetProviderInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppWidgetProviderInfo[] newArray(int i2) {
            return new AppWidgetProviderInfo[i2];
        }
    };
    public static final int RESIZE_BOTH = 3;
    public static final int RESIZE_HORIZONTAL = 1;
    public static final int RESIZE_NONE = 0;
    public static final int RESIZE_VERTICAL = 2;
    public static final int WIDGET_CATEGORY_HOME_SCREEN = 1;
    public static final int WIDGET_CATEGORY_KEYGUARD = 2;
    public static final int WIDGET_CATEGORY_SEARCHBOX = 4;
    public int autoAdvanceViewId;
    public ComponentName configure;
    public int icon;
    public int initialKeyguardLayout;
    public int initialLayout;

    @Deprecated
    public String label;
    public int minHeight;
    public int minResizeHeight;
    public int minResizeWidth;
    public int minWidth;
    public int previewImage;
    public ComponentName provider;
    public ActivityInfo providerInfo;
    public int resizeMode;
    public int updatePeriodMillis;
    public int widgetCategory;

    public AppWidgetProviderInfo() {
    }

    private Drawable loadDrawable(Context context, int i2, int i3, boolean z2) {
        try {
            Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication(this.providerInfo.applicationInfo);
            if (ResourceId.isValid(i3)) {
                if (i2 < 0) {
                    i2 = 0;
                }
                return resourcesForApplication.getDrawableForDensity(i3, i2, null);
            }
        } catch (PackageManager.NameNotFoundException | Resources.NotFoundException unused) {
        }
        if (z2) {
            return this.providerInfo.loadIcon(context.getPackageManager());
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final UserHandle getProfile() {
        return new UserHandle(UserHandle.getUserId(this.providerInfo.applicationInfo.uid));
    }

    public final Drawable loadIcon(Context context, int i2) {
        return loadDrawable(context, i2, this.providerInfo.getIconResource(), true);
    }

    public final String loadLabel(PackageManager packageManager) {
        CharSequence charSequenceLoadLabel = this.providerInfo.loadLabel(packageManager);
        if (charSequenceLoadLabel != null) {
            return charSequenceLoadLabel.toString().trim();
        }
        return null;
    }

    public final Drawable loadPreviewImage(Context context, int i2) {
        return loadDrawable(context, i2, this.previewImage, false);
    }

    public String toString() {
        return "AppWidgetProviderInfo(" + getProfile() + '/' + this.provider + ')';
    }

    public void updateDimensions(DisplayMetrics displayMetrics) {
        this.minWidth = TypedValue.complexToDimensionPixelSize(this.minWidth, displayMetrics);
        this.minHeight = TypedValue.complexToDimensionPixelSize(this.minHeight, displayMetrics);
        this.minResizeWidth = TypedValue.complexToDimensionPixelSize(this.minResizeWidth, displayMetrics);
        this.minResizeHeight = TypedValue.complexToDimensionPixelSize(this.minResizeHeight, displayMetrics);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.provider != null) {
            parcel.writeInt(1);
            this.provider.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.minWidth);
        parcel.writeInt(this.minHeight);
        parcel.writeInt(this.minResizeWidth);
        parcel.writeInt(this.minResizeHeight);
        parcel.writeInt(this.updatePeriodMillis);
        parcel.writeInt(this.initialLayout);
        parcel.writeInt(this.initialKeyguardLayout);
        if (this.configure != null) {
            parcel.writeInt(1);
            this.configure.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.label);
        parcel.writeInt(this.icon);
        parcel.writeInt(this.previewImage);
        parcel.writeInt(this.autoAdvanceViewId);
        parcel.writeInt(this.resizeMode);
        parcel.writeInt(this.widgetCategory);
        parcel.writeParcelable(this.providerInfo, i2);
    }

    public AppWidgetProviderInfo(Parcel parcel) {
        if (parcel.readInt() != 0) {
            this.provider = new ComponentName(parcel);
        }
        this.minWidth = parcel.readInt();
        this.minHeight = parcel.readInt();
        this.minResizeWidth = parcel.readInt();
        this.minResizeHeight = parcel.readInt();
        this.updatePeriodMillis = parcel.readInt();
        this.initialLayout = parcel.readInt();
        this.initialKeyguardLayout = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.configure = new ComponentName(parcel);
        }
        this.label = parcel.readString();
        this.icon = parcel.readInt();
        this.previewImage = parcel.readInt();
        this.autoAdvanceViewId = parcel.readInt();
        this.resizeMode = parcel.readInt();
        this.widgetCategory = parcel.readInt();
        this.providerInfo = (ActivityInfo) parcel.readParcelable(null);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AppWidgetProviderInfo m16clone() {
        AppWidgetProviderInfo appWidgetProviderInfo = new AppWidgetProviderInfo();
        ComponentName componentName = this.provider;
        appWidgetProviderInfo.provider = componentName == null ? null : componentName.m18clone();
        appWidgetProviderInfo.minWidth = this.minWidth;
        appWidgetProviderInfo.minHeight = this.minHeight;
        int i2 = this.minResizeHeight;
        appWidgetProviderInfo.minResizeWidth = i2;
        appWidgetProviderInfo.minResizeHeight = i2;
        appWidgetProviderInfo.updatePeriodMillis = this.updatePeriodMillis;
        appWidgetProviderInfo.initialLayout = this.initialLayout;
        appWidgetProviderInfo.initialKeyguardLayout = this.initialKeyguardLayout;
        ComponentName componentName2 = this.configure;
        appWidgetProviderInfo.configure = componentName2 == null ? null : componentName2.m18clone();
        String str = this.label;
        appWidgetProviderInfo.label = str != null ? str.substring(0) : null;
        appWidgetProviderInfo.icon = this.icon;
        appWidgetProviderInfo.previewImage = this.previewImage;
        appWidgetProviderInfo.autoAdvanceViewId = this.autoAdvanceViewId;
        appWidgetProviderInfo.resizeMode = this.resizeMode;
        appWidgetProviderInfo.widgetCategory = this.widgetCategory;
        appWidgetProviderInfo.providerInfo = this.providerInfo;
        return appWidgetProviderInfo;
    }
}
