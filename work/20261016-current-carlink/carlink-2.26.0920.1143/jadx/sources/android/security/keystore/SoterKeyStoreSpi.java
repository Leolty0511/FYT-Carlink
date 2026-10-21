package android.security.keystore;

import android.accessibilityservice.c;
import android.security.Credentials;
import android.security.KeyStore;
import java.security.Key;
import java.security.KeyStoreException;

/* JADX INFO: loaded from: classes.dex */
public class SoterKeyStoreSpi extends AndroidKeyStoreSpi {
    private KeyStore mKeyStore;

    public SoterKeyStoreSpi() {
        this.mKeyStore = null;
        this.mKeyStore = KeyStore.getInstance();
    }

    private boolean isPrivateKeyEntry(String str) {
        if (str != null) {
            return this.mKeyStore.contains(Credentials.USER_PRIVATE_KEY.concat(str));
        }
        throw new NullPointerException("alias == null");
    }

    private boolean isSecretKeyEntry(String str) {
        if (str != null) {
            return this.mKeyStore.contains(Credentials.USER_SECRET_KEY.concat(str));
        }
        throw new NullPointerException("alias == null");
    }

    @Override // android.security.keystore.AndroidKeyStoreSpi, java.security.KeyStoreSpi
    public boolean engineContainsAlias(String str) {
        if (str != null) {
            return this.mKeyStore.contains(Credentials.USER_PRIVATE_KEY.concat(str)) || this.mKeyStore.contains(Credentials.USER_CERTIFICATE.concat(str));
        }
        throw new NullPointerException("alias == null");
    }

    @Override // android.security.keystore.AndroidKeyStoreSpi, java.security.KeyStoreSpi
    public void engineDeleteEntry(String str) throws KeyStoreException {
        if (engineContainsAlias(str)) {
            if (!this.mKeyStore.delete(Credentials.USER_PRIVATE_KEY + str) && !this.mKeyStore.delete(Credentials.USER_CERTIFICATE + str)) {
                throw new KeyStoreException(c.j("Failed to delete entry: ", str));
            }
        }
    }

    @Override // android.security.keystore.AndroidKeyStoreSpi, java.security.KeyStoreSpi
    public Key engineGetKey(String str, char[] cArr) {
        if (isPrivateKeyEntry(str)) {
            String strJ = c.j(Credentials.USER_PRIVATE_KEY, str);
            return (cArr == null || !"from_soter_ui".equals(String.valueOf(cArr))) ? SoterKeyStoreProvider.loadAndroidKeyStorePrivateKeyFromKeystore(this.mKeyStore, strJ) : SoterKeyStoreProvider.loadJsonPublicKeyFromKeystore(this.mKeyStore, strJ);
        }
        if (isSecretKeyEntry(str)) {
            return AndroidKeyStoreProvider.loadAndroidKeyStoreSecretKeyFromKeystore(this.mKeyStore, c.j(Credentials.USER_SECRET_KEY, str), -1);
        }
        return null;
    }
}
