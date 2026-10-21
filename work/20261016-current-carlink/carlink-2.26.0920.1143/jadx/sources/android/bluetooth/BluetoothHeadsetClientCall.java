package android.bluetooth;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothHeadsetClientCall implements Parcelable {
    public static final int CALL_STATE_ACTIVE = 0;
    public static final int CALL_STATE_ALERTING = 3;
    public static final int CALL_STATE_DIALING = 2;
    public static final int CALL_STATE_HELD = 1;
    public static final int CALL_STATE_HELD_BY_RESPONSE_AND_HOLD = 6;
    public static final int CALL_STATE_INCOMING = 4;
    public static final int CALL_STATE_TERMINATED = 7;
    public static final int CALL_STATE_WAITING = 5;
    public static final Parcelable.Creator<BluetoothHeadsetClientCall> CREATOR = new Parcelable.Creator<BluetoothHeadsetClientCall>() { // from class: android.bluetooth.BluetoothHeadsetClientCall.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothHeadsetClientCall createFromParcel(Parcel parcel) {
            return new BluetoothHeadsetClientCall((BluetoothDevice) parcel.readParcelable(null), parcel.readInt(), UUID.fromString(parcel.readString()), parcel.readInt(), parcel.readString(), parcel.readInt() == 1, parcel.readInt() == 1);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothHeadsetClientCall[] newArray(int i2) {
            return new BluetoothHeadsetClientCall[i2];
        }
    };
    private final long mCreationElapsedMilli;
    private final BluetoothDevice mDevice;
    private final int mId;
    private boolean mMultiParty;
    private String mNumber;
    private final boolean mOutgoing;
    private int mState;
    private final UUID mUUID;

    public BluetoothHeadsetClientCall(BluetoothDevice bluetoothDevice, int i2, int i3, String str, boolean z2, boolean z3) {
        this(bluetoothDevice, i2, UUID.randomUUID(), i3, str, z2, z3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getCreationElapsedMilli() {
        return this.mCreationElapsedMilli;
    }

    public BluetoothDevice getDevice() {
        return this.mDevice;
    }

    public int getId() {
        return this.mId;
    }

    public String getNumber() {
        return this.mNumber;
    }

    public int getState() {
        return this.mState;
    }

    public UUID getUUID() {
        return this.mUUID;
    }

    public boolean isMultiParty() {
        return this.mMultiParty;
    }

    public boolean isOutgoing() {
        return this.mOutgoing;
    }

    public void setMultiParty(boolean z2) {
        this.mMultiParty = z2;
    }

    public void setNumber(String str) {
        this.mNumber = str;
    }

    public void setState(int i2) {
        this.mState = i2;
    }

    public String toString() {
        return toString(false);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mDevice, 0);
        parcel.writeInt(this.mId);
        parcel.writeString(this.mUUID.toString());
        parcel.writeInt(this.mState);
        parcel.writeString(this.mNumber);
        parcel.writeInt(this.mMultiParty ? 1 : 0);
        parcel.writeInt(this.mOutgoing ? 1 : 0);
    }

    public BluetoothHeadsetClientCall(BluetoothDevice bluetoothDevice, int i2, UUID uuid, int i3, String str, boolean z2, boolean z3) {
        this.mDevice = bluetoothDevice;
        this.mId = i2;
        this.mUUID = uuid;
        this.mState = i3;
        this.mNumber = str == null ? "" : str;
        this.mMultiParty = z2;
        this.mOutgoing = z3;
        this.mCreationElapsedMilli = SystemClock.elapsedRealtime();
    }

    public String toString(boolean z2) {
        StringBuilder sb = new StringBuilder("BluetoothHeadsetClientCall{mDevice: ");
        BluetoothDevice bluetoothDevice = this.mDevice;
        Object objValueOf = bluetoothDevice;
        if (!z2) {
            objValueOf = Integer.valueOf(bluetoothDevice.hashCode());
        }
        sb.append(objValueOf);
        sb.append(", mId: ");
        sb.append(this.mId);
        sb.append(", mUUID: ");
        sb.append(this.mUUID);
        sb.append(", mState: ");
        int i2 = this.mState;
        switch (i2) {
            case 0:
                sb.append("ACTIVE");
                break;
            case 1:
                sb.append("HELD");
                break;
            case 2:
                sb.append("DIALING");
                break;
            case 3:
                sb.append("ALERTING");
                break;
            case 4:
                sb.append("INCOMING");
                break;
            case 5:
                sb.append("WAITING");
                break;
            case 6:
                sb.append("HELD_BY_RESPONSE_AND_HOLD");
                break;
            case 7:
                sb.append("TERMINATED");
                break;
            default:
                sb.append(i2);
                break;
        }
        sb.append(", mNumber: ");
        sb.append(z2 ? this.mNumber : Integer.valueOf(this.mNumber.hashCode()));
        sb.append(", mMultiParty: ");
        sb.append(this.mMultiParty);
        sb.append(", mOutgoing: ");
        return c.o(sb, this.mOutgoing, "}");
    }
}
