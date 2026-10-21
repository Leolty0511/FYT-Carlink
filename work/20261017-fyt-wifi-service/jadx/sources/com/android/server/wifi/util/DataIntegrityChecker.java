package com.android.server.wifi.util;

import android.security.keystore.KeyGenParameterSpec;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableEntryException;
import java.security.cert.CertificateException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;

/* JADX INFO: loaded from: classes.dex */
public class DataIntegrityChecker {
    private static final String ALIAS_SUFFIX = ".data-integrity-checker-key";
    private static final String CIPHER_ALGORITHM = "AES/GCM/NoPadding";
    private static final String DIGEST_ALGORITHM = "SHA-256";
    private static final int GCM_TAG_LENGTH = 128;
    private static final boolean KEYSTORE_FAILURE_RETURN_VALUE = true;
    private static final String KEY_STORE = "AndroidKeyStore";
    private static final boolean REQUEST_BUG_REPORT = false;
    private static final String TAG = "DataIntegrityChecker";
    private final String mDataFileName;

    public DataIntegrityChecker(String dataFileName) {
        if (TextUtils.isEmpty(dataFileName)) {
            throw new NullPointerException("dataFileName must not be null or the empty string");
        }
        this.mDataFileName = dataFileName;
    }

    private String getKeyAlias() {
        return this.mDataFileName + ALIAS_SUFFIX;
    }

    public EncryptedData compute(byte[] data) {
        if (data == null || data.length < 1) {
            reportException(new Exception("No data to compute"), "No data to compute.");
            return null;
        }
        byte[] digest = getDigest(data);
        if (digest == null || digest.length < 1) {
            reportException(new Exception("digest null in compute"), "digest null in compute");
            return null;
        }
        EncryptedData integrityData = encrypt(digest, getKeyAlias());
        if (integrityData == null) {
            reportException(new Exception("integrityData null in compute"), "integrityData null in compute");
        }
        return integrityData;
    }

    public boolean isOk(byte[] data, EncryptedData integrityData) {
        if (data == null || data.length < 1) {
            return true;
        }
        byte[] currentDigest = getDigest(data);
        if (currentDigest == null || currentDigest.length < 1) {
            reportException(new Exception("current digest null"), "current digest null");
            return true;
        }
        if (integrityData == null) {
            reportException(new Exception("integrityData null in isOk"), "integrityData null in isOk");
            return true;
        }
        byte[] storedDigest = decrypt(integrityData, getKeyAlias());
        if (storedDigest == null) {
            return true;
        }
        return constantTimeEquals(storedDigest, currentDigest);
    }

    private byte[] getDigest(byte[] data) {
        try {
            return MessageDigest.getInstance(DIGEST_ALGORITHM).digest(data);
        } catch (NoSuchAlgorithmException e) {
            reportException(e, "getDigest could not find algorithm: SHA-256");
            return null;
        }
    }

    private EncryptedData encrypt(byte[] data, String keyAlias) {
        EncryptedData encryptedData = null;
        try {
            Cipher cipher = Cipher.getInstance(CIPHER_ALGORITHM);
            SecretKey secretKeyReference = getOrCreateSecretKey(keyAlias);
            if (secretKeyReference == null) {
                reportException(new Exception("secretKeyReference is null."), "secretKeyReference is null.");
            } else {
                cipher.init(1, secretKeyReference);
                encryptedData = new EncryptedData(cipher.doFinal(data), cipher.getIV());
            }
        } catch (InvalidKeyException e) {
            reportException(e, "encrypt received an invalid key");
        } catch (NoSuchAlgorithmException e2) {
            reportException(e2, "encrypt could not find the algorithm: AES/GCM/NoPadding");
        } catch (BadPaddingException e3) {
            reportException(e3, "encrypt had a padding problem");
        } catch (IllegalBlockSizeException e4) {
            reportException(e4, "encrypt had an illegal block size");
        } catch (NoSuchPaddingException e5) {
            reportException(e5, "encrypt had a padding exception");
        }
        return encryptedData;
    }

