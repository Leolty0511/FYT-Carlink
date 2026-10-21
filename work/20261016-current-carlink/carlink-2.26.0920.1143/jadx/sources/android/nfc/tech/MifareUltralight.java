package android.nfc.tech;

import android.accessibilityservice.c;
import android.nfc.Tag;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class MifareUltralight extends BasicTagTechnology {
    public static final String EXTRA_IS_UL_C = "isulc";
    private static final int MAX_PAGE_COUNT = 256;
    private static final int NXP_MANUFACTURER_ID = 4;
    public static final int PAGE_SIZE = 4;
    private static final String TAG = "NFC";
    public static final int TYPE_ULTRALIGHT = 1;
    public static final int TYPE_ULTRALIGHT_C = 2;
    public static final int TYPE_UNKNOWN = -1;
    private int mType;

    public MifareUltralight(Tag tag) {
        super(tag, 9);
        NfcA nfcA = NfcA.get(tag);
        this.mType = -1;
        if (nfcA.getSak() == 0 && tag.getId()[0] == 4) {
            if (tag.getTechExtras(9).getBoolean(EXTRA_IS_UL_C)) {
                this.mType = 2;
            } else {
                this.mType = 1;
            }
        }
    }

    public static MifareUltralight get(Tag tag) {
        if (!tag.hasTech(9)) {
            return null;
        }
        try {
            return new MifareUltralight(tag);
        } catch (RemoteException unused) {
            return null;
        }
    }

    private static void validatePageIndex(int i2) {
        if (i2 < 0 || i2 >= 256) {
            throw new IndexOutOfBoundsException(c.d("page out of bounds: ", i2));
        }
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology, java.io.Closeable, java.lang.AutoCloseable
    public /* bridge */ /* synthetic */ void close() {
        super.close();
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ void connect() {
        super.connect();
    }

    public int getMaxTransceiveLength() {
        return getMaxTransceiveLengthInternal();
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ Tag getTag() {
        return super.getTag();
    }

    public int getTimeout() {
        try {
            return this.mTag.getTagService().getTimeout(9);
        } catch (RemoteException e2) {
            Log.e(TAG, "NFC service dead", e2);
            return 0;
        }
    }

    public int getType() {
        return this.mType;
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ boolean isConnected() {
        return super.isConnected();
    }

    public byte[] readPages(int i2) {
        validatePageIndex(i2);
        checkConnected();
        return transceive(new byte[]{48, (byte) i2}, false);
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ void reconnect() {
        super.reconnect();
    }

    public void setTimeout(int i2) {
        try {
            if (this.mTag.getTagService().setTimeout(9, i2) == 0) {
            } else {
                throw new IllegalArgumentException("The supplied timeout is not valid");
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "NFC service dead", e2);
        }
    }

    public byte[] transceive(byte[] bArr) {
        return transceive(bArr, true);
    }

    public void writePage(int i2, byte[] bArr) {
        validatePageIndex(i2);
        checkConnected();
        byte[] bArr2 = new byte[bArr.length + 2];
        bArr2[0] = -94;
        bArr2[1] = (byte) i2;
        System.arraycopy(bArr, 0, bArr2, 2, bArr.length);
        transceive(bArr2, false);
    }
}
