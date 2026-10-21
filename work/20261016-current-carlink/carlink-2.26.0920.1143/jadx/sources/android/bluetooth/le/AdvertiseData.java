package android.bluetooth.le;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;
import android.util.ArrayMap;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class AdvertiseData implements Parcelable {
    public static final Parcelable.Creator<AdvertiseData> CREATOR = new Parcelable.Creator<AdvertiseData>() { // from class: android.bluetooth.le.AdvertiseData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdvertiseData createFromParcel(Parcel parcel) {
            Builder builder = new Builder();
            ArrayList arrayList = parcel.readArrayList(ParcelUuid.class.getClassLoader());
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    builder.addServiceUuid((ParcelUuid) it.next());
                }
            }
            int i2 = parcel.readInt();
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = parcel.readInt();
                if (parcel.readInt() == 1) {
                    byte[] bArr = new byte[parcel.readInt()];
                    parcel.readByteArray(bArr);
                    builder.addManufacturerData(i4, bArr);
                }
            }
            int i5 = parcel.readInt();
            for (int i6 = 0; i6 < i5; i6++) {
                ParcelUuid parcelUuid = (ParcelUuid) parcel.readParcelable(ParcelUuid.class.getClassLoader());
                if (parcel.readInt() == 1) {
                    byte[] bArr2 = new byte[parcel.readInt()];
                    parcel.readByteArray(bArr2);
                    builder.addServiceData(parcelUuid, bArr2);
                }
            }
            builder.setIncludeTxPowerLevel(parcel.readByte() == 1);
            builder.setIncludeDeviceName(parcel.readByte() == 1);
            return builder.build();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdvertiseData[] newArray(int i2) {
            return new AdvertiseData[i2];
        }
    };
    private final boolean mIncludeDeviceName;
    private final boolean mIncludeTxPowerLevel;
    private final SparseArray<byte[]> mManufacturerSpecificData;
    private final Map<ParcelUuid, byte[]> mServiceData;
    private final List<ParcelUuid> mServiceUuids;

    public static final class Builder {
        private boolean mIncludeDeviceName;
        private boolean mIncludeTxPowerLevel;
        private List<ParcelUuid> mServiceUuids = new ArrayList();
        private SparseArray<byte[]> mManufacturerSpecificData = new SparseArray<>();
        private Map<ParcelUuid, byte[]> mServiceData = new ArrayMap();

        public Builder addManufacturerData(int i2, byte[] bArr) {
            if (i2 < 0) {
                throw new IllegalArgumentException(c.d("invalid manufacturerId - ", i2));
            }
            if (bArr == null) {
                throw new IllegalArgumentException("manufacturerSpecificData is null");
            }
            this.mManufacturerSpecificData.put(i2, bArr);
            return this;
        }

        public Builder addServiceData(ParcelUuid parcelUuid, byte[] bArr) {
            if (parcelUuid == null || bArr == null) {
                throw new IllegalArgumentException("serviceDataUuid or serviceDataUuid is null");
            }
            this.mServiceData.put(parcelUuid, bArr);
            return this;
        }

        public Builder addServiceUuid(ParcelUuid parcelUuid) {
            if (parcelUuid == null) {
                throw new IllegalArgumentException("serivceUuids are null");
            }
            this.mServiceUuids.add(parcelUuid);
            return this;
        }

        public AdvertiseData build() {
            return new AdvertiseData(this.mServiceUuids, this.mManufacturerSpecificData, this.mServiceData, this.mIncludeTxPowerLevel, this.mIncludeDeviceName);
        }

        public Builder setIncludeDeviceName(boolean z2) {
            this.mIncludeDeviceName = z2;
            return this;
        }

        public Builder setIncludeTxPowerLevel(boolean z2) {
            this.mIncludeTxPowerLevel = z2;
            return this;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AdvertiseData.class != obj.getClass()) {
            return false;
        }
        AdvertiseData advertiseData = (AdvertiseData) obj;
        return Objects.equals(this.mServiceUuids, advertiseData.mServiceUuids) && BluetoothLeUtils.equals(this.mManufacturerSpecificData, advertiseData.mManufacturerSpecificData) && BluetoothLeUtils.equals(this.mServiceData, advertiseData.mServiceData) && this.mIncludeDeviceName == advertiseData.mIncludeDeviceName && this.mIncludeTxPowerLevel == advertiseData.mIncludeTxPowerLevel;
    }

    public boolean getIncludeDeviceName() {
        return this.mIncludeDeviceName;
    }

    public boolean getIncludeTxPowerLevel() {
        return this.mIncludeTxPowerLevel;
    }

    public SparseArray<byte[]> getManufacturerSpecificData() {
        return this.mManufacturerSpecificData;
    }

    public Map<ParcelUuid, byte[]> getServiceData() {
        return this.mServiceData;
    }

    public List<ParcelUuid> getServiceUuids() {
        return this.mServiceUuids;
    }

    public int hashCode() {
        return Objects.hash(this.mServiceUuids, this.mManufacturerSpecificData, this.mServiceData, Boolean.valueOf(this.mIncludeDeviceName), Boolean.valueOf(this.mIncludeTxPowerLevel));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AdvertiseData [mServiceUuids=");
        sb.append(this.mServiceUuids);
        sb.append(", mManufacturerSpecificData=");
        sb.append(BluetoothLeUtils.toString(this.mManufacturerSpecificData));
        sb.append(", mServiceData=");
        sb.append(BluetoothLeUtils.toString(this.mServiceData));
        sb.append(", mIncludeTxPowerLevel=");
        sb.append(this.mIncludeTxPowerLevel);
        sb.append(", mIncludeDeviceName=");
        return c.o(sb, this.mIncludeDeviceName, "]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeList(this.mServiceUuids);
        parcel.writeInt(this.mManufacturerSpecificData.size());
        for (int i3 = 0; i3 < this.mManufacturerSpecificData.size(); i3++) {
            parcel.writeInt(this.mManufacturerSpecificData.keyAt(i3));
            byte[] bArrValueAt = this.mManufacturerSpecificData.valueAt(i3);
            if (bArrValueAt == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcel.writeInt(bArrValueAt.length);
                parcel.writeByteArray(bArrValueAt);
            }
        }
        parcel.writeInt(this.mServiceData.size());
        for (ParcelUuid parcelUuid : this.mServiceData.keySet()) {
            parcel.writeParcelable(parcelUuid, i2);
            byte[] bArr = this.mServiceData.get(parcelUuid);
            if (bArr == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcel.writeInt(bArr.length);
                parcel.writeByteArray(bArr);
            }
        }
        parcel.writeByte(getIncludeTxPowerLevel() ? (byte) 1 : (byte) 0);
        parcel.writeByte(getIncludeDeviceName() ? (byte) 1 : (byte) 0);
    }

    private AdvertiseData(List<ParcelUuid> list, SparseArray<byte[]> sparseArray, Map<ParcelUuid, byte[]> map, boolean z2, boolean z3) {
        this.mServiceUuids = list;
        this.mManufacturerSpecificData = sparseArray;
        this.mServiceData = map;
        this.mIncludeTxPowerLevel = z2;
        this.mIncludeDeviceName = z3;
    }
}
