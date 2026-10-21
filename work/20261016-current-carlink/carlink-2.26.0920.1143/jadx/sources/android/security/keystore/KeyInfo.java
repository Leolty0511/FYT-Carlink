package android.security.keystore;

import java.security.spec.KeySpec;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class KeyInfo implements KeySpec {
    private final String[] mBlockModes;
    private final String[] mDigests;
    private final String[] mEncryptionPaddings;
    private final boolean mInsideSecureHardware;
    private final boolean mInvalidatedByBiometricEnrollment;
    private final int mKeySize;
    private final Date mKeyValidityForConsumptionEnd;
    private final Date mKeyValidityForOriginationEnd;
    private final Date mKeyValidityStart;
    private final String mKeystoreAlias;
    private final int mOrigin;
    private final int mPurposes;
    private final String[] mSignaturePaddings;
    private final boolean mUserAuthenticationRequired;
    private final boolean mUserAuthenticationRequirementEnforcedBySecureHardware;
    private final boolean mUserAuthenticationValidWhileOnBody;
    private final int mUserAuthenticationValidityDurationSeconds;

    public KeyInfo(String str, boolean z2, int i2, int i3, Date date, Date date2, Date date3, int i4, String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4, boolean z3, int i5, boolean z4, boolean z5, boolean z6) {
        this.mKeystoreAlias = str;
        this.mInsideSecureHardware = z2;
        this.mOrigin = i2;
        this.mKeySize = i3;
        this.mKeyValidityStart = Utils.cloneIfNotNull(date);
        this.mKeyValidityForOriginationEnd = Utils.cloneIfNotNull(date2);
        this.mKeyValidityForConsumptionEnd = Utils.cloneIfNotNull(date3);
        this.mPurposes = i4;
        this.mEncryptionPaddings = ArrayUtils.cloneIfNotEmpty(ArrayUtils.nullToEmpty(strArr));
        this.mSignaturePaddings = ArrayUtils.cloneIfNotEmpty(ArrayUtils.nullToEmpty(strArr2));
        this.mDigests = ArrayUtils.cloneIfNotEmpty(ArrayUtils.nullToEmpty(strArr3));
        this.mBlockModes = ArrayUtils.cloneIfNotEmpty(ArrayUtils.nullToEmpty(strArr4));
        this.mUserAuthenticationRequired = z3;
        this.mUserAuthenticationValidityDurationSeconds = i5;
        this.mUserAuthenticationRequirementEnforcedBySecureHardware = z4;
        this.mUserAuthenticationValidWhileOnBody = z5;
        this.mInvalidatedByBiometricEnrollment = z6;
    }

    public String[] getBlockModes() {
        return ArrayUtils.cloneIfNotEmpty(this.mBlockModes);
    }

    public String[] getDigests() {
        return ArrayUtils.cloneIfNotEmpty(this.mDigests);
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

    public int getOrigin() {
        return this.mOrigin;
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

    public boolean isInsideSecureHardware() {
        return this.mInsideSecureHardware;
    }

    public boolean isInvalidatedByBiometricEnrollment() {
        return this.mInvalidatedByBiometricEnrollment;
    }

    public boolean isUserAuthenticationRequired() {
        return this.mUserAuthenticationRequired;
    }

    public boolean isUserAuthenticationRequirementEnforcedBySecureHardware() {
        return this.mUserAuthenticationRequirementEnforcedBySecureHardware;
    }

    public boolean isUserAuthenticationValidWhileOnBody() {
        return this.mUserAuthenticationValidWhileOnBody;
    }
}
