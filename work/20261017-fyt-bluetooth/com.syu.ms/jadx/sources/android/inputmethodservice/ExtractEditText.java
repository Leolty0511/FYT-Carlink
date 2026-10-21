package android.inputmethodservice;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
public class ExtractEditText extends EditText {
    private InputMethodService mIME;
    private int mSettingExtractedText;

    public ExtractEditText(Context context) {
        super(context, null);
    }

    @Override // android.widget.TextView
    public void deleteText_internal(int i2, int i3) {
        this.mIME.onExtractedDeleteText(i2, i3);
    }

    public void finishInternalChanges() {
        this.mSettingExtractedText--;
    }

    @Override // android.view.View
    public boolean hasFocus() {
        return isEnabled();
    }

    public boolean hasVerticalScrollBar() {
        return computeVerticalScrollRange() > computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return isEnabled();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return isEnabled();
    }

    @Override // android.widget.TextView
    public boolean isInputMethodTarget() {
        return true;
    }

    @Override // android.widget.TextView
    public void onSelectionChanged(int i2, int i3) {
        InputMethodService inputMethodService;
        if (this.mSettingExtractedText != 0 || (inputMethodService = this.mIME) == null || i2 < 0 || i3 < 0) {
            return;
        }
        inputMethodService.onExtractedSelectionChanged(i2, i3);
    }

    @Override // android.widget.TextView
    public boolean onTextContextMenuItem(int i2) {
        InputMethodService inputMethodService = this.mIME;
        if (inputMethodService == null || !inputMethodService.onExtractTextContextMenuItem(i2)) {
            return super.onTextContextMenuItem(i2);
        }
        if (i2 != 16908321) {
            return true;
        }
        stopSelectionActionMode();
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        InputMethodService inputMethodService;
        if (super.performClick() || (inputMethodService = this.mIME) == null) {
            return false;
        }
        inputMethodService.onExtractedTextClicked();
        return true;
    }

    @Override // android.widget.TextView
    public void replaceText_internal(int i2, int i3, CharSequence charSequence) {
        this.mIME.onExtractedReplaceText(i2, i3, charSequence);
    }

    @Override // android.widget.TextView
    public void setCursorPosition_internal(int i2, int i3) {
        this.mIME.onExtractedSelectionChanged(i2, i3);
    }

    @Override // android.widget.TextView
    public void setExtractedText(ExtractedText extractedText) {
        try {
            this.mSettingExtractedText++;
            super.setExtractedText(extractedText);
        } finally {
            this.mSettingExtractedText--;
        }
    }

    public void setIME(InputMethodService inputMethodService) {
        this.mIME = inputMethodService;
    }

    @Override // android.widget.TextView
    public void setSpan_internal(Object obj, int i2, int i3, int i4) {
        this.mIME.onExtractedSetSpan(obj, i2, i3, i4);
    }

    public void startInternalChanges() {
        this.mSettingExtractedText++;
    }

    @Override // android.widget.TextView
    public void viewClicked(InputMethodManager inputMethodManager) {
        InputMethodService inputMethodService = this.mIME;
        if (inputMethodService != null) {
            inputMethodService.onViewClicked(false);
        }
    }

    public ExtractEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.editTextStyle);
    }

    public ExtractEditText(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
