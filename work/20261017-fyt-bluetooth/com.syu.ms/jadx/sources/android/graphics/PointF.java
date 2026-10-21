package android.graphics;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.FloatMath;

/* JADX INFO: loaded from: classes.dex */
public class PointF implements Parcelable {
    public static final Parcelable.Creator<PointF> CREATOR = new Parcelable.Creator<PointF>() { // from class: android.graphics.PointF.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PointF createFromParcel(Parcel parcel) {
            PointF pointF = new PointF();
            pointF.readFromParcel(parcel);
            return pointF;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PointF[] newArray(int i2) {
            return new PointF[i2];
        }
    };

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f139x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f140y;

    public PointF() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final boolean equals(float f2, float f3) {
        return this.f139x == f2 && this.f140y == f3;
    }

    public int hashCode() {
        float f2 = this.f139x;
        int iFloatToIntBits = (f2 != 0.0f ? Float.floatToIntBits(f2) : 0) * 31;
        float f3 = this.f140y;
        return iFloatToIntBits + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0);
    }

    public final float length() {
        return length(this.f139x, this.f140y);
    }

    public final void negate() {
        this.f139x = -this.f139x;
        this.f140y = -this.f140y;
    }

    public final void offset(float f2, float f3) {
        this.f139x += f2;
        this.f140y += f3;
    }

    public void readFromParcel(Parcel parcel) {
        this.f139x = parcel.readFloat();
        this.f140y = parcel.readFloat();
    }

    public final void set(float f2, float f3) {
        this.f139x = f2;
        this.f140y = f3;
    }

    public String toString() {
        return "PointF(" + this.f139x + ", " + this.f140y + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.f139x);
        parcel.writeFloat(this.f140y);
    }

    public PointF(float f2, float f3) {
        this.f139x = f2;
        this.f140y = f3;
    }

    public static float length(float f2, float f3) {
        return FloatMath.sqrt((f2 * f2) + (f3 * f3));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PointF pointF = (PointF) obj;
        return Float.compare(pointF.f139x, this.f139x) == 0 && Float.compare(pointF.f140y, this.f140y) == 0;
    }

    public final void set(PointF pointF) {
        this.f139x = pointF.f139x;
        this.f140y = pointF.f140y;
    }

    public PointF(Point point) {
        this.f139x = point.f137x;
        this.f140y = point.f138y;
    }
}
