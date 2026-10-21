package android.location;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.WorkSource;
import android.util.TimeUtils;

/* JADX INFO: loaded from: classes.dex */
public final class LocationRequest implements Parcelable {
    public static final int ACCURACY_BLOCK = 102;
    public static final int ACCURACY_CITY = 104;
    public static final int ACCURACY_FINE = 100;
    public static final Parcelable.Creator<LocationRequest> CREATOR = new Parcelable.Creator<LocationRequest>() { // from class: android.location.LocationRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocationRequest createFromParcel(Parcel parcel) {
            LocationRequest locationRequest = new LocationRequest();
            locationRequest.setQuality(parcel.readInt());
            locationRequest.setFastestInterval(parcel.readLong());
            locationRequest.setInterval(parcel.readLong());
            locationRequest.setExpireAt(parcel.readLong());
            locationRequest.setNumUpdates(parcel.readInt());
            locationRequest.setSmallestDisplacement(parcel.readFloat());
            locationRequest.setHideFromAppOps(parcel.readInt() != 0);
            String string = parcel.readString();
            if (string != null) {
                locationRequest.setProvider(string);
            }
            WorkSource workSource = (WorkSource) parcel.readParcelable(null);
            if (workSource != null) {
                locationRequest.setWorkSource(workSource);
            }
            return locationRequest;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocationRequest[] newArray(int i2) {
            return new LocationRequest[i2];
        }
    };
    private static final double FASTEST_INTERVAL_FACTOR = 6.0d;
    public static final int POWER_HIGH = 203;
    public static final int POWER_LOW = 201;
    public static final int POWER_NONE = 200;
    private long mExpireAt;
    private boolean mExplicitFastestInterval;
    private long mFastestInterval;
    private boolean mHideFromAppOps;
    private long mInterval;
    private int mNumUpdates;
    private String mProvider;
    private int mQuality;
    private float mSmallestDisplacement;
    private WorkSource mWorkSource;

    public LocationRequest() {
        this.mQuality = 201;
        this.mInterval = 3600000L;
        this.mFastestInterval = (long) (3600000 / FASTEST_INTERVAL_FACTOR);
        this.mExplicitFastestInterval = false;
        this.mExpireAt = Long.MAX_VALUE;
        this.mNumUpdates = Integer.MAX_VALUE;
        this.mSmallestDisplacement = 0.0f;
        this.mWorkSource = null;
        this.mHideFromAppOps = false;
        this.mProvider = LocationManager.FUSED_PROVIDER;
    }

    private static void checkDisplacement(float f2) {
        if (f2 >= 0.0f) {
            return;
        }
        throw new IllegalArgumentException("invalid displacement: " + f2);
    }

