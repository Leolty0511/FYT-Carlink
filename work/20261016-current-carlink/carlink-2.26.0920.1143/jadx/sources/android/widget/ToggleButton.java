package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class ToggleButton extends CompoundButton {
    private static final int NO_ALPHA = 255;
    private float mDisabledAlpha;
    private Drawable mIndicatorDrawable;
    private CharSequence mTextOff;
    private CharSequence mTextOn;

    public ToggleButton(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ToggleButton, i2, i3);
        this.mTextOn = typedArrayObtainStyledAttributes.getText(1);
        this.mTextOff = typedArrayObtainStyledAttributes.getText(2);
        this.mDisabledAlpha = typedArrayObtainStyledAttributes.getFloat(0, 0.5f);
        syncTextState();
        typedArrayObtainStyledAttributes.recycle();
    }

    private void syncTextState() {
        CharSequence charSequence;
        CharSequence charSequence2;
        boolean zIsChecked = isChecked();
        if (zIsChecked && (charSequence2 = this.mTextOn) != null) {
            setText(charSequence2);
        } else {
            if (zIsChecked || (charSequence = this.mTextOff) == null) {
                return;
            }
            setText(charSequence);
        }
    }

    private void updateReferenceToIndicatorDrawable(Drawable drawable) {
        if (drawable instanceof LayerDrawable) {
            this.mIndicatorDrawable = ((LayerDrawable) drawable).findDrawableByLayerId(16908311);
        } else {
            this.mIndicatorDrawable = null;
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mIndicatorDrawable;
        if (drawable != null) {
            drawable.setAlpha(isEnabled() ? 255 : (int) (this.mDisabledAlpha * 255.0f));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ToggleButton.class.getName();
    }

    public CharSequence getTextOff() {
        return this.mTextOff;
    }

    public CharSequence getTextOn() {
        return this.mTextOn;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        updateReferenceToIndicatorDrawable(getBackground());
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        updateReferenceToIndicatorDrawable(drawable);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z2) {
        super.setChecked(z2);
        syncTextState();
    }

    public void setTextOff(CharSequence charSequence) {
        this.mTextOff = charSequence;
    }

    public void setTextOn(CharSequence charSequence) {
        this.mTextOn = charSequence;
    }

    public ToggleButton(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ToggleButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842827);
    }

    public ToggleButton(Context context) {
        this(context, null);
    }
}
