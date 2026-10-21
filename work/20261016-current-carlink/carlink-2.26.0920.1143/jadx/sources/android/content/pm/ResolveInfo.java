package android.content.pm;

import android.accessibilityservice.c;
import android.content.ComponentName;
import android.content.IntentFilter;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Printer;
import android.util.Slog;
import java.text.Collator;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class ResolveInfo implements Parcelable {
    public static final Parcelable.Creator<ResolveInfo> CREATOR = new Parcelable.Creator<ResolveInfo>() { // from class: android.content.pm.ResolveInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResolveInfo createFromParcel(Parcel parcel) {
            return new ResolveInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResolveInfo[] newArray(int i2) {
            return new ResolveInfo[i2];
        }
    };
    private static final String TAG = "ResolveInfo";
    public ActivityInfo activityInfo;
    public AuxiliaryResolveInfo auxiliaryInfo;
    public IntentFilter filter;
    public boolean handleAllWebDataURI;
    public int icon;
    public int iconResourceId;

    @Deprecated
    public boolean instantAppAvailable;
    public boolean isDefault;
    public boolean isInstantAppAvailable;
    public int labelRes;
    public int match;
    public boolean noResourceId;
    public CharSequence nonLocalizedLabel;
    public int preferredOrder;
    public int priority;
    public ProviderInfo providerInfo;
    public String resolvePackageName;
    public ServiceInfo serviceInfo;
    public int specificIndex;
    public boolean system;
    public int targetUserId;

    public static class DisplayNameComparator implements Comparator<ResolveInfo> {
        private final Collator mCollator;
        private PackageManager mPM;

        public DisplayNameComparator(PackageManager packageManager) {
            Collator collator = Collator.getInstance();
            this.mCollator = collator;
            this.mPM = packageManager;
            collator.setStrength(0);
        }

        @Override // java.util.Comparator
        public final int compare(ResolveInfo resolveInfo, ResolveInfo resolveInfo2) {
            if (resolveInfo.targetUserId != -2) {
                return 1;
            }
            if (resolveInfo2.targetUserId != -2) {
                return -1;
            }
            CharSequence charSequenceLoadLabel = resolveInfo.loadLabel(this.mPM);
            if (charSequenceLoadLabel == null) {
                charSequenceLoadLabel = resolveInfo.activityInfo.name;
            }
            CharSequence charSequenceLoadLabel2 = resolveInfo2.loadLabel(this.mPM);
            if (charSequenceLoadLabel2 == null) {
                charSequenceLoadLabel2 = resolveInfo2.activityInfo.name;
            }
            return this.mCollator.compare(charSequenceLoadLabel.toString(), charSequenceLoadLabel2.toString());
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(Printer printer, String str) {
        dump(printer, str, 3);
    }

    public ComponentInfo getComponentInfo() {
        ActivityInfo activityInfo = this.activityInfo;
        if (activityInfo != null) {
            return activityInfo;
        }
        ServiceInfo serviceInfo = this.serviceInfo;
        if (serviceInfo != null) {
            return serviceInfo;
        }
        ProviderInfo providerInfo = this.providerInfo;
        if (providerInfo != null) {
            return providerInfo;
        }
        throw new IllegalStateException("Missing ComponentInfo!");
    }

    public final int getIconResource() {
        if (this.noResourceId) {
            return 0;
        }
        return getIconResourceInternal();
    }

    public final int getIconResourceInternal() {
        int i2 = this.iconResourceId;
        if (i2 != 0) {
            return i2;
        }
        ComponentInfo componentInfo = getComponentInfo();
        if (componentInfo != null) {
            return componentInfo.getIconResource();
        }
        return 0;
    }

    public Drawable loadIcon(PackageManager packageManager) {
        int i2;
        int i3;
        String str = this.resolvePackageName;
        Drawable drawable = null;
        if (str != null && (i3 = this.iconResourceId) != 0) {
            drawable = packageManager.getDrawable(str, i3, null);
        }
        ComponentInfo componentInfo = getComponentInfo();
        if (drawable == null && (i2 = this.iconResourceId) != 0) {
            drawable = packageManager.getDrawable(componentInfo.packageName, i2, componentInfo.applicationInfo);
        }
        return drawable != null ? packageManager.getUserBadgedIcon(drawable, new UserHandle(UserHandle.myUserId())) : componentInfo.loadIcon(packageManager);
    }

    public CharSequence loadLabel(PackageManager packageManager) {
        CharSequence text;
        int i2;
        CharSequence text2;
        CharSequence charSequence = this.nonLocalizedLabel;
        if (charSequence != null) {
            return charSequence;
        }
        String str = this.resolvePackageName;
        if (str != null && (i2 = this.labelRes) != 0 && (text2 = packageManager.getText(str, i2, null)) != null) {
            return text2.toString().trim();
        }
        ComponentInfo componentInfo = getComponentInfo();
        ApplicationInfo applicationInfo = componentInfo.applicationInfo;
        int i3 = this.labelRes;
        if (i3 != 0 && (text = packageManager.getText(componentInfo.packageName, i3, applicationInfo)) != null) {
            return text.toString().trim();
        }
        CharSequence charSequenceLoadLabel = componentInfo.loadLabel(packageManager);
        return charSequenceLoadLabel != null ? charSequenceLoadLabel.toString().trim() : charSequenceLoadLabel;
    }

    public int resolveIconResId() {
        int i2 = this.icon;
        if (i2 != 0) {
            return i2;
        }
        ComponentInfo componentInfo = getComponentInfo();
        int i3 = componentInfo.icon;
        return i3 != 0 ? i3 : componentInfo.applicationInfo.icon;
    }

    public int resolveLabelResId() {
        int i2 = this.labelRes;
        if (i2 != 0) {
            return i2;
        }
        ComponentInfo componentInfo = getComponentInfo();
        int i3 = componentInfo.labelRes;
        return i3 != 0 ? i3 : componentInfo.applicationInfo.labelRes;
    }

    public String toString() {
        ComponentInfo componentInfo = getComponentInfo();
        StringBuilder sbQ = c.q(128, "ResolveInfo{");
        sbQ.append(Integer.toHexString(System.identityHashCode(this)));
        sbQ.append(' ');
        ComponentName.appendShortString(sbQ, componentInfo.packageName, componentInfo.name);
        if (this.priority != 0) {
            sbQ.append(" p=");
            sbQ.append(this.priority);
        }
        if (this.preferredOrder != 0) {
            sbQ.append(" o=");
            sbQ.append(this.preferredOrder);
        }
        sbQ.append(" m=0x");
        sbQ.append(Integer.toHexString(this.match));
        if (this.targetUserId != -2) {
            sbQ.append(" targetUserId=");
            sbQ.append(this.targetUserId);
        }
        sbQ.append('}');
        return sbQ.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.activityInfo != null) {
            parcel.writeInt(1);
            this.activityInfo.writeToParcel(parcel, i2);
        } else if (this.serviceInfo != null) {
            parcel.writeInt(2);
            this.serviceInfo.writeToParcel(parcel, i2);
        } else if (this.providerInfo != null) {
            parcel.writeInt(3);
            this.providerInfo.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        if (this.filter != null) {
            parcel.writeInt(1);
            this.filter.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.priority);
        parcel.writeInt(this.preferredOrder);
        parcel.writeInt(this.match);
        parcel.writeInt(this.specificIndex);
        parcel.writeInt(this.labelRes);
        TextUtils.writeToParcel(this.nonLocalizedLabel, parcel, i2);
        parcel.writeInt(this.icon);
        parcel.writeString(this.resolvePackageName);
        parcel.writeInt(this.targetUserId);
        parcel.writeInt(this.system ? 1 : 0);
        parcel.writeInt(this.noResourceId ? 1 : 0);
        parcel.writeInt(this.iconResourceId);
        parcel.writeInt(this.handleAllWebDataURI ? 1 : 0);
        parcel.writeInt(this.isInstantAppAvailable ? 1 : 0);
    }

    public ResolveInfo() {
        this.specificIndex = -1;
        this.targetUserId = -2;
    }

    public void dump(Printer printer, String str, int i2) {
        if (this.filter != null) {
            printer.println(str + "Filter:");
            this.filter.dump(printer, str + "  ");
        }
        StringBuilder sbU = c.u(str, "priority=");
        sbU.append(this.priority);
        sbU.append(" preferredOrder=");
        sbU.append(this.preferredOrder);
        sbU.append(" match=0x");
        c.x(this.match, sbU, " specificIndex=");
        sbU.append(this.specificIndex);
        sbU.append(" isDefault=");
        sbU.append(this.isDefault);
        printer.println(sbU.toString());
        if (this.resolvePackageName != null) {
            c.B(c.u(str, "resolvePackageName="), this.resolvePackageName, printer);
        }
        if (this.labelRes != 0 || this.nonLocalizedLabel != null || this.icon != 0) {
            StringBuilder sbU2 = c.u(str, "labelRes=0x");
            c.x(this.labelRes, sbU2, " nonLocalizedLabel=");
            sbU2.append((Object) this.nonLocalizedLabel);
            sbU2.append(" icon=0x");
            sbU2.append(Integer.toHexString(this.icon));
            printer.println(sbU2.toString());
        }
        if (this.activityInfo != null) {
            printer.println(str + "ActivityInfo:");
            this.activityInfo.dump(printer, str + "  ", i2);
            return;
        }
        if (this.serviceInfo != null) {
            printer.println(str + "ServiceInfo:");
            this.serviceInfo.dump(printer, str + "  ", i2);
            return;
        }
        if (this.providerInfo != null) {
            printer.println(str + "ProviderInfo:");
            this.providerInfo.dump(printer, str + "  ", i2);
        }
    }

    public ResolveInfo(ResolveInfo resolveInfo) {
        this.specificIndex = -1;
        this.activityInfo = resolveInfo.activityInfo;
        this.serviceInfo = resolveInfo.serviceInfo;
        this.providerInfo = resolveInfo.providerInfo;
        this.filter = resolveInfo.filter;
        this.priority = resolveInfo.priority;
        this.preferredOrder = resolveInfo.preferredOrder;
        this.match = resolveInfo.match;
        this.specificIndex = resolveInfo.specificIndex;
        this.labelRes = resolveInfo.labelRes;
        this.nonLocalizedLabel = resolveInfo.nonLocalizedLabel;
        this.icon = resolveInfo.icon;
        this.resolvePackageName = resolveInfo.resolvePackageName;
        this.noResourceId = resolveInfo.noResourceId;
        this.iconResourceId = resolveInfo.iconResourceId;
        this.system = resolveInfo.system;
        this.targetUserId = resolveInfo.targetUserId;
        this.handleAllWebDataURI = resolveInfo.handleAllWebDataURI;
        boolean z2 = resolveInfo.isInstantAppAvailable;
        this.isInstantAppAvailable = z2;
        this.instantAppAvailable = z2;
    }

    private ResolveInfo(Parcel parcel) {
        this.specificIndex = -1;
        this.activityInfo = null;
        this.serviceInfo = null;
        this.providerInfo = null;
        int i2 = parcel.readInt();
        if (i2 == 1) {
            this.activityInfo = ActivityInfo.CREATOR.createFromParcel(parcel);
        } else if (i2 == 2) {
            this.serviceInfo = ServiceInfo.CREATOR.createFromParcel(parcel);
        } else if (i2 != 3) {
            Slog.w(TAG, "Missing ComponentInfo!");
        } else {
            this.providerInfo = ProviderInfo.CREATOR.createFromParcel(parcel);
        }
        if (parcel.readInt() != 0) {
            this.filter = IntentFilter.CREATOR.createFromParcel(parcel);
        }
        this.priority = parcel.readInt();
        this.preferredOrder = parcel.readInt();
        this.match = parcel.readInt();
        this.specificIndex = parcel.readInt();
        this.labelRes = parcel.readInt();
        this.nonLocalizedLabel = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.icon = parcel.readInt();
        this.resolvePackageName = parcel.readString();
        this.targetUserId = parcel.readInt();
        this.system = parcel.readInt() != 0;
        this.noResourceId = parcel.readInt() != 0;
        this.iconResourceId = parcel.readInt();
        this.handleAllWebDataURI = parcel.readInt() != 0;
        boolean z2 = parcel.readInt() != 0;
        this.isInstantAppAvailable = z2;
        this.instantAppAvailable = z2;
    }
}
