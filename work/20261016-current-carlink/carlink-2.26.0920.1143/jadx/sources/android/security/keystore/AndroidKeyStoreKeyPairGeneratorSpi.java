package android.security.keystore;

import android.accessibilityservice.c;
import android.security.Credentials;
import android.security.KeyPairGeneratorSpec;
import android.security.KeyStore;
import android.security.keymaster.KeyCharacteristics;
import android.security.keymaster.KeymasterArguments;
import android.security.keymaster.KeymasterCertificateChain;
import android.security.keymaster.KeymasterDefs;
import com.android.internal.logging.nano.MetricsProto;
import com.android.org.bouncycastle.asn1.ASN1EncodableVector;
import com.android.org.bouncycastle.asn1.ASN1InputStream;
import com.android.org.bouncycastle.asn1.ASN1Integer;
import com.android.org.bouncycastle.asn1.DERBitString;
import com.android.org.bouncycastle.asn1.DERInteger;
import com.android.org.bouncycastle.asn1.DERNull;
import com.android.org.bouncycastle.asn1.DERSequence;
import com.android.org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import com.android.org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import com.android.org.bouncycastle.asn1.x509.Certificate;
import com.android.org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import com.android.org.bouncycastle.asn1.x509.TBSCertificate;
import com.android.org.bouncycastle.asn1.x509.Time;
import com.android.org.bouncycastle.asn1.x509.V3TBSCertificateGenerator;
import com.android.org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import com.android.org.bouncycastle.jce.X509Principal;
import com.android.org.bouncycastle.jce.provider.X509CertificateObject;
import com.android.org.bouncycastle.x509.X509V3CertificateGenerator;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGeneratorSpi;
import java.security.PrivateKey;
import java.security.ProviderException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.RSAKeyGenParameterSpec;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
public abstract class AndroidKeyStoreKeyPairGeneratorSpi extends KeyPairGeneratorSpi {
    private static final int EC_DEFAULT_KEY_SIZE = 256;
    private static final int RSA_DEFAULT_KEY_SIZE = 2048;
    private static final int RSA_MAX_KEY_SIZE = 8192;
    private static final int RSA_MIN_KEY_SIZE = 512;
    private static final List<String> SUPPORTED_EC_NIST_CURVE_NAMES;
    private static final Map<String, Integer> SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE;
    private static final List<Integer> SUPPORTED_EC_NIST_CURVE_SIZES;
    private boolean mEncryptionAtRestRequired;
    private String mEntryAlias;
    private int mEntryUid;
    private String mJcaKeyAlgorithm;
    private int mKeySizeBits;
    private KeyStore mKeyStore;
    private int mKeymasterAlgorithm = -1;
    private int[] mKeymasterBlockModes;
    private int[] mKeymasterDigests;
    private int[] mKeymasterEncryptionPaddings;
    private int[] mKeymasterPurposes;
    private int[] mKeymasterSignaturePaddings;
    private final int mOriginalKeymasterAlgorithm;
    private BigInteger mRSAPublicExponent;
    private SecureRandom mRng;
    private KeyGenParameterSpec mSpec;

    public static class EC extends AndroidKeyStoreKeyPairGeneratorSpi {
        public EC() {
            super(3);
        }
    }

    public static class RSA extends AndroidKeyStoreKeyPairGeneratorSpi {
        public RSA() {
            super(1);
        }
    }

    static {
        HashMap map = new HashMap();
        SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE = map;
        ArrayList arrayList = new ArrayList();
        SUPPORTED_EC_NIST_CURVE_NAMES = arrayList;
        ArrayList arrayList2 = new ArrayList();
        SUPPORTED_EC_NIST_CURVE_SIZES = arrayList2;
        map.put("p-224", 224);
        map.put("secp224r1", 224);
        map.put("p-256", 256);
        map.put("secp256r1", 256);
        map.put("prime256v1", 256);
        Integer numValueOf = Integer.valueOf(MetricsProto.MetricsEvent.ACTION_SHOW_SETTINGS_SUGGESTION);
        map.put("p-384", numValueOf);
        map.put("secp384r1", numValueOf);
        map.put("p-521", 521);
        map.put("secp521r1", 521);
        arrayList.addAll(map.keySet());
        Collections.sort(arrayList);
        arrayList2.addAll(new HashSet(map.values()));
        Collections.sort(arrayList2);
    }

