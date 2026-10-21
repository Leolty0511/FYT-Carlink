package android.security.keymaster;

import android.accessibilityservice.c;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
class KeymasterBlobArgument extends KeymasterArgument {
    public final byte[] blob;

    public KeymasterBlobArgument(int i2, byte[] bArr) {
        super(i2);
        int tagType = KeymasterDefs.getTagType(i2);
        if (tagType != Integer.MIN_VALUE && tagType != -1879048192) {
            throw new IllegalArgumentException(c.d("Bad blob tag ", i2));
        }
        this.blob = bArr;
    }

    @Override // android.security.keymaster.KeymasterArgument
    public void writeValue(Parcel parcel) {
        parcel.writeByteArray(this.blob);
    }

    public KeymasterBlobArgument(int i2, Parcel parcel) {
        super(i2);
        this.blob = parcel.createByteArray();
    }
}
