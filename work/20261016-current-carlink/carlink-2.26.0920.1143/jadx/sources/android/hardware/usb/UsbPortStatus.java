package android.hardware.usb;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class UsbPortStatus implements Parcelable {
    public static final Parcelable.Creator<UsbPortStatus> CREATOR = new Parcelable.Creator<UsbPortStatus>() { // from class: android.hardware.usb.UsbPortStatus.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsbPortStatus createFromParcel(Parcel parcel) {
            return new UsbPortStatus(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsbPortStatus[] newArray(int i2) {
            return new UsbPortStatus[i2];
        }
    };
    private final int mCurrentDataRole;
    private final int mCurrentMode;
    private final int mCurrentPowerRole;
    private final int mSupportedRoleCombinations;

    public UsbPortStatus(int i2, int i3, int i4, int i5) {
        this.mCurrentMode = i2;
        this.mCurrentPowerRole = i3;
        this.mCurrentDataRole = i4;
        this.mSupportedRoleCombinations = i5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCurrentDataRole() {
        return this.mCurrentDataRole;
    }

    public int getCurrentMode() {
        return this.mCurrentMode;
    }

    public int getCurrentPowerRole() {
        return this.mCurrentPowerRole;
    }

    public int getSupportedRoleCombinations() {
        return this.mSupportedRoleCombinations;
    }

    public boolean isConnected() {
        return this.mCurrentMode != 0;
    }

    public boolean isRoleCombinationSupported(int i2, int i3) {
        return (UsbPort.combineRolesAsBit(i2, i3) & this.mSupportedRoleCombinations) != 0;
    }

    public String toString() {
        return "UsbPortStatus{connected=" + isConnected() + ", currentMode=" + UsbPort.modeToString(this.mCurrentMode) + ", currentPowerRole=" + UsbPort.powerRoleToString(this.mCurrentPowerRole) + ", currentDataRole=" + UsbPort.dataRoleToString(this.mCurrentDataRole) + ", supportedRoleCombinations=" + UsbPort.roleCombinationsToString(this.mSupportedRoleCombinations) + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mCurrentMode);
        parcel.writeInt(this.mCurrentPowerRole);
        parcel.writeInt(this.mCurrentDataRole);
        parcel.writeInt(this.mSupportedRoleCombinations);
    }
}
