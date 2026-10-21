package android.bluetooth.le;

import android.accessibilityservice.c;
import android.bluetooth.BluetoothUuid;
import android.os.ParcelUuid;
import android.util.ArrayMap;
import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ScanRecord {
    private static final int DATA_TYPE_FLAGS = 1;
    private static final int DATA_TYPE_LOCAL_NAME_COMPLETE = 9;
    private static final int DATA_TYPE_LOCAL_NAME_SHORT = 8;
    private static final int DATA_TYPE_MANUFACTURER_SPECIFIC_DATA = 255;
    private static final int DATA_TYPE_SERVICE_DATA_128_BIT = 33;
    private static final int DATA_TYPE_SERVICE_DATA_16_BIT = 22;
    private static final int DATA_TYPE_SERVICE_DATA_32_BIT = 32;
    private static final int DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE = 7;
    private static final int DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL = 6;
    private static final int DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE = 3;
    private static final int DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL = 2;
    private static final int DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE = 5;
    private static final int DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL = 4;
    private static final int DATA_TYPE_TX_POWER_LEVEL = 10;
    private static final String TAG = "ScanRecord";
    private final int mAdvertiseFlags;
    private final byte[] mBytes;
    private final String mDeviceName;
    private final SparseArray<byte[]> mManufacturerSpecificData;
    private final Map<ParcelUuid, byte[]> mServiceData;
    private final List<ParcelUuid> mServiceUuids;
    private final int mTxPowerLevel;

    private ScanRecord(List<ParcelUuid> list, SparseArray<byte[]> sparseArray, Map<ParcelUuid, byte[]> map, int i2, int i3, String str, byte[] bArr) {
        this.mServiceUuids = list;
        this.mManufacturerSpecificData = sparseArray;
        this.mServiceData = map;
        this.mDeviceName = str;
        this.mAdvertiseFlags = i2;
        this.mTxPowerLevel = i3;
        this.mBytes = bArr;
    }

    private static byte[] extractBytes(byte[] bArr, int i2, int i3) {
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i2, bArr2, 0, i3);
        return bArr2;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0063  */
    /* JADX WARN: Code duplicated, block: B:27:0x007e  */
    /* JADX WARN: Code duplicated, block: B:28:0x0080 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0082  */
    /* JADX WARN: Code duplicated, block: B:30:0x0083  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a0  */
    public static ScanRecord parseFromBytes(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        SparseArray sparseArray = new SparseArray();
        ArrayMap arrayMap = new ArrayMap();
        int i2 = 0;
        int i3 = -1;
        byte b2 = -2147483648;
        String str = null;
        while (i2 < bArr.length) {
            try {
                int i4 = i2 + 1;
                int i5 = bArr[i2] & 255;
                if (i5 == 0) {
                    if (arrayList.isEmpty()) {
                        arrayList = null;
                    }
                    return new ScanRecord(arrayList, sparseArray, arrayMap, i3, b2, str, bArr);
                }
                int i6 = i5 - 1;
                int i7 = i4 + 1;
                int i8 = bArr[i4] & 255;
                int i9 = 16;
                if (i8 == 22) {
                    if (i8 == 32) {
                        i9 = 4;
                    } else if (i8 == 33) {
                        i9 = 2;
                    }
                    arrayMap.put(BluetoothUuid.parseUuidFrom(extractBytes(bArr, i7, i9)), extractBytes(bArr, i7 + i9, i6 - i9));
                } else if (i8 == 255) {
                    sparseArray.put(((bArr[i7 + 1] & 255) << 8) + (bArr[i7] & 255), extractBytes(bArr, i7 + 2, i6 - 2));
                } else if (i8 != 32 && i8 != 33) {
                    switch (i8) {
                        case 1:
                            i3 = bArr[i7] & 255;
                            break;
                        case 2:
                        case 3:
                            parseServiceUuid(bArr, i7, i6, 2, arrayList);
                            break;
                        case 4:
                        case 5:
                            parseServiceUuid(bArr, i7, i6, 4, arrayList);
                            break;
                        case 6:
                        case 7:
                            parseServiceUuid(bArr, i7, i6, 16, arrayList);
                            break;
                        case 8:
                        case 9:
                            str = new String(extractBytes(bArr, i7, i6));
                            break;
                        case 10:
                            b2 = bArr[i7];
                            break;
                    }
                } else {
                    if (i8 == 32) {
                        i9 = 4;
                    } else if (i8 == 33) {
                        i9 = 2;
                    }
                    arrayMap.put(BluetoothUuid.parseUuidFrom(extractBytes(bArr, i7, i9)), extractBytes(bArr, i7 + i9, i6 - i9));
                }
                i2 = i6 + i7;
            } catch (Exception unused) {
                Log.e(TAG, "unable to parse scan record: " + Arrays.toString(bArr));
                return new ScanRecord(null, null, null, -1, Integer.MIN_VALUE, null, bArr);
            }
        }
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        return new ScanRecord(arrayList, sparseArray, arrayMap, i3, b2, str, bArr);
    }

    private static int parseServiceUuid(byte[] bArr, int i2, int i3, int i4, List<ParcelUuid> list) {
        while (i3 > 0) {
            list.add(BluetoothUuid.parseUuidFrom(extractBytes(bArr, i2, i4)));
            i3 -= i4;
            i2 += i4;
        }
        return i2;
    }

    public int getAdvertiseFlags() {
        return this.mAdvertiseFlags;
    }

    public byte[] getBytes() {
        return this.mBytes;
    }

    public String getDeviceName() {
        return this.mDeviceName;
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

    public int getTxPowerLevel() {
        return this.mTxPowerLevel;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ScanRecord [mAdvertiseFlags=");
        sb.append(this.mAdvertiseFlags);
        sb.append(", mServiceUuids=");
        sb.append(this.mServiceUuids);
        sb.append(", mManufacturerSpecificData=");
        sb.append(BluetoothLeUtils.toString(this.mManufacturerSpecificData));
        sb.append(", mServiceData=");
        sb.append(BluetoothLeUtils.toString(this.mServiceData));
        sb.append(", mTxPowerLevel=");
        sb.append(this.mTxPowerLevel);
        sb.append(", mDeviceName=");
        return c.n(sb, this.mDeviceName, "]");
    }

    public byte[] getManufacturerSpecificData(int i2) {
        return this.mManufacturerSpecificData.get(i2);
    }

    public byte[] getServiceData(ParcelUuid parcelUuid) {
        if (parcelUuid == null) {
            return null;
        }
        return this.mServiceData.get(parcelUuid);
    }
}
