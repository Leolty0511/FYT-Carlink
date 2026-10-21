package android.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.graphics.Canvas;
import android.graphics.CanvasProperty;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.FloatProperty;
import android.util.MathUtils;
import android.view.DisplayListCanvas;
import android.view.RenderNodeAnimator;
import android.view.animation.LinearInterpolator;

/* JADX INFO: loaded from: classes.dex */
class RippleForeground extends RippleComponent {
    private static final int BOUNDED_OPACITY_EXIT_DURATION = 400;
    private static final int BOUNDED_ORIGIN_EXIT_DURATION = 300;
    private static final int BOUNDED_RADIUS_EXIT_DURATION = 800;
    private static final float MAX_BOUNDED_RADIUS = 350.0f;
    private static final int OPACITY_ENTER_DURATION_FAST = 120;
    private static final int RIPPLE_ENTER_DELAY = 80;
    private static final float WAVE_OPACITY_DECAY_VELOCITY = 3.0f;
    private static final float WAVE_TOUCH_DOWN_ACCELERATION = 1024.0f;
    private static final float WAVE_TOUCH_UP_ACCELERATION = 3400.0f;
    private final AnimatorListenerAdapter mAnimationListener;
    private float mBoundedRadius;
    private float mClampedStartingX;
    private float mClampedStartingY;
    private boolean mHasFinishedExit;
    private boolean mIsBounded;
    private float mOpacity;
    private CanvasProperty<Paint> mPropPaint;
    private CanvasProperty<Float> mPropRadius;
    private CanvasProperty<Float> mPropX;
    private CanvasProperty<Float> mPropY;
    private float mStartingX;
    private float mStartingY;
    private float mTargetX;
    private float mTargetY;
    private float mTweenRadius;
    private float mTweenX;
    private float mTweenY;
    private static final TimeInterpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    private static final TimeInterpolator DECELERATE_INTERPOLATOR = new LogDecelerateInterpolator(400.0f, 1.4f, 0.0f);
    private static final FloatProperty<RippleForeground> TWEEN_RADIUS = new FloatProperty<RippleForeground>("tweenRadius") { // from class: android.graphics.drawable.RippleForeground.2
        @Override // android.util.Property
        public Float get(RippleForeground rippleForeground) {
            return Float.valueOf(rippleForeground.mTweenRadius);
        }

        @Override // android.util.FloatProperty
        public void setValue(RippleForeground rippleForeground, float f2) {
            rippleForeground.mTweenRadius = f2;
            rippleForeground.invalidateSelf();
        }
    };
    private static final FloatProperty<RippleForeground> TWEEN_ORIGIN = new FloatProperty<RippleForeground>("tweenOrigin") { // from class: android.graphics.drawable.RippleForeground.3
        @Override // android.util.Property
        public Float get(RippleForeground rippleForeground) {
            return Float.valueOf(rippleForeground.mTweenX);
        }

        @Override // android.util.FloatProperty
        public void setValue(RippleForeground rippleForeground, float f2) {
            rippleForeground.mTweenX = f2;
            rippleForeground.mTweenY = f2;
            rippleForeground.invalidateSelf();
        }
    };
    private static final FloatProperty<RippleForeground> OPACITY = new FloatProperty<RippleForeground>("opacity") { // from class: android.graphics.drawable.RippleForeground.4
        @Override // android.util.Property
        public Float get(RippleForeground rippleForeground) {
            return Float.valueOf(rippleForeground.mOpacity);
        }

        @Override // android.util.FloatProperty
        public void setValue(RippleForeground rippleForeground, float f2) {
            rippleForeground.mOpacity = f2;
            rippleForeground.invalidateSelf();
        }
    };

    public static final class LogDecelerateInterpolator implements TimeInterpolator {
        private final float mBase;
        private final float mDrift;
        private final float mOutputScale = 1.0f / computeLog(1.0f);
        private final float mTimeScale;

        public LogDecelerateInterpolator(float f2, float f3, float f4) {
            this.mBase = f2;
            this.mDrift = f4;
            this.mTimeScale = 1.0f / f3;
        }

        private float computeLog(float f2) {
            return (this.mDrift * f2) + (1.0f - ((float) Math.pow(this.mBase, (-f2) * this.mTimeScale)));
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            return computeLog(f2) * this.mOutputScale;
        }
    }

