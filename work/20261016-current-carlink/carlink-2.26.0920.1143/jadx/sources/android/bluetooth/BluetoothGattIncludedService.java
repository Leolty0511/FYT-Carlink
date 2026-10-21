package android.bluetooth;

import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothGattIncludedService implements Parcelable {
    public static final Parcelable.Creator<BluetoothGattIncludedService> CREATOR = new Parcelable.Creator<BluetoothGattIncludedService>() { // from class: android.bluetooth.BluetoothGattIncludedService.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothGattIncludedService createFromParcel(Parcel parcel) {
            return new BluetoothGattIncludedService(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothGattIncludedService[] newArray(int i2) {
            return new BluetoothGattIncludedService[i2];
        }
    };
    protected int mInstanceId;
    protected int mServiceType;
    protected UUID mUuid;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getInstanceId() {
        return this.mInstanceId;
    }

    public int getType() {
        return this.mServiceType;
    }

    public UUID getUuid() {
        return this.mUuid;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(new ParcelUuid(this.mUuid), 0);
        parcel.writeInt(this.mInstanceId);
        parcel.writeInt(this.mServiceType);
    }

    public BluetoothGattIncludedService(UUID uuid, int i2, int i3) {
        this.mUuid = uuid;
        this.mInstanceId = i2;
        this.mServiceType = i3;
    }

    private BluetoothGattIncludedService(Parcel parcel) {
        this.mUuid = ((ParcelUuid) parcel.readParcelable(null)).getUuid();
        this.mInstanceId = parcel.readInt();
        this.mServiceType = parcel.readInt();
    }
}
