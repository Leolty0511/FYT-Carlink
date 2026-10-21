package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Point;
import android.graphics.PointF;
import android.media.TtmlUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.RequiresApi;
import z.l;

/* JADX INFO: loaded from: classes2.dex */
public final class BitmapKt {
    public static final Bitmap applyCanvas(Bitmap bitmap, l lVar) {
        t.b.h(bitmap, "<this>");
        t.b.h(lVar, "block");
        lVar.invoke(new Canvas(bitmap));
        return bitmap;
    }

    public static final boolean contains(Bitmap bitmap, Point point) {
        int i2;
        t.b.h(bitmap, "<this>");
        t.b.h(point, TtmlUtils.TAG_P);
        int width = bitmap.getWidth();
        int i3 = point.f71x;
        return (i3 >= 0 && i3 < width) && (i2 = point.f72y) >= 0 && i2 < bitmap.getHeight();
    }

    public static final Bitmap createBitmap(int i2, int i3, Bitmap.Config config) {
        t.b.h(config, "config");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, config);
        t.b.g(bitmapCreateBitmap, "createBitmap(width, height, config)");
        return bitmapCreateBitmap;
    }

    public static /* synthetic */ Bitmap createBitmap$default(int i2, int i3, Bitmap.Config config, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        t.b.h(config, "config");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, config);
        t.b.g(bitmapCreateBitmap, "createBitmap(width, height, config)");
        return bitmapCreateBitmap;
    }

    public static final int get(Bitmap bitmap, int i2, int i3) {
        t.b.h(bitmap, "<this>");
        return bitmap.getPixel(i2, i3);
    }

    public static final Bitmap scale(Bitmap bitmap, int i2, int i3, boolean z2) {
        t.b.h(bitmap, "<this>");
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i2, i3, z2);
        t.b.g(bitmapCreateScaledBitmap, "createScaledBitmap(this, width, height, filter)");
        return bitmapCreateScaledBitmap;
    }

    public static /* synthetic */ Bitmap scale$default(Bitmap bitmap, int i2, int i3, boolean z2, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z2 = true;
        }
        t.b.h(bitmap, "<this>");
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i2, i3, z2);
        t.b.g(bitmapCreateScaledBitmap, "createScaledBitmap(this, width, height, filter)");
        return bitmapCreateScaledBitmap;
    }

    public static final void set(Bitmap bitmap, int i2, int i3, @ColorInt int i4) {
        t.b.h(bitmap, "<this>");
        bitmap.setPixel(i2, i3, i4);
    }

    public static final boolean contains(Bitmap bitmap, PointF pointF) {
        t.b.h(bitmap, "<this>");
        t.b.h(pointF, TtmlUtils.TAG_P);
        float f2 = pointF.f73x;
        if (f2 >= 0.0f && f2 < bitmap.getWidth()) {
            float f3 = pointF.f74y;
            if (f3 >= 0.0f && f3 < bitmap.getHeight()) {
                return true;
            }
        }
        return false;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final Bitmap createBitmap(int i2, int i3, Bitmap.Config config, boolean z2, ColorSpace colorSpace) {
        t.b.h(config, "config");
        t.b.h(colorSpace, "colorSpace");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, config, z2, colorSpace);
        t.b.g(bitmapCreateBitmap, "createBitmap(width, heig…ig, hasAlpha, colorSpace)");
        return bitmapCreateBitmap;
    }

    public static /* synthetic */ Bitmap createBitmap$default(int i2, int i3, Bitmap.Config config, boolean z2, ColorSpace colorSpace, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        if ((i4 & 8) != 0) {
            z2 = true;
        }
        if ((i4 & 16) != 0) {
            colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            t.b.g(colorSpace, "get(ColorSpace.Named.SRGB)");
        }
        t.b.h(config, "config");
        t.b.h(colorSpace, "colorSpace");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, config, z2, colorSpace);
        t.b.g(bitmapCreateBitmap, "createBitmap(width, heig…ig, hasAlpha, colorSpace)");
        return bitmapCreateBitmap;
    }
}