    public AndroidKeyStoreKeyPairGeneratorSpi(int i2) {
        this.mOriginalKeymasterAlgorithm = i2;
    }

    private void addAlgorithmSpecificParameters(KeymasterArguments keymasterArguments) {
        int i2 = this.mKeymasterAlgorithm;
        if (i2 == 1) {
            keymasterArguments.addUnsignedLong(KeymasterDefs.KM_TAG_RSA_PUBLIC_EXPONENT, this.mRSAPublicExponent);
        } else {
            if (i2 == 3) {
                return;
            }
            throw new ProviderException("Unsupported algorithm: " + this.mKeymasterAlgorithm);
        }
    }

    private static void checkValidKeySize(int i2, int i3) throws InvalidAlgorithmParameterException {
        if (i2 == 1) {
            if (i3 < 512 || i3 > 8192) {
                throw new InvalidAlgorithmParameterException("RSA key size must be >= 512 and <= 8192");
            }
        } else {
            if (i2 != 3) {
                throw new ProviderException(c.d("Unsupported algorithm: ", i2));
            }
            List<Integer> list = SUPPORTED_EC_NIST_CURVE_SIZES;
            if (list.contains(Integer.valueOf(i3))) {
                return;
            }
            throw new InvalidAlgorithmParameterException("Unsupported EC key size: " + i3 + " bits. Supported: " + list);
        }
    }

    private KeymasterArguments constructKeyGenerationArguments() {
        KeymasterArguments keymasterArguments = new KeymasterArguments();
        keymasterArguments.addUnsignedInt(KeymasterDefs.KM_TAG_KEY_SIZE, this.mKeySizeBits);
        keymasterArguments.addEnum(KeymasterDefs.KM_TAG_ALGORITHM, this.mKeymasterAlgorithm);
        keymasterArguments.addEnums(KeymasterDefs.KM_TAG_PURPOSE, this.mKeymasterPurposes);
        keymasterArguments.addEnums(KeymasterDefs.KM_TAG_BLOCK_MODE, this.mKeymasterBlockModes);
        keymasterArguments.addEnums(KeymasterDefs.KM_TAG_PADDING, this.mKeymasterEncryptionPaddings);
        keymasterArguments.addEnums(KeymasterDefs.KM_TAG_PADDING, this.mKeymasterSignaturePaddings);
        keymasterArguments.addEnums(KeymasterDefs.KM_TAG_DIGEST, this.mKeymasterDigests);
        KeymasterUtils.addUserAuthArgs(keymasterArguments, this.mSpec.isUserAuthenticationRequired(), this.mSpec.getUserAuthenticationValidityDurationSeconds(), this.mSpec.isUserAuthenticationValidWhileOnBody(), this.mSpec.isInvalidatedByBiometricEnrollment(), 0L);
        keymasterArguments.addDateIfNotNull(KeymasterDefs.KM_TAG_ACTIVE_DATETIME, this.mSpec.getKeyValidityStart());
        keymasterArguments.addDateIfNotNull(KeymasterDefs.KM_TAG_ORIGINATION_EXPIRE_DATETIME, this.mSpec.getKeyValidityForOriginationEnd());
        keymasterArguments.addDateIfNotNull(KeymasterDefs.KM_TAG_USAGE_EXPIRE_DATETIME, this.mSpec.getKeyValidityForConsumptionEnd());
        addAlgorithmSpecificParameters(keymasterArguments);
        if (this.mSpec.isUniqueIdIncluded()) {
            keymasterArguments.addBoolean(KeymasterDefs.KM_TAG_INCLUDE_UNIQUE_ID);
        }
        return keymasterArguments;
    }

    private Iterable<byte[]> createCertificateChain(String str, KeyPair keyPair) {
        byte[] attestationChallenge = this.mSpec.getAttestationChallenge();
        if (attestationChallenge == null) {
            return Collections.singleton(generateSelfSignedCertificateBytes(keyPair));
        }
        KeymasterArguments keymasterArguments = new KeymasterArguments();
        keymasterArguments.addBytes(KeymasterDefs.KM_TAG_ATTESTATION_CHALLENGE, attestationChallenge);
        return getAttestationChain(str, keyPair, keymasterArguments);
    }

