package android.telephony;

import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class SmsCbLocation implements Parcelable {
    public static final Parcelable.Creator<SmsCbLocation> CREATOR = new Parcelable.Creator<SmsCbLocation>() { // from class: android.telephony.SmsCbLocation.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SmsCbLocation createFromParcel(Parcel parcel) {
            return new SmsCbLocation(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SmsCbLocation[] newArray(int i2) {
            return new SmsCbLocation[i2];
        }
    };
    private final int mCid;
    private final int mLac;
    private final String mPlmn;

    public SmsCbLocation() {
        this.mPlmn = "";
        this.mLac = -1;
        this.mCid = -1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof SmsCbLocation)) {
            return false;
        }
        SmsCbLocation smsCbLocation = (SmsCbLocation) obj;
        return this.mPlmn.equals(smsCbLocation.mPlmn) && this.mLac == smsCbLocation.mLac && this.mCid == smsCbLocation.mCid;
    }

    public int getCid() {
        return this.mCid;
    }

    public int getLac() {
        return this.mLac;
    }

    public String getPlmn() {
        return this.mPlmn;
    }

    public int hashCode() {
        return (((this.mPlmn.hashCode() * 31) + this.mLac) * 31) + this.mCid;
    }

    public boolean isInLocationArea(SmsCbLocation smsCbLocation) {
        int i2 = this.mCid;
        if (i2 != -1 && i2 != smsCbLocation.mCid) {
            return false;
        }
        int i3 = this.mLac;
        if (i3 == -1 || i3 == smsCbLocation.mLac) {
            return this.mPlmn.equals(smsCbLocation.mPlmn);
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        sb.append(this.mPlmn);
        sb.append(',');
        sb.append(this.mLac);
        sb.append(',');
        return m.j(sb, this.mCid, ']');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mPlmn);
        parcel.writeInt(this.mLac);
        parcel.writeInt(this.mCid);
    }

    public boolean isInLocationArea(String str, int i2, int i3) {
        if (!this.mPlmn.equals(str)) {
            return false;
        }
        int i4 = this.mLac;
        if (i4 != -1 && i4 != i2) {
            return false;
        }
        int i5 = this.mCid;
        return i5 == -1 || i5 == i3;
    }

    public SmsCbLocation(String str) {
        this.mPlmn = str;
        this.mLac = -1;
        this.mCid = -1;
    }

    public SmsCbLocation(String str, int i2, int i3) {
        this.mPlmn = str;
        this.mLac = i2;
        this.mCid = i3;
    }

    public SmsCbLocation(Parcel parcel) {
        this.mPlmn = parcel.readString();
        this.mLac = parcel.readInt();
        this.mCid = parcel.readInt();
    }
}
