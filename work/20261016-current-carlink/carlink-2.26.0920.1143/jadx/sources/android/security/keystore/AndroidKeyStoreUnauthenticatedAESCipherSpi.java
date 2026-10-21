package android.security.keystore;

import android.security.keymaster.KeymasterArguments;
import android.security.keymaster.KeymasterDefs;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.ProviderException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.Arrays;
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: loaded from: classes.dex */
class AndroidKeyStoreUnauthenticatedAESCipherSpi extends AndroidKeyStoreCipherSpiBase {
    private static final int BLOCK_SIZE_BYTES = 16;
    private byte[] mIv;
    private boolean mIvHasBeenUsed;
    private final boolean mIvRequired;
    private final int mKeymasterBlockMode;
    private final int mKeymasterPadding;

    public static abstract class CBC extends AndroidKeyStoreUnauthenticatedAESCipherSpi {

        public static class NoPadding extends CBC {
            public NoPadding() {
                super(1);
            }

            @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
            public /* bridge */ /* synthetic */ void finalize() throws Throwable {
                super.finalize();
            }
        }

        public static class PKCS7Padding extends CBC {
            public PKCS7Padding() {
                super(64);
            }

            @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
            public /* bridge */ /* synthetic */ void finalize() throws Throwable {
                super.finalize();
            }
        }

        public CBC(int i2) {
            super(2, i2, true);
        }
    }

    public static abstract class CTR extends AndroidKeyStoreUnauthenticatedAESCipherSpi {

        public static class NoPadding extends CTR {
            public NoPadding() {
                super(1);
            }

            @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
            public /* bridge */ /* synthetic */ void finalize() throws Throwable {
                super.finalize();
            }
        }

        public CTR(int i2) {
            super(3, i2, true);
        }
    }

    public static abstract class ECB extends AndroidKeyStoreUnauthenticatedAESCipherSpi {

        public static class NoPadding extends ECB {
            public NoPadding() {
                super(1);
            }

            @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
            public /* bridge */ /* synthetic */ void finalize() throws Throwable {
                super.finalize();
            }
        }

        public static class PKCS7Padding extends ECB {
            public PKCS7Padding() {
                super(64);
            }

            @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
            public /* bridge */ /* synthetic */ void finalize() throws Throwable {
                super.finalize();
            }
        }

        public ECB(int i2) {
            super(1, i2, false);
        }
    }

    public AndroidKeyStoreUnauthenticatedAESCipherSpi(int i2, int i3, boolean z2) {
        this.mKeymasterBlockMode = i2;
        this.mKeymasterPadding = i3;
        this.mIvRequired = z2;
    }

    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
    public final void addAlgorithmSpecificParametersToBegin(KeymasterArguments keymasterArguments) {
        byte[] bArr;
        if (isEncrypting() && this.mIvRequired && this.mIvHasBeenUsed) {
            throw new IllegalStateException("IV has already been used. Reusing IV in encryption mode violates security best practices.");
        }
        keymasterArguments.addEnum(KeymasterDefs.KM_TAG_ALGORITHM, 32);
        keymasterArguments.addEnum(KeymasterDefs.KM_TAG_BLOCK_MODE, this.mKeymasterBlockMode);
        keymasterArguments.addEnum(KeymasterDefs.KM_TAG_PADDING, this.mKeymasterPadding);
        if (!this.mIvRequired || (bArr = this.mIv) == null) {
            return;
        }
        keymasterArguments.addBytes(KeymasterDefs.KM_TAG_NONCE, bArr);
    }

    @Override // javax.crypto.CipherSpi
    public final int engineGetBlockSize() {
        return 16;
    }

    @Override // javax.crypto.CipherSpi
    public final byte[] engineGetIV() {
        return ArrayUtils.cloneIfNotEmpty(this.mIv);
    }

