package android.nfc;

/* JADX INFO: loaded from: classes.dex */
public final class NfcEvent {
    public final NfcAdapter nfcAdapter;
    public final int peerLlcpMajorVersion;
    public final int peerLlcpMinorVersion;

    public NfcEvent(NfcAdapter nfcAdapter, byte b2) {
        this.nfcAdapter = nfcAdapter;
        this.peerLlcpMajorVersion = (b2 & 240) >> 4;
        this.peerLlcpMinorVersion = b2 & 15;
    }
}
