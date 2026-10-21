package android.widget;

import android.app.m;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbsSeekBar extends ProgressBar {
    private static final int NO_ALPHA = 255;
    private float mDisabledAlpha;
    private boolean mHasThumbTint;
    private boolean mHasThumbTintMode;
    private boolean mHasTickMarkTint;
    private boolean mHasTickMarkTintMode;
    private boolean mIsDragging;
    boolean mIsUserSeekable;
    private int mKeyProgressIncrement;
    private int mScaledTouchSlop;
    private boolean mSplitTrack;
    private final Rect mTempRect;
    private Drawable mThumb;
    private int mThumbOffset;
    private ColorStateList mThumbTintList;
    private PorterDuff.Mode mThumbTintMode;
    private Drawable mTickMark;
    private ColorStateList mTickMarkTintList;
    private PorterDuff.Mode mTickMarkTintMode;
    private float mTouchDownX;
    float mTouchProgressOffset;

    public AbsSeekBar(Context context) {
        super(context);
        this.mTempRect = new Rect();
        this.mThumbTintList = null;
        this.mThumbTintMode = null;
        this.mHasThumbTint = false;
        this.mHasThumbTintMode = false;
        this.mTickMarkTintList = null;
        this.mTickMarkTintMode = null;
        this.mHasTickMarkTint = false;
        this.mHasTickMarkTintMode = false;
        this.mIsUserSeekable = true;
        this.mKeyProgressIncrement = 1;
    }

    private void applyThumbTint() {
        Drawable drawable = this.mThumb;
        if (drawable != null) {
            if (this.mHasThumbTint || this.mHasThumbTintMode) {
                Drawable drawableMutate = drawable.mutate();
                this.mThumb = drawableMutate;
                if (this.mHasThumbTint) {
                    drawableMutate.setTintList(this.mThumbTintList);
                }
                if (this.mHasThumbTintMode) {
                    this.mThumb.setTintMode(this.mThumbTintMode);
                }
                if (this.mThumb.isStateful()) {
                    this.mThumb.setState(getDrawableState());
                }
            }
        }
    }

    private void applyTickMarkTint() {
        Drawable drawable = this.mTickMark;
        if (drawable != null) {
            if (this.mHasTickMarkTint || this.mHasTickMarkTintMode) {
                Drawable drawableMutate = drawable.mutate();
                this.mTickMark = drawableMutate;
                if (this.mHasTickMarkTint) {
                    drawableMutate.setTintList(this.mTickMarkTintList);
                }
                if (this.mHasTickMarkTintMode) {
                    this.mTickMark.setTintMode(this.mTickMarkTintMode);
                }
                if (this.mTickMark.isStateful()) {
                    this.mTickMark.setState(getDrawableState());
                }
            }
        }
    }

    private void attemptClaimDrag() {
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            viewParent.requestDisallowInterceptTouchEvent(true);
        }
    }

    private float getScale() {
        int min = getMin();
        int max = getMax() - min;
        if (max > 0) {
            return (getProgress() - min) / max;
        }
        return 0.0f;
    }

    private void setHotspot(float f2, float f3) {
        Drawable background = getBackground();
        if (background != null) {
            background.setHotspot(f2, f3);
        }
    }

    private void setThumbPos(int i2, Drawable drawable, float f2, int i3) {
        int i4;
        int i5 = (i2 - this.mPaddingLeft) - this.mPaddingRight;
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        int i6 = (this.mThumbOffset * 2) + (i5 - intrinsicWidth);
        int i7 = (int) ((f2 * i6) + 0.5f);
        if (i3 == Integer.MIN_VALUE) {
            Rect bounds = drawable.getBounds();
            i3 = bounds.top;
            i4 = bounds.bottom;
        } else {
            i4 = i3 + intrinsicHeight;
        }
        if (isLayoutRtl() && this.mMirrorForRtl) {
            i7 = i6 - i7;
        }
        int i8 = intrinsicWidth + i7;
        Drawable background = getBackground();
        if (background != null) {
            int i9 = this.mPaddingLeft - this.mThumbOffset;
            int i10 = this.mPaddingTop;
            background.setHotspotBounds(i7 + i9, i3 + i10, i9 + i8, i10 + i4);
        }
        drawable.setBounds(i7, i3, i8, i4);
    }

    private void startDrag(MotionEvent motionEvent) {
        setPressed(true);
        Drawable drawable = this.mThumb;
        if (drawable != null) {
            invalidate(drawable.getBounds());
        }
        onStartTrackingTouch();
        trackTouchEvent(motionEvent);
        attemptClaimDrag();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0041  */
    private void trackTouchEvent(MotionEvent motionEvent) {
        int iRound = Math.round(motionEvent.getX());
        int iRound2 = Math.round(motionEvent.getY());
        int width = getWidth();
        int i2 = (width - this.mPaddingLeft) - this.mPaddingRight;
        float f2 = 1.0f;
        float f3 = 0.0f;
        if (!isLayoutRtl() || !this.mMirrorForRtl) {
            int i3 = this.mPaddingLeft;
            if (iRound < i3) {
                f2 = 0.0f;
            } else if (iRound <= width - this.mPaddingRight) {
                f2 = (iRound - i3) / i2;
                f3 = this.mTouchProgressOffset;
            }
        } else if (iRound > width - this.mPaddingRight) {
            f2 = 0.0f;
        } else {
            int i4 = this.mPaddingLeft;
            if (iRound >= i4) {
                f2 = ((i2 - iRound) + i4) / i2;
                f3 = this.mTouchProgressOffset;
            }
        }
        float max = (f2 * (getMax() - getMin())) + f3;
        setHotspot(iRound, iRound2);
        setProgressInternal(Math.round(max), true, false);
    }

    private void updateThumbAndTrackPos(int i2, int i3) {
        int iB;
        int i4;
        int i5 = (i3 - this.mPaddingTop) - this.mPaddingBottom;
        Drawable currentDrawable = getCurrentDrawable();
        Drawable drawable = this.mThumb;
        int iMin = Math.min(this.mMaxHeight, i5);
        int intrinsicHeight = drawable == null ? 0 : drawable.getIntrinsicHeight();
        if (intrinsicHeight > iMin) {
            i4 = (i5 - intrinsicHeight) / 2;
            iB = m.b(intrinsicHeight, iMin, 2, i4);
        } else {
            int i6 = (i5 - iMin) / 2;
            int iB2 = m.b(iMin, intrinsicHeight, 2, i6);
            iB = i6;
            i4 = iB2;
        }
        if (currentDrawable != null) {
            currentDrawable.setBounds(0, iB, (i2 - this.mPaddingRight) - this.mPaddingLeft, iMin + iB);
        }
        if (drawable != null) {
            setThumbPos(i2, drawable, getScale(), i4);
        }
    }

    public boolean canUserSetProgress() {
        return !isIndeterminate() && isEnabled();
    }

    public void drawThumb(Canvas canvas) {
        if (this.mThumb != null) {
            int iSave = canvas.save();
            canvas.translate(this.mPaddingLeft - this.mThumbOffset, this.mPaddingTop);
            this.mThumb.draw(canvas);
            canvas.restoreToCount(iSave);
        }
    }

    public void drawTickMarks(Canvas canvas) {
        if (this.mTickMark != null) {
            int max = getMax() - getMin();
            if (max > 1) {
                int intrinsicWidth = this.mTickMark.getIntrinsicWidth();
                int intrinsicHeight = this.mTickMark.getIntrinsicHeight();
                int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i3 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.mTickMark.setBounds(-i2, -i3, i2, i3);
                float width = ((getWidth() - this.mPaddingLeft) - this.mPaddingRight) / max;
                int iSave = canvas.save();
                canvas.translate(this.mPaddingLeft, getHeight() / 2);
                for (int i4 = 0; i4 <= max; i4++) {
                    this.mTickMark.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }

    @Override // android.widget.ProgressBar
    public void drawTrack(Canvas canvas) {
        Drawable drawable = this.mThumb;
        if (drawable == null || !this.mSplitTrack) {
            super.drawTrack(canvas);
            drawTickMarks(canvas);
            return;
        }
        Insets opticalInsets = drawable.getOpticalInsets();
        Rect rect = this.mTempRect;
        drawable.copyBounds(rect);
        rect.offset(this.mPaddingLeft - this.mThumbOffset, this.mPaddingTop);
        rect.left += opticalInsets.left;
        rect.right -= opticalInsets.right;
        int iSave = canvas.save();
        canvas.clipRect(rect, Region.Op.DIFFERENCE);
        super.drawTrack(canvas);
        drawTickMarks(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void drawableHotspotChanged(float f2, float f3) {
        super.drawableHotspotChanged(f2, f3);
        Drawable drawable = this.mThumb;
        if (drawable != null) {
            drawable.setHotspot(f2, f3);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable progressDrawable = getProgressDrawable();
        if (progressDrawable != null && this.mDisabledAlpha < 1.0f) {
            progressDrawable.setAlpha(isEnabled() ? 255 : (int) (this.mDisabledAlpha * 255.0f));
        }
        Drawable drawable = this.mThumb;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidateDrawable(drawable);
        }
        Drawable drawable2 = this.mTickMark;
        if (drawable2 != null && drawable2.isStateful() && drawable2.setState(getDrawableState())) {
            invalidateDrawable(drawable2);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public CharSequence getAccessibilityClassName() {
        return AbsSeekBar.class.getName();
    }

    public int getKeyProgressIncrement() {
        return this.mKeyProgressIncrement;
    }

    public boolean getSplitTrack() {
        return this.mSplitTrack;
    }

    public Drawable getThumb() {
        return this.mThumb;
    }

    public int getThumbOffset() {
        return this.mThumbOffset;
    }

    public ColorStateList getThumbTintList() {
        return this.mThumbTintList;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.mThumbTintMode;
    }

    public Drawable getTickMark() {
        return this.mTickMark;
    }

    public ColorStateList getTickMarkTintList() {
        return this.mTickMarkTintList;
    }

    public PorterDuff.Mode getTickMarkTintMode() {
        return this.mTickMarkTintMode;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mThumb;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.mTickMark;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawThumb(canvas);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        if (isEnabled()) {
            int progress = getProgress();
            if (progress > getMin()) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
            }
            if (progress < getMax()) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            }
        }
    }

    public void onKeyChange() {
    }

    /* JADX WARN: Code duplicated, block: B:15:0x001d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0024  */
    /* JADX WARN: Code duplicated, block: B:21:0x0031  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (isEnabled()) {
            int i3 = this.mKeyProgressIncrement;
            if (i2 == 21) {
                i3 = -i3;
                if (isLayoutRtl()) {
                    i3 = -i3;
                }
                if (setProgressInternal(getProgress() + i3, true, true)) {
                    onKeyChange();
                    return true;
                }
            } else if (i2 == 22) {
                if (isLayoutRtl()) {
                    i3 = -i3;
                }
                if (setProgressInternal(getProgress() + i3, true, true)) {
                    onKeyChange();
                    return true;
                }
            } else {
                if (i2 == 69) {
                    i3 = -i3;
                } else if (i2 == 70 || i2 == 81) {
                }
                if (isLayoutRtl()) {
                    i3 = -i3;
                }
                if (setProgressInternal(getProgress() + i3, true, true)) {
                    onKeyChange();
                    return true;
                }
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
        setMeasuredDimension(View.resolveSizeAndState(this.mPaddingLeft + this.mPaddingRight + iMax2, i2, 0), View.resolveSizeAndState(this.mPaddingTop + this.mPaddingBottom + iMax, i3, 0));
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
        Drawable drawable = this.mThumb;
        if (drawable != null) {
            setThumbPos(getWidth(), drawable, getScale(), Integer.MIN_VALUE);
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        updateThumbAndTrackPos(i2, i3);
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
                startDrag(motionEvent);
            }
        } else if (isInScrollingContainer()) {
            this.mTouchDownX = motionEvent.getX();
        } else {
            startDrag(motionEvent);
        }
        return true;
    }

    @Override // android.widget.ProgressBar
    public void onVisualProgressChanged(int i2, float f2) {
        Drawable drawable;
        super.onVisualProgressChanged(i2, f2);
        if (i2 != 16908301 || (drawable = this.mThumb) == null) {
            return;
        }
        setThumbPos(getWidth(), drawable, f2, Integer.MIN_VALUE);
        invalidate();
    }

    @Override // android.view.View
    public boolean performAccessibilityActionInternal(int i2, Bundle bundle) {
        if (super.performAccessibilityActionInternal(i2, bundle)) {
            return true;
        }
        if (!isEnabled()) {
            return false;
        }
        if (i2 != 4096 && i2 != 8192) {
            if (i2 == 16908349 && canUserSetProgress() && bundle != null && bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")) {
                return setProgressInternal((int) bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"), true, true);
            }
            return false;
        }
        if (!canUserSetProgress()) {
            return false;
        }
        int iMax = Math.max(1, Math.round((getMax() - getMin()) / 20.0f));
        if (i2 == 8192) {
            iMax = -iMax;
        }
        if (!setProgressInternal(getProgress() + iMax, true, true)) {
            return false;
        }
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
        int max = getMax() - getMin();
        int i3 = this.mKeyProgressIncrement;
        if (i3 == 0 || max / i3 > 20) {
            setKeyProgressIncrement(Math.max(1, Math.round(max / 20.0f)));
        }
    }

    @Override // android.widget.ProgressBar
    public synchronized void setMin(int i2) {
        super.setMin(i2);
        int max = getMax() - getMin();
        int i3 = this.mKeyProgressIncrement;
        if (i3 == 0 || max / i3 > 20) {
            setKeyProgressIncrement(Math.max(1, Math.round(max / 20.0f)));
        }
    }

    public void setSplitTrack(boolean z2) {
        this.mSplitTrack = z2;
        invalidate();
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
        applyThumbTint();
        invalidate();
        if (z2) {
            updateThumbAndTrackPos(getWidth(), getHeight());
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

    public void setThumbTintList(ColorStateList colorStateList) {
        this.mThumbTintList = colorStateList;
        this.mHasThumbTint = true;
        applyThumbTint();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.mThumbTintMode = mode;
        this.mHasThumbTintMode = true;
        applyThumbTint();
    }

    public void setTickMark(Drawable drawable) {
        Drawable drawable2 = this.mTickMark;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.mTickMark = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            drawable.setLayoutDirection(getLayoutDirection());
            if (drawable.isStateful()) {
                drawable.setState(getDrawableState());
            }
            applyTickMarkTint();
        }
        invalidate();
    }

    public void setTickMarkTintList(ColorStateList colorStateList) {
        this.mTickMarkTintList = colorStateList;
        this.mHasTickMarkTint = true;
        applyTickMarkTint();
    }

    public void setTickMarkTintMode(PorterDuff.Mode mode) {
        this.mTickMarkTintMode = mode;
        this.mHasTickMarkTintMode = true;
        applyTickMarkTint();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mThumb || drawable == this.mTickMark || super.verifyDrawable(drawable);
    }

    public AbsSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempRect = new Rect();
        this.mThumbTintList = null;
        this.mThumbTintMode = null;
        this.mHasThumbTint = false;
        this.mHasThumbTintMode = false;
        this.mTickMarkTintList = null;
        this.mTickMarkTintMode = null;
        this.mHasTickMarkTint = false;
        this.mHasTickMarkTintMode = false;
        this.mIsUserSeekable = true;
        this.mKeyProgressIncrement = 1;
    }

    public AbsSeekBar(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public AbsSeekBar(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mTempRect = new Rect();
        this.mThumbTintList = null;
        this.mThumbTintMode = null;
        this.mHasThumbTint = false;
        this.mHasThumbTintMode = false;
        this.mTickMarkTintList = null;
        this.mTickMarkTintMode = null;
        this.mHasTickMarkTint = false;
        this.mHasTickMarkTintMode = false;
        this.mIsUserSeekable = true;
        this.mKeyProgressIncrement = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SeekBar, i2, i3);
        setThumb(typedArrayObtainStyledAttributes.getDrawable(0));
        if (typedArrayObtainStyledAttributes.hasValue(4)) {
            this.mThumbTintMode = Drawable.parseTintMode(typedArrayObtainStyledAttributes.getInt(4, -1), this.mThumbTintMode);
            this.mHasThumbTintMode = true;
        }
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.mThumbTintList = typedArrayObtainStyledAttributes.getColorStateList(3);
            this.mHasThumbTint = true;
        }
        setTickMark(typedArrayObtainStyledAttributes.getDrawable(5));
        if (typedArrayObtainStyledAttributes.hasValue(7)) {
            this.mTickMarkTintMode = Drawable.parseTintMode(typedArrayObtainStyledAttributes.getInt(7, -1), this.mTickMarkTintMode);
            this.mHasTickMarkTintMode = true;
        }
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            this.mTickMarkTintList = typedArrayObtainStyledAttributes.getColorStateList(6);
            this.mHasTickMarkTint = true;
        }
        this.mSplitTrack = typedArrayObtainStyledAttributes.getBoolean(2, false);
        setThumbOffset(typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, getThumbOffset()));
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(8, true);
        typedArrayObtainStyledAttributes.recycle();
        if (z2) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.Theme, 0, 0);
            this.mDisabledAlpha = typedArrayObtainStyledAttributes2.getFloat(3, 0.5f);
            typedArrayObtainStyledAttributes2.recycle();
        } else {
            this.mDisabledAlpha = 1.0f;
        }
        applyThumbTint();
        applyTickMarkTint();
        this.mScaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }
}
