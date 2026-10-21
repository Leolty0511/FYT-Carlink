package android.security.keystore;

import android.os.IBinder;
import android.security.KeyStore;
import android.security.keymaster.KeyCharacteristics;
import android.security.keymaster.KeymasterArguments;
import android.security.keymaster.KeymasterDefs;
import java.io.ByteArrayOutputStream;
import java.security.InvalidKeyException;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
abstract class AndroidKeyStoreECDSASignatureSpi extends AndroidKeyStoreSignatureSpiBase {
    private int mGroupSizeBits = -1;
    private final int mKeymasterDigest;

    public static final class NONE extends AndroidKeyStoreECDSASignatureSpi {

        public static class TruncateToFieldSizeMessageStreamer implements KeyStoreCryptoOperationStreamer {
            private long mConsumedInputSizeBytes;
            private final KeyStoreCryptoOperationStreamer mDelegate;
            private final int mGroupSizeBits;
            private final ByteArrayOutputStream mInputBuffer;

            @Override // android.security.keystore.KeyStoreCryptoOperationStreamer
            public byte[] doFinal(byte[] bArr, int i2, int i3, byte[] bArr2, byte[] bArr3) {
                if (i3 > 0) {
                    this.mConsumedInputSizeBytes += (long) i3;
                    this.mInputBuffer.write(bArr, i2, i3);
                }
                byte[] byteArray = this.mInputBuffer.toByteArray();
                this.mInputBuffer.reset();
                return this.mDelegate.doFinal(byteArray, 0, Math.min(byteArray.length, (this.mGroupSizeBits + 7) / 8), bArr2, bArr3);
            }

            @Override // android.security.keystore.KeyStoreCryptoOperationStreamer
            public long getConsumedInputSizeBytes() {
                return this.mConsumedInputSizeBytes;
            }

            @Override // android.security.keystore.KeyStoreCryptoOperationStreamer
            public long getProducedOutputSizeBytes() {
                return this.mDelegate.getProducedOutputSizeBytes();
            }

            @Override // android.security.keystore.KeyStoreCryptoOperationStreamer
            public byte[] update(byte[] bArr, int i2, int i3) {
                if (i3 > 0) {
                    this.mInputBuffer.write(bArr, i2, i3);
                    this.mConsumedInputSizeBytes += (long) i3;
                }
                return EmptyArray.BYTE;
            }

            private TruncateToFieldSizeMessageStreamer(KeyStoreCryptoOperationStreamer keyStoreCryptoOperationStreamer, int i2) {
                this.mInputBuffer = new ByteArrayOutputStream();
                this.mDelegate = keyStoreCryptoOperationStreamer;
                this.mGroupSizeBits = i2;
            }
        }

        public NONE() {
            super(0);
        }

        @Override // android.security.keystore.AndroidKeyStoreSignatureSpiBase
        public KeyStoreCryptoOperationStreamer createMainDataStreamer(KeyStore keyStore, IBinder iBinder) {
            return new TruncateToFieldSizeMessageStreamer(super.createMainDataStreamer(keyStore, iBinder), getGroupSizeBits());
        }
    }

    public static final class SHA1 extends AndroidKeyStoreECDSASignatureSpi {
        public SHA1() {
            super(2);
        }
    }

    public static final class SHA224 extends AndroidKeyStoreECDSASignatureSpi {
        public SHA224() {
            super(3);
        }
    }

    public static final class SHA256 extends AndroidKeyStoreECDSASignatureSpi {
        public SHA256() {
            super(4);
        }
    }

    public static final class SHA384 extends AndroidKeyStoreECDSASignatureSpi {
        public SHA384() {
            super(5);
        }
    }

    public static final class SHA512 extends AndroidKeyStoreECDSASignatureSpi {
        public SHA512() {
            super(6);
        }
    }

    public AndroidKeyStoreECDSASignatureSpi(int i2) {
        this.mKeymasterDigest = i2;
    }

    @Override // android.security.keystore.AndroidKeyStoreSignatureSpiBase
    public final void addAlgorithmSpecificParametersToBegin(KeymasterArguments keymasterArguments) {
        keymasterArguments.addEnum(KeymasterDefs.KM_TAG_ALGORITHM, 3);
        keymasterArguments.addEnum(KeymasterDefs.KM_TAG_DIGEST, this.mKeymasterDigest);
    }

    @Override // android.security.keystore.AndroidKeyStoreSignatureSpiBase
    public final int getAdditionalEntropyAmountForSign() {
        return (this.mGroupSizeBits + 7) / 8;
    }

    public final int getGroupSizeBits() {
        int i2 = this.mGroupSizeBits;
        if (i2 != -1) {
            return i2;
        }
        throw new IllegalStateException("Not initialized");
    }

    @Override // android.security.keystore.AndroidKeyStoreSignatureSpiBase
    public final void initKey(AndroidKeyStoreKey androidKeyStoreKey) throws InvalidKeyException {
        if (!KeyProperties.KEY_ALGORITHM_EC.equalsIgnoreCase(androidKeyStoreKey.getAlgorithm())) {
            throw new InvalidKeyException("Unsupported key algorithm: " + androidKeyStoreKey.getAlgorithm() + ". OnlyEC supported");
        }
        KeyCharacteristics keyCharacteristics = new KeyCharacteristics();
        int keyCharacteristics2 = getKeyStore().getKeyCharacteristics(androidKeyStoreKey.getAlias(), null, null, androidKeyStoreKey.getUid(), keyCharacteristics);
        if (keyCharacteristics2 != 1) {
            throw getKeyStore().getInvalidKeyException(androidKeyStoreKey.getAlias(), androidKeyStoreKey.getUid(), keyCharacteristics2);
        }
        long unsignedInt = keyCharacteristics.getUnsignedInt(KeymasterDefs.KM_TAG_KEY_SIZE, -1L);
        if (unsignedInt == -1) {
            throw new InvalidKeyException("Size of key not known");
        }
        if (unsignedInt <= 2147483647L) {
            this.mGroupSizeBits = (int) unsignedInt;
            super.initKey(androidKeyStoreKey);
        } else {
            throw new InvalidKeyException("Key too large: " + unsignedInt + " bits");
        }
    }

    @Override // android.security.keystore.AndroidKeyStoreSignatureSpiBase
    public final void resetAll() {
        this.mGroupSizeBits = -1;
        super.resetAll();
    }

    @Override // android.security.keystore.AndroidKeyStoreSignatureSpiBase
    public final void resetWhilePreservingInitState() {
        super.resetWhilePreservingInitState();
    }
}
