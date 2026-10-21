package android.nfc.tech;

import android.nfc.Tag;
import android.os.Bundle;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class NfcB extends BasicTagTechnology {
    public static final String EXTRA_APPDATA = "appdata";
    public static final String EXTRA_PROTINFO = "protinfo";
    private byte[] mAppData;
    private byte[] mProtInfo;

    public NfcB(Tag tag) {
        super(tag, 2);
        Bundle techExtras = tag.getTechExtras(2);
        this.mAppData = techExtras.getByteArray(EXTRA_APPDATA);
        this.mProtInfo = techExtras.getByteArray(EXTRA_PROTINFO);
    }

    public static NfcB get(Tag tag) {
        if (!tag.hasTech(2)) {
            return null;
        }
        try {
            return new NfcB(tag);
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

    public byte[] getApplicationData() {
        return this.mAppData;
    }

    public int getMaxTransceiveLength() {
        return getMaxTransceiveLengthInternal();
    }

    public byte[] getProtocolInfo() {
        return this.mProtInfo;
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ Tag getTag() {
        return super.getTag();
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ boolean isConnected() {
        return super.isConnected();
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ void reconnect() {
        super.reconnect();
    }

    public byte[] transceive(byte[] bArr) {
        return transceive(bArr, true);
    }
}
