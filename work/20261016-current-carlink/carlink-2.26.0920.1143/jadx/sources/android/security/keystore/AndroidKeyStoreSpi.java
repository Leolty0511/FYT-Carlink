package android.security.keystore;

import android.accessibilityservice.c;
import android.security.Credentials;
import android.security.KeyStore;
import android.security.KeyStoreParameter;
import android.security.keymaster.KeyCharacteristics;
import android.security.keymaster.KeymasterArguments;
import android.security.keymaster.KeymasterDefs;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Key;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.PrivateKey;
import java.security.ProviderException;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.crypto.SecretKey;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
public class AndroidKeyStoreSpi extends KeyStoreSpi {
    public static final String NAME = "AndroidKeyStore";
    private KeyStore mKeyStore;
    private int mUid = -1;

    public static class KeyStoreX509Certificate extends DelegatingX509Certificate {
        private final String mPrivateKeyAlias;
        private final int mPrivateKeyUid;

        public KeyStoreX509Certificate(String str, int i2, X509Certificate x509Certificate) {
            super(x509Certificate);
            this.mPrivateKeyAlias = str;
            this.mPrivateKeyUid = i2;
        }

        @Override // android.security.keystore.DelegatingX509Certificate, java.security.cert.Certificate
        public PublicKey getPublicKey() {
            PublicKey publicKey = super.getPublicKey();
            return AndroidKeyStoreProvider.getAndroidKeyStorePublicKey(this.mPrivateKeyAlias, this.mPrivateKeyUid, publicKey.getAlgorithm(), publicKey.getEncoded());
        }
    }

    private Certificate getCertificateForPrivateKeyEntry(String str, byte[] bArr) {
        X509Certificate certificate = toCertificate(bArr);
        if (certificate == null) {
            return null;
        }
        String strJ = c.j(Credentials.USER_PRIVATE_KEY, str);
        return this.mKeyStore.contains(strJ, this.mUid) ? wrapIntoKeyStoreCertificate(strJ, this.mUid, certificate) : certificate;
    }

    private Certificate getCertificateForTrustedCertificateEntry(byte[] bArr) {
        return toCertificate(bArr);
    }

