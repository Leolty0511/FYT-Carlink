package android.bluetooth;

import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.SettingsStringUtil;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothMasInstance implements Parcelable {
    public static final Parcelable.Creator<BluetoothMasInstance> CREATOR = new Parcelable.Creator<BluetoothMasInstance>() { // from class: android.bluetooth.BluetoothMasInstance.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothMasInstance createFromParcel(Parcel parcel) {
            return new BluetoothMasInstance(parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothMasInstance[] newArray(int i2) {
            return new BluetoothMasInstance[i2];
        }
    };
    private final int mChannel;
    private final int mId;
    private final int mMsgTypes;
    private final String mName;

    public static final class MessageType {
        public static final int EMAIL = 1;
        public static final int MMS = 8;
        public static final int SMS_CDMA = 4;
        public static final int SMS_GSM = 2;
    }

    public BluetoothMasInstance(int i2, String str, int i3, int i4) {
        this.mId = i2;
        this.mName = str;
        this.mChannel = i3;
        this.mMsgTypes = i4;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof BluetoothMasInstance) && this.mId == ((BluetoothMasInstance) obj).mId;
    }

    public int getChannel() {
        return this.mChannel;
    }

    public int getId() {
        return this.mId;
    }

    public int getMsgTypes() {
        return this.mMsgTypes;
    }

    public String getName() {
        return this.mName;
    }

    public int hashCode() {
        return this.mId + (this.mChannel << 8) + (this.mMsgTypes << 16);
    }

    public boolean msgSupported(int i2) {
        return (i2 & this.mMsgTypes) != 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toString(this.mId));
        sb.append(SettingsStringUtil.DELIMITER);
        sb.append(this.mName);
        sb.append(SettingsStringUtil.DELIMITER);
        sb.append(this.mChannel);
        sb.append(SettingsStringUtil.DELIMITER);
        return m.d(this.mMsgTypes, sb);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mId);
        parcel.writeString(this.mName);
        parcel.writeInt(this.mChannel);
        parcel.writeInt(this.mMsgTypes);
    }
}
