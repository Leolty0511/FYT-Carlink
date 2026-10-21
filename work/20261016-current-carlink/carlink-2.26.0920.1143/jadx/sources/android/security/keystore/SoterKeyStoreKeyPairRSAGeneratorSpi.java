package android.security.keystore;

import android.accessibilityservice.c;
import android.app.ActivityThread;
import android.app.Application;
import android.content.Context;
import android.os.Process;
import android.os.UserHandle;
import android.security.Credentials;
import android.security.KeyPairGeneratorSpec;
import android.security.KeyStore;
import android.security.keymaster.KeyCharacteristics;
import android.security.keymaster.KeymasterArguments;
import android.security.keymaster.KeymasterDefs;
import android.util.Log;
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
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGeneratorSpi;
import java.security.PrivateKey;
import java.security.ProviderException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.RSAKeyGenParameterSpec;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
public class SoterKeyStoreKeyPairRSAGeneratorSpi extends KeyPairGeneratorSpi {
    private static final int RSA_DEFAULT_KEY_SIZE = 2048;
    private static final int RSA_MAX_KEY_SIZE = 8192;
    private static final int RSA_MIN_KEY_SIZE = 512;
    public static final long UINT32_MAX_VALUE = 4294967295L;
    private static final long UINT32_RANGE = 4294967296L;
    public static final BigInteger UINT64_MAX_VALUE;
    private static final BigInteger UINT64_RANGE;
    private static volatile SecureRandom sRng;
    private boolean mEncryptionAtRestRequired;
    private String mEntryAlias;
    private String mJcaKeyAlgorithm;
    private int mKeySizeBits;
    private KeyStore mKeyStore;
    private int[] mKeymasterBlockModes;
    private int[] mKeymasterDigests;
    private int[] mKeymasterEncryptionPaddings;
    private int[] mKeymasterPurposes;
    private int[] mKeymasterSignaturePaddings;
    private BigInteger mRSAPublicExponent;
    private SecureRandom mRng;
    private KeyGenParameterSpec mSpec;
    private int mKeymasterAlgorithm = -1;
    private boolean isForSoter = false;
    private boolean isAutoSignedWithAttkWhenGetPublicKey = false;
    private boolean isAutoSignedWithCommonkWhenGetPublicKey = false;
    private String mAutoSignedKeyNameWhenGetPublicKey = "";
    private boolean isSecmsgFidCounterSignedWhenSign = false;
    private boolean isAutoAddCounterWhenGetPublicKey = false;
    private boolean isNeedNextAttk = false;
    private final int mOriginalKeymasterAlgorithm = 1;

    static {
        BigInteger bigInteger = BigInteger.ONE;
        BigInteger bigIntegerShiftLeft = bigInteger.shiftLeft(64);
        UINT64_RANGE = bigIntegerShiftLeft;
        UINT64_MAX_VALUE = bigIntegerShiftLeft.subtract(bigInteger);
    }

    private void addAlgorithmSpecificParameters(KeymasterArguments keymasterArguments) {
        BigInteger bigInteger = this.mRSAPublicExponent;
        if (bigInteger != null) {
            keymasterArguments.addUnsignedLong(KeymasterDefs.KM_TAG_RSA_PUBLIC_EXPONENT, bigInteger);
        }
        if (this.isForSoter) {
            keymasterArguments.addBoolean(KeymasterDefs.KM_TAG_SOTER_IS_FROM_SOTER);
            keymasterArguments.addUnsignedInt(KeymasterDefs.KM_TAG_SOTER_UID, Process.myUid());
        }
        if (this.isAutoSignedWithAttkWhenGetPublicKey) {
            keymasterArguments.addBoolean(KeymasterDefs.KM_TAG_SOTER_IS_AUTO_SIGNED_WITH_ATTK_WHEN_GET_PUBLIC_KEY);
            this.mAutoSignedKeyNameWhenGetPublicKey = Credentials.USER_PRIVATE_KEY + UserHandle.getUserId(Process.myUid()) + this.mEntryAlias;
            Log.d("Soter", "use mEntryAlias as key name, pass it to args");
            if (!SoterUtil.isNullOrNil(this.mAutoSignedKeyNameWhenGetPublicKey)) {
                keymasterArguments.addBytes(KeymasterDefs.KM_TAG_SOTER_AUTO_SIGNED_COMMON_KEY_WHEN_GET_PUBLIC_KEY, this.mAutoSignedKeyNameWhenGetPublicKey.getBytes());
            }
        }
        if (this.isAutoSignedWithCommonkWhenGetPublicKey) {
            keymasterArguments.addBoolean(KeymasterDefs.KM_TAG_SOTER_IS_AUTO_SIGNED_WITH_COMMON_KEY_WHEN_GET_PUBLIC_KEY);
            if (!SoterUtil.isNullOrNil(this.mAutoSignedKeyNameWhenGetPublicKey)) {
                keymasterArguments.addBytes(KeymasterDefs.KM_TAG_SOTER_AUTO_SIGNED_COMMON_KEY_WHEN_GET_PUBLIC_KEY, (Credentials.USER_PRIVATE_KEY + UserHandle.getUserId(Process.myUid()) + this.mAutoSignedKeyNameWhenGetPublicKey).getBytes());
            }
        }
        if (this.isAutoAddCounterWhenGetPublicKey) {
            keymasterArguments.addBoolean(KeymasterDefs.KM_TAG_SOTER_AUTO_ADD_COUNTER_WHEN_GET_PUBLIC_KEY);
        }
        if (this.isSecmsgFidCounterSignedWhenSign) {
            keymasterArguments.addBoolean(KeymasterDefs.KM_TAG_SOTER_IS_SECMSG_FID_COUNTER_SIGNED_WHEN_SIGN);
        }
        if (this.isNeedNextAttk) {
            keymasterArguments.addBoolean(KeymasterDefs.KM_TAG_SOTER_USE_NEXT_ATTK);
        }
    }

