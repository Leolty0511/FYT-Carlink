package android.content.pm;

import android.accessibilityservice.c;
import android.content.ComponentName;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Printer;
import com.android.internal.content.NativeLibraryHelper;

/* JADX INFO: loaded from: classes.dex */
public class ComponentInfo extends PackageItemInfo {
    public ApplicationInfo applicationInfo;
    public int descriptionRes;
    public boolean directBootAware;
    public boolean enabled;

    @Deprecated
    public boolean encryptionAware;
    public boolean exported;
    public String processName;
    public String splitName;

    public ComponentInfo() {
        this.enabled = true;
        this.exported = false;
        this.directBootAware = false;
        this.encryptionAware = false;
    }

    private CharSequence loadLabelInternal(PackageManager packageManager) {
        CharSequence text;
        CharSequence text2;
        String str;
        CharSequence charSequence = this.nonLocalizedLabel;
        if (charSequence != null) {
            return charSequence;
        }
        ApplicationInfo applicationInfo = this.applicationInfo;
        if (this.packageName.startsWith("com.android.stk") && (str = this.labelName) != null) {
            return str;
        }
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

    @Override // android.content.pm.PackageItemInfo
    public void dumpBack(Printer printer, String str) {
        dumpBack(printer, str, 3);
    }

    @Override // android.content.pm.PackageItemInfo
    public void dumpFront(Printer printer, String str) {
        super.dumpFront(printer, str);
        String str2 = this.processName;
        if (str2 != null && !this.packageName.equals(str2)) {
            c.B(c.u(str, "processName="), this.processName, printer);
        }
        if (this.splitName != null) {
            c.B(c.u(str, "splitName="), this.splitName, printer);
        }
        StringBuilder sbU = c.u(str, "enabled=");
        sbU.append(this.enabled);
        sbU.append(" exported=");
        sbU.append(this.exported);
        sbU.append(" directBootAware=");
        sbU.append(this.directBootAware);
        printer.println(sbU.toString());
        if (this.descriptionRes != 0) {
            StringBuilder sbU2 = c.u(str, "description=");
            sbU2.append(this.descriptionRes);
            printer.println(sbU2.toString());
        }
    }

    @Override // android.content.pm.PackageItemInfo
    public ApplicationInfo getApplicationInfo() {
        return this.applicationInfo;
    }

    public final int getBannerResource() {
        int i2 = this.banner;
        return i2 != 0 ? i2 : this.applicationInfo.banner;
    }

    public ComponentName getComponentName() {
        return new ComponentName(this.packageName, this.name);
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
    public Drawable loadDefaultBanner(PackageManager packageManager) {
        return this.applicationInfo.loadBanner(packageManager);
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
        String suffixedUserName = getSuffixedUserName(packageManager);
        if (TextUtils.isEmpty(suffixedUserName)) {
            return loadLabelInternal(packageManager);
        }
        StringBuilder sbU = c.u(suffixedUserName, NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
        sbU.append((Object) loadLabelInternal(packageManager));
        return sbU.toString();
    }

    @Override // android.content.pm.PackageItemInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        if ((i2 & 2) != 0) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            this.applicationInfo.writeToParcel(parcel, i2);
        }
        parcel.writeString(this.processName);
        parcel.writeString(this.splitName);
        parcel.writeInt(this.descriptionRes);
        parcel.writeInt(this.enabled ? 1 : 0);
        parcel.writeInt(this.exported ? 1 : 0);
        parcel.writeInt(this.directBootAware ? 1 : 0);
    }

    public void dumpBack(Printer printer, String str, int i2) {
        if ((i2 & 2) != 0) {
            if (this.applicationInfo != null) {
                printer.println(str + "ApplicationInfo:");
                this.applicationInfo.dump(printer, str + "  ", i2);
            } else {
                printer.println(str + "ApplicationInfo: null");
            }
        }
        super.dumpBack(printer, str);
    }

    public ComponentInfo(ComponentInfo componentInfo) {
        super(componentInfo);
        this.enabled = true;
        this.exported = false;
        this.directBootAware = false;
        this.encryptionAware = false;
        this.applicationInfo = componentInfo.applicationInfo;
        this.processName = componentInfo.processName;
        this.splitName = componentInfo.splitName;
        this.descriptionRes = componentInfo.descriptionRes;
        this.enabled = componentInfo.enabled;
        this.exported = componentInfo.exported;
        boolean z2 = componentInfo.directBootAware;
        this.directBootAware = z2;
        this.encryptionAware = z2;
    }

    public ComponentInfo(Parcel parcel) {
        super(parcel);
        this.enabled = true;
        this.exported = false;
        this.directBootAware = false;
        this.encryptionAware = false;
        if (parcel.readInt() != 0) {
            this.applicationInfo = ApplicationInfo.CREATOR.createFromParcel(parcel);
        }
        this.processName = parcel.readString();
        this.splitName = parcel.readString();
        this.descriptionRes = parcel.readInt();
        this.enabled = parcel.readInt() != 0;
        this.exported = parcel.readInt() != 0;
        boolean z2 = parcel.readInt() != 0;
        this.directBootAware = z2;
        this.encryptionAware = z2;
    }
}
