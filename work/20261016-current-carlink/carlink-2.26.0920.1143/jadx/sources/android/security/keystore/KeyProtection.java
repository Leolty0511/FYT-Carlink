package android.security.keystore;

import java.security.KeyStore;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final class KeyProtection implements KeyStore.ProtectionParameter {
    private final String[] mBlockModes;
    private final long mBoundToSecureUserId;
    private final boolean mCriticalToDeviceEncryption;
    private final String[] mDigests;
    private final String[] mEncryptionPaddings;
    private final boolean mInvalidatedByBiometricEnrollment;
    private final Date mKeyValidityForConsumptionEnd;
    private final Date mKeyValidityForOriginationEnd;
    private final Date mKeyValidityStart;
    private final int mPurposes;
    private final boolean mRandomizedEncryptionRequired;
    private final String[] mSignaturePaddings;
    private final boolean mUserAuthenticationRequired;
    private final boolean mUserAuthenticationValidWhileOnBody;
    private final int mUserAuthenticationValidityDurationSeconds;

    public static final class Builder {
        private String[] mBlockModes;
        private String[] mDigests;
        private String[] mEncryptionPaddings;
        private Date mKeyValidityForConsumptionEnd;
        private Date mKeyValidityForOriginationEnd;
        private Date mKeyValidityStart;
        private int mPurposes;
        private String[] mSignaturePaddings;
        private boolean mUserAuthenticationRequired;
        private boolean mUserAuthenticationValidWhileOnBody;
        private boolean mRandomizedEncryptionRequired = true;
        private int mUserAuthenticationValidityDurationSeconds = -1;
        private boolean mInvalidatedByBiometricEnrollment = true;
        private long mBoundToSecureUserId = 0;
        private boolean mCriticalToDeviceEncryption = false;

        public Builder(int i2) {
            this.mPurposes = i2;
        }

        public KeyProtection build() {
            return new KeyProtection(this.mKeyValidityStart, this.mKeyValidityForOriginationEnd, this.mKeyValidityForConsumptionEnd, this.mPurposes, this.mEncryptionPaddings, this.mSignaturePaddings, this.mDigests, this.mBlockModes, this.mRandomizedEncryptionRequired, this.mUserAuthenticationRequired, this.mUserAuthenticationValidityDurationSeconds, this.mUserAuthenticationValidWhileOnBody, this.mInvalidatedByBiometricEnrollment, this.mBoundToSecureUserId, this.mCriticalToDeviceEncryption);
        }

        public Builder setBlockModes(String... strArr) {
            this.mBlockModes = ArrayUtils.cloneIfNotEmpty(strArr);
            return this;
        }

        public Builder setBoundToSpecificSecureUserId(long j2) {
            this.mBoundToSecureUserId = j2;
            return this;
        }

        public Builder setCriticalToDeviceEncryption(boolean z2) {
            this.mCriticalToDeviceEncryption = z2;
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

    public String[] getBlockModes() {
        return ArrayUtils.cloneIfNotEmpty(this.mBlockModes);
    }

    public long getBoundToSpecificSecureUserId() {
        return this.mBoundToSecureUserId;
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

    public Date getKeyValidityForConsumptionEnd() {
        return Utils.cloneIfNotNull(this.mKeyValidityForConsumptionEnd);
    }

    public Date getKeyValidityForOriginationEnd() {
        return Utils.cloneIfNotNull(this.mKeyValidityForOriginationEnd);
    }

    public Date getKeyValidityStart() {
        return Utils.cloneIfNotNull(this.mKeyValidityStart);
    }

    public int getPurposes() {
        return this.mPurposes;
    }

    public String[] getSignaturePaddings() {
        return ArrayUtils.cloneIfNotEmpty(this.mSignaturePaddings);
    }

    public int getUserAuthenticationValidityDurationSeconds() {
        return this.mUserAuthenticationValidityDurationSeconds;
    }

    public boolean isCriticalToDeviceEncryption() {
        return this.mCriticalToDeviceEncryption;
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

    public boolean isUserAuthenticationRequired() {
        return this.mUserAuthenticationRequired;
    }

    public boolean isUserAuthenticationValidWhileOnBody() {
        return this.mUserAuthenticationValidWhileOnBody;
    }

    private KeyProtection(Date date, Date date2, Date date3, int i2, String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4, boolean z2, boolean z3, int i3, boolean z4, boolean z5, long j2, boolean z6) {
        this.mKeyValidityStart = Utils.cloneIfNotNull(date);
        this.mKeyValidityForOriginationEnd = Utils.cloneIfNotNull(date2);
        this.mKeyValidityForConsumptionEnd = Utils.cloneIfNotNull(date3);
        this.mPurposes = i2;
        this.mEncryptionPaddings = ArrayUtils.cloneIfNotEmpty(ArrayUtils.nullToEmpty(strArr));
        this.mSignaturePaddings = ArrayUtils.cloneIfNotEmpty(ArrayUtils.nullToEmpty(strArr2));
        this.mDigests = ArrayUtils.cloneIfNotEmpty(strArr3);
        this.mBlockModes = ArrayUtils.cloneIfNotEmpty(ArrayUtils.nullToEmpty(strArr4));
        this.mRandomizedEncryptionRequired = z2;
        this.mUserAuthenticationRequired = z3;
        this.mUserAuthenticationValidityDurationSeconds = i3;
        this.mUserAuthenticationValidWhileOnBody = z4;
        this.mInvalidatedByBiometricEnrollment = z5;
        this.mBoundToSecureUserId = j2;
        this.mCriticalToDeviceEncryption = z6;
    }
}
