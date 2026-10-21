package android.security.keystore;

import android.security.keymaster.KeymasterArguments;
import android.security.keymaster.KeymasterDefs;
import java.security.InvalidKeyException;

/* JADX INFO: loaded from: classes.dex */
abstract class AndroidKeyStoreRSASignatureSpi extends AndroidKeyStoreSignatureSpiBase {
    private final int mKeymasterDigest;
    private final int mKeymasterPadding;

    public static final class MD5WithPKCS1Padding extends PKCS1Padding {
        public MD5WithPKCS1Padding() {
            super(1);
        }
    }

    public static final class NONEWithPKCS1Padding extends PKCS1Padding {
        public NONEWithPKCS1Padding() {
            super(0);
        }
    }

    public static abstract class PKCS1Padding extends AndroidKeyStoreRSASignatureSpi {
        public PKCS1Padding(int i2) {
            super(i2, 5);
        }

        @Override // android.security.keystore.AndroidKeyStoreSignatureSpiBase
        public final int getAdditionalEntropyAmountForSign() {
            return 0;
        }
    }

    public static abstract class PSSPadding extends AndroidKeyStoreRSASignatureSpi {
        private static final int SALT_LENGTH_BYTES = 20;

        public PSSPadding(int i2) {
            super(i2, 3);
        }

        @Override // android.security.keystore.AndroidKeyStoreSignatureSpiBase
        public final int getAdditionalEntropyAmountForSign() {
            return 20;
        }
    }

    public static final class SHA1WithPKCS1Padding extends PKCS1Padding {
        public SHA1WithPKCS1Padding() {
            super(2);
        }
    }

    public static final class SHA1WithPSSPadding extends PSSPadding {
        public SHA1WithPSSPadding() {
            super(2);
        }
    }

    public static final class SHA224WithPKCS1Padding extends PKCS1Padding {
        public SHA224WithPKCS1Padding() {
            super(3);
        }
    }

    public static final class SHA224WithPSSPadding extends PSSPadding {
        public SHA224WithPSSPadding() {
            super(3);
        }
    }

    public static final class SHA256WithPKCS1Padding extends PKCS1Padding {
        public SHA256WithPKCS1Padding() {
            super(4);
        }
    }

    public static final class SHA256WithPSSPadding extends PSSPadding {
        public SHA256WithPSSPadding() {
            super(4);
        }
    }

    public static final class SHA384WithPKCS1Padding extends PKCS1Padding {
        public SHA384WithPKCS1Padding() {
            super(5);
        }
    }

    public static final class SHA384WithPSSPadding extends PSSPadding {
        public SHA384WithPSSPadding() {
            super(5);
        }
    }

    public static final class SHA512WithPKCS1Padding extends PKCS1Padding {
        public SHA512WithPKCS1Padding() {
            super(6);
        }
    }

    public static final class SHA512WithPSSPadding extends PSSPadding {
        public SHA512WithPSSPadding() {
            super(6);
        }
    }

    public AndroidKeyStoreRSASignatureSpi(int i2, int i3) {
        this.mKeymasterDigest = i2;
        this.mKeymasterPadding = i3;
    }

    @Override // android.security.keystore.AndroidKeyStoreSignatureSpiBase
    public final void addAlgorithmSpecificParametersToBegin(KeymasterArguments keymasterArguments) {
        keymasterArguments.addEnum(KeymasterDefs.KM_TAG_ALGORITHM, 1);
        keymasterArguments.addEnum(KeymasterDefs.KM_TAG_DIGEST, this.mKeymasterDigest);
        keymasterArguments.addEnum(KeymasterDefs.KM_TAG_PADDING, this.mKeymasterPadding);
    }

    @Override // android.security.keystore.AndroidKeyStoreSignatureSpiBase
    public final void initKey(AndroidKeyStoreKey androidKeyStoreKey) throws InvalidKeyException {
        if (KeyProperties.KEY_ALGORITHM_RSA.equalsIgnoreCase(androidKeyStoreKey.getAlgorithm())) {
            super.initKey(androidKeyStoreKey);
            return;
        }
        throw new InvalidKeyException("Unsupported key algorithm: " + androidKeyStoreKey.getAlgorithm() + ". OnlyRSA supported");
    }

    @Override // android.security.keystore.AndroidKeyStoreSignatureSpiBase
    public final void resetAll() {
        super.resetAll();
    }

    @Override // android.security.keystore.AndroidKeyStoreSignatureSpiBase
    public final void resetWhilePreservingInitState() {
        super.resetWhilePreservingInitState();
    }
}
