package android.hardware.fingerprint;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class Fingerprint implements Parcelable {
    public static final Parcelable.Creator<Fingerprint> CREATOR = new Parcelable.Creator<Fingerprint>() { // from class: android.hardware.fingerprint.Fingerprint.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Fingerprint createFromParcel(Parcel parcel) {
            return new Fingerprint(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Fingerprint[] newArray(int i2) {
            return new Fingerprint[i2];
        }
    };
    private long mDeviceId;
    private int mFingerId;
    private int mGroupId;
    private CharSequence mName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getDeviceId() {
        return this.mDeviceId;
    }

    public int getFingerId() {
        return this.mFingerId;
    }

    public int getGroupId() {
        return this.mGroupId;
    }

    public CharSequence getName() {
        return this.mName;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mName.toString());
        parcel.writeInt(this.mGroupId);
        parcel.writeInt(this.mFingerId);
        parcel.writeLong(this.mDeviceId);
    }

    public Fingerprint(CharSequence charSequence, int i2, int i3, long j2) {
        this.mName = charSequence;
        this.mGroupId = i2;
        this.mFingerId = i3;
        this.mDeviceId = j2;
    }

    private Fingerprint(Parcel parcel) {
        this.mName = parcel.readString();
        this.mGroupId = parcel.readInt();
        this.mFingerId = parcel.readInt();
        this.mDeviceId = parcel.readLong();
    }
}
