package android.app.timezone;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class RulesState implements Parcelable {
    private static final byte BYTE_FALSE = 0;
    private static final byte BYTE_TRUE = 1;
    public static final Parcelable.Creator<RulesState> CREATOR = new Parcelable.Creator<RulesState>() { // from class: android.app.timezone.RulesState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RulesState createFromParcel(Parcel parcel) {
            return RulesState.createFromParcel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RulesState[] newArray(int i2) {
            return new RulesState[i2];
        }
    };
    public static final int DISTRO_STATUS_INSTALLED = 2;
    public static final int DISTRO_STATUS_NONE = 1;
    public static final int DISTRO_STATUS_UNKNOWN = 0;
    public static final int STAGED_OPERATION_INSTALL = 3;
    public static final int STAGED_OPERATION_NONE = 1;
    public static final int STAGED_OPERATION_UNINSTALL = 2;
    public static final int STAGED_OPERATION_UNKNOWN = 0;
    private final DistroFormatVersion mDistroFormatVersionSupported;
    private final int mDistroStatus;
    private final DistroRulesVersion mInstalledDistroRulesVersion;
    private final boolean mOperationInProgress;
    private final DistroRulesVersion mStagedDistroRulesVersion;
    private final int mStagedOperationType;
    private final String mSystemRulesVersion;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DistroStatus {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface StagedOperationType {
    }

    public RulesState(String str, DistroFormatVersion distroFormatVersion, boolean z2, int i2, DistroRulesVersion distroRulesVersion, int i3, DistroRulesVersion distroRulesVersion2) {
        this.mSystemRulesVersion = Utils.validateRulesVersion("systemRulesVersion", str);
        this.mDistroFormatVersionSupported = (DistroFormatVersion) Utils.validateNotNull("distroFormatVersionSupported", distroFormatVersion);
        this.mOperationInProgress = z2;
        if (z2 && i2 != 0) {
            throw new IllegalArgumentException("stagedOperationType != STAGED_OPERATION_UNKNOWN");
        }
        int iValidateStagedOperation = validateStagedOperation(i2);
        this.mStagedOperationType = iValidateStagedOperation;
        this.mStagedDistroRulesVersion = (DistroRulesVersion) Utils.validateConditionalNull(iValidateStagedOperation == 3, "stagedDistroRulesVersion", distroRulesVersion);
        if (z2 && i3 != 0) {
            throw new IllegalArgumentException("distroInstalled != DISTRO_STATUS_UNKNOWN");
        }
        int iValidateDistroStatus = validateDistroStatus(i3);
        this.mDistroStatus = iValidateDistroStatus;
        this.mInstalledDistroRulesVersion = (DistroRulesVersion) Utils.validateConditionalNull(iValidateDistroStatus == 2, "installedDistroRulesVersion", distroRulesVersion2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RulesState createFromParcel(Parcel parcel) {
        return new RulesState(parcel.readString(), (DistroFormatVersion) parcel.readParcelable(null), parcel.readByte() == 1, parcel.readByte(), (DistroRulesVersion) parcel.readParcelable(null), parcel.readByte(), (DistroRulesVersion) parcel.readParcelable(null));
    }

    private static int validateDistroStatus(int i2) {
        if (i2 < 0 || i2 > 2) {
            throw new IllegalArgumentException(c.d("Unknown distro status=", i2));
        }
        return i2;
    }

    private static int validateStagedOperation(int i2) {
        if (i2 < 0 || i2 > 3) {
            throw new IllegalArgumentException(c.d("Unknown operation type=", i2));
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || RulesState.class != obj.getClass()) {
            return false;
        }
        RulesState rulesState = (RulesState) obj;
        if (this.mOperationInProgress != rulesState.mOperationInProgress || this.mStagedOperationType != rulesState.mStagedOperationType || this.mDistroStatus != rulesState.mDistroStatus || !this.mSystemRulesVersion.equals(rulesState.mSystemRulesVersion) || !this.mDistroFormatVersionSupported.equals(rulesState.mDistroFormatVersionSupported)) {
            return false;
        }
        DistroRulesVersion distroRulesVersion = this.mStagedDistroRulesVersion;
        if (distroRulesVersion == null ? rulesState.mStagedDistroRulesVersion != null : !distroRulesVersion.equals(rulesState.mStagedDistroRulesVersion)) {
            return false;
        }
        DistroRulesVersion distroRulesVersion2 = this.mInstalledDistroRulesVersion;
        if (distroRulesVersion2 != null) {
            return distroRulesVersion2.equals(rulesState.mInstalledDistroRulesVersion);
        }
        return rulesState.mInstalledDistroRulesVersion == null;
    }

    public int getDistroStatus() {
        return this.mDistroStatus;
    }

    public DistroRulesVersion getInstalledDistroRulesVersion() {
        return this.mInstalledDistroRulesVersion;
    }

    public DistroRulesVersion getStagedDistroRulesVersion() {
        return this.mStagedDistroRulesVersion;
    }

    public int getStagedOperationType() {
        return this.mStagedOperationType;
    }

    public String getSystemRulesVersion() {
        return this.mSystemRulesVersion;
    }

    public int hashCode() {
        int iHashCode = (((((this.mDistroFormatVersionSupported.hashCode() + (this.mSystemRulesVersion.hashCode() * 31)) * 31) + (this.mOperationInProgress ? 1 : 0)) * 31) + this.mStagedOperationType) * 31;
        DistroRulesVersion distroRulesVersion = this.mStagedDistroRulesVersion;
        int iHashCode2 = (((iHashCode + (distroRulesVersion != null ? distroRulesVersion.hashCode() : 0)) * 31) + this.mDistroStatus) * 31;
        DistroRulesVersion distroRulesVersion2 = this.mInstalledDistroRulesVersion;
        return iHashCode2 + (distroRulesVersion2 != null ? distroRulesVersion2.hashCode() : 0);
    }

    public boolean isDistroFormatVersionSupported(DistroFormatVersion distroFormatVersion) {
        return this.mDistroFormatVersionSupported.supports(distroFormatVersion);
    }

    public boolean isOperationInProgress() {
        return this.mOperationInProgress;
    }

    public boolean isSystemVersionNewerThan(DistroRulesVersion distroRulesVersion) {
        return this.mSystemRulesVersion.compareTo(distroRulesVersion.getRulesVersion()) > 0;
    }

    public String toString() {
        return "RulesState{mSystemRulesVersion='" + this.mSystemRulesVersion + "', mDistroFormatVersionSupported=" + this.mDistroFormatVersionSupported + ", mOperationInProgress=" + this.mOperationInProgress + ", mStagedOperationType=" + this.mStagedOperationType + ", mStagedDistroRulesVersion=" + this.mStagedDistroRulesVersion + ", mDistroStatus=" + this.mDistroStatus + ", mInstalledDistroRulesVersion=" + this.mInstalledDistroRulesVersion + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mSystemRulesVersion);
        parcel.writeParcelable(this.mDistroFormatVersionSupported, 0);
        parcel.writeByte(this.mOperationInProgress ? (byte) 1 : (byte) 0);
        parcel.writeByte((byte) this.mStagedOperationType);
        parcel.writeParcelable(this.mStagedDistroRulesVersion, 0);
        parcel.writeByte((byte) this.mDistroStatus);
        parcel.writeParcelable(this.mInstalledDistroRulesVersion, 0);
    }
}
