package android.media;

import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class TimedMetaData {
    private static final String TAG = "TimedMetaData";
    private byte[] mMetaData;
    private long mTimestampUs;

    private TimedMetaData(Parcel parcel) {
        if (!parseParcel(parcel)) {
            throw new IllegalArgumentException("parseParcel() fails");
        }
    }

    public static TimedMetaData createTimedMetaDataFromParcel(Parcel parcel) {
        return new TimedMetaData(parcel);
    }

    private boolean parseParcel(Parcel parcel) {
        parcel.setDataPosition(0);
        if (parcel.dataAvail() == 0) {
            return false;
        }
        this.mTimestampUs = parcel.readLong();
        byte[] bArr = new byte[parcel.readInt()];
        this.mMetaData = bArr;
        parcel.readByteArray(bArr);
        return true;
    }

    public byte[] getMetaData() {
        return this.mMetaData;
    }

    public long getTimestamp() {
        return this.mTimestampUs;
    }
}
