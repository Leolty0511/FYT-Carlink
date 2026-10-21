package android.security.keystore;

import java.security.PublicKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class AndroidKeyStorePublicKey extends AndroidKeyStoreKey implements PublicKey {
    private final byte[] mEncoded;

    public AndroidKeyStorePublicKey(String str, int i2, String str2, byte[] bArr) {
        super(str, i2, str2);
        this.mEncoded = ArrayUtils.cloneIfNotEmpty(bArr);
    }

    @Override // android.security.keystore.AndroidKeyStoreKey
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return super.equals(obj) && getClass() == obj.getClass() && Arrays.equals(this.mEncoded, ((AndroidKeyStorePublicKey) obj).mEncoded);
    }

    @Override // android.security.keystore.AndroidKeyStoreKey, java.security.Key
    public byte[] getEncoded() {
        return ArrayUtils.cloneIfNotEmpty(this.mEncoded);
    }

    @Override // android.security.keystore.AndroidKeyStoreKey, java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // android.security.keystore.AndroidKeyStoreKey
    public int hashCode() {
        return Arrays.hashCode(this.mEncoded) + (super.hashCode() * 31);
    }
}
