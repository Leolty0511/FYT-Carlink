package android.filterfw.geometry;

/* JADX INFO: loaded from: classes.dex */
public class Point {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f127x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f128y;

    public Point() {
    }

    public boolean IsInUnitRange() {
        float f2 = this.f127x;
        if (f2 >= 0.0f && f2 <= 1.0f) {
            float f3 = this.f128y;
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
        float f2 = this.f127x;
        float f3 = this.f128y;
        return (float) Math.sqrt((f2 * f2) + (f3 * f3));
    }

    public Point minus(float f2, float f3) {
        return new Point(this.f127x - f2, this.f128y - f3);
    }

    public Point mult(float f2, float f3) {
        return new Point(this.f127x * f2, this.f128y * f3);
    }

    public Point normalize() {
        return scaledTo(1.0f);
    }

    public Point plus(float f2, float f3) {
        return new Point(this.f127x + f2, this.f128y + f3);
    }

    public Point rotated(float f2) {
        double d2 = f2;
        return new Point((float) ((Math.cos(d2) * ((double) this.f127x)) - (Math.sin(d2) * ((double) this.f128y))), (float) ((Math.sin(d2) * ((double) this.f127x)) + (Math.cos(d2) * ((double) this.f128y))));
    }

    public Point rotated90(int i2) {
        float f2 = this.f127x;
        float f3 = this.f128y;
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
        this.f127x = f2;
        this.f128y = f3;
    }

    public Point times(float f2) {
        return new Point(this.f127x * f2, this.f128y * f2);
    }

    public String toString() {
        return "(" + this.f127x + ", " + this.f128y + ")";
    }

    public Point(float f2, float f3) {
        this.f127x = f2;
        this.f128y = f3;
    }

    public Point minus(Point point) {
        return minus(point.f127x, point.f128y);
    }

    public Point plus(Point point) {
        return plus(point.f127x, point.f128y);
    }
}
