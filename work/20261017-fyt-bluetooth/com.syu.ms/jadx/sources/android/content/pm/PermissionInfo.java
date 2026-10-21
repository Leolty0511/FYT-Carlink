package android.content.pm;

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
    public static final int PROTECTION_DANGEROUS = 1;
    public static final int PROTECTION_FLAG_DEVELOPMENT = 32;
    public static final int PROTECTION_FLAG_SYSTEM = 16;
    public static final int PROTECTION_MASK_BASE = 15;
    public static final int PROTECTION_MASK_FLAGS = 240;
    public static final int PROTECTION_NORMAL = 0;
    public static final int PROTECTION_SIGNATURE = 2;
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
        String str;
        int i3 = i2 & 15;
        if (i3 == 0) {
            str = "normal";
        } else if (i3 == 1) {
            str = "dangerous";
        } else if (i3 != 2) {
            str = i3 != 3 ? "????" : "signatureOrSystem";
        } else {
            str = "signature";
        }
        if ((i2 & 16) != 0) {
            str = str + "|system";
        }
        if ((i2 & 32) == 0) {
            return str;
        }
        return str + "|development";
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
        return "PermissionInfo{" + Integer.toHexString(System.identityHashCode(this)) + " " + this.name + "}";
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
