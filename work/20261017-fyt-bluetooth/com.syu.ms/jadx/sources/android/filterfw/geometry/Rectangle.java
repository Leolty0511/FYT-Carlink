package android.filterfw.geometry;

/* JADX INFO: loaded from: classes.dex */
public class Rectangle extends Quad {
    public Rectangle() {
    }

    public static Rectangle fromCenterVerticalAxis(Point point, Point point2, Point point3) {
        Point pointScaledTo = point2.scaledTo(point3.f128y / 2.0f);
        Point pointScaledTo2 = point2.rotated90(1).scaledTo(point3.f127x / 2.0f);
        return new Rectangle(point.minus(pointScaledTo2).minus(pointScaledTo), point.plus(pointScaledTo2).minus(pointScaledTo), point.minus(pointScaledTo2).plus(pointScaledTo), point.plus(pointScaledTo2).plus(pointScaledTo));
    }

    public static Rectangle fromRotatedRect(Point point, Point point2, float f2) {
        return new Rectangle(new Point(point.f127x - (point2.f127x / 2.0f), point.f128y - (point2.f128y / 2.0f)).rotatedAround(point, f2), new Point(point.f127x + (point2.f127x / 2.0f), point.f128y - (point2.f128y / 2.0f)).rotatedAround(point, f2), new Point(point.f127x - (point2.f127x / 2.0f), point.f128y + (point2.f128y / 2.0f)).rotatedAround(point, f2), new Point(point.f127x + (point2.f127x / 2.0f), point.f128y + (point2.f128y / 2.0f)).rotatedAround(point, f2));
    }

    public Point center() {
        return this.f129p0.plus(this.f130p1).plus(this.p2).plus(this.p3).times(0.25f);
    }

    public float getHeight() {
        return this.p2.minus(this.f129p0).length();
    }

    public float getWidth() {
        return this.f130p1.minus(this.f129p0).length();
    }

    public Rectangle(float f2, float f3, float f4, float f5) {
        Point point = new Point(f2, f3);
        float f6 = f4 + f2;
        Point point2 = new Point(f6, f3);
        float f7 = f3 + f5;
        super(point, point2, new Point(f2, f7), new Point(f6, f7));
    }

    public Rectangle(Point point, Point point2) {
        super(point, point.plus(point2.f127x, 0.0f), point.plus(0.0f, point2.f128y), point.plus(point2.f127x, point2.f128y));
    }

    @Override // android.filterfw.geometry.Quad
    public Rectangle scaled(float f2) {
        return new Rectangle(this.f129p0.times(f2), this.f130p1.times(f2), this.p2.times(f2), this.p3.times(f2));
    }

    private Rectangle(Point point, Point point2, Point point3, Point point4) {
        super(point, point2, point3, point4);
    }

    @Override // android.filterfw.geometry.Quad
    public Rectangle scaled(float f2, float f3) {
        return new Rectangle(this.f129p0.mult(f2, f3), this.f130p1.mult(f2, f3), this.p2.mult(f2, f3), this.p3.mult(f2, f3));
    }
}
