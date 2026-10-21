package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbsSeekBar extends ProgressBar {
    private static final int NO_ALPHA = 255;
    private float mDisabledAlpha;
    private boolean mIsDragging;
    public boolean mIsUserSeekable;
    private int mKeyProgressIncrement;
    private int mScaledTouchSlop;
    private Drawable mThumb;
    private int mThumbOffset;
    private float mTouchDownX;
    public float mTouchProgressOffset;

    public AbsSeekBar(Context context) {
        super(context);
        this.mIsUserSeekable = true;
        this.mKeyProgressIncrement = 1;
    }

    private void attemptClaimDrag() {
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            viewParent.requestDisallowInterceptTouchEvent(true);
        }
    }

    private void setThumbPos(int i2, Drawable drawable, float f2, int i3) {
        int i4;
        int i5 = (i2 - this.mPaddingLeft) - this.mPaddingRight;
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        int i6 = (i5 - intrinsicWidth) + (this.mThumbOffset * 2);
        int i7 = (int) (f2 * i6);
        if (i3 == Integer.MIN_VALUE) {
            Rect bounds = drawable.getBounds();
            int i8 = bounds.top;
            i4 = bounds.bottom;
            i3 = i8;
        } else {
            i4 = intrinsicHeight + i3;
        }
        if (isLayoutRtl() && this.mMirrorForRtl) {
            i7 = i6 - i7;
        }
        drawable.setBounds(i7, i3, intrinsicWidth + i7, i4);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0036  */
    private void trackTouchEvent(MotionEvent motionEvent) {
        int width = getWidth();
        int i2 = (width - this.mPaddingLeft) - this.mPaddingRight;
        int x2 = (int) motionEvent.getX();
        float f2 = 1.0f;
        float f3 = 0.0f;
        if (!isLayoutRtl() || !this.mMirrorForRtl) {
            int i3 = this.mPaddingLeft;
            if (x2 < i3) {
                f2 = 0.0f;
            } else if (x2 <= width - this.mPaddingRight) {
                f2 = (x2 - i3) / i2;
                f3 = this.mTouchProgressOffset;
            }
        } else if (x2 > width - this.mPaddingRight) {
            f2 = 0.0f;
        } else {
            int i4 = this.mPaddingLeft;
            if (x2 >= i4) {
                f2 = ((i2 - x2) + i4) / i2;
                f3 = this.mTouchProgressOffset;
            }
        }
        setProgress((int) (f3 + (f2 * getMax())), true);
    }

    private void updateThumbPos(int i2, int i3) {
        Drawable currentDrawable = getCurrentDrawable();
        Drawable drawable = this.mThumb;
        int intrinsicHeight = drawable == null ? 0 : drawable.getIntrinsicHeight();
        int iMin = Math.min(this.mMaxHeight, (i3 - this.mPaddingTop) - this.mPaddingBottom);
        int max = getMax();
        float progress = max > 0 ? getProgress() / max : 0.0f;
        if (intrinsicHeight > iMin) {
            if (drawable != null) {
                setThumbPos(i2, drawable, progress, 0);
            }
            int i4 = (intrinsicHeight - iMin) / 2;
            if (currentDrawable != null) {
                currentDrawable.setBounds(0, i4, (i2 - this.mPaddingRight) - this.mPaddingLeft, ((i3 - this.mPaddingBottom) - i4) - this.mPaddingTop);
                return;
            }
            return;
        }
        if (currentDrawable != null) {
            currentDrawable.setBounds(0, 0, (i2 - this.mPaddingRight) - this.mPaddingLeft, (i3 - this.mPaddingBottom) - this.mPaddingTop);
        }
        int i5 = (iMin - intrinsicHeight) / 2;
        if (drawable != null) {
            setThumbPos(i2, drawable, progress, i5);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setAlpha(isEnabled() ? 255 : (int) (this.mDisabledAlpha * 255.0f));
        }
        Drawable drawable = this.mThumb;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.mThumb.setState(getDrawableState());
    }

    public int getKeyProgressIncrement() {
        return this.mKeyProgressIncrement;
    }

    public Drawable getThumb() {
        return this.mThumb;
    }

    public int getThumbOffset() {
        return this.mThumbOffset;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mThumb;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mThumb != null) {
            canvas.save();
            canvas.translate(this.mPaddingLeft - this.mThumbOffset, this.mPaddingTop);
            this.mThumb.draw(canvas);
            canvas.restore();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(AbsSeekBar.class.getName());
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(AbsSeekBar.class.getName());
        if (isEnabled()) {
            int progress = getProgress();
            if (progress > 0) {
                accessibilityNodeInfo.addAction(8192);
            }
            if (progress < getMax()) {
                accessibilityNodeInfo.addAction(4096);
            }
        }
    }

    public void onKeyChange() {
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (isEnabled()) {
            int progress = getProgress();
            if (i2 != 21) {
                if (i2 == 22 && progress < getMax()) {
                    setProgress(progress + this.mKeyProgressIncrement, true);
                    onKeyChange();
                    return true;
                }
            } else if (progress > 0) {
                setProgress(progress - this.mKeyProgressIncrement, true);
                onKeyChange();
                return true;
            }
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i2, int i3) {
        int iMax;
        int iMax2;
        Drawable currentDrawable = getCurrentDrawable();
        Drawable drawable = this.mThumb;
        int intrinsicHeight = drawable == null ? 0 : drawable.getIntrinsicHeight();
        if (currentDrawable != null) {
            iMax2 = Math.max(((ProgressBar) this).mMinWidth, Math.min(this.mMaxWidth, currentDrawable.getIntrinsicWidth()));
            iMax = Math.max(intrinsicHeight, Math.max(((ProgressBar) this).mMinHeight, Math.min(this.mMaxHeight, currentDrawable.getIntrinsicHeight())));
        } else {
            iMax = 0;
            iMax2 = 0;
        }
        setMeasuredDimension(View.resolveSizeAndState(iMax2 + this.mPaddingLeft + this.mPaddingRight, i2, 0), View.resolveSizeAndState(iMax + this.mPaddingTop + this.mPaddingBottom, i3, 0));
    }

    @Override // android.widget.ProgressBar
    public void onProgressRefresh(float f2, boolean z2) {
        super.onProgressRefresh(f2, z2);
        Drawable drawable = this.mThumb;
        if (drawable != null) {
            setThumbPos(getWidth(), drawable, f2, Integer.MIN_VALUE);
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onResolveDrawables(int i2) {
        super.onResolveDrawables(i2);
        Drawable drawable = this.mThumb;
        if (drawable != null) {
            drawable.setLayoutDirection(i2);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        int max = getMax();
        float progress = max > 0 ? getProgress() / max : 0.0f;
        Drawable drawable = this.mThumb;
        if (drawable != null) {
            setThumbPos(getWidth(), drawable, progress, Integer.MIN_VALUE);
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        updateThumbPos(i2, i3);
    }

    public void onStartTrackingTouch() {
        this.mIsDragging = true;
    }

    public void onStopTrackingTouch() {
        this.mIsDragging = false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mIsUserSeekable || !isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                if (this.mIsDragging) {
                    trackTouchEvent(motionEvent);
                    onStopTrackingTouch();
                    setPressed(false);
                } else {
                    onStartTrackingTouch();
                    trackTouchEvent(motionEvent);
                    onStopTrackingTouch();
                }
                invalidate();
            } else if (action != 2) {
                if (action == 3) {
                    if (this.mIsDragging) {
                        onStopTrackingTouch();
                        setPressed(false);
                    }
                    invalidate();
                }
            } else if (this.mIsDragging) {
                trackTouchEvent(motionEvent);
            } else if (Math.abs(motionEvent.getX() - this.mTouchDownX) > this.mScaledTouchSlop) {
                setPressed(true);
                Drawable drawable = this.mThumb;
                if (drawable != null) {
                    invalidate(drawable.getBounds());
                }
                onStartTrackingTouch();
                trackTouchEvent(motionEvent);
                attemptClaimDrag();
            }
        } else if (isInScrollingContainer()) {
            this.mTouchDownX = motionEvent.getX();
        } else {
            setPressed(true);
            Drawable drawable2 = this.mThumb;
            if (drawable2 != null) {
                invalidate(drawable2.getBounds());
            }
            onStartTrackingTouch();
            trackTouchEvent(motionEvent);
            attemptClaimDrag();
        }
        return true;
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        if (super.performAccessibilityAction(i2, bundle)) {
            return true;
        }
        if (!isEnabled()) {
            return false;
        }
        int progress = getProgress();
        int iMax = Math.max(1, Math.round(getMax() / 5.0f));
        if (i2 == 4096) {
            if (progress >= getMax()) {
                return false;
            }
            setProgress(progress + iMax, true);
            onKeyChange();
            return true;
        }
        if (i2 != 8192 || progress <= 0) {
            return false;
        }
        setProgress(progress - iMax, true);
        onKeyChange();
        return true;
    }

    public void setKeyProgressIncrement(int i2) {
        if (i2 < 0) {
            i2 = -i2;
        }
        this.mKeyProgressIncrement = i2;
    }

    @Override // android.widget.ProgressBar
    public synchronized void setMax(int i2) {
        super.setMax(i2);
        if (this.mKeyProgressIncrement == 0 || getMax() / this.mKeyProgressIncrement > 20) {
            setKeyProgressIncrement(Math.max(1, Math.round(getMax() / 20.0f)));
        }
    }

    public void setThumb(Drawable drawable) {
        boolean z2;
        Drawable drawable2 = this.mThumb;
        if (drawable2 == null || drawable == drawable2) {
            z2 = false;
        } else {
            drawable2.setCallback(null);
            z2 = true;
        }
        if (drawable != null) {
            drawable.setCallback(this);
            if (canResolveLayoutDirection()) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            this.mThumbOffset = drawable.getIntrinsicWidth() / 2;
            if (z2 && (drawable.getIntrinsicWidth() != this.mThumb.getIntrinsicWidth() || drawable.getIntrinsicHeight() != this.mThumb.getIntrinsicHeight())) {
                requestLayout();
            }
        }
        this.mThumb = drawable;
        invalidate();
        if (z2) {
            updateThumbPos(getWidth(), getHeight());
            if (drawable == null || !drawable.isStateful()) {
                return;
            }
            drawable.setState(getDrawableState());
        }
    }

    public void setThumbOffset(int i2) {
        this.mThumbOffset = i2;
        invalidate();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mThumb || super.verifyDrawable(drawable);
    }

    public AbsSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIsUserSeekable = true;
        this.mKeyProgressIncrement = 1;
    }

    public AbsSeekBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mIsUserSeekable = true;
        this.mKeyProgressIncrement = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.SeekBar, i2, 0);
        setThumb(typedArrayObtainStyledAttributes.getDrawable(0));
        setThumbOffset(typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, getThumbOffset()));
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, a.Theme, 0, 0);
        this.mDisabledAlpha = typedArrayObtainStyledAttributes2.getFloat(3, 0.5f);
        typedArrayObtainStyledAttributes2.recycle();
        this.mScaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }
}