    public RippleForeground(RippleDrawable rippleDrawable, Rect rect, float f2, float f3, boolean z2, boolean z3) {
        super(rippleDrawable, rect, z3);
        this.mTargetX = 0.0f;
        this.mTargetY = 0.0f;
        this.mBoundedRadius = 0.0f;
        this.mOpacity = 1.0f;
        this.mTweenRadius = 0.0f;
        this.mTweenX = 0.0f;
        this.mTweenY = 0.0f;
        this.mAnimationListener = new AnimatorListenerAdapter() { // from class: android.graphics.drawable.RippleForeground.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                RippleForeground.this.mHasFinishedExit = true;
            }
        };
        this.mIsBounded = z2;
        this.mStartingX = f2;
        this.mStartingY = f3;
        if (z2) {
            this.mBoundedRadius = ((float) (Math.random() * 350.0d * 0.1d)) + 315.0f;
        } else {
            this.mBoundedRadius = 0.0f;
        }
    }

    private void clampStartingPosition() {
        float fExactCenterX = this.mBounds.exactCenterX();
        float fExactCenterY = this.mBounds.exactCenterY();
        float f2 = this.mStartingX;
        float f3 = f2 - fExactCenterX;
        float f4 = this.mStartingY;
        float f5 = f4 - fExactCenterY;
        float f6 = this.mTargetRadius;
        if ((f5 * f5) + (f3 * f3) <= f6 * f6) {
            this.mClampedStartingX = f2;
            this.mClampedStartingY = f4;
        } else {
            double dAtan2 = Math.atan2(f5, f3);
            double d2 = f6;
            this.mClampedStartingX = fExactCenterX + ((float) (Math.cos(dAtan2) * d2));
            this.mClampedStartingY = fExactCenterY + ((float) (Math.sin(dAtan2) * d2));
        }
    }

    private void computeBoundedTargetValues() {
        this.mTargetX = (this.mClampedStartingX - this.mBounds.exactCenterX()) * 0.7f;
        this.mTargetY = (this.mClampedStartingY - this.mBounds.exactCenterY()) * 0.7f;
        this.mTargetRadius = this.mBoundedRadius;
    }

    private float getCurrentRadius() {
        return MathUtils.lerp(0.0f, this.mTargetRadius, this.mTweenRadius);
    }

    private float getCurrentX() {
        return MathUtils.lerp(this.mClampedStartingX - this.mBounds.exactCenterX(), this.mTargetX, this.mTweenX);
    }

    private float getCurrentY() {
        return MathUtils.lerp(this.mClampedStartingY - this.mBounds.exactCenterY(), this.mTargetY, this.mTweenY);
    }

    private int getOpacityExitDuration() {
        return (int) (((this.mOpacity * 1000.0f) / WAVE_OPACITY_DECAY_VELOCITY) + 0.5f);
    }

    private int getRadiusExitDuration() {
        return (int) ((Math.sqrt(((this.mTargetRadius - getCurrentRadius()) / 4424.0f) * this.mDensityScale) * 1000.0d) + 0.5d);
    }

    @Override // android.graphics.drawable.RippleComponent
    public RippleComponent.RenderNodeAnimatorSet createHardwareExit(Paint paint) {
        int radiusExitDuration;
        int opacityExitDuration;
        int i2;
        if (this.mIsBounded) {
            computeBoundedTargetValues();
            radiusExitDuration = 800;
            i2 = 300;
            opacityExitDuration = 400;
        } else {
            radiusExitDuration = getRadiusExitDuration();
            opacityExitDuration = getOpacityExitDuration();
            i2 = radiusExitDuration;
        }
        float currentX = getCurrentX();
        float currentY = getCurrentY();
        float currentRadius = getCurrentRadius();
        paint.setAlpha((int) ((paint.getAlpha() * this.mOpacity) + 0.5f));
        this.mPropPaint = CanvasProperty.createPaint(paint);
        this.mPropRadius = CanvasProperty.createFloat(currentRadius);
        this.mPropX = CanvasProperty.createFloat(currentX);
        this.mPropY = CanvasProperty.createFloat(currentY);
        RenderNodeAnimator renderNodeAnimator = new RenderNodeAnimator(this.mPropRadius, this.mTargetRadius);
        renderNodeAnimator.setDuration(radiusExitDuration);
        TimeInterpolator timeInterpolator = DECELERATE_INTERPOLATOR;
        renderNodeAnimator.setInterpolator(timeInterpolator);
        RenderNodeAnimator renderNodeAnimator2 = new RenderNodeAnimator(this.mPropX, this.mTargetX);
        long j2 = i2;
        renderNodeAnimator2.setDuration(j2);
        renderNodeAnimator2.setInterpolator(timeInterpolator);
        RenderNodeAnimator renderNodeAnimator3 = new RenderNodeAnimator(this.mPropY, this.mTargetY);
        renderNodeAnimator3.setDuration(j2);
        renderNodeAnimator3.setInterpolator(timeInterpolator);
        RenderNodeAnimator renderNodeAnimator4 = new RenderNodeAnimator(this.mPropPaint, 1, 0.0f);
        renderNodeAnimator4.setDuration(opacityExitDuration);
        renderNodeAnimator4.setInterpolator(LINEAR_INTERPOLATOR);
        renderNodeAnimator4.addListener(this.mAnimationListener);
        RippleComponent.RenderNodeAnimatorSet renderNodeAnimatorSet = new RippleComponent.RenderNodeAnimatorSet();
        renderNodeAnimatorSet.add(renderNodeAnimator);
        renderNodeAnimatorSet.add(renderNodeAnimator4);
        renderNodeAnimatorSet.add(renderNodeAnimator2);
        renderNodeAnimatorSet.add(renderNodeAnimator3);
        return renderNodeAnimatorSet;
    }

    @Override // android.graphics.drawable.RippleComponent
    public Animator createSoftwareEnter(boolean z2) {
        if (this.mIsBounded) {
            return null;
        }
        int iSqrt = (int) ((Math.sqrt((this.mTargetRadius / WAVE_TOUCH_DOWN_ACCELERATION) * this.mDensityScale) * 1000.0d) + 0.5d);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, TWEEN_RADIUS, 1.0f);
        objectAnimatorOfFloat.setAutoCancel(true);
        long j2 = iSqrt;
        objectAnimatorOfFloat.setDuration(j2);
        TimeInterpolator timeInterpolator = LINEAR_INTERPOLATOR;
        objectAnimatorOfFloat.setInterpolator(timeInterpolator);
        objectAnimatorOfFloat.setStartDelay(80L);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, TWEEN_ORIGIN, 1.0f);
        objectAnimatorOfFloat2.setAutoCancel(true);
        objectAnimatorOfFloat2.setDuration(j2);
        objectAnimatorOfFloat2.setInterpolator(timeInterpolator);
        objectAnimatorOfFloat2.setStartDelay(80L);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this, OPACITY, 1.0f);
        objectAnimatorOfFloat3.setAutoCancel(true);
        objectAnimatorOfFloat3.setDuration(120L);
        objectAnimatorOfFloat3.setInterpolator(timeInterpolator);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorOfFloat2).with(objectAnimatorOfFloat).with(objectAnimatorOfFloat3);
        return animatorSet;
    }

    @Override // android.graphics.drawable.RippleComponent
    public Animator createSoftwareExit() {
        int radiusExitDuration;
        int opacityExitDuration;
        int i2;
        if (this.mIsBounded) {
            computeBoundedTargetValues();
            radiusExitDuration = 800;
            i2 = 300;
            opacityExitDuration = 400;
        } else {
            radiusExitDuration = getRadiusExitDuration();
            opacityExitDuration = getOpacityExitDuration();
            i2 = radiusExitDuration;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, TWEEN_RADIUS, 1.0f);
        objectAnimatorOfFloat.setAutoCancel(true);
        objectAnimatorOfFloat.setDuration(radiusExitDuration);
        TimeInterpolator timeInterpolator = DECELERATE_INTERPOLATOR;
        objectAnimatorOfFloat.setInterpolator(timeInterpolator);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, TWEEN_ORIGIN, 1.0f);
        objectAnimatorOfFloat2.setAutoCancel(true);
        objectAnimatorOfFloat2.setDuration(i2);
        objectAnimatorOfFloat2.setInterpolator(timeInterpolator);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this, OPACITY, 0.0f);
        objectAnimatorOfFloat3.setAutoCancel(true);
        objectAnimatorOfFloat3.setDuration(opacityExitDuration);
        objectAnimatorOfFloat3.setInterpolator(LINEAR_INTERPOLATOR);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorOfFloat2).with(objectAnimatorOfFloat).with(objectAnimatorOfFloat3);
        animatorSet.addListener(this.mAnimationListener);
        return animatorSet;
    }

    @Override // android.graphics.drawable.RippleComponent
    public boolean drawHardware(DisplayListCanvas displayListCanvas) {
        displayListCanvas.drawCircle(this.mPropX, this.mPropY, this.mPropRadius, this.mPropPaint);
        return true;
    }

    @Override // android.graphics.drawable.RippleComponent
    public boolean drawSoftware(Canvas canvas, Paint paint) {
        int alpha = paint.getAlpha();
        int i2 = (int) ((alpha * this.mOpacity) + 0.5f);
        float currentRadius = getCurrentRadius();
        if (i2 <= 0 || currentRadius <= 0.0f) {
            return false;
        }
        float currentX = getCurrentX();
        float currentY = getCurrentY();
        paint.setAlpha(i2);
        canvas.drawCircle(currentX, currentY, currentRadius, paint);
        paint.setAlpha(alpha);
        return true;
    }

    @Override // android.graphics.drawable.RippleComponent
    public void getBounds(Rect rect) {
        int i2 = (int) this.mTargetX;
        int i3 = (int) this.mTargetY;
        int i4 = ((int) this.mTargetRadius) + 1;
        rect.set(i2 - i4, i3 - i4, i2 + i4, i3 + i4);
    }

    public boolean hasFinishedExit() {
        return this.mHasFinishedExit;
    }

    @Override // android.graphics.drawable.RippleComponent
    public void jumpValuesToExit() {
        this.mOpacity = 0.0f;
        this.mTweenX = 1.0f;
        this.mTweenY = 1.0f;
        this.mTweenRadius = 1.0f;
    }

    public void move(float f2, float f3) {
        this.mStartingX = f2;
        this.mStartingY = f3;
        clampStartingPosition();
    }

    @Override // android.graphics.drawable.RippleComponent
    public void onTargetRadiusChanged(float f2) {
        clampStartingPosition();
    }
}
