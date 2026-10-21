package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class EdgeEffect {
    private static final float EPSILON = 0.001f;
    private static final float GLOW_ALPHA_START = 0.09f;
    private static final float MAX_ALPHA = 0.15f;
    private static final float MAX_GLOW_SCALE = 2.0f;
    private static final int MAX_VELOCITY = 10000;
    private static final int MIN_VELOCITY = 100;
    private static final int PULL_DECAY_TIME = 2000;
    private static final float PULL_DISTANCE_ALPHA_GLOW_FACTOR = 0.8f;
    private static final float PULL_GLOW_BEGIN = 0.0f;
    private static final int PULL_TIME = 167;
    private static final float RADIUS_FACTOR = 0.6f;
    private static final int RECEDE_TIME = 600;
    private static final int STATE_ABSORB = 2;
    private static final int STATE_IDLE = 0;
    private static final int STATE_PULL = 1;
    private static final int STATE_PULL_DECAY = 4;
    private static final int STATE_RECEDE = 3;
    private static final String TAG = "EdgeEffect";
    private static final int VELOCITY_GLOW_FACTOR = 6;
    private float mBaseGlowScale;
    private float mDisplacement;
    private float mDuration;
    private float mGlowAlpha;
    private float mGlowAlphaFinish;
    private float mGlowAlphaStart;
    private float mGlowScaleY;
    private float mGlowScaleYFinish;
    private float mGlowScaleYStart;
    private final Interpolator mInterpolator;
    private final Paint mPaint;
    private float mPullDistance;
    private float mRadius;
    private long mStartTime;
    private float mTargetDisplacement;
    private static final double ANGLE = 0.5235987755982988d;
    private static final float SIN = (float) Math.sin(ANGLE);
    private static final float COS = (float) Math.cos(ANGLE);
    private int mState = 0;
    private final Rect mBounds = new Rect();

    public EdgeEffect(Context context) {
        Paint paint = new Paint();
        this.mPaint = paint;
        this.mDisplacement = 0.5f;
        this.mTargetDisplacement = 0.5f;
        paint.setAntiAlias(true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(R.styleable.EdgeEffect);
        int color = typedArrayObtainStyledAttributes.getColor(0, -10066330);
        typedArrayObtainStyledAttributes.recycle();
        paint.setColor((16777215 & color) | 855638016);
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
        this.mInterpolator = new DecelerateInterpolator();
    }

    private void update() {
        float fMin = Math.min((AnimationUtils.currentAnimationTimeMillis() - this.mStartTime) / this.mDuration, 1.0f);
        float interpolation = this.mInterpolator.getInterpolation(fMin);
        float f2 = this.mGlowAlphaStart;
        this.mGlowAlpha = android.accessibilityservice.c.a(this.mGlowAlphaFinish, f2, interpolation, f2);
        float f3 = this.mGlowScaleYStart;
        this.mGlowScaleY = android.accessibilityservice.c.a(this.mGlowScaleYFinish, f3, interpolation, f3);
        this.mDisplacement = (this.mDisplacement + this.mTargetDisplacement) / MAX_GLOW_SCALE;
        if (fMin >= 0.999f) {
            int i2 = this.mState;
            if (i2 == 1) {
                this.mState = 4;
                this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
                this.mDuration = 2000.0f;
                this.mGlowAlphaStart = this.mGlowAlpha;
                this.mGlowScaleYStart = this.mGlowScaleY;
                this.mGlowAlphaFinish = 0.0f;
                this.mGlowScaleYFinish = 0.0f;
                return;
            }
            if (i2 != 2) {
                if (i2 == 3) {
                    this.mState = 0;
                    return;
                } else {
                    if (i2 != 4) {
                        return;
                    }
                    this.mState = 3;
                    return;
                }
            }
            this.mState = 3;
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mDuration = 600.0f;
            this.mGlowAlphaStart = this.mGlowAlpha;
            this.mGlowScaleYStart = this.mGlowScaleY;
            this.mGlowAlphaFinish = 0.0f;
            this.mGlowScaleYFinish = 0.0f;
        }
    }

    public boolean draw(Canvas canvas) {
        boolean z2;
        update();
        int iSave = canvas.save();
        float fCenterX = this.mBounds.centerX();
        float fHeight = this.mBounds.height() - this.mRadius;
        canvas.scale(1.0f, Math.min(this.mGlowScaleY, 1.0f) * this.mBaseGlowScale, fCenterX, 0.0f);
        float fWidth = (this.mBounds.width() * (Math.max(0.0f, Math.min(this.mDisplacement, 1.0f)) - 0.5f)) / MAX_GLOW_SCALE;
        canvas.clipRect(this.mBounds);
        canvas.translate(fWidth, 0.0f);
        this.mPaint.setAlpha((int) (this.mGlowAlpha * 255.0f));
        canvas.drawCircle(fCenterX, fHeight, this.mRadius, this.mPaint);
        canvas.restoreToCount(iSave);
        if (this.mState == 3 && this.mGlowScaleY == 0.0f) {
            this.mState = 0;
            z2 = true;
        } else {
            z2 = false;
        }
        return this.mState != 0 || z2;
    }

    public void finish() {
        this.mState = 0;
    }

    public int getColor() {
        return this.mPaint.getColor();
    }

    public int getMaxHeight() {
        return (int) ((this.mBounds.height() * MAX_GLOW_SCALE) + 0.5f);
    }

    public boolean isFinished() {
        return this.mState == 0;
    }

    public void onAbsorb(int i2) {
        this.mState = 2;
        int iMin = Math.min(Math.max(100, Math.abs(i2)), 10000);
        this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
        this.mDuration = (iMin * 0.02f) + MAX_ALPHA;
        this.mGlowAlphaStart = GLOW_ALPHA_START;
        this.mGlowScaleYStart = Math.max(this.mGlowScaleY, 0.0f);
        this.mGlowScaleYFinish = Math.min(((((iMin / 100) * iMin) * 1.5E-4f) / MAX_GLOW_SCALE) + 0.025f, 1.0f);
        this.mGlowAlphaFinish = Math.max(this.mGlowAlphaStart, Math.min(iMin * 6 * 1.0E-5f, MAX_ALPHA));
        this.mTargetDisplacement = 0.5f;
    }

    public void onPull(float f2) {
        onPull(f2, 0.5f);
    }

    public void onRelease() {
        this.mPullDistance = 0.0f;
        int i2 = this.mState;
        if (i2 == 1 || i2 == 4) {
            this.mState = 3;
            this.mGlowAlphaStart = this.mGlowAlpha;
            this.mGlowScaleYStart = this.mGlowScaleY;
            this.mGlowAlphaFinish = 0.0f;
            this.mGlowScaleYFinish = 0.0f;
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mDuration = 600.0f;
        }
    }

    public void setColor(int i2) {
        this.mPaint.setColor(i2);
    }

    public void setSize(int i2, int i3) {
        float f2 = SIN;
        float f3 = (i2 * 0.6f) / f2;
        float f4 = COS;
        float f5 = f3 - (f4 * f3);
        float f6 = i3;
        float f7 = (0.6f * f6) / f2;
        float f8 = f7 - (f4 * f7);
        this.mRadius = f3;
        this.mBaseGlowScale = f5 > 0.0f ? Math.min(f8 / f5, 1.0f) : 1.0f;
        Rect rect = this.mBounds;
        rect.set(rect.left, rect.top, i2, (int) Math.min(f6, f5));
    }

    public void onPull(float f2, float f3) {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.mTargetDisplacement = f3;
        int i2 = this.mState;
        if (i2 != 4 || jCurrentAnimationTimeMillis - this.mStartTime >= this.mDuration) {
            if (i2 != 1) {
                this.mGlowScaleY = Math.max(0.0f, this.mGlowScaleY);
            }
            this.mState = 1;
            this.mStartTime = jCurrentAnimationTimeMillis;
            this.mDuration = 167.0f;
            this.mPullDistance += f2;
            float fMin = Math.min(MAX_ALPHA, (Math.abs(f2) * PULL_DISTANCE_ALPHA_GLOW_FACTOR) + this.mGlowAlpha);
            this.mGlowAlphaStart = fMin;
            this.mGlowAlpha = fMin;
            float f4 = this.mPullDistance;
            if (f4 == 0.0f) {
                this.mGlowScaleYStart = 0.0f;
                this.mGlowScaleY = 0.0f;
            } else {
                float fMax = (float) (Math.max(0.0d, (1.0d - (1.0d / Math.sqrt(Math.abs(f4) * this.mBounds.height()))) - 0.3d) / 0.7d);
                this.mGlowScaleYStart = fMax;
                this.mGlowScaleY = fMax;
            }
            this.mGlowAlphaFinish = this.mGlowAlpha;
            this.mGlowScaleYFinish = this.mGlowScaleY;
        }
    }
}
