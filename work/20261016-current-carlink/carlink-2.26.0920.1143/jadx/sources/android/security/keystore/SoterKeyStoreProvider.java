package android.security.keystore;

import android.accessibilityservice.c;
import android.os.SystemProperties;
import android.security.KeyStore;
import android.security.keymaster.ExportResult;
import android.security.keymaster.KeyCharacteristics;
import android.security.keymaster.KeymasterDefs;
import android.util.Log;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.ProviderException;
import java.security.PublicKey;
import java.security.Security;
import java.security.UnrecoverableKeyException;
import java.security.interfaces.ECKey;
import java.security.interfaces.ECPublicKey;
import java.security.interfaces.RSAKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class SoterKeyStoreProvider extends Provider {
    private static final String ANDROID_PACKAGE_NAME = "android.security.keystore";
    public static final String PROVIDER_NAME = "SoterKeyStore";
    private static final String SOTER_PACKAGE_NAME = "android.security.keystore";

    public SoterKeyStoreProvider() {
        super(PROVIDER_NAME, 1.0d, "provider for soter");
        put("KeyPairGenerator.RSA", "android.security.keystore.SoterKeyStoreKeyPairRSAGeneratorSpi");
        put("KeyStore.SoterKeyStore", "android.security.keystore.SoterKeyStoreSpi");
        putKeyFactoryImpl(KeyProperties.KEY_ALGORITHM_RSA);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AndroidKeyStorePrivateKey getAndroidKeyStorePrivateKey(AndroidKeyStorePublicKey androidKeyStorePublicKey) {
        String algorithm = androidKeyStorePublicKey.getAlgorithm();
        if (KeyProperties.KEY_ALGORITHM_EC.equalsIgnoreCase(algorithm)) {
            return new AndroidKeyStoreECPrivateKey(androidKeyStorePublicKey.getAlias(), -1, ((ECKey) androidKeyStorePublicKey).getParams());
        }
        if (KeyProperties.KEY_ALGORITHM_RSA.equalsIgnoreCase(algorithm)) {
            return new AndroidKeyStoreRSAPrivateKey(androidKeyStorePublicKey.getAlias(), -1, ((RSAKey) androidKeyStorePublicKey).getModulus());
        }
        throw new ProviderException(c.j("Unsupported Android Keystore public key algorithm: ", algorithm));
    }

    public static AndroidKeyStorePublicKey getAndroidKeyStorePublicKey(String str, String str2, byte[] bArr) {
        try {
            KeyFactory keyFactory = KeyFactory.getInstance(str2);
            byte[] dataFromRaw = SoterUtil.getDataFromRaw(bArr, SoterUtil.JSON_KEY_PUBLIC);
            if (dataFromRaw == null) {
                throw new NullPointerException("invalid soter public key");
            }
            PublicKey publicKeyGeneratePublic = keyFactory.generatePublic(new X509EncodedKeySpec(dataFromRaw));
            if (KeyProperties.KEY_ALGORITHM_EC.equalsIgnoreCase(str2)) {
                Log.d("Soter", "AndroidKeyStoreECPublicKey");
                return new AndroidKeyStoreECPublicKey(str, -1, (ECPublicKey) publicKeyGeneratePublic);
            }
            if (!KeyProperties.KEY_ALGORITHM_RSA.equalsIgnoreCase(str2)) {
                throw new ProviderException(c.j("Unsupported Android Keystore public key algorithm: ", str2));
            }
            Log.d("Soter", "AndroidKeyStoreRSAPublicKey");
            return new AndroidKeyStoreRSAPublicKey(str, -1, (RSAPublicKey) publicKeyGeneratePublic);
        } catch (NoSuchAlgorithmException e2) {
            throw new ProviderException(c.k("Failed to obtain ", str2, " KeyFactory"), e2);
        } catch (InvalidKeySpecException e3) {
            throw new ProviderException("Invalid X.509 encoding of public key", e3);
        } catch (JSONException unused) {
            throw new ProviderException("Not in json format");
        }
    }

    public static AndroidKeyStorePublicKey getJsonPublicKey(String str, String str2, byte[] bArr) {
        try {
            KeyFactory keyFactory = KeyFactory.getInstance(str2);
            byte[] dataFromRaw = SoterUtil.getDataFromRaw(bArr, SoterUtil.JSON_KEY_PUBLIC);
            if (dataFromRaw == null) {
                throw new NullPointerException("invalid soter public key");
            }
            PublicKey publicKeyGeneratePublic = keyFactory.generatePublic(new X509EncodedKeySpec(dataFromRaw));
            if (KeyProperties.KEY_ALGORITHM_EC.equalsIgnoreCase(str2)) {
                Log.d("Soter", "AndroidKeyStoreECPublicKey");
                return new AndroidKeyStoreECPublicKey(str, -1, (ECPublicKey) publicKeyGeneratePublic);
            }
            if (!KeyProperties.KEY_ALGORITHM_RSA.equalsIgnoreCase(str2)) {
                throw new ProviderException(c.j("Unsupported Android Keystore public key algorithm: ", str2));
            }
            Log.d("Soter", "getJsonPublicKey");
            RSAPublicKey rSAPublicKey = (RSAPublicKey) publicKeyGeneratePublic;
            return new AndroidKeyStoreRSAPublicKey(str, -1, bArr, rSAPublicKey.getModulus(), rSAPublicKey.getPublicExponent());
        } catch (NoSuchAlgorithmException e2) {
            throw new ProviderException(c.k("Failed to obtain ", str2, " KeyFactory"), e2);
        } catch (InvalidKeySpecException e3) {
            throw new ProviderException("Invalid X.509 encoding of public key", e3);
        } catch (JSONException unused) {
            throw new ProviderException("Not in json format");
        }
    }

    public static void install() {
        if (SystemProperties.get("ro.soter.support").equals("true")) {
            Security.addProvider(new SoterKeyStoreProvider());
        } else {
            Log.d("Soter", "soter NOT supported, don't install provider");
        }
    }

    public static KeyPair loadAndroidKeyStoreKeyPairFromKeystore(KeyStore keyStore, String str) throws UnrecoverableKeyException {
        AndroidKeyStorePublicKey androidKeyStorePublicKeyLoadAndroidKeyStorePublicKeyFromKeystore = loadAndroidKeyStorePublicKeyFromKeystore(keyStore, str);
        return new KeyPair(androidKeyStorePublicKeyLoadAndroidKeyStorePublicKeyFromKeystore, getAndroidKeyStorePrivateKey(androidKeyStorePublicKeyLoadAndroidKeyStorePublicKeyFromKeystore));
    }

    public static AndroidKeyStorePrivateKey loadAndroidKeyStorePrivateKeyFromKeystore(KeyStore keyStore, String str) {
        return (AndroidKeyStorePrivateKey) loadAndroidKeyStoreKeyPairFromKeystore(keyStore, str).getPrivate();
    }

    public static AndroidKeyStorePublicKey loadAndroidKeyStorePublicKeyFromKeystore(KeyStore keyStore, String str) throws UnrecoverableKeyException {
        KeyCharacteristics keyCharacteristics = new KeyCharacteristics();
        int keyCharacteristics2 = keyStore.getKeyCharacteristics(str, null, null, keyCharacteristics);
        if (keyCharacteristics2 != 1) {
            throw ((UnrecoverableKeyException) new UnrecoverableKeyException("Failed to obtain information about private key").initCause(KeyStore.getKeyStoreException(keyCharacteristics2)));
        }
        ExportResult exportResultExportKey = keyStore.exportKey(str, 0, null, null);
        if (exportResultExportKey.resultCode != 1) {
            throw ((UnrecoverableKeyException) new UnrecoverableKeyException("Failed to obtain X.509 form of public key").initCause(KeyStore.getKeyStoreException(keyCharacteristics2)));
        }
        byte[] bArr = exportResultExportKey.exportData;
        Integer num = keyCharacteristics.getEnum(KeymasterDefs.KM_TAG_ALGORITHM);
        if (num == null) {
            throw new UnrecoverableKeyException("Key algorithm unknown");
        }
        try {
            return getAndroidKeyStorePublicKey(str, KeyProperties.KeyAlgorithm.fromKeymasterAsymmetricKeyAlgorithm(num.intValue()), bArr);
        } catch (IllegalArgumentException e2) {
            throw ((UnrecoverableKeyException) new UnrecoverableKeyException("Failed to load private key").initCause(e2));
        }
    }

    public static AndroidKeyStorePublicKey loadJsonPublicKeyFromKeystore(KeyStore keyStore, String str) throws UnrecoverableKeyException {
        KeyCharacteristics keyCharacteristics = new KeyCharacteristics();
        int keyCharacteristics2 = keyStore.getKeyCharacteristics(str, null, null, keyCharacteristics);
        if (keyCharacteristics2 != 1) {
            throw ((UnrecoverableKeyException) new UnrecoverableKeyException("Failed to obtain information about private key").initCause(KeyStore.getKeyStoreException(keyCharacteristics2)));
        }
        ExportResult exportResultExportKey = keyStore.exportKey(str, 0, null, null);
        if (exportResultExportKey.resultCode != 1) {
            throw ((UnrecoverableKeyException) new UnrecoverableKeyException("Failed to obtain X.509 form of public key").initCause(KeyStore.getKeyStoreException(keyCharacteristics2)));
        }
        byte[] bArr = exportResultExportKey.exportData;
        Integer num = keyCharacteristics.getEnum(KeymasterDefs.KM_TAG_ALGORITHM);
        if (num == null) {
            throw new UnrecoverableKeyException("Key algorithm unknown");
        }
        try {
            return getJsonPublicKey(str, KeyProperties.KeyAlgorithm.fromKeymasterAsymmetricKeyAlgorithm(num.intValue()), bArr);
        } catch (IllegalArgumentException e2) {
            throw ((UnrecoverableKeyException) new UnrecoverableKeyException("Failed to load private key").initCause(e2));
        }
    }

    private void putKeyFactoryImpl(String str) {
        put("KeyFactory." + str, "android.security.keystore.AndroidKeyStoreKeyFactorySpi");
    }
}
