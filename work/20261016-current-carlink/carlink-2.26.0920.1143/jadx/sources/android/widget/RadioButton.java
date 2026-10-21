package android.widget;

import android.content.Context;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes2.dex */
public class RadioButton extends CompoundButton {
    public RadioButton(Context context) {
        this(context, null);
    }

    @Override // android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return RadioButton.class.getName();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        if (isChecked()) {
            return;
        }
        super.toggle();
    }

    public RadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842878);
    }

    public RadioButton(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public RadioButton(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