    private byte[] decrypt(EncryptedData encryptedData, String keyAlias) {
        try {
            Cipher cipher = Cipher.getInstance(CIPHER_ALGORITHM);
            GCMParameterSpec spec = new GCMParameterSpec(128, encryptedData.getIv());
            SecretKey secretKeyReference = getOrCreateSecretKey(keyAlias);
            if (secretKeyReference == null) {
                return null;
            }
            cipher.init(2, secretKeyReference, spec);
            byte[] decryptedData = cipher.doFinal(encryptedData.getEncryptedData());
            return decryptedData;
        } catch (InvalidAlgorithmParameterException e) {
            reportException(e, "decrypt had an invalid algorithm parameter");
            return null;
        } catch (InvalidKeyException e2) {
            reportException(e2, "decrypt had an invalid key");
            return null;
        } catch (NoSuchAlgorithmException e3) {
            reportException(e3, "decrypt could not find cipher algorithm AES/GCM/NoPadding");
            return null;
        } catch (BadPaddingException e4) {
            reportException(e4, "decrypt had bad padding");
            return null;
        } catch (IllegalBlockSizeException e5) {
            reportException(e5, "decrypt had a illegal block size");
            return null;
        } catch (NoSuchPaddingException e6) {
            reportException(e6, "decrypt could not find padding algorithm");
            return null;
        }
    }

    private SecretKey getOrCreateSecretKey(String keyAlias) {
        SecretKey secretKey = null;
        try {
            KeyStore keyStore = KeyStore.getInstance(KEY_STORE);
            keyStore.load(null);
            if (keyStore.containsAlias(keyAlias)) {
                KeyStore.SecretKeyEntry secretKeyEntry = (KeyStore.SecretKeyEntry) keyStore.getEntry(keyAlias, null);
                if (secretKeyEntry == null) {
                    reportException(new Exception("keystore contains the alias and the secret key entry was null"), "keystore contains the alias and the secret key entry was null");
                } else {
                    secretKey = secretKeyEntry.getSecretKey();
                }
                return secretKey;
            }
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", KEY_STORE);
            KeyGenParameterSpec keyGenParameterSpec = new KeyGenParameterSpec.Builder(keyAlias, 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build();
            keyGenerator.init(keyGenParameterSpec);
            SecretKey secretKey2 = keyGenerator.generateKey();
            return secretKey2;
        } catch (IOException e) {
            reportException(e, "getOrCreateSecretKey had an IO exception.");
            return null;
        } catch (InvalidAlgorithmParameterException e2) {
            reportException(e2, "getOrCreateSecretKey had an invalid algorithm parameter");
            return null;
        } catch (KeyStoreException e3) {
            reportException(e3, "getOrCreateSecretKey cannot find the keystore: AndroidKeyStore");
            return null;
        } catch (NoSuchAlgorithmException e4) {
            reportException(e4, "getOrCreateSecretKey cannot find algorithm");
            return null;
        } catch (NoSuchProviderException e5) {
            reportException(e5, "getOrCreateSecretKey cannot find crypto provider");
            return null;
        } catch (UnrecoverableEntryException e6) {
            reportException(e6, "getOrCreateSecretKey had an unrecoverable entry exception.");
            return null;
        } catch (CertificateException e7) {
            reportException(e7, "getOrCreateSecretKey had a certificate exception.");
            return null;
        }
    }

    private boolean constantTimeEquals(byte[] a, byte[] b) {
        if (a == null && b == null) {
            return true;
        }
        if (a == null || b == null || a.length != b.length) {
            return false;
        }
        byte differenceAccumulator = 0;
        for (int i = 0; i < a.length; i++) {
            differenceAccumulator = (byte) ((a[i] ^ b[i]) | differenceAccumulator);
        }
        if (differenceAccumulator == 0) {
            return true;
        }
        return false;
    }

    private void reportException(Exception exception, String error) {
        Log.wtf(TAG, "An irrecoverable key store error was encountered: " + error, exception);
    }
}