    private static KeyProtection getLegacyKeyProtectionParameter(PrivateKey privateKey) throws KeyStoreException {
        KeyProtection.Builder builder;
        String algorithm = privateKey.getAlgorithm();
        if (KeyProperties.KEY_ALGORITHM_EC.equalsIgnoreCase(algorithm)) {
            builder = new KeyProtection.Builder(12);
            builder.setDigests(KeyProperties.DIGEST_NONE, KeyProperties.DIGEST_SHA1, KeyProperties.DIGEST_SHA224, "SHA-256", KeyProperties.DIGEST_SHA384, KeyProperties.DIGEST_SHA512);
        } else {
            if (!KeyProperties.KEY_ALGORITHM_RSA.equalsIgnoreCase(algorithm)) {
                throw new KeyStoreException(c.j("Unsupported key algorithm: ", algorithm));
            }
            builder = new KeyProtection.Builder(15);
            builder.setDigests(KeyProperties.DIGEST_NONE, KeyProperties.DIGEST_MD5, KeyProperties.DIGEST_SHA1, KeyProperties.DIGEST_SHA224, "SHA-256", KeyProperties.DIGEST_SHA384, KeyProperties.DIGEST_SHA512);
            builder.setEncryptionPaddings(KeyProperties.ENCRYPTION_PADDING_NONE, KeyProperties.ENCRYPTION_PADDING_RSA_PKCS1, KeyProperties.ENCRYPTION_PADDING_RSA_OAEP);
            builder.setSignaturePaddings(KeyProperties.SIGNATURE_PADDING_RSA_PKCS1, KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            builder.setRandomizedEncryptionRequired(false);
        }
        builder.setUserAuthenticationRequired(false);
        return builder.build();
    }

    private Date getModificationDate(String str) {
        long j2 = this.mKeyStore.getmtime(str, this.mUid);
        if (j2 == -1) {
            return null;
        }
        return new Date(j2);
    }

    private Set<String> getUniqueAliases() {
        String[] list = this.mKeyStore.list("", this.mUid);
        if (list == null) {
            return new HashSet();
        }
        HashSet hashSet = new HashSet(list.length);
        for (String str : list) {
            int iIndexOf = str.indexOf(95);
            if (iIndexOf == -1 || str.length() <= iIndexOf) {
                Log.e("AndroidKeyStore", "invalid alias: ".concat(str));
            } else {
                hashSet.add(new String(str.substring(iIndexOf + 1)));
            }
        }
        return hashSet;
    }

    private boolean isCertificateEntry(String str) {
        if (str != null) {
            return this.mKeyStore.contains(Credentials.CA_CERTIFICATE.concat(str), this.mUid);
        }
        throw new NullPointerException("alias == null");
    }

    private boolean isKeyEntry(String str) {
        return isPrivateKeyEntry(str) || isSecretKeyEntry(str);
    }

    private boolean isPrivateKeyEntry(String str) {
        if (str != null) {
            return this.mKeyStore.contains(Credentials.USER_PRIVATE_KEY.concat(str), this.mUid);
        }
        throw new NullPointerException("alias == null");
    }

    private boolean isSecretKeyEntry(String str) {
        if (str != null) {
            return this.mKeyStore.contains(Credentials.USER_SECRET_KEY.concat(str), this.mUid);
        }
        throw new NullPointerException("alias == null");
    }

    /* JADX WARN: Code duplicated, block: B:124:0x0067 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x005d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:15:0x0036  */
    /* JADX WARN: Code duplicated, block: B:17:0x0039  */
    /* JADX WARN: Code duplicated, block: B:20:0x0040  */
    /* JADX WARN: Code duplicated, block: B:22:0x0050  */
    /* JADX WARN: Code duplicated, block: B:24:0x0056 A[LOOP:0: B:18:0x003d->B:24:0x0056, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:32:0x007c  */
    /* JADX WARN: Code duplicated, block: B:34:0x0083  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a4 A[LOOP:2: B:41:0x00a2->B:42:0x00a4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:44:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:48:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:82:0x01cb A[Catch: all -> 0x025e, TRY_ENTER, TryCatch #4 {all -> 0x025e, blocks: (B:82:0x01cb, B:88:0x020f, B:90:0x022a, B:93:0x0246, B:94:0x0251, B:95:0x0252, B:96:0x025d, B:85:0x01f5, B:86:0x0200, B:87:0x0201), top: B:122:0x01c9 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:85:0x01f5 A[Catch: all -> 0x025e, TryCatch #4 {all -> 0x025e, blocks: (B:82:0x01cb, B:88:0x020f, B:90:0x022a, B:93:0x0246, B:94:0x0251, B:95:0x0252, B:96:0x025d, B:85:0x01f5, B:86:0x0200, B:87:0x0201), top: B:122:0x01c9 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0201 A[Catch: all -> 0x025e, TryCatch #4 {all -> 0x025e, blocks: (B:82:0x01cb, B:88:0x020f, B:90:0x022a, B:93:0x0246, B:94:0x0251, B:95:0x0252, B:96:0x025d, B:85:0x01f5, B:86:0x0200, B:87:0x0201), top: B:122:0x01c9 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x022a A[Catch: all -> 0x025e, TryCatch #4 {all -> 0x025e, blocks: (B:82:0x01cb, B:88:0x020f, B:90:0x022a, B:93:0x0246, B:94:0x0251, B:95:0x0252, B:96:0x025d, B:85:0x01f5, B:86:0x0200, B:87:0x0201), top: B:122:0x01c9 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0245 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:93:0x0246 A[Catch: all -> 0x025e, TryCatch #4 {all -> 0x025e, blocks: (B:82:0x01cb, B:88:0x020f, B:90:0x022a, B:93:0x0246, B:94:0x0251, B:95:0x0252, B:96:0x025d, B:85:0x01f5, B:86:0x0200, B:87:0x0201), top: B:122:0x01c9 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x0252 A[Catch: all -> 0x025e, TryCatch #4 {all -> 0x025e, blocks: (B:82:0x01cb, B:88:0x020f, B:90:0x022a, B:93:0x0246, B:94:0x0251, B:95:0x0252, B:96:0x025d, B:85:0x01f5, B:86:0x0200, B:87:0x0201), top: B:122:0x01c9 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:82:0x01cb, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:90:0x022a, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r24v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r25v0, types: [java.security.Key, java.security.PrivateKey] */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v5, types: [int] */
    /* JADX WARN: Type inference failed for: r5v5, types: [android.security.KeyStore] */
    /* JADX WARN: Type inference failed for: r5v7, types: [android.security.KeyStore] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void setPrivateKeyEntry(String str, PrivateKey privateKey, Certificate[] certificateArr, java.security.KeyStore.ProtectionParameter protectionParameter) throws KeyStoreException {
        KeyProtection legacyKeyProtectionParameter;
        KeyProtection legacyKeyProtectionParameter2;
        ?? r4;
        boolean zIsEncryptionRequired;
        int length;
        X509Certificate[] x509CertificateArr;
        int i2;
        KeymasterArguments keymasterArguments;
        byte[] bArr;
        String alias;
        String format;
        int i3;
        byte[] bArr2;
        int iInsert;
        int iInsert2;
        int iImportKey;
        int i4;
        byte[][] bArr3;
        int i5;
        int length2;
        byte[] bArr4;
        int i6;
        int i7;
        Certificate certificate;
        int i8 = 0;
        if (protectionParameter != null) {
            if (protectionParameter instanceof KeyStoreParameter) {
                legacyKeyProtectionParameter2 = getLegacyKeyProtectionParameter(privateKey);
                zIsEncryptionRequired = ((KeyStoreParameter) protectionParameter).isEncryptionRequired();
            } else {
                if (!(protectionParameter instanceof KeyProtection)) {
                    throw new KeyStoreException("Unsupported protection parameter class:" + protectionParameter.getClass().getName() + ". Supported: " + KeyProtection.class.getName() + ", " + KeyStoreParameter.class.getName());
                }
                legacyKeyProtectionParameter = (KeyProtection) protectionParameter;
                if (legacyKeyProtectionParameter.isCriticalToDeviceEncryption()) {
                    legacyKeyProtectionParameter2 = legacyKeyProtectionParameter;
                    r4 = 8;
                }
            }
            if (certificateArr != null) {
                r4 = zIsEncryptionRequired;
                if (certificateArr.length != 0) {
                    length = certificateArr.length;
                    x509CertificateArr = new X509Certificate[length];
                    for (i2 = 0; i2 < certificateArr.length; i2++) {
                        if ("X.509".equals(certificateArr[i2].getType())) {
                            throw new KeyStoreException(c.d("Certificates must be in X.509 format: invalid cert #", i2));
                        }
                        certificate = certificateArr[i2];
                        if (certificate instanceof X509Certificate) {
                            throw new KeyStoreException(c.d("Certificates must be in X.509 format: invalid cert #", i2));
                        }
                        x509CertificateArr[i2] = (X509Certificate) certificate;
                    }
                    try {
                        byte[] encoded = x509CertificateArr[0].getEncoded();
                        keymasterArguments = null;
                        if (certificateArr.length > 1) {
                            i4 = length - 1;
                            bArr3 = new byte[i4][];
                            i5 = 0;
                            length2 = 0;
                            while (i5 < i4) {
                                int i9 = i5 + 1;
                                try {
                                    byte[] encoded2 = x509CertificateArr[i9].getEncoded();
                                    bArr3[i5] = encoded2;
                                    length2 += encoded2.length;
                                    i5 = i9;
                                } catch (CertificateEncodingException e2) {
                                    throw new KeyStoreException(c.d("Failed to encode certificate #", i5), e2);
                                }
                            }
                            bArr4 = new byte[length2];
                            i7 = 0;
                            for (i6 = 0; i6 < i4; i6++) {
                                byte[] bArr5 = bArr3[i6];
                                int length3 = bArr5.length;
                                System.arraycopy(bArr5, 0, bArr4, i7, length3);
                                i7 += length3;
                                bArr3[i6] = null;
                            }
                            bArr = bArr4;
                        } else {
                            bArr = null;
                        }
                        if (privateKey instanceof AndroidKeyStorePrivateKey) {
                            alias = ((AndroidKeyStoreKey) privateKey).getAlias();
                        } else {
                            alias = null;
                        }
                        if (alias == null && alias.startsWith(Credentials.USER_PRIVATE_KEY)) {
                            String strSubstring = alias.substring(8);
                            if (!str.equals(strSubstring)) {
                                throw new KeyStoreException(c.l("Can only replace keys with same alias: ", str, " != ", strSubstring));
                            }
                            i3 = 1;
                            bArr2 = null;
                        } else {
                            format = privateKey.getFormat();
                            if (format != null || !"PKCS#8".equals(format)) {
                                throw new KeyStoreException(c.k("Unsupported private key export format: ", format, ". Only private keys which export their key material in PKCS#8 format are supported."));
                            }
                            byte[] encoded3 = privateKey.getEncoded();
                            if (encoded3 == null) {
                                throw new KeyStoreException("Private key did not export any key material");
                            }
                            KeymasterArguments keymasterArguments2 = new KeymasterArguments();
                            try {
                                keymasterArguments2.addEnum(KeymasterDefs.KM_TAG_ALGORITHM, KeyProperties.KeyAlgorithm.toKeymasterAsymmetricKeyAlgorithm(privateKey.getAlgorithm()));
                                int purposes = legacyKeyProtectionParameter2.getPurposes();
                                keymasterArguments2.addEnums(KeymasterDefs.KM_TAG_PURPOSE, KeyProperties.Purpose.allToKeymaster(purposes));
                                if (legacyKeyProtectionParameter2.isDigestsSpecified()) {
                                    keymasterArguments2.addEnums(KeymasterDefs.KM_TAG_DIGEST, KeyProperties.Digest.allToKeymaster(legacyKeyProtectionParameter2.getDigests()));
                                }
                                keymasterArguments2.addEnums(KeymasterDefs.KM_TAG_BLOCK_MODE, KeyProperties.BlockMode.allToKeymaster(legacyKeyProtectionParameter2.getBlockModes()));
                                int[] iArrAllToKeymaster = KeyProperties.EncryptionPadding.allToKeymaster(legacyKeyProtectionParameter2.getEncryptionPaddings());
                                if ((purposes & 1) != 0 && legacyKeyProtectionParameter2.isRandomizedEncryptionRequired()) {
                                    int length4 = iArrAllToKeymaster.length;
                                    while (i8 < length4) {
                                        int i10 = iArrAllToKeymaster[i8];
                                        if (!KeymasterUtils.isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(i10)) {
                                            throw new KeyStoreException("Randomized encryption (IND-CPA) required but is violated by encryption padding mode: " + KeyProperties.EncryptionPadding.fromKeymaster(i10) + ". See KeyProtection documentation.");
                                        }
                                        i8++;
                                    }
                                }
                                keymasterArguments2.addEnums(KeymasterDefs.KM_TAG_PADDING, iArrAllToKeymaster);
                                keymasterArguments2.addEnums(KeymasterDefs.KM_TAG_PADDING, KeyProperties.SignaturePadding.allToKeymaster(legacyKeyProtectionParameter2.getSignaturePaddings()));
                                KeymasterUtils.addUserAuthArgs(keymasterArguments2, legacyKeyProtectionParameter2.isUserAuthenticationRequired(), legacyKeyProtectionParameter2.getUserAuthenticationValidityDurationSeconds(), legacyKeyProtectionParameter2.isUserAuthenticationValidWhileOnBody(), legacyKeyProtectionParameter2.isInvalidatedByBiometricEnrollment(), legacyKeyProtectionParameter2.getBoundToSpecificSecureUserId());
                                keymasterArguments2.addDateIfNotNull(KeymasterDefs.KM_TAG_ACTIVE_DATETIME, legacyKeyProtectionParameter2.getKeyValidityStart());
                                keymasterArguments2.addDateIfNotNull(KeymasterDefs.KM_TAG_ORIGINATION_EXPIRE_DATETIME, legacyKeyProtectionParameter2.getKeyValidityForOriginationEnd());
                                keymasterArguments2.addDateIfNotNull(KeymasterDefs.KM_TAG_USAGE_EXPIRE_DATETIME, legacyKeyProtectionParameter2.getKeyValidityForConsumptionEnd());
                                keymasterArguments = keymasterArguments2;
                                i3 = 1;
                                i8 = 1;
                                bArr2 = encoded3;
                            } catch (IllegalArgumentException | IllegalStateException e3) {
                                throw new KeyStoreException(e3);
                            }
                        }
                        try {
                            if (i8 != 0) {
                                Credentials.deleteAllTypesForAlias(this.mKeyStore, str, this.mUid);
                                KeyCharacteristics keyCharacteristics = new KeyCharacteristics();
                                iImportKey = this.mKeyStore.importKey(Credentials.USER_PRIVATE_KEY + ((String) str), keymasterArguments, 1, bArr2, this.mUid, r4 == true ? 1 : 0, keyCharacteristics);
                                if (iImportKey == i3) {
                                    throw new KeyStoreException("Failed to store private key", KeyStore.getKeyStoreException(iImportKey));
                                }
                            } else {
                                Credentials.deleteCertificateTypesForAlias(this.mKeyStore, str, this.mUid);
                                Credentials.deleteSecretKeyTypeForAlias(this.mKeyStore, str, this.mUid);
                            }
                            iInsert = this.mKeyStore.insert(Credentials.USER_CERTIFICATE + ((String) str), encoded, this.mUid, r4);
                            if (iInsert == i3) {
                                throw new KeyStoreException("Failed to store certificate #0", KeyStore.getKeyStoreException(iInsert));
                            }
                            iInsert2 = this.mKeyStore.insert(Credentials.CA_CERTIFICATE + ((String) str), bArr, this.mUid, r4);
                            if (iInsert2 == i3) {
                                throw new KeyStoreException("Failed to store certificate chain", KeyStore.getKeyStoreException(iInsert2));
                            }
                            return;
                        } catch (Throwable th) {
                            if (i8 != 0) {
                                Credentials.deleteAllTypesForAlias(this.mKeyStore, str, this.mUid);
                            } else {
                                Credentials.deleteCertificateTypesForAlias(this.mKeyStore, str, this.mUid);
                                Credentials.deleteSecretKeyTypeForAlias(this.mKeyStore, str, this.mUid);
                            }
                            throw th;
                        }
                    } catch (CertificateEncodingException e4) {
                        throw new KeyStoreException("Failed to encode certificate #0", e4);
                    }
                }
            }
            r4 = zIsEncryptionRequired;
            throw new KeyStoreException("Must supply at least one Certificate with PrivateKey");
        }
        legacyKeyProtectionParameter = getLegacyKeyProtectionParameter(privateKey);
        legacyKeyProtectionParameter2 = legacyKeyProtectionParameter;
        r4 = 0;
        if (certificateArr != null) {
            r4 = zIsEncryptionRequired;
            if (certificateArr.length != 0) {
                length = certificateArr.length;
                x509CertificateArr = new X509Certificate[length];
                while (i2 < certificateArr.length) {
                    if ("X.509".equals(certificateArr[i2].getType())) {
                        throw new KeyStoreException(c.d("Certificates must be in X.509 format: invalid cert #", i2));
                    }
                    certificate = certificateArr[i2];
                    if (certificate instanceof X509Certificate) {
                        throw new KeyStoreException(c.d("Certificates must be in X.509 format: invalid cert #", i2));
                    }
                    x509CertificateArr[i2] = (X509Certificate) certificate;
                }
                byte[] encoded4 = x509CertificateArr[0].getEncoded();
                keymasterArguments = null;
                if (certificateArr.length > 1) {
                    i4 = length - 1;
                    bArr3 = new byte[i4][];
                    i5 = 0;
                    length2 = 0;
                    while (i5 < i4) {
                        int i11 = i5 + 1;
                        byte[] encoded5 = x509CertificateArr[i11].getEncoded();
                        bArr3[i5] = encoded5;
                        length2 += encoded5.length;
                        i5 = i11;
                    }
                    bArr4 = new byte[length2];
                    i7 = 0;
                    while (i6 < i4) {
                        byte[] bArr6 = bArr3[i6];
                        int length5 = bArr6.length;
                        System.arraycopy(bArr6, 0, bArr4, i7, length5);
                        i7 += length5;
                        bArr3[i6] = null;
                    }
                    bArr = bArr4;
                } else {
                    bArr = null;
                }
                if (privateKey instanceof AndroidKeyStorePrivateKey) {
                    alias = ((AndroidKeyStoreKey) privateKey).getAlias();
                } else {
                    alias = null;
                }
                if (alias == null) {
                    format = privateKey.getFormat();
                    if (format != null) {
                    }
                    throw new KeyStoreException(c.k("Unsupported private key export format: ", format, ". Only private keys which export their key material in PKCS#8 format are supported."));
                }
                format = privateKey.getFormat();
                if (format != null) {
                }
                throw new KeyStoreException(c.k("Unsupported private key export format: ", format, ". Only private keys which export their key material in PKCS#8 format are supported."));
                if (i8 != 0) {
                    Credentials.deleteAllTypesForAlias(this.mKeyStore, str, this.mUid);
                    KeyCharacteristics keyCharacteristics2 = new KeyCharacteristics();
                    iImportKey = this.mKeyStore.importKey(Credentials.USER_PRIVATE_KEY + ((String) str), keymasterArguments, 1, bArr2, this.mUid, r4 == true ? 1 : 0, keyCharacteristics2);
                    if (iImportKey == i3) {
                        throw new KeyStoreException("Failed to store private key", KeyStore.getKeyStoreException(iImportKey));
                    }
                } else {
                    Credentials.deleteCertificateTypesForAlias(this.mKeyStore, str, this.mUid);
                    Credentials.deleteSecretKeyTypeForAlias(this.mKeyStore, str, this.mUid);
                }
                iInsert = this.mKeyStore.insert(Credentials.USER_CERTIFICATE + ((String) str), encoded4, this.mUid, r4);
                if (iInsert == i3) {
                    throw new KeyStoreException("Failed to store certificate #0", KeyStore.getKeyStoreException(iInsert));
                }
                iInsert2 = this.mKeyStore.insert(Credentials.CA_CERTIFICATE + ((String) str), bArr, this.mUid, r4);
                if (iInsert2 == i3) {
                    throw new KeyStoreException("Failed to store certificate chain", KeyStore.getKeyStoreException(iInsert2));
                }
                return;
            }
        }
        r4 = zIsEncryptionRequired;
        throw new KeyStoreException("Must supply at least one Certificate with PrivateKey");
    }

    private void setSecretKeyEntry(String str, SecretKey secretKey, java.security.KeyStore.ProtectionParameter protectionParameter) throws KeyStoreException {
        int[] iArrAllToKeymaster;
        if (protectionParameter != null && !(protectionParameter instanceof KeyProtection)) {
            throw new KeyStoreException("Unsupported protection parameter class: " + protectionParameter.getClass().getName() + ". Supported: " + KeyProtection.class.getName());
        }
        KeyProtection keyProtection = (KeyProtection) protectionParameter;
        if (secretKey instanceof AndroidKeyStoreSecretKey) {
            String alias = ((AndroidKeyStoreSecretKey) secretKey).getAlias();
            if (alias == null) {
                throw new KeyStoreException("KeyStore-backed secret key does not have an alias");
            }
            if (!alias.startsWith(Credentials.USER_SECRET_KEY)) {
                throw new KeyStoreException("KeyStore-backed secret key has invalid alias: ".concat(alias));
            }
            String strSubstring = alias.substring(8);
            if (!str.equals(strSubstring)) {
                throw new KeyStoreException(c.l("Can only replace KeyStore-backed keys with same alias: ", str, " != ", strSubstring));
            }
            if (keyProtection != null) {
                throw new KeyStoreException("Modifying KeyStore-backed key using protection parameters not supported");
            }
            return;
        }
        if (keyProtection == null) {
            throw new KeyStoreException("Protection parameters must be specified when importing a symmetric key");
        }
        String format = secretKey.getFormat();
        if (format == null) {
            throw new KeyStoreException("Only secret keys that export their key material are supported");
        }
        if (!"RAW".equals(format)) {
            throw new KeyStoreException("Unsupported secret key material export format: ".concat(format));
        }
        byte[] encoded = secretKey.getEncoded();
        if (encoded == null) {
            throw new KeyStoreException("Key did not export its key material despite supporting RAW format export");
        }
        KeymasterArguments keymasterArguments = new KeymasterArguments();
        try {
            int keymasterSecretKeyAlgorithm = KeyProperties.KeyAlgorithm.toKeymasterSecretKeyAlgorithm(secretKey.getAlgorithm());
            keymasterArguments.addEnum(KeymasterDefs.KM_TAG_ALGORITHM, keymasterSecretKeyAlgorithm);
            if (keymasterSecretKeyAlgorithm == 128) {
                int keymasterDigest = KeyProperties.KeyAlgorithm.toKeymasterDigest(secretKey.getAlgorithm());
                if (keymasterDigest == -1) {
                    throw new ProviderException("HMAC key algorithm digest unknown for key algorithm " + secretKey.getAlgorithm());
                }
                iArrAllToKeymaster = new int[]{keymasterDigest};
                if (keyProtection.isDigestsSpecified()) {
                    int[] iArrAllToKeymaster2 = KeyProperties.Digest.allToKeymaster(keyProtection.getDigests());
                    if (iArrAllToKeymaster2.length != 1 || iArrAllToKeymaster2[0] != keymasterDigest) {
                        throw new KeyStoreException("Unsupported digests specification: " + Arrays.asList(keyProtection.getDigests()) + ". Only " + KeyProperties.Digest.fromKeymaster(keymasterDigest) + " supported for HMAC key algorithm " + secretKey.getAlgorithm());
                    }
                }
            } else {
                iArrAllToKeymaster = keyProtection.isDigestsSpecified() ? KeyProperties.Digest.allToKeymaster(keyProtection.getDigests()) : EmptyArray.INT;
            }
            keymasterArguments.addEnums(KeymasterDefs.KM_TAG_DIGEST, iArrAllToKeymaster);
            int purposes = keyProtection.getPurposes();
            int[] iArrAllToKeymaster3 = KeyProperties.BlockMode.allToKeymaster(keyProtection.getBlockModes());
            int i2 = purposes & 1;
            if (i2 != 0 && keyProtection.isRandomizedEncryptionRequired()) {
                for (int i3 : iArrAllToKeymaster3) {
                    if (!KeymasterUtils.isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(i3)) {
                        throw new KeyStoreException("Randomized encryption (IND-CPA) required but may be violated by block mode: " + KeyProperties.BlockMode.fromKeymaster(i3) + ". See KeyProtection documentation.");
                    }
                }
            }
            keymasterArguments.addEnums(KeymasterDefs.KM_TAG_PURPOSE, KeyProperties.Purpose.allToKeymaster(purposes));
            keymasterArguments.addEnums(KeymasterDefs.KM_TAG_BLOCK_MODE, iArrAllToKeymaster3);
            if (keyProtection.getSignaturePaddings().length > 0) {
                throw new KeyStoreException("Signature paddings not supported for symmetric keys");
            }
            keymasterArguments.addEnums(KeymasterDefs.KM_TAG_PADDING, KeyProperties.EncryptionPadding.allToKeymaster(keyProtection.getEncryptionPaddings()));
            KeymasterUtils.addUserAuthArgs(keymasterArguments, keyProtection.isUserAuthenticationRequired(), keyProtection.getUserAuthenticationValidityDurationSeconds(), keyProtection.isUserAuthenticationValidWhileOnBody(), keyProtection.isInvalidatedByBiometricEnrollment(), keyProtection.getBoundToSpecificSecureUserId());
            KeymasterUtils.addMinMacLengthAuthorizationIfNecessary(keymasterArguments, keymasterSecretKeyAlgorithm, iArrAllToKeymaster3, iArrAllToKeymaster);
            keymasterArguments.addDateIfNotNull(KeymasterDefs.KM_TAG_ACTIVE_DATETIME, keyProtection.getKeyValidityStart());
            keymasterArguments.addDateIfNotNull(KeymasterDefs.KM_TAG_ORIGINATION_EXPIRE_DATETIME, keyProtection.getKeyValidityForOriginationEnd());
            keymasterArguments.addDateIfNotNull(KeymasterDefs.KM_TAG_USAGE_EXPIRE_DATETIME, keyProtection.getKeyValidityForConsumptionEnd());
            if (i2 != 0 && !keyProtection.isRandomizedEncryptionRequired()) {
                keymasterArguments.addBoolean(KeymasterDefs.KM_TAG_CALLER_NONCE);
            }
            int i4 = keyProtection.isCriticalToDeviceEncryption() ? 8 : 0;
            Credentials.deleteAllTypesForAlias(this.mKeyStore, str, this.mUid);
            int iImportKey = this.mKeyStore.importKey(Credentials.USER_SECRET_KEY + str, keymasterArguments, 3, encoded, this.mUid, i4, new KeyCharacteristics());
            if (iImportKey != 1) {
                throw new KeyStoreException(c.d("Failed to import secret key. Keystore error code: ", iImportKey));
            }
        } catch (IllegalArgumentException | IllegalStateException e2) {
            throw new KeyStoreException(e2);
        }
    }

    private static X509Certificate toCertificate(byte[] bArr) {
        try {
            return (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr));
        } catch (CertificateException e2) {
            Log.w("AndroidKeyStore", "Couldn't parse certificate in keystore", e2);
            return null;
        }
    }

    private static Collection<X509Certificate> toCertificates(byte[] bArr) {
        try {
            return CertificateFactory.getInstance("X.509").generateCertificates(new ByteArrayInputStream(bArr));
        } catch (CertificateException e2) {
            Log.w("AndroidKeyStore", "Couldn't parse certificates in keystore", e2);
            return new ArrayList();
        }
    }

    private static KeyStoreX509Certificate wrapIntoKeyStoreCertificate(String str, int i2, X509Certificate x509Certificate) {
        if (x509Certificate != null) {
            return new KeyStoreX509Certificate(str, i2, x509Certificate);
        }
        return null;
    }

    @Override // java.security.KeyStoreSpi
    public Enumeration<String> engineAliases() {
        return Collections.enumeration(getUniqueAliases());
    }

    @Override // java.security.KeyStoreSpi
    public boolean engineContainsAlias(String str) {
        if (str != null) {
            return this.mKeyStore.contains(Credentials.USER_PRIVATE_KEY.concat(str), this.mUid) || this.mKeyStore.contains(Credentials.USER_SECRET_KEY.concat(str), this.mUid) || this.mKeyStore.contains(Credentials.USER_CERTIFICATE.concat(str), this.mUid) || this.mKeyStore.contains(Credentials.CA_CERTIFICATE.concat(str), this.mUid);
        }
        throw new NullPointerException("alias == null");
    }

    @Override // java.security.KeyStoreSpi
    public void engineDeleteEntry(String str) throws KeyStoreException {
        if (!Credentials.deleteAllTypesForAlias(this.mKeyStore, str, this.mUid)) {
            throw new KeyStoreException(c.j("Failed to delete entry: ", str));
        }
    }

    @Override // java.security.KeyStoreSpi
    public Certificate engineGetCertificate(String str) {
        if (str == null) {
            throw new NullPointerException("alias == null");
        }
        byte[] bArr = this.mKeyStore.get(Credentials.USER_CERTIFICATE.concat(str), this.mUid);
        if (bArr != null) {
            return getCertificateForPrivateKeyEntry(str, bArr);
        }
        byte[] bArr2 = this.mKeyStore.get(Credentials.CA_CERTIFICATE.concat(str), this.mUid);
        if (bArr2 != null) {
            return getCertificateForTrustedCertificateEntry(bArr2);
        }
        return null;
    }

    @Override // java.security.KeyStoreSpi
    public String engineGetCertificateAlias(Certificate certificate) {
        byte[] bArr;
        if (certificate == null || !"X.509".equalsIgnoreCase(certificate.getType())) {
            return null;
        }
        try {
            byte[] encoded = certificate.getEncoded();
            if (encoded == null) {
                return null;
            }
            HashSet hashSet = new HashSet();
            String[] list = this.mKeyStore.list(Credentials.USER_CERTIFICATE, this.mUid);
            if (list != null) {
                for (String str : list) {
                    byte[] bArr2 = this.mKeyStore.get(c.j(Credentials.USER_CERTIFICATE, str), this.mUid);
                    if (bArr2 != null) {
                        hashSet.add(str);
                        if (Arrays.equals(bArr2, encoded)) {
                            return str;
                        }
                    }
                }
            }
            String[] list2 = this.mKeyStore.list(Credentials.CA_CERTIFICATE, this.mUid);
            if (list != null) {
                for (String str2 : list2) {
                    if (!hashSet.contains(str2) && (bArr = this.mKeyStore.get(c.j(Credentials.CA_CERTIFICATE, str2), this.mUid)) != null && Arrays.equals(bArr, encoded)) {
                        return str2;
                    }
                }
            }
            return null;
        } catch (CertificateEncodingException unused) {
        }
    }

    @Override // java.security.KeyStoreSpi
    public Certificate[] engineGetCertificateChain(String str) {
        Certificate[] certificateArr;
        if (str == null) {
            throw new NullPointerException("alias == null");
        }
        X509Certificate x509Certificate = (X509Certificate) engineGetCertificate(str);
        if (x509Certificate == null) {
            return null;
        }
        byte[] bArr = this.mKeyStore.get(Credentials.CA_CERTIFICATE.concat(str), this.mUid);
        int i2 = 1;
        if (bArr != null) {
            Collection<X509Certificate> certificates = toCertificates(bArr);
            certificateArr = new Certificate[certificates.size() + 1];
            Iterator<X509Certificate> it = certificates.iterator();
            while (it.hasNext()) {
                certificateArr[i2] = it.next();
                i2++;
            }
        } else {
            certificateArr = new Certificate[1];
        }
        certificateArr[0] = x509Certificate;
        return certificateArr;
    }

    @Override // java.security.KeyStoreSpi
    public Date engineGetCreationDate(String str) {
        if (str == null) {
            throw new NullPointerException("alias == null");
        }
        Date modificationDate = getModificationDate(Credentials.USER_PRIVATE_KEY.concat(str));
        if (modificationDate != null) {
            return modificationDate;
        }
        Date modificationDate2 = getModificationDate(Credentials.USER_SECRET_KEY.concat(str));
        if (modificationDate2 != null) {
            return modificationDate2;
        }
        Date modificationDate3 = getModificationDate(Credentials.USER_CERTIFICATE.concat(str));
        return modificationDate3 != null ? modificationDate3 : getModificationDate(Credentials.CA_CERTIFICATE.concat(str));
    }

    @Override // java.security.KeyStoreSpi
    public Key engineGetKey(String str, char[] cArr) {
        if (isPrivateKeyEntry(str)) {
            return AndroidKeyStoreProvider.loadAndroidKeyStorePrivateKeyFromKeystore(this.mKeyStore, c.j(Credentials.USER_PRIVATE_KEY, str), this.mUid);
        }
        if (!isSecretKeyEntry(str)) {
            return null;
        }
        return AndroidKeyStoreProvider.loadAndroidKeyStoreSecretKeyFromKeystore(this.mKeyStore, c.j(Credentials.USER_SECRET_KEY, str), this.mUid);
    }

    @Override // java.security.KeyStoreSpi
    public boolean engineIsCertificateEntry(String str) {
        return !isKeyEntry(str) && isCertificateEntry(str);
    }

    @Override // java.security.KeyStoreSpi
    public boolean engineIsKeyEntry(String str) {
        return isKeyEntry(str);
    }

    @Override // java.security.KeyStoreSpi
    public void engineLoad(InputStream inputStream, char[] cArr) {
        if (inputStream != null) {
            throw new IllegalArgumentException("InputStream not supported");
        }
        if (cArr != null) {
            throw new IllegalArgumentException("password not supported");
        }
        this.mKeyStore = KeyStore.getInstance();
        this.mUid = -1;
    }

    @Override // java.security.KeyStoreSpi
    public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
        if (isKeyEntry(str)) {
            throw new KeyStoreException("Entry exists and is not a trusted certificate");
        }
        if (certificate == null) {
            throw new NullPointerException("cert == null");
        }
        try {
            if (!this.mKeyStore.put(c.j(Credentials.CA_CERTIFICATE, str), certificate.getEncoded(), this.mUid, 0)) {
                throw new KeyStoreException("Couldn't insert certificate; is KeyStore initialized?");
            }
        } catch (CertificateEncodingException e2) {
            throw new KeyStoreException(e2);
        }
    }

    @Override // java.security.KeyStoreSpi
    public void engineSetEntry(String str, java.security.KeyStore.Entry entry, java.security.KeyStore.ProtectionParameter protectionParameter) throws KeyStoreException {
        if (entry == null) {
            throw new KeyStoreException("entry == null");
        }
        Credentials.deleteAllTypesForAlias(this.mKeyStore, str, this.mUid);
        if (entry instanceof java.security.KeyStore.TrustedCertificateEntry) {
            engineSetCertificateEntry(str, ((java.security.KeyStore.TrustedCertificateEntry) entry).getTrustedCertificate());
            return;
        }
        if (entry instanceof java.security.KeyStore.PrivateKeyEntry) {
            java.security.KeyStore.PrivateKeyEntry privateKeyEntry = (java.security.KeyStore.PrivateKeyEntry) entry;
            setPrivateKeyEntry(str, privateKeyEntry.getPrivateKey(), privateKeyEntry.getCertificateChain(), protectionParameter);
        } else if (entry instanceof java.security.KeyStore.SecretKeyEntry) {
            setSecretKeyEntry(str, ((java.security.KeyStore.SecretKeyEntry) entry).getSecretKey(), protectionParameter);
        } else {
            throw new KeyStoreException("Entry must be a PrivateKeyEntry, SecretKeyEntry or TrustedCertificateEntry; was " + entry);
        }
    }

    @Override // java.security.KeyStoreSpi
    public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
        if (cArr != null && cArr.length > 0) {
            throw new KeyStoreException("entries cannot be protected with passwords");
        }
        if (key instanceof PrivateKey) {
            setPrivateKeyEntry(str, (PrivateKey) key, certificateArr, null);
        } else {
            if (!(key instanceof SecretKey)) {
                throw new KeyStoreException("Only PrivateKey and SecretKey are supported");
            }
            setSecretKeyEntry(str, (SecretKey) key, null);
        }
    }

    @Override // java.security.KeyStoreSpi
    public int engineSize() {
        return getUniqueAliases().size();
    }

    @Override // java.security.KeyStoreSpi
    public void engineStore(OutputStream outputStream, char[] cArr) {
        throw new UnsupportedOperationException("Can not serialize AndroidKeyStore to OutputStream");
    }

    @Override // java.security.KeyStoreSpi
    public void engineLoad(java.security.KeyStore.LoadStoreParameter loadStoreParameter) {
        int uid;
        if (loadStoreParameter == null) {
            uid = -1;
        } else if (loadStoreParameter instanceof AndroidKeyStoreLoadStoreParameter) {
            uid = ((AndroidKeyStoreLoadStoreParameter) loadStoreParameter).getUid();
        } else {
            throw new IllegalArgumentException("Unsupported param type: " + loadStoreParameter.getClass());
        }
        this.mKeyStore = KeyStore.getInstance();
        this.mUid = uid;
    }

    @Override // java.security.KeyStoreSpi
    public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
        throw new KeyStoreException("Operation not supported because key encoding is unknown");
    }
}
