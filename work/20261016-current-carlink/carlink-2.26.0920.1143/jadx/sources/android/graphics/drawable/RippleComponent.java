package android.graphics.drawable;

import android.animation.Animator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.DisplayListCanvas;
import android.view.RenderNodeAnimator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
abstract class RippleComponent {
    protected final Rect mBounds;
    protected float mDensityScale;
    private final boolean mForceSoftware;
    private RenderNodeAnimatorSet mHardwareAnimator;
    private boolean mHasDisplayListCanvas;
    private boolean mHasMaxRadius;
    private boolean mHasPendingHardwareAnimator;
    private final RippleDrawable mOwner;
    private Animator mSoftwareAnimator;
    protected float mTargetRadius;

    public static class RenderNodeAnimatorSet {
        private final ArrayList<RenderNodeAnimator> mAnimators = new ArrayList<>();

        public void add(RenderNodeAnimator renderNodeAnimator) {
            this.mAnimators.add(renderNodeAnimator);
        }

        public void cancel() {
            ArrayList<RenderNodeAnimator> arrayList = this.mAnimators;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.get(i2).cancel();
            }
        }

        public void clear() {
            this.mAnimators.clear();
        }

        public void end() {
            ArrayList<RenderNodeAnimator> arrayList = this.mAnimators;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.get(i2).end();
            }
        }

        public boolean isRunning() {
            ArrayList<RenderNodeAnimator> arrayList = this.mAnimators;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (arrayList.get(i2).isRunning()) {
                    return true;
                }
            }
            return false;
        }

        public void start(DisplayListCanvas displayListCanvas) {
            if (displayListCanvas == null) {
                throw new IllegalArgumentException("Hardware canvas must be non-null");
            }
            ArrayList<RenderNodeAnimator> arrayList = this.mAnimators;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                RenderNodeAnimator renderNodeAnimator = arrayList.get(i2);
                renderNodeAnimator.setTarget((Canvas) displayListCanvas);
                renderNodeAnimator.start();
            }
        }
    }

    public RippleComponent(RippleDrawable rippleDrawable, Rect rect, boolean z2) {
        this.mOwner = rippleDrawable;
        this.mBounds = rect;
        this.mForceSoftware = z2;
    }

    private void cancelSoftwareAnimations() {
        Animator animator = this.mSoftwareAnimator;
        if (animator != null) {
            animator.cancel();
            this.mSoftwareAnimator = null;
        }
    }

    private void endHardwareAnimations() {
        RenderNodeAnimatorSet renderNodeAnimatorSet = this.mHardwareAnimator;
        if (renderNodeAnimatorSet != null) {
            renderNodeAnimatorSet.end();
            this.mHardwareAnimator = null;
        }
        if (this.mHasPendingHardwareAnimator) {
            this.mHasPendingHardwareAnimator = false;
            jumpValuesToExit();
        }
    }

    private void endSoftwareAnimations() {
        Animator animator = this.mSoftwareAnimator;
        if (animator != null) {
            animator.end();
            this.mSoftwareAnimator = null;
        }
    }

    private static float getTargetRadius(Rect rect) {
        float fWidth = rect.width() / 2.0f;
        float fHeight = rect.height() / 2.0f;
        return (float) Math.sqrt((fHeight * fHeight) + (fWidth * fWidth));
    }

    private void startPendingAnimation(DisplayListCanvas displayListCanvas, Paint paint) {
        if (this.mHasPendingHardwareAnimator) {
            this.mHasPendingHardwareAnimator = false;
            RenderNodeAnimatorSet renderNodeAnimatorSetCreateHardwareExit = createHardwareExit(new Paint(paint));
            this.mHardwareAnimator = renderNodeAnimatorSetCreateHardwareExit;
            renderNodeAnimatorSetCreateHardwareExit.start(displayListCanvas);
            jumpValuesToExit();
        }
    }

    public void cancel() {
        cancelSoftwareAnimations();
        endHardwareAnimations();
    }

    public abstract RenderNodeAnimatorSet createHardwareExit(Paint paint);

    public abstract Animator createSoftwareEnter(boolean z2);

    public abstract Animator createSoftwareExit();

    public boolean draw(Canvas canvas, Paint paint) {
        boolean z2 = !this.mForceSoftware && canvas.isHardwareAccelerated() && (canvas instanceof DisplayListCanvas);
        if (this.mHasDisplayListCanvas != z2) {
            this.mHasDisplayListCanvas = z2;
            if (!z2) {
                endHardwareAnimations();
            }
        }
        if (z2) {
            DisplayListCanvas displayListCanvas = (DisplayListCanvas) canvas;
            startPendingAnimation(displayListCanvas, paint);
            if (this.mHardwareAnimator != null) {
                return drawHardware(displayListCanvas);
            }
        }
        return drawSoftware(canvas, paint);
    }

    public abstract boolean drawHardware(DisplayListCanvas displayListCanvas);

    public abstract boolean drawSoftware(Canvas canvas, Paint paint);

    public void end() {
        endSoftwareAnimations();
        endHardwareAnimations();
    }

    public final void enter(boolean z2) {
        cancel();
        Animator animatorCreateSoftwareEnter = createSoftwareEnter(z2);
        this.mSoftwareAnimator = animatorCreateSoftwareEnter;
        if (animatorCreateSoftwareEnter != null) {
            animatorCreateSoftwareEnter.start();
        }
    }

    public final void exit() {
        cancel();
        if (this.mHasDisplayListCanvas) {
            this.mHasPendingHardwareAnimator = true;
            invalidateSelf();
        } else {
            Animator animatorCreateSoftwareExit = createSoftwareExit();
            this.mSoftwareAnimator = animatorCreateSoftwareExit;
            animatorCreateSoftwareExit.start();
        }
    }

    public void getBounds(Rect rect) {
        int iCeil = (int) Math.ceil(this.mTargetRadius);
        int i2 = -iCeil;
        rect.set(i2, i2, iCeil, iCeil);
    }

    public final void invalidateSelf() {
        this.mOwner.invalidateSelf(false);
    }

    public final boolean isHardwareAnimating() {
        RenderNodeAnimatorSet renderNodeAnimatorSet = this.mHardwareAnimator;
        return (renderNodeAnimatorSet != null && renderNodeAnimatorSet.isRunning()) || this.mHasPendingHardwareAnimator;
    }

    public abstract void jumpValuesToExit();

    public void onBoundsChange() {
        if (this.mHasMaxRadius) {
            return;
        }
        float targetRadius = getTargetRadius(this.mBounds);
        this.mTargetRadius = targetRadius;
        onTargetRadiusChanged(targetRadius);
    }

    public final void onHotspotBoundsChanged() {
        if (this.mHasMaxRadius) {
            return;
        }
        float fWidth = this.mBounds.width() / 2.0f;
        float fHeight = this.mBounds.height() / 2.0f;
        onTargetRadiusChanged((float) Math.sqrt((fHeight * fHeight) + (fWidth * fWidth)));
    }

    public void onTargetRadiusChanged(float f2) {
    }

    public final void setup(float f2, int i2) {
        if (f2 >= 0.0f) {
            this.mHasMaxRadius = true;
            this.mTargetRadius = f2;
        } else {
            this.mTargetRadius = getTargetRadius(this.mBounds);
        }
        this.mDensityScale = i2 * 0.00625f;
        onTargetRadiusChanged(this.mTargetRadius);
    }
}
