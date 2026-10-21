package android.filterfw.geometry;

import android.app.m;

/* JADX INFO: loaded from: classes.dex */
public class Point {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f60x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f61y;

    public Point() {
    }

    public boolean IsInUnitRange() {
        float f2 = this.f60x;
        if (f2 >= 0.0f && f2 <= 1.0f) {
            float f3 = this.f61y;
            if (f3 >= 0.0f && f3 <= 1.0f) {
                return true;
            }
        }
        return false;
    }

    public float distanceTo(Point point) {
        return point.minus(this).length();
    }

    public float length() {
        return (float) Math.hypot(this.f60x, this.f61y);
    }

    public Point minus(float f2, float f3) {
        return new Point(this.f60x - f2, this.f61y - f3);
    }

    public Point mult(float f2, float f3) {
        return new Point(this.f60x * f2, this.f61y * f3);
    }

    public Point normalize() {
        return scaledTo(1.0f);
    }

    public Point plus(float f2, float f3) {
        return new Point(this.f60x + f2, this.f61y + f3);
    }

    public Point rotated(float f2) {
        double d2 = f2;
        return new Point((float) ((Math.cos(d2) * ((double) this.f60x)) - (Math.sin(d2) * ((double) this.f61y))), (float) ((Math.cos(d2) * ((double) this.f61y)) + (Math.sin(d2) * ((double) this.f60x))));
    }

    public Point rotated90(int i2) {
        float f2 = this.f60x;
        float f3 = this.f61y;
        int i3 = 0;
        while (i3 < i2) {
            i3++;
            float f4 = f3;
            f3 = -f2;
            f2 = f4;
        }
        return new Point(f2, f3);
    }

    public Point rotatedAround(Point point, float f2) {
        return minus(point).rotated(f2).plus(point);
    }

    public Point scaledTo(float f2) {
        return times(f2 / length());
    }

    public void set(float f2, float f3) {
        this.f60x = f2;
        this.f61y = f3;
    }

    public Point times(float f2) {
        return new Point(this.f60x * f2, this.f61y * f2);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(this.f60x);
        sb.append(", ");
        return m.i(sb, this.f61y, ")");
    }

    public Point(float f2, float f3) {
        this.f60x = f2;
        this.f61y = f3;
    }

    public Point minus(Point point) {
        return minus(point.f60x, point.f61y);
    }

    public Point plus(Point point) {
        return plus(point.f60x, point.f61y);
    }
}
