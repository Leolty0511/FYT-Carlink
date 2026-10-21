package android.graphics;

import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;

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
    public float f73x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f74y;

    public PointF() {
    }

    public PointF(float f2, float f3) {
        this.f73x = f2;
        this.f74y = f3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final boolean equals(float f2, float f3) {
        return this.f73x == f2 && this.f74y == f3;
    }

    public int hashCode() {
        float f2 = this.f73x;
        int iFloatToIntBits = (f2 != 0.0f ? Float.floatToIntBits(f2) : 0) * 31;
        float f3 = this.f74y;
        return iFloatToIntBits + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0);
    }

    public final float length() {
        return length(this.f73x, this.f74y);
    }

    public final void negate() {
        this.f73x = -this.f73x;
        this.f74y = -this.f74y;
    }

    public final void offset(float f2, float f3) {
        this.f73x += f2;
        this.f74y += f3;
    }

    public void readFromParcel(Parcel parcel) {
        this.f73x = parcel.readFloat();
        this.f74y = parcel.readFloat();
    }

    public final void set(float f2, float f3) {
        this.f73x = f2;
        this.f74y = f3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PointF(");
        sb.append(this.f73x);
        sb.append(", ");
        return m.i(sb, this.f74y, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.f73x);
        parcel.writeFloat(this.f74y);
    }

    public static float length(float f2, float f3) {
        return (float) Math.hypot(f2, f3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PointF pointF = (PointF) obj;
        return Float.compare(pointF.f73x, this.f73x) == 0 && Float.compare(pointF.f74y, this.f74y) == 0;
    }

    public final void set(PointF pointF) {
        this.f73x = pointF.f73x;
        this.f74y = pointF.f74y;
    }

    public PointF(Point point) {
        this.f73x = point.f71x;
        this.f74y = point.f72y;
    }
}
