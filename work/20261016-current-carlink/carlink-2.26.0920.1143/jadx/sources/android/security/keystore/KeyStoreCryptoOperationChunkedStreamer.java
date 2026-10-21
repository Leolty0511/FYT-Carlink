package android.security.keystore;

import android.accessibilityservice.c;
import android.os.IBinder;
import android.security.KeyStore;
import android.security.KeyStoreException;
import android.security.keymaster.OperationResult;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.ProviderException;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
class KeyStoreCryptoOperationChunkedStreamer implements KeyStoreCryptoOperationStreamer {
    private static final int DEFAULT_MAX_CHUNK_SIZE = 65536;
    private byte[] mBuffered;
    private int mBufferedLength;
    private int mBufferedOffset;
    private long mConsumedInputSizeBytes;
    private final Stream mKeyStoreStream;
    private final int mMaxChunkSize;
    private long mProducedOutputSizeBytes;

    public static class MainDataStream implements Stream {
        private final KeyStore mKeyStore;
        private final IBinder mOperationToken;

        public MainDataStream(KeyStore keyStore, IBinder iBinder) {
            this.mKeyStore = keyStore;
            this.mOperationToken = iBinder;
        }

        @Override // android.security.keystore.KeyStoreCryptoOperationChunkedStreamer.Stream
        public OperationResult finish(byte[] bArr, byte[] bArr2) {
            return this.mKeyStore.finish(this.mOperationToken, null, bArr, bArr2);
        }

        @Override // android.security.keystore.KeyStoreCryptoOperationChunkedStreamer.Stream
        public OperationResult update(byte[] bArr) {
            return this.mKeyStore.update(this.mOperationToken, null, bArr);
        }
    }

    public interface Stream {
        OperationResult finish(byte[] bArr, byte[] bArr2);

        OperationResult update(byte[] bArr);
    }

    public KeyStoreCryptoOperationChunkedStreamer(Stream stream) {
        this(stream, 65536);
    }

    @Override // android.security.keystore.KeyStoreCryptoOperationStreamer
    public byte[] doFinal(byte[] bArr, int i2, int i3, byte[] bArr2, byte[] bArr3) throws KeyStoreException {
        if (i3 == 0) {
            bArr = EmptyArray.BYTE;
            i2 = 0;
        }
        byte[] bArrConcat = ArrayUtils.concat(update(bArr, i2, i3), flush());
        OperationResult operationResultFinish = this.mKeyStoreStream.finish(bArr2, bArr3);
        if (operationResultFinish == null) {
            throw new KeyStoreConnectException();
        }
        int i4 = operationResultFinish.resultCode;
        if (i4 != 1) {
            throw KeyStore.getKeyStoreException(i4);
        }
        long j2 = this.mProducedOutputSizeBytes;
        byte[] bArr4 = operationResultFinish.output;
        this.mProducedOutputSizeBytes = j2 + ((long) bArr4.length);
        return ArrayUtils.concat(bArrConcat, bArr4);
    }

    public byte[] flush() throws KeyStoreException {
        if (this.mBufferedLength <= 0) {
            return EmptyArray.BYTE;
        }
        ByteArrayOutputStream byteArrayOutputStream = null;
        while (true) {
            int i2 = this.mBufferedLength;
            if (i2 <= 0) {
                break;
            }
            byte[] bArrSubarray = ArrayUtils.subarray(this.mBuffered, this.mBufferedOffset, i2);
            OperationResult operationResultUpdate = this.mKeyStoreStream.update(bArrSubarray);
            if (operationResultUpdate == null) {
                throw new KeyStoreConnectException();
            }
            int i3 = operationResultUpdate.resultCode;
            if (i3 != 1) {
                throw KeyStore.getKeyStoreException(i3);
            }
            int i4 = operationResultUpdate.inputConsumed;
            if (i4 <= 0) {
                break;
            }
            if (i4 >= bArrSubarray.length) {
                this.mBuffered = EmptyArray.BYTE;
                this.mBufferedOffset = 0;
                this.mBufferedLength = 0;
            } else {
                this.mBuffered = bArrSubarray;
                this.mBufferedOffset = i4;
                this.mBufferedLength = bArrSubarray.length - i4;
            }
            if (operationResultUpdate.inputConsumed > bArrSubarray.length) {
                throw new KeyStoreException(-1000, "Keystore consumed more input than provided. Provided: " + bArrSubarray.length + ", consumed: " + operationResultUpdate.inputConsumed);
            }
            byte[] bArr = operationResultUpdate.output;
            if (bArr != null && bArr.length > 0) {
                if (byteArrayOutputStream == null) {
                    if (this.mBufferedLength == 0) {
                        this.mProducedOutputSizeBytes += (long) bArr.length;
                        return bArr;
                    }
                    byteArrayOutputStream = new ByteArrayOutputStream();
                }
                try {
                    byteArrayOutputStream.write(operationResultUpdate.output);
                } catch (IOException e2) {
                    throw new ProviderException("Failed to buffer output", e2);
                }
            }
        }
        if (this.mBufferedLength > 0) {
            throw new KeyStoreException(-21, c.n(new StringBuilder("Keystore failed to consume last "), this.mBufferedLength != 1 ? c.m(new StringBuilder(), this.mBufferedLength, " bytes") : "byte", " of input"));
        }
        byte[] byteArray = byteArrayOutputStream != null ? byteArrayOutputStream.toByteArray() : EmptyArray.BYTE;
        this.mProducedOutputSizeBytes += (long) byteArray.length;
        return byteArray;
    }

