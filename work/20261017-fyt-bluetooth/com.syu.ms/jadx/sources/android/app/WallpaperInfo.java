package android.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.service.wallpaper.WallpaperService;
import android.util.AttributeSet;
import android.util.Printer;
import android.util.Xml;
import i.a;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class WallpaperInfo implements Parcelable {
    public static final Parcelable.Creator<WallpaperInfo> CREATOR = new Parcelable.Creator<WallpaperInfo>() { // from class: android.app.WallpaperInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WallpaperInfo createFromParcel(Parcel parcel) {
            return new WallpaperInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WallpaperInfo[] newArray(int i2) {
            return new WallpaperInfo[i2];
        }
    };
    public static final String TAG = "WallpaperInfo";
    public final int mAuthorResource;
    public final int mDescriptionResource;
    public final ResolveInfo mService;
    public final String mSettingsActivityName;
    public final int mThumbnailResource;

    public WallpaperInfo(Context context, ResolveInfo resolveInfo) {
        int next;
        this.mService = resolveInfo;
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        PackageManager packageManager = context.getPackageManager();
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                XmlResourceParser xmlResourceParserLoadXmlMetaData = serviceInfo.loadXmlMetaData(packageManager, WallpaperService.SERVICE_META_DATA);
                if (xmlResourceParserLoadXmlMetaData == null) {
                    throw new XmlPullParserException("No android.service.wallpaper meta-data");
                }
                Resources resourcesForApplication = packageManager.getResourcesForApplication(serviceInfo.applicationInfo);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParserLoadXmlMetaData);
                do {
                    next = xmlResourceParserLoadXmlMetaData.next();
                    if (next == 1) {
                        break;
                    }
                } while (next != 2);
                if (!Context.WALLPAPER_SERVICE.equals(xmlResourceParserLoadXmlMetaData.getName())) {
                    throw new XmlPullParserException("Meta-data does not start with wallpaper tag");
                }
                TypedArray typedArrayObtainAttributes = resourcesForApplication.obtainAttributes(attributeSetAsAttributeSet, a.Wallpaper);
                String string = typedArrayObtainAttributes.getString(1);
                int resourceId = typedArrayObtainAttributes.getResourceId(2, -1);
                int resourceId2 = typedArrayObtainAttributes.getResourceId(3, -1);
                int resourceId3 = typedArrayObtainAttributes.getResourceId(0, -1);
                typedArrayObtainAttributes.recycle();
                xmlResourceParserLoadXmlMetaData.close();
                this.mSettingsActivityName = string;
                this.mThumbnailResource = resourceId;
                this.mAuthorResource = resourceId2;
                this.mDescriptionResource = resourceId3;
            } catch (PackageManager.NameNotFoundException unused) {
                throw new XmlPullParserException("Unable to create context for: " + serviceInfo.packageName);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(Printer printer, String str) {
        printer.println(str + "Service:");
        this.mService.dump(printer, str + "  ");
        printer.println(str + "mSettingsActivityName=" + this.mSettingsActivityName);
    }

    public ComponentName getComponent() {
        ServiceInfo serviceInfo = this.mService.serviceInfo;
        return new ComponentName(serviceInfo.packageName, serviceInfo.name);
    }

    public String getPackageName() {
        return this.mService.serviceInfo.packageName;
    }

    public ServiceInfo getServiceInfo() {
        return this.mService.serviceInfo;
    }

    public String getServiceName() {
        return this.mService.serviceInfo.name;
    }

    public String getSettingsActivity() {
        return this.mSettingsActivityName;
    }

    public CharSequence loadAuthor(PackageManager packageManager) {
        int i2 = this.mAuthorResource;
        if (i2 <= 0) {
            throw new Resources.NotFoundException();
        }
        ResolveInfo resolveInfo = this.mService;
        String str = resolveInfo.resolvePackageName;
        ApplicationInfo applicationInfo = null;
        if (str == null) {
            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
            str = serviceInfo.packageName;
            applicationInfo = serviceInfo.applicationInfo;
        }
        return packageManager.getText(str, i2, applicationInfo);
    }

    public CharSequence loadDescription(PackageManager packageManager) {
        ApplicationInfo applicationInfo;
        ResolveInfo resolveInfo = this.mService;
        String str = resolveInfo.resolvePackageName;
        if (str == null) {
            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
            String str2 = serviceInfo.packageName;
            applicationInfo = serviceInfo.applicationInfo;
            str = str2;
        } else {
            applicationInfo = null;
        }
        ServiceInfo serviceInfo2 = resolveInfo.serviceInfo;
        int i2 = serviceInfo2.descriptionRes;
        if (i2 != 0) {
            return packageManager.getText(str, i2, applicationInfo);
        }
        int i3 = this.mDescriptionResource;
        if (i3 > 0) {
            return packageManager.getText(str, i3, serviceInfo2.applicationInfo);
        }
        throw new Resources.NotFoundException();
    }

    public Drawable loadIcon(PackageManager packageManager) {
        return this.mService.loadIcon(packageManager);
    }

    public CharSequence loadLabel(PackageManager packageManager) {
        return this.mService.loadLabel(packageManager);
    }

    public Drawable loadThumbnail(PackageManager packageManager) {
        int i2 = this.mThumbnailResource;
        if (i2 < 0) {
            return null;
        }
        ServiceInfo serviceInfo = this.mService.serviceInfo;
        return packageManager.getDrawable(serviceInfo.packageName, i2, serviceInfo.applicationInfo);
    }

    public String toString() {
        return "WallpaperInfo{" + this.mService.serviceInfo.name + ", settings: " + this.mSettingsActivityName + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mSettingsActivityName);
        parcel.writeInt(this.mThumbnailResource);
        parcel.writeInt(this.mAuthorResource);
        parcel.writeInt(this.mDescriptionResource);
        this.mService.writeToParcel(parcel, i2);
    }

    public WallpaperInfo(Parcel parcel) {
        this.mSettingsActivityName = parcel.readString();
        this.mThumbnailResource = parcel.readInt();
        this.mAuthorResource = parcel.readInt();
        this.mDescriptionResource = parcel.readInt();
        this.mService = ResolveInfo.CREATOR.createFromParcel(parcel);
    }
}