    private static void checkValidKeySize(int i2, int i3) throws InvalidAlgorithmParameterException {
        if (i3 < 512 || i3 > 8192) {
            throw new InvalidAlgorithmParameterException("RSA key size must be >= 512 and <= 8192");
        }
    }

    private X509Certificate generateSelfSignedCertificate(PrivateKey privateKey, PublicKey publicKey) {
        Log.d("Soter", "generateSelfSignedCertificate");
        String certificateSignatureAlgorithm = getCertificateSignatureAlgorithm(this.mKeymasterAlgorithm, this.mKeySizeBits, this.mSpec);
        if (certificateSignatureAlgorithm == null) {
            Log.d("Soter", "generateSelfSignedCertificateWithFakeSignature1");
            return generateSelfSignedCertificateWithFakeSignature(publicKey);
        }
        try {
            Log.d("Soter", "generateSelfSignedCertificateWithValidSignature");
            return generateSelfSignedCertificateWithValidSignature(privateKey, publicKey, certificateSignatureAlgorithm);
        } catch (Exception unused) {
            Log.d("Soter", "generateSelfSignedCertificateWithFakeSignature2");
            return generateSelfSignedCertificateWithFakeSignature(publicKey);
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

    public static Context getApplicationContext() {
        Application applicationCurrentApplication = ActivityThread.currentApplication();
        if (applicationCurrentApplication != null) {
            return applicationCurrentApplication;
        }
        throw new IllegalStateException("Failed to obtain application Context from ActivityThread");
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
        if ((keyGenParameterSpec.getPurposes() & 4) == 0 || keyGenParameterSpec.isUserAuthenticationRequired() || !keyGenParameterSpec.isDigestsSpecified() || !com.android.internal.util.ArrayUtils.contains(KeyProperties.SignaturePadding.allToKeymaster(keyGenParameterSpec.getSignaturePaddings()), 5)) {
            return null;
        }
        int i4 = i3 - 240;
        Iterator<Integer> it = getAvailableKeymasterSignatureDigests(keyGenParameterSpec.getDigests(), getSupportedEcdsaSignatureDigests()).iterator();
        int i5 = -1;
        int i6 = -1;
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            int digestOutputSizeBits = getDigestOutputSizeBits(iIntValue);
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

    private static int getDefaultKeySize(int i2) {
        return 2048;
    }

    public static int getDigestOutputSizeBits(int i2) {
        switch (i2) {
            case 0:
                return -1;
            case 1:
                return 128;
            case 2:
                return 160;
            case 3:
                return 224;
            case 4:
                return 256;
            case 5:
                return MetricsProto.MetricsEvent.ACTION_SHOW_SETTINGS_SUGGESTION;
            case 6:
                return 512;
            default:
                throw new IllegalArgumentException(c.d("Unknown digest: ", i2));
        }
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

    private byte[] getRealKeyBlobByKeyName(String str) {
        Log.d("Soter", "start retrieve key blob by key name: " + str);
        return this.mKeyStore.get(Credentials.USER_PRIVATE_KEY + str);
    }

    private static SecureRandom getRng() {
        if (sRng == null) {
            sRng = new SecureRandom();
        }
        return sRng;
    }

    private static String[] getSupportedEcdsaSignatureDigests() {
        return new String[]{KeyProperties.DIGEST_NONE, KeyProperties.DIGEST_SHA1, KeyProperties.DIGEST_SHA224, "SHA-256", KeyProperties.DIGEST_SHA384, KeyProperties.DIGEST_SHA512};
    }

    private void initAlgorithmSpecificParameters() throws InvalidAlgorithmParameterException {
        AlgorithmParameterSpec algorithmParameterSpec = this.mSpec.getAlgorithmParameterSpec();
        BigInteger publicExponent = RSAKeyGenParameterSpec.F4;
        if (algorithmParameterSpec instanceof RSAKeyGenParameterSpec) {
            RSAKeyGenParameterSpec rSAKeyGenParameterSpec = (RSAKeyGenParameterSpec) algorithmParameterSpec;
            int i2 = this.mKeySizeBits;
            if (i2 == -1) {
                this.mKeySizeBits = rSAKeyGenParameterSpec.getKeysize();
            } else if (i2 != rSAKeyGenParameterSpec.getKeysize()) {
                throw new InvalidAlgorithmParameterException("RSA key size must match  between " + this.mSpec + " and " + algorithmParameterSpec + ": " + this.mKeySizeBits + " vs " + rSAKeyGenParameterSpec.getKeysize());
            }
            publicExponent = rSAKeyGenParameterSpec.getPublicExponent();
            if (publicExponent.compareTo(BigInteger.ZERO) < 1) {
                throw new InvalidAlgorithmParameterException("RSA public exponent must be positive: " + publicExponent);
            }
            BigInteger bigInteger = UINT64_MAX_VALUE;
            if (publicExponent.compareTo(bigInteger) > 0) {
                throw new InvalidAlgorithmParameterException("Unsupported RSA public exponent: " + publicExponent + ". Maximum supported value: " + bigInteger);
            }
        }
        this.mRSAPublicExponent = publicExponent;
        SoterRSAKeyGenParameterSpec soterRSAKeyGenParameterSpecConvertKeyNameToParameterSpec = SoterUtil.convertKeyNameToParameterSpec(this.mSpec.getKeystoreAlias());
        if (soterRSAKeyGenParameterSpecConvertKeyNameToParameterSpec != null) {
            this.isForSoter = soterRSAKeyGenParameterSpecConvertKeyNameToParameterSpec.isForSoter();
            this.isAutoSignedWithAttkWhenGetPublicKey = soterRSAKeyGenParameterSpecConvertKeyNameToParameterSpec.isAutoSignedWithAttkWhenGetPublicKey();
            this.isAutoSignedWithCommonkWhenGetPublicKey = soterRSAKeyGenParameterSpecConvertKeyNameToParameterSpec.isAutoSignedWithCommonkWhenGetPublicKey();
            this.mAutoSignedKeyNameWhenGetPublicKey = soterRSAKeyGenParameterSpecConvertKeyNameToParameterSpec.getAutoSignedKeyNameWhenGetPublicKey();
            this.isSecmsgFidCounterSignedWhenSign = soterRSAKeyGenParameterSpecConvertKeyNameToParameterSpec.isSecmsgFidCounterSignedWhenSign();
            this.isAutoAddCounterWhenGetPublicKey = soterRSAKeyGenParameterSpecConvertKeyNameToParameterSpec.isAutoAddCounterWhenGetPublicKey();
            this.isNeedNextAttk = soterRSAKeyGenParameterSpecConvertKeyNameToParameterSpec.isNeedUseNextAttk();
        }
    }

    public static byte[] intToByteArray(int i2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(ByteOrder.nativeOrder());
        byteBufferAllocate.putInt(i2);
        return byteBufferAllocate.array();
    }

    public static boolean isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(int i2) {
        if (i2 == 1) {
            return false;
        }
        if (i2 == 2 || i2 == 4) {
            return true;
        }
        throw new IllegalArgumentException(c.d("Unsupported asymmetric encryption padding scheme: ", i2));
    }

    private void resetAll() {
        this.mEntryAlias = null;
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
        this.isForSoter = false;
        this.isAutoSignedWithAttkWhenGetPublicKey = false;
        this.isAutoSignedWithCommonkWhenGetPublicKey = false;
        this.mAutoSignedKeyNameWhenGetPublicKey = "";
        this.isSecmsgFidCounterSignedWhenSign = false;
        this.isAutoAddCounterWhenGetPublicKey = false;
        this.isNeedNextAttk = false;
    }

    public static BigInteger toUint64(long j2) {
        return j2 >= 0 ? BigInteger.valueOf(j2) : BigInteger.valueOf(j2).add(UINT64_RANGE);
    }

    /* JADX WARN: Multi-variable type inference failed */
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
        KeymasterArguments keymasterArguments = new KeymasterArguments();
        keymasterArguments.addUnsignedInt(KeymasterDefs.KM_TAG_KEY_SIZE, this.mKeySizeBits);
        keymasterArguments.addEnum(KeymasterDefs.KM_TAG_ALGORITHM, this.mKeymasterAlgorithm);
        keymasterArguments.addEnums(KeymasterDefs.KM_TAG_PURPOSE, this.mKeymasterPurposes);
        keymasterArguments.addEnums(KeymasterDefs.KM_TAG_BLOCK_MODE, this.mKeymasterBlockModes);
        keymasterArguments.addEnums(KeymasterDefs.KM_TAG_PADDING, this.mKeymasterEncryptionPaddings);
        keymasterArguments.addEnums(KeymasterDefs.KM_TAG_PADDING, this.mKeymasterSignaturePaddings);
        keymasterArguments.addEnums(KeymasterDefs.KM_TAG_DIGEST, this.mKeymasterDigests);
        KeymasterUtils.addUserAuthArgs(keymasterArguments, this.mSpec.isUserAuthenticationRequired(), this.mSpec.getUserAuthenticationValidityDurationSeconds(), false, true, 0L);
        if (this.mSpec.getKeyValidityStart() != null) {
            keymasterArguments.addDate(KeymasterDefs.KM_TAG_ACTIVE_DATETIME, this.mSpec.getKeyValidityStart());
        }
        if (this.mSpec.getKeyValidityForOriginationEnd() != null) {
            keymasterArguments.addDate(KeymasterDefs.KM_TAG_ORIGINATION_EXPIRE_DATETIME, this.mSpec.getKeyValidityForOriginationEnd());
        }
        if (this.mSpec.getKeyValidityForConsumptionEnd() != null) {
            keymasterArguments.addDate(KeymasterDefs.KM_TAG_USAGE_EXPIRE_DATETIME, this.mSpec.getKeyValidityForConsumptionEnd());
        }
        addAlgorithmSpecificParameters(keymasterArguments);
        byte[] randomBytesToMixIntoKeystoreRng = getRandomBytesToMixIntoKeystoreRng(this.mRng, (this.mKeySizeBits + 7) / 8);
        String str = Credentials.USER_PRIVATE_KEY + this.mEntryAlias;
        try {
            Credentials.deleteAllTypesForAlias(this.mKeyStore, this.mEntryAlias);
            int iGenerateKey = this.mKeyStore.generateKey(str, keymasterArguments, randomBytesToMixIntoKeystoreRng, z2 ? 1 : 0, new KeyCharacteristics());
            if (iGenerateKey != 1) {
                throw new ProviderException("Failed to generate key pair", KeyStore.getKeyStoreException(iGenerateKey));
            }
            try {
                KeyPair keyPairLoadAndroidKeyStoreKeyPairFromKeystore = SoterKeyStoreProvider.loadAndroidKeyStoreKeyPairFromKeystore(this.mKeyStore, str);
                if (!this.mJcaKeyAlgorithm.equalsIgnoreCase(keyPairLoadAndroidKeyStoreKeyPairFromKeystore.getPrivate().getAlgorithm())) {
                    throw new ProviderException("Generated key pair algorithm does not match requested algorithm: " + keyPairLoadAndroidKeyStoreKeyPairFromKeystore.getPrivate().getAlgorithm() + " vs " + this.mJcaKeyAlgorithm);
                }
                try {
                    try {
                        byte[] encoded = generateSelfSignedCertificate(keyPairLoadAndroidKeyStoreKeyPairFromKeystore.getPrivate(), keyPairLoadAndroidKeyStoreKeyPairFromKeystore.getPublic()).getEncoded();
                        if (this.mKeyStore.put(Credentials.USER_CERTIFICATE + this.mEntryAlias, encoded, -1, z2 ? 1 : 0)) {
                            return keyPairLoadAndroidKeyStoreKeyPairFromKeystore;
                        }
                        throw new ProviderException("Failed to store self-signed certificate");
                    } catch (CertificateEncodingException e2) {
                        throw new ProviderException("Failed to obtain encoded form of self-signed certificate", e2);
                    }
                } catch (Exception e3) {
                    throw new ProviderException("Failed to generate self-signed certificate", e3);
                }
            } catch (UnrecoverableKeyException e4) {
                throw new ProviderException("Failed to load generated key pair from keystore", e4);
            }
        } catch (Throwable th) {
            Credentials.deleteAllTypesForAlias(this.mKeyStore, this.mEntryAlias);
            throw th;
        }
    }

    @Override // java.security.KeyPairGeneratorSpi
    public void initialize(int i2, SecureRandom secureRandom) {
        throw new IllegalArgumentException(KeyGenParameterSpec.class.getName().concat(" required to initialize this KeyPairGenerator"));
    }

    @Override // java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
        resetAll();
        try {
            if (algorithmParameterSpec != null) {
                int i2 = this.mOriginalKeymasterAlgorithm;
                if (algorithmParameterSpec instanceof KeyGenParameterSpec) {
                    KeyGenParameterSpec keyGenParameterSpec = (KeyGenParameterSpec) algorithmParameterSpec;
                    this.mEntryAlias = SoterUtil.getPureKeyAliasFromKeyName(keyGenParameterSpec.getKeystoreAlias());
                    this.mSpec = keyGenParameterSpec;
                    this.mKeymasterAlgorithm = i2;
                    this.mEncryptionAtRestRequired = false;
                    this.mKeySizeBits = keyGenParameterSpec.getKeySize();
                    initAlgorithmSpecificParameters();
                    if (this.mKeySizeBits == -1) {
                        this.mKeySizeBits = getDefaultKeySize(i2);
                    }
                    checkValidKeySize(i2, this.mKeySizeBits);
                    if (keyGenParameterSpec.getKeystoreAlias() != null) {
                        try {
                            String strFromKeymasterAsymmetricKeyAlgorithm = KeyProperties.KeyAlgorithm.fromKeymasterAsymmetricKeyAlgorithm(i2);
                            this.mKeymasterPurposes = KeyProperties.Purpose.allToKeymaster(keyGenParameterSpec.getPurposes());
                            this.mKeymasterBlockModes = KeyProperties.BlockMode.allToKeymaster(keyGenParameterSpec.getBlockModes());
                            this.mKeymasterEncryptionPaddings = KeyProperties.EncryptionPadding.allToKeymaster(keyGenParameterSpec.getEncryptionPaddings());
                            if ((keyGenParameterSpec.getPurposes() & 1) != 0 && keyGenParameterSpec.isRandomizedEncryptionRequired()) {
                                for (int i3 : this.mKeymasterEncryptionPaddings) {
                                    if (!isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(i3)) {
                                        throw new InvalidAlgorithmParameterException("Randomized encryption (IND-CPA) required but may be violated by padding scheme: " + KeyProperties.EncryptionPadding.fromKeymaster(i3) + ". See " + KeyGenParameterSpec.class.getName() + " documentation.");
                                    }
                                }
                            }
                            this.mKeymasterSignaturePaddings = KeyProperties.SignaturePadding.allToKeymaster(keyGenParameterSpec.getSignaturePaddings());
                            if (keyGenParameterSpec.isDigestsSpecified()) {
                                this.mKeymasterDigests = KeyProperties.Digest.allToKeymaster(keyGenParameterSpec.getDigests());
                            } else {
                                this.mKeymasterDigests = EmptyArray.INT;
                            }
                            KeymasterUtils.addUserAuthArgs(new KeymasterArguments(), this.mSpec.isUserAuthenticationRequired(), this.mSpec.getUserAuthenticationValidityDurationSeconds(), false, true, 0L);
                            this.mJcaKeyAlgorithm = strFromKeymasterAsymmetricKeyAlgorithm;
                            this.mRng = secureRandom;
                            this.mKeyStore = KeyStore.getInstance();
                            return;
                        } catch (IllegalArgumentException e2) {
                            e = e2;
                            throw new InvalidAlgorithmParameterException(e);
                        } catch (IllegalStateException e3) {
                            e = e3;
                            throw new InvalidAlgorithmParameterException(e);
                        }
                    }
                    throw new InvalidAlgorithmParameterException("KeyStore entry alias not provided");
                }
                throw new InvalidAlgorithmParameterException("Unsupported params class: " + algorithmParameterSpec.getClass().getName() + ". Supported: " + KeyGenParameterSpec.class.getName() + ", " + KeyPairGeneratorSpec.class.getName());
            }
            throw new InvalidAlgorithmParameterException("Must supply params of type " + KeyGenParameterSpec.class.getName() + " or " + KeyPairGeneratorSpec.class.getName());
        } catch (Throwable th) {
            resetAll();
            throw th;
        }
    }
}
