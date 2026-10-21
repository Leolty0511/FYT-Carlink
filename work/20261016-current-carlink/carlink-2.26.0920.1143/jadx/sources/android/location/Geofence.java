package android.location;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class Geofence implements Parcelable {
    public static final Parcelable.Creator<Geofence> CREATOR = new Parcelable.Creator<Geofence>() { // from class: android.location.Geofence.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Geofence createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            double d2 = parcel.readDouble();
            double d3 = parcel.readDouble();
            float f2 = parcel.readFloat();
            Geofence.checkType(i2);
            return Geofence.createCircle(d2, d3, f2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Geofence[] newArray(int i2) {
            return new Geofence[i2];
        }
    };
    public static final int TYPE_HORIZONTAL_CIRCLE = 1;
    private final double mLatitude;
    private final double mLongitude;
    private final float mRadius;
    private final int mType;

    private Geofence(double d2, double d3, float f2) {
        checkRadius(f2);
        checkLatLong(d2, d3);
        this.mType = 1;
        this.mLatitude = d2;
        this.mLongitude = d3;
        this.mRadius = f2;
    }

    private static void checkLatLong(double d2, double d3) {
        if (d2 > 90.0d || d2 < -90.0d) {
            throw new IllegalArgumentException("invalid latitude: " + d2);
        }
        if (d3 > 180.0d || d3 < -180.0d) {
            throw new IllegalArgumentException("invalid longitude: " + d3);
        }
    }

    private static void checkRadius(float f2) {
        if (f2 > 0.0f) {
            return;
        }
        throw new IllegalArgumentException("invalid radius: " + f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkType(int i2) {
        if (i2 != 1) {
            throw new IllegalArgumentException(c.d("invalid type: ", i2));
        }
    }

    public static Geofence createCircle(double d2, double d3, float f2) {
        return new Geofence(d2, d3, f2);
    }

    private static String typeToString(int i2) {
        if (i2 == 1) {
            return "CIRCLE";
        }
        checkType(i2);
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Geofence)) {
            return false;
        }
        Geofence geofence = (Geofence) obj;
        return this.mRadius == geofence.mRadius && this.mLatitude == geofence.mLatitude && this.mLongitude == geofence.mLongitude && this.mType == geofence.mType;
    }

    public double getLatitude() {
        return this.mLatitude;
    }

    public double getLongitude() {
        return this.mLongitude;
    }

    public float getRadius() {
        return this.mRadius;
    }

    public int getType() {
        return this.mType;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.mLatitude);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.mLongitude);
        return ((Float.floatToIntBits(this.mRadius) + ((((((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) + 31) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)))) * 31)) * 31) + this.mType;
    }

    public String toString() {
        return String.format("Geofence[%s %.6f, %.6f %.0fm]", typeToString(this.mType), Double.valueOf(this.mLatitude), Double.valueOf(this.mLongitude), Float.valueOf(this.mRadius));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mType);
        parcel.writeDouble(this.mLatitude);
        parcel.writeDouble(this.mLongitude);
        parcel.writeFloat(this.mRadius);
    }
}
