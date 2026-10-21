package android.hardware.hdmi;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class HdmiHotplugEvent implements Parcelable {
    public static final Parcelable.Creator<HdmiHotplugEvent> CREATOR = new Parcelable.Creator<HdmiHotplugEvent>() { // from class: android.hardware.hdmi.HdmiHotplugEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HdmiHotplugEvent createFromParcel(Parcel parcel) {
            return new HdmiHotplugEvent(parcel.readInt(), parcel.readByte() == 1);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HdmiHotplugEvent[] newArray(int i2) {
            return new HdmiHotplugEvent[i2];
        }
    };
    private final boolean mConnected;
    private final int mPort;

    public HdmiHotplugEvent(int i2, boolean z2) {
        this.mPort = i2;
        this.mConnected = z2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getPort() {
        return this.mPort;
    }

    public boolean isConnected() {
        return this.mConnected;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mPort);
        parcel.writeByte(this.mConnected ? (byte) 1 : (byte) 0);
    }
}
