package android.security.keystore;

import java.security.KeyStore;

/* JADX INFO: loaded from: classes.dex */
class AndroidKeyStoreLoadStoreParameter implements KeyStore.LoadStoreParameter {
    private final int mUid;

    public AndroidKeyStoreLoadStoreParameter(int i2) {
        this.mUid = i2;
    }

    @Override // java.security.KeyStore.LoadStoreParameter
    public KeyStore.ProtectionParameter getProtectionParameter() {
        return null;
    }

    public int getUid() {
        return this.mUid;
    }
}
