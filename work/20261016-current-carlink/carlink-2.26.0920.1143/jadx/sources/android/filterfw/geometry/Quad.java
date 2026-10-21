package android.filterfw.geometry;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Quad {
    public Point p0;
    public Point p1;
    public Point p2;
    public Point p3;

    public Quad() {
    }

    public boolean IsInUnitRange() {
        return this.p0.IsInUnitRange() && this.p1.IsInUnitRange() && this.p2.IsInUnitRange() && this.p3.IsInUnitRange();
    }

    public Rectangle boundingBox() {
        List listAsList = Arrays.asList(Float.valueOf(this.p0.f60x), Float.valueOf(this.p1.f60x), Float.valueOf(this.p2.f60x), Float.valueOf(this.p3.f60x));
        List listAsList2 = Arrays.asList(Float.valueOf(this.p0.f61y), Float.valueOf(this.p1.f61y), Float.valueOf(this.p2.f61y), Float.valueOf(this.p3.f61y));
        float fFloatValue = ((Float) Collections.min(listAsList)).floatValue();
        float fFloatValue2 = ((Float) Collections.min(listAsList2)).floatValue();
        return new Rectangle(fFloatValue, fFloatValue2, ((Float) Collections.max(listAsList)).floatValue() - fFloatValue, ((Float) Collections.max(listAsList2)).floatValue() - fFloatValue2);
    }

    public float getBoundingHeight() {
        List listAsList = Arrays.asList(Float.valueOf(this.p0.f61y), Float.valueOf(this.p1.f61y), Float.valueOf(this.p2.f61y), Float.valueOf(this.p3.f61y));
        return ((Float) Collections.max(listAsList)).floatValue() - ((Float) Collections.min(listAsList)).floatValue();
    }

    public float getBoundingWidth() {
        List listAsList = Arrays.asList(Float.valueOf(this.p0.f60x), Float.valueOf(this.p1.f60x), Float.valueOf(this.p2.f60x), Float.valueOf(this.p3.f60x));
        return ((Float) Collections.max(listAsList)).floatValue() - ((Float) Collections.min(listAsList)).floatValue();
    }

    public Quad scaled(float f2) {
        return new Quad(this.p0.times(f2), this.p1.times(f2), this.p2.times(f2), this.p3.times(f2));
    }

    public String toString() {
        return "{" + this.p0 + ", " + this.p1 + ", " + this.p2 + ", " + this.p3 + "}";
    }

    public Quad translated(Point point) {
        return new Quad(this.p0.plus(point), this.p1.plus(point), this.p2.plus(point), this.p3.plus(point));
    }

    public Quad(Point point, Point point2, Point point3, Point point4) {
        this.p0 = point;
        this.p1 = point2;
        this.p2 = point3;
        this.p3 = point4;
    }

    public Quad scaled(float f2, float f3) {
        return new Quad(this.p0.mult(f2, f3), this.p1.mult(f2, f3), this.p2.mult(f2, f3), this.p3.mult(f2, f3));
    }

    public Quad translated(float f2, float f3) {
        return new Quad(this.p0.plus(f2, f3), this.p1.plus(f2, f3), this.p2.plus(f2, f3), this.p3.plus(f2, f3));
    }
}
