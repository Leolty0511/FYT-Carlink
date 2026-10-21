package android.widget;

import android.app.backup.FullBackup;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.provider.SettingsStringUtil;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.inputmethod.InputMethodManager;
import com.android.internal.R;
import java.util.Calendar;
import libcore.icu.LocaleData;

/* JADX INFO: loaded from: classes2.dex */
class TimePickerSpinnerDelegate extends TimePicker.AbstractTimePickerDelegate {
    private static final boolean DEFAULT_ENABLED_STATE = true;
    private static final int HOURS_IN_HALF_DAY = 12;
    private final Button mAmPmButton;
    private final NumberPicker mAmPmSpinner;
    private final EditText mAmPmSpinnerInput;
    private final String[] mAmPmStrings;
    private final TextView mDivider;
    private char mHourFormat;
    private final NumberPicker mHourSpinner;
    private final EditText mHourSpinnerInput;
    private boolean mHourWithTwoDigit;
    private boolean mIs24HourView;
    private boolean mIsAm;
    private boolean mIsEnabled;
    private final NumberPicker mMinuteSpinner;
    private final EditText mMinuteSpinnerInput;
    private final Calendar mTempCalendar;

    public TimePickerSpinnerDelegate(TimePicker timePicker, Context context, AttributeSet attributeSet, int i2, int i3) {
        super(timePicker, context);
        this.mIsEnabled = true;
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, R.styleable.TimePicker, i2, i3);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(13, R.layout.time_picker_legacy);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater.from(this.mContext).inflate(resourceId, (ViewGroup) this.mDelegator, true).setSaveFromParentEnabled(false);
        NumberPicker numberPicker = (NumberPicker) timePicker.findViewById(R.id.hour);
        this.mHourSpinner = numberPicker;
        numberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: android.widget.TimePickerSpinnerDelegate.1
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public void onValueChange(NumberPicker numberPicker2, int i4, int i5) {
                TimePickerSpinnerDelegate.this.updateInputState();
                if (!TimePickerSpinnerDelegate.this.is24Hour() && ((i4 == 11 && i5 == 12) || (i4 == 12 && i5 == 11))) {
                    TimePickerSpinnerDelegate timePickerSpinnerDelegate = TimePickerSpinnerDelegate.this;
                    timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                    TimePickerSpinnerDelegate.this.updateAmPmControl();
                }
                TimePickerSpinnerDelegate.this.onTimeChanged();
            }
        });
        EditText editText = (EditText) numberPicker.findViewById(R.id.numberpicker_input);
        this.mHourSpinnerInput = editText;
        editText.setImeOptions(5);
        TextView textView = (TextView) this.mDelegator.findViewById(R.id.divider);
        this.mDivider = textView;
        if (textView != null) {
            setDividerText();
        }
        NumberPicker numberPicker2 = (NumberPicker) this.mDelegator.findViewById(R.id.minute);
        this.mMinuteSpinner = numberPicker2;
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(59);
        numberPicker2.setOnLongPressUpdateInterval(100L);
        numberPicker2.setFormatter(NumberPicker.getTwoDigitFormatter());
        numberPicker2.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: android.widget.TimePickerSpinnerDelegate.2
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public void onValueChange(NumberPicker numberPicker3, int i4, int i5) {
                TimePickerSpinnerDelegate.this.updateInputState();
                int minValue = TimePickerSpinnerDelegate.this.mMinuteSpinner.getMinValue();
                int maxValue = TimePickerSpinnerDelegate.this.mMinuteSpinner.getMaxValue();
                if (i4 == maxValue && i5 == minValue) {
                    int value = TimePickerSpinnerDelegate.this.mHourSpinner.getValue() + 1;
                    if (!TimePickerSpinnerDelegate.this.is24Hour() && value == 12) {
                        TimePickerSpinnerDelegate timePickerSpinnerDelegate = TimePickerSpinnerDelegate.this;
                        timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                        TimePickerSpinnerDelegate.this.updateAmPmControl();
                    }
                    TimePickerSpinnerDelegate.this.mHourSpinner.setValue(value);
                } else if (i4 == minValue && i5 == maxValue) {
                    int value2 = TimePickerSpinnerDelegate.this.mHourSpinner.getValue() - 1;
                    if (!TimePickerSpinnerDelegate.this.is24Hour() && value2 == 11) {
                        TimePickerSpinnerDelegate timePickerSpinnerDelegate2 = TimePickerSpinnerDelegate.this;
                        timePickerSpinnerDelegate2.mIsAm = !timePickerSpinnerDelegate2.mIsAm;
                        TimePickerSpinnerDelegate.this.updateAmPmControl();
                    }
                    TimePickerSpinnerDelegate.this.mHourSpinner.setValue(value2);
                }
                TimePickerSpinnerDelegate.this.onTimeChanged();
            }
        });
        EditText editText2 = (EditText) numberPicker2.findViewById(R.id.numberpicker_input);
        this.mMinuteSpinnerInput = editText2;
        editText2.setImeOptions(5);
        String[] amPmStrings = getAmPmStrings(context);
        this.mAmPmStrings = amPmStrings;
        View viewFindViewById = this.mDelegator.findViewById(R.id.amPm);
        if (viewFindViewById instanceof Button) {
            this.mAmPmSpinner = null;
            this.mAmPmSpinnerInput = null;
            Button button = (Button) viewFindViewById;
            this.mAmPmButton = button;
            button.setOnClickListener(new View.OnClickListener() { // from class: android.widget.TimePickerSpinnerDelegate.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    view.requestFocus();
                    TimePickerSpinnerDelegate timePickerSpinnerDelegate = TimePickerSpinnerDelegate.this;
                    timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                    TimePickerSpinnerDelegate.this.updateAmPmControl();
                    TimePickerSpinnerDelegate.this.onTimeChanged();
                }
            });
        } else {
            this.mAmPmButton = null;
            NumberPicker numberPicker3 = (NumberPicker) viewFindViewById;
            this.mAmPmSpinner = numberPicker3;
            numberPicker3.setMinValue(0);
            numberPicker3.setMaxValue(1);
            numberPicker3.setDisplayedValues(amPmStrings);
            numberPicker3.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: android.widget.TimePickerSpinnerDelegate.4
                @Override // android.widget.NumberPicker.OnValueChangeListener
                public void onValueChange(NumberPicker numberPicker4, int i4, int i5) {
                    TimePickerSpinnerDelegate.this.updateInputState();
                    numberPicker4.requestFocus();
                    TimePickerSpinnerDelegate timePickerSpinnerDelegate = TimePickerSpinnerDelegate.this;
                    timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                    TimePickerSpinnerDelegate.this.updateAmPmControl();
                    TimePickerSpinnerDelegate.this.onTimeChanged();
                }
            });
            EditText editText3 = (EditText) numberPicker3.findViewById(R.id.numberpicker_input);
            this.mAmPmSpinnerInput = editText3;
            editText3.setImeOptions(6);
        }
        if (isAmPmAtStart()) {
            ViewGroup viewGroup = (ViewGroup) timePicker.findViewById(R.id.timePickerLayout);
            viewGroup.removeView(viewFindViewById);
            viewGroup.addView(viewFindViewById, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams();
            int marginStart = marginLayoutParams.getMarginStart();
            int marginEnd = marginLayoutParams.getMarginEnd();
            if (marginStart != marginEnd) {
                marginLayoutParams.setMarginStart(marginEnd);
                marginLayoutParams.setMarginEnd(marginStart);
            }
        }
        getHourFormatData();
        updateHourControl();
        updateMinuteControl();
        updateAmPmControl();
        Calendar calendar = Calendar.getInstance(this.mLocale);
        this.mTempCalendar = calendar;
        setHour(calendar.get(11));
        setMinute(calendar.get(12));
        if (!isEnabled()) {
            setEnabled(false);
        }
        setContentDescriptions();
        if (this.mDelegator.getImportantForAccessibility() == 0) {
            this.mDelegator.setImportantForAccessibility(1);
        }
    }

    public static String[] getAmPmStrings(Context context) {
        String[] strArr = new String[2];
        LocaleData localeData = LocaleData.get(context.getResources().getConfiguration().locale);
        strArr[0] = localeData.amPm[0].length() > 4 ? localeData.narrowAm : localeData.amPm[0];
        strArr[1] = localeData.amPm[1].length() > 4 ? localeData.narrowPm : localeData.amPm[1];
        return strArr;
    }

    private void getHourFormatData() {
        String bestDateTimePattern = DateFormat.getBestDateTimePattern(this.mLocale, this.mIs24HourView ? "Hm" : "hm");
        int length = bestDateTimePattern.length();
        this.mHourWithTwoDigit = false;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = bestDateTimePattern.charAt(i2);
            if (cCharAt == 'H' || cCharAt == 'h' || cCharAt == 'K' || cCharAt == 'k') {
                this.mHourFormat = cCharAt;
                int i3 = i2 + 1;
                if (i3 >= length || cCharAt != bestDateTimePattern.charAt(i3)) {
                    return;
                }
                this.mHourWithTwoDigit = true;
                return;
            }
        }
    }

    private boolean isAmPmAtStart() {
        return DateFormat.getBestDateTimePattern(this.mLocale, "hm").startsWith(FullBackup.APK_TREE_TOKEN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTimeChanged() {
        this.mDelegator.sendAccessibilityEvent(4);
        TimePicker.OnTimeChangedListener onTimeChangedListener = this.mOnTimeChangedListener;
        if (onTimeChangedListener != null) {
            onTimeChangedListener.onTimeChanged(this.mDelegator, getHour(), getMinute());
        }
        TimePicker.OnTimeChangedListener onTimeChangedListener2 = this.mAutoFillChangeListener;
        if (onTimeChangedListener2 != null) {
            onTimeChangedListener2.onTimeChanged(this.mDelegator, getHour(), getMinute());
        }
    }

    private void setContentDescriptions() {
        trySetContentDescription(this.mMinuteSpinner, R.id.increment, R.string.time_picker_increment_minute_button);
        trySetContentDescription(this.mMinuteSpinner, R.id.decrement, R.string.time_picker_decrement_minute_button);
        trySetContentDescription(this.mHourSpinner, R.id.increment, R.string.time_picker_increment_hour_button);
        trySetContentDescription(this.mHourSpinner, R.id.decrement, R.string.time_picker_decrement_hour_button);
        NumberPicker numberPicker = this.mAmPmSpinner;
        if (numberPicker != null) {
            trySetContentDescription(numberPicker, R.id.increment, R.string.time_picker_increment_set_pm_button);
            trySetContentDescription(this.mAmPmSpinner, R.id.decrement, R.string.time_picker_decrement_set_am_button);
        }
    }

    private void setCurrentHour(int i2, boolean z2) {
        if (i2 == getHour()) {
            return;
        }
        resetAutofilledValue();
        if (!is24Hour()) {
            if (i2 >= 12) {
                this.mIsAm = false;
                if (i2 > 12) {
                    i2 -= 12;
                }
            } else {
                this.mIsAm = true;
                if (i2 == 0) {
                    i2 = 12;
                }
            }
            updateAmPmControl();
        }
        this.mHourSpinner.setValue(i2);
        if (z2) {
            onTimeChanged();
        }
    }

    private void setCurrentMinute(int i2, boolean z2) {
        if (i2 == getMinute()) {
            return;
        }
        resetAutofilledValue();
        this.mMinuteSpinner.setValue(i2);
        if (z2) {
            onTimeChanged();
        }
    }

    private void setDividerText() {
        String string;
        String bestDateTimePattern = DateFormat.getBestDateTimePattern(this.mLocale, this.mIs24HourView ? "Hm" : "hm");
        int iLastIndexOf = bestDateTimePattern.lastIndexOf(72);
        if (iLastIndexOf == -1) {
            iLastIndexOf = bestDateTimePattern.lastIndexOf(104);
        }
        if (iLastIndexOf == -1) {
            string = SettingsStringUtil.DELIMITER;
        } else {
            int i2 = iLastIndexOf + 1;
            int iIndexOf = bestDateTimePattern.indexOf(109, i2);
            string = iIndexOf == -1 ? Character.toString(bestDateTimePattern.charAt(i2)) : bestDateTimePattern.substring(i2, iIndexOf);
        }
        this.mDivider.setText(string);
    }

    private void trySetContentDescription(View view, int i2, int i3) {
        View viewFindViewById = view.findViewById(i2);
        if (viewFindViewById != null) {
            viewFindViewById.setContentDescription(this.mContext.getString(i3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAmPmControl() {
        if (is24Hour()) {
            NumberPicker numberPicker = this.mAmPmSpinner;
            if (numberPicker != null) {
                numberPicker.setVisibility(8);
            } else {
                this.mAmPmButton.setVisibility(8);
            }
        } else {
            int i2 = !this.mIsAm ? 1 : 0;
            NumberPicker numberPicker2 = this.mAmPmSpinner;
            if (numberPicker2 != null) {
                numberPicker2.setValue(i2);
                this.mAmPmSpinner.setVisibility(0);
            } else {
                this.mAmPmButton.setText(this.mAmPmStrings[i2]);
                this.mAmPmButton.setVisibility(0);
            }
        }
        this.mDelegator.sendAccessibilityEvent(4);
    }

    private void updateHourControl() {
        if (is24Hour()) {
            if (this.mHourFormat == 'k') {
                this.mHourSpinner.setMinValue(1);
                this.mHourSpinner.setMaxValue(24);
            } else {
                this.mHourSpinner.setMinValue(0);
                this.mHourSpinner.setMaxValue(23);
            }
        } else if (this.mHourFormat == 'K') {
            this.mHourSpinner.setMinValue(0);
            this.mHourSpinner.setMaxValue(11);
        } else {
            this.mHourSpinner.setMinValue(1);
            this.mHourSpinner.setMaxValue(12);
        }
        this.mHourSpinner.setFormatter(this.mHourWithTwoDigit ? NumberPicker.getTwoDigitFormatter() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateInputState() {
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        if (inputMethodManagerPeekInstance != null) {
            if (inputMethodManagerPeekInstance.isActive(this.mHourSpinnerInput)) {
                this.mHourSpinnerInput.clearFocus();
                inputMethodManagerPeekInstance.hideSoftInputFromWindow(this.mDelegator.getWindowToken(), 0);
            } else if (inputMethodManagerPeekInstance.isActive(this.mMinuteSpinnerInput)) {
                this.mMinuteSpinnerInput.clearFocus();
                inputMethodManagerPeekInstance.hideSoftInputFromWindow(this.mDelegator.getWindowToken(), 0);
            } else if (inputMethodManagerPeekInstance.isActive(this.mAmPmSpinnerInput)) {
                this.mAmPmSpinnerInput.clearFocus();
                inputMethodManagerPeekInstance.hideSoftInputFromWindow(this.mDelegator.getWindowToken(), 0);
            }
        }
    }

    private void updateMinuteControl() {
        if (is24Hour()) {
            this.mMinuteSpinnerInput.setImeOptions(6);
        } else {
            this.mMinuteSpinnerInput.setImeOptions(5);
        }
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public View getAmView() {
        return this.mAmPmSpinnerInput;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public int getBaseline() {
        return this.mHourSpinner.getBaseline();
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public int getHour() {
        int value = this.mHourSpinner.getValue();
        if (is24Hour()) {
            return value;
        }
        return this.mIsAm ? value % 12 : (value % 12) + 12;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public View getHourView() {
        return this.mHourSpinnerInput;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public int getMinute() {
        return this.mMinuteSpinner.getValue();
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public View getMinuteView() {
        return this.mMinuteSpinnerInput;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public View getPmView() {
        return this.mAmPmSpinnerInput;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public boolean is24Hour() {
        return this.mIs24HourView;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        int i2 = this.mIs24HourView ? 129 : 65;
        this.mTempCalendar.set(11, getHour());
        this.mTempCalendar.set(12, getMinute());
        accessibilityEvent.getText().add(DateUtils.formatDateTime(this.mContext, this.mTempCalendar.getTimeInMillis(), i2));
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof TimePicker.AbstractTimePickerDelegate.SavedState) {
            TimePicker.AbstractTimePickerDelegate.SavedState savedState = (TimePicker.AbstractTimePickerDelegate.SavedState) parcelable;
            setHour(savedState.getHour());
            setMinute(savedState.getMinute());
        }
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public Parcelable onSaveInstanceState(Parcelable parcelable) {
        return new TimePicker.AbstractTimePickerDelegate.SavedState(parcelable, getHour(), getMinute(), is24Hour());
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void setDate(int i2, int i3) {
        setCurrentHour(i2, false);
        setCurrentMinute(i3, false);
        onTimeChanged();
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void setEnabled(boolean z2) {
        this.mMinuteSpinner.setEnabled(z2);
        TextView textView = this.mDivider;
        if (textView != null) {
            textView.setEnabled(z2);
        }
        this.mHourSpinner.setEnabled(z2);
        NumberPicker numberPicker = this.mAmPmSpinner;
        if (numberPicker != null) {
            numberPicker.setEnabled(z2);
        } else {
            this.mAmPmButton.setEnabled(z2);
        }
        this.mIsEnabled = z2;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void setHour(int i2) {
        setCurrentHour(i2, true);
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void setIs24Hour(boolean z2) {
        if (this.mIs24HourView == z2) {
            return;
        }
        int hour = getHour();
        this.mIs24HourView = z2;
        getHourFormatData();
        updateHourControl();
        setCurrentHour(hour, false);
        updateMinuteControl();
        updateAmPmControl();
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void setMinute(int i2) {
        setCurrentMinute(i2, true);
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public boolean validateInput() {
        return true;
    }
}
