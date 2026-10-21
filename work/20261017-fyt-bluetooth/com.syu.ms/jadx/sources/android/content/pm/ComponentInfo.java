package android.content.pm;

import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.util.Printer;

/* JADX INFO: loaded from: classes.dex */
public class ComponentInfo extends PackageItemInfo {
    public ApplicationInfo applicationInfo;
    public int descriptionRes;
    public boolean enabled;
    public boolean exported;
    public String processName;

    public ComponentInfo() {
        this.enabled = true;
        this.exported = false;
    }

    @Override // android.content.pm.PackageItemInfo
    public void dumpBack(Printer printer, String str) {
        if (this.applicationInfo != null) {
            printer.println(str + "ApplicationInfo:");
            this.applicationInfo.dump(printer, str + "  ");
        } else {
            printer.println(str + "ApplicationInfo: null");
        }
        super.dumpBack(printer, str);
    }

    @Override // android.content.pm.PackageItemInfo
    public void dumpFront(Printer printer, String str) {
        super.dumpFront(printer, str);
        printer.println(str + "enabled=" + this.enabled + " exported=" + this.exported + " processName=" + this.processName);
        if (this.descriptionRes != 0) {
            printer.println(str + "description=" + this.descriptionRes);
        }
    }

    @Override // android.content.pm.PackageItemInfo
    public ApplicationInfo getApplicationInfo() {
        return this.applicationInfo;
    }

    public final int getIconResource() {
        int i2 = this.icon;
        return i2 != 0 ? i2 : this.applicationInfo.icon;
    }

    public final int getLogoResource() {
        int i2 = this.logo;
        return i2 != 0 ? i2 : this.applicationInfo.logo;
    }

    public boolean isEnabled() {
        return this.enabled && this.applicationInfo.enabled;
    }

    @Override // android.content.pm.PackageItemInfo
    public Drawable loadDefaultIcon(PackageManager packageManager) {
        return this.applicationInfo.loadIcon(packageManager);
    }

    @Override // android.content.pm.PackageItemInfo
    public Drawable loadDefaultLogo(PackageManager packageManager) {
        return this.applicationInfo.loadLogo(packageManager);
    }

    @Override // android.content.pm.PackageItemInfo
    public CharSequence loadLabel(PackageManager packageManager) {
        CharSequence text;
        CharSequence text2;
        CharSequence charSequence = this.nonLocalizedLabel;
        if (charSequence != null) {
            return charSequence;
        }
        ApplicationInfo applicationInfo = this.applicationInfo;
        int i2 = this.labelRes;
        if (i2 != 0 && (text2 = packageManager.getText(this.packageName, i2, applicationInfo)) != null) {
            return text2;
        }
        CharSequence charSequence2 = applicationInfo.nonLocalizedLabel;
        if (charSequence2 != null) {
            return charSequence2;
        }
        int i3 = applicationInfo.labelRes;
        return (i3 == 0 || (text = packageManager.getText(this.packageName, i3, applicationInfo)) == null) ? this.name : text;
    }

    @Override // android.content.pm.PackageItemInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        this.applicationInfo.writeToParcel(parcel, i2);
        parcel.writeString(this.processName);
        parcel.writeInt(this.descriptionRes);
        parcel.writeInt(this.enabled ? 1 : 0);
        parcel.writeInt(this.exported ? 1 : 0);
    }

    public ComponentInfo(ComponentInfo componentInfo) {
        super(componentInfo);
        this.enabled = true;
        this.exported = false;
        this.applicationInfo = componentInfo.applicationInfo;
        this.processName = componentInfo.processName;
        this.descriptionRes = componentInfo.descriptionRes;
        this.enabled = componentInfo.enabled;
        this.exported = componentInfo.exported;
    }

    public ComponentInfo(Parcel parcel) {
        super(parcel);
        this.enabled = true;
        this.exported = false;
        this.applicationInfo = ApplicationInfo.CREATOR.createFromParcel(parcel);
        this.processName = parcel.readString();
        this.descriptionRes = parcel.readInt();
        this.enabled = parcel.readInt() != 0;
        this.exported = parcel.readInt() != 0;
    }
}
