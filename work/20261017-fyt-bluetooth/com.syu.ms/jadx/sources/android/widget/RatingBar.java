package android.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.shapes.RectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class RatingBar extends AbsSeekBar {
    private int mNumStars;
    private OnRatingBarChangeListener mOnRatingBarChangeListener;
    private int mProgressOnStartTracking;

    public interface OnRatingBarChangeListener {
        void onRatingChanged(RatingBar ratingBar, float f2, boolean z2);
    }

    public RatingBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mNumStars = 5;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.RatingBar, i2, 0);
        int i3 = typedArrayObtainStyledAttributes.getInt(0, this.mNumStars);
        setIsIndicator(typedArrayObtainStyledAttributes.getBoolean(3, !this.mIsUserSeekable));
        float f2 = typedArrayObtainStyledAttributes.getFloat(1, -1.0f);
        float f3 = typedArrayObtainStyledAttributes.getFloat(2, -1.0f);
        typedArrayObtainStyledAttributes.recycle();
        if (i3 > 0 && i3 != this.mNumStars) {
            setNumStars(i3);
        }
        if (f3 >= 0.0f) {
            setStepSize(f3);
        } else {
            setStepSize(0.5f);
        }
        if (f2 >= 0.0f) {
            setRating(f2);
        }
        this.mTouchProgressOffset = 1.1f;
    }

    private float getProgressPerStar() {
        if (this.mNumStars > 0) {
            return (getMax() * 1.0f) / this.mNumStars;
        }
        return 1.0f;
    }

    private void updateSecondaryProgress(int i2) {
        float progressPerStar = getProgressPerStar();
        if (progressPerStar > 0.0f) {
            setSecondaryProgress((int) (Math.ceil(i2 / progressPerStar) * ((double) progressPerStar)));
        }
    }

    public void dispatchRatingChange(boolean z2) {
        OnRatingBarChangeListener onRatingBarChangeListener = this.mOnRatingBarChangeListener;
        if (onRatingBarChangeListener != null) {
            onRatingBarChangeListener.onRatingChanged(this, getRating(), z2);
        }
    }

    @Override // android.widget.ProgressBar
    public Shape getDrawableShape() {
        return new RectShape();
    }

    public int getNumStars() {
        return this.mNumStars;
    }

    public OnRatingBarChangeListener getOnRatingBarChangeListener() {
        return this.mOnRatingBarChangeListener;
    }

    public float getRating() {
        return getProgress() / getProgressPerStar();
    }

    public float getStepSize() {
        return getNumStars() / getMax();
    }

    public boolean isIndicator() {
        return !this.mIsUserSeekable;
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(RatingBar.class.getName());
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(RatingBar.class.getName());
    }

    @Override // android.widget.AbsSeekBar
    public void onKeyChange() {
        super.onKeyChange();
        dispatchRatingChange(true);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        Bitmap bitmap = this.mSampleTile;
        if (bitmap != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * this.mNumStars, i2, 0), getMeasuredHeight());
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar
    public void onProgressRefresh(float f2, boolean z2) {
        super.onProgressRefresh(f2, z2);
        updateSecondaryProgress(getProgress());
        if (z2) {
            return;
        }
        dispatchRatingChange(false);
    }

    @Override // android.widget.AbsSeekBar
    public void onStartTrackingTouch() {
        this.mProgressOnStartTracking = getProgress();
        super.onStartTrackingTouch();
    }

    @Override // android.widget.AbsSeekBar
    public void onStopTrackingTouch() {
        super.onStopTrackingTouch();
        if (getProgress() != this.mProgressOnStartTracking) {
            dispatchRatingChange(true);
        }
    }

    public void setIsIndicator(boolean z2) {
        this.mIsUserSeekable = !z2;
        setFocusable(!z2);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar
    public synchronized void setMax(int i2) {
        if (i2 <= 0) {
            return;
        }
        super.setMax(i2);
    }

    public void setNumStars(int i2) {
        if (i2 <= 0) {
            return;
        }
        this.mNumStars = i2;
        requestLayout();
    }

    public void setOnRatingBarChangeListener(OnRatingBarChangeListener onRatingBarChangeListener) {
        this.mOnRatingBarChangeListener = onRatingBarChangeListener;
    }

    public void setRating(float f2) {
        setProgress(Math.round(f2 * getProgressPerStar()));
    }

    public void setStepSize(float f2) {
        if (f2 <= 0.0f) {
            return;
        }
        float f3 = this.mNumStars / f2;
        int max = (int) ((f3 / getMax()) * getProgress());
        setMax((int) f3);
        setProgress(max);
    }

    public RatingBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.ratingBarStyle);
    }

    public RatingBar(Context context) {
        this(context, null);
    }
}