    @Override // android.security.keystore.KeyStoreCryptoOperationStreamer
    public long getConsumedInputSizeBytes() {
        return this.mConsumedInputSizeBytes;
    }

    @Override // android.security.keystore.KeyStoreCryptoOperationStreamer
    public long getProducedOutputSizeBytes() {
        return this.mProducedOutputSizeBytes;
    }

    @Override // android.security.keystore.KeyStoreCryptoOperationStreamer
    public byte[] update(byte[] bArr, int i2, int i3) throws KeyStoreException {
        byte[] bArrConcat;
        int length;
        if (i3 == 0) {
            return EmptyArray.BYTE;
        }
        ByteArrayOutputStream byteArrayOutputStream = null;
        while (i3 > 0) {
            int i4 = this.mBufferedLength;
            int i5 = i4 + i3;
            int i6 = this.mMaxChunkSize;
            if (i5 > i6) {
                length = i6 - i4;
                bArrConcat = ArrayUtils.concat(this.mBuffered, this.mBufferedOffset, i4, bArr, i2, length);
            } else if (i4 == 0 && i2 == 0 && i3 == bArr.length) {
                length = bArr.length;
                bArrConcat = bArr;
            } else {
                bArrConcat = ArrayUtils.concat(this.mBuffered, this.mBufferedOffset, i4, bArr, i2, i3);
                length = i3;
            }
            i2 += length;
            i3 -= length;
            this.mConsumedInputSizeBytes += (long) length;
            OperationResult operationResultUpdate = this.mKeyStoreStream.update(bArrConcat);
            if (operationResultUpdate == null) {
                throw new KeyStoreConnectException();
            }
            int i7 = operationResultUpdate.resultCode;
            if (i7 != 1) {
                throw KeyStore.getKeyStoreException(i7);
            }
            int i8 = operationResultUpdate.inputConsumed;
            if (i8 == bArrConcat.length) {
                this.mBuffered = EmptyArray.BYTE;
                this.mBufferedOffset = 0;
                this.mBufferedLength = 0;
            } else if (i8 <= 0) {
                if (i3 > 0) {
                    throw new KeyStoreException(-1000, c.m(new StringBuilder("Keystore consumed nothing from max-sized chunk: "), bArrConcat.length, " bytes"));
                }
                this.mBuffered = bArrConcat;
                this.mBufferedOffset = 0;
                this.mBufferedLength = bArrConcat.length;
            } else {
                if (i8 >= bArrConcat.length) {
                    throw new KeyStoreException(-1000, "Keystore consumed more input than provided. Provided: " + bArrConcat.length + ", consumed: " + operationResultUpdate.inputConsumed);
                }
                this.mBuffered = bArrConcat;
                this.mBufferedOffset = i8;
                this.mBufferedLength = bArrConcat.length - i8;
            }
            byte[] byteArray = operationResultUpdate.output;
            if (byteArray != null && byteArray.length > 0) {
                if (i3 <= 0) {
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.write(byteArray);
                            byteArray = byteArrayOutputStream.toByteArray();
                        } catch (IOException e2) {
                            throw new ProviderException("Failed to buffer output", e2);
                        }
                    }
                    this.mProducedOutputSizeBytes += (long) byteArray.length;
                    return byteArray;
                }
                if (byteArrayOutputStream == null) {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        byteArrayOutputStream.write(operationResultUpdate.output);
                    } catch (IOException e3) {
                        throw new ProviderException("Failed to buffer output", e3);
                    }
                } else {
                    continue;
                }
            }
        }
        byte[] byteArray2 = byteArrayOutputStream == null ? EmptyArray.BYTE : byteArrayOutputStream.toByteArray();
        this.mProducedOutputSizeBytes += (long) byteArray2.length;
        return byteArray2;
    }

    public KeyStoreCryptoOperationChunkedStreamer(Stream stream, int i2) {
        this.mBuffered = EmptyArray.BYTE;
        this.mKeyStoreStream = stream;
        this.mMaxChunkSize = i2;
    }
}
