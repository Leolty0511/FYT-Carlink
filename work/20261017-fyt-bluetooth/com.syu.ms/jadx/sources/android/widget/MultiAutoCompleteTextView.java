package android.widget;

import android.R;
import android.content.Context;
import android.net.ProxyProperties;
import android.text.Editable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.QwertyKeyListener;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

/* JADX INFO: loaded from: classes.dex */
public class MultiAutoCompleteTextView extends AutoCompleteTextView {
    private Tokenizer mTokenizer;

    public static class CommaTokenizer implements Tokenizer {
        @Override // android.widget.MultiAutoCompleteTextView.Tokenizer
        public int findTokenEnd(CharSequence charSequence, int i2) {
            int length = charSequence.length();
            while (i2 < length) {
                if (charSequence.charAt(i2) == ',') {
                    return i2;
                }
                i2++;
            }
            return length;
        }

        @Override // android.widget.MultiAutoCompleteTextView.Tokenizer
        public int findTokenStart(CharSequence charSequence, int i2) {
            int i3 = i2;
            while (i3 > 0 && charSequence.charAt(i3 - 1) != ',') {
                i3--;
            }
            while (i3 < i2 && charSequence.charAt(i3) == ' ') {
                i3++;
            }
            return i3;
        }

        @Override // android.widget.MultiAutoCompleteTextView.Tokenizer
        public CharSequence terminateToken(CharSequence charSequence) {
            int length = charSequence.length();
            while (length > 0 && charSequence.charAt(length - 1) == ' ') {
                length--;
            }
            if (length > 0 && charSequence.charAt(length - 1) == ',') {
                return charSequence;
            }
            if (!(charSequence instanceof Spanned)) {
                return ((Object) charSequence) + ", ";
            }
            SpannableString spannableString = new SpannableString(((Object) charSequence) + ", ");
            TextUtils.copySpansFrom((Spanned) charSequence, 0, charSequence.length(), Object.class, spannableString, 0);
            return spannableString;
        }
    }

    public interface Tokenizer {
        int findTokenEnd(CharSequence charSequence, int i2);

        int findTokenStart(CharSequence charSequence, int i2);

        CharSequence terminateToken(CharSequence charSequence);
    }

    public MultiAutoCompleteTextView(Context context) {
        this(context, null);
    }

    @Override // android.widget.AutoCompleteTextView
    public boolean enoughToFilter() {
        Tokenizer tokenizer;
        Editable text = getText();
        int selectionEnd = getSelectionEnd();
        return selectionEnd >= 0 && (tokenizer = this.mTokenizer) != null && selectionEnd - tokenizer.findTokenStart(text, selectionEnd) >= getThreshold();
    }

    public void finishInit() {
    }

    @Override // android.widget.EditText, android.widget.TextView, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(MultiAutoCompleteTextView.class.getName());
    }

    @Override // android.widget.EditText, android.widget.TextView, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(MultiAutoCompleteTextView.class.getName());
    }

    @Override // android.widget.AutoCompleteTextView
    public void performFiltering(CharSequence charSequence, int i2) {
        if (enoughToFilter()) {
            int selectionEnd = getSelectionEnd();
            performFiltering(charSequence, this.mTokenizer.findTokenStart(charSequence, selectionEnd), selectionEnd, i2);
            return;
        }
        dismissDropDown();
        Filter filter = getFilter();
        if (filter != null) {
            filter.filter(null);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void performValidation() {
        AutoCompleteTextView.Validator validator = getValidator();
        if (validator == null || this.mTokenizer == null) {
            return;
        }
        Editable text = getText();
        int length = getText().length();
        while (length > 0) {
            int iFindTokenStart = this.mTokenizer.findTokenStart(text, length);
            CharSequence charSequenceSubSequence = text.subSequence(iFindTokenStart, this.mTokenizer.findTokenEnd(text, iFindTokenStart));
            if (TextUtils.isEmpty(charSequenceSubSequence)) {
                text.replace(iFindTokenStart, length, ProxyProperties.LOCAL_EXCL_LIST);
            } else if (!validator.isValid(charSequenceSubSequence)) {
                text.replace(iFindTokenStart, length, this.mTokenizer.terminateToken(validator.fixText(charSequenceSubSequence)));
            }
            length = iFindTokenStart;
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void replaceText(CharSequence charSequence) {
        clearComposingText();
        int selectionEnd = getSelectionEnd();
        int iFindTokenStart = this.mTokenizer.findTokenStart(getText(), selectionEnd);
        Editable text = getText();
        QwertyKeyListener.markAsReplaced(text, iFindTokenStart, selectionEnd, TextUtils.substring(text, iFindTokenStart, selectionEnd));
        text.replace(iFindTokenStart, selectionEnd, this.mTokenizer.terminateToken(charSequence));
    }

    public void setTokenizer(Tokenizer tokenizer) {
        this.mTokenizer = tokenizer;
    }

    public MultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
    }

    public MultiAutoCompleteTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public void performFiltering(CharSequence charSequence, int i2, int i3, int i4) {
        getFilter().filter(charSequence.subSequence(i2, i3), this);
    }
}
