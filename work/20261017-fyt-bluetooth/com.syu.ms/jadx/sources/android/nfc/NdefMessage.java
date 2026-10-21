package android.nfc;

import android.os.Parcel;
import android.os.Parcelable;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class NdefMessage implements Parcelable {
    public static final Parcelable.Creator<NdefMessage> CREATOR = new Parcelable.Creator<NdefMessage>() { // from class: android.nfc.NdefMessage.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NdefMessage createFromParcel(Parcel parcel) {
            NdefRecord[] ndefRecordArr = new NdefRecord[parcel.readInt()];
            parcel.readTypedArray(ndefRecordArr, NdefRecord.CREATOR);
            return new NdefMessage(ndefRecordArr);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NdefMessage[] newArray(int i2) {
            return new NdefMessage[i2];
        }
    };
    private final NdefRecord[] mRecords;

    public NdefMessage(byte[] bArr) throws FormatException {
        Objects.requireNonNull(bArr, "data is null");
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        this.mRecords = NdefRecord.parse(byteBufferWrap, false);
        if (byteBufferWrap.remaining() > 0) {
            throw new FormatException("trailing data");
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
        if (obj != null && NdefMessage.class == obj.getClass()) {
            return Arrays.equals(this.mRecords, ((NdefMessage) obj).mRecords);
        }
        return false;
    }

    public int getByteArrayLength() {
        int byteLength = 0;
        for (NdefRecord ndefRecord : this.mRecords) {
            byteLength += ndefRecord.getByteLength();
        }
        return byteLength;
    }

    public NdefRecord[] getRecords() {
        return this.mRecords;
    }

    public int hashCode() {
        return Arrays.hashCode(this.mRecords);
    }

    public byte[] toByteArray() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(getByteArrayLength());
        int i2 = 0;
        while (true) {
            NdefRecord[] ndefRecordArr = this.mRecords;
            if (i2 >= ndefRecordArr.length) {
                return byteBufferAllocate.array();
            }
            boolean z2 = true;
            boolean z3 = i2 == 0;
            if (i2 != ndefRecordArr.length - 1) {
                z2 = false;
            }
            ndefRecordArr[i2].writeToByteBuffer(byteBufferAllocate, z3, z2);
            i2++;
        }
    }

    public String toString() {
        return "NdefMessage " + Arrays.toString(this.mRecords);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mRecords.length);
        parcel.writeTypedArray(this.mRecords, i2);
    }

    public NdefMessage(NdefRecord ndefRecord, NdefRecord... ndefRecordArr) {
        Objects.requireNonNull(ndefRecord, "record cannot be null");
        for (NdefRecord ndefRecord2 : ndefRecordArr) {
            Objects.requireNonNull(ndefRecord2, "record cannot be null");
        }
        NdefRecord[] ndefRecordArr2 = new NdefRecord[ndefRecordArr.length + 1];
        this.mRecords = ndefRecordArr2;
        ndefRecordArr2[0] = ndefRecord;
        System.arraycopy(ndefRecordArr, 0, ndefRecordArr2, 1, ndefRecordArr.length);
    }

    public NdefMessage(NdefRecord[] ndefRecordArr) {
        if (ndefRecordArr.length >= 1) {
            for (NdefRecord ndefRecord : ndefRecordArr) {
                Objects.requireNonNull(ndefRecord, "records cannot contain null");
            }
            this.mRecords = ndefRecordArr;
            return;
        }
        throw new IllegalArgumentException("must have at least one record");
    }
}
