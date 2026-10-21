package android.view;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes2.dex */
class RoundScrollbarRenderer {
    private static final int DEFAULT_THUMB_COLOR = 1291845631;
    private static final int DEFAULT_TRACK_COLOR = 654311423;
    private static final int MAX_SCROLLBAR_ANGLE_SWIPE = 16;
    private static final int MIN_SCROLLBAR_ANGLE_SWIPE = 6;
    private static final int SCROLLBAR_ANGLE_RANGE = 90;
    private static final float WIDTH_PERCENTAGE = 0.02f;
    private final View mParent;
    private final RectF mRect;
    private final Paint mThumbPaint;
    private final Paint mTrackPaint;

    public RoundScrollbarRenderer(View view) {
        Paint paint = new Paint();
        this.mThumbPaint = paint;
        Paint paint2 = new Paint();
        this.mTrackPaint = paint2;
        this.mRect = new RectF();
        paint.setAntiAlias(true);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        paint2.setAntiAlias(true);
        paint2.setStrokeCap(cap);
        paint2.setStyle(style);
        this.mParent = view;
    }

    private static int applyAlpha(int i2, float f2) {
        return Color.argb((int) (Color.alpha(i2) * f2), Color.red(i2), Color.green(i2), Color.blue(i2));
    }

    private static float clamp(float f2, float f3, float f4) {
        if (f2 < f3) {
            return f3;
        }
        return f2 > f4 ? f4 : f2;
    }

    private void setThumbColor(int i2) {
        if (this.mThumbPaint.getColor() != i2) {
            this.mThumbPaint.setColor(i2);
        }
    }

    private void setTrackColor(int i2) {
        if (this.mTrackPaint.getColor() != i2) {
            this.mTrackPaint.setColor(i2);
        }
    }

    public void drawRoundScrollbars(Canvas canvas, float f2, Rect rect) {
        if (f2 == 0.0f) {
            return;
        }
        float fComputeVerticalScrollRange = this.mParent.computeVerticalScrollRange();
        float fComputeVerticalScrollExtent = this.mParent.computeVerticalScrollExtent();
        if (fComputeVerticalScrollExtent <= 0.0f || fComputeVerticalScrollRange <= fComputeVerticalScrollExtent) {
            return;
        }
        float fMax = Math.max(0, this.mParent.computeVerticalScrollOffset());
        float fComputeVerticalScrollExtent2 = this.mParent.computeVerticalScrollExtent();
        float width = this.mParent.getWidth() * WIDTH_PERCENTAGE;
        this.mThumbPaint.setStrokeWidth(width);
        this.mTrackPaint.setStrokeWidth(width);
        setThumbColor(applyAlpha(DEFAULT_THUMB_COLOR, f2));
        setTrackColor(applyAlpha(DEFAULT_TRACK_COLOR, f2));
        float fClamp = clamp((fComputeVerticalScrollExtent2 / fComputeVerticalScrollRange) * 90.0f, 6.0f, 16.0f);
        float fClamp2 = clamp((((90.0f - fClamp) * fMax) / (fComputeVerticalScrollRange - fComputeVerticalScrollExtent2)) - 45.0f, -45.0f, 45.0f - fClamp);
        float f3 = width / 2.0f;
        this.mRect.set(rect.left - f3, rect.top, rect.right - f3, rect.bottom);
        canvas.drawArc(this.mRect, -45.0f, 90.0f, false, this.mTrackPaint);
        canvas.drawArc(this.mRect, fClamp2, fClamp, false, this.mThumbPaint);
    }
}