    private static void checkInterval(long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException(c.f("invalid interval: ", j2));
        }
    }

    private static void checkProvider(String str) {
        if (str == null) {
            throw new IllegalArgumentException(c.j("invalid provider: ", str));
        }
    }

    private static void checkQuality(int i2) {
        if (i2 != 100 && i2 != 102 && i2 != 104 && i2 != 203 && i2 != 200 && i2 != 201) {
            throw new IllegalArgumentException(c.d("invalid quality: ", i2));
        }
    }

    public static LocationRequest create() {
        return new LocationRequest();
    }

    public static LocationRequest createFromDeprecatedCriteria(Criteria criteria, long j2, float f2, boolean z2) {
        int i2;
        if (j2 < 0) {
            j2 = 0;
        }
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        int accuracy = criteria.getAccuracy();
        if (accuracy == 1) {
            i2 = 100;
        } else if (accuracy != 2) {
            i2 = criteria.getPowerRequirement() != 3 ? 201 : 203;
        } else {
            i2 = 102;
        }
        LocationRequest smallestDisplacement = new LocationRequest().setQuality(i2).setInterval(j2).setFastestInterval(j2).setSmallestDisplacement(f2);
        if (z2) {
            smallestDisplacement.setNumUpdates(1);
        }
        return smallestDisplacement;
    }

    public static LocationRequest createFromDeprecatedProvider(String str, long j2, float f2, boolean z2) {
        int i2;
        if (j2 < 0) {
            j2 = 0;
        }
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        if (LocationManager.PASSIVE_PROVIDER.equals(str)) {
            i2 = 200;
        } else {
            i2 = "gps".equals(str) ? 100 : 201;
        }
        LocationRequest smallestDisplacement = new LocationRequest().setProvider(str).setQuality(i2).setInterval(j2).setFastestInterval(j2).setSmallestDisplacement(f2);
        if (z2) {
            smallestDisplacement.setNumUpdates(1);
        }
        return smallestDisplacement;
    }

    public static String qualityToString(int i2) {
        if (i2 == 100) {
            return "ACCURACY_FINE";
        }
        if (i2 == 102) {
            return "ACCURACY_BLOCK";
        }
        if (i2 == 104) {
            return "ACCURACY_CITY";
        }
        if (i2 == 203) {
            return "POWER_HIGH";
        }
        if (i2 != 200) {
            return i2 != 201 ? "???" : "POWER_LOW";
        }
        return "POWER_NONE";
    }

    public void decrementNumUpdates() {
        int i2 = this.mNumUpdates;
        if (i2 != Integer.MAX_VALUE) {
            this.mNumUpdates = i2 - 1;
        }
        if (this.mNumUpdates < 0) {
            this.mNumUpdates = 0;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getExpireAt() {
        return this.mExpireAt;
    }

    public long getFastestInterval() {
        return this.mFastestInterval;
    }

    public boolean getHideFromAppOps() {
        return this.mHideFromAppOps;
    }

    public long getInterval() {
        return this.mInterval;
    }

    public int getNumUpdates() {
        return this.mNumUpdates;
    }

    public String getProvider() {
        return this.mProvider;
    }

    public int getQuality() {
        return this.mQuality;
    }

    public float getSmallestDisplacement() {
        return this.mSmallestDisplacement;
    }

    public WorkSource getWorkSource() {
        return this.mWorkSource;
    }

    public LocationRequest setExpireAt(long j2) {
        this.mExpireAt = j2;
        if (j2 < 0) {
            this.mExpireAt = 0L;
        }
        return this;
    }

    public LocationRequest setExpireIn(long j2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (j2 > Long.MAX_VALUE - jElapsedRealtime) {
            this.mExpireAt = Long.MAX_VALUE;
        } else {
            this.mExpireAt = j2 + jElapsedRealtime;
        }
        if (this.mExpireAt < 0) {
            this.mExpireAt = 0L;
        }
        return this;
    }

    public LocationRequest setFastestInterval(long j2) {
        checkInterval(j2);
        this.mExplicitFastestInterval = true;
        this.mFastestInterval = j2;
        return this;
    }

    public void setHideFromAppOps(boolean z2) {
        this.mHideFromAppOps = z2;
    }

    public LocationRequest setInterval(long j2) {
        checkInterval(j2);
        this.mInterval = j2;
        if (!this.mExplicitFastestInterval) {
            this.mFastestInterval = (long) (j2 / FASTEST_INTERVAL_FACTOR);
        }
        return this;
    }

    public LocationRequest setNumUpdates(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException(c.d("invalid numUpdates: ", i2));
        }
        this.mNumUpdates = i2;
        return this;
    }

    public LocationRequest setProvider(String str) {
        checkProvider(str);
        this.mProvider = str;
        return this;
    }

    public LocationRequest setQuality(int i2) {
        checkQuality(i2);
        this.mQuality = i2;
        return this;
    }

    public LocationRequest setSmallestDisplacement(float f2) {
        checkDisplacement(f2);
        this.mSmallestDisplacement = f2;
        return this;
    }

    public void setWorkSource(WorkSource workSource) {
        this.mWorkSource = workSource;
    }

    public String toString() {
        StringBuilder sbR = c.r("Request[");
        sbR.append(qualityToString(this.mQuality));
        if (this.mProvider != null) {
            sbR.append(' ');
            sbR.append(this.mProvider);
        }
        if (this.mQuality != 200) {
            sbR.append(" requested=");
            TimeUtils.formatDuration(this.mInterval, sbR);
        }
        sbR.append(" fastest=");
        TimeUtils.formatDuration(this.mFastestInterval, sbR);
        long j2 = this.mExpireAt;
        if (j2 != Long.MAX_VALUE) {
            long jElapsedRealtime = j2 - SystemClock.elapsedRealtime();
            sbR.append(" expireIn=");
            TimeUtils.formatDuration(jElapsedRealtime, sbR);
        }
        if (this.mNumUpdates != Integer.MAX_VALUE) {
            sbR.append(" num=");
            sbR.append(this.mNumUpdates);
        }
        sbR.append(']');
        return sbR.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mQuality);
        parcel.writeLong(this.mFastestInterval);
        parcel.writeLong(this.mInterval);
        parcel.writeLong(this.mExpireAt);
        parcel.writeInt(this.mNumUpdates);
        parcel.writeFloat(this.mSmallestDisplacement);
        parcel.writeInt(this.mHideFromAppOps ? 1 : 0);
        parcel.writeString(this.mProvider);
        parcel.writeParcelable(this.mWorkSource, 0);
    }

    public LocationRequest(LocationRequest locationRequest) {
        this.mQuality = 201;
        this.mInterval = 3600000L;
        this.mFastestInterval = (long) (3600000 / FASTEST_INTERVAL_FACTOR);
        this.mExplicitFastestInterval = false;
        this.mExpireAt = Long.MAX_VALUE;
        this.mNumUpdates = Integer.MAX_VALUE;
        this.mSmallestDisplacement = 0.0f;
        this.mWorkSource = null;
        this.mHideFromAppOps = false;
        this.mProvider = LocationManager.FUSED_PROVIDER;
        this.mQuality = locationRequest.mQuality;
        this.mInterval = locationRequest.mInterval;
        this.mFastestInterval = locationRequest.mFastestInterval;
        this.mExplicitFastestInterval = locationRequest.mExplicitFastestInterval;
        this.mExpireAt = locationRequest.mExpireAt;
        this.mNumUpdates = locationRequest.mNumUpdates;
        this.mSmallestDisplacement = locationRequest.mSmallestDisplacement;
        this.mProvider = locationRequest.mProvider;
        this.mWorkSource = locationRequest.mWorkSource;
        this.mHideFromAppOps = locationRequest.mHideFromAppOps;
    }
}
