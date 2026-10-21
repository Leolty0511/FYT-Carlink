package android.app.timezone;

import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class DistroFormatVersion implements Parcelable {
    public static final Parcelable.Creator<DistroFormatVersion> CREATOR = new Parcelable.Creator<DistroFormatVersion>() { // from class: android.app.timezone.DistroFormatVersion.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DistroFormatVersion createFromParcel(Parcel parcel) {
            return new DistroFormatVersion(parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DistroFormatVersion[] newArray(int i2) {
            return new DistroFormatVersion[i2];
        }
    };
    private final int mMajorVersion;
    private final int mMinorVersion;

    public DistroFormatVersion(int i2, int i3) {
        this.mMajorVersion = Utils.validateVersion("major", i2);
        this.mMinorVersion = Utils.validateVersion("minor", i3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DistroFormatVersion.class != obj.getClass()) {
            return false;
        }
        DistroFormatVersion distroFormatVersion = (DistroFormatVersion) obj;
        return this.mMajorVersion == distroFormatVersion.mMajorVersion && this.mMinorVersion == distroFormatVersion.mMinorVersion;
    }

    public int getMajorVersion() {
        return this.mMajorVersion;
    }

    public int getMinorVersion() {
        return this.mMinorVersion;
    }

    public int hashCode() {
        return (this.mMajorVersion * 31) + this.mMinorVersion;
    }

    public boolean supports(DistroFormatVersion distroFormatVersion) {
        return this.mMajorVersion == distroFormatVersion.mMajorVersion && this.mMinorVersion <= distroFormatVersion.mMinorVersion;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DistroFormatVersion{mMajorVersion=");
        sb.append(this.mMajorVersion);
        sb.append(", mMinorVersion=");
        return m.j(sb, this.mMinorVersion, '}');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mMajorVersion);
        parcel.writeInt(this.mMinorVersion);
    }
}
