package android.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Insets;
import android.graphics.Rect;
import android.os.SystemClock;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public class DrawableContainer extends Drawable implements Drawable.Callback {
    private static final boolean DEBUG = false;
    private static final boolean DEFAULT_DITHER = true;
    private static final String TAG = "DrawableContainer";
    private Runnable mAnimationRunnable;
    private ColorFilter mColorFilter;
    private Drawable mCurrDrawable;
    private DrawableContainerState mDrawableContainerState;
    private long mEnterAnimationEnd;
    private long mExitAnimationEnd;
    private Drawable mLastDrawable;
    private boolean mMutated;
    private int mAlpha = 255;
    private int mCurIndex = -1;
    private Insets mInsets = Insets.NONE;

    public static abstract class DrawableContainerState extends Drawable.ConstantState {
        public boolean mAutoMirrored;
        public boolean mCanConstantState;
        public int mChangingConfigurations;
        public boolean mCheckedConstantState;
        public boolean mCheckedOpacity;
        public boolean mCheckedStateful;
        public int mChildrenChangingConfigurations;
        public boolean mComputedConstantSize;
        public int mConstantHeight;
        public int mConstantMinimumHeight;
        public int mConstantMinimumWidth;
        public Rect mConstantPadding;
        public boolean mConstantSize;
        public int mConstantWidth;
        public boolean mDither;
        public SparseArray<ConstantStateFuture> mDrawableFutures;
        public Drawable[] mDrawables;
        public int mEnterFadeDuration;
        public int mExitFadeDuration;
        public int mLayoutDirection;
        public boolean mMutated;
        public int mNumChildren;
        public int mOpacity;
        public final DrawableContainer mOwner;
        public boolean mPaddingChecked;
        public final Resources mRes;
        public boolean mStateful;
        public boolean mVariablePadding;

        public static class ConstantStateFuture {
            private final Drawable.ConstantState mConstantState;

            public Drawable get(DrawableContainerState drawableContainerState) {
                Resources resources = drawableContainerState.mRes;
                Drawable drawableNewDrawable = resources == null ? this.mConstantState.newDrawable() : this.mConstantState.newDrawable(resources);
                drawableNewDrawable.setLayoutDirection(drawableContainerState.mLayoutDirection);
                drawableNewDrawable.setCallback(drawableContainerState.mOwner);
                if (drawableContainerState.mMutated) {
                    drawableNewDrawable.mutate();
                }
                return drawableNewDrawable;
            }

            private ConstantStateFuture(Drawable drawable) {
                this.mConstantState = drawable.getConstantState();
            }
        }

        public DrawableContainerState(DrawableContainerState drawableContainerState, DrawableContainer drawableContainer, Resources resources) {
            this.mDither = true;
            this.mOwner = drawableContainer;
            this.mRes = resources;
            if (drawableContainerState == null) {
                this.mDrawables = new Drawable[10];
                this.mNumChildren = 0;
                return;
            }
            this.mChangingConfigurations = drawableContainerState.mChangingConfigurations;
            this.mChildrenChangingConfigurations = drawableContainerState.mChildrenChangingConfigurations;
            this.mCheckedConstantState = true;
            this.mCanConstantState = true;
            this.mVariablePadding = drawableContainerState.mVariablePadding;
            this.mConstantSize = drawableContainerState.mConstantSize;
            this.mDither = drawableContainerState.mDither;
            this.mMutated = drawableContainerState.mMutated;
            this.mLayoutDirection = drawableContainerState.mLayoutDirection;
            this.mEnterFadeDuration = drawableContainerState.mEnterFadeDuration;
            this.mExitFadeDuration = drawableContainerState.mExitFadeDuration;
            this.mAutoMirrored = drawableContainerState.mAutoMirrored;
            this.mConstantPadding = drawableContainerState.getConstantPadding();
            this.mPaddingChecked = true;
            this.mConstantWidth = drawableContainerState.getConstantWidth();
            this.mConstantHeight = drawableContainerState.getConstantHeight();
            this.mConstantMinimumWidth = drawableContainerState.getConstantMinimumWidth();
            this.mConstantMinimumHeight = drawableContainerState.getConstantMinimumHeight();
            this.mComputedConstantSize = true;
            this.mOpacity = drawableContainerState.getOpacity();
            this.mCheckedOpacity = true;
            this.mStateful = drawableContainerState.isStateful();
            this.mCheckedStateful = true;
            Drawable[] drawableArr = drawableContainerState.mDrawables;
            this.mDrawables = new Drawable[drawableArr.length];
            this.mNumChildren = drawableContainerState.mNumChildren;
            SparseArray<ConstantStateFuture> sparseArray = drawableContainerState.mDrawableFutures;
            if (sparseArray != null) {
                this.mDrawableFutures = sparseArray.m15clone();
            } else {
                this.mDrawableFutures = new SparseArray<>(this.mNumChildren);
            }
            int i2 = this.mNumChildren;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3] != null) {
                    this.mDrawableFutures.put(i3, new ConstantStateFuture(drawableArr[i3]));
                }
            }
        }

        private final void createAllFutures() {
            SparseArray<ConstantStateFuture> sparseArray = this.mDrawableFutures;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.mDrawables[this.mDrawableFutures.keyAt(i2)] = this.mDrawableFutures.valueAt(i2).get(this);
                }
                this.mDrawableFutures = null;
            }
        }

        public final int addChild(Drawable drawable) {
            int i2 = this.mNumChildren;
            if (i2 >= this.mDrawables.length) {
                growArray(i2, i2 + 10);
            }
            drawable.setVisible(false, true);
            drawable.setCallback(this.mOwner);
            this.mDrawables[i2] = drawable;
            this.mNumChildren++;
            this.mChildrenChangingConfigurations = drawable.getChangingConfigurations() | this.mChildrenChangingConfigurations;
            this.mCheckedStateful = false;
            this.mCheckedOpacity = false;
            this.mConstantPadding = null;
            this.mPaddingChecked = false;
            this.mComputedConstantSize = false;
            return i2;
        }

        public synchronized boolean canConstantState() {
            if (this.mCheckedConstantState) {
                return this.mCanConstantState;
            }
            createAllFutures();
            this.mCheckedConstantState = true;
            int i2 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3].getConstantState() == null) {
                    this.mCanConstantState = false;
                    return false;
                }
            }
            this.mCanConstantState = true;
            return true;
        }

        public void computeConstantSize() {
            this.mComputedConstantSize = true;
            createAllFutures();
            int i2 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            this.mConstantHeight = -1;
            this.mConstantWidth = -1;
            this.mConstantMinimumHeight = 0;
            this.mConstantMinimumWidth = 0;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = drawableArr[i3];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.mConstantWidth) {
                    this.mConstantWidth = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.mConstantHeight) {
                    this.mConstantHeight = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.mConstantMinimumWidth) {
                    this.mConstantMinimumWidth = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.mConstantMinimumHeight) {
                    this.mConstantMinimumHeight = minimumHeight;
                }
            }
        }

        public final int getCapacity() {
            return this.mDrawables.length;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations | this.mChildrenChangingConfigurations;
        }

        public final Drawable getChild(int i2) {
            int iIndexOfKey;
            Drawable drawable = this.mDrawables[i2];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<ConstantStateFuture> sparseArray = this.mDrawableFutures;
            if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i2)) < 0) {
                return null;
            }
            Drawable drawable2 = this.mDrawableFutures.valueAt(iIndexOfKey).get(this);
            this.mDrawables[i2] = drawable2;
            this.mDrawableFutures.removeAt(iIndexOfKey);
            return drawable2;
        }

        public final int getChildCount() {
            return this.mNumChildren;
        }

        public final Drawable[] getChildren() {
            createAllFutures();
            return this.mDrawables;
        }

        public final int getConstantHeight() {
            if (!this.mComputedConstantSize) {
                computeConstantSize();
            }
            return this.mConstantHeight;
        }

        public final int getConstantMinimumHeight() {
            if (!this.mComputedConstantSize) {
                computeConstantSize();
            }
            return this.mConstantMinimumHeight;
        }

        public final int getConstantMinimumWidth() {
            if (!this.mComputedConstantSize) {
                computeConstantSize();
            }
            return this.mConstantMinimumWidth;
        }

        public final Rect getConstantPadding() {
            Rect rect = null;
            if (this.mVariablePadding) {
                return null;
            }
            Rect rect2 = this.mConstantPadding;
            if (rect2 != null || this.mPaddingChecked) {
                return rect2;
            }
            createAllFutures();
            Rect rect3 = new Rect();
            int i2 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3].getPadding(rect3)) {
                    if (rect == null) {
                        rect = new Rect(0, 0, 0, 0);
                    }
                    int i4 = rect3.left;
                    if (i4 > rect.left) {
                        rect.left = i4;
                    }
                    int i5 = rect3.top;
                    if (i5 > rect.top) {
                        rect.top = i5;
                    }
                    int i6 = rect3.right;
                    if (i6 > rect.right) {
                        rect.right = i6;
                    }
                    int i7 = rect3.bottom;
                    if (i7 > rect.bottom) {
                        rect.bottom = i7;
                    }
                }
            }
            this.mPaddingChecked = true;
            this.mConstantPadding = rect;
            return rect;
        }

        public final int getConstantWidth() {
            if (!this.mComputedConstantSize) {
                computeConstantSize();
            }
            return this.mConstantWidth;
        }

        public final int getEnterFadeDuration() {
            return this.mEnterFadeDuration;
        }

        public final int getExitFadeDuration() {
            return this.mExitFadeDuration;
        }

        public final int getOpacity() {
            if (this.mCheckedOpacity) {
                return this.mOpacity;
            }
            createAllFutures();
            this.mCheckedOpacity = true;
            int i2 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            int opacity = i2 > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i3 = 1; i3 < i2; i3++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i3].getOpacity());
            }
            this.mOpacity = opacity;
            return opacity;
        }

        public void growArray(int i2, int i3) {
            Drawable[] drawableArr = new Drawable[i3];
            System.arraycopy(this.mDrawables, 0, drawableArr, 0, i2);
            this.mDrawables = drawableArr;
        }

        public final boolean isConstantSize() {
            return this.mConstantSize;
        }

        public final boolean isStateful() {
            if (this.mCheckedStateful) {
                return this.mStateful;
            }
            createAllFutures();
            this.mCheckedStateful = true;
            int i2 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3].isStateful()) {
                    this.mStateful = true;
                    return true;
                }
            }
            this.mStateful = false;
            return false;
        }

        public final void mutate() {
            int i2 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3] != null) {
                    drawableArr[i3].mutate();
                }
            }
            this.mMutated = true;
        }

        public final void setConstantSize(boolean z2) {
            this.mConstantSize = z2;
        }

        public final void setEnterFadeDuration(int i2) {
            this.mEnterFadeDuration = i2;
        }

        public final void setExitFadeDuration(int i2) {
            this.mExitFadeDuration = i2;
        }

        public final void setLayoutDirection(int i2) {
            int i3 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            for (int i4 = 0; i4 < i3; i4++) {
                if (drawableArr[i4] != null) {
                    drawableArr[i4].setLayoutDirection(i2);
                }
            }
            this.mLayoutDirection = i2;
        }

        public final void setVariablePadding(boolean z2) {
            this.mVariablePadding = z2;
        }
    }

    private boolean needsMirroring() {
        return isAutoMirrored() && getLayoutDirection() == 1;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0043  */
    /* JADX WARN: Code duplicated, block: B:16:0x0049  */
    /* JADX WARN: Code duplicated, block: B:18:0x004d  */
    /* JADX WARN: Code duplicated, block: B:19:0x0056  */
    /* JADX WARN: Code duplicated, block: B:20:0x006b  */
    /* JADX WARN: Code duplicated, block: B:23:0x0070 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    public void animate(boolean z2) {
        boolean z3;
        Drawable drawable;
        long j2;
        long jUptimeMillis = SystemClock.uptimeMillis();
        Drawable drawable2 = this.mCurrDrawable;
        boolean z4 = true;
        if (drawable2 != null) {
            long j3 = this.mEnterAnimationEnd;
            if (j3 != 0) {
                if (j3 <= jUptimeMillis) {
                    drawable2.mutate().setAlpha(this.mAlpha);
                    this.mEnterAnimationEnd = 0L;
                } else {
                    drawable2.mutate().setAlpha(((255 - (((int) ((j3 - jUptimeMillis) * 255)) / this.mDrawableContainerState.mEnterFadeDuration)) * this.mAlpha) / 255);
                    z3 = true;
                }
            }
            drawable = this.mLastDrawable;
            if (drawable != null) {
                j2 = this.mExitAnimationEnd;
                if (j2 == 0) {
                    if (j2 <= jUptimeMillis) {
                        drawable.setVisible(false, false);
                        this.mLastDrawable = null;
                        this.mExitAnimationEnd = 0L;
                    } else {
                        drawable.mutate().setAlpha(((((int) ((j2 - jUptimeMillis) * 255)) / this.mDrawableContainerState.mExitFadeDuration) * this.mAlpha) / 255);
                    }
                }
                if (z2 || !z4) {
                }
                scheduleSelf(this.mAnimationRunnable, jUptimeMillis + 16);
                return;
            }
            this.mExitAnimationEnd = 0L;
            z4 = z3;
            if (z2) {
            }
        }
        this.mEnterAnimationEnd = 0L;
        z3 = false;
        drawable = this.mLastDrawable;
        if (drawable != null) {
            j2 = this.mExitAnimationEnd;
            if (j2 == 0) {
                if (j2 <= jUptimeMillis) {
                    drawable.setVisible(false, false);
                    this.mLastDrawable = null;
                    this.mExitAnimationEnd = 0L;
                } else {
                    drawable.mutate().setAlpha(((((int) ((j2 - jUptimeMillis) * 255)) / this.mDrawableContainerState.mExitFadeDuration) * this.mAlpha) / 255);
                }
            }
            if (z2) {
            }
        }
        this.mExitAnimationEnd = 0L;
        z4 = z3;
        if (z2) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.mLastDrawable;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mAlpha;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        DrawableContainerState drawableContainerState = this.mDrawableContainerState;
        return changingConfigurations | drawableContainerState.mChangingConfigurations | drawableContainerState.mChildrenChangingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (!this.mDrawableContainerState.canConstantState()) {
            return null;
        }
        this.mDrawableContainerState.mChangingConfigurations = getChangingConfigurations();
        return this.mDrawableContainerState;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.mCurrDrawable;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.mDrawableContainerState.isConstantSize()) {
            return this.mDrawableContainerState.getConstantHeight();
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.mDrawableContainerState.isConstantSize()) {
            return this.mDrawableContainerState.getConstantWidth();
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.mDrawableContainerState.isConstantSize()) {
            return this.mDrawableContainerState.getConstantMinimumHeight();
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.mDrawableContainerState.isConstantSize()) {
            return this.mDrawableContainerState.getConstantMinimumWidth();
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.mCurrDrawable;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.mDrawableContainerState.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public Insets getOpticalInsets() {
        return this.mInsets;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding;
        Rect constantPadding = this.mDrawableContainerState.getConstantPadding();
        if (constantPadding != null) {
            rect.set(constantPadding);
            padding = (constantPadding.right | ((constantPadding.left | constantPadding.top) | constantPadding.bottom)) != 0;
        } else {
            Drawable drawable = this.mCurrDrawable;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (needsMirroring()) {
            int i2 = rect.left;
            rect.left = rect.right;
            rect.right = i2;
        }
        return padding;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (drawable != this.mCurrDrawable || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.mDrawableContainerState.mAutoMirrored;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.mDrawableContainerState.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z2;
        Drawable drawable = this.mLastDrawable;
        boolean z3 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.mLastDrawable = null;
            z2 = true;
        } else {
            z2 = false;
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            this.mCurrDrawable.mutate().setAlpha(this.mAlpha);
        }
        if (this.mExitAnimationEnd != 0) {
            this.mExitAnimationEnd = 0L;
            z2 = true;
        }
        if (this.mEnterAnimationEnd != 0) {
            this.mEnterAnimationEnd = 0L;
        } else {
            z3 = z2;
        }
        if (z3) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mDrawableContainerState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.mLastDrawable;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        Drawable drawable = this.mLastDrawable;
        if (drawable != null) {
            return drawable.setLevel(i2);
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            return drawable2.setLevel(i2);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.mLastDrawable;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        if (drawable != this.mCurrDrawable || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j2);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x009d  */
    public boolean selectDrawable(int i2) {
        if (i2 == this.mCurIndex) {
            return false;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.mDrawableContainerState.mExitFadeDuration > 0) {
            Drawable drawable = this.mLastDrawable;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.mCurrDrawable;
            if (drawable2 != null) {
                this.mLastDrawable = drawable2;
                this.mExitAnimationEnd = ((long) this.mDrawableContainerState.mExitFadeDuration) + jUptimeMillis;
            } else {
                this.mLastDrawable = null;
                this.mExitAnimationEnd = 0L;
            }
        } else {
            Drawable drawable3 = this.mCurrDrawable;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i2 >= 0) {
            DrawableContainerState drawableContainerState = this.mDrawableContainerState;
            if (i2 < drawableContainerState.mNumChildren) {
                Drawable child = drawableContainerState.getChild(i2);
                this.mCurrDrawable = child;
                this.mCurIndex = i2;
                if (child != null) {
                    this.mInsets = child.getOpticalInsets();
                    child.mutate();
                    int i3 = this.mDrawableContainerState.mEnterFadeDuration;
                    if (i3 > 0) {
                        this.mEnterAnimationEnd = jUptimeMillis + ((long) i3);
                    } else {
                        child.setAlpha(this.mAlpha);
                    }
                    child.setVisible(isVisible(), true);
                    child.setDither(this.mDrawableContainerState.mDither);
                    child.setColorFilter(this.mColorFilter);
                    child.setState(getState());
                    child.setLevel(getLevel());
                    child.setBounds(getBounds());
                    child.setLayoutDirection(getLayoutDirection());
                    child.setAutoMirrored(this.mDrawableContainerState.mAutoMirrored);
                } else {
                    this.mInsets = Insets.NONE;
                }
            } else {
                this.mCurrDrawable = null;
                this.mInsets = Insets.NONE;
                this.mCurIndex = -1;
            }
        } else {
            this.mCurrDrawable = null;
            this.mInsets = Insets.NONE;
            this.mCurIndex = -1;
        }
        if (this.mEnterAnimationEnd != 0 || this.mExitAnimationEnd != 0) {
            Runnable runnable = this.mAnimationRunnable;
            if (runnable == null) {
                this.mAnimationRunnable = new Runnable() { // from class: android.graphics.drawable.DrawableContainer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DrawableContainer.this.animate(true);
                        DrawableContainer.this.invalidateSelf();
                    }
                };
            } else {
                unscheduleSelf(runnable);
            }
            animate(true);
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.mAlpha != i2) {
            this.mAlpha = i2;
            Drawable drawable = this.mCurrDrawable;
            if (drawable != null) {
                if (this.mEnterAnimationEnd == 0) {
                    drawable.mutate().setAlpha(i2);
                } else {
                    animate(false);
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z2) {
        this.mDrawableContainerState.mAutoMirrored = z2;
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            drawable.mutate().setAutoMirrored(this.mDrawableContainerState.mAutoMirrored);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.mColorFilter != colorFilter) {
            this.mColorFilter = colorFilter;
            Drawable drawable = this.mCurrDrawable;
            if (drawable != null) {
                drawable.mutate().setColorFilter(colorFilter);
            }
        }
    }

    public void setConstantState(DrawableContainerState drawableContainerState) {
        this.mDrawableContainerState = drawableContainerState;
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z2) {
        DrawableContainerState drawableContainerState = this.mDrawableContainerState;
        if (drawableContainerState.mDither != z2) {
            drawableContainerState.mDither = z2;
            Drawable drawable = this.mCurrDrawable;
            if (drawable != null) {
                drawable.mutate().setDither(this.mDrawableContainerState.mDither);
            }
        }
    }

    public void setEnterFadeDuration(int i2) {
        this.mDrawableContainerState.mEnterFadeDuration = i2;
    }

    public void setExitFadeDuration(int i2) {
        this.mDrawableContainerState.mExitFadeDuration = i2;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        Drawable drawable = this.mLastDrawable;
        if (drawable != null) {
            drawable.setVisible(z2, z3);
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            drawable2.setVisible(z2, z3);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.mCurrDrawable || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
