package android.content.pm;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PatternMatcher;
import android.util.Printer;

/* JADX INFO: loaded from: classes.dex */
public final class ProviderInfo extends ComponentInfo implements Parcelable {
    public static final Parcelable.Creator<ProviderInfo> CREATOR = new Parcelable.Creator<ProviderInfo>() { // from class: android.content.pm.ProviderInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProviderInfo createFromParcel(Parcel parcel) {
            return new ProviderInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProviderInfo[] newArray(int i2) {
            return new ProviderInfo[i2];
        }
    };
    public static final int FLAG_SINGLE_USER = 1073741824;
    public static final int FLAG_VISIBLE_TO_INSTANT_APP = 1048576;
    public String authority;
    public int flags;
    public boolean grantUriPermissions;
    public int initOrder;

    @Deprecated
    public boolean isSyncable;
    public boolean multiprocess;
    public PathPermission[] pathPermissions;
    public String readPermission;
    public PatternMatcher[] uriPermissionPatterns;
    public String writePermission;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(Printer printer, String str) {
        dump(printer, str, 3);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ContentProviderInfo{name=");
        sb.append(this.authority);
        sb.append(" className=");
        return c.n(sb, this.name, "}");
    }

    @Override // android.content.pm.ComponentInfo, android.content.pm.PackageItemInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.authority);
        parcel.writeString(this.readPermission);
        parcel.writeString(this.writePermission);
        parcel.writeInt(this.grantUriPermissions ? 1 : 0);
        parcel.writeTypedArray(this.uriPermissionPatterns, i2);
        parcel.writeTypedArray(this.pathPermissions, i2);
        parcel.writeInt(this.multiprocess ? 1 : 0);
        parcel.writeInt(this.initOrder);
        parcel.writeInt(this.flags);
        parcel.writeInt(this.isSyncable ? 1 : 0);
    }

    public ProviderInfo() {
        this.authority = null;
        this.readPermission = null;
        this.writePermission = null;
        this.grantUriPermissions = false;
        this.uriPermissionPatterns = null;
        this.pathPermissions = null;
        this.multiprocess = false;
        this.initOrder = 0;
        this.flags = 0;
        this.isSyncable = false;
    }

    public void dump(Printer printer, String str, int i2) {
        super.dumpFront(printer, str);
        StringBuilder sbU = c.u(str, "authority=");
        sbU.append(this.authority);
        printer.println(sbU.toString());
        printer.println(str + "flags=0x" + Integer.toHexString(this.flags));
        super.dumpBack(printer, str, i2);
    }

    public ProviderInfo(ProviderInfo providerInfo) {
        super(providerInfo);
        this.authority = null;
        this.readPermission = null;
        this.writePermission = null;
        this.grantUriPermissions = false;
        this.uriPermissionPatterns = null;
        this.pathPermissions = null;
        this.multiprocess = false;
        this.initOrder = 0;
        this.flags = 0;
        this.isSyncable = false;
        this.authority = providerInfo.authority;
        this.readPermission = providerInfo.readPermission;
        this.writePermission = providerInfo.writePermission;
        this.grantUriPermissions = providerInfo.grantUriPermissions;
        this.uriPermissionPatterns = providerInfo.uriPermissionPatterns;
        this.pathPermissions = providerInfo.pathPermissions;
        this.multiprocess = providerInfo.multiprocess;
        this.initOrder = providerInfo.initOrder;
        this.flags = providerInfo.flags;
        this.isSyncable = providerInfo.isSyncable;
    }

    private ProviderInfo(Parcel parcel) {
        super(parcel);
        this.authority = null;
        this.readPermission = null;
        this.writePermission = null;
        this.grantUriPermissions = false;
        this.uriPermissionPatterns = null;
        this.pathPermissions = null;
        this.multiprocess = false;
        this.initOrder = 0;
        this.flags = 0;
        this.isSyncable = false;
        this.authority = parcel.readString();
        this.readPermission = parcel.readString();
        this.writePermission = parcel.readString();
        this.grantUriPermissions = parcel.readInt() != 0;
        this.uriPermissionPatterns = (PatternMatcher[]) parcel.createTypedArray(PatternMatcher.CREATOR);
        this.pathPermissions = (PathPermission[]) parcel.createTypedArray(PathPermission.CREATOR);
        this.multiprocess = parcel.readInt() != 0;
        this.initOrder = parcel.readInt();
        this.flags = parcel.readInt();
        this.isSyncable = parcel.readInt() != 0;
    }
}
