package android.media.tv;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class DvbDeviceInfo implements Parcelable {
    public static final Parcelable.Creator<DvbDeviceInfo> CREATOR = new Parcelable.Creator<DvbDeviceInfo>() { // from class: android.media.tv.DvbDeviceInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DvbDeviceInfo createFromParcel(Parcel parcel) {
            try {
                return new DvbDeviceInfo(parcel);
            } catch (Exception e2) {
                Log.e(DvbDeviceInfo.TAG, "Exception creating DvbDeviceInfo from parcel", e2);
                return null;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DvbDeviceInfo[] newArray(int i2) {
            return new DvbDeviceInfo[i2];
        }
    };
    static final String TAG = "DvbDeviceInfo";
    private final int mAdapterId;
    private final int mDeviceId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAdapterId() {
        return this.mAdapterId;
    }

    public int getDeviceId() {
        return this.mDeviceId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mAdapterId);
        parcel.writeInt(this.mDeviceId);
    }

    private DvbDeviceInfo(Parcel parcel) {
        this.mAdapterId = parcel.readInt();
        this.mDeviceId = parcel.readInt();
    }

    public DvbDeviceInfo(int i2, int i3) {
        this.mAdapterId = i2;
        this.mDeviceId = i3;
    }
}
