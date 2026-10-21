package android.security.keystore;

import android.net.wifi.WifiEnterpriseConfig;
import android.text.TextUtils;
import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Date;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: classes.dex */
public final class KeyGenParameterSpec implements AlgorithmParameterSpec {
    private final byte[] mAttestationChallenge;
    private final String[] mBlockModes;
    private final Date mCertificateNotAfter;
    private final Date mCertificateNotBefore;
    private final BigInteger mCertificateSerialNumber;
    private final X500Principal mCertificateSubject;
    private final String[] mDigests;
    private final String[] mEncryptionPaddings;
    private final boolean mInvalidatedByBiometricEnrollment;
    private final int mKeySize;
    private final Date mKeyValidityForConsumptionEnd;
    private final Date mKeyValidityForOriginationEnd;
    private final Date mKeyValidityStart;
    private final String mKeystoreAlias;
    private final int mPurposes;
    private final boolean mRandomizedEncryptionRequired;
    private final String[] mSignaturePaddings;
    private final AlgorithmParameterSpec mSpec;
    private final int mUid;
    private final boolean mUniqueIdIncluded;
    private final boolean mUserAuthenticationRequired;
    private final boolean mUserAuthenticationValidWhileOnBody;
    private final int mUserAuthenticationValidityDurationSeconds;
    private static final X500Principal DEFAULT_CERT_SUBJECT = new X500Principal("CN=fake");
    private static final BigInteger DEFAULT_CERT_SERIAL_NUMBER = new BigInteger(WifiEnterpriseConfig.ENGINE_ENABLE);
    private static final Date DEFAULT_CERT_NOT_BEFORE = new Date(0);
    private static final Date DEFAULT_CERT_NOT_AFTER = new Date(2461449600000L);

    public static final class Builder {
        private String[] mBlockModes;
        private Date mCertificateNotAfter;
        private Date mCertificateNotBefore;
        private BigInteger mCertificateSerialNumber;
        private X500Principal mCertificateSubject;
        private String[] mDigests;
        private String[] mEncryptionPaddings;
        private Date mKeyValidityForConsumptionEnd;
        private Date mKeyValidityForOriginationEnd;
        private Date mKeyValidityStart;
        private final String mKeystoreAlias;
        private int mPurposes;
        private String[] mSignaturePaddings;
        private AlgorithmParameterSpec mSpec;
        private boolean mUserAuthenticationRequired;
        private boolean mUserAuthenticationValidWhileOnBody;
        private int mUid = -1;
        private int mKeySize = -1;
        private boolean mRandomizedEncryptionRequired = true;
        private int mUserAuthenticationValidityDurationSeconds = -1;
        private byte[] mAttestationChallenge = null;
        private boolean mUniqueIdIncluded = false;
        private boolean mInvalidatedByBiometricEnrollment = true;

        public Builder(String str, int i2) {
            if (str == null) {
                throw new NullPointerException("keystoreAlias == null");
            }
            if (str.isEmpty()) {
                throw new IllegalArgumentException("keystoreAlias must not be empty");
            }
            this.mKeystoreAlias = str;
            this.mPurposes = i2;
        }

        public KeyGenParameterSpec build() {
            return new KeyGenParameterSpec(this.mKeystoreAlias, this.mUid, this.mKeySize, this.mSpec, this.mCertificateSubject, this.mCertificateSerialNumber, this.mCertificateNotBefore, this.mCertificateNotAfter, this.mKeyValidityStart, this.mKeyValidityForOriginationEnd, this.mKeyValidityForConsumptionEnd, this.mPurposes, this.mDigests, this.mEncryptionPaddings, this.mSignaturePaddings, this.mBlockModes, this.mRandomizedEncryptionRequired, this.mUserAuthenticationRequired, this.mUserAuthenticationValidityDurationSeconds, this.mAttestationChallenge, this.mUniqueIdIncluded, this.mUserAuthenticationValidWhileOnBody, this.mInvalidatedByBiometricEnrollment);
        }

        public Builder setAlgorithmParameterSpec(AlgorithmParameterSpec algorithmParameterSpec) {
            if (algorithmParameterSpec == null) {
                throw new NullPointerException("spec == null");
            }
            this.mSpec = algorithmParameterSpec;
            return this;
        }

        public Builder setAttestationChallenge(byte[] bArr) {
            this.mAttestationChallenge = bArr;
            return this;
        }

