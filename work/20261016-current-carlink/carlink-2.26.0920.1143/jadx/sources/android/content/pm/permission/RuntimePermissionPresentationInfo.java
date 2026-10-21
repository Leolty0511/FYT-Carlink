package android.content.pm.permission;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class RuntimePermissionPresentationInfo implements Parcelable {
    public static final Parcelable.Creator<RuntimePermissionPresentationInfo> CREATOR = new Parcelable.Creator<RuntimePermissionPresentationInfo>() { // from class: android.content.pm.permission.RuntimePermissionPresentationInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RuntimePermissionPresentationInfo createFromParcel(Parcel parcel) {
            return new RuntimePermissionPresentationInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RuntimePermissionPresentationInfo[] newArray(int i2) {
            return new RuntimePermissionPresentationInfo[i2];
        }
    };
    private static final int FLAG_GRANTED = 1;
    private static final int FLAG_STANDARD = 2;
    private final int mFlags;
    private final CharSequence mLabel;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CharSequence getLabel() {
        return this.mLabel;
    }

    public boolean isGranted() {
        return (this.mFlags & 1) != 0;
    }

    public boolean isStandard() {
        return (this.mFlags & 2) != 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeCharSequence(this.mLabel);
        parcel.writeInt(this.mFlags);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RuntimePermissionPresentationInfo(CharSequence charSequence, boolean z2, boolean z3) {
        this.mLabel = charSequence;
        this.mFlags = z3 ? (z2 ? 1 : 0) | 2 : z2;
    }

    private RuntimePermissionPresentationInfo(Parcel parcel) {
        this.mLabel = parcel.readCharSequence();
        this.mFlags = parcel.readInt();
    }
}
