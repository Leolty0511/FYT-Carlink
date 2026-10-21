package android.security.keystore;

import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;

/* JADX INFO: loaded from: classes.dex */
public class AndroidKeyStoreECPublicKey extends AndroidKeyStorePublicKey implements ECPublicKey {
    private final ECParameterSpec mParams;
    private final ECPoint mW;

    public AndroidKeyStoreECPublicKey(String str, int i2, byte[] bArr, ECParameterSpec eCParameterSpec, ECPoint eCPoint) {
        super(str, i2, KeyProperties.KEY_ALGORITHM_EC, bArr);
        this.mParams = eCParameterSpec;
        this.mW = eCPoint;
    }

    @Override // java.security.interfaces.ECKey
    public ECParameterSpec getParams() {
        return this.mParams;
    }

    @Override // java.security.interfaces.ECPublicKey
    public ECPoint getW() {
        return this.mW;
    }

    public AndroidKeyStoreECPublicKey(String str, int i2, ECPublicKey eCPublicKey) {
        this(str, i2, eCPublicKey.getEncoded(), eCPublicKey.getParams(), eCPublicKey.getW());
        if ("X.509".equalsIgnoreCase(eCPublicKey.getFormat())) {
            return;
        }
        throw new IllegalArgumentException("Unsupported key export format: " + eCPublicKey.getFormat());
    }
}
