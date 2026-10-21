package android.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.http.CharArrayBuffers;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.AllCapsTransformationMethod;
import android.text.method.TransformationMethod2;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class Switch extends CompoundButton {
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int MONOSPACE = 3;
    private static final int SANS = 1;
    private static final int SERIF = 2;
    private static final int TOUCH_MODE_DOWN = 1;
    private static final int TOUCH_MODE_DRAGGING = 2;
    private static final int TOUCH_MODE_IDLE = 0;
    private int mMinFlingVelocity;
    private Layout mOffLayout;
    private Layout mOnLayout;
    private int mSwitchBottom;
    private int mSwitchHeight;
    private int mSwitchLeft;
    private int mSwitchMinWidth;
    private int mSwitchPadding;
    private int mSwitchRight;
    private int mSwitchTop;
    private TransformationMethod2 mSwitchTransformationMethod;
    private int mSwitchWidth;
    private final Rect mTempRect;
    private ColorStateList mTextColors;
    private CharSequence mTextOff;
    private CharSequence mTextOn;
    private TextPaint mTextPaint;
    private Drawable mThumbDrawable;
    private float mThumbPosition;
    private int mThumbTextPadding;
    private int mThumbWidth;
    private int mTouchMode;
    private int mTouchSlop;
    private float mTouchX;
    private float mTouchY;
    private Drawable mTrackDrawable;
    private VelocityTracker mVelocityTracker;

    public Switch(Context context) {
        this(context, null);
    }

    private void animateThumbToCheckedState(boolean z2) {
        setChecked(z2);
    }

    private void cancelSuperTouch(MotionEvent motionEvent) {
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.setAction(3);
        super.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    private boolean getTargetCheckedState() {
        if (isLayoutRtl()) {
            return this.mThumbPosition <= ((float) (getThumbScrollRange() / 2));
        }
        return this.mThumbPosition >= ((float) (getThumbScrollRange() / 2));
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.mTrackDrawable;
        if (drawable == null) {
            return 0;
        }
        drawable.getPadding(this.mTempRect);
        int i2 = this.mSwitchWidth - this.mThumbWidth;
        Rect rect = this.mTempRect;
        return (i2 - rect.left) - rect.right;
    }

    private boolean hitThumb(float f2, float f3) {
        this.mThumbDrawable.getPadding(this.mTempRect);
        int i2 = this.mSwitchTop;
        int i3 = this.mTouchSlop;
        int i4 = i2 - i3;
        int i5 = (this.mSwitchLeft + ((int) (this.mThumbPosition + 0.5f))) - i3;
        int i6 = this.mThumbWidth + i5;
        Rect rect = this.mTempRect;
        return f2 > ((float) i5) && f2 < ((float) (((i6 + rect.left) + rect.right) + i3)) && f3 > ((float) i4) && f3 < ((float) (this.mSwitchBottom + i3));
    }

    private Layout makeLayout(CharSequence charSequence) {
        TransformationMethod2 transformationMethod2 = this.mSwitchTransformationMethod;
        if (transformationMethod2 != null) {
            charSequence = transformationMethod2.getTransformation(charSequence, this);
        }
        CharSequence charSequence2 = charSequence;
        TextPaint textPaint = this.mTextPaint;
        return new StaticLayout(charSequence2, textPaint, (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    private void setSwitchTypefaceByIndex(int i2, int i3) {
        Typeface typeface;
        if (i2 == 1) {
            typeface = Typeface.SANS_SERIF;
        } else if (i2 != 2) {
            typeface = i2 != 3 ? null : Typeface.MONOSPACE;
        } else {
            typeface = Typeface.SERIF;
        }
        setSwitchTypeface(typeface, i3);
    }

    private void setThumbPosition(boolean z2) {
        if (isLayoutRtl()) {
            this.mThumbPosition = z2 ? 0.0f : getThumbScrollRange();
        } else {
            this.mThumbPosition = z2 ? getThumbScrollRange() : 0.0f;
        }
    }

    private void stopDrag(MotionEvent motionEvent) {
        boolean targetCheckedState = false;
        this.mTouchMode = 0;
        boolean z2 = motionEvent.getAction() == 1 && isEnabled();
        cancelSuperTouch(motionEvent);
        if (!z2) {
            animateThumbToCheckedState(isChecked());
            return;
        }
        this.mVelocityTracker.computeCurrentVelocity(1000);
        float xVelocity = this.mVelocityTracker.getXVelocity();
        if (Math.abs(xVelocity) <= this.mMinFlingVelocity) {
            targetCheckedState = getTargetCheckedState();
        } else if (!isLayoutRtl() ? xVelocity > 0.0f : xVelocity < 0.0f) {
            targetCheckedState = true;
        }
        animateThumbToCheckedState(targetCheckedState);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.mThumbDrawable;
        if (drawable != null) {
            drawable.setState(drawableState);
        }
        Drawable drawable2 = this.mTrackDrawable;
        if (drawable2 != null) {
            drawable2.setState(drawableState);
        }
        invalidate();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!isLayoutRtl()) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.mSwitchWidth;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.mSwitchPadding : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (isLayoutRtl()) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.mSwitchWidth;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.mSwitchPadding : compoundPaddingRight;
    }

    public int getSwitchMinWidth() {
        return this.mSwitchMinWidth;
    }

    public int getSwitchPadding() {
        return this.mSwitchPadding;
    }

    public CharSequence getTextOff() {
        return this.mTextOff;
    }

    public CharSequence getTextOn() {
        return this.mTextOn;
    }

    public Drawable getThumbDrawable() {
        return this.mThumbDrawable;
    }

    public int getThumbTextPadding() {
        return this.mThumbTextPadding;
    }

    public Drawable getTrackDrawable() {
        return this.mTrackDrawable;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.mThumbDrawable.jumpToCurrentState();
        this.mTrackDrawable.jumpToCurrentState();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i2) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECKED_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i2 = this.mSwitchLeft;
        int i3 = this.mSwitchTop;
        int i4 = this.mSwitchRight;
        int i5 = this.mSwitchBottom;
        this.mTrackDrawable.setBounds(i2, i3, i4, i5);
        this.mTrackDrawable.draw(canvas);
        canvas.save();
        this.mTrackDrawable.getPadding(this.mTempRect);
        Rect rect = this.mTempRect;
        int i6 = i2 + rect.left;
        int i7 = rect.top + i3;
        int i8 = i4 - rect.right;
        int i9 = i5 - rect.bottom;
        canvas.clipRect(i6, i3, i8, i5);
        this.mThumbDrawable.getPadding(this.mTempRect);
        int i10 = (int) (this.mThumbPosition + 0.5f);
        Rect rect2 = this.mTempRect;
        int i11 = (i6 - rect2.left) + i10;
        int i12 = i6 + i10 + this.mThumbWidth + rect2.right;
        this.mThumbDrawable.setBounds(i11, i3, i12, i5);
        this.mThumbDrawable.draw(canvas);
        ColorStateList colorStateList = this.mTextColors;
        if (colorStateList != null) {
            this.mTextPaint.setColor(colorStateList.getColorForState(getDrawableState(), this.mTextColors.getDefaultColor()));
        }
        this.mTextPaint.drawableState = getDrawableState();
        Layout layout = getTargetCheckedState() ? this.mOnLayout : this.mOffLayout;
        if (layout != null) {
            canvas.translate(((i11 + i12) / 2) - (layout.getWidth() / 2), ((i7 + i9) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restore();
    }

    @Override // android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Switch.class.getName());
    }

    @Override // android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Switch.class.getName());
        CharSequence charSequence = isChecked() ? this.mTextOn : this.mTextOff;
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        CharSequence text = accessibilityNodeInfo.getText();
        if (TextUtils.isEmpty(text)) {
            accessibilityNodeInfo.setText(charSequence);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(text);
        sb.append(CharArrayBuffers.uppercaseAddon);
        sb.append(charSequence);
        accessibilityNodeInfo.setText(sb);
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int width;
        int paddingLeft;
        int i6;
        int paddingTop;
        int height;
        super.onLayout(z2, i2, i3, i4, i5);
        setThumbPosition(isChecked());
        if (isLayoutRtl()) {
            paddingLeft = getPaddingLeft();
            width = this.mSwitchWidth + paddingLeft;
        } else {
            width = getWidth() - getPaddingRight();
            paddingLeft = width - this.mSwitchWidth;
        }
        int gravity = getGravity() & 112;
        if (gravity != 16) {
            if (gravity != 80) {
                paddingTop = getPaddingTop();
                i6 = this.mSwitchHeight;
            } else {
                height = getHeight() - getPaddingBottom();
                paddingTop = height - this.mSwitchHeight;
            }
            this.mSwitchLeft = paddingLeft;
            this.mSwitchTop = paddingTop;
            this.mSwitchBottom = height;
            this.mSwitchRight = width;
        }
        int paddingTop2 = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2;
        i6 = this.mSwitchHeight;
        paddingTop = paddingTop2 - (i6 / 2);
        height = i6 + paddingTop;
        this.mSwitchLeft = paddingLeft;
        this.mSwitchTop = paddingTop;
        this.mSwitchBottom = height;
        this.mSwitchRight = width;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i3) {
        if (this.mOnLayout == null) {
            this.mOnLayout = makeLayout(this.mTextOn);
        }
        if (this.mOffLayout == null) {
            this.mOffLayout = makeLayout(this.mTextOff);
        }
        this.mTrackDrawable.getPadding(this.mTempRect);
        int iMax = Math.max(this.mOnLayout.getWidth(), this.mOffLayout.getWidth());
        int i4 = this.mSwitchMinWidth;
        int i5 = (iMax * 2) + (this.mThumbTextPadding * 4);
        Rect rect = this.mTempRect;
        int iMax2 = Math.max(i4, i5 + rect.left + rect.right);
        int intrinsicHeight = this.mTrackDrawable.getIntrinsicHeight();
        this.mThumbWidth = iMax + (this.mThumbTextPadding * 2);
        this.mSwitchWidth = iMax2;
        this.mSwitchHeight = intrinsicHeight;
        super.onMeasure(i2, i3);
        if (getMeasuredHeight() < intrinsicHeight) {
            setMeasuredDimension(getMeasuredWidthAndState(), intrinsicHeight);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        Layout layout = isChecked() ? this.mOnLayout : this.mOffLayout;
        if (layout == null || TextUtils.isEmpty(layout.getText())) {
            return;
        }
        accessibilityEvent.getText().add(layout.getText());
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0079  */
    /* JADX WARN: Code duplicated, block: B:26:0x007d  */
    /* JADX WARN: Code duplicated, block: B:28:0x0081  */
    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            if (isEnabled() && hitThumb(x2, y2)) {
                this.mTouchMode = 1;
                this.mTouchX = x2;
                this.mTouchY = y2;
            }
        } else if (actionMasked == 1) {
            if (this.mTouchMode == 2) {
                stopDrag(motionEvent);
                return true;
            }
            this.mTouchMode = 0;
            this.mVelocityTracker.clear();
        } else if (actionMasked == 2) {
            int i2 = this.mTouchMode;
            if (i2 == 1) {
                float x3 = motionEvent.getX();
                float y3 = motionEvent.getY();
                if (Math.abs(x3 - this.mTouchX) > this.mTouchSlop || Math.abs(y3 - this.mTouchY) > this.mTouchSlop) {
                    this.mTouchMode = 2;
                    getParent().requestDisallowInterceptTouchEvent(true);
                    this.mTouchX = x3;
                    this.mTouchY = y3;
                    return true;
                }
            } else if (i2 == 2) {
                float x4 = motionEvent.getX();
                float fMax = Math.max(0.0f, Math.min(this.mThumbPosition + (x4 - this.mTouchX), getThumbScrollRange()));
                if (fMax != this.mThumbPosition) {
                    this.mThumbPosition = fMax;
                    this.mTouchX = x4;
                    invalidate();
                }
                return true;
            }
        } else if (actionMasked == 3) {
            if (this.mTouchMode == 2) {
                stopDrag(motionEvent);
                return true;
            }
            this.mTouchMode = 0;
            this.mVelocityTracker.clear();
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z2) {
        super.setChecked(z2);
        setThumbPosition(isChecked());
        invalidate();
    }

    public void setSwitchMinWidth(int i2) {
        this.mSwitchMinWidth = i2;
        requestLayout();
    }

    public void setSwitchPadding(int i2) {
        this.mSwitchPadding = i2;
        requestLayout();
    }

    public void setSwitchTextAppearance(Context context, int i2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i2, a.TextAppearance);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(3);
        if (colorStateList != null) {
            this.mTextColors = colorStateList;
        } else {
            this.mTextColors = getTextColors();
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        if (dimensionPixelSize != 0) {
            float f2 = dimensionPixelSize;
            if (f2 != this.mTextPaint.getTextSize()) {
                this.mTextPaint.setTextSize(f2);
                requestLayout();
            }
        }
        setSwitchTypefaceByIndex(typedArrayObtainStyledAttributes.getInt(1, -1), typedArrayObtainStyledAttributes.getInt(2, -1));
        if (typedArrayObtainStyledAttributes.getBoolean(11, false)) {
            AllCapsTransformationMethod allCapsTransformationMethod = new AllCapsTransformationMethod(getContext());
            this.mSwitchTransformationMethod = allCapsTransformationMethod;
            allCapsTransformationMethod.setLengthChangesAllowed(true);
        } else {
            this.mSwitchTransformationMethod = null;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setSwitchTypeface(Typeface typeface, int i2) {
        if (i2 <= 0) {
            this.mTextPaint.setFakeBoldText(false);
            this.mTextPaint.setTextSkewX(0.0f);
            setSwitchTypeface(typeface);
        } else {
            Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i2) : Typeface.create(typeface, i2);
            setSwitchTypeface(typefaceDefaultFromStyle);
            int i3 = (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i2;
            this.mTextPaint.setFakeBoldText((i3 & 1) != 0);
            this.mTextPaint.setTextSkewX((i3 & 2) != 0 ? -0.25f : 0.0f);
        }
    }

    public void setTextOff(CharSequence charSequence) {
        this.mTextOff = charSequence;
        requestLayout();
    }

    public void setTextOn(CharSequence charSequence) {
        this.mTextOn = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(Drawable drawable) {
        this.mThumbDrawable = drawable;
        requestLayout();
    }

    public void setThumbResource(int i2) {
        setThumbDrawable(getContext().getResources().getDrawable(i2));
    }

    public void setThumbTextPadding(int i2) {
        this.mThumbTextPadding = i2;
        requestLayout();
    }

    public void setTrackDrawable(Drawable drawable) {
        this.mTrackDrawable = drawable;
        requestLayout();
    }

    public void setTrackResource(int i2) {
        setTrackDrawable(getContext().getResources().getDrawable(i2));
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mThumbDrawable || drawable == this.mTrackDrawable;
    }

    public Switch(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843807);
    }

    public Switch(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mVelocityTracker = VelocityTracker.obtain();
        this.mTempRect = new Rect();
        this.mTextPaint = new TextPaint(1);
        Resources resources = getResources();
        this.mTextPaint.density = resources.getDisplayMetrics().density;
        this.mTextPaint.setCompatibilityScaling(resources.getCompatibilityInfo().applicationScale);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.Switch, i2, 0);
        this.mThumbDrawable = typedArrayObtainStyledAttributes.getDrawable(2);
        this.mTrackDrawable = typedArrayObtainStyledAttributes.getDrawable(4);
        this.mTextOn = typedArrayObtainStyledAttributes.getText(0);
        this.mTextOff = typedArrayObtainStyledAttributes.getText(1);
        this.mThumbTextPadding = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.mSwitchMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, 0);
        this.mSwitchPadding = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(3, 0);
        if (resourceId != 0) {
            setSwitchTextAppearance(context, resourceId);
        }
        typedArrayObtainStyledAttributes.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    public void setSwitchTypeface(Typeface typeface) {
        if (this.mTextPaint.getTypeface() != typeface) {
            this.mTextPaint.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }
}
