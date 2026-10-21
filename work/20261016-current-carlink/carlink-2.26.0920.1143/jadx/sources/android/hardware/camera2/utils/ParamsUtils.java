package android.hardware.camera2.utils;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.camera2.CaptureRequest;
import android.util.Rational;
import android.util.Size;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class ParamsUtils {
    private static final int RATIONAL_DENOMINATOR = 1000000;

    private ParamsUtils() {
        throw new AssertionError();
    }

    public static void convertRectF(Rect rect, RectF rectF) {
        Preconditions.checkNotNull(rect, "source must not be null");
        Preconditions.checkNotNull(rectF, "destination must not be null");
        rectF.left = rect.left;
        rectF.right = rect.right;
        rectF.bottom = rect.bottom;
        rectF.top = rect.top;
    }

    public static Rational createRational(float f2) {
        float f3;
        if (Float.isNaN(f2)) {
            return Rational.NaN;
        }
        if (f2 == Float.POSITIVE_INFINITY) {
            return Rational.POSITIVE_INFINITY;
        }
        if (f2 == Float.NEGATIVE_INFINITY) {
            return Rational.NEGATIVE_INFINITY;
        }
        if (f2 == 0.0f) {
            return Rational.ZERO;
        }
        int i2 = 1000000;
        while (true) {
            f3 = i2 * f2;
            if ((f3 > -2.14748365E9f && f3 < 2.14748365E9f) || i2 == 1) {
                break;
            }
            i2 /= 10;
        }
        return new Rational((int) f3, i2);
    }

    public static Rect createRect(Size size) {
        Preconditions.checkNotNull(size, "size must not be null");
        return new Rect(0, 0, size.getWidth(), size.getHeight());
    }

    public static Size createSize(Rect rect) {
        Preconditions.checkNotNull(rect, "rect must not be null");
        return new Size(rect.width(), rect.height());
    }

    public static <T> T getOrDefault(CaptureRequest captureRequest, CaptureRequest.Key<T> key, T t2) {
        Preconditions.checkNotNull(captureRequest, "r must not be null");
        Preconditions.checkNotNull(key, "key must not be null");
        Preconditions.checkNotNull(t2, "defaultValue must not be null");
        T t3 = (T) captureRequest.get(key);
        return t3 == null ? t2 : t3;
    }

    public static Rect mapRect(Matrix matrix, Rect rect) {
        Preconditions.checkNotNull(matrix, "transform must not be null");
        Preconditions.checkNotNull(rect, "rect must not be null");
        RectF rectF = new RectF(rect);
        matrix.mapRect(rectF);
        return createRect(rectF);
    }

    public static Rect createRect(RectF rectF) {
        Preconditions.checkNotNull(rectF, "rect must not be null");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        return rect;
    }
}
