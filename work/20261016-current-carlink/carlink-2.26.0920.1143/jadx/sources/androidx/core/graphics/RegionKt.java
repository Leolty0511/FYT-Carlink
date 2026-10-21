package androidx.core.graphics;

import android.app.backup.FullBackup;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.RegionIterator;
import android.hardware.Camera;
import android.media.TtmlUtils;
import java.util.Iterator;
import z.l;

/* JADX INFO: loaded from: classes2.dex */
public final class RegionKt {
    public static final Region and(Region region, Rect rect) {
        t.b.h(region, "<this>");
        t.b.h(rect, FullBackup.ROOT_TREE_TOKEN);
        Region region2 = new Region(region);
        region2.op(rect, Region.Op.INTERSECT);
        return region2;
    }

    public static final boolean contains(Region region, Point point) {
        t.b.h(region, "<this>");
        t.b.h(point, TtmlUtils.TAG_P);
        return region.contains(point.f71x, point.f72y);
    }

    public static final void forEach(Region region, l lVar) {
        t.b.h(region, "<this>");
        t.b.h(lVar, Camera.Parameters.SCENE_MODE_ACTION);
        RegionIterator regionIterator = new RegionIterator(region);
        while (true) {
            Rect rect = new Rect();
            if (!regionIterator.next(rect)) {
                return;
            } else {
                lVar.invoke(rect);
            }
        }
    }

    public static final Iterator<Rect> iterator(Region region) {
        t.b.h(region, "<this>");
        return new Iterator<Rect>(region) { // from class: androidx.core.graphics.RegionKt.iterator.1
            private boolean hasMore;
            private final RegionIterator iterator;
            private final Rect rect;

            {
                RegionIterator regionIterator = new RegionIterator(region);
                this.iterator = regionIterator;
                Rect rect = new Rect();
                this.rect = rect;
                this.hasMore = regionIterator.next(rect);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.hasMore;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public Rect next() {
                if (!this.hasMore) {
                    throw new IndexOutOfBoundsException();
                }
                Rect rect = new Rect(this.rect);
                this.hasMore = this.iterator.next(this.rect);
                return rect;
            }
        };
    }

    public static final Region minus(Region region, Rect rect) {
        t.b.h(region, "<this>");
        t.b.h(rect, FullBackup.ROOT_TREE_TOKEN);
        Region region2 = new Region(region);
        region2.op(rect, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region not(Region region) {
        t.b.h(region, "<this>");
        Region region2 = new Region(region.getBounds());
        region2.op(region, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region or(Region region, Rect rect) {
        t.b.h(region, "<this>");
        t.b.h(rect, FullBackup.ROOT_TREE_TOKEN);
        Region region2 = new Region(region);
        region2.union(rect);
        return region2;
    }

    public static final Region plus(Region region, Rect rect) {
        t.b.h(region, "<this>");
        t.b.h(rect, FullBackup.ROOT_TREE_TOKEN);
        Region region2 = new Region(region);
        region2.union(rect);
        return region2;
    }

    public static final Region unaryMinus(Region region) {
        t.b.h(region, "<this>");
        Region region2 = new Region(region.getBounds());
        region2.op(region, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region xor(Region region, Rect rect) {
        t.b.h(region, "<this>");
        t.b.h(rect, FullBackup.ROOT_TREE_TOKEN);
        Region region2 = new Region(region);
        region2.op(rect, Region.Op.XOR);
        return region2;
    }

    public static final Region and(Region region, Region region2) {
        t.b.h(region, "<this>");
        t.b.h(region2, FullBackup.ROOT_TREE_TOKEN);
        Region region3 = new Region(region);
        region3.op(region2, Region.Op.INTERSECT);
        return region3;
    }

    public static final Region minus(Region region, Region region2) {
        t.b.h(region, "<this>");
        t.b.h(region2, FullBackup.ROOT_TREE_TOKEN);
        Region region3 = new Region(region);
        region3.op(region2, Region.Op.DIFFERENCE);
        return region3;
    }

    public static final Region or(Region region, Region region2) {
        t.b.h(region, "<this>");
        t.b.h(region2, FullBackup.ROOT_TREE_TOKEN);
        Region region3 = new Region(region);
        region3.op(region2, Region.Op.UNION);
        return region3;
    }

    public static final Region plus(Region region, Region region2) {
        t.b.h(region, "<this>");
        t.b.h(region2, FullBackup.ROOT_TREE_TOKEN);
        Region region3 = new Region(region);
        region3.op(region2, Region.Op.UNION);
        return region3;
    }

    public static final Region xor(Region region, Region region2) {
        t.b.h(region, "<this>");
        t.b.h(region2, FullBackup.ROOT_TREE_TOKEN);
        Region region3 = new Region(region);
        region3.op(region2, Region.Op.XOR);
        return region3;
    }
}
