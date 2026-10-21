package android.content.pm;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.crypto.Mac;

/* JADX INFO: loaded from: classes.dex */
public class MacAuthenticatedInputStream extends FilterInputStream {
    private final Mac mMac;

    public MacAuthenticatedInputStream(InputStream inputStream, Mac mac) {
        super(inputStream);
        this.mMac = mac;
    }

    public boolean isTagEqual(byte[] bArr) {
        byte[] bArrDoFinal = this.mMac.doFinal();
        if (bArr == null || bArrDoFinal == null || bArr.length != bArrDoFinal.length) {
            return false;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i2 |= bArr[i3] ^ bArrDoFinal[i3];
        }
        return i2 == 0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i2 = super.read();
        if (i2 >= 0) {
            this.mMac.update((byte) i2);
        }
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = super.read(bArr, i2, i3);
        if (i4 > 0) {
            this.mMac.update(bArr, i2, i4);
        }
        return i4;
    }
}
