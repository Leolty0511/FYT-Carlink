package androidx.core.graphics;

import android.graphics.Point;
import android.graphics.PointF;
import android.media.TtmlUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class PointKt {
    public static final int component1(Point point) {
        t.b.h(point, "<this>");
        return point.f71x;
    }

    public static final int component2(Point point) {
        t.b.h(point, "<this>");
        return point.f72y;
    }

    public static final Point minus(Point point, Point point2) {
        t.b.h(point, "<this>");
        t.b.h(point2, TtmlUtils.TAG_P);
        Point point3 = new Point(point.f71x, point.f72y);
        point3.offset(-point2.f71x, -point2.f72y);
        return point3;
    }

    public static final Point plus(Point point, Point point2) {
        t.b.h(point, "<this>");
        t.b.h(point2, TtmlUtils.TAG_P);
        Point point3 = new Point(point.f71x, point.f72y);
        point3.offset(point2.f71x, point2.f72y);
        return point3;
    }

    public static final Point toPoint(PointF pointF) {
        t.b.h(pointF, "<this>");
        return new Point((int) pointF.f73x, (int) pointF.f74y);
    }

    public static final PointF toPointF(Point point) {
        t.b.h(point, "<this>");
        return new PointF(point);
    }

    public static final Point unaryMinus(Point point) {
        t.b.h(point, "<this>");
        return new Point(-point.f71x, -point.f72y);
    }

    public static final float component1(PointF pointF) {
        t.b.h(pointF, "<this>");
        return pointF.f73x;
    }

    public static final float component2(PointF pointF) {
        t.b.h(pointF, "<this>");
        return pointF.f74y;
    }

    public static final PointF unaryMinus(PointF pointF) {
        t.b.h(pointF, "<this>");
        return new PointF(-pointF.f73x, -pointF.f74y);
    }

    public static final PointF minus(PointF pointF, PointF pointF2) {
        t.b.h(pointF, "<this>");
        t.b.h(pointF2, TtmlUtils.TAG_P);
        PointF pointF3 = new PointF(pointF.f73x, pointF.f74y);
        pointF3.offset(-pointF2.f73x, -pointF2.f74y);
        return pointF3;
    }

    public static final PointF plus(PointF pointF, PointF pointF2) {
        t.b.h(pointF, "<this>");
        t.b.h(pointF2, TtmlUtils.TAG_P);
        PointF pointF3 = new PointF(pointF.f73x, pointF.f74y);
        pointF3.offset(pointF2.f73x, pointF2.f74y);
        return pointF3;
    }

    public static final Point minus(Point point, int i2) {
        t.b.h(point, "<this>");
        Point point2 = new Point(point.f71x, point.f72y);
        int i3 = -i2;
        point2.offset(i3, i3);
        return point2;
    }

    public static final Point plus(Point point, int i2) {
        t.b.h(point, "<this>");
        Point point2 = new Point(point.f71x, point.f72y);
        point2.offset(i2, i2);
        return point2;
    }

    public static final PointF minus(PointF pointF, float f2) {
        t.b.h(pointF, "<this>");
        PointF pointF2 = new PointF(pointF.f73x, pointF.f74y);
        float f3 = -f2;
        pointF2.offset(f3, f3);
        return pointF2;
    }

    public static final PointF plus(PointF pointF, float f2) {
        t.b.h(pointF, "<this>");
        PointF pointF2 = new PointF(pointF.f73x, pointF.f74y);
        pointF2.offset(f2, f2);
        return pointF2;
    }
}
