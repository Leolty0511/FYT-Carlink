package android.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewHierarchyEncoder;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CompoundButton extends Button implements Checkable {
    private static final int[] CHECKED_STATE_SET = {16842912};
    private static final String LOG_TAG = "CompoundButton";
    private boolean mBroadcasting;
    private Drawable mButtonDrawable;
    private ColorStateList mButtonTintList;
    private PorterDuff.Mode mButtonTintMode;
    private boolean mChecked;
    private boolean mCheckedFromResource;
    private boolean mHasButtonTint;
    private boolean mHasButtonTintMode;
    private OnCheckedChangeListener mOnCheckedChangeListener;
    private OnCheckedChangeListener mOnCheckedChangeWidgetListener;

    public interface OnCheckedChangeListener {
        void onCheckedChanged(CompoundButton compoundButton, boolean z2);
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.widget.CompoundButton.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        boolean checked;

        public String toString() {
            StringBuilder sb = new StringBuilder("CompoundButton.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" checked=");
            return android.accessibilityservice.c.o(sb, this.checked, "}");
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeValue(Boolean.valueOf(this.checked));
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.checked = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    public CompoundButton(Context context) {
        this(context, null);
    }

    private void applyButtonTint() {
        Drawable drawable = this.mButtonDrawable;
        if (drawable != null) {
            if (this.mHasButtonTint || this.mHasButtonTintMode) {
                Drawable drawableMutate = drawable.mutate();
                this.mButtonDrawable = drawableMutate;
                if (this.mHasButtonTint) {
                    drawableMutate.setTintList(this.mButtonTintList);
                }
                if (this.mHasButtonTintMode) {
                    this.mButtonDrawable.setTintMode(this.mButtonTintMode);
                }
                if (this.mButtonDrawable.isStateful()) {
                    this.mButtonDrawable.setState(getDrawableState());
                }
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void autofill(AutofillValue autofillValue) {
        if (isEnabled()) {
            if (autofillValue.isToggle()) {
                setChecked(autofillValue.getToggleValue());
                return;
            }
            Log.w(LOG_TAG, autofillValue + " could not be autofilled into " + this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f2, float f3) {
        super.drawableHotspotChanged(f2, f3);
        Drawable drawable = this.mButtonDrawable;
        if (drawable != null) {
            drawable.setHotspot(f2, f3);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mButtonDrawable;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        super.encodeProperties(viewHierarchyEncoder);
        viewHierarchyEncoder.addProperty("checked", isChecked());
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return CompoundButton.class.getName();
    }

    @Override // android.widget.TextView, android.view.View
    public int getAutofillType() {
        return isEnabled() ? 2 : 0;
    }

    @Override // android.widget.TextView, android.view.View
    public AutofillValue getAutofillValue() {
        if (isEnabled()) {
            return AutofillValue.forToggle(isChecked());
        }
        return null;
    }

    public Drawable getButtonDrawable() {
        return this.mButtonDrawable;
    }

    public ColorStateList getButtonTintList() {
        return this.mButtonTintList;
    }

    public PorterDuff.Mode getButtonTintMode() {
        return this.mButtonTintMode;
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingLeft() {
        Drawable drawable;
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        return (isLayoutRtl() || (drawable = this.mButtonDrawable) == null) ? compoundPaddingLeft : compoundPaddingLeft + drawable.getIntrinsicWidth();
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingRight() {
        Drawable drawable;
        int compoundPaddingRight = super.getCompoundPaddingRight();
        return (!isLayoutRtl() || (drawable = this.mButtonDrawable) == null) ? compoundPaddingRight : compoundPaddingRight + drawable.getIntrinsicWidth();
    }

    @Override // android.widget.TextView
    public int getHorizontalOffsetForDrawables() {
        Drawable drawable = this.mButtonDrawable;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return 0;
    }

    @Override // android.widget.Checkable
    @ViewDebug.ExportedProperty
    public boolean isChecked() {
        return this.mChecked;
    }

    @Override // android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mButtonDrawable;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
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
        int height;
        Drawable drawable = this.mButtonDrawable;
        if (drawable != null) {
            int gravity = getGravity() & 112;
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (gravity != 16) {
                height = gravity != 80 ? 0 : getHeight() - intrinsicHeight;
            } else {
                height = (getHeight() - intrinsicHeight) / 2;
            }
            int i2 = intrinsicHeight + height;
            int width = isLayoutRtl() ? getWidth() - intrinsicWidth : 0;
            if (isLayoutRtl()) {
                intrinsicWidth = getWidth();
            }
            drawable.setBounds(width, height, intrinsicWidth, i2);
            Drawable background = getBackground();
            if (background != null) {
                background.setHotspotBounds(width, height, intrinsicWidth, i2);
            }
        }
        super.onDraw(canvas);
        if (drawable != null) {
            int i3 = this.mScrollX;
            int i4 = this.mScrollY;
            if (i3 == 0 && i4 == 0) {
                drawable.draw(canvas);
                return;
            }
            canvas.translate(i3, i4);
            drawable.draw(canvas);
            canvas.translate(-i3, -i4);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onInitializeAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEventInternal(accessibilityEvent);
        accessibilityEvent.setChecked(this.mChecked);
    }

    @Override // android.widget.TextView, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(this.mChecked);
    }

    @Override // android.widget.TextView, android.view.View
    public void onProvideAutofillStructure(ViewStructure viewStructure, int i2) {
        super.onProvideAutofillStructure(viewStructure, i2);
        viewStructure.setDataIsSensitive(!this.mCheckedFromResource);
    }

    @Override // android.widget.TextView, android.view.View
    public void onResolveDrawables(int i2) {
        super.onResolveDrawables(i2);
        Drawable drawable = this.mButtonDrawable;
        if (drawable != null) {
            drawable.setLayoutDirection(i2);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.checked);
        requestLayout();
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.checked = isChecked();
        return savedState;
    }

    @Override // android.view.View
    public boolean performClick() {
        toggle();
        boolean zPerformClick = super.performClick();
        if (!zPerformClick) {
            playSoundEffect(0);
        }
        return zPerformClick;
    }

    public void setButtonDrawable(int i2) {
        setButtonDrawable(i2 != 0 ? getContext().getDrawable(i2) : null);
    }

    public void setButtonTintList(ColorStateList colorStateList) {
        this.mButtonTintList = colorStateList;
        this.mHasButtonTint = true;
        applyButtonTint();
    }

    public void setButtonTintMode(PorterDuff.Mode mode) {
        this.mButtonTintMode = mode;
        this.mHasButtonTintMode = true;
        applyButtonTint();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z2) {
        if (this.mChecked != z2) {
            this.mCheckedFromResource = false;
            this.mChecked = z2;
            refreshDrawableState();
            notifyViewAccessibilityStateChangedIfNeeded(0);
            if (this.mBroadcasting) {
                return;
            }
            this.mBroadcasting = true;
            OnCheckedChangeListener onCheckedChangeListener = this.mOnCheckedChangeListener;
            if (onCheckedChangeListener != null) {
                onCheckedChangeListener.onCheckedChanged(this, this.mChecked);
            }
            OnCheckedChangeListener onCheckedChangeListener2 = this.mOnCheckedChangeWidgetListener;
            if (onCheckedChangeListener2 != null) {
                onCheckedChangeListener2.onCheckedChanged(this, this.mChecked);
            }
            AutofillManager autofillManager = (AutofillManager) this.mContext.getSystemService(AutofillManager.class);
            if (autofillManager != null) {
                autofillManager.notifyValueChanged(this);
            }
            this.mBroadcasting = false;
        }
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.mOnCheckedChangeListener = onCheckedChangeListener;
    }

    public void setOnCheckedChangeWidgetListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.mOnCheckedChangeWidgetListener = onCheckedChangeListener;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.mChecked);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mButtonDrawable;
    }

    public CompoundButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CompoundButton(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public void setButtonDrawable(Drawable drawable) {
        Drawable drawable2 = this.mButtonDrawable;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.mButtonDrawable);
            }
            this.mButtonDrawable = drawable;
            if (drawable != null) {
                drawable.setCallback(this);
                drawable.setLayoutDirection(getLayoutDirection());
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                drawable.setVisible(getVisibility() == 0, false);
                setMinHeight(drawable.getIntrinsicHeight());
                applyButtonTint();
            }
        }
    }

    public CompoundButton(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mButtonTintList = null;
        this.mButtonTintMode = null;
        this.mHasButtonTint = false;
        this.mHasButtonTintMode = false;
        this.mCheckedFromResource = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CompoundButton, i2, i3);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        if (drawable != null) {
            setButtonDrawable(drawable);
        }
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.mButtonTintMode = Drawable.parseTintMode(typedArrayObtainStyledAttributes.getInt(3, -1), this.mButtonTintMode);
            this.mHasButtonTintMode = true;
        }
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            this.mButtonTintList = typedArrayObtainStyledAttributes.getColorStateList(2);
            this.mHasButtonTint = true;
        }
        setChecked(typedArrayObtainStyledAttributes.getBoolean(0, false));
        this.mCheckedFromResource = true;
        typedArrayObtainStyledAttributes.recycle();
        applyButtonTint();
    }
}
