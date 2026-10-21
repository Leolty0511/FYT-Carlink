package android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class TextSwitcher extends ViewSwitcher {
    public TextSwitcher(Context context) {
        super(context);
    }

    @Override // android.widget.ViewSwitcher, android.widget.ViewAnimator, android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof TextView)) {
            throw new IllegalArgumentException("TextSwitcher children must be instances of TextView");
        }
        super.addView(view, i2, layoutParams);
    }

    @Override // android.widget.ViewSwitcher, android.widget.ViewAnimator, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return TextSwitcher.class.getName();
    }

    public void setCurrentText(CharSequence charSequence) {
        ((TextView) getCurrentView()).setText(charSequence);
    }

    public void setText(CharSequence charSequence) {
        ((TextView) getNextView()).setText(charSequence);
        showNext();
    }

    public TextSwitcher(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
