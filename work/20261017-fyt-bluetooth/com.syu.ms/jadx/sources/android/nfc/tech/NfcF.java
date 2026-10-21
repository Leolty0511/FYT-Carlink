package android.nfc.tech;

import android.nfc.Tag;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class NfcF extends BasicTagTechnology {
    public static final String EXTRA_PMM = "pmm";
    public static final String EXTRA_SC = "systemcode";
    private static final String TAG = "NFC";
    private byte[] mManufacturer;
    private byte[] mSystemCode;

    public NfcF(Tag tag) {
        super(tag, 4);
        this.mSystemCode = null;
        this.mManufacturer = null;
        Bundle techExtras = tag.getTechExtras(4);
        if (techExtras != null) {
            this.mSystemCode = techExtras.getByteArray(EXTRA_SC);
            this.mManufacturer = techExtras.getByteArray(EXTRA_PMM);
        }
    }

    public static NfcF get(Tag tag) {
        if (!tag.hasTech(4)) {
            return null;
        }
        try {
            return new NfcF(tag);
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

    public byte[] getManufacturer() {
        return this.mManufacturer;
    }

    public int getMaxTransceiveLength() {
        return getMaxTransceiveLengthInternal();
    }

    public byte[] getSystemCode() {
        return this.mSystemCode;
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ Tag getTag() {
        return super.getTag();
    }

    public int getTimeout() {
        try {
            return this.mTag.getTagService().getTimeout(4);
        } catch (RemoteException e2) {
            Log.e("NFC", "NFC service dead", e2);
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
            if (this.mTag.getTagService().setTimeout(4, i2) == 0) {
            } else {
                throw new IllegalArgumentException("The supplied timeout is not valid");
            }
        } catch (RemoteException e2) {
            Log.e("NFC", "NFC service dead", e2);
        }
    }

    public byte[] transceive(byte[] bArr) {
        return transceive(bArr, true);
    }
}
