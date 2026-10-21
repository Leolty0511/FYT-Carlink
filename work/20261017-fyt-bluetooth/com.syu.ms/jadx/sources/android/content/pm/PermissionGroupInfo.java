package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class PermissionGroupInfo extends PackageItemInfo implements Parcelable {
    public static final Parcelable.Creator<PermissionGroupInfo> CREATOR = new Parcelable.Creator<PermissionGroupInfo>() { // from class: android.content.pm.PermissionGroupInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PermissionGroupInfo createFromParcel(Parcel parcel) {
            return new PermissionGroupInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PermissionGroupInfo[] newArray(int i2) {
            return new PermissionGroupInfo[i2];
        }
    };
    public static final int FLAG_PERSONAL_INFO = 1;
    public int descriptionRes;
    public int flags;
    public CharSequence nonLocalizedDescription;
    public int priority;

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
        return "PermissionGroupInfo{" + Integer.toHexString(System.identityHashCode(this)) + " " + this.name + " flgs=0x" + Integer.toHexString(this.flags) + "}";
    }

    @Override // android.content.pm.PackageItemInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.descriptionRes);
        TextUtils.writeToParcel(this.nonLocalizedDescription, parcel, i2);
        parcel.writeInt(this.flags);
        parcel.writeInt(this.priority);
    }

    public PermissionGroupInfo() {
    }

    public PermissionGroupInfo(PermissionGroupInfo permissionGroupInfo) {
        super(permissionGroupInfo);
        this.descriptionRes = permissionGroupInfo.descriptionRes;
        this.nonLocalizedDescription = permissionGroupInfo.nonLocalizedDescription;
        this.flags = permissionGroupInfo.flags;
        this.priority = permissionGroupInfo.priority;
    }

    private PermissionGroupInfo(Parcel parcel) {
        super(parcel);
        this.descriptionRes = parcel.readInt();
        this.nonLocalizedDescription = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.flags = parcel.readInt();
        this.priority = parcel.readInt();
    }
}
