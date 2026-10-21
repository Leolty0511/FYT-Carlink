package android.bluetooth;

import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothGattCharacteristic implements Parcelable {
    public static final Parcelable.Creator<BluetoothGattCharacteristic> CREATOR = new Parcelable.Creator<BluetoothGattCharacteristic>() { // from class: android.bluetooth.BluetoothGattCharacteristic.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothGattCharacteristic createFromParcel(Parcel parcel) {
            return new BluetoothGattCharacteristic(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothGattCharacteristic[] newArray(int i2) {
            return new BluetoothGattCharacteristic[i2];
        }
    };
    public static final int FORMAT_FLOAT = 52;
    public static final int FORMAT_SFLOAT = 50;
    public static final int FORMAT_SINT16 = 34;
    public static final int FORMAT_SINT32 = 36;
    public static final int FORMAT_SINT8 = 33;
    public static final int FORMAT_UINT16 = 18;
    public static final int FORMAT_UINT32 = 20;
    public static final int FORMAT_UINT8 = 17;
    public static final int PERMISSION_READ = 1;
    public static final int PERMISSION_READ_ENCRYPTED = 2;
    public static final int PERMISSION_READ_ENCRYPTED_MITM = 4;
    public static final int PERMISSION_WRITE = 16;
    public static final int PERMISSION_WRITE_ENCRYPTED = 32;
    public static final int PERMISSION_WRITE_ENCRYPTED_MITM = 64;
    public static final int PERMISSION_WRITE_SIGNED = 128;
    public static final int PERMISSION_WRITE_SIGNED_MITM = 256;
    public static final int PROPERTY_BROADCAST = 1;
    public static final int PROPERTY_EXTENDED_PROPS = 128;
    public static final int PROPERTY_INDICATE = 32;
    public static final int PROPERTY_NOTIFY = 16;
    public static final int PROPERTY_READ = 2;
    public static final int PROPERTY_SIGNED_WRITE = 64;
    public static final int PROPERTY_WRITE = 8;
    public static final int PROPERTY_WRITE_NO_RESPONSE = 4;
    public static final int WRITE_TYPE_DEFAULT = 2;
    public static final int WRITE_TYPE_NO_RESPONSE = 1;
    public static final int WRITE_TYPE_SIGNED = 4;
    protected List<BluetoothGattDescriptor> mDescriptors;
    protected int mInstance;
    protected int mKeySize;
    protected int mPermissions;
    protected int mProperties;
    protected BluetoothGattService mService;
    protected UUID mUuid;
    protected byte[] mValue;
    protected int mWriteType;

    private float bytesToFloat(byte b2, byte b3) {
        return (float) (Math.pow(10.0d, unsignedToSigned(unsignedByteToInt(b3) >> 4, 4)) * ((double) unsignedToSigned(unsignedByteToInt(b2) + ((unsignedByteToInt(b3) & 15) << 8), 12)));
    }

    private int getTypeLen(int i2) {
        return i2 & 15;
    }

    private void initCharacteristic(BluetoothGattService bluetoothGattService, UUID uuid, int i2, int i3, int i4) {
        this.mUuid = uuid;
        this.mInstance = i2;
        this.mProperties = i3;
        this.mPermissions = i4;
        this.mService = bluetoothGattService;
        this.mValue = null;
        this.mDescriptors = new ArrayList();
        if ((this.mProperties & 4) != 0) {
            this.mWriteType = 1;
        } else {
            this.mWriteType = 2;
        }
    }

    private int intToSignedBits(int i2, int i3) {
        if (i2 >= 0) {
            return i2;
        }
        int i4 = 1 << (i3 - 1);
        return (i2 & (i4 - 1)) + i4;
    }

    private int unsignedByteToInt(byte b2) {
        return b2 & 255;
    }

    private int unsignedBytesToInt(byte b2, byte b3) {
        return unsignedByteToInt(b2) + (unsignedByteToInt(b3) << 8);
    }

    private int unsignedToSigned(int i2, int i3) {
        int i4 = 1 << (i3 - 1);
        return (i2 & i4) != 0 ? (i4 - (i2 & (i4 - 1))) * (-1) : i2;
    }

    public boolean addDescriptor(BluetoothGattDescriptor bluetoothGattDescriptor) {
        this.mDescriptors.add(bluetoothGattDescriptor);
        bluetoothGattDescriptor.setCharacteristic(this);
        return true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BluetoothGattDescriptor getDescriptor(UUID uuid, int i2) {
        for (BluetoothGattDescriptor bluetoothGattDescriptor : this.mDescriptors) {
            if (bluetoothGattDescriptor.getUuid().equals(uuid) && bluetoothGattDescriptor.getInstanceId() == i2) {
                return bluetoothGattDescriptor;
            }
        }
        return null;
    }

    public List<BluetoothGattDescriptor> getDescriptors() {
        return this.mDescriptors;
    }

    public Float getFloatValue(int i2, int i3) {
        int typeLen = getTypeLen(i2) + i3;
        byte[] bArr = this.mValue;
        if (typeLen > bArr.length) {
            return null;
        }
        if (i2 == 50) {
            return Float.valueOf(bytesToFloat(bArr[i3], bArr[i3 + 1]));
        }
        if (i2 != 52) {
            return null;
        }
        return Float.valueOf(bytesToFloat(bArr[i3], bArr[i3 + 1], bArr[i3 + 2], bArr[i3 + 3]));
    }

    public int getInstanceId() {
        return this.mInstance;
    }

    public Integer getIntValue(int i2, int i3) {
        int typeLen = getTypeLen(i2) + i3;
        byte[] bArr = this.mValue;
        if (typeLen > bArr.length) {
            return null;
        }
        if (i2 == 17) {
            return Integer.valueOf(unsignedByteToInt(bArr[i3]));
        }
        if (i2 == 18) {
            return Integer.valueOf(unsignedBytesToInt(bArr[i3], bArr[i3 + 1]));
        }
        if (i2 == 20) {
            return Integer.valueOf(unsignedBytesToInt(bArr[i3], bArr[i3 + 1], bArr[i3 + 2], bArr[i3 + 3]));
        }
        if (i2 == 36) {
            return Integer.valueOf(unsignedToSigned(unsignedBytesToInt(bArr[i3], bArr[i3 + 1], bArr[i3 + 2], bArr[i3 + 3]), 32));
        }
        if (i2 == 33) {
            return Integer.valueOf(unsignedToSigned(unsignedByteToInt(bArr[i3]), 8));
        }
        if (i2 != 34) {
            return null;
        }
        return Integer.valueOf(unsignedToSigned(unsignedBytesToInt(bArr[i3], bArr[i3 + 1]), 16));
    }

    public int getKeySize() {
        return this.mKeySize;
    }

    public int getPermissions() {
        return this.mPermissions;
    }

    public int getProperties() {
        return this.mProperties;
    }

    public BluetoothGattService getService() {
        return this.mService;
    }

    public String getStringValue(int i2) {
        byte[] bArr = this.mValue;
        if (bArr == null || i2 > bArr.length) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length - i2];
        int i3 = 0;
        while (true) {
            byte[] bArr3 = this.mValue;
            if (i3 == bArr3.length - i2) {
                return new String(bArr2);
            }
            bArr2[i3] = bArr3[i2 + i3];
            i3++;
        }
    }

    public UUID getUuid() {
        return this.mUuid;
    }

    public byte[] getValue() {
        return this.mValue;
    }

    public int getWriteType() {
        return this.mWriteType;
    }

    public void setInstanceId(int i2) {
        this.mInstance = i2;
    }

    public void setKeySize(int i2) {
        this.mKeySize = i2;
    }

    public void setService(BluetoothGattService bluetoothGattService) {
        this.mService = bluetoothGattService;
    }

    public boolean setValue(byte[] bArr) {
        this.mValue = bArr;
        return true;
    }

    public void setWriteType(int i2) {
        this.mWriteType = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(new ParcelUuid(this.mUuid), 0);
        parcel.writeInt(this.mInstance);
        parcel.writeInt(this.mProperties);
        parcel.writeInt(this.mPermissions);
        parcel.writeInt(this.mKeySize);
        parcel.writeInt(this.mWriteType);
        parcel.writeTypedList(this.mDescriptors);
    }

    public BluetoothGattCharacteristic(UUID uuid, int i2, int i3) {
        this.mKeySize = 16;
        initCharacteristic(null, uuid, 0, i2, i3);
    }

    private int unsignedBytesToInt(byte b2, byte b3, byte b4, byte b5) {
        return unsignedByteToInt(b2) + (unsignedByteToInt(b3) << 8) + (unsignedByteToInt(b4) << 16) + (unsignedByteToInt(b5) << 24);
    }

    public boolean setValue(int i2, int i3, int i4) {
        int typeLen = getTypeLen(i3) + i4;
        if (this.mValue == null) {
            this.mValue = new byte[typeLen];
        }
        if (typeLen > this.mValue.length) {
            return false;
        }
        if (i3 != 17) {
            if (i3 != 18) {
                if (i3 != 20) {
                    if (i3 == 36) {
                        i2 = intToSignedBits(i2, 32);
                    } else if (i3 == 33) {
                        i2 = intToSignedBits(i2, 8);
                    } else {
                        if (i3 != 34) {
                            return false;
                        }
                        i2 = intToSignedBits(i2, 16);
                    }
                }
                byte[] bArr = this.mValue;
                int i5 = i4 + 1;
                bArr[i4] = (byte) (i2 & 255);
                int i6 = i5 + 1;
                bArr[i5] = (byte) ((i2 >> 8) & 255);
                bArr[i6] = (byte) ((i2 >> 16) & 255);
                bArr[i6 + 1] = (byte) ((i2 >> 24) & 255);
                return true;
            }
            byte[] bArr2 = this.mValue;
            bArr2[i4] = (byte) (i2 & 255);
            bArr2[i4 + 1] = (byte) ((i2 >> 8) & 255);
            return true;
        }
        this.mValue[i4] = (byte) (i2 & 255);
        return true;
    }

    public BluetoothGattDescriptor getDescriptor(UUID uuid) {
        for (BluetoothGattDescriptor bluetoothGattDescriptor : this.mDescriptors) {
            if (bluetoothGattDescriptor.getUuid().equals(uuid)) {
                return bluetoothGattDescriptor;
            }
        }
        return null;
    }

    public BluetoothGattCharacteristic(BluetoothGattService bluetoothGattService, UUID uuid, int i2, int i3, int i4) {
        this.mKeySize = 16;
        initCharacteristic(bluetoothGattService, uuid, i2, i3, i4);
    }

    private float bytesToFloat(byte b2, byte b3, byte b4, byte b5) {
        return (float) (Math.pow(10.0d, b5) * ((double) unsignedToSigned(unsignedByteToInt(b2) + (unsignedByteToInt(b3) << 8) + (unsignedByteToInt(b4) << 16), 24)));
    }

    public BluetoothGattCharacteristic(UUID uuid, int i2, int i3, int i4) {
        this.mKeySize = 16;
        initCharacteristic(null, uuid, i2, i3, i4);
    }

    private BluetoothGattCharacteristic(Parcel parcel) {
        this.mKeySize = 16;
        this.mUuid = ((ParcelUuid) parcel.readParcelable(null)).getUuid();
        this.mInstance = parcel.readInt();
        this.mProperties = parcel.readInt();
        this.mPermissions = parcel.readInt();
        this.mKeySize = parcel.readInt();
        this.mWriteType = parcel.readInt();
        this.mDescriptors = new ArrayList();
        ArrayList<BluetoothGattDescriptor> arrayListCreateTypedArrayList = parcel.createTypedArrayList(BluetoothGattDescriptor.CREATOR);
        if (arrayListCreateTypedArrayList != null) {
            for (BluetoothGattDescriptor bluetoothGattDescriptor : arrayListCreateTypedArrayList) {
                bluetoothGattDescriptor.setCharacteristic(this);
                this.mDescriptors.add(bluetoothGattDescriptor);
            }
        }
    }

    public boolean setValue(int i2, int i3, int i4, int i5) {
        int typeLen = getTypeLen(i4) + i5;
        if (this.mValue == null) {
            this.mValue = new byte[typeLen];
        }
        if (typeLen > this.mValue.length) {
            return false;
        }
        if (i4 == 50) {
            int iIntToSignedBits = intToSignedBits(i2, 12);
            int iIntToSignedBits2 = intToSignedBits(i3, 4);
            byte[] bArr = this.mValue;
            int i6 = i5 + 1;
            bArr[i5] = (byte) (iIntToSignedBits & 255);
            byte b2 = (byte) ((iIntToSignedBits >> 8) & 15);
            bArr[i6] = b2;
            bArr[i6] = (byte) (b2 + ((byte) ((iIntToSignedBits2 & 15) << 4)));
            return true;
        }
        if (i4 != 52) {
            return false;
        }
        int iIntToSignedBits3 = intToSignedBits(i2, 24);
        int iIntToSignedBits4 = intToSignedBits(i3, 8);
        byte[] bArr2 = this.mValue;
        int i7 = i5 + 1;
        bArr2[i5] = (byte) (iIntToSignedBits3 & 255);
        int i8 = i7 + 1;
        bArr2[i7] = (byte) ((iIntToSignedBits3 >> 8) & 255);
        int i9 = i8 + 1;
        bArr2[i8] = (byte) ((iIntToSignedBits3 >> 16) & 255);
        bArr2[i9] = (byte) (bArr2[i9] + ((byte) (iIntToSignedBits4 & 255)));
        return true;
    }

    public boolean setValue(String str) {
        this.mValue = str.getBytes();
        return true;
    }
}
