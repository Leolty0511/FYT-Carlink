package android.text.style;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DynamicDrawableSpan extends ReplacementSpan {
    public static final int ALIGN_BASELINE = 1;
    public static final int ALIGN_BOTTOM = 0;
    private static final String TAG = "DynamicDrawableSpan";
    private WeakReference<Drawable> mDrawableRef;
    protected final int mVerticalAlignment;

    public DynamicDrawableSpan() {
        this.mVerticalAlignment = 0;
    }

    private Drawable getCachedDrawable() {
        WeakReference<Drawable> weakReference = this.mDrawableRef;
        Drawable drawable = weakReference != null ? weakReference.get() : null;
        if (drawable != null) {
            return drawable;
        }
        Drawable drawable2 = getDrawable();
        this.mDrawableRef = new WeakReference<>(drawable2);
        return drawable2;
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i2, int i3, float f2, int i4, int i5, int i6, Paint paint) {
        Drawable cachedDrawable = getCachedDrawable();
        canvas.save();
        int i7 = i6 - cachedDrawable.getBounds().bottom;
        if (this.mVerticalAlignment == 1) {
            i7 -= paint.getFontMetricsInt().descent;
        }
        canvas.translate(f2, i7);
        cachedDrawable.draw(canvas);
        canvas.restore();
    }

    public abstract Drawable getDrawable();

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i2, int i3, Paint.FontMetricsInt fontMetricsInt) {
        Rect bounds = getCachedDrawable().getBounds();
        if (fontMetricsInt != null) {
            int i4 = -bounds.bottom;
            fontMetricsInt.ascent = i4;
            fontMetricsInt.descent = 0;
            fontMetricsInt.top = i4;
            fontMetricsInt.bottom = 0;
        }
        return bounds.right;
    }

    public int getVerticalAlignment() {
        return this.mVerticalAlignment;
    }

    public DynamicDrawableSpan(int i2) {
        this.mVerticalAlignment = i2;
    }
}
