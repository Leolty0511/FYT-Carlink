package android.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class CheckedTextView extends TextView implements Checkable {
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private int mBasePadding;
    private Drawable mCheckMarkDrawable;
    private int mCheckMarkResource;
    private int mCheckMarkWidth;
    private boolean mChecked;
    private boolean mNeedRequestlayout;

    public CheckedTextView(Context context) {
        this(context, null);
    }

    private void setBasePadding(boolean z2) {
        if (z2) {
            this.mBasePadding = this.mPaddingLeft;
        } else {
            this.mBasePadding = this.mPaddingRight;
        }
    }

    private void updatePadding() {
        resetPaddingToInitialValues();
        int i2 = this.mCheckMarkDrawable != null ? this.mCheckMarkWidth + this.mBasePadding : this.mBasePadding;
        if (isLayoutRtl()) {
            this.mNeedRequestlayout |= this.mPaddingLeft != i2;
            this.mPaddingLeft = i2;
        } else {
            this.mNeedRequestlayout |= this.mPaddingRight != i2;
            this.mPaddingRight = i2;
        }
        if (this.mNeedRequestlayout) {
            requestLayout();
            this.mNeedRequestlayout = false;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mCheckMarkDrawable != null) {
            this.mCheckMarkDrawable.setState(getDrawableState());
            invalidate();
        }
    }

    public Drawable getCheckMarkDrawable() {
        return this.mCheckMarkDrawable;
    }

    @Override // android.view.View
    public void internalSetPadding(int i2, int i3, int i4, int i5) {
        super.internalSetPadding(i2, i3, i4, i5);
        setBasePadding(isLayoutRtl());
    }

    @Override // android.widget.Checkable
    @ViewDebug.ExportedProperty
    public boolean isChecked() {
        return this.mChecked;
    }

    @Override // android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i2) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECKED_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        int i2;
        int i3;
        super.onDraw(canvas);
        Drawable drawable = this.mCheckMarkDrawable;
        if (drawable != null) {
            int gravity = getGravity() & 112;
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int height = 0;
            if (gravity == 16) {
                height = (getHeight() - intrinsicHeight) / 2;
            } else if (gravity == 80) {
                height = getHeight() - intrinsicHeight;
            }
            boolean zIsLayoutRtl = isLayoutRtl();
            int width = getWidth();
            int i4 = intrinsicHeight + height;
            if (zIsLayoutRtl) {
                i3 = this.mBasePadding;
                i2 = this.mCheckMarkWidth + i3;
            } else {
                i2 = width - this.mBasePadding;
                i3 = i2 - this.mCheckMarkWidth;
            }
            int i5 = this.mScrollX;
            drawable.setBounds(i3 + i5, height, i5 + i2, i4);
            drawable.draw(canvas);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(CheckedTextView.class.getName());
        accessibilityEvent.setChecked(this.mChecked);
    }

    @Override // android.widget.TextView, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(CheckedTextView.class.getName());
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(this.mChecked);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        updatePadding();
    }

    public void setCheckMarkDrawable(int i2) {
        if (i2 == 0 || i2 != this.mCheckMarkResource) {
            this.mCheckMarkResource = i2;
            setCheckMarkDrawable(i2 != 0 ? getResources().getDrawable(this.mCheckMarkResource) : null);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z2) {
        if (this.mChecked != z2) {
            this.mChecked = z2;
            refreshDrawableState();
            notifyViewAccessibilityStateChangedIfNeeded(0);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.mChecked);
    }

    public CheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkedTextViewStyle);
    }

    public CheckedTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.CheckedTextView, i2, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        if (drawable != null) {
            setCheckMarkDrawable(drawable);
        }
        setChecked(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setCheckMarkDrawable(Drawable drawable) {
        Drawable drawable2 = this.mCheckMarkDrawable;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.mCheckMarkDrawable);
        }
        this.mNeedRequestlayout = drawable != this.mCheckMarkDrawable;
        if (drawable != null) {
            drawable.setCallback(this);
            drawable.setVisible(getVisibility() == 0, false);
            drawable.setState(CHECKED_STATE_SET);
            setMinHeight(drawable.getIntrinsicHeight());
            this.mCheckMarkWidth = drawable.getIntrinsicWidth();
            drawable.setState(getDrawableState());
        } else {
            this.mCheckMarkWidth = 0;
        }
        this.mCheckMarkDrawable = drawable;
        resolvePadding();
    }
}
