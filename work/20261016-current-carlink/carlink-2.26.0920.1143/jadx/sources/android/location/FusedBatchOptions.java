package android.location;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class FusedBatchOptions implements Parcelable {
    public static final Parcelable.Creator<FusedBatchOptions> CREATOR = new Parcelable.Creator<FusedBatchOptions>() { // from class: android.location.FusedBatchOptions.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FusedBatchOptions createFromParcel(Parcel parcel) {
            FusedBatchOptions fusedBatchOptions = new FusedBatchOptions();
            fusedBatchOptions.setMaxPowerAllocationInMW(parcel.readDouble());
            fusedBatchOptions.setPeriodInNS(parcel.readLong());
            fusedBatchOptions.setSourceToUse(parcel.readInt());
            fusedBatchOptions.setFlag(parcel.readInt());
            fusedBatchOptions.setSmallestDisplacementMeters(parcel.readFloat());
            return fusedBatchOptions;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FusedBatchOptions[] newArray(int i2) {
            return new FusedBatchOptions[i2];
        }
    };
    private volatile long mPeriodInNS = 0;
    private volatile int mSourcesToUse = 0;
    private volatile int mFlags = 0;
    private volatile double mMaxPowerAllocationInMW = 0.0d;
    private volatile float mSmallestDisplacementMeters = 0.0f;

    public static final class BatchFlags {
        public static int CALLBACK_ON_LOCATION_FIX = 2;
        public static int WAKEUP_ON_FIFO_FULL = 1;
    }

    public static final class SourceTechnologies {
        public static int BLUETOOTH = 16;
        public static int CELL = 8;
        public static int GNSS = 1;
        public static int SENSORS = 4;
        public static int WIFI = 2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getFlags() {
        return this.mFlags;
    }

    public double getMaxPowerAllocationInMW() {
        return this.mMaxPowerAllocationInMW;
    }

    public long getPeriodInNS() {
        return this.mPeriodInNS;
    }

    public float getSmallestDisplacementMeters() {
        return this.mSmallestDisplacementMeters;
    }

    public int getSourcesToUse() {
        return this.mSourcesToUse;
    }

    public boolean isFlagSet(int i2) {
        return (i2 & this.mFlags) != 0;
    }

    public boolean isSourceToUseSet(int i2) {
        return (i2 & this.mSourcesToUse) != 0;
    }

    public void resetFlag(int i2) {
        this.mFlags = (~i2) & this.mFlags;
    }

    public void resetSourceToUse(int i2) {
        this.mSourcesToUse = (~i2) & this.mSourcesToUse;
    }

    public void setFlag(int i2) {
        this.mFlags = i2 | this.mFlags;
    }

    public void setMaxPowerAllocationInMW(double d2) {
        this.mMaxPowerAllocationInMW = d2;
    }

    public void setPeriodInNS(long j2) {
        this.mPeriodInNS = j2;
    }

    public void setSmallestDisplacementMeters(float f2) {
        this.mSmallestDisplacementMeters = f2;
    }

    public void setSourceToUse(int i2) {
        this.mSourcesToUse = i2 | this.mSourcesToUse;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeDouble(this.mMaxPowerAllocationInMW);
        parcel.writeLong(this.mPeriodInNS);
        parcel.writeInt(this.mSourcesToUse);
        parcel.writeInt(this.mFlags);
        parcel.writeFloat(this.mSmallestDisplacementMeters);
    }
}