    private void generateKeystoreKeyPair(String str, KeymasterArguments keymasterArguments, byte[] bArr, int i2) {
        int iGenerateKey = this.mKeyStore.generateKey(str, keymasterArguments, bArr, this.mEntryUid, i2, new KeyCharacteristics());
        if (iGenerateKey != 1) {
            throw new ProviderException("Failed to generate key pair", KeyStore.getKeyStoreException(iGenerateKey));
        }
    }

    private X509Certificate generateSelfSignedCertificate(PrivateKey privateKey, PublicKey publicKey) {
        String certificateSignatureAlgorithm = getCertificateSignatureAlgorithm(this.mKeymasterAlgorithm, this.mKeySizeBits, this.mSpec);
        if (certificateSignatureAlgorithm == null) {
            return generateSelfSignedCertificateWithFakeSignature(publicKey);
        }
        try {
            return generateSelfSignedCertificateWithValidSignature(privateKey, publicKey, certificateSignatureAlgorithm);
        } catch (Exception unused) {
            return generateSelfSignedCertificateWithFakeSignature(publicKey);
        }
    }

    private byte[] generateSelfSignedCertificateBytes(KeyPair keyPair) {
        try {
            return generateSelfSignedCertificate(keyPair.getPrivate(), keyPair.getPublic()).getEncoded();
        } catch (IOException e2) {
            e = e2;
            throw new ProviderException("Failed to generate self-signed certificate", e);
        } catch (CertificateEncodingException e3) {
            throw new ProviderException("Failed to obtain encoded form of self-signed certificate", e3);
        } catch (CertificateParsingException e4) {
            e = e4;
            throw new ProviderException("Failed to generate self-signed certificate", e);
        }
    }

