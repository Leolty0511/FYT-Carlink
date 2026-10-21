package com.android.internal.colorextraction.drawable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.graphics.drawable.Drawable;
import android.view.animation.DecelerateInterpolator;
import com.android.internal.colorextraction.ColorExtractor;
import com.android.internal.graphics.ColorUtils;

/* JADX INFO: loaded from: classes2.dex */
public class GradientDrawable extends Drawable {
    private static final float CENTRALIZED_CIRCLE_1 = -2.0f;
    private static final long COLOR_ANIMATION_DURATION = 2000;
    private static final int GRADIENT_RADIUS = 480;
    private static final String TAG = "GradientDrawable";
    private ValueAnimator mColorAnimation;
    private float mDensity;
    private int mMainColor;
    private final Paint mPaint;
    private int mSecondaryColor;
    private int mAlpha = 255;
    private final Splat mSplat = new Splat(0.5f, 1.0f, 480.0f, CENTRALIZED_CIRCLE_1);
    private final Rect mWindowBounds = new Rect();

    public static final class Splat {
        final float colorIndex;
        final float radius;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        final float f361x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        final float f362y;

        public Splat(float f2, float f3, float f4, float f5) {
            this.f361x = f2;
            this.f362y = f3;
            this.radius = f4;
            this.colorIndex = f5;
        }
    }

    public GradientDrawable(Context context) {
        this.mDensity = context.getResources().getDisplayMetrics().density;
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setStyle(Paint.Style.FILL);
    }

    private void buildPaints() {
        Rect rect = this.mWindowBounds;
        if (rect.width() == 0) {
            return;
        }
        float fWidth = rect.width();
        float fHeight = rect.height();
        Splat splat = this.mSplat;
        this.mPaint.setShader(new RadialGradient(splat.f361x * fWidth, splat.f362y * fHeight, splat.radius * this.mDensity, this.mSecondaryColor, this.mMainColor, Shader.TileMode.CLAMP));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setColors$0(int i2, int i3, int i4, int i5, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.mMainColor = ColorUtils.blendARGB(i2, i3, fFloatValue);
        this.mSecondaryColor = ColorUtils.blendARGB(i4, i5, fFloatValue);
        buildPaints();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect rect = this.mWindowBounds;
        if (rect.width() == 0) {
            throw new IllegalStateException("You need to call setScreenSize before drawing.");
        }
        float fWidth = rect.width();
        float fHeight = rect.height();
        Splat splat = this.mSplat;
        float f2 = splat.f361x * fWidth;
        float f3 = splat.f362y * fHeight;
        float fMax = Math.max(fWidth, fHeight);
        canvas.drawRect(f2 - fMax, f3 - fMax, f2 + fMax, f3 + fMax, this.mPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mAlpha;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.mPaint.getColorFilter();
    }

    public int getMainColor() {
        return this.mMainColor;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public int getSecondaryColor() {
        return this.mSecondaryColor;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (i2 != this.mAlpha) {
            this.mAlpha = i2;
            this.mPaint.setAlpha(i2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public void setColors(ColorExtractor.GradientColors gradientColors) {
        setColors(gradientColors.getMainColor(), gradientColors.getSecondaryColor(), true);
    }

    public void setScreenSize(int i2, int i3) {
        this.mWindowBounds.set(0, 0, i2, i3);
        setBounds(0, 0, i2, i3);
        buildPaints();
    }

    @Override // android.graphics.drawable.Drawable
    public void setXfermode(Xfermode xfermode) {
        this.mPaint.setXfermode(xfermode);
        invalidateSelf();
    }

    public void setColors(ColorExtractor.GradientColors gradientColors, boolean z2) {
        setColors(gradientColors.getMainColor(), gradientColors.getSecondaryColor(), z2);
    }

    public void setColors(final int i2, final int i3, boolean z2) {
        if (i2 == this.mMainColor && i3 == this.mSecondaryColor) {
            return;
        }
        ValueAnimator valueAnimator = this.mColorAnimation;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mColorAnimation.cancel();
        }
        if (z2) {
            final int i4 = this.mMainColor;
            final int i5 = this.mSecondaryColor;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setDuration(COLOR_ANIMATION_DURATION);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.internal.colorextraction.drawable.a
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f363a.lambda$setColors$0(i4, i2, i5, i3, valueAnimator2);
                }
            });
            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.internal.colorextraction.drawable.GradientDrawable.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator, boolean z3) {
                    if (GradientDrawable.this.mColorAnimation == animator) {
                        GradientDrawable.this.mColorAnimation = null;
                    }
                }
            });
            valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
            valueAnimatorOfFloat.start();
            this.mColorAnimation = valueAnimatorOfFloat;
            return;
        }
        this.mMainColor = i2;
        this.mSecondaryColor = i3;
        buildPaints();
        invalidateSelf();
    }
}
