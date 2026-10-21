package android.graphics;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class Point implements Parcelable {
    public static final Parcelable.Creator<Point> CREATOR = new Parcelable.Creator<Point>() { // from class: android.graphics.Point.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Point createFromParcel(Parcel parcel) {
            Point point = new Point();
            point.readFromParcel(parcel);
            return point;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Point[] newArray(int i2) {
            return new Point[i2];
        }
    };

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f137x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f138y;

    public Point() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final boolean equals(int i2, int i3) {
        return this.f137x == i2 && this.f138y == i3;
    }

    public int hashCode() {
        return (this.f137x * 31) + this.f138y;
    }

    public final void negate() {
        this.f137x = -this.f137x;
        this.f138y = -this.f138y;
    }

    public final void offset(int i2, int i3) {
        this.f137x += i2;
        this.f138y += i3;
    }

    public void readFromParcel(Parcel parcel) {
        this.f137x = parcel.readInt();
        this.f138y = parcel.readInt();
    }

    public void set(int i2, int i3) {
        this.f137x = i2;
        this.f138y = i3;
    }

    public String toString() {
        return "Point(" + this.f137x + ", " + this.f138y + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f137x);
        parcel.writeInt(this.f138y);
    }

    public Point(int i2, int i3) {
        this.f137x = i2;
        this.f138y = i3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Point point = (Point) obj;
        return this.f137x == point.f137x && this.f138y == point.f138y;
    }

    public Point(Point point) {
        this.f137x = point.f137x;
        this.f138y = point.f138y;
    }
}
