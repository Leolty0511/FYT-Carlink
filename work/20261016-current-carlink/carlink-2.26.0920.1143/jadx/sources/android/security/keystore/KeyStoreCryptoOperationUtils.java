package android.security.keystore;

import android.security.KeyStore;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.SecureRandom;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
abstract class KeyStoreCryptoOperationUtils {
    private static volatile SecureRandom sRng;

    private KeyStoreCryptoOperationUtils() {
    }

    public static GeneralSecurityException getExceptionForCipherInit(KeyStore keyStore, AndroidKeyStoreKey androidKeyStoreKey, int i2) {
        if (i2 == 1) {
            return null;
        }
        if (i2 != -55) {
            return i2 != -52 ? getInvalidKeyExceptionForInit(keyStore, androidKeyStoreKey, i2) : new InvalidAlgorithmParameterException("Invalid IV");
        }
        return new InvalidAlgorithmParameterException("Caller-provided IV not permitted");
    }

    public static InvalidKeyException getInvalidKeyExceptionForInit(KeyStore keyStore, AndroidKeyStoreKey androidKeyStoreKey, int i2) {
        if (i2 == 1) {
            return null;
        }
        InvalidKeyException invalidKeyException = keyStore.getInvalidKeyException(androidKeyStoreKey.getAlias(), androidKeyStoreKey.getUid(), i2);
        if (i2 == 15 && (invalidKeyException instanceof UserNotAuthenticatedException)) {
            return null;
        }
        return invalidKeyException;
    }

    public static byte[] getRandomBytesToMixIntoKeystoreRng(SecureRandom secureRandom, int i2) {
        if (i2 <= 0) {
            return EmptyArray.BYTE;
        }
        if (secureRandom == null) {
            secureRandom = getRng();
        }
        byte[] bArr = new byte[i2];
        secureRandom.nextBytes(bArr);
        return bArr;
    }

    private static SecureRandom getRng() {
        if (sRng == null) {
            sRng = new SecureRandom();
        }
        return sRng;
    }
}