    private X509Certificate generateSelfSignedCertificateWithFakeSignature(PublicKey publicKey) {
        byte[] encoded;
        AlgorithmIdentifier algorithmIdentifier;
        V3TBSCertificateGenerator v3TBSCertificateGenerator = new V3TBSCertificateGenerator();
        int i2 = this.mKeymasterAlgorithm;
        if (i2 == 1) {
            encoded = new byte[1];
            algorithmIdentifier = new AlgorithmIdentifier(PKCSObjectIdentifiers.sha256WithRSAEncryption, DERNull.INSTANCE);
        } else {
            if (i2 != 3) {
                throw new ProviderException("Unsupported key algorithm: " + this.mKeymasterAlgorithm);
            }
            algorithmIdentifier = new AlgorithmIdentifier(X9ObjectIdentifiers.ecdsa_with_SHA256);
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            aSN1EncodableVector.add(new DERInteger(0L));
            aSN1EncodableVector.add(new DERInteger(0L));
            encoded = new DERSequence().getEncoded();
        }
        ASN1InputStream aSN1InputStream = new ASN1InputStream(publicKey.getEncoded());
        try {
            v3TBSCertificateGenerator.setSubjectPublicKeyInfo(SubjectPublicKeyInfo.getInstance(aSN1InputStream.readObject()));
            aSN1InputStream.close();
            v3TBSCertificateGenerator.setSerialNumber(new ASN1Integer(this.mSpec.getCertificateSerialNumber()));
            X509Principal x509Principal = new X509Principal(this.mSpec.getCertificateSubject().getEncoded());
            v3TBSCertificateGenerator.setSubject(x509Principal);
            v3TBSCertificateGenerator.setIssuer(x509Principal);
            v3TBSCertificateGenerator.setStartDate(new Time(this.mSpec.getCertificateNotBefore()));
            v3TBSCertificateGenerator.setEndDate(new Time(this.mSpec.getCertificateNotAfter()));
            v3TBSCertificateGenerator.setSignature(algorithmIdentifier);
            TBSCertificate tBSCertificateGenerateTBSCertificate = v3TBSCertificateGenerator.generateTBSCertificate();
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
            aSN1EncodableVector2.add(tBSCertificateGenerateTBSCertificate);
            aSN1EncodableVector2.add(algorithmIdentifier);
            aSN1EncodableVector2.add(new DERBitString(encoded));
            return new X509CertificateObject(Certificate.getInstance(new DERSequence(aSN1EncodableVector2)));
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    aSN1InputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private X509Certificate generateSelfSignedCertificateWithValidSignature(PrivateKey privateKey, PublicKey publicKey, String str) {
        X509V3CertificateGenerator x509V3CertificateGenerator = new X509V3CertificateGenerator();
        x509V3CertificateGenerator.setPublicKey(publicKey);
        x509V3CertificateGenerator.setSerialNumber(this.mSpec.getCertificateSerialNumber());
        x509V3CertificateGenerator.setSubjectDN(this.mSpec.getCertificateSubject());
        x509V3CertificateGenerator.setIssuerDN(this.mSpec.getCertificateSubject());
        x509V3CertificateGenerator.setNotBefore(this.mSpec.getCertificateNotBefore());
        x509V3CertificateGenerator.setNotAfter(this.mSpec.getCertificateNotAfter());
        x509V3CertificateGenerator.setSignatureAlgorithm(str);
        return x509V3CertificateGenerator.generate(privateKey);
    }

    private Iterable<byte[]> getAttestationChain(String str, KeyPair keyPair, KeymasterArguments keymasterArguments) {
        KeymasterCertificateChain keymasterCertificateChain = new KeymasterCertificateChain();
        int iAttestKey = this.mKeyStore.attestKey(str, keymasterArguments, keymasterCertificateChain);
        if (iAttestKey != 1) {
            throw new ProviderException("Failed to generate attestation certificate chain", KeyStore.getKeyStoreException(iAttestKey));
        }
        List<byte[]> certificates = keymasterCertificateChain.getCertificates();
        if (certificates.size() >= 2) {
            return certificates;
        }
        throw new ProviderException("Attestation certificate chain contained " + certificates.size() + " entries. At least two are required.");
    }

    private static Set<Integer> getAvailableKeymasterSignatureDigests(String[] strArr, String[] strArr2) {
        HashSet hashSet = new HashSet();
        for (int i2 : KeyProperties.Digest.allToKeymaster(strArr)) {
            hashSet.add(Integer.valueOf(i2));
        }
        HashSet hashSet2 = new HashSet();
        for (int i3 : KeyProperties.Digest.allToKeymaster(strArr2)) {
            hashSet2.add(Integer.valueOf(i3));
        }
        HashSet hashSet3 = new HashSet(hashSet2);
        hashSet3.retainAll(hashSet);
        return hashSet3;
    }

    private static String getCertificateSignatureAlgorithm(int i2, int i3, KeyGenParameterSpec keyGenParameterSpec) {
        if ((keyGenParameterSpec.getPurposes() & 4) == 0 || keyGenParameterSpec.isUserAuthenticationRequired() || !keyGenParameterSpec.isDigestsSpecified()) {
            return null;
        }
        if (i2 == 1) {
            if (!com.android.internal.util.ArrayUtils.contains(KeyProperties.SignaturePadding.allToKeymaster(keyGenParameterSpec.getSignaturePaddings()), 5)) {
                return null;
            }
            int i4 = i3 - 240;
            Iterator<Integer> it = getAvailableKeymasterSignatureDigests(keyGenParameterSpec.getDigests(), AndroidKeyStoreBCWorkaroundProvider.getSupportedEcdsaSignatureDigests()).iterator();
            int i5 = -1;
            int i6 = -1;
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                int digestOutputSizeBits = KeymasterUtils.getDigestOutputSizeBits(iIntValue);
                if (digestOutputSizeBits <= i4 && (i5 == -1 || digestOutputSizeBits > i6)) {
                    i5 = iIntValue;
                    i6 = digestOutputSizeBits;
                }
            }
            if (i5 == -1) {
                return null;
            }
            return KeyProperties.Digest.fromKeymasterToSignatureAlgorithmDigest(i5) + "WithRSA";
        }
        if (i2 != 3) {
            throw new ProviderException(c.d("Unsupported algorithm: ", i2));
        }
        Iterator<Integer> it2 = getAvailableKeymasterSignatureDigests(keyGenParameterSpec.getDigests(), AndroidKeyStoreBCWorkaroundProvider.getSupportedEcdsaSignatureDigests()).iterator();
        int i7 = -1;
        int i8 = -1;
        while (it2.hasNext()) {
            int iIntValue2 = it2.next().intValue();
            int digestOutputSizeBits2 = KeymasterUtils.getDigestOutputSizeBits(iIntValue2);
            if (digestOutputSizeBits2 == i3) {
                i7 = iIntValue2;
                break;
            }
            if (i7 != -1) {
                if (i8 < i3) {
                    if (digestOutputSizeBits2 > i8) {
                    }
                } else if (digestOutputSizeBits2 >= i8 || digestOutputSizeBits2 < i3) {
                }
            }
            i7 = iIntValue2;
            i8 = digestOutputSizeBits2;
        }
        if (i7 == -1) {
            return null;
        }
        return KeyProperties.Digest.fromKeymasterToSignatureAlgorithmDigest(i7) + "WithECDSA";
    }

    private static int getDefaultKeySize(int i2) {
        if (i2 == 1) {
            return 2048;
        }
        if (i2 == 3) {
            return 256;
        }
        throw new ProviderException(c.d("Unsupported algorithm: ", i2));
    }

    private void initAlgorithmSpecificParameters() throws InvalidAlgorithmParameterException {
        BigInteger publicExponent;
        AlgorithmParameterSpec algorithmParameterSpec = this.mSpec.getAlgorithmParameterSpec();
        int i2 = this.mKeymasterAlgorithm;
        if (i2 != 1) {
            if (i2 != 3) {
                throw new ProviderException("Unsupported algorithm: " + this.mKeymasterAlgorithm);
            }
            if (!(algorithmParameterSpec instanceof ECGenParameterSpec)) {
                if (algorithmParameterSpec != null) {
                    throw new InvalidAlgorithmParameterException("EC may only use ECGenParameterSpec");
                }
                return;
            }
            String name = ((ECGenParameterSpec) algorithmParameterSpec).getName();
            Integer num = SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE.get(name.toLowerCase(Locale.US));
            if (num == null) {
                StringBuilder sbV = c.v("Unsupported EC curve name: ", name, ". Supported: ");
                sbV.append(SUPPORTED_EC_NIST_CURVE_NAMES);
                throw new InvalidAlgorithmParameterException(sbV.toString());
            }
            int i3 = this.mKeySizeBits;
            if (i3 == -1) {
                this.mKeySizeBits = num.intValue();
                return;
            }
            if (i3 == num.intValue()) {
                return;
            }
            throw new InvalidAlgorithmParameterException("EC key size must match  between " + this.mSpec + " and " + algorithmParameterSpec + ": " + this.mKeySizeBits + " vs " + num);
        }
        if (algorithmParameterSpec instanceof RSAKeyGenParameterSpec) {
            RSAKeyGenParameterSpec rSAKeyGenParameterSpec = (RSAKeyGenParameterSpec) algorithmParameterSpec;
            int i4 = this.mKeySizeBits;
            if (i4 == -1) {
                this.mKeySizeBits = rSAKeyGenParameterSpec.getKeysize();
            } else if (i4 != rSAKeyGenParameterSpec.getKeysize()) {
                throw new InvalidAlgorithmParameterException("RSA key size must match  between " + this.mSpec + " and " + algorithmParameterSpec + ": " + this.mKeySizeBits + " vs " + rSAKeyGenParameterSpec.getKeysize());
            }
            publicExponent = rSAKeyGenParameterSpec.getPublicExponent();
        } else {
            if (algorithmParameterSpec != null) {
                throw new InvalidAlgorithmParameterException("RSA may only use RSAKeyGenParameterSpec");
            }
            publicExponent = null;
        }
        if (publicExponent == null) {
            publicExponent = RSAKeyGenParameterSpec.F4;
        }
        if (publicExponent.compareTo(BigInteger.ZERO) < 1) {
            throw new InvalidAlgorithmParameterException("RSA public exponent must be positive: " + publicExponent);
        }
        BigInteger bigInteger = KeymasterArguments.UINT64_MAX_VALUE;
        if (publicExponent.compareTo(bigInteger) <= 0) {
            this.mRSAPublicExponent = publicExponent;
            return;
        }
        throw new InvalidAlgorithmParameterException("Unsupported RSA public exponent: " + publicExponent + ". Maximum supported value: " + bigInteger);
    }

    private KeyPair loadKeystoreKeyPair(String str) {
        try {
            KeyPair keyPairLoadAndroidKeyStoreKeyPairFromKeystore = AndroidKeyStoreProvider.loadAndroidKeyStoreKeyPairFromKeystore(this.mKeyStore, str, this.mEntryUid);
            if (this.mJcaKeyAlgorithm.equalsIgnoreCase(keyPairLoadAndroidKeyStoreKeyPairFromKeystore.getPrivate().getAlgorithm())) {
                return keyPairLoadAndroidKeyStoreKeyPairFromKeystore;
            }
            throw new ProviderException("Generated key pair algorithm does not match requested algorithm: " + keyPairLoadAndroidKeyStoreKeyPairFromKeystore.getPrivate().getAlgorithm() + " vs " + this.mJcaKeyAlgorithm);
        } catch (UnrecoverableKeyException e2) {
            throw new ProviderException("Failed to load generated key pair from keystore", e2);
        }
    }

    private void resetAll() {
        this.mEntryAlias = null;
        this.mEntryUid = -1;
        this.mJcaKeyAlgorithm = null;
        this.mKeymasterAlgorithm = -1;
        this.mKeymasterPurposes = null;
        this.mKeymasterBlockModes = null;
        this.mKeymasterEncryptionPaddings = null;
        this.mKeymasterSignaturePaddings = null;
        this.mKeymasterDigests = null;
        this.mKeySizeBits = 0;
        this.mSpec = null;
        this.mRSAPublicExponent = null;
        this.mEncryptionAtRestRequired = false;
        this.mRng = null;
        this.mKeyStore = null;
    }

    private void storeCertificate(String str, byte[] bArr, int i2, String str2) {
        KeyStore keyStore = this.mKeyStore;
        StringBuilder sbR = c.r(str);
        sbR.append(this.mEntryAlias);
        int iInsert = keyStore.insert(sbR.toString(), bArr, this.mEntryUid, i2);
        if (iInsert != 1) {
            throw new ProviderException(str2, KeyStore.getKeyStoreException(iInsert));
        }
    }

    private void storeCertificateChain(int i2, Iterable<byte[]> iterable) {
        Iterator<byte[]> it = iterable.iterator();
        storeCertificate(Credentials.USER_CERTIFICATE, it.next(), i2, "Failed to store certificate");
        if (it.hasNext()) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (it.hasNext()) {
                byte[] next = it.next();
                byteArrayOutputStream.write(next, 0, next.length);
            }
            storeCertificate(Credentials.CA_CERTIFICATE, byteArrayOutputStream.toByteArray(), i2, "Failed to store attestation CA certificate");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        KeyStore keyStore = this.mKeyStore;
        if (keyStore == null || this.mSpec == null) {
            throw new IllegalStateException("Not initialized");
        }
        boolean z2 = this.mEncryptionAtRestRequired;
        if (((z2 ? 1 : 0) & 1) != 0 && keyStore.state() != KeyStore.State.UNLOCKED) {
            throw new IllegalStateException("Encryption at rest using secure lock screen credential requested for key pair, but the user has not yet entered the credential");
        }
        byte[] randomBytesToMixIntoKeystoreRng = KeyStoreCryptoOperationUtils.getRandomBytesToMixIntoKeystoreRng(this.mRng, (this.mKeySizeBits + 7) / 8);
        Credentials.deleteAllTypesForAlias(this.mKeyStore, this.mEntryAlias, this.mEntryUid);
        String str = Credentials.USER_PRIVATE_KEY + this.mEntryAlias;
        try {
            generateKeystoreKeyPair(str, constructKeyGenerationArguments(), randomBytesToMixIntoKeystoreRng, z2 ? 1 : 0);
            KeyPair keyPairLoadKeystoreKeyPair = loadKeystoreKeyPair(str);
            storeCertificateChain(z2 ? 1 : 0, createCertificateChain(str, keyPairLoadKeystoreKeyPair));
            return keyPairLoadKeystoreKeyPair;
        } catch (Throwable th) {
            Credentials.deleteAllTypesForAlias(this.mKeyStore, this.mEntryAlias, this.mEntryUid);
            throw th;
        }
    }

    @Override // java.security.KeyPairGeneratorSpi
    public void initialize(int i2, SecureRandom secureRandom) {
        throw new IllegalArgumentException(KeyGenParameterSpec.class.getName() + " or " + KeyPairGeneratorSpec.class.getName() + " required to initialize this KeyPairGenerator");
    }

    @Override // java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
        KeyGenParameterSpec.Builder builder;
        boolean z2;
        KeyGenParameterSpec keyGenParameterSpec;
        resetAll();
        try {
            if (algorithmParameterSpec != null) {
                int keymasterAsymmetricKeyAlgorithm = this.mOriginalKeymasterAlgorithm;
                if (algorithmParameterSpec instanceof KeyGenParameterSpec) {
                    keyGenParameterSpec = (KeyGenParameterSpec) algorithmParameterSpec;
                    z2 = false;
                } else if (algorithmParameterSpec instanceof KeyPairGeneratorSpec) {
                    KeyPairGeneratorSpec keyPairGeneratorSpec = (KeyPairGeneratorSpec) algorithmParameterSpec;
                    try {
                        try {
                            String keyType = keyPairGeneratorSpec.getKeyType();
                            if (keyType != null) {
                                try {
                                    keymasterAsymmetricKeyAlgorithm = KeyProperties.KeyAlgorithm.toKeymasterAsymmetricKeyAlgorithm(keyType);
                                } catch (IllegalArgumentException e2) {
                                    throw new InvalidAlgorithmParameterException("Invalid key type in parameters", e2);
                                }
                            }
                            if (keymasterAsymmetricKeyAlgorithm == 1) {
                                builder = new KeyGenParameterSpec.Builder(keyPairGeneratorSpec.getKeystoreAlias(), 15);
                                builder.setDigests(KeyProperties.DIGEST_NONE, KeyProperties.DIGEST_MD5, KeyProperties.DIGEST_SHA1, KeyProperties.DIGEST_SHA224, "SHA-256", KeyProperties.DIGEST_SHA384, KeyProperties.DIGEST_SHA512);
                                builder.setEncryptionPaddings(KeyProperties.ENCRYPTION_PADDING_NONE, KeyProperties.ENCRYPTION_PADDING_RSA_PKCS1, KeyProperties.ENCRYPTION_PADDING_RSA_OAEP);
                                builder.setSignaturePaddings(KeyProperties.SIGNATURE_PADDING_RSA_PKCS1, KeyProperties.SIGNATURE_PADDING_RSA_PSS);
                                builder.setRandomizedEncryptionRequired(false);
                            } else if (keymasterAsymmetricKeyAlgorithm == 3) {
                                builder = new KeyGenParameterSpec.Builder(keyPairGeneratorSpec.getKeystoreAlias(), 12);
                                builder.setDigests(KeyProperties.DIGEST_NONE, KeyProperties.DIGEST_SHA1, KeyProperties.DIGEST_SHA224, "SHA-256", KeyProperties.DIGEST_SHA384, KeyProperties.DIGEST_SHA512);
                            } else {
                                throw new ProviderException("Unsupported algorithm: " + this.mKeymasterAlgorithm);
                            }
                            if (keyPairGeneratorSpec.getKeySize() != -1) {
                                builder.setKeySize(keyPairGeneratorSpec.getKeySize());
                            }
                            if (keyPairGeneratorSpec.getAlgorithmParameterSpec() != null) {
                                builder.setAlgorithmParameterSpec(keyPairGeneratorSpec.getAlgorithmParameterSpec());
                            }
                            builder.setCertificateSubject(keyPairGeneratorSpec.getSubjectDN());
                            builder.setCertificateSerialNumber(keyPairGeneratorSpec.getSerialNumber());
                            builder.setCertificateNotBefore(keyPairGeneratorSpec.getStartDate());
                            builder.setCertificateNotAfter(keyPairGeneratorSpec.getEndDate());
                            boolean zIsEncryptionRequired = keyPairGeneratorSpec.isEncryptionRequired();
                            builder.setUserAuthenticationRequired(false);
                            KeyGenParameterSpec keyGenParameterSpecBuild = builder.build();
                            z2 = zIsEncryptionRequired;
                            keyGenParameterSpec = keyGenParameterSpecBuild;
                        } catch (NullPointerException e3) {
                            e = e3;
                            throw new InvalidAlgorithmParameterException(e);
                        }
                    } catch (IllegalArgumentException e4) {
                        e = e4;
                        throw new InvalidAlgorithmParameterException(e);
                    }
                } else {
                    throw new InvalidAlgorithmParameterException("Unsupported params class: " + algorithmParameterSpec.getClass().getName() + ". Supported: " + KeyGenParameterSpec.class.getName() + ", " + KeyPairGeneratorSpec.class.getName());
                }
                this.mEntryAlias = keyGenParameterSpec.getKeystoreAlias();
                this.mEntryUid = keyGenParameterSpec.getUid();
                this.mSpec = keyGenParameterSpec;
                this.mKeymasterAlgorithm = keymasterAsymmetricKeyAlgorithm;
                this.mEncryptionAtRestRequired = z2;
                this.mKeySizeBits = keyGenParameterSpec.getKeySize();
                initAlgorithmSpecificParameters();
                if (this.mKeySizeBits == -1) {
                    this.mKeySizeBits = getDefaultKeySize(keymasterAsymmetricKeyAlgorithm);
                }
                checkValidKeySize(keymasterAsymmetricKeyAlgorithm, this.mKeySizeBits);
                if (keyGenParameterSpec.getKeystoreAlias() != null) {
                    try {
                        String strFromKeymasterAsymmetricKeyAlgorithm = KeyProperties.KeyAlgorithm.fromKeymasterAsymmetricKeyAlgorithm(keymasterAsymmetricKeyAlgorithm);
                        this.mKeymasterPurposes = KeyProperties.Purpose.allToKeymaster(keyGenParameterSpec.getPurposes());
                        this.mKeymasterBlockModes = KeyProperties.BlockMode.allToKeymaster(keyGenParameterSpec.getBlockModes());
                        this.mKeymasterEncryptionPaddings = KeyProperties.EncryptionPadding.allToKeymaster(keyGenParameterSpec.getEncryptionPaddings());
                        if ((keyGenParameterSpec.getPurposes() & 1) != 0 && keyGenParameterSpec.isRandomizedEncryptionRequired()) {
                            for (int i2 : this.mKeymasterEncryptionPaddings) {
                                if (!KeymasterUtils.isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(i2)) {
                                    throw new InvalidAlgorithmParameterException("Randomized encryption (IND-CPA) required but may be violated by padding scheme: " + KeyProperties.EncryptionPadding.fromKeymaster(i2) + ". See " + KeyGenParameterSpec.class.getName() + " documentation.");
                                }
                            }
                        }
                        this.mKeymasterSignaturePaddings = KeyProperties.SignaturePadding.allToKeymaster(keyGenParameterSpec.getSignaturePaddings());
                        if (keyGenParameterSpec.isDigestsSpecified()) {
                            this.mKeymasterDigests = KeyProperties.Digest.allToKeymaster(keyGenParameterSpec.getDigests());
                        } else {
                            this.mKeymasterDigests = EmptyArray.INT;
                        }
                        KeymasterUtils.addUserAuthArgs(new KeymasterArguments(), this.mSpec.isUserAuthenticationRequired(), this.mSpec.getUserAuthenticationValidityDurationSeconds(), this.mSpec.isUserAuthenticationValidWhileOnBody(), this.mSpec.isInvalidatedByBiometricEnrollment(), 0L);
                        this.mJcaKeyAlgorithm = strFromKeymasterAsymmetricKeyAlgorithm;
                        this.mRng = secureRandom;
                        this.mKeyStore = KeyStore.getInstance();
                        return;
                    } catch (IllegalArgumentException e5) {
                        e = e5;
                        throw new InvalidAlgorithmParameterException(e);
                    } catch (IllegalStateException e6) {
                        e = e6;
                        throw new InvalidAlgorithmParameterException(e);
                    }
                }
                throw new InvalidAlgorithmParameterException("KeyStore entry alias not provided");
            }
            throw new InvalidAlgorithmParameterException("Must supply params of type " + KeyGenParameterSpec.class.getName() + " or " + KeyPairGeneratorSpec.class.getName());
        } catch (Throwable th) {
            resetAll();
            throw th;
        }
    }
}
