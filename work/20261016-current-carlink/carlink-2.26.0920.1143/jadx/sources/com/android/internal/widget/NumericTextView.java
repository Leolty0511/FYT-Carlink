package com.android.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.StateSet;
import android.view.KeyEvent;
import android.widget.TextView;
import com.google.android.material.timepicker.TimeModel;

/* JADX INFO: loaded from: classes3.dex */
public class NumericTextView extends TextView {
    private static final double LOG_RADIX = Math.log(10.0d);
    private static final int RADIX = 10;
    private int mCount;
    private OnValueChangedListener mListener;
    private int mMaxCount;
    private int mMaxValue;
    private int mMinValue;
    private int mPreviousValue;
    private boolean mShowLeadingZeroes;
    private int mValue;

    public interface OnValueChangedListener {
        void onValueChanged(NumericTextView numericTextView, int i2, boolean z2, boolean z3);
    }

    public NumericTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMinValue = 0;
        this.mMaxValue = 99;
        this.mMaxCount = 2;
        this.mShowLeadingZeroes = true;
        setHintTextColor(getTextColors().getColorForState(StateSet.get(0), 0));
        setFocusable(true);
    }

    private boolean handleKeyUp(int i2) {
        int iNumericKeyCodeToInt;
        if (i2 == 67) {
            int i3 = this.mCount;
            if (i3 > 0) {
                this.mValue /= 10;
                this.mCount = i3 - 1;
            }
        } else {
            if (!isKeyCodeNumeric(i2)) {
                return false;
            }
            if (this.mCount < this.mMaxCount && (iNumericKeyCodeToInt = (this.mValue * 10) + numericKeyCodeToInt(i2)) <= this.mMaxValue) {
                this.mValue = iNumericKeyCodeToInt;
                this.mCount++;
            }
        }
        setText(this.mCount > 0 ? String.format(android.accessibilityservice.c.m(new StringBuilder("%0"), this.mCount, "d"), Integer.valueOf(this.mValue)) : "");
        OnValueChangedListener onValueChangedListener = this.mListener;
        if (onValueChangedListener != null) {
            int i4 = this.mValue;
            onValueChangedListener.onValueChanged(this, i4, i4 >= this.mMinValue, this.mCount >= this.mMaxCount || i4 * 10 > this.mMaxValue);
        }
        return true;
    }

    private static boolean isKeyCodeNumeric(int i2) {
        return i2 == 7 || i2 == 8 || i2 == 9 || i2 == 10 || i2 == 11 || i2 == 12 || i2 == 13 || i2 == 14 || i2 == 15 || i2 == 16;
    }

    private static int numericKeyCodeToInt(int i2) {
        return i2 - 7;
    }

    private void updateDisplayedValue() {
        setText(String.format(this.mShowLeadingZeroes ? android.accessibilityservice.c.m(new StringBuilder("%0"), this.mMaxCount, "d") : TimeModel.NUMBER_FORMAT, Integer.valueOf(this.mValue)));
    }

    private void updateMinimumWidth() {
        CharSequence text = getText();
        int i2 = 0;
        for (int i3 = 0; i3 < this.mMaxValue; i3++) {
            setText(String.format(android.accessibilityservice.c.m(new StringBuilder("%0"), this.mMaxCount, "d"), Integer.valueOf(i3)));
            measure(0, 0);
            int measuredWidth = getMeasuredWidth();
            if (measuredWidth > i2) {
                i2 = measuredWidth;
            }
        }
        setText(text);
        setMinWidth(i2);
        setMinimumWidth(i2);
    }

    public final OnValueChangedListener getOnDigitEnteredListener() {
        return this.mListener;
    }

    public final int getRangeMaximum() {
        return this.mMaxValue;
    }

    public final int getRangeMinimum() {
        return this.mMinValue;
    }

    public final boolean getShowLeadingZeroes() {
        return this.mShowLeadingZeroes;
    }

    public final int getValue() {
        return this.mValue;
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z2, int i2, Rect rect) {
        super.onFocusChanged(z2, i2, rect);
        if (z2) {
            this.mPreviousValue = this.mValue;
            this.mValue = 0;
            this.mCount = 0;
            setHint(getText());
            setText("");
            return;
        }
        if (this.mCount == 0) {
            this.mValue = this.mPreviousValue;
            setText(getHint());
            setHint("");
        }
        int i3 = this.mValue;
        int i4 = this.mMinValue;
        if (i3 < i4) {
            this.mValue = i4;
        }
        setValue(this.mValue);
        OnValueChangedListener onValueChangedListener = this.mListener;
        if (onValueChangedListener != null) {
            onValueChangedListener.onValueChanged(this, this.mValue, true, true);
        }
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        return isKeyCodeNumeric(i2) || i2 == 67 || super.onKeyDown(i2, keyEvent);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i2, int i3, KeyEvent keyEvent) {
        return isKeyCodeNumeric(i2) || i2 == 67 || super.onKeyMultiple(i2, i3, keyEvent);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        return handleKeyUp(i2) || super.onKeyUp(i2, keyEvent);
    }

    public final void setOnDigitEnteredListener(OnValueChangedListener onValueChangedListener) {
        this.mListener = onValueChangedListener;
    }

    public final void setRange(int i2, int i3) {
        if (this.mMinValue != i2) {
            this.mMinValue = i2;
        }
        if (this.mMaxValue != i3) {
            this.mMaxValue = i3;
            this.mMaxCount = ((int) (Math.log(i3) / LOG_RADIX)) + 1;
            updateMinimumWidth();
            updateDisplayedValue();
        }
    }

    public final void setShowLeadingZeroes(boolean z2) {
        if (this.mShowLeadingZeroes != z2) {
            this.mShowLeadingZeroes = z2;
            updateDisplayedValue();
        }
    }

    public final void setValue(int i2) {
        if (this.mValue != i2) {
            this.mValue = i2;
            updateDisplayedValue();
        }
    }
}
