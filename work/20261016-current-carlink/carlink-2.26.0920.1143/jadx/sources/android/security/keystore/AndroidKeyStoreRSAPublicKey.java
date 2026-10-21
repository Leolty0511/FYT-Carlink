package android.security.keystore;

import java.math.BigInteger;
import java.security.interfaces.RSAPublicKey;

/* JADX INFO: loaded from: classes.dex */
public class AndroidKeyStoreRSAPublicKey extends AndroidKeyStorePublicKey implements RSAPublicKey {
    private final BigInteger mModulus;
    private final BigInteger mPublicExponent;

    public AndroidKeyStoreRSAPublicKey(String str, int i2, byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        super(str, i2, KeyProperties.KEY_ALGORITHM_RSA, bArr);
        this.mModulus = bigInteger;
        this.mPublicExponent = bigInteger2;
    }

    @Override // java.security.interfaces.RSAKey
    public BigInteger getModulus() {
        return this.mModulus;
    }

    @Override // java.security.interfaces.RSAPublicKey
    public BigInteger getPublicExponent() {
        return this.mPublicExponent;
    }

    public AndroidKeyStoreRSAPublicKey(String str, int i2, RSAPublicKey rSAPublicKey) {
        this(str, i2, rSAPublicKey.getEncoded(), rSAPublicKey.getModulus(), rSAPublicKey.getPublicExponent());
        if ("X.509".equalsIgnoreCase(rSAPublicKey.getFormat())) {
            return;
        }
        throw new IllegalArgumentException("Unsupported key export format: " + rSAPublicKey.getFormat());
    }
}
