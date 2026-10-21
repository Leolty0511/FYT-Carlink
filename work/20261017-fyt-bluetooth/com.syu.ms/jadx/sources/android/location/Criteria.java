package android.location;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class Criteria implements Parcelable {
    public static final int ACCURACY_COARSE = 2;
    public static final int ACCURACY_FINE = 1;
    public static final int ACCURACY_HIGH = 3;
    public static final int ACCURACY_LOW = 1;
    public static final int ACCURACY_MEDIUM = 2;
    public static final Parcelable.Creator<Criteria> CREATOR = new Parcelable.Creator<Criteria>() { // from class: android.location.Criteria.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Criteria createFromParcel(Parcel parcel) {
            Criteria criteria = new Criteria();
            criteria.mHorizontalAccuracy = parcel.readInt();
            criteria.mVerticalAccuracy = parcel.readInt();
            criteria.mSpeedAccuracy = parcel.readInt();
            criteria.mBearingAccuracy = parcel.readInt();
            criteria.mPowerRequirement = parcel.readInt();
            criteria.mAltitudeRequired = parcel.readInt() != 0;
            criteria.mBearingRequired = parcel.readInt() != 0;
            criteria.mSpeedRequired = parcel.readInt() != 0;
            criteria.mCostAllowed = parcel.readInt() != 0;
            return criteria;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Criteria[] newArray(int i2) {
            return new Criteria[i2];
        }
    };
    public static final int NO_REQUIREMENT = 0;
    public static final int POWER_HIGH = 3;
    public static final int POWER_LOW = 1;
    public static final int POWER_MEDIUM = 2;
    private boolean mAltitudeRequired;
    private int mBearingAccuracy;
    private boolean mBearingRequired;
    private boolean mCostAllowed;
    private int mHorizontalAccuracy;
    private int mPowerRequirement;
    private int mSpeedAccuracy;
    private boolean mSpeedRequired;
    private int mVerticalAccuracy;

    public Criteria() {
        this.mHorizontalAccuracy = 0;
        this.mVerticalAccuracy = 0;
        this.mSpeedAccuracy = 0;
        this.mBearingAccuracy = 0;
        this.mPowerRequirement = 0;
        this.mAltitudeRequired = false;
        this.mBearingRequired = false;
        this.mSpeedRequired = false;
        this.mCostAllowed = false;
    }

    private static String accuracyToString(int i2) {
        if (i2 == 0) {
            return "---";
        }
        if (i2 == 1) {
            return "LOW";
        }
        if (i2 != 2) {
            return i2 != 3 ? "???" : "HIGH";
        }
        return "MEDIUM";
    }

    private static String powerToString(int i2) {
        if (i2 == 0) {
            return "NO_REQ";
        }
        if (i2 == 1) {
            return "LOW";
        }
        if (i2 != 2) {
            return i2 != 3 ? "???" : "HIGH";
        }
        return "MEDIUM";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAccuracy() {
        return this.mHorizontalAccuracy >= 3 ? 1 : 2;
    }

    public int getBearingAccuracy() {
        return this.mBearingAccuracy;
    }

    public int getHorizontalAccuracy() {
        return this.mHorizontalAccuracy;
    }

    public int getPowerRequirement() {
        return this.mPowerRequirement;
    }

    public int getSpeedAccuracy() {
        return this.mSpeedAccuracy;
    }

    public int getVerticalAccuracy() {
        return this.mVerticalAccuracy;
    }

    public boolean isAltitudeRequired() {
        return this.mAltitudeRequired;
    }

    public boolean isBearingRequired() {
        return this.mBearingRequired;
    }

    public boolean isCostAllowed() {
        return this.mCostAllowed;
    }

    public boolean isSpeedRequired() {
        return this.mSpeedRequired;
    }

    public void setAccuracy(int i2) {
        if (i2 < 0 || i2 > 2) {
            throw new IllegalArgumentException("accuracy=" + i2);
        }
        if (i2 == 1) {
            this.mHorizontalAccuracy = 3;
        } else {
            this.mHorizontalAccuracy = 1;
        }
    }

    public void setAltitudeRequired(boolean z2) {
        this.mAltitudeRequired = z2;
    }

    public void setBearingAccuracy(int i2) {
        if (i2 >= 0 && i2 <= 3) {
            this.mBearingAccuracy = i2;
            return;
        }
        throw new IllegalArgumentException("accuracy=" + i2);
    }

    public void setBearingRequired(boolean z2) {
        this.mBearingRequired = z2;
    }

    public void setCostAllowed(boolean z2) {
        this.mCostAllowed = z2;
    }

    public void setHorizontalAccuracy(int i2) {
        if (i2 >= 0 && i2 <= 3) {
            this.mHorizontalAccuracy = i2;
            return;
        }
        throw new IllegalArgumentException("accuracy=" + i2);
    }

    public void setPowerRequirement(int i2) {
        if (i2 >= 0 && i2 <= 3) {
            this.mPowerRequirement = i2;
            return;
        }
        throw new IllegalArgumentException("level=" + i2);
    }

    public void setSpeedAccuracy(int i2) {
        if (i2 >= 0 && i2 <= 3) {
            this.mSpeedAccuracy = i2;
            return;
        }
        throw new IllegalArgumentException("accuracy=" + i2);
    }

    public void setSpeedRequired(boolean z2) {
        this.mSpeedRequired = z2;
    }

    public void setVerticalAccuracy(int i2) {
        if (i2 >= 0 && i2 <= 3) {
            this.mVerticalAccuracy = i2;
            return;
        }
        throw new IllegalArgumentException("accuracy=" + i2);
    }

    public String toString() {
        return "Criteria[power=" + powerToString(this.mPowerRequirement) + " acc=" + accuracyToString(this.mHorizontalAccuracy) + ']';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mHorizontalAccuracy);
        parcel.writeInt(this.mVerticalAccuracy);
        parcel.writeInt(this.mSpeedAccuracy);
        parcel.writeInt(this.mBearingAccuracy);
        parcel.writeInt(this.mPowerRequirement);
        parcel.writeInt(this.mAltitudeRequired ? 1 : 0);
        parcel.writeInt(this.mBearingRequired ? 1 : 0);
        parcel.writeInt(this.mSpeedRequired ? 1 : 0);
        parcel.writeInt(this.mCostAllowed ? 1 : 0);
    }

    public Criteria(Criteria criteria) {
        this.mHorizontalAccuracy = 0;
        this.mVerticalAccuracy = 0;
        this.mSpeedAccuracy = 0;
        this.mBearingAccuracy = 0;
        this.mPowerRequirement = 0;
        this.mAltitudeRequired = false;
        this.mBearingRequired = false;
        this.mSpeedRequired = false;
        this.mCostAllowed = false;
        this.mHorizontalAccuracy = criteria.mHorizontalAccuracy;
        this.mVerticalAccuracy = criteria.mVerticalAccuracy;
        this.mSpeedAccuracy = criteria.mSpeedAccuracy;
        this.mBearingAccuracy = criteria.mBearingAccuracy;
        this.mPowerRequirement = criteria.mPowerRequirement;
        this.mAltitudeRequired = criteria.mAltitudeRequired;
        this.mBearingRequired = criteria.mBearingRequired;
        this.mSpeedRequired = criteria.mSpeedRequired;
        this.mCostAllowed = criteria.mCostAllowed;
    }
}
