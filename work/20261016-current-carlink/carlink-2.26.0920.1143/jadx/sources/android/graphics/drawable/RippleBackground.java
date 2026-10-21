package android.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.graphics.Canvas;
import android.graphics.CanvasProperty;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.FloatProperty;
import android.view.DisplayListCanvas;
import android.view.RenderNodeAnimator;
import android.view.animation.LinearInterpolator;

/* JADX INFO: loaded from: classes.dex */
class RippleBackground extends RippleComponent {
    private static final TimeInterpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    private static final BackgroundProperty OPACITY = new BackgroundProperty("opacity") { // from class: android.graphics.drawable.RippleBackground.1
        @Override // android.util.Property
        public Float get(RippleBackground rippleBackground) {
            return Float.valueOf(rippleBackground.mOpacity);
        }

        @Override // android.util.FloatProperty
        public void setValue(RippleBackground rippleBackground, float f2) {
            rippleBackground.mOpacity = f2;
            rippleBackground.invalidateSelf();
        }
    };
    private static final int OPACITY_ENTER_DURATION = 600;
    private static final int OPACITY_ENTER_DURATION_FAST = 120;
    private static final int OPACITY_EXIT_DURATION = 480;
    private boolean mIsBounded;
    private float mOpacity;
    private CanvasProperty<Paint> mPropPaint;
    private CanvasProperty<Float> mPropRadius;
    private CanvasProperty<Float> mPropX;
    private CanvasProperty<Float> mPropY;

    public static abstract class BackgroundProperty extends FloatProperty<RippleBackground> {
        public BackgroundProperty(String str) {
            super(str);
        }
    }

    public RippleBackground(RippleDrawable rippleDrawable, Rect rect, boolean z2, boolean z3) {
        super(rippleDrawable, rect, z3);
        this.mOpacity = 0.0f;
        this.mIsBounded = z2;
    }

    @Override // android.graphics.drawable.RippleComponent
    public RippleComponent.RenderNodeAnimatorSet createHardwareExit(Paint paint) {
        RippleComponent.RenderNodeAnimatorSet renderNodeAnimatorSet = new RippleComponent.RenderNodeAnimatorSet();
        float alpha = paint.getAlpha();
        paint.setAlpha((int) ((this.mOpacity * alpha) + 0.5f));
        this.mPropPaint = CanvasProperty.createPaint(paint);
        this.mPropRadius = CanvasProperty.createFloat(this.mTargetRadius);
        this.mPropX = CanvasProperty.createFloat(0.0f);
        this.mPropY = CanvasProperty.createFloat(0.0f);
        int i2 = this.mIsBounded ? (int) ((1.0f - this.mOpacity) * 120.0f) : 0;
        RenderNodeAnimator renderNodeAnimator = new RenderNodeAnimator(this.mPropPaint, 1, 0.0f);
        TimeInterpolator timeInterpolator = LINEAR_INTERPOLATOR;
        renderNodeAnimator.setInterpolator(timeInterpolator);
        renderNodeAnimator.setDuration(480L);
        if (i2 > 0) {
            renderNodeAnimator.setStartDelay(i2);
            renderNodeAnimator.setStartValue(alpha);
        }
        renderNodeAnimatorSet.add(renderNodeAnimator);
        if (i2 > 0) {
            RenderNodeAnimator renderNodeAnimator2 = new RenderNodeAnimator(this.mPropPaint, 1, alpha);
            renderNodeAnimator2.setInterpolator(timeInterpolator);
            renderNodeAnimator2.setDuration(i2);
            renderNodeAnimatorSet.add(renderNodeAnimator2);
        }
        return renderNodeAnimatorSet;
    }

    @Override // android.graphics.drawable.RippleComponent
    public Animator createSoftwareEnter(boolean z2) {
        int i2 = (int) ((1.0f - this.mOpacity) * (z2 ? 120 : 600));
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, OPACITY, 1.0f);
        objectAnimatorOfFloat.setAutoCancel(true);
        objectAnimatorOfFloat.setDuration(i2);
        objectAnimatorOfFloat.setInterpolator(LINEAR_INTERPOLATOR);
        return objectAnimatorOfFloat;
    }

    @Override // android.graphics.drawable.RippleComponent
    public Animator createSoftwareExit() {
        AnimatorSet animatorSet = new AnimatorSet();
        BackgroundProperty backgroundProperty = OPACITY;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, backgroundProperty, 0.0f);
        TimeInterpolator timeInterpolator = LINEAR_INTERPOLATOR;
        objectAnimatorOfFloat.setInterpolator(timeInterpolator);
        objectAnimatorOfFloat.setDuration(480L);
        objectAnimatorOfFloat.setAutoCancel(true);
        AnimatorSet.Builder builderPlay = animatorSet.play(objectAnimatorOfFloat);
        int i2 = this.mIsBounded ? (int) ((1.0f - this.mOpacity) * 120.0f) : 0;
        if (i2 > 0) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, backgroundProperty, 1.0f);
            objectAnimatorOfFloat2.setInterpolator(timeInterpolator);
            objectAnimatorOfFloat2.setDuration(i2);
            objectAnimatorOfFloat2.setAutoCancel(true);
            builderPlay.after(objectAnimatorOfFloat2);
        }
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
        if (i2 <= 0) {
            return false;
        }
        paint.setAlpha(i2);
        canvas.drawCircle(0.0f, 0.0f, this.mTargetRadius, paint);
        paint.setAlpha(alpha);
        return true;
    }

    public boolean isVisible() {
        return this.mOpacity > 0.0f || isHardwareAnimating();
    }

    @Override // android.graphics.drawable.RippleComponent
    public void jumpValuesToExit() {
        this.mOpacity = 0.0f;
    }
}
