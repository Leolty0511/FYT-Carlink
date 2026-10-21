package android.graphics;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.PrintWriter;

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
    public int f71x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f72y;

    public Point() {
    }

    public Point(int i2, int i3) {
        this.f71x = i2;
        this.f72y = i3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final boolean equals(int i2, int i3) {
        return this.f71x == i2 && this.f72y == i3;
    }

    public int hashCode() {
        return (this.f71x * 31) + this.f72y;
    }

    public final void negate() {
        this.f71x = -this.f71x;
        this.f72y = -this.f72y;
    }

    public final void offset(int i2, int i3) {
        this.f71x += i2;
        this.f72y += i3;
    }

    public void printShortString(PrintWriter printWriter) {
        printWriter.print("[");
        printWriter.print(this.f71x);
        printWriter.print(",");
        printWriter.print(this.f72y);
        printWriter.print("]");
    }

    public void readFromParcel(Parcel parcel) {
        this.f71x = parcel.readInt();
        this.f72y = parcel.readInt();
    }

    public void set(int i2, int i3) {
        this.f71x = i2;
        this.f72y = i3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Point(");
        sb.append(this.f71x);
        sb.append(", ");
        return android.accessibilityservice.c.m(sb, this.f72y, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f71x);
        parcel.writeInt(this.f72y);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Point point = (Point) obj;
        return this.f71x == point.f71x && this.f72y == point.f72y;
    }

    public Point(Point point) {
        this.f71x = point.f71x;
        this.f72y = point.f72y;
    }
}