    @Override // javax.crypto.CipherSpi
    public final int engineGetOutputSize(int i2) {
        return i2 + 48;
    }

    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase, javax.crypto.CipherSpi
    public final AlgorithmParameters engineGetParameters() {
        byte[] bArr;
        if (!this.mIvRequired || (bArr = this.mIv) == null || bArr.length <= 0) {
            return null;
        }
        try {
            AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(KeyProperties.KEY_ALGORITHM_AES);
            algorithmParameters.init(new IvParameterSpec(this.mIv));
            return algorithmParameters;
        } catch (NoSuchAlgorithmException e2) {
            throw new ProviderException("Failed to obtain AES AlgorithmParameters", e2);
        } catch (InvalidParameterSpecException e3) {
            throw new ProviderException("Failed to initialize AES AlgorithmParameters with an IV", e3);
        }
    }

    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
    public final int getAdditionalEntropyAmountForBegin() {
        return (this.mIvRequired && this.mIv == null && isEncrypting()) ? 16 : 0;
    }

    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
    public final int getAdditionalEntropyAmountForFinish() {
        return 0;
    }

    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
    public final void initAlgorithmSpecificParameters() throws InvalidKeyException {
        if (this.mIvRequired && !isEncrypting()) {
            throw new InvalidKeyException("IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it.");
        }
    }

    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
    public final void initKey(int i2, Key key) throws InvalidKeyException {
        if (!(key instanceof AndroidKeyStoreSecretKey)) {
            throw new InvalidKeyException("Unsupported key: ".concat(key != null ? key.getClass().getName() : "null"));
        }
        if (KeyProperties.KEY_ALGORITHM_AES.equalsIgnoreCase(key.getAlgorithm())) {
            setKey((AndroidKeyStoreSecretKey) key);
            return;
        }
        throw new InvalidKeyException("Unsupported key algorithm: " + key.getAlgorithm() + ". Only AES supported");
    }

    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
    public final void loadAlgorithmSpecificParametersFromBeginResult(KeymasterArguments keymasterArguments) {
        this.mIvHasBeenUsed = true;
        byte[] bytes = keymasterArguments.getBytes(KeymasterDefs.KM_TAG_NONCE, null);
        byte[] bArr = (bytes == null || bytes.length != 0) ? bytes : null;
        if (!this.mIvRequired) {
            if (bArr != null) {
                throw new ProviderException("IV in use despite IV not being used by this transformation");
            }
            return;
        }
        byte[] bArr2 = this.mIv;
        if (bArr2 == null) {
            this.mIv = bArr;
        } else if (bArr != null && !Arrays.equals(bArr, bArr2)) {
            throw new ProviderException("IV in use differs from provided IV");
        }
    }

    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
    public final void resetAll() {
        this.mIv = null;
        this.mIvHasBeenUsed = false;
        super.resetAll();
    }

    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
    public final void resetWhilePreservingInitState() {
        super.resetWhilePreservingInitState();
    }

    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
    public final void initAlgorithmSpecificParameters(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
        if (!this.mIvRequired) {
            if (algorithmParameterSpec == null) {
                return;
            }
            throw new InvalidAlgorithmParameterException("Unsupported parameters: " + algorithmParameterSpec);
        }
        if (algorithmParameterSpec == null) {
            if (!isEncrypting()) {
                throw new InvalidAlgorithmParameterException("IvParameterSpec must be provided when decrypting");
            }
        } else {
            if (algorithmParameterSpec instanceof IvParameterSpec) {
                byte[] iv = ((IvParameterSpec) algorithmParameterSpec).getIV();
                this.mIv = iv;
                if (iv == null) {
                    throw new InvalidAlgorithmParameterException("Null IV in IvParameterSpec");
                }
                return;
            }
            throw new InvalidAlgorithmParameterException("Only IvParameterSpec supported");
        }
    }

    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
    public final void initAlgorithmSpecificParameters(AlgorithmParameters algorithmParameters) throws InvalidAlgorithmParameterException {
        if (!this.mIvRequired) {
            if (algorithmParameters == null) {
                return;
            }
            throw new InvalidAlgorithmParameterException("Unsupported parameters: " + algorithmParameters);
        }
        if (algorithmParameters == null) {
            if (!isEncrypting()) {
                throw new InvalidAlgorithmParameterException("IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it.");
            }
            return;
        }
        if (KeyProperties.KEY_ALGORITHM_AES.equalsIgnoreCase(algorithmParameters.getAlgorithm())) {
            try {
                byte[] iv = ((IvParameterSpec) algorithmParameters.getParameterSpec(IvParameterSpec.class)).getIV();
                this.mIv = iv;
                if (iv == null) {
                    throw new InvalidAlgorithmParameterException("Null IV in AlgorithmParameters");
                }
                return;
            } catch (InvalidParameterSpecException e2) {
                if (isEncrypting()) {
                    this.mIv = null;
                    return;
                } else {
                    throw new InvalidAlgorithmParameterException("IV required when decrypting, but not found in parameters: " + algorithmParameters, e2);
                }
            }
        }
        throw new InvalidAlgorithmParameterException("Unsupported AlgorithmParameters algorithm: " + algorithmParameters.getAlgorithm() + ". Supported: AES");
    }
}
