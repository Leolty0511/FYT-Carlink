package com.android.internal.widget;

import android.text.InputFilter;
import android.text.Spanned;
import android.widget.TextView;

/* JADX INFO: loaded from: classes3.dex */
public class TextViewInputDisabler {
    private InputFilter[] mDefaultFilters;
    private InputFilter[] mNoInputFilters = {new InputFilter() { // from class: com.android.internal.widget.TextViewInputDisabler.1
        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
            return "";
        }
    }};
    private TextView mTextView;

    public TextViewInputDisabler(TextView textView) {
        this.mTextView = textView;
        this.mDefaultFilters = textView.getFilters();
    }

    public void setInputEnabled(boolean z2) {
        this.mTextView.setFilters(z2 ? this.mDefaultFilters : this.mNoInputFilters);
    }
}
