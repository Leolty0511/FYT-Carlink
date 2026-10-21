package android.net.nsd;

import android.accessibilityservice.c;
import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class DnsSdTxtRecord implements Parcelable {
    public static final Parcelable.Creator<DnsSdTxtRecord> CREATOR = new Parcelable.Creator<DnsSdTxtRecord>() { // from class: android.net.nsd.DnsSdTxtRecord.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DnsSdTxtRecord createFromParcel(Parcel parcel) {
            DnsSdTxtRecord dnsSdTxtRecord = new DnsSdTxtRecord();
            parcel.readByteArray(dnsSdTxtRecord.mData);
            return dnsSdTxtRecord;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DnsSdTxtRecord[] newArray(int i2) {
            return new DnsSdTxtRecord[i2];
        }
    };
    private static final byte mSeperator = 61;
    private byte[] mData;

    public DnsSdTxtRecord() {
        this.mData = new byte[0];
    }

    private String getKey(int i2) {
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            byte[] bArr = this.mData;
            if (i4 >= bArr.length) {
                break;
            }
            i4 += bArr[i4] + 1;
        }
        byte[] bArr2 = this.mData;
        if (i4 >= bArr2.length) {
            return null;
        }
        byte b2 = bArr2[i4];
        while (i3 < b2 && this.mData[i4 + i3 + 1] != 61) {
            i3++;
        }
        return new String(this.mData, i4 + 1, i3);
    }

    private byte[] getValue(int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            byte[] bArr = this.mData;
            if (i3 >= bArr.length) {
                break;
            }
            i3 += bArr[i3] + 1;
        }
        byte[] bArr2 = this.mData;
        if (i3 < bArr2.length) {
            int i5 = bArr2[i3];
            for (int i6 = 0; i6 < i5; i6++) {
                byte[] bArr3 = this.mData;
                int i7 = i3 + i6;
                if (bArr3[i7 + 1] == 61) {
                    int i8 = (i5 - i6) - 1;
                    byte[] bArr4 = new byte[i8];
                    System.arraycopy(bArr3, i7 + 2, bArr4, 0, i8);
                    return bArr4;
                }
            }
        }
        return null;
    }

    private String getValueAsString(int i2) {
        byte[] value = getValue(i2);
        if (value != null) {
            return new String(value);
        }
        return null;
    }

    private void insert(byte[] bArr, byte[] bArr2, int i2) {
        byte[] bArr3 = this.mData;
        int length = bArr2 != null ? bArr2.length : 0;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            byte[] bArr4 = this.mData;
            if (i3 >= bArr4.length) {
                break;
            }
            i3 += (bArr4[i3] + 1) & 255;
        }
        int length2 = bArr.length + length + (bArr2 != null ? 1 : 0);
        int length3 = bArr3.length + length2 + 1;
        byte[] bArr5 = new byte[length3];
        this.mData = bArr5;
        System.arraycopy(bArr3, 0, bArr5, 0, i3);
        int length4 = bArr3.length - i3;
        System.arraycopy(bArr3, i3, this.mData, length3 - length4, length4);
        byte[] bArr6 = this.mData;
        bArr6[i3] = (byte) length2;
        int i5 = i3 + 1;
        System.arraycopy(bArr, 0, bArr6, i5, bArr.length);
        if (bArr2 != null) {
            byte[] bArr7 = this.mData;
            bArr7[i5 + bArr.length] = mSeperator;
            System.arraycopy(bArr2, 0, bArr7, i3 + bArr.length + 2, length);
        }
    }

    public boolean contains(String str) {
        int i2 = 0;
        while (true) {
            String key = getKey(i2);
            if (key == null) {
                return false;
            }
            if (str.compareToIgnoreCase(key) == 0) {
                return true;
            }
            i2++;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof DnsSdTxtRecord) {
            return Arrays.equals(((DnsSdTxtRecord) obj).mData, this.mData);
        }
        return false;
    }

    public String get(String str) {
        byte[] value = getValue(str);
        if (value != null) {
            return new String(value);
        }
        return null;
    }

    public byte[] getRawData() {
        return (byte[]) this.mData.clone();
    }

    public int hashCode() {
        return Arrays.hashCode(this.mData);
    }

    public int keyCount() {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            byte[] bArr = this.mData;
            if (i2 >= bArr.length) {
                return i3;
            }
            i2 += (bArr[i2] + 1) & 255;
            i3++;
        }
    }

    public int remove(String str) {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            byte[] bArr = this.mData;
            if (i2 >= bArr.length) {
                return -1;
            }
            int i4 = bArr[i2];
            if (str.length() <= i4 && ((str.length() == i4 || this.mData[str.length() + i2 + 1] == 61) && str.compareToIgnoreCase(new String(this.mData, i2 + 1, str.length())) == 0)) {
                byte[] bArr2 = this.mData;
                byte[] bArr3 = new byte[(bArr2.length - i4) - 1];
                this.mData = bArr3;
                System.arraycopy(bArr2, 0, bArr3, 0, i2);
                System.arraycopy(bArr2, i2 + i4 + 1, this.mData, i2, ((bArr2.length - i2) - i4) - 1);
                return i3;
            }
            i2 += (i4 + 1) & 255;
            i3++;
        }
    }

    public void set(String str, String str2) {
        byte[] bytes;
        int length;
        if (str2 != null) {
            bytes = str2.getBytes();
            length = bytes.length;
        } else {
            bytes = null;
            length = 0;
        }
        try {
            byte[] bytes2 = str.getBytes("US-ASCII");
            for (byte b2 : bytes2) {
                if (b2 == 61) {
                    throw new IllegalArgumentException("= is not a valid character in key");
                }
            }
            if (bytes2.length + length >= 255) {
                throw new IllegalArgumentException("Key and Value length cannot exceed 255 bytes");
            }
            int iRemove = remove(str);
            if (iRemove == -1) {
                iRemove = keyCount();
            }
            insert(bytes2, bytes, iRemove);
        } catch (UnsupportedEncodingException unused) {
            throw new IllegalArgumentException("key should be US-ASCII");
        }
    }

    public int size() {
        return this.mData.length;
    }

    public String toString() {
        String strD;
        String strH = null;
        int i2 = 0;
        while (true) {
            String key = getKey(i2);
            if (key == null) {
                break;
            }
            String strJ = c.j("{", key);
            String valueAsString = getValueAsString(i2);
            if (valueAsString != null) {
                strD = strJ + "=" + valueAsString + "}";
            } else {
                strD = c.D(strJ, "}");
            }
            strH = strH == null ? strD : m.h(strH, ", ", strD);
            i2++;
        }
        return strH != null ? strH : "";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeByteArray(this.mData);
    }

    public DnsSdTxtRecord(byte[] bArr) {
        this.mData = (byte[]) bArr.clone();
    }

    public DnsSdTxtRecord(DnsSdTxtRecord dnsSdTxtRecord) {
        byte[] bArr;
        if (dnsSdTxtRecord == null || (bArr = dnsSdTxtRecord.mData) == null) {
            return;
        }
        this.mData = (byte[]) bArr.clone();
    }

    private byte[] getValue(String str) {
        int i2 = 0;
        while (true) {
            String key = getKey(i2);
            if (key == null) {
                return null;
            }
            if (str.compareToIgnoreCase(key) == 0) {
                return getValue(i2);
            }
            i2++;
        }
    }
}
