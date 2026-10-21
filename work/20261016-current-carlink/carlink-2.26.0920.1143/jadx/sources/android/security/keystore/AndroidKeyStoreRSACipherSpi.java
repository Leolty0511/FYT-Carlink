package android.security.keystore;

import android.accessibilityservice.c;
import android.security.keymaster.KeyCharacteristics;
import android.security.keymaster.KeymasterArguments;
import android.security.keymaster.KeymasterDefs;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.ProviderException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;

/* JADX INFO: loaded from: classes.dex */
abstract class AndroidKeyStoreRSACipherSpi extends AndroidKeyStoreCipherSpiBase {
    private final int mKeymasterPadding;
    private int mKeymasterPaddingOverride;
    private int mModulusSizeBytes = -1;

    public static final class NoPadding extends AndroidKeyStoreRSACipherSpi {
        public NoPadding() {
            super(1);
        }

        @Override // android.security.keystore.AndroidKeyStoreRSACipherSpi
        public boolean adjustConfigForEncryptingWithPrivateKey() {
            setKeymasterPurposeOverride(2);
            return true;
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase, javax.crypto.CipherSpi
        public AlgorithmParameters engineGetParameters() {
            return null;
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public /* bridge */ /* synthetic */ void finalize() throws Throwable {
            super.finalize();
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public final int getAdditionalEntropyAmountForBegin() {
            return 0;
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public final int getAdditionalEntropyAmountForFinish() {
            return 0;
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public void initAlgorithmSpecificParameters() {
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public void initAlgorithmSpecificParameters(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
            if (algorithmParameterSpec == null) {
                return;
            }
            throw new InvalidAlgorithmParameterException("Unexpected parameters: " + algorithmParameterSpec + ". No parameters supported");
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public void initAlgorithmSpecificParameters(AlgorithmParameters algorithmParameters) throws InvalidAlgorithmParameterException {
            if (algorithmParameters == null) {
                return;
            }
            throw new InvalidAlgorithmParameterException("Unexpected parameters: " + algorithmParameters + ". No parameters supported");
        }
    }

    public static abstract class OAEPWithMGF1Padding extends AndroidKeyStoreRSACipherSpi {
        private static final String MGF_ALGORITGM_MGF1 = "MGF1";
        private int mDigestOutputSizeBytes;
        private int mKeymasterDigest;

        public OAEPWithMGF1Padding(int i2) {
            super(2);
            this.mKeymasterDigest = i2;
            this.mDigestOutputSizeBytes = (KeymasterUtils.getDigestOutputSizeBits(i2) + 7) / 8;
        }

        @Override // android.security.keystore.AndroidKeyStoreRSACipherSpi, android.security.keystore.AndroidKeyStoreCipherSpiBase
        public final void addAlgorithmSpecificParametersToBegin(KeymasterArguments keymasterArguments) {
            super.addAlgorithmSpecificParametersToBegin(keymasterArguments);
            keymasterArguments.addEnum(KeymasterDefs.KM_TAG_DIGEST, this.mKeymasterDigest);
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase, javax.crypto.CipherSpi
        public final AlgorithmParameters engineGetParameters() {
            OAEPParameterSpec oAEPParameterSpec = new OAEPParameterSpec(KeyProperties.Digest.fromKeymaster(this.mKeymasterDigest), MGF_ALGORITGM_MGF1, MGF1ParameterSpec.SHA1, PSource.PSpecified.DEFAULT);
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("OAEP");
                algorithmParameters.init(oAEPParameterSpec);
                return algorithmParameters;
            } catch (NoSuchAlgorithmException e2) {
                throw new ProviderException("Failed to obtain OAEP AlgorithmParameters", e2);
            } catch (InvalidParameterSpecException e3) {
                throw new ProviderException("Failed to initialize OAEP AlgorithmParameters with an IV", e3);
            }
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public final int getAdditionalEntropyAmountForBegin() {
            return 0;
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public final int getAdditionalEntropyAmountForFinish() {
            if (isEncrypting()) {
                return this.mDigestOutputSizeBytes;
            }
            return 0;
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public final void initAlgorithmSpecificParameters() {
        }

        @Override // android.security.keystore.AndroidKeyStoreRSACipherSpi, android.security.keystore.AndroidKeyStoreCipherSpiBase
        public final void loadAlgorithmSpecificParametersFromBeginResult(KeymasterArguments keymasterArguments) {
            super.loadAlgorithmSpecificParametersFromBeginResult(keymasterArguments);
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public final void initAlgorithmSpecificParameters(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
            if (algorithmParameterSpec == null) {
                return;
            }
            if (!(algorithmParameterSpec instanceof OAEPParameterSpec)) {
                throw new InvalidAlgorithmParameterException("Unsupported parameter spec: " + algorithmParameterSpec + ". Only OAEPParameterSpec supported");
            }
            OAEPParameterSpec oAEPParameterSpec = (OAEPParameterSpec) algorithmParameterSpec;
            if (!MGF_ALGORITGM_MGF1.equalsIgnoreCase(oAEPParameterSpec.getMGFAlgorithm())) {
                throw new InvalidAlgorithmParameterException("Unsupported MGF: " + oAEPParameterSpec.getMGFAlgorithm() + ". Only MGF1 supported");
            }
            String digestAlgorithm = oAEPParameterSpec.getDigestAlgorithm();
            try {
                int keymaster = KeyProperties.Digest.toKeymaster(digestAlgorithm);
                if (keymaster != 2 && keymaster != 3 && keymaster != 4 && keymaster != 5 && keymaster != 6) {
                    throw new InvalidAlgorithmParameterException(c.j("Unsupported digest: ", digestAlgorithm));
                }
                AlgorithmParameterSpec mGFParameters = oAEPParameterSpec.getMGFParameters();
                if (mGFParameters == null) {
                    throw new InvalidAlgorithmParameterException("MGF parameters must be provided");
                }
                if (!(mGFParameters instanceof MGF1ParameterSpec)) {
                    throw new InvalidAlgorithmParameterException("Unsupported MGF parameters: " + mGFParameters + ". Only MGF1ParameterSpec supported");
                }
                String digestAlgorithm2 = ((MGF1ParameterSpec) mGFParameters).getDigestAlgorithm();
                if (!KeyProperties.DIGEST_SHA1.equalsIgnoreCase(digestAlgorithm2)) {
                    throw new InvalidAlgorithmParameterException(c.k("Unsupported MGF1 digest: ", digestAlgorithm2, ". Only SHA-1 supported"));
                }
                PSource pSource = oAEPParameterSpec.getPSource();
                if (!(pSource instanceof PSource.PSpecified)) {
                    throw new InvalidAlgorithmParameterException("Unsupported source of encoding input P: " + pSource + ". Only pSpecifiedEmpty (PSource.PSpecified.DEFAULT) supported");
                }
                byte[] value = ((PSource.PSpecified) pSource).getValue();
                if (value == null || value.length <= 0) {
                    this.mKeymasterDigest = keymaster;
                    this.mDigestOutputSizeBytes = (KeymasterUtils.getDigestOutputSizeBits(keymaster) + 7) / 8;
                } else {
                    throw new InvalidAlgorithmParameterException("Unsupported source of encoding input P: " + pSource + ". Only pSpecifiedEmpty (PSource.PSpecified.DEFAULT) supported");
                }
            } catch (IllegalArgumentException e2) {
                throw new InvalidAlgorithmParameterException(c.j("Unsupported digest: ", digestAlgorithm), e2);
            }
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public final void initAlgorithmSpecificParameters(AlgorithmParameters algorithmParameters) throws InvalidAlgorithmParameterException {
            if (algorithmParameters == null) {
                return;
            }
            try {
                OAEPParameterSpec oAEPParameterSpec = (OAEPParameterSpec) algorithmParameters.getParameterSpec(OAEPParameterSpec.class);
                if (oAEPParameterSpec != null) {
                    initAlgorithmSpecificParameters(oAEPParameterSpec);
                } else {
                    throw new InvalidAlgorithmParameterException("OAEP parameters required, but not provided in parameters: " + algorithmParameters);
                }
            } catch (InvalidParameterSpecException e2) {
                throw new InvalidAlgorithmParameterException("OAEP parameters required, but not found in parameters: " + algorithmParameters, e2);
            }
        }
    }

    public static class OAEPWithSHA1AndMGF1Padding extends OAEPWithMGF1Padding {
        public OAEPWithSHA1AndMGF1Padding() {
            super(2);
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public /* bridge */ /* synthetic */ void finalize() throws Throwable {
            super.finalize();
        }
    }

    public static class OAEPWithSHA224AndMGF1Padding extends OAEPWithMGF1Padding {
        public OAEPWithSHA224AndMGF1Padding() {
            super(3);
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public /* bridge */ /* synthetic */ void finalize() throws Throwable {
            super.finalize();
        }
    }

    public static class OAEPWithSHA256AndMGF1Padding extends OAEPWithMGF1Padding {
        public OAEPWithSHA256AndMGF1Padding() {
            super(4);
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public /* bridge */ /* synthetic */ void finalize() throws Throwable {
            super.finalize();
        }
    }

    public static class OAEPWithSHA384AndMGF1Padding extends OAEPWithMGF1Padding {
        public OAEPWithSHA384AndMGF1Padding() {
            super(5);
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public /* bridge */ /* synthetic */ void finalize() throws Throwable {
            super.finalize();
        }
    }

    public static class OAEPWithSHA512AndMGF1Padding extends OAEPWithMGF1Padding {
        public OAEPWithSHA512AndMGF1Padding() {
            super(6);
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public /* bridge */ /* synthetic */ void finalize() throws Throwable {
            super.finalize();
        }
    }

    public static final class PKCS1Padding extends AndroidKeyStoreRSACipherSpi {
        public PKCS1Padding() {
            super(4);
        }

        @Override // android.security.keystore.AndroidKeyStoreRSACipherSpi
        public boolean adjustConfigForEncryptingWithPrivateKey() {
            setKeymasterPurposeOverride(2);
            setKeymasterPaddingOverride(5);
            return true;
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase, javax.crypto.CipherSpi
        public AlgorithmParameters engineGetParameters() {
            return null;
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public /* bridge */ /* synthetic */ void finalize() throws Throwable {
            super.finalize();
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public final int getAdditionalEntropyAmountForBegin() {
            return 0;
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public final int getAdditionalEntropyAmountForFinish() {
            if (isEncrypting()) {
                return getModulusSizeBytes();
            }
            return 0;
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public void initAlgorithmSpecificParameters() {
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public void initAlgorithmSpecificParameters(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
            if (algorithmParameterSpec == null) {
                return;
            }
            throw new InvalidAlgorithmParameterException("Unexpected parameters: " + algorithmParameterSpec + ". No parameters supported");
        }

        @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
        public void initAlgorithmSpecificParameters(AlgorithmParameters algorithmParameters) throws InvalidAlgorithmParameterException {
            if (algorithmParameters == null) {
                return;
            }
            throw new InvalidAlgorithmParameterException("Unexpected parameters: " + algorithmParameters + ". No parameters supported");
        }
    }

    public AndroidKeyStoreRSACipherSpi(int i2) {
        this.mKeymasterPadding = i2;
    }

    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
    public void addAlgorithmSpecificParametersToBegin(KeymasterArguments keymasterArguments) {
        keymasterArguments.addEnum(KeymasterDefs.KM_TAG_ALGORITHM, 1);
        int keymasterPaddingOverride = getKeymasterPaddingOverride();
        if (keymasterPaddingOverride == -1) {
            keymasterPaddingOverride = this.mKeymasterPadding;
        }
        keymasterArguments.addEnum(KeymasterDefs.KM_TAG_PADDING, keymasterPaddingOverride);
        int keymasterPurposeOverride = getKeymasterPurposeOverride();
        if (keymasterPurposeOverride != -1) {
            if (keymasterPurposeOverride == 2 || keymasterPurposeOverride == 3) {
                keymasterArguments.addEnum(KeymasterDefs.KM_TAG_DIGEST, 0);
            }
        }
    }

    public boolean adjustConfigForEncryptingWithPrivateKey() {
        return false;
    }

    @Override // javax.crypto.CipherSpi
    public final int engineGetBlockSize() {
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public final byte[] engineGetIV() {
        return null;
    }

    @Override // javax.crypto.CipherSpi
    public final int engineGetOutputSize(int i2) {
        return getModulusSizeBytes();
    }

    public final int getKeymasterPaddingOverride() {
        return this.mKeymasterPaddingOverride;
    }

    public final int getModulusSizeBytes() {
        int i2 = this.mModulusSizeBytes;
        if (i2 != -1) {
            return i2;
        }
        throw new IllegalStateException("Not initialized");
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003b  */
    /* JADX WARN: Code duplicated, block: B:23:0x0042  */
    /* JADX WARN: Instruction removed from duplicated block: B:23:0x0042, please report this as an issue */
    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
    public final void initKey(int i2, Key key) throws InvalidKeyException {
        if (key == null) {
            throw new InvalidKeyException("Unsupported key: null");
        }
        if (!KeyProperties.KEY_ALGORITHM_RSA.equalsIgnoreCase(key.getAlgorithm())) {
            throw new InvalidKeyException("Unsupported key algorithm: " + key.getAlgorithm() + ". Only RSA supported");
        }
        if (!(key instanceof AndroidKeyStorePrivateKey) && !(key instanceof AndroidKeyStorePublicKey)) {
            throw new InvalidKeyException("Unsupported key type: " + key);
        }
        AndroidKeyStoreKey androidKeyStoreKey = (AndroidKeyStoreKey) key;
        if (androidKeyStoreKey instanceof PrivateKey) {
            if (i2 == 1) {
                if (!adjustConfigForEncryptingWithPrivateKey()) {
                    throw new InvalidKeyException("RSA private keys cannot be used with " + AndroidKeyStoreCipherSpiBase.opmodeToString(i2) + " and padding " + KeyProperties.EncryptionPadding.fromKeymaster(this.mKeymasterPadding) + ". Only RSA public keys supported for this mode");
                }
            } else if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        throw new InvalidKeyException(c.d("RSA private keys cannot be used with opmode: ", i2));
                    }
                } else if (!adjustConfigForEncryptingWithPrivateKey()) {
                    throw new InvalidKeyException("RSA private keys cannot be used with " + AndroidKeyStoreCipherSpiBase.opmodeToString(i2) + " and padding " + KeyProperties.EncryptionPadding.fromKeymaster(this.mKeymasterPadding) + ". Only RSA public keys supported for this mode");
                }
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        throw new InvalidKeyException("RSA public keys cannot be used with " + AndroidKeyStoreCipherSpiBase.opmodeToString(i2));
                    }
                }
            }
            throw new InvalidKeyException("RSA public keys cannot be used with " + AndroidKeyStoreCipherSpiBase.opmodeToString(i2) + " and padding " + KeyProperties.EncryptionPadding.fromKeymaster(this.mKeymasterPadding) + ". Only RSA private keys supported for this opmode.");
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
            this.mModulusSizeBytes = (int) ((unsignedInt + 7) / 8);
            setKey(androidKeyStoreKey);
        } else {
            throw new InvalidKeyException("Key too large: " + unsignedInt + " bits");
        }
    }

    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
    public void loadAlgorithmSpecificParametersFromBeginResult(KeymasterArguments keymasterArguments) {
    }

    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
    public final void resetAll() {
        this.mModulusSizeBytes = -1;
        this.mKeymasterPaddingOverride = -1;
        super.resetAll();
    }

    @Override // android.security.keystore.AndroidKeyStoreCipherSpiBase
    public final void resetWhilePreservingInitState() {
        super.resetWhilePreservingInitState();
    }

    public final void setKeymasterPaddingOverride(int i2) {
        this.mKeymasterPaddingOverride = i2;
    }
}
