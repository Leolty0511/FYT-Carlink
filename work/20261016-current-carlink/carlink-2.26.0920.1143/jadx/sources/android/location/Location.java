package android.location;

import android.accessibilityservice.c;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.provider.SettingsStringUtil;
import android.util.Printer;
import android.util.TimeUtils;
import com.google.common.base.Ascii;
import java.text.DecimalFormat;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class Location implements Parcelable {
    public static final String EXTRA_COARSE_LOCATION = "coarseLocation";
    public static final String EXTRA_NO_GPS_LOCATION = "noGPSLocation";
    public static final int FORMAT_DEGREES = 0;
    public static final int FORMAT_MINUTES = 1;
    public static final int FORMAT_SECONDS = 2;
    private static final int HAS_ALTITUDE_MASK = 1;
    private static final int HAS_BEARING_ACCURACY_MASK = 128;
    private static final int HAS_BEARING_MASK = 4;
    private static final int HAS_HORIZONTAL_ACCURACY_MASK = 8;
    private static final int HAS_MOCK_PROVIDER_MASK = 16;
    private static final int HAS_SPEED_ACCURACY_MASK = 64;
    private static final int HAS_SPEED_MASK = 2;
    private static final int HAS_VERTICAL_ACCURACY_MASK = 32;
    private String mProvider;
    private static ThreadLocal<BearingDistanceCache> sBearingDistanceCache = new ThreadLocal<BearingDistanceCache>() { // from class: android.location.Location.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public BearingDistanceCache initialValue() {
            return new BearingDistanceCache();
        }
    };
    public static final Parcelable.Creator<Location> CREATOR = new Parcelable.Creator<Location>() { // from class: android.location.Location.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Location createFromParcel(Parcel parcel) {
            Location location = new Location(parcel.readString());
            location.mTime = parcel.readLong();
            location.mElapsedRealtimeNanos = parcel.readLong();
            location.mFieldsMask = parcel.readByte();
            location.mLatitude = parcel.readDouble();
            location.mLongitude = parcel.readDouble();
            location.mAltitude = parcel.readDouble();
            location.mSpeed = parcel.readFloat();
            location.mBearing = parcel.readFloat();
            location.mHorizontalAccuracyMeters = parcel.readFloat();
            location.mVerticalAccuracyMeters = parcel.readFloat();
            location.mSpeedAccuracyMetersPerSecond = parcel.readFloat();
            location.mBearingAccuracyDegrees = parcel.readFloat();
            location.mExtras = Bundle.setDefusable(parcel.readBundle(), true);
            return location;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Location[] newArray(int i2) {
            return new Location[i2];
        }
    };
    private long mTime = 0;
    private long mElapsedRealtimeNanos = 0;
    private double mLatitude = 0.0d;
    private double mLongitude = 0.0d;
    private double mAltitude = 0.0d;
    private float mSpeed = 0.0f;
    private float mBearing = 0.0f;
    private float mHorizontalAccuracyMeters = 0.0f;
    private float mVerticalAccuracyMeters = 0.0f;
    private float mSpeedAccuracyMetersPerSecond = 0.0f;
    private float mBearingAccuracyDegrees = 0.0f;
    private Bundle mExtras = null;
    private byte mFieldsMask = 0;

    public static class BearingDistanceCache {
        private float mDistance;
        private float mFinalBearing;
        private float mInitialBearing;
        private double mLat1;
        private double mLat2;
        private double mLon1;
        private double mLon2;

        private BearingDistanceCache() {
            this.mLat1 = 0.0d;
            this.mLon1 = 0.0d;
            this.mLat2 = 0.0d;
            this.mLon2 = 0.0d;
            this.mDistance = 0.0f;
            this.mInitialBearing = 0.0f;
            this.mFinalBearing = 0.0f;
        }
    }

    public Location(String str) {
        this.mProvider = str;
    }

    private static void computeDistanceAndBearing(double d2, double d3, double d4, double d5, BearingDistanceCache bearingDistanceCache) {
        double d6;
        double d7;
        double d8 = d2 * 0.017453292519943295d;
        double d9 = d4 * 0.017453292519943295d;
        double d10 = d3 * 0.017453292519943295d;
        double d11 = 0.017453292519943295d * d5;
        double d12 = d11 - d10;
        double dAtan = Math.atan(Math.tan(d8) * 0.996647189328169d);
        double dAtan2 = Math.atan(Math.tan(d9) * 0.996647189328169d);
        double dCos = Math.cos(dAtan);
        double dCos2 = Math.cos(dAtan2);
        double dSin = Math.sin(dAtan);
        double dSin2 = Math.sin(dAtan2);
        double d13 = dCos * dCos2;
        double d14 = dSin * dSin2;
        double dAtan3 = 0.0d;
        double d15 = 0.0d;
        double dCos3 = 0.0d;
        double d16 = 0.0d;
        double dSin3 = 0.0d;
        int i2 = 0;
        double d17 = d12;
        while (i2 < 20) {
            dCos3 = Math.cos(d17);
            dSin3 = Math.sin(d17);
            double d18 = dCos2 * dSin3;
            double d19 = (dCos * dSin2) - ((dSin * dCos2) * dCos3);
            d7 = d10;
            double dSqrt = Math.sqrt((d19 * d19) + (d18 * d18));
            d6 = d9;
            double d20 = (d13 * dCos3) + d14;
            dAtan3 = Math.atan2(dSqrt, d20);
            double d21 = dSqrt == 0.0d ? 0.0d : (d13 * dSin3) / dSqrt;
            double d22 = 1.0d - (d21 * d21);
            double d23 = d22 == 0.0d ? 0.0d : d20 - ((d14 * 2.0d) / d22);
            double d24 = 0.006739496756586903d * d22;
            double d25 = ((((((320.0d - (175.0d * d24)) * d24) - 768.0d) * d24) + 4096.0d) * (d24 / 16384.0d)) + 1.0d;
            double d26 = (((((74.0d - (47.0d * d24)) * d24) - 128.0d) * d24) + 256.0d) * (d24 / 1024.0d);
            double d27 = (((4.0d - (d22 * 3.0d)) * 0.0033528106718309896d) + 4.0d) * 2.0955066698943685E-4d * d22;
            double d28 = d23 * d23;
            double d29 = ((((((d28 * 2.0d) - 1.0d) * d20) - (((d28 * 4.0d) - 3.0d) * ((((dSqrt * 4.0d) * dSqrt) - 3.0d) * ((d26 / 6.0d) * d23)))) * (d26 / 4.0d)) + d23) * d26 * dSqrt;
            double d30 = ((((((((2.0d * d23) * d23) - 1.0d) * d27 * d20) + d23) * dSqrt * d27) + dAtan3) * (1.0d - d27) * 0.0033528106718309896d * d21) + d12;
            if (Math.abs((d30 - d17) / d30) < 1.0E-12d) {
                d15 = d29;
                d16 = d25;
                bearingDistanceCache.mDistance = (float) (6356752.3142d * d16 * (dAtan3 - d15));
                double d31 = dSin2 * dCos;
                bearingDistanceCache.mInitialBearing = (float) (((double) ((float) Math.atan2(dCos2 * dSin3, d31 - ((dSin * dCos2) * dCos3)))) * 57.29577951308232d);
                bearingDistanceCache.mFinalBearing = (float) (((double) ((float) Math.atan2(dCos * dSin3, (d31 * dCos3) + ((-dSin) * dCos2)))) * 57.29577951308232d);
                bearingDistanceCache.mLat1 = d8;
                bearingDistanceCache.mLat2 = d6;
                bearingDistanceCache.mLon1 = d7;
                bearingDistanceCache.mLon2 = d11;
            }
            i2++;
            d10 = d7;
            d9 = d6;
            d17 = d30;
            d15 = d29;
            d16 = d25;
        }
        d6 = d9;
        d7 = d10;
        bearingDistanceCache.mDistance = (float) (6356752.3142d * d16 * (dAtan3 - d15));
        double d32 = dSin2 * dCos;
        bearingDistanceCache.mInitialBearing = (float) (((double) ((float) Math.atan2(dCos2 * dSin3, d32 - ((dSin * dCos2) * dCos3)))) * 57.29577951308232d);
        bearingDistanceCache.mFinalBearing = (float) (((double) ((float) Math.atan2(dCos * dSin3, (d32 * dCos3) + ((-dSin) * dCos2)))) * 57.29577951308232d);
        bearingDistanceCache.mLat1 = d8;
        bearingDistanceCache.mLat2 = d6;
        bearingDistanceCache.mLon1 = d7;
        bearingDistanceCache.mLon2 = d11;
    }

    public static String convert(double d2, int i2) {
        if (d2 < -180.0d || d2 > 180.0d || Double.isNaN(d2)) {
            throw new IllegalArgumentException("coordinate=" + d2);
        }
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException(c.d("outputType=", i2));
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
        BearingDistanceCache bearingDistanceCache = sBearingDistanceCache.get();
        computeDistanceAndBearing(d2, d3, d4, d5, bearingDistanceCache);
        fArr[0] = bearingDistanceCache.mDistance;
        if (fArr.length > 1) {
            fArr[1] = bearingDistanceCache.mInitialBearing;
            if (fArr.length > 2) {
                fArr[2] = bearingDistanceCache.mFinalBearing;
            }
        }
    }

    public float bearingTo(Location location) {
        BearingDistanceCache bearingDistanceCache = sBearingDistanceCache.get();
        if (this.mLatitude != bearingDistanceCache.mLat1 || this.mLongitude != bearingDistanceCache.mLon1 || location.mLatitude != bearingDistanceCache.mLat2 || location.mLongitude != bearingDistanceCache.mLon2) {
            computeDistanceAndBearing(this.mLatitude, this.mLongitude, location.mLatitude, location.mLongitude, bearingDistanceCache);
        }
        return bearingDistanceCache.mInitialBearing;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public float distanceTo(Location location) {
        BearingDistanceCache bearingDistanceCache = sBearingDistanceCache.get();
        if (this.mLatitude != bearingDistanceCache.mLat1 || this.mLongitude != bearingDistanceCache.mLon1 || location.mLatitude != bearingDistanceCache.mLat2 || location.mLongitude != bearingDistanceCache.mLon2) {
            computeDistanceAndBearing(this.mLatitude, this.mLongitude, location.mLatitude, location.mLongitude, bearingDistanceCache);
        }
        return bearingDistanceCache.mDistance;
    }

    public void dump(Printer printer, String str) {
        StringBuilder sbR = c.r(str);
        sbR.append(toString());
        printer.println(sbR.toString());
    }

    public float getAccuracy() {
        return this.mHorizontalAccuracyMeters;
    }

    public double getAltitude() {
        return this.mAltitude;
    }

    public float getBearing() {
        return this.mBearing;
    }

    public float getBearingAccuracyDegrees() {
        return this.mBearingAccuracyDegrees;
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

    public float getSpeedAccuracyMetersPerSecond() {
        return this.mSpeedAccuracyMetersPerSecond;
    }

    public long getTime() {
        return this.mTime;
    }

    public float getVerticalAccuracyMeters() {
        return this.mVerticalAccuracyMeters;
    }

    public boolean hasAccuracy() {
        return (this.mFieldsMask & 8) != 0;
    }

    public boolean hasAltitude() {
        return (this.mFieldsMask & 1) != 0;
    }

    public boolean hasBearing() {
        return (this.mFieldsMask & 4) != 0;
    }

    public boolean hasBearingAccuracy() {
        return (this.mFieldsMask & 128) != 0;
    }

    public boolean hasSpeed() {
        return (this.mFieldsMask & 2) != 0;
    }

    public boolean hasSpeedAccuracy() {
        return (this.mFieldsMask & 64) != 0;
    }

    public boolean hasVerticalAccuracy() {
        return (this.mFieldsMask & 32) != 0;
    }

    public boolean isComplete() {
        return (this.mProvider == null || !hasAccuracy() || this.mTime == 0 || this.mElapsedRealtimeNanos == 0) ? false : true;
    }

    public boolean isFromMockProvider() {
        return (this.mFieldsMask & 16) != 0;
    }

    public void makeComplete() {
        if (this.mProvider == null) {
            this.mProvider = "?";
        }
        if (!hasAccuracy()) {
            this.mFieldsMask = (byte) (this.mFieldsMask | 8);
            this.mHorizontalAccuracyMeters = 100.0f;
        }
        if (this.mTime == 0) {
            this.mTime = System.currentTimeMillis();
        }
        if (this.mElapsedRealtimeNanos == 0) {
            this.mElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        }
    }

    @Deprecated
    public void removeAccuracy() {
        this.mHorizontalAccuracyMeters = 0.0f;
        this.mFieldsMask = (byte) (this.mFieldsMask & (-9));
    }

    @Deprecated
    public void removeAltitude() {
        this.mAltitude = 0.0d;
        this.mFieldsMask = (byte) (this.mFieldsMask & (-2));
    }

    @Deprecated
    public void removeBearing() {
        this.mBearing = 0.0f;
        this.mFieldsMask = (byte) (this.mFieldsMask & (-5));
    }

    @Deprecated
    public void removeBearingAccuracy() {
        this.mBearingAccuracyDegrees = 0.0f;
        this.mFieldsMask = (byte) (this.mFieldsMask & Ascii.DEL);
    }

    @Deprecated
    public void removeSpeed() {
        this.mSpeed = 0.0f;
        this.mFieldsMask = (byte) (this.mFieldsMask & (-3));
    }

    @Deprecated
    public void removeSpeedAccuracy() {
        this.mSpeedAccuracyMetersPerSecond = 0.0f;
        this.mFieldsMask = (byte) (this.mFieldsMask & (-65));
    }

    @Deprecated
    public void removeVerticalAccuracy() {
        this.mVerticalAccuracyMeters = 0.0f;
        this.mFieldsMask = (byte) (this.mFieldsMask & (-33));
    }

    public void reset() {
        this.mProvider = null;
        this.mTime = 0L;
        this.mElapsedRealtimeNanos = 0L;
        this.mFieldsMask = (byte) 0;
        this.mLatitude = 0.0d;
        this.mLongitude = 0.0d;
        this.mAltitude = 0.0d;
        this.mSpeed = 0.0f;
        this.mBearing = 0.0f;
        this.mHorizontalAccuracyMeters = 0.0f;
        this.mVerticalAccuracyMeters = 0.0f;
        this.mSpeedAccuracyMetersPerSecond = 0.0f;
        this.mBearingAccuracyDegrees = 0.0f;
        this.mExtras = null;
    }

    public void set(Location location) {
        this.mProvider = location.mProvider;
        this.mTime = location.mTime;
        this.mElapsedRealtimeNanos = location.mElapsedRealtimeNanos;
        this.mFieldsMask = location.mFieldsMask;
        this.mLatitude = location.mLatitude;
        this.mLongitude = location.mLongitude;
        this.mAltitude = location.mAltitude;
        this.mSpeed = location.mSpeed;
        this.mBearing = location.mBearing;
        this.mHorizontalAccuracyMeters = location.mHorizontalAccuracyMeters;
        this.mVerticalAccuracyMeters = location.mVerticalAccuracyMeters;
        this.mSpeedAccuracyMetersPerSecond = location.mSpeedAccuracyMetersPerSecond;
        this.mBearingAccuracyDegrees = location.mBearingAccuracyDegrees;
        this.mExtras = location.mExtras == null ? null : new Bundle(location.mExtras);
    }

    public void setAccuracy(float f2) {
        this.mHorizontalAccuracyMeters = f2;
        this.mFieldsMask = (byte) (this.mFieldsMask | 8);
    }

    public void setAltitude(double d2) {
        this.mAltitude = d2;
        this.mFieldsMask = (byte) (this.mFieldsMask | 1);
    }

    public void setBearing(float f2) {
        while (f2 < 0.0f) {
            f2 += 360.0f;
        }
        while (f2 >= 360.0f) {
            f2 -= 360.0f;
        }
        this.mBearing = f2;
        this.mFieldsMask = (byte) (this.mFieldsMask | 4);
    }

    public void setBearingAccuracyDegrees(float f2) {
        this.mBearingAccuracyDegrees = f2;
        this.mFieldsMask = (byte) (this.mFieldsMask | 128);
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
        if (z2) {
            this.mFieldsMask = (byte) (this.mFieldsMask | 16);
        } else {
            this.mFieldsMask = (byte) (this.mFieldsMask & (-17));
        }
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
        this.mFieldsMask = (byte) (this.mFieldsMask | 2);
    }

    public void setSpeedAccuracyMetersPerSecond(float f2) {
        this.mSpeedAccuracyMetersPerSecond = f2;
        this.mFieldsMask = (byte) (this.mFieldsMask | 64);
    }

    public void setTime(long j2) {
        this.mTime = j2;
    }

    public void setVerticalAccuracyMeters(float f2) {
        this.mVerticalAccuracyMeters = f2;
        this.mFieldsMask = (byte) (this.mFieldsMask | 32);
    }

    public String toString() {
        StringBuilder sbR = c.r("Location[");
        sbR.append(this.mProvider);
        sbR.append(String.format(" %.6f,%.6f", Double.valueOf(this.mLatitude), Double.valueOf(this.mLongitude)));
        if (hasAccuracy()) {
            sbR.append(String.format(" hAcc=%.0f", Float.valueOf(this.mHorizontalAccuracyMeters)));
        } else {
            sbR.append(" hAcc=???");
        }
        if (this.mTime == 0) {
            sbR.append(" t=?!?");
        }
        if (this.mElapsedRealtimeNanos == 0) {
            sbR.append(" et=?!?");
        } else {
            sbR.append(" et=");
            TimeUtils.formatDuration(this.mElapsedRealtimeNanos / TimeUtils.NANOS_PER_MS, sbR);
        }
        if (hasAltitude()) {
            sbR.append(" alt=");
            sbR.append(this.mAltitude);
        }
        if (hasSpeed()) {
            sbR.append(" vel=");
            sbR.append(this.mSpeed);
        }
        if (hasBearing()) {
            sbR.append(" bear=");
            sbR.append(this.mBearing);
        }
        if (hasVerticalAccuracy()) {
            sbR.append(String.format(" vAcc=%.0f", Float.valueOf(this.mVerticalAccuracyMeters)));
        } else {
            sbR.append(" vAcc=???");
        }
        if (hasSpeedAccuracy()) {
            sbR.append(String.format(" sAcc=%.0f", Float.valueOf(this.mSpeedAccuracyMetersPerSecond)));
        } else {
            sbR.append(" sAcc=???");
        }
        if (hasBearingAccuracy()) {
            sbR.append(String.format(" bAcc=%.0f", Float.valueOf(this.mBearingAccuracyDegrees)));
        } else {
            sbR.append(" bAcc=???");
        }
        if (isFromMockProvider()) {
            sbR.append(" mock");
        }
        if (this.mExtras != null) {
            sbR.append(" {");
            sbR.append(this.mExtras);
            sbR.append('}');
        }
        sbR.append(']');
        return sbR.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mProvider);
        parcel.writeLong(this.mTime);
        parcel.writeLong(this.mElapsedRealtimeNanos);
        parcel.writeByte(this.mFieldsMask);
        parcel.writeDouble(this.mLatitude);
        parcel.writeDouble(this.mLongitude);
        parcel.writeDouble(this.mAltitude);
        parcel.writeFloat(this.mSpeed);
        parcel.writeFloat(this.mBearing);
        parcel.writeFloat(this.mHorizontalAccuracyMeters);
        parcel.writeFloat(this.mVerticalAccuracyMeters);
        parcel.writeFloat(this.mSpeedAccuracyMetersPerSecond);
        parcel.writeFloat(this.mBearingAccuracyDegrees);
        parcel.writeBundle(this.mExtras);
    }

    public Location(Location location) {
        set(location);
    }

    public static double convert(String str) {
        boolean z2;
        double d2;
        boolean z3;
        double d3;
        String strSubstring = str;
        if (strSubstring != null) {
            boolean z4 = false;
            if (strSubstring.charAt(0) == '-') {
                strSubstring = strSubstring.substring(1);
                z2 = true;
            } else {
                z2 = false;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(strSubstring, SettingsStringUtil.DELIMITER);
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
                        z3 = true;
                    } else {
                        d2 = Double.parseDouble(strNextToken2);
                        z3 = false;
                        d3 = 0.0d;
                    }
                    if (z2 && i2 == 180 && d2 == 0.0d && d3 == 0.0d) {
                        z4 = true;
                    }
                    double d5 = i2;
                    if (d5 < 0.0d || (i2 > 179 && !z4)) {
                        throw new IllegalArgumentException("coordinate=" + strSubstring);
                    }
                    if (d2 < 0.0d || d2 >= 60.0d || (z3 && d2 > 59.0d)) {
                        throw new IllegalArgumentException("coordinate=" + strSubstring);
                    }
                    if (d3 >= 0.0d && d3 < 60.0d) {
                        double d6 = (((d2 * 60.0d) + (d5 * 3600.0d)) + d3) / 3600.0d;
                        return z2 ? -d6 : d6;
                    }
                    throw new IllegalArgumentException("coordinate=" + strSubstring);
                } catch (NumberFormatException unused) {
                    throw new IllegalArgumentException(c.j("coordinate=", strSubstring));
                }
            }
            throw new IllegalArgumentException(c.j("coordinate=", strSubstring));
        }
        throw new NullPointerException("coordinate");
    }
}
