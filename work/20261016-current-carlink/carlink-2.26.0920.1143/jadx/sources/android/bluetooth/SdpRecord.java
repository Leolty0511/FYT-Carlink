package android.bluetooth;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class SdpRecord implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: android.bluetooth.SdpRecord.1
        @Override // android.os.Parcelable.Creator
        public SdpRecord createFromParcel(Parcel parcel) {
            return new SdpRecord(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SdpRecord[] newArray(int i2) {
            return new SdpRecord[i2];
        }
    };
    private final byte[] mRawData;
    private final int mRawSize;

    public SdpRecord(int i2, byte[] bArr) {
        this.mRawData = bArr;
        this.mRawSize = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public byte[] getRawData() {
        return this.mRawData;
    }

    public int getRawSize() {
        return this.mRawSize;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BluetoothSdpRecord [rawData=");
        sb.append(Arrays.toString(this.mRawData));
        sb.append(", rawSize=");
        return c.m(sb, this.mRawSize, "]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mRawSize);
        parcel.writeByteArray(this.mRawData);
    }

    public SdpRecord(Parcel parcel) {
        int i2 = parcel.readInt();
        this.mRawSize = i2;
        byte[] bArr = new byte[i2];
        this.mRawData = bArr;
        parcel.readByteArray(bArr);
    }
}
