package android.hardware.location;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class ContextHubMessage {
    public static final Parcelable.Creator<ContextHubMessage> CREATOR = new Parcelable.Creator<ContextHubMessage>() { // from class: android.hardware.location.ContextHubMessage.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContextHubMessage createFromParcel(Parcel parcel) {
            return new ContextHubMessage(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContextHubMessage[] newArray(int i2) {
            return new ContextHubMessage[i2];
        }
    };
    private static final String TAG = "ContextHubMessage";
    private byte[] mData;
    private int mType;
    private int mVersion;

    public int describeContents() {
        return 0;
    }

    public byte[] getData() {
        byte[] bArr = this.mData;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public int getMsgType() {
        return this.mType;
    }

    public int getVersion() {
        return this.mVersion;
    }

    public void setMsgData(byte[] bArr) {
        this.mData = Arrays.copyOf(bArr, bArr.length);
    }

    public void setMsgType(int i2) {
        this.mType = i2;
    }

    public void setVersion(int i2) {
        this.mVersion = i2;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mType);
        parcel.writeInt(this.mVersion);
        parcel.writeInt(this.mData.length);
        parcel.writeByteArray(this.mData);
    }

    public ContextHubMessage(int i2, int i3, byte[] bArr) {
        this.mType = i2;
        this.mVersion = i3;
        this.mData = Arrays.copyOf(bArr, bArr.length);
    }

    private ContextHubMessage(Parcel parcel) {
        this.mType = parcel.readInt();
        this.mVersion = parcel.readInt();
        byte[] bArr = new byte[parcel.readInt()];
        this.mData = bArr;
        parcel.readByteArray(bArr);
    }
}
