package android.content.pm;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class PermissionInfo extends PackageItemInfo implements Parcelable {
    public static final Parcelable.Creator<PermissionInfo> CREATOR = new Parcelable.Creator<PermissionInfo>() { // from class: android.content.pm.PermissionInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PermissionInfo createFromParcel(Parcel parcel) {
            return new PermissionInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PermissionInfo[] newArray(int i2) {
            return new PermissionInfo[i2];
        }
    };
    public static final int FLAG_COSTS_MONEY = 1;
    public static final int FLAG_INSTALLED = 1073741824;
    public static final int FLAG_REMOVED = 2;
    public static final int PROTECTION_DANGEROUS = 1;
    public static final int PROTECTION_FLAG_APPOP = 64;
    public static final int PROTECTION_FLAG_DEVELOPMENT = 32;
    public static final int PROTECTION_FLAG_INSTALLER = 256;
    public static final int PROTECTION_FLAG_INSTANT = 4096;
    public static final int PROTECTION_FLAG_PRE23 = 128;
    public static final int PROTECTION_FLAG_PREINSTALLED = 1024;
    public static final int PROTECTION_FLAG_PRIVILEGED = 16;
    public static final int PROTECTION_FLAG_RUNTIME_ONLY = 8192;
    public static final int PROTECTION_FLAG_SETUP = 2048;

    @Deprecated
    public static final int PROTECTION_FLAG_SYSTEM = 16;
    public static final int PROTECTION_FLAG_VERIFIER = 512;
    public static final int PROTECTION_MASK_BASE = 15;
    public static final int PROTECTION_MASK_FLAGS = 65520;
    public static final int PROTECTION_NORMAL = 0;
    public static final int PROTECTION_SIGNATURE = 2;

    @Deprecated
    public static final int PROTECTION_SIGNATURE_OR_SYSTEM = 3;
    public int descriptionRes;
    public int flags;
    public String group;
    public CharSequence nonLocalizedDescription;
    public int protectionLevel;

    public static int fixProtectionLevel(int i2) {
        if (i2 == 3) {
            return 18;
        }
        return i2;
    }

    public static String protectionToString(int i2) {
        String strD;
        int i3 = i2 & 15;
        if (i3 == 0) {
            strD = "normal";
        } else if (i3 == 1) {
            strD = "dangerous";
        } else if (i3 != 2) {
            strD = i3 != 3 ? "????" : "signatureOrSystem";
        } else {
            strD = "signature";
        }
        if ((i2 & 16) != 0) {
            strD = strD.concat("|privileged");
        }
        if ((i2 & 32) != 0) {
            strD = c.D(strD, "|development");
        }
        if ((i2 & 64) != 0) {
            strD = c.D(strD, "|appop");
        }
        if ((i2 & 128) != 0) {
            strD = c.D(strD, "|pre23");
        }
        if ((i2 & 256) != 0) {
            strD = c.D(strD, "|installer");
        }
        if ((i2 & 512) != 0) {
            strD = c.D(strD, "|verifier");
        }
        if ((i2 & 1024) != 0) {
            strD = c.D(strD, "|preinstalled");
        }
        if ((i2 & 2048) != 0) {
            strD = c.D(strD, "|setup");
        }
        if ((i2 & 4096) != 0) {
            strD = c.D(strD, "|instant");
        }
        return (i2 & 8192) != 0 ? c.D(strD, "|runtime") : strD;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CharSequence loadDescription(PackageManager packageManager) {
        CharSequence text;
        CharSequence charSequence = this.nonLocalizedDescription;
        if (charSequence != null) {
            return charSequence;
        }
        int i2 = this.descriptionRes;
        if (i2 == 0 || (text = packageManager.getText(this.packageName, i2, null)) == null) {
            return null;
        }
        return text;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PermissionInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        return c.n(sb, this.name, "}");
    }

    @Override // android.content.pm.PackageItemInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.protectionLevel);
        parcel.writeInt(this.flags);
        parcel.writeString(this.group);
        parcel.writeInt(this.descriptionRes);
        TextUtils.writeToParcel(this.nonLocalizedDescription, parcel, i2);
    }

    public PermissionInfo() {
    }

    public PermissionInfo(PermissionInfo permissionInfo) {
        super(permissionInfo);
        this.protectionLevel = permissionInfo.protectionLevel;
        this.flags = permissionInfo.flags;
        this.group = permissionInfo.group;
        this.descriptionRes = permissionInfo.descriptionRes;
        this.nonLocalizedDescription = permissionInfo.nonLocalizedDescription;
    }

    private PermissionInfo(Parcel parcel) {
        super(parcel);
        this.protectionLevel = parcel.readInt();
        this.flags = parcel.readInt();
        this.group = parcel.readString();
        this.descriptionRes = parcel.readInt();
        this.nonLocalizedDescription = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
    }
}
