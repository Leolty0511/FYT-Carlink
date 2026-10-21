package android.nfc;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class TransceiveResult implements Parcelable {
    public static final Parcelable.Creator<TransceiveResult> CREATOR = new Parcelable.Creator<TransceiveResult>() { // from class: android.nfc.TransceiveResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TransceiveResult createFromParcel(Parcel parcel) {
            byte[] bArr;
            int i2 = parcel.readInt();
            if (i2 == 0) {
                bArr = new byte[parcel.readInt()];
                parcel.readByteArray(bArr);
            } else {
                bArr = null;
            }
            return new TransceiveResult(i2, bArr);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TransceiveResult[] newArray(int i2) {
            return new TransceiveResult[i2];
        }
    };
    public static final int RESULT_EXCEEDED_LENGTH = 3;
    public static final int RESULT_FAILURE = 1;
    public static final int RESULT_SUCCESS = 0;
    public static final int RESULT_TAGLOST = 2;
    public final byte[] mResponseData;
    public final int mResult;

    public TransceiveResult(int i2, byte[] bArr) {
        this.mResult = i2;
        this.mResponseData = bArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public byte[] getResponseOrThrow() throws IOException {
        int i2 = this.mResult;
        if (i2 == 0) {
            return this.mResponseData;
        }
        if (i2 == 2) {
            throw new TagLostException("Tag was lost.");
        }
        if (i2 != 3) {
            throw new IOException("Transceive failed");
        }
        throw new IOException("Transceive length exceeds supported maximum");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mResult);
        if (this.mResult == 0) {
            parcel.writeInt(this.mResponseData.length);
            parcel.writeByteArray(this.mResponseData);
        }
    }
}
