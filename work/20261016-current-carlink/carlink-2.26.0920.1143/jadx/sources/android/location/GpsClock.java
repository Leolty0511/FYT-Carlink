package android.location;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Half;

/* JADX INFO: loaded from: classes.dex */
public class GpsClock implements Parcelable {
    public static final Parcelable.Creator<GpsClock> CREATOR = new Parcelable.Creator<GpsClock>() { // from class: android.location.GpsClock.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GpsClock createFromParcel(Parcel parcel) {
            GpsClock gpsClock = new GpsClock();
            gpsClock.mFlags = (short) parcel.readInt();
            gpsClock.mLeapSecond = (short) parcel.readInt();
            gpsClock.mType = parcel.readByte();
            gpsClock.mTimeInNs = parcel.readLong();
            gpsClock.mTimeUncertaintyInNs = parcel.readDouble();
            gpsClock.mFullBiasInNs = parcel.readLong();
            gpsClock.mBiasInNs = parcel.readDouble();
            gpsClock.mBiasUncertaintyInNs = parcel.readDouble();
            gpsClock.mDriftInNsPerSec = parcel.readDouble();
            gpsClock.mDriftUncertaintyInNsPerSec = parcel.readDouble();
            return gpsClock;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GpsClock[] newArray(int i2) {
            return new GpsClock[i2];
        }
    };
    private static final short HAS_BIAS = 8;
    private static final short HAS_BIAS_UNCERTAINTY = 16;
    private static final short HAS_DRIFT = 32;
    private static final short HAS_DRIFT_UNCERTAINTY = 64;
    private static final short HAS_FULL_BIAS = 4;
    private static final short HAS_LEAP_SECOND = 1;
    private static final short HAS_NO_FLAGS = 0;
    private static final short HAS_TIME_UNCERTAINTY = 2;
    public static final byte TYPE_GPS_TIME = 2;
    public static final byte TYPE_LOCAL_HW_TIME = 1;
    public static final byte TYPE_UNKNOWN = 0;
    private double mBiasInNs;
    private double mBiasUncertaintyInNs;
    private double mDriftInNsPerSec;
    private double mDriftUncertaintyInNsPerSec;
    private short mFlags;
    private long mFullBiasInNs;
    private short mLeapSecond;
    private long mTimeInNs;
    private double mTimeUncertaintyInNs;
    private byte mType;

    public GpsClock() {
        initialize();
    }

    private String getTypeString() {
        byte b2 = this.mType;
        if (b2 == 0) {
            return "Unknown";
        }
        if (b2 != 1) {
            return b2 != 2 ? c.m(new StringBuilder("<Invalid:"), this.mType, ">") : "GpsTime";
        }
        return "LocalHwClock";
    }

    private void initialize() {
        this.mFlags = (short) 0;
        resetLeapSecond();
        setType((byte) 0);
        setTimeInNs(Long.MIN_VALUE);
        resetTimeUncertaintyInNs();
        resetFullBiasInNs();
        resetBiasInNs();
        resetBiasUncertaintyInNs();
        resetDriftInNsPerSec();
        resetDriftUncertaintyInNsPerSec();
    }

    private boolean isFlagSet(short s2) {
        return (this.mFlags & s2) == s2;
    }

    private void resetFlag(short s2) {
        this.mFlags = (short) ((~s2) & this.mFlags);
    }

