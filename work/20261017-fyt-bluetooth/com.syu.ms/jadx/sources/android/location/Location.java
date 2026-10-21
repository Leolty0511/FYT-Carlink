package android.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.Printer;
import android.util.TimeUtils;
import java.text.DecimalFormat;
import java.util.Objects;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class Location implements Parcelable {
    public static final Parcelable.Creator<Location> CREATOR = new Parcelable.Creator<Location>() { // from class: android.location.Location.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Location createFromParcel(Parcel parcel) {
            Location location = new Location(parcel.readString());
            location.mTime = parcel.readLong();
            location.mElapsedRealtimeNanos = parcel.readLong();
            location.mLatitude = parcel.readDouble();
            location.mLongitude = parcel.readDouble();
            location.mHasAltitude = parcel.readInt() != 0;
            location.mAltitude = parcel.readDouble();
            location.mHasSpeed = parcel.readInt() != 0;
            location.mSpeed = parcel.readFloat();
            location.mHasBearing = parcel.readInt() != 0;
            location.mBearing = parcel.readFloat();
            location.mHasAccuracy = parcel.readInt() != 0;
            location.mAccuracy = parcel.readFloat();
            location.mExtras = parcel.readBundle();
            location.mIsFromMockProvider = parcel.readInt() != 0;
            return location;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Location[] newArray(int i2) {
            return new Location[i2];
        }
    };
    public static final String EXTRA_COARSE_LOCATION = "coarseLocation";
    public static final String EXTRA_NO_GPS_LOCATION = "noGPSLocation";
    public static final int FORMAT_DEGREES = 0;
    public static final int FORMAT_MINUTES = 1;
    public static final int FORMAT_SECONDS = 2;
    private float mAccuracy;
    private double mAltitude;
    private float mBearing;
    private float mDistance;
    private long mElapsedRealtimeNanos;
    private Bundle mExtras;
    private boolean mHasAccuracy;
    private boolean mHasAltitude;
    private boolean mHasBearing;
    private boolean mHasSpeed;
    private float mInitialBearing;
    private boolean mIsFromMockProvider;
    private double mLat1;
    private double mLat2;
    private double mLatitude;
    private double mLon1;
    private double mLon2;
    private double mLongitude;
    private String mProvider;
    private final float[] mResults;
    private float mSpeed;
    private long mTime;

    public Location(String str) {
        this.mTime = 0L;
        this.mElapsedRealtimeNanos = 0L;
        this.mLatitude = 0.0d;
        this.mLongitude = 0.0d;
        this.mHasAltitude = false;
        this.mAltitude = 0.0d;
        this.mHasSpeed = false;
        this.mSpeed = 0.0f;
        this.mHasBearing = false;
        this.mBearing = 0.0f;
        this.mHasAccuracy = false;
        this.mAccuracy = 0.0f;
        this.mExtras = null;
        this.mIsFromMockProvider = false;
        this.mLat1 = 0.0d;
        this.mLon1 = 0.0d;
        this.mLat2 = 0.0d;
        this.mLon2 = 0.0d;
        this.mDistance = 0.0f;
        this.mInitialBearing = 0.0f;
        this.mResults = new float[2];
        this.mProvider = str;
    }

    private static void computeDistanceAndBearing(double d2, double d3, double d4, double d5, float[] fArr) {
        double d6;
        double d7;
        double d8 = (0.017453292519943295d * d5) - (d3 * 0.017453292519943295d);
        double dAtan = Math.atan(Math.tan(d2 * 0.017453292519943295d) * 0.996647189328169d);
        double dAtan2 = Math.atan(0.996647189328169d * Math.tan(d4 * 0.017453292519943295d));
        double dCos = Math.cos(dAtan);
        double dCos2 = Math.cos(dAtan2);
        double dSin = Math.sin(dAtan);
        double dSin2 = Math.sin(dAtan2);
        double d9 = dCos * dCos2;
        double d10 = dSin * dSin2;
        double d11 = d8;
        double dCos3 = 0.0d;
        double d12 = 0.0d;
        double dSin3 = 0.0d;
        double dAtan3 = 0.0d;
        double d13 = 0.0d;
        int i2 = 0;
        while (true) {
            if (i2 >= 20) {
                d6 = dSin;
                d7 = dSin2;
                break;
            }
            dCos3 = Math.cos(d11);
            dSin3 = Math.sin(d11);
            double d14 = dCos2 * dSin3;
            double d15 = (dCos * dSin2) - ((dSin * dCos2) * dCos3);
            d6 = dSin;
            double dSqrt = Math.sqrt((d14 * d14) + (d15 * d15));
            d7 = dSin2;
            double d16 = d10 + (d9 * dCos3);
            dAtan3 = Math.atan2(dSqrt, d16);
            double d17 = dSqrt == 0.0d ? 0.0d : (d9 * dSin3) / dSqrt;
            double d18 = 1.0d - (d17 * d17);
            double d19 = d18 == 0.0d ? 0.0d : d16 - ((d10 * 2.0d) / d18);
            double d20 = 0.006739496756586903d * d18;
            double d21 = ((d20 / 16384.0d) * (((((320.0d - (175.0d * d20)) * d20) - 768.0d) * d20) + 4096.0d)) + 1.0d;
            double d22 = (d20 / 1024.0d) * ((d20 * (((74.0d - (47.0d * d20)) * d20) - 128.0d)) + 256.0d);
            double d23 = 2.0955066698943685E-4d * d18 * (((4.0d - (d18 * 3.0d)) * 0.0033528106718309896d) + 4.0d);
            double d24 = d19 * d19;
            d13 = d22 * dSqrt * (d19 + ((d22 / 4.0d) * ((((d24 * 2.0d) - 1.0d) * d16) - ((((d22 / 6.0d) * d19) * (((dSqrt * 4.0d) * dSqrt) - 3.0d)) * ((d24 * 4.0d) - 3.0d)))));
            double d25 = d8 + ((1.0d - d23) * 0.0033528106718309896d * d17 * (dAtan3 + (dSqrt * d23 * (d19 + (d23 * d16 * (((2.0d * d19) * d19) - 1.0d))))));
            if (Math.abs((d25 - d11) / d25) < 1.0E-12d) {
                d12 = d21;
                break;
            }
            i2++;
            dSin = d6;
            dSin2 = d7;
            d11 = d25;
            d12 = d21;
        }
        fArr[0] = (float) (6356752.3142d * d12 * (dAtan3 - d13));
        if (fArr.length > 1) {
            double d26 = d7 * dCos;
            double d27 = d6;
            fArr[1] = (float) (((double) ((float) Math.atan2(dCos2 * dSin3, d26 - ((d27 * dCos2) * dCos3)))) * 57.29577951308232d);
            if (fArr.length > 2) {
                fArr[2] = (float) (((double) ((float) Math.atan2(dCos * dSin3, ((-d27) * dCos2) + (d26 * dCos3)))) * 57.29577951308232d);
            }
        }
    }

    public static String convert(double d2, int i2) {
        if (d2 < -180.0d || d2 > 180.0d || Double.isNaN(d2)) {
            throw new IllegalArgumentException("coordinate=" + d2);
        }
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException("outputType=" + i2);
        }
        StringBuilder sb = new StringBuilder();
        if (d2 < 0.0d) {
            sb.append('-');
            d2 = -d2;
        }
        DecimalFormat decimalFormat = new DecimalFormat("###.#####");
        if (i2 == 1 || i2 == 2) {
            int iFloor = (int) Math.floor(d2);
            sb.append(iFloor);
            sb.append(':');
            d2 = (d2 - ((double) iFloor)) * 60.0d;
            if (i2 == 2) {
                int iFloor2 = (int) Math.floor(d2);
                sb.append(iFloor2);
                sb.append(':');
                d2 = (d2 - ((double) iFloor2)) * 60.0d;
            }
        }
        sb.append(decimalFormat.format(d2));
        return sb.toString();
    }

    public static void distanceBetween(double d2, double d3, double d4, double d5, float[] fArr) {
        if (fArr == null || fArr.length < 1) {
            throw new IllegalArgumentException("results is null or has length < 1");
        }
        computeDistanceAndBearing(d2, d3, d4, d5, fArr);
    }

    public float bearingTo(Location location) {
        float f2;
        synchronized (this.mResults) {
            double d2 = this.mLatitude;
            if (d2 != this.mLat1 || this.mLongitude != this.mLon1 || location.mLatitude != this.mLat2 || location.mLongitude != this.mLon2) {
                computeDistanceAndBearing(d2, this.mLongitude, location.mLatitude, location.mLongitude, this.mResults);
                this.mLat1 = this.mLatitude;
                this.mLon1 = this.mLongitude;
                this.mLat2 = location.mLatitude;
                this.mLon2 = location.mLongitude;
                float[] fArr = this.mResults;
                this.mDistance = fArr[0];
                this.mInitialBearing = fArr[1];
            }
            f2 = this.mInitialBearing;
        }
        return f2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public float distanceTo(Location location) {
        float f2;
        synchronized (this.mResults) {
            double d2 = this.mLatitude;
            if (d2 != this.mLat1 || this.mLongitude != this.mLon1 || location.mLatitude != this.mLat2 || location.mLongitude != this.mLon2) {
                computeDistanceAndBearing(d2, this.mLongitude, location.mLatitude, location.mLongitude, this.mResults);
                this.mLat1 = this.mLatitude;
                this.mLon1 = this.mLongitude;
                this.mLat2 = location.mLatitude;
                this.mLon2 = location.mLongitude;
                float[] fArr = this.mResults;
                this.mDistance = fArr[0];
                this.mInitialBearing = fArr[1];
            }
            f2 = this.mDistance;
        }
        return f2;
    }

    public void dump(Printer printer, String str) {
        printer.println(str + toString());
    }

    public float getAccuracy() {
        return this.mAccuracy;
    }

    public double getAltitude() {
        return this.mAltitude;
    }

    public float getBearing() {
        return this.mBearing;
    }

    public long getElapsedRealtimeNanos() {
        return this.mElapsedRealtimeNanos;
    }

    public Location getExtraLocation(String str) {
        Bundle bundle = this.mExtras;
        if (bundle == null) {
            return null;
        }
        Parcelable parcelable = bundle.getParcelable(str);
        if (parcelable instanceof Location) {
            return (Location) parcelable;
        }
        return null;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public double getLatitude() {
        return this.mLatitude;
    }

    public double getLongitude() {
        return this.mLongitude;
    }

    public String getProvider() {
        return this.mProvider;
    }

    public float getSpeed() {
        return this.mSpeed;
    }

    public long getTime() {
        return this.mTime;
    }

    public boolean hasAccuracy() {
        return this.mHasAccuracy;
    }

    public boolean hasAltitude() {
        return this.mHasAltitude;
    }

    public boolean hasBearing() {
        return this.mHasBearing;
    }

    public boolean hasSpeed() {
        return this.mHasSpeed;
    }

    public boolean isComplete() {
        return (this.mProvider == null || !this.mHasAccuracy || this.mTime == 0 || this.mElapsedRealtimeNanos == 0) ? false : true;
    }

    public boolean isFromMockProvider() {
        return this.mIsFromMockProvider;
    }

    public void makeComplete() {
        if (this.mProvider == null) {
            this.mProvider = "?";
        }
        if (!this.mHasAccuracy) {
            this.mHasAccuracy = true;
            this.mAccuracy = 100.0f;
        }
        if (this.mTime == 0) {
            this.mTime = System.currentTimeMillis();
        }
        if (this.mElapsedRealtimeNanos == 0) {
            this.mElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        }
    }

    public void removeAccuracy() {
        this.mAccuracy = 0.0f;
        this.mHasAccuracy = false;
    }

    public void removeAltitude() {
        this.mAltitude = 0.0d;
        this.mHasAltitude = false;
    }

    public void removeBearing() {
        this.mBearing = 0.0f;
        this.mHasBearing = false;
    }

    public void removeSpeed() {
        this.mSpeed = 0.0f;
        this.mHasSpeed = false;
    }

    public void reset() {
        this.mProvider = null;
        this.mTime = 0L;
        this.mElapsedRealtimeNanos = 0L;
        this.mLatitude = 0.0d;
        this.mLongitude = 0.0d;
        this.mHasAltitude = false;
        this.mAltitude = 0.0d;
        this.mHasSpeed = false;
        this.mSpeed = 0.0f;
        this.mHasBearing = false;
        this.mBearing = 0.0f;
        this.mHasAccuracy = false;
        this.mAccuracy = 0.0f;
        this.mExtras = null;
        this.mIsFromMockProvider = false;
    }

    public void set(Location location) {
        this.mProvider = location.mProvider;
        this.mTime = location.mTime;
        this.mElapsedRealtimeNanos = location.mElapsedRealtimeNanos;
        this.mLatitude = location.mLatitude;
        this.mLongitude = location.mLongitude;
        this.mHasAltitude = location.mHasAltitude;
        this.mAltitude = location.mAltitude;
        this.mHasSpeed = location.mHasSpeed;
        this.mSpeed = location.mSpeed;
        this.mHasBearing = location.mHasBearing;
        this.mBearing = location.mBearing;
        this.mHasAccuracy = location.mHasAccuracy;
        this.mAccuracy = location.mAccuracy;
        this.mExtras = location.mExtras == null ? null : new Bundle(location.mExtras);
        this.mIsFromMockProvider = location.mIsFromMockProvider;
    }

    public void setAccuracy(float f2) {
        this.mAccuracy = f2;
        this.mHasAccuracy = true;
    }

    public void setAltitude(double d2) {
        this.mAltitude = d2;
        this.mHasAltitude = true;
    }

    public void setBearing(float f2) {
        while (f2 < 0.0f) {
            f2 += 360.0f;
        }
        while (f2 >= 360.0f) {
            f2 -= 360.0f;
        }
        this.mBearing = f2;
        this.mHasBearing = true;
    }

    public void setElapsedRealtimeNanos(long j2) {
        this.mElapsedRealtimeNanos = j2;
    }

    public void setExtraLocation(String str, Location location) {
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        this.mExtras.putParcelable(str, location);
    }

    public void setExtras(Bundle bundle) {
        this.mExtras = bundle == null ? null : new Bundle(bundle);
    }

    public void setIsFromMockProvider(boolean z2) {
        this.mIsFromMockProvider = z2;
    }

    public void setLatitude(double d2) {
        this.mLatitude = d2;
    }

    public void setLongitude(double d2) {
        this.mLongitude = d2;
    }

    public void setProvider(String str) {
        this.mProvider = str;
    }

    public void setSpeed(float f2) {
        this.mSpeed = f2;
        this.mHasSpeed = true;
    }

    public void setTime(long j2) {
        this.mTime = j2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Location[");
        sb.append(this.mProvider);
        sb.append(String.format(" %.6f,%.6f", Double.valueOf(this.mLatitude), Double.valueOf(this.mLongitude)));
        if (this.mHasAccuracy) {
            sb.append(String.format(" acc=%.0f", Float.valueOf(this.mAccuracy)));
        } else {
            sb.append(" acc=???");
        }
        if (this.mTime == 0) {
            sb.append(" t=?!?");
        }
        if (this.mElapsedRealtimeNanos == 0) {
            sb.append(" et=?!?");
        } else {
            sb.append(" et=");
            TimeUtils.formatDuration(this.mElapsedRealtimeNanos / 1000000, sb);
        }
        if (this.mHasAltitude) {
            sb.append(" alt=");
            sb.append(this.mAltitude);
        }
        if (this.mHasSpeed) {
            sb.append(" vel=");
            sb.append(this.mSpeed);
        }
        if (this.mHasBearing) {
            sb.append(" bear=");
            sb.append(this.mBearing);
        }
        if (this.mIsFromMockProvider) {
            sb.append(" mock");
        }
        if (this.mExtras != null) {
            sb.append(" {");
            sb.append(this.mExtras);
            sb.append('}');
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mProvider);
        parcel.writeLong(this.mTime);
        parcel.writeLong(this.mElapsedRealtimeNanos);
        parcel.writeDouble(this.mLatitude);
        parcel.writeDouble(this.mLongitude);
        parcel.writeInt(this.mHasAltitude ? 1 : 0);
        parcel.writeDouble(this.mAltitude);
        parcel.writeInt(this.mHasSpeed ? 1 : 0);
        parcel.writeFloat(this.mSpeed);
        parcel.writeInt(this.mHasBearing ? 1 : 0);
        parcel.writeFloat(this.mBearing);
        parcel.writeInt(this.mHasAccuracy ? 1 : 0);
        parcel.writeFloat(this.mAccuracy);
        parcel.writeBundle(this.mExtras);
        parcel.writeInt(this.mIsFromMockProvider ? 1 : 0);
    }

    public static double convert(String str) {
        boolean z2;
        double d2;
        double d3;
        Objects.requireNonNull(str, "coordinate");
        boolean z3 = false;
        if (str.charAt(0) == '-') {
            str = str.substring(1);
            z2 = true;
        } else {
            z2 = false;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, ":");
        int iCountTokens = stringTokenizer.countTokens();
        if (iCountTokens >= 1) {
            try {
                String strNextToken = stringTokenizer.nextToken();
                if (iCountTokens == 1) {
                    double d4 = Double.parseDouble(strNextToken);
                    return z2 ? -d4 : d4;
                }
                String strNextToken2 = stringTokenizer.nextToken();
                int i2 = Integer.parseInt(strNextToken);
                if (stringTokenizer.hasMoreTokens()) {
                    d2 = Integer.parseInt(strNextToken2);
                    d3 = Double.parseDouble(stringTokenizer.nextToken());
                } else {
                    d2 = Double.parseDouble(strNextToken2);
                    d3 = 0.0d;
                }
                if (z2 && i2 == 180 && d2 == 0.0d && d3 == 0.0d) {
                    z3 = true;
                }
                double d5 = i2;
                if (d5 < 0.0d || (i2 > 179 && !z3)) {
                    throw new IllegalArgumentException("coordinate=" + str);
                }
                if (d2 < 0.0d || d2 > 59.0d) {
                    throw new IllegalArgumentException("coordinate=" + str);
                }
                if (d3 >= 0.0d && d3 <= 59.0d) {
                    double d6 = (((d5 * 3600.0d) + (d2 * 60.0d)) + d3) / 3600.0d;
                    return z2 ? -d6 : d6;
                }
                throw new IllegalArgumentException("coordinate=" + str);
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException("coordinate=" + str);
            }
        }
        throw new IllegalArgumentException("coordinate=" + str);
    }

    public Location(Location location) {
        this.mTime = 0L;
        this.mElapsedRealtimeNanos = 0L;
        this.mLatitude = 0.0d;
        this.mLongitude = 0.0d;
        this.mHasAltitude = false;
        this.mAltitude = 0.0d;
        this.mHasSpeed = false;
        this.mSpeed = 0.0f;
        this.mHasBearing = false;
        this.mBearing = 0.0f;
        this.mHasAccuracy = false;
        this.mAccuracy = 0.0f;
        this.mExtras = null;
        this.mIsFromMockProvider = false;
        this.mLat1 = 0.0d;
        this.mLon1 = 0.0d;
        this.mLat2 = 0.0d;
        this.mLon2 = 0.0d;
        this.mDistance = 0.0f;
        this.mInitialBearing = 0.0f;
        this.mResults = new float[2];
        set(location);
    }
}
