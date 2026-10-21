package android.nfc.tech;

import android.nfc.Tag;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class NfcA extends BasicTagTechnology {
    public static final String EXTRA_ATQA = "atqa";
    public static final String EXTRA_SAK = "sak";
    private static final String TAG = "NFC";
    private byte[] mAtqa;
    private short mSak;

    public NfcA(Tag tag) {
        super(tag, 1);
        Bundle techExtras = tag.getTechExtras(1);
        this.mSak = techExtras.getShort(EXTRA_SAK);
        this.mAtqa = techExtras.getByteArray(EXTRA_ATQA);
    }

    public static NfcA get(Tag tag) {
        if (!tag.hasTech(1)) {
            return null;
        }
        try {
            return new NfcA(tag);
        } catch (RemoteException unused) {
            return null;
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

    public byte[] getAtqa() {
        return this.mAtqa;
    }

    public int getMaxTransceiveLength() {
        return getMaxTransceiveLengthInternal();
    }

    public short getSak() {
        return this.mSak;
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ Tag getTag() {
        return super.getTag();
    }

    public int getTimeout() {
        try {
            return this.mTag.getTagService().getTimeout(1);
        } catch (RemoteException e2) {
            Log.e(TAG, "NFC service dead", e2);
            return 0;
        }
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ boolean isConnected() {
        return super.isConnected();
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ void reconnect() {
        super.reconnect();
    }

    public void setTimeout(int i2) {
        try {
            if (this.mTag.getTagService().setTimeout(1, i2) == 0) {
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
}
