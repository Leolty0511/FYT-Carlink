package android.content.pm;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class VersionedPackage implements Parcelable {
    public static final Parcelable.Creator<VersionedPackage> CREATOR = new Parcelable.Creator<VersionedPackage>() { // from class: android.content.pm.VersionedPackage.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VersionedPackage createFromParcel(Parcel parcel) {
            return new VersionedPackage(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VersionedPackage[] newArray(int i2) {
            return new VersionedPackage[i2];
        }
    };
    private final String mPackageName;
    private final int mVersionCode;

    @Retention(RetentionPolicy.SOURCE)
    public @interface VersionCode {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("VersionedPackage[");
        sb.append(this.mPackageName);
        sb.append("/");
        return c.m(sb, this.mVersionCode, "]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mPackageName);
        parcel.writeInt(this.mVersionCode);
    }

    public VersionedPackage(String str, int i2) {
        this.mPackageName = str;
        this.mVersionCode = i2;
    }

    private VersionedPackage(Parcel parcel) {
        this.mPackageName = parcel.readString();
        this.mVersionCode = parcel.readInt();
    }
}
