package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.app.backup.FullBackup;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.media.TtmlUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class RectKt {
    @SuppressLint({"CheckResult"})
    public static final Rect and(Rect rect, Rect rect2) {
        t.b.h(rect, "<this>");
        t.b.h(rect2, FullBackup.ROOT_TREE_TOKEN);
        Rect rect3 = new Rect(rect);
        rect3.intersect(rect2);
        return rect3;
    }

    public static final int component1(Rect rect) {
        t.b.h(rect, "<this>");
        return rect.left;
    }

    public static final int component2(Rect rect) {
        t.b.h(rect, "<this>");
        return rect.top;
    }

    public static final int component3(Rect rect) {
        t.b.h(rect, "<this>");
        return rect.right;
    }

    public static final int component4(Rect rect) {
        t.b.h(rect, "<this>");
        return rect.bottom;
    }

    public static final boolean contains(Rect rect, Point point) {
        t.b.h(rect, "<this>");
        t.b.h(point, TtmlUtils.TAG_P);
        return rect.contains(point.f71x, point.f72y);
    }

    public static final Region minus(Rect rect, Rect rect2) {
        t.b.h(rect, "<this>");
        t.b.h(rect2, FullBackup.ROOT_TREE_TOKEN);
        Region region = new Region(rect);
        region.op(rect2, Region.Op.DIFFERENCE);
        return region;
    }

    public static final Rect or(Rect rect, Rect rect2) {
        t.b.h(rect, "<this>");
        t.b.h(rect2, FullBackup.ROOT_TREE_TOKEN);
        Rect rect3 = new Rect(rect);
        rect3.union(rect2);
        return rect3;
    }

    public static final Rect plus(Rect rect, Rect rect2) {
        t.b.h(rect, "<this>");
        t.b.h(rect2, FullBackup.ROOT_TREE_TOKEN);
        Rect rect3 = new Rect(rect);
        rect3.union(rect2);
        return rect3;
    }

    public static final Rect times(Rect rect, int i2) {
        t.b.h(rect, "<this>");
        Rect rect2 = new Rect(rect);
        rect2.top *= i2;
        rect2.left *= i2;
        rect2.right *= i2;
        rect2.bottom *= i2;
        return rect2;
    }

    public static final Rect toRect(RectF rectF) {
        t.b.h(rectF, "<this>");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        return rect;
    }

    public static final RectF toRectF(Rect rect) {
        t.b.h(rect, "<this>");
        return new RectF(rect);
    }

    public static final Region toRegion(Rect rect) {
        t.b.h(rect, "<this>");
        return new Region(rect);
    }

    public static final RectF transform(RectF rectF, Matrix matrix) {
        t.b.h(rectF, "<this>");
        t.b.h(matrix, "m");
        matrix.mapRect(rectF);
        return rectF;
    }

    public static final Region xor(Rect rect, Rect rect2) {
        t.b.h(rect, "<this>");
        t.b.h(rect2, FullBackup.ROOT_TREE_TOKEN);
        Region region = new Region(rect);
        region.op(rect2, Region.Op.XOR);
        return region;
    }

    public static final float component1(RectF rectF) {
        t.b.h(rectF, "<this>");
        return rectF.left;
    }

    public static final float component2(RectF rectF) {
        t.b.h(rectF, "<this>");
        return rectF.top;
    }

    public static final float component3(RectF rectF) {
        t.b.h(rectF, "<this>");
        return rectF.right;
    }

    public static final float component4(RectF rectF) {
        t.b.h(rectF, "<this>");
        return rectF.bottom;
    }

    public static final boolean contains(RectF rectF, PointF pointF) {
        t.b.h(rectF, "<this>");
        t.b.h(pointF, TtmlUtils.TAG_P);
        return rectF.contains(pointF.f73x, pointF.f74y);
    }

    public static final Region toRegion(RectF rectF) {
        t.b.h(rectF, "<this>");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        return new Region(rect);
    }

    @SuppressLint({"CheckResult"})
    public static final RectF and(RectF rectF, RectF rectF2) {
        t.b.h(rectF, "<this>");
        t.b.h(rectF2, FullBackup.ROOT_TREE_TOKEN);
        RectF rectF3 = new RectF(rectF);
        rectF3.intersect(rectF2);
        return rectF3;
    }

    public static final Region minus(RectF rectF, RectF rectF2) {
        t.b.h(rectF, "<this>");
        t.b.h(rectF2, FullBackup.ROOT_TREE_TOKEN);
        Rect rect = new Rect();
        rectF.roundOut(rect);
        Region region = new Region(rect);
        Rect rect2 = new Rect();
        rectF2.roundOut(rect2);
        region.op(rect2, Region.Op.DIFFERENCE);
        return region;
    }

    public static final RectF or(RectF rectF, RectF rectF2) {
        t.b.h(rectF, "<this>");
        t.b.h(rectF2, FullBackup.ROOT_TREE_TOKEN);
        RectF rectF3 = new RectF(rectF);
        rectF3.union(rectF2);
        return rectF3;
    }

    public static final RectF plus(RectF rectF, RectF rectF2) {
        t.b.h(rectF, "<this>");
        t.b.h(rectF2, FullBackup.ROOT_TREE_TOKEN);
        RectF rectF3 = new RectF(rectF);
        rectF3.union(rectF2);
        return rectF3;
    }

    public static final Region xor(RectF rectF, RectF rectF2) {
        t.b.h(rectF, "<this>");
        t.b.h(rectF2, FullBackup.ROOT_TREE_TOKEN);
        Rect rect = new Rect();
        rectF.roundOut(rect);
        Region region = new Region(rect);
        Rect rect2 = new Rect();
        rectF2.roundOut(rect2);
        region.op(rect2, Region.Op.XOR);
        return region;
    }

    public static final Rect plus(Rect rect, int i2) {
        t.b.h(rect, "<this>");
        Rect rect2 = new Rect(rect);
        rect2.offset(i2, i2);
        return rect2;
    }

    public static final RectF times(RectF rectF, float f2) {
        t.b.h(rectF, "<this>");
        RectF rectF2 = new RectF(rectF);
        rectF2.top *= f2;
        rectF2.left *= f2;
        rectF2.right *= f2;
        rectF2.bottom *= f2;
        return rectF2;
    }

    public static final RectF plus(RectF rectF, float f2) {
        t.b.h(rectF, "<this>");
        RectF rectF2 = new RectF(rectF);
        rectF2.offset(f2, f2);
        return rectF2;
    }

    public static final Rect plus(Rect rect, Point point) {
        t.b.h(rect, "<this>");
        t.b.h(point, "xy");
        Rect rect2 = new Rect(rect);
        rect2.offset(point.f71x, point.f72y);
        return rect2;
    }

    public static final Rect minus(Rect rect, int i2) {
        t.b.h(rect, "<this>");
        Rect rect2 = new Rect(rect);
        int i3 = -i2;
        rect2.offset(i3, i3);
        return rect2;
    }

    public static final RectF plus(RectF rectF, PointF pointF) {
        t.b.h(rectF, "<this>");
        t.b.h(pointF, "xy");
        RectF rectF2 = new RectF(rectF);
        rectF2.offset(pointF.f73x, pointF.f74y);
        return rectF2;
    }

    public static final RectF times(RectF rectF, int i2) {
        t.b.h(rectF, "<this>");
        float f2 = i2;
        RectF rectF2 = new RectF(rectF);
        rectF2.top *= f2;
        rectF2.left *= f2;
        rectF2.right *= f2;
        rectF2.bottom *= f2;
        return rectF2;
    }

    public static final RectF minus(RectF rectF, float f2) {
        t.b.h(rectF, "<this>");
        RectF rectF2 = new RectF(rectF);
        float f3 = -f2;
        rectF2.offset(f3, f3);
        return rectF2;
    }

    public static final Rect minus(Rect rect, Point point) {
        t.b.h(rect, "<this>");
        t.b.h(point, "xy");
        Rect rect2 = new Rect(rect);
        rect2.offset(-point.f71x, -point.f72y);
        return rect2;
    }

    public static final RectF minus(RectF rectF, PointF pointF) {
        t.b.h(rectF, "<this>");
        t.b.h(pointF, "xy");
        RectF rectF2 = new RectF(rectF);
        rectF2.offset(-pointF.f73x, -pointF.f74y);
        return rectF2;
    }
}
