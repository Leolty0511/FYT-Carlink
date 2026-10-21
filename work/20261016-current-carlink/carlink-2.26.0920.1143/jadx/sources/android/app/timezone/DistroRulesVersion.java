package android.app.timezone;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.TimeZoneRulesDataContract;

/* JADX INFO: loaded from: classes.dex */
public final class DistroRulesVersion implements Parcelable {
    public static final Parcelable.Creator<DistroRulesVersion> CREATOR = new Parcelable.Creator<DistroRulesVersion>() { // from class: android.app.timezone.DistroRulesVersion.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DistroRulesVersion createFromParcel(Parcel parcel) {
            return new DistroRulesVersion(parcel.readString(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DistroRulesVersion[] newArray(int i2) {
            return new DistroRulesVersion[i2];
        }
    };
    private final int mRevision;
    private final String mRulesVersion;

    public DistroRulesVersion(String str, int i2) {
        this.mRulesVersion = Utils.validateRulesVersion("rulesVersion", str);
        this.mRevision = Utils.validateVersion(TimeZoneRulesDataContract.Operation.COLUMN_REVISION, i2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DistroRulesVersion.class != obj.getClass()) {
            return false;
        }
        DistroRulesVersion distroRulesVersion = (DistroRulesVersion) obj;
        if (this.mRevision != distroRulesVersion.mRevision) {
            return false;
        }
        return this.mRulesVersion.equals(distroRulesVersion.mRulesVersion);
    }

    public int getRevision() {
        return this.mRevision;
    }

    public String getRulesVersion() {
        return this.mRulesVersion;
    }

    public int hashCode() {
        return (this.mRulesVersion.hashCode() * 31) + this.mRevision;
    }

    public boolean isOlderThan(DistroRulesVersion distroRulesVersion) {
        int iCompareTo = this.mRulesVersion.compareTo(distroRulesVersion.mRulesVersion);
        if (iCompareTo < 0) {
            return true;
        }
        return iCompareTo <= 0 && this.mRevision < distroRulesVersion.mRevision;
    }

    public String toDumpString() {
        return this.mRulesVersion + "," + this.mRevision;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DistroRulesVersion{mRulesVersion='");
        sb.append(this.mRulesVersion);
        sb.append("', mRevision='");
        return c.m(sb, this.mRevision, "'}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mRulesVersion);
        parcel.writeInt(this.mRevision);
    }
}