    private void setFlag(short s2) {
        this.mFlags = (short) (s2 | this.mFlags);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public double getBiasInNs() {
        return this.mBiasInNs;
    }

    public double getBiasUncertaintyInNs() {
        return this.mBiasUncertaintyInNs;
    }

    public double getDriftInNsPerSec() {
        return this.mDriftInNsPerSec;
    }

    public double getDriftUncertaintyInNsPerSec() {
        return this.mDriftUncertaintyInNsPerSec;
    }

    public long getFullBiasInNs() {
        return this.mFullBiasInNs;
    }

    public short getLeapSecond() {
        return this.mLeapSecond;
    }

    public long getTimeInNs() {
        return this.mTimeInNs;
    }

    public double getTimeUncertaintyInNs() {
        return this.mTimeUncertaintyInNs;
    }

    public byte getType() {
        return this.mType;
    }

    public boolean hasBiasInNs() {
        return isFlagSet((short) 8);
    }

    public boolean hasBiasUncertaintyInNs() {
        return isFlagSet((short) 16);
    }

    public boolean hasDriftInNsPerSec() {
        return isFlagSet(HAS_DRIFT);
    }

    public boolean hasDriftUncertaintyInNsPerSec() {
        return isFlagSet(HAS_DRIFT_UNCERTAINTY);
    }

    public boolean hasFullBiasInNs() {
        return isFlagSet((short) 4);
    }

    public boolean hasLeapSecond() {
        return isFlagSet((short) 1);
    }

    public boolean hasTimeUncertaintyInNs() {
        return isFlagSet((short) 2);
    }

    public void reset() {
        initialize();
    }

    public void resetBiasInNs() {
        resetFlag((short) 8);
        this.mBiasInNs = Double.NaN;
    }

    public void resetBiasUncertaintyInNs() {
        resetFlag((short) 16);
        this.mBiasUncertaintyInNs = Double.NaN;
    }

    public void resetDriftInNsPerSec() {
        resetFlag(HAS_DRIFT);
        this.mDriftInNsPerSec = Double.NaN;
    }

    public void resetDriftUncertaintyInNsPerSec() {
        resetFlag(HAS_DRIFT_UNCERTAINTY);
        this.mDriftUncertaintyInNsPerSec = Double.NaN;
    }

    public void resetFullBiasInNs() {
        resetFlag((short) 4);
        this.mFullBiasInNs = Long.MIN_VALUE;
    }

    public void resetLeapSecond() {
        resetFlag((short) 1);
        this.mLeapSecond = Half.NEGATIVE_ZERO;
    }

    public void resetTimeUncertaintyInNs() {
        resetFlag((short) 2);
        this.mTimeUncertaintyInNs = Double.NaN;
    }

    public void set(GpsClock gpsClock) {
        this.mFlags = gpsClock.mFlags;
        this.mLeapSecond = gpsClock.mLeapSecond;
        this.mType = gpsClock.mType;
        this.mTimeInNs = gpsClock.mTimeInNs;
        this.mTimeUncertaintyInNs = gpsClock.mTimeUncertaintyInNs;
        this.mFullBiasInNs = gpsClock.mFullBiasInNs;
        this.mBiasInNs = gpsClock.mBiasInNs;
        this.mBiasUncertaintyInNs = gpsClock.mBiasUncertaintyInNs;
        this.mDriftInNsPerSec = gpsClock.mDriftInNsPerSec;
        this.mDriftUncertaintyInNsPerSec = gpsClock.mDriftUncertaintyInNsPerSec;
    }

    public void setBiasInNs(double d2) {
        setFlag((short) 8);
        this.mBiasInNs = d2;
    }

    public void setBiasUncertaintyInNs(double d2) {
        setFlag((short) 16);
        this.mBiasUncertaintyInNs = d2;
    }

    public void setDriftInNsPerSec(double d2) {
        setFlag(HAS_DRIFT);
        this.mDriftInNsPerSec = d2;
    }

    public void setDriftUncertaintyInNsPerSec(double d2) {
        setFlag(HAS_DRIFT_UNCERTAINTY);
        this.mDriftUncertaintyInNsPerSec = d2;
    }

    public void setFullBiasInNs(long j2) {
        setFlag((short) 4);
        this.mFullBiasInNs = j2;
    }

    public void setLeapSecond(short s2) {
        setFlag((short) 1);
        this.mLeapSecond = s2;
    }

    public void setTimeInNs(long j2) {
        this.mTimeInNs = j2;
    }

    public void setTimeUncertaintyInNs(double d2) {
        setFlag((short) 2);
        this.mTimeUncertaintyInNs = d2;
    }

    public void setType(byte b2) {
        this.mType = b2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GpsClock:\n");
        sb.append(String.format("   %-15s = %s\n", "Type", getTypeString()));
        Object[] objArr = new Object[2];
        objArr[0] = "LeapSecond";
        objArr[1] = hasLeapSecond() ? Short.valueOf(this.mLeapSecond) : null;
        sb.append(String.format("   %-15s = %s\n", objArr));
        Object[] objArr2 = new Object[4];
        objArr2[0] = "TimeInNs";
        objArr2[1] = Long.valueOf(this.mTimeInNs);
        objArr2[2] = "TimeUncertaintyInNs";
        objArr2[3] = hasTimeUncertaintyInNs() ? Double.valueOf(this.mTimeUncertaintyInNs) : null;
        sb.append(String.format("   %-15s = %-25s   %-26s = %s\n", objArr2));
        Object[] objArr3 = new Object[2];
        objArr3[0] = "FullBiasInNs";
        objArr3[1] = hasFullBiasInNs() ? Long.valueOf(this.mFullBiasInNs) : null;
        sb.append(String.format("   %-15s = %s\n", objArr3));
        Object[] objArr4 = new Object[4];
        objArr4[0] = "BiasInNs";
        objArr4[1] = hasBiasInNs() ? Double.valueOf(this.mBiasInNs) : null;
        objArr4[2] = "BiasUncertaintyInNs";
        objArr4[3] = hasBiasUncertaintyInNs() ? Double.valueOf(this.mBiasUncertaintyInNs) : null;
        sb.append(String.format("   %-15s = %-25s   %-26s = %s\n", objArr4));
        Object[] objArr5 = new Object[4];
        objArr5[0] = "DriftInNsPerSec";
        objArr5[1] = hasDriftInNsPerSec() ? Double.valueOf(this.mDriftInNsPerSec) : null;
        objArr5[2] = "DriftUncertaintyInNsPerSec";
        objArr5[3] = hasDriftUncertaintyInNsPerSec() ? Double.valueOf(this.mDriftUncertaintyInNsPerSec) : null;
        sb.append(String.format("   %-15s = %-25s   %-26s = %s\n", objArr5));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mFlags);
        parcel.writeInt(this.mLeapSecond);
        parcel.writeByte(this.mType);
        parcel.writeLong(this.mTimeInNs);
        parcel.writeDouble(this.mTimeUncertaintyInNs);
        parcel.writeLong(this.mFullBiasInNs);
        parcel.writeDouble(this.mBiasInNs);
        parcel.writeDouble(this.mBiasUncertaintyInNs);
        parcel.writeDouble(this.mDriftInNsPerSec);
        parcel.writeDouble(this.mDriftUncertaintyInNsPerSec);
    }
}
