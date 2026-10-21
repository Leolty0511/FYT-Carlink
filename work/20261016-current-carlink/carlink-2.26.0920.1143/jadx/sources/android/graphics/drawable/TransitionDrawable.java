package android.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public class TransitionDrawable extends LayerDrawable {
    private static final int TRANSITION_NONE = 2;
    private static final int TRANSITION_RUNNING = 1;
    private static final int TRANSITION_STARTING = 0;
    private int mAlpha;
    private boolean mCrossFade;
    private int mDuration;
    private int mFrom;
    private int mOriginalDuration;
    private boolean mReverse;
    private long mStartTimeMillis;
    private int mTo;
    private int mTransitionState;

    public static class TransitionState extends LayerDrawable.LayerState {
        public TransitionState(TransitionState transitionState, TransitionDrawable transitionDrawable, Resources resources) {
            super(transitionState, transitionDrawable, resources);
        }

        @Override // android.graphics.drawable.LayerDrawable.LayerState, android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.LayerDrawable.LayerState, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new TransitionDrawable(this, null);
        }

        @Override // android.graphics.drawable.LayerDrawable.LayerState, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new TransitionDrawable(this, resources);
        }
    }

    @Override // android.graphics.drawable.LayerDrawable
    public LayerDrawable.LayerState createConstantState(LayerDrawable.LayerState layerState, Resources resources) {
        return new TransitionState((TransitionState) layerState, this, resources);
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z2;
        int i2 = this.mTransitionState;
        if (i2 == 0) {
            this.mStartTimeMillis = SystemClock.uptimeMillis();
            this.mTransitionState = 1;
            z2 = false;
        } else if (i2 == 1 && this.mStartTimeMillis >= 0) {
            float fUptimeMillis = (SystemClock.uptimeMillis() - this.mStartTimeMillis) / this.mDuration;
            z2 = fUptimeMillis >= 1.0f;
            float fMin = Math.min(fUptimeMillis, 1.0f);
            int i3 = this.mFrom;
            this.mAlpha = (int) (((this.mTo - i3) * fMin) + i3);
        } else {
            z2 = true;
        }
        int i4 = this.mAlpha;
        boolean z3 = this.mCrossFade;
        LayerDrawable.ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        if (z2) {
            if (!z3 || i4 == 0) {
                childDrawableArr[0].mDrawable.draw(canvas);
            }
            if (i4 == 255) {
                childDrawableArr[1].mDrawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable = childDrawableArr[0].mDrawable;
        if (z3) {
            drawable.setAlpha(255 - i4);
        }
        drawable.draw(canvas);
        if (z3) {
            drawable.setAlpha(255);
        }
        if (i4 > 0) {
            Drawable drawable2 = childDrawableArr[1].mDrawable;
            drawable2.setAlpha(i4);
            drawable2.draw(canvas);
            drawable2.setAlpha(255);
        }
        if (z2) {
            return;
        }
        invalidateSelf();
    }

    public boolean isCrossFadeEnabled() {
        return this.mCrossFade;
    }

    public void resetTransition() {
        this.mAlpha = 0;
        this.mTransitionState = 2;
        invalidateSelf();
    }

    public void reverseTransition(int i2) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        long j2 = this.mStartTimeMillis;
        if (jUptimeMillis - j2 <= this.mDuration) {
            boolean z2 = !this.mReverse;
            this.mReverse = z2;
            this.mFrom = this.mAlpha;
            this.mTo = z2 ? 0 : 255;
            this.mDuration = (int) (z2 ? jUptimeMillis - j2 : ((long) this.mOriginalDuration) - (jUptimeMillis - j2));
            this.mTransitionState = 0;
            return;
        }
        if (this.mTo == 0) {
            this.mFrom = 0;
            this.mTo = 255;
            this.mAlpha = 0;
            this.mReverse = false;
        } else {
            this.mFrom = 255;
            this.mTo = 0;
            this.mAlpha = 255;
            this.mReverse = true;
        }
        this.mOriginalDuration = i2;
        this.mDuration = i2;
        this.mTransitionState = 0;
        invalidateSelf();
    }

    public void setCrossFadeEnabled(boolean z2) {
        this.mCrossFade = z2;
    }

    public void showSecondLayer() {
        this.mAlpha = 255;
        this.mReverse = false;
        this.mTransitionState = 2;
        invalidateSelf();
    }

    public void startTransition(int i2) {
        this.mFrom = 0;
        this.mTo = 255;
        this.mAlpha = 0;
        this.mOriginalDuration = i2;
        this.mDuration = i2;
        this.mReverse = false;
        this.mTransitionState = 0;
        invalidateSelf();
    }

    public TransitionDrawable(Drawable[] drawableArr) {
        this(new TransitionState(null, null, null), drawableArr);
    }

    public TransitionDrawable() {
        this(new TransitionState(null, null, null), (Resources) null);
    }

    private TransitionDrawable(TransitionState transitionState, Resources resources) {
        super(transitionState, resources);
        this.mTransitionState = 2;
        this.mAlpha = 0;
    }

    private TransitionDrawable(TransitionState transitionState, Drawable[] drawableArr) {
        super(drawableArr, transitionState);
        this.mTransitionState = 2;
        this.mAlpha = 0;
    }
}