        public Builder setBlockModes(String... strArr) {
            this.mBlockModes = ArrayUtils.cloneIfNotEmpty(strArr);
            return this;
        }

        public Builder setCertificateNotAfter(Date date) {
            if (date == null) {
                throw new NullPointerException("date == null");
            }
            this.mCertificateNotAfter = Utils.cloneIfNotNull(date);
            return this;
        }

        public Builder setCertificateNotBefore(Date date) {
            if (date == null) {
                throw new NullPointerException("date == null");
            }
            this.mCertificateNotBefore = Utils.cloneIfNotNull(date);
            return this;
        }

        public Builder setCertificateSerialNumber(BigInteger bigInteger) {
            if (bigInteger == null) {
                throw new NullPointerException("serialNumber == null");
            }
            this.mCertificateSerialNumber = bigInteger;
            return this;
        }

        public Builder setCertificateSubject(X500Principal x500Principal) {
            if (x500Principal == null) {
                throw new NullPointerException("subject == null");
            }
            this.mCertificateSubject = x500Principal;
            return this;
        }

        public Builder setDigests(String... strArr) {
            this.mDigests = ArrayUtils.cloneIfNotEmpty(strArr);
            return this;
        }

        public Builder setEncryptionPaddings(String... strArr) {
            this.mEncryptionPaddings = ArrayUtils.cloneIfNotEmpty(strArr);
            return this;
        }

        public Builder setInvalidatedByBiometricEnrollment(boolean z2) {
            this.mInvalidatedByBiometricEnrollment = z2;
            return this;
        }

        public Builder setKeySize(int i2) {
            if (i2 < 0) {
                throw new IllegalArgumentException("keySize < 0");
            }
            this.mKeySize = i2;
            return this;
        }

        public Builder setKeyValidityEnd(Date date) {
            setKeyValidityForOriginationEnd(date);
            setKeyValidityForConsumptionEnd(date);
            return this;
        }

        public Builder setKeyValidityForConsumptionEnd(Date date) {
            this.mKeyValidityForConsumptionEnd = Utils.cloneIfNotNull(date);
            return this;
        }

        public Builder setKeyValidityForOriginationEnd(Date date) {
            this.mKeyValidityForOriginationEnd = Utils.cloneIfNotNull(date);
            return this;
        }

        public Builder setKeyValidityStart(Date date) {
            this.mKeyValidityStart = Utils.cloneIfNotNull(date);
            return this;
        }

        public Builder setRandomizedEncryptionRequired(boolean z2) {
            this.mRandomizedEncryptionRequired = z2;
            return this;
        }

        public Builder setSignaturePaddings(String... strArr) {
            this.mSignaturePaddings = ArrayUtils.cloneIfNotEmpty(strArr);
            return this;
        }

        public Builder setUid(int i2) {
            this.mUid = i2;
            return this;
        }

        public Builder setUniqueIdIncluded(boolean z2) {
            this.mUniqueIdIncluded = z2;
            return this;
        }

        public Builder setUserAuthenticationRequired(boolean z2) {
            this.mUserAuthenticationRequired = z2;
            return this;
        }

        public Builder setUserAuthenticationValidWhileOnBody(boolean z2) {
            this.mUserAuthenticationValidWhileOnBody = z2;
            return this;
        }

        public Builder setUserAuthenticationValidityDurationSeconds(int i2) {
            if (i2 < -1) {
                throw new IllegalArgumentException("seconds must be -1 or larger");
            }
            this.mUserAuthenticationValidityDurationSeconds = i2;
            return this;
        }
    }

