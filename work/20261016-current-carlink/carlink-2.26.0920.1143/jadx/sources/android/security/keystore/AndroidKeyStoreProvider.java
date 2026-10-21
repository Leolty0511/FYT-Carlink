package android.security.keystore;

import android.accessibilityservice.c;
import android.security.keymaster.ExportResult;
import android.security.keymaster.KeyCharacteristics;
import android.security.keymaster.KeymasterDefs;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.ProviderException;
import java.security.PublicKey;
import java.security.Security;
import java.security.Signature;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.interfaces.ECKey;
import java.security.interfaces.ECPublicKey;
import java.security.interfaces.RSAKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* JADX INFO: loaded from: classes.dex */
public class AndroidKeyStoreProvider extends Provider {
    private static final String PACKAGE_NAME = "android.security.keystore";
    public static final String PROVIDER_NAME = "AndroidKeyStore";

    public AndroidKeyStoreProvider() {
        super("AndroidKeyStore", 1.0d, "Android KeyStore security provider");
        put("KeyStore.AndroidKeyStore", "android.security.keystore.AndroidKeyStoreSpi");
        put("KeyPairGenerator.EC", "android.security.keystore.AndroidKeyStoreKeyPairGeneratorSpi$EC");
        put("KeyPairGenerator.RSA", "android.security.keystore.AndroidKeyStoreKeyPairGeneratorSpi$RSA");
        putKeyFactoryImpl(KeyProperties.KEY_ALGORITHM_EC);
        putKeyFactoryImpl(KeyProperties.KEY_ALGORITHM_RSA);
        put("KeyGenerator.AES", "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$AES");
        put("KeyGenerator.HmacSHA1", "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA1");
        put("KeyGenerator.HmacSHA224", "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA224");
        put("KeyGenerator.HmacSHA256", "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA256");
        put("KeyGenerator.HmacSHA384", "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA384");
        put("KeyGenerator.HmacSHA512", "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA512");
        putSecretKeyFactoryImpl(KeyProperties.KEY_ALGORITHM_AES);
        putSecretKeyFactoryImpl(KeyProperties.KEY_ALGORITHM_HMAC_SHA1);
        putSecretKeyFactoryImpl(KeyProperties.KEY_ALGORITHM_HMAC_SHA224);
        putSecretKeyFactoryImpl(KeyProperties.KEY_ALGORITHM_HMAC_SHA256);
        putSecretKeyFactoryImpl(KeyProperties.KEY_ALGORITHM_HMAC_SHA384);
        putSecretKeyFactoryImpl(KeyProperties.KEY_ALGORITHM_HMAC_SHA512);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AndroidKeyStorePrivateKey getAndroidKeyStorePrivateKey(AndroidKeyStorePublicKey androidKeyStorePublicKey) {
        String algorithm = androidKeyStorePublicKey.getAlgorithm();
        if (KeyProperties.KEY_ALGORITHM_EC.equalsIgnoreCase(algorithm)) {
            return new AndroidKeyStoreECPrivateKey(androidKeyStorePublicKey.getAlias(), androidKeyStorePublicKey.getUid(), ((ECKey) androidKeyStorePublicKey).getParams());
        }
        if (KeyProperties.KEY_ALGORITHM_RSA.equalsIgnoreCase(algorithm)) {
            return new AndroidKeyStoreRSAPrivateKey(androidKeyStorePublicKey.getAlias(), androidKeyStorePublicKey.getUid(), ((RSAKey) androidKeyStorePublicKey).getModulus());
        }
        throw new ProviderException(c.j("Unsupported Android Keystore public key algorithm: ", algorithm));
    }

    public static AndroidKeyStorePublicKey getAndroidKeyStorePublicKey(String str, int i2, String str2, byte[] bArr) {
        try {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance(str2).generatePublic(new X509EncodedKeySpec(bArr));
            if (KeyProperties.KEY_ALGORITHM_EC.equalsIgnoreCase(str2)) {
                return new AndroidKeyStoreECPublicKey(str, i2, (ECPublicKey) publicKeyGeneratePublic);
            }
            if (KeyProperties.KEY_ALGORITHM_RSA.equalsIgnoreCase(str2)) {
                return new AndroidKeyStoreRSAPublicKey(str, i2, (RSAPublicKey) publicKeyGeneratePublic);
            }
            throw new ProviderException(c.j("Unsupported Android Keystore public key algorithm: ", str2));
        } catch (NoSuchAlgorithmException e2) {
            throw new ProviderException(c.k("Failed to obtain ", str2, " KeyFactory"), e2);
        } catch (InvalidKeySpecException e3) {
            throw new ProviderException("Invalid X.509 encoding of public key", e3);
        }
    }

    public static KeyStore getKeyStoreForUid(int i2) throws KeyStoreException, NoSuchProviderException {
        KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore", "AndroidKeyStore");
        try {
            keyStore.load(new AndroidKeyStoreLoadStoreParameter(i2));
            return keyStore;
        } catch (IOException | NoSuchAlgorithmException | CertificateException e2) {
            throw new KeyStoreException(c.d("Failed to load AndroidKeyStore KeyStore for UID ", i2), e2);
        }
    }

    public static long getKeyStoreOperationHandle(Object obj) {
        Object currentSpi;
        obj.getClass();
        if (obj instanceof Signature) {
            currentSpi = ((Signature) obj).getCurrentSpi();
        } else if (obj instanceof Mac) {
            currentSpi = ((Mac) obj).getCurrentSpi();
        } else {
            if (!(obj instanceof Cipher)) {
                throw new IllegalArgumentException("Unsupported crypto primitive: " + obj + ". Supported: Signature, Mac, Cipher");
            }
            currentSpi = ((Cipher) obj).getCurrentSpi();
        }
        if (currentSpi == null) {
            throw new IllegalStateException("Crypto primitive not initialized");
        }
        if (currentSpi instanceof KeyStoreCryptoOperation) {
            return ((KeyStoreCryptoOperation) currentSpi).getOperationHandle();
        }
        throw new IllegalArgumentException("Crypto primitive not backed by AndroidKeyStore provider: " + obj + ", spi: " + currentSpi);
    }

    public static void install() {
        Provider[] providers = Security.getProviders();
        int i2 = 0;
        while (true) {
            if (i2 >= providers.length) {
                i2 = -1;
                break;
            } else if ("BC".equals(providers[i2].getName())) {
                break;
            } else {
                i2++;
            }
        }
        Security.addProvider(new AndroidKeyStoreProvider());
        AndroidKeyStoreBCWorkaroundProvider androidKeyStoreBCWorkaroundProvider = new AndroidKeyStoreBCWorkaroundProvider();
        if (i2 != -1) {
            Security.insertProviderAt(androidKeyStoreBCWorkaroundProvider, i2 + 1);
        } else {
            Security.addProvider(androidKeyStoreBCWorkaroundProvider);
        }
    }

    public static KeyPair loadAndroidKeyStoreKeyPairFromKeystore(android.security.KeyStore keyStore, String str, int i2) throws UnrecoverableKeyException {
        AndroidKeyStorePublicKey androidKeyStorePublicKeyLoadAndroidKeyStorePublicKeyFromKeystore = loadAndroidKeyStorePublicKeyFromKeystore(keyStore, str, i2);
        return new KeyPair(androidKeyStorePublicKeyLoadAndroidKeyStorePublicKeyFromKeystore, getAndroidKeyStorePrivateKey(androidKeyStorePublicKeyLoadAndroidKeyStorePublicKeyFromKeystore));
    }

    public static AndroidKeyStorePrivateKey loadAndroidKeyStorePrivateKeyFromKeystore(android.security.KeyStore keyStore, String str, int i2) {
        return (AndroidKeyStorePrivateKey) loadAndroidKeyStoreKeyPairFromKeystore(keyStore, str, i2).getPrivate();
    }

    public static AndroidKeyStorePublicKey loadAndroidKeyStorePublicKeyFromKeystore(android.security.KeyStore keyStore, String str, int i2) throws UnrecoverableKeyException {
        KeyCharacteristics keyCharacteristics = new KeyCharacteristics();
        int keyCharacteristics2 = keyStore.getKeyCharacteristics(str, null, null, i2, keyCharacteristics);
        if (keyCharacteristics2 != 1) {
            throw ((UnrecoverableKeyException) new UnrecoverableKeyException("Failed to obtain information about private key").initCause(android.security.KeyStore.getKeyStoreException(keyCharacteristics2)));
        }
        ExportResult exportResultExportKey = keyStore.exportKey(str, 0, null, null, i2);
        if (exportResultExportKey.resultCode != 1) {
            throw ((UnrecoverableKeyException) new UnrecoverableKeyException("Failed to obtain X.509 form of public key").initCause(android.security.KeyStore.getKeyStoreException(exportResultExportKey.resultCode)));
        }
        byte[] bArr = exportResultExportKey.exportData;
        Integer num = keyCharacteristics.getEnum(KeymasterDefs.KM_TAG_ALGORITHM);
        if (num == null) {
            throw new UnrecoverableKeyException("Key algorithm unknown");
        }
        try {
            return getAndroidKeyStorePublicKey(str, i2, KeyProperties.KeyAlgorithm.fromKeymasterAsymmetricKeyAlgorithm(num.intValue()), bArr);
        } catch (IllegalArgumentException e2) {
            throw ((UnrecoverableKeyException) new UnrecoverableKeyException("Failed to load private key").initCause(e2));
        }
    }

    public static AndroidKeyStoreSecretKey loadAndroidKeyStoreSecretKeyFromKeystore(android.security.KeyStore keyStore, String str, int i2) throws UnrecoverableKeyException {
        KeyCharacteristics keyCharacteristics = new KeyCharacteristics();
        int keyCharacteristics2 = keyStore.getKeyCharacteristics(str, null, null, i2, keyCharacteristics);
        if (keyCharacteristics2 != 1) {
            throw ((UnrecoverableKeyException) new UnrecoverableKeyException("Failed to obtain information about key").initCause(android.security.KeyStore.getKeyStoreException(keyCharacteristics2)));
        }
        Integer num = keyCharacteristics.getEnum(KeymasterDefs.KM_TAG_ALGORITHM);
        if (num == null) {
            throw new UnrecoverableKeyException("Key algorithm unknown");
        }
        List<Integer> enums = keyCharacteristics.getEnums(KeymasterDefs.KM_TAG_DIGEST);
        try {
            return new AndroidKeyStoreSecretKey(str, i2, KeyProperties.KeyAlgorithm.fromKeymasterSecretKeyAlgorithm(num.intValue(), enums.isEmpty() ? -1 : enums.get(0).intValue()));
        } catch (IllegalArgumentException e2) {
            throw ((UnrecoverableKeyException) new UnrecoverableKeyException("Unsupported secret key type").initCause(e2));
        }
    }

    private void putKeyFactoryImpl(String str) {
        put("KeyFactory." + str, "android.security.keystore.AndroidKeyStoreKeyFactorySpi");
    }

    private void putSecretKeyFactoryImpl(String str) {
        put("SecretKeyFactory." + str, "android.security.keystore.AndroidKeyStoreSecretKeyFactorySpi");
    }
}
