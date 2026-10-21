package android.nfc;

import android.nfc.tech.IsoDep;
import android.nfc.tech.MifareClassic;
import android.nfc.tech.MifareUltralight;
import android.nfc.tech.Ndef;
import android.nfc.tech.NdefFormatable;
import android.nfc.tech.NfcA;
import android.nfc.tech.NfcB;
import android.nfc.tech.NfcBarcode;
import android.nfc.tech.NfcF;
import android.nfc.tech.NfcV;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class Tag implements Parcelable {
    public static final Parcelable.Creator<Tag> CREATOR = new Parcelable.Creator<Tag>() { // from class: android.nfc.Tag.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Tag createFromParcel(Parcel parcel) {
            byte[] bytesWithNull = Tag.readBytesWithNull(parcel);
            int[] iArr = new int[parcel.readInt()];
            parcel.readIntArray(iArr);
            return new Tag(bytesWithNull, iArr, (Bundle[]) parcel.createTypedArray(Bundle.CREATOR), parcel.readInt(), parcel.readInt() == 0 ? INfcTag.Stub.asInterface(parcel.readStrongBinder()) : null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Tag[] newArray(int i2) {
            return new Tag[i2];
        }
    };
    public int mConnectedTechnology;
    public final byte[] mId;
    public final int mServiceHandle;
    public final INfcTag mTagService;
    public final Bundle[] mTechExtras;
    public final int[] mTechList;
    public final String[] mTechStringList;

    public Tag(byte[] bArr, int[] iArr, Bundle[] bundleArr, int i2, INfcTag iNfcTag) {
        if (iArr == null) {
            throw new IllegalArgumentException("rawTargets cannot be null");
        }
        this.mId = bArr;
        this.mTechList = Arrays.copyOf(iArr, iArr.length);
        this.mTechStringList = generateTechStringList(iArr);
        this.mTechExtras = (Bundle[]) Arrays.copyOf(bundleArr, iArr.length);
        this.mServiceHandle = i2;
        this.mTagService = iNfcTag;
        this.mConnectedTechnology = -1;
    }

    public static Tag createMockTag(byte[] bArr, int[] iArr, Bundle[] bundleArr) {
        return new Tag(bArr, iArr, bundleArr, 0, null);
    }

    private String[] generateTechStringList(int[] iArr) {
        int length = iArr.length;
        String[] strArr = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            switch (iArr[i2]) {
                case 1:
                    strArr[i2] = NfcA.class.getName();
                    break;
                case 2:
                    strArr[i2] = NfcB.class.getName();
                    break;
                case 3:
                    strArr[i2] = IsoDep.class.getName();
                    break;
                case 4:
                    strArr[i2] = NfcF.class.getName();
                    break;
                case 5:
                    strArr[i2] = NfcV.class.getName();
                    break;
                case 6:
                    strArr[i2] = Ndef.class.getName();
                    break;
                case 7:
                    strArr[i2] = NdefFormatable.class.getName();
                    break;
                case 8:
                    strArr[i2] = MifareClassic.class.getName();
                    break;
                case 9:
                    strArr[i2] = MifareUltralight.class.getName();
                    break;
                case 10:
                    strArr[i2] = NfcBarcode.class.getName();
                    break;
                default:
                    throw new IllegalArgumentException("Unknown tech type " + iArr[i2]);
            }
        }
        return strArr;
    }

    public static byte[] readBytesWithNull(Parcel parcel) {
        int i2 = parcel.readInt();
        if (i2 < 0) {
            return null;
        }
        byte[] bArr = new byte[i2];
        parcel.readByteArray(bArr);
        return bArr;
    }

    public static void writeBytesWithNull(Parcel parcel, byte[] bArr) {
        if (bArr == null) {
            parcel.writeInt(-1);
        } else {
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getConnectedTechnology() {
        return this.mConnectedTechnology;
    }

    public byte[] getId() {
        return this.mId;
    }

    public int getServiceHandle() {
        return this.mServiceHandle;
    }

    public INfcTag getTagService() {
        return this.mTagService;
    }

    public Bundle getTechExtras(int i2) {
        int i3 = 0;
        while (true) {
            int[] iArr = this.mTechList;
            if (i3 >= iArr.length) {
                i3 = -1;
                break;
            }
            if (iArr[i3] == i2) {
                break;
            }
            i3++;
        }
        if (i3 < 0) {
            return null;
        }
        return this.mTechExtras[i3];
    }

    public String[] getTechList() {
        return this.mTechStringList;
    }

    public boolean hasTech(int i2) {
        for (int i3 : this.mTechList) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }

    public Tag rediscover() throws IOException {
        if (getConnectedTechnology() != -1) {
            throw new IllegalStateException("Close connection to the technology first!");
        }
        INfcTag iNfcTag = this.mTagService;
        if (iNfcTag == null) {
            throw new IOException("Mock tags don't support this operation.");
        }
        try {
            Tag tagRediscover = iNfcTag.rediscover(getServiceHandle());
            if (tagRediscover != null) {
                return tagRediscover;
            }
            throw new IOException("Failed to rediscover tag");
        } catch (RemoteException unused) {
            throw new IOException("NFC service dead");
        }
    }

    public synchronized void setConnectedTechnology(int i2) {
        if (this.mConnectedTechnology != -1) {
            throw new IllegalStateException("Close other technology first!");
        }
        this.mConnectedTechnology = i2;
    }

    public void setTechnologyDisconnected() {
        this.mConnectedTechnology = -1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TAG: Tech [");
        String[] techList = getTechList();
        int length = techList.length;
        for (int i2 = 0; i2 < length; i2++) {
            sb.append(techList[i2]);
            if (i2 < length - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int i3 = this.mTagService == null ? 1 : 0;
        writeBytesWithNull(parcel, this.mId);
        parcel.writeInt(this.mTechList.length);
        parcel.writeIntArray(this.mTechList);
        parcel.writeTypedArray(this.mTechExtras, 0);
        parcel.writeInt(this.mServiceHandle);
        parcel.writeInt(i3);
        if (i3 == 0) {
            parcel.writeStrongBinder(this.mTagService.asBinder());
        }
    }
}