    public KeyGenParameterSpec(String str, int i2, int i3, AlgorithmParameterSpec algorithmParameterSpec, X500Principal x500Principal, BigInteger bigInteger, Date date, Date date2, Date date3, Date date4, Date date5, int i4, String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4, boolean z2, boolean z3, int i5, byte[] bArr, boolean z4, boolean z5, boolean z6) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("keyStoreAlias must not be empty");
        }
        X500Principal x500Principal2 = x500Principal == null ? DEFAULT_CERT_SUBJECT : x500Principal;
        Date date6 = date == null ? DEFAULT_CERT_NOT_BEFORE : date;
        Date date7 = date2 == null ? DEFAULT_CERT_NOT_AFTER : date2;
        BigInteger bigInteger2 = bigInteger == null ? DEFAULT_CERT_SERIAL_NUMBER : bigInteger;
        if (date7.before(date6)) {
            throw new IllegalArgumentException("certificateNotAfter < certificateNotBefore");
        }
        this.mKeystoreAlias = str;
        this.mUid = i2;
        this.mKeySize = i3;
        this.mSpec = algorithmParameterSpec;
        this.mCertificateSubject = x500Principal2;
        this.mCertificateSerialNumber = bigInteger2;
        this.mCertificateNotBefore = Utils.cloneIfNotNull(date6);
        this.mCertificateNotAfter = Utils.cloneIfNotNull(date7);
        this.mKeyValidityStart = Utils.cloneIfNotNull(date3);
        this.mKeyValidityForOriginationEnd = Utils.cloneIfNotNull(date4);
        this.mKeyValidityForConsumptionEnd = Utils.cloneIfNotNull(date5);
        this.mPurposes = i4;
        this.mDigests = ArrayUtils.cloneIfNotEmpty(strArr);
        this.mEncryptionPaddings = ArrayUtils.cloneIfNotEmpty(ArrayUtils.nullToEmpty(strArr2));
        this.mSignaturePaddings = ArrayUtils.cloneIfNotEmpty(ArrayUtils.nullToEmpty(strArr3));
        this.mBlockModes = ArrayUtils.cloneIfNotEmpty(ArrayUtils.nullToEmpty(strArr4));
        this.mRandomizedEncryptionRequired = z2;
        this.mUserAuthenticationRequired = z3;
        this.mUserAuthenticationValidityDurationSeconds = i5;
        this.mAttestationChallenge = Utils.cloneIfNotNull(bArr);
        this.mUniqueIdIncluded = z4;
        this.mUserAuthenticationValidWhileOnBody = z5;
        this.mInvalidatedByBiometricEnrollment = z6;
    }

    public AlgorithmParameterSpec getAlgorithmParameterSpec() {
        return this.mSpec;
    }

    public byte[] getAttestationChallenge() {
        return Utils.cloneIfNotNull(this.mAttestationChallenge);
    }

    public String[] getBlockModes() {
        return ArrayUtils.cloneIfNotEmpty(this.mBlockModes);
    }

    public Date getCertificateNotAfter() {
        return Utils.cloneIfNotNull(this.mCertificateNotAfter);
    }

    public Date getCertificateNotBefore() {
        return Utils.cloneIfNotNull(this.mCertificateNotBefore);
    }

    public BigInteger getCertificateSerialNumber() {
        return this.mCertificateSerialNumber;
    }

    public X500Principal getCertificateSubject() {
        return this.mCertificateSubject;
    }

    public String[] getDigests() {
        String[] strArr = this.mDigests;
        if (strArr != null) {
            return ArrayUtils.cloneIfNotEmpty(strArr);
        }
        throw new IllegalStateException("Digests not specified");
    }

    public String[] getEncryptionPaddings() {
        return ArrayUtils.cloneIfNotEmpty(this.mEncryptionPaddings);
    }

    public int getKeySize() {
        return this.mKeySize;
    }

    public Date getKeyValidityForConsumptionEnd() {
        return Utils.cloneIfNotNull(this.mKeyValidityForConsumptionEnd);
    }

    public Date getKeyValidityForOriginationEnd() {
        return Utils.cloneIfNotNull(this.mKeyValidityForOriginationEnd);
    }

    public Date getKeyValidityStart() {
        return Utils.cloneIfNotNull(this.mKeyValidityStart);
    }

    public String getKeystoreAlias() {
        return this.mKeystoreAlias;
    }

    public int getPurposes() {
        return this.mPurposes;
    }

    public String[] getSignaturePaddings() {
        return ArrayUtils.cloneIfNotEmpty(this.mSignaturePaddings);
    }

    public int getUid() {
        return this.mUid;
    }

    public int getUserAuthenticationValidityDurationSeconds() {
        return this.mUserAuthenticationValidityDurationSeconds;
    }

    public boolean isDigestsSpecified() {
        return this.mDigests != null;
    }

    public boolean isInvalidatedByBiometricEnrollment() {
        return this.mInvalidatedByBiometricEnrollment;
    }

    public boolean isRandomizedEncryptionRequired() {
        return this.mRandomizedEncryptionRequired;
    }

    public boolean isUniqueIdIncluded() {
        return this.mUniqueIdIncluded;
    }

    public boolean isUserAuthenticationRequired() {
        return this.mUserAuthenticationRequired;
    }

    public boolean isUserAuthenticationValidWhileOnBody() {
        return this.mUserAuthenticationValidWhileOnBody;
    }
}
