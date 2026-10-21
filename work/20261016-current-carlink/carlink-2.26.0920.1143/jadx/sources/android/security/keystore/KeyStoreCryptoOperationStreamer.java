package android.security.keystore;

/* JADX INFO: loaded from: classes.dex */
interface KeyStoreCryptoOperationStreamer {
    byte[] doFinal(byte[] bArr, int i2, int i3, byte[] bArr2, byte[] bArr3);

    long getConsumedInputSizeBytes();

    long getProducedOutputSizeBytes();

    byte[] update(byte[] bArr, int i2, int i3);
}
