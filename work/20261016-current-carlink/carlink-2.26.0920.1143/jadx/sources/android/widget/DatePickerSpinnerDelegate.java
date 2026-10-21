package android.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.icu.util.Calendar;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.inputmethod.InputMethodManager;
import com.android.internal.R;
import com.google.android.material.timepicker.TimeModel;
import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Locale;
import libcore.icu.ICU;

/* JADX INFO: loaded from: classes2.dex */
class DatePickerSpinnerDelegate extends DatePicker.AbstractDatePickerDelegate {
    private static final String DATE_FORMAT = "MM/dd/yyyy";
    private static final boolean DEFAULT_CALENDAR_VIEW_SHOWN = true;
    private static final boolean DEFAULT_ENABLED_STATE = true;
    private static final int DEFAULT_END_YEAR = 2100;
    private static final boolean DEFAULT_SPINNERS_SHOWN = true;
    private static final int DEFAULT_START_YEAR = 1900;
    private final CalendarView mCalendarView;
    private final DateFormat mDateFormat;
    private final NumberPicker mDaySpinner;
    private final EditText mDaySpinnerInput;
    private boolean mIsEnabled;
    private Calendar mMaxDate;
    private Calendar mMinDate;
    private final NumberPicker mMonthSpinner;
    private final EditText mMonthSpinnerInput;
    private int mNumberOfMonths;
    private String[] mShortMonths;
    private final LinearLayout mSpinners;
    private Calendar mTempDate;
    private final NumberPicker mYearSpinner;
    private final EditText mYearSpinnerInput;

    public DatePickerSpinnerDelegate(DatePicker datePicker, Context context, AttributeSet attributeSet, int i2, int i3) {
        super(datePicker, context);
        this.mDateFormat = new SimpleDateFormat(DATE_FORMAT);
        this.mIsEnabled = true;
        this.mDelegator = datePicker;
        this.mContext = context;
        setCurrentLocale(Locale.getDefault());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DatePicker, i2, i3);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(6, true);
        boolean z3 = typedArrayObtainStyledAttributes.getBoolean(7, true);
        int i4 = typedArrayObtainStyledAttributes.getInt(1, 1900);
        int i5 = typedArrayObtainStyledAttributes.getInt(2, 2100);
        String string = typedArrayObtainStyledAttributes.getString(4);
        String string2 = typedArrayObtainStyledAttributes.getString(5);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(20, R.layout.date_picker_legacy);
        typedArrayObtainStyledAttributes.recycle();
        ((LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(resourceId, (ViewGroup) this.mDelegator, true).setSaveFromParentEnabled(false);
        NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: android.widget.DatePickerSpinnerDelegate.1
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public void onValueChange(NumberPicker numberPicker, int i6, int i7) {
                DatePickerSpinnerDelegate.this.updateInputState();
                DatePickerSpinnerDelegate.this.mTempDate.setTimeInMillis(DatePickerSpinnerDelegate.this.mCurrentDate.getTimeInMillis());
                if (numberPicker == DatePickerSpinnerDelegate.this.mDaySpinner) {
                    int actualMaximum = DatePickerSpinnerDelegate.this.mTempDate.getActualMaximum(5);
                    if (i6 == actualMaximum && i7 == 1) {
                        DatePickerSpinnerDelegate.this.mTempDate.add(5, 1);
                    } else if (i6 == 1 && i7 == actualMaximum) {
                        DatePickerSpinnerDelegate.this.mTempDate.add(5, -1);
                    } else {
                        DatePickerSpinnerDelegate.this.mTempDate.add(5, i7 - i6);
                    }
                } else if (numberPicker == DatePickerSpinnerDelegate.this.mMonthSpinner) {
                    if (i6 == 11 && i7 == 0) {
                        DatePickerSpinnerDelegate.this.mTempDate.add(2, 1);
                    } else if (i6 == 0 && i7 == 11) {
                        DatePickerSpinnerDelegate.this.mTempDate.add(2, -1);
                    } else {
                        DatePickerSpinnerDelegate.this.mTempDate.add(2, i7 - i6);
                    }
                } else {
                    if (numberPicker != DatePickerSpinnerDelegate.this.mYearSpinner) {
                        throw new IllegalArgumentException();
                    }
                    DatePickerSpinnerDelegate.this.mTempDate.set(1, i7);
                }
                DatePickerSpinnerDelegate datePickerSpinnerDelegate = DatePickerSpinnerDelegate.this;
                datePickerSpinnerDelegate.setDate(datePickerSpinnerDelegate.mTempDate.get(1), DatePickerSpinnerDelegate.this.mTempDate.get(2), DatePickerSpinnerDelegate.this.mTempDate.get(5));
                DatePickerSpinnerDelegate.this.updateSpinners();
                DatePickerSpinnerDelegate.this.updateCalendarView();
                DatePickerSpinnerDelegate.this.notifyDateChanged();
            }
        };
        this.mSpinners = (LinearLayout) this.mDelegator.findViewById(R.id.pickers);
        CalendarView calendarView = (CalendarView) this.mDelegator.findViewById(R.id.calendar_view);
        this.mCalendarView = calendarView;
        calendarView.setOnDateChangeListener(new CalendarView.OnDateChangeListener() { // from class: android.widget.DatePickerSpinnerDelegate.2
            @Override // android.widget.CalendarView.OnDateChangeListener
            public void onSelectedDayChange(CalendarView calendarView2, int i6, int i7, int i8) {
                DatePickerSpinnerDelegate.this.setDate(i6, i7, i8);
                DatePickerSpinnerDelegate.this.updateSpinners();
                DatePickerSpinnerDelegate.this.notifyDateChanged();
            }
        });
        NumberPicker numberPicker = (NumberPicker) this.mDelegator.findViewById(R.id.day);
        this.mDaySpinner = numberPicker;
        numberPicker.setFormatter(NumberPicker.getTwoDigitFormatter());
        numberPicker.setOnLongPressUpdateInterval(100L);
        numberPicker.setOnValueChangedListener(onValueChangeListener);
        this.mDaySpinnerInput = (EditText) numberPicker.findViewById(R.id.numberpicker_input);
        NumberPicker numberPicker2 = (NumberPicker) this.mDelegator.findViewById(R.id.month);
        this.mMonthSpinner = numberPicker2;
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(this.mNumberOfMonths - 1);
        numberPicker2.setDisplayedValues(this.mShortMonths);
        numberPicker2.setOnLongPressUpdateInterval(200L);
        numberPicker2.setOnValueChangedListener(onValueChangeListener);
        this.mMonthSpinnerInput = (EditText) numberPicker2.findViewById(R.id.numberpicker_input);
        NumberPicker numberPicker3 = (NumberPicker) this.mDelegator.findViewById(R.id.year);
        this.mYearSpinner = numberPicker3;
        numberPicker3.setOnLongPressUpdateInterval(100L);
        numberPicker3.setOnValueChangedListener(onValueChangeListener);
        this.mYearSpinnerInput = (EditText) numberPicker3.findViewById(R.id.numberpicker_input);
        if (z2 || z3) {
            setSpinnersShown(z2);
            setCalendarViewShown(z3);
        } else {
            setSpinnersShown(true);
        }
        this.mTempDate.clear();
        if (TextUtils.isEmpty(string) || !parseDate(string, this.mTempDate)) {
            this.mTempDate.set(i4, 0, 1);
        }
        setMinDate(this.mTempDate.getTimeInMillis());
        this.mTempDate.clear();
        if (TextUtils.isEmpty(string2) || !parseDate(string2, this.mTempDate)) {
            this.mTempDate.set(i5, 11, 31);
        }
        setMaxDate(this.mTempDate.getTimeInMillis());
        this.mCurrentDate.setTimeInMillis(System.currentTimeMillis());
        init(this.mCurrentDate.get(1), this.mCurrentDate.get(2), this.mCurrentDate.get(5), null);
        reorderSpinners();
        setContentDescriptions();
        if (this.mDelegator.getImportantForAccessibility() == 0) {
            this.mDelegator.setImportantForAccessibility(1);
        }
    }

    private Calendar getCalendarForLocale(Calendar calendar, Locale locale) {
        if (calendar == null) {
            return Calendar.getInstance(locale);
        }
        long timeInMillis = calendar.getTimeInMillis();
        Calendar calendar2 = Calendar.getInstance(locale);
        calendar2.setTimeInMillis(timeInMillis);
        return calendar2;
    }

    private boolean isNewDate(int i2, int i3, int i4) {
        return (this.mCurrentDate.get(1) == i2 && this.mCurrentDate.get(2) == i3 && this.mCurrentDate.get(5) == i4) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDateChanged() {
        this.mDelegator.sendAccessibilityEvent(4);
        DatePicker.OnDateChangedListener onDateChangedListener = this.mOnDateChangedListener;
        if (onDateChangedListener != null) {
            onDateChangedListener.onDateChanged(this.mDelegator, getYear(), getMonth(), getDayOfMonth());
        }
        DatePicker.OnDateChangedListener onDateChangedListener2 = this.mAutoFillChangeListener;
        if (onDateChangedListener2 != null) {
            onDateChangedListener2.onDateChanged(this.mDelegator, getYear(), getMonth(), getDayOfMonth());
        }
    }

    private boolean parseDate(String str, Calendar calendar) {
        try {
            calendar.setTime(this.mDateFormat.parse(str));
            return true;
        } catch (ParseException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private void reorderSpinners() {
        this.mSpinners.removeAllViews();
        char[] dateFormatOrder = ICU.getDateFormatOrder(android.text.format.DateFormat.getBestDateTimePattern(Locale.getDefault(), "yyyyMMMdd"));
        int length = dateFormatOrder.length;
        for (int i2 = 0; i2 < length; i2++) {
            char c = dateFormatOrder[i2];
            if (c == 'M') {
                this.mSpinners.addView(this.mMonthSpinner);
                setImeOptions(this.mMonthSpinner, length, i2);
            } else if (c == 'd') {
                this.mSpinners.addView(this.mDaySpinner);
                setImeOptions(this.mDaySpinner, length, i2);
            } else {
                if (c != 'y') {
                    throw new IllegalArgumentException(Arrays.toString(dateFormatOrder));
                }
                this.mSpinners.addView(this.mYearSpinner);
                setImeOptions(this.mYearSpinner, length, i2);
            }
        }
    }

    private void setContentDescriptions() {
        trySetContentDescription(this.mDaySpinner, R.id.increment, R.string.date_picker_increment_day_button);
        trySetContentDescription(this.mDaySpinner, R.id.decrement, R.string.date_picker_decrement_day_button);
        trySetContentDescription(this.mMonthSpinner, R.id.increment, R.string.date_picker_increment_month_button);
        trySetContentDescription(this.mMonthSpinner, R.id.decrement, R.string.date_picker_decrement_month_button);
        trySetContentDescription(this.mYearSpinner, R.id.increment, R.string.date_picker_increment_year_button);
        trySetContentDescription(this.mYearSpinner, R.id.decrement, R.string.date_picker_decrement_year_button);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDate(int i2, int i3, int i4) {
        this.mCurrentDate.set(i2, i3, i4);
        resetAutofilledValue();
        if (this.mCurrentDate.before(this.mMinDate)) {
            this.mCurrentDate.setTimeInMillis(this.mMinDate.getTimeInMillis());
        } else if (this.mCurrentDate.after(this.mMaxDate)) {
            this.mCurrentDate.setTimeInMillis(this.mMaxDate.getTimeInMillis());
        }
    }

    private void setImeOptions(NumberPicker numberPicker, int i2, int i3) {
        ((TextView) numberPicker.findViewById(R.id.numberpicker_input)).setImeOptions(i3 < i2 + (-1) ? 5 : 6);
    }

    private void trySetContentDescription(View view, int i2, int i3) {
        View viewFindViewById = view.findViewById(i2);
        if (viewFindViewById != null) {
            viewFindViewById.setContentDescription(this.mContext.getString(i3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCalendarView() {
        this.mCalendarView.setDate(this.mCurrentDate.getTimeInMillis(), false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateInputState() {
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        if (inputMethodManagerPeekInstance != null) {
            if (inputMethodManagerPeekInstance.isActive(this.mYearSpinnerInput)) {
                this.mYearSpinnerInput.clearFocus();
                inputMethodManagerPeekInstance.hideSoftInputFromWindow(this.mDelegator.getWindowToken(), 0);
            } else if (inputMethodManagerPeekInstance.isActive(this.mMonthSpinnerInput)) {
                this.mMonthSpinnerInput.clearFocus();
                inputMethodManagerPeekInstance.hideSoftInputFromWindow(this.mDelegator.getWindowToken(), 0);
            } else if (inputMethodManagerPeekInstance.isActive(this.mDaySpinnerInput)) {
                this.mDaySpinnerInput.clearFocus();
                inputMethodManagerPeekInstance.hideSoftInputFromWindow(this.mDelegator.getWindowToken(), 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSpinners() {
        if (this.mCurrentDate.equals(this.mMinDate)) {
            this.mDaySpinner.setMinValue(this.mCurrentDate.get(5));
            this.mDaySpinner.setMaxValue(this.mCurrentDate.getActualMaximum(5));
            this.mDaySpinner.setWrapSelectorWheel(false);
            this.mMonthSpinner.setDisplayedValues(null);
            this.mMonthSpinner.setMinValue(this.mCurrentDate.get(2));
            this.mMonthSpinner.setMaxValue(this.mCurrentDate.getActualMaximum(2));
            this.mMonthSpinner.setWrapSelectorWheel(false);
        } else if (this.mCurrentDate.equals(this.mMaxDate)) {
            this.mDaySpinner.setMinValue(this.mCurrentDate.getActualMinimum(5));
            this.mDaySpinner.setMaxValue(this.mCurrentDate.get(5));
            this.mDaySpinner.setWrapSelectorWheel(false);
            this.mMonthSpinner.setDisplayedValues(null);
            this.mMonthSpinner.setMinValue(this.mCurrentDate.getActualMinimum(2));
            this.mMonthSpinner.setMaxValue(this.mCurrentDate.get(2));
            this.mMonthSpinner.setWrapSelectorWheel(false);
        } else {
            this.mDaySpinner.setMinValue(1);
            this.mDaySpinner.setMaxValue(this.mCurrentDate.getActualMaximum(5));
            this.mDaySpinner.setWrapSelectorWheel(true);
            this.mMonthSpinner.setDisplayedValues(null);
            this.mMonthSpinner.setMinValue(0);
            this.mMonthSpinner.setMaxValue(11);
            this.mMonthSpinner.setWrapSelectorWheel(true);
        }
        this.mMonthSpinner.setDisplayedValues((String[]) Arrays.copyOfRange(this.mShortMonths, this.mMonthSpinner.getMinValue(), this.mMonthSpinner.getMaxValue() + 1));
        this.mYearSpinner.setMinValue(this.mMinDate.get(1));
        this.mYearSpinner.setMaxValue(this.mMaxDate.get(1));
        this.mYearSpinner.setWrapSelectorWheel(false);
        this.mYearSpinner.setValue(this.mCurrentDate.get(1));
        this.mMonthSpinner.setValue(this.mCurrentDate.get(2));
        this.mDaySpinner.setValue(this.mCurrentDate.get(5));
        if (usingNumericMonths()) {
            this.mMonthSpinnerInput.setRawInputType(2);
        }
    }

    private boolean usingNumericMonths() {
        return Character.isDigit(this.mShortMonths[0].charAt(0));
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public CalendarView getCalendarView() {
        return this.mCalendarView;
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public boolean getCalendarViewShown() {
        return this.mCalendarView.getVisibility() == 0;
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public int getDayOfMonth() {
        return this.mCurrentDate.get(5);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public int getFirstDayOfWeek() {
        return this.mCalendarView.getFirstDayOfWeek();
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public Calendar getMaxDate() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(this.mCalendarView.getMaxDate());
        return calendar;
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public Calendar getMinDate() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(this.mCalendarView.getMinDate());
        return calendar;
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public int getMonth() {
        return this.mCurrentDate.get(2);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public boolean getSpinnersShown() {
        return this.mSpinners.isShown();
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public int getYear() {
        return this.mCurrentDate.get(1);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void init(int i2, int i3, int i4, DatePicker.OnDateChangedListener onDateChangedListener) {
        setDate(i2, i3, i4);
        updateSpinners();
        updateCalendarView();
        this.mOnDateChangedListener = onDateChangedListener;
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void onConfigurationChanged(Configuration configuration) {
        setCurrentLocale(configuration.locale);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof DatePicker.AbstractDatePickerDelegate.SavedState) {
            DatePicker.AbstractDatePickerDelegate.SavedState savedState = (DatePicker.AbstractDatePickerDelegate.SavedState) parcelable;
            setDate(savedState.getSelectedYear(), savedState.getSelectedMonth(), savedState.getSelectedDay());
            updateSpinners();
            updateCalendarView();
        }
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public Parcelable onSaveInstanceState(Parcelable parcelable) {
        return new DatePicker.AbstractDatePickerDelegate.SavedState(parcelable, getYear(), getMonth(), getDayOfMonth(), getMinDate().getTimeInMillis(), getMaxDate().getTimeInMillis());
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void setCalendarViewShown(boolean z2) {
        this.mCalendarView.setVisibility(z2 ? 0 : 8);
    }

    @Override // android.widget.DatePicker.AbstractDatePickerDelegate
    public void setCurrentLocale(Locale locale) {
        super.setCurrentLocale(locale);
        this.mTempDate = getCalendarForLocale(this.mTempDate, locale);
        this.mMinDate = getCalendarForLocale(this.mMinDate, locale);
        this.mMaxDate = getCalendarForLocale(this.mMaxDate, locale);
        this.mCurrentDate = getCalendarForLocale(this.mCurrentDate, locale);
        this.mNumberOfMonths = this.mTempDate.getActualMaximum(2) + 1;
        this.mShortMonths = new DateFormatSymbols().getShortMonths();
        if (usingNumericMonths()) {
            this.mShortMonths = new String[this.mNumberOfMonths];
            int i2 = 0;
            while (i2 < this.mNumberOfMonths) {
                int i3 = i2 + 1;
                this.mShortMonths[i2] = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i3));
                i2 = i3;
            }
        }
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void setEnabled(boolean z2) {
        this.mDaySpinner.setEnabled(z2);
        this.mMonthSpinner.setEnabled(z2);
        this.mYearSpinner.setEnabled(z2);
        this.mCalendarView.setEnabled(z2);
        this.mIsEnabled = z2;
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void setFirstDayOfWeek(int i2) {
        this.mCalendarView.setFirstDayOfWeek(i2);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void setMaxDate(long j2) {
        this.mTempDate.setTimeInMillis(j2);
        if (this.mTempDate.get(1) == this.mMaxDate.get(1) && this.mTempDate.get(6) == this.mMaxDate.get(6)) {
            return;
        }
        this.mMaxDate.setTimeInMillis(j2);
        this.mCalendarView.setMaxDate(j2);
        if (this.mCurrentDate.after(this.mMaxDate)) {
            this.mCurrentDate.setTimeInMillis(this.mMaxDate.getTimeInMillis());
            updateCalendarView();
        }
        updateSpinners();
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void setMinDate(long j2) {
        this.mTempDate.setTimeInMillis(j2);
        if (this.mTempDate.get(1) == this.mMinDate.get(1) && this.mTempDate.get(6) == this.mMinDate.get(6)) {
            return;
        }
        this.mMinDate.setTimeInMillis(j2);
        this.mCalendarView.setMinDate(j2);
        if (this.mCurrentDate.before(this.mMinDate)) {
            this.mCurrentDate.setTimeInMillis(this.mMinDate.getTimeInMillis());
            updateCalendarView();
        }
        updateSpinners();
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void setSpinnersShown(boolean z2) {
        this.mSpinners.setVisibility(z2 ? 0 : 8);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void updateDate(int i2, int i3, int i4) {
        if (isNewDate(i2, i3, i4)) {
            setDate(i2, i3, i4);
            updateSpinners();
            updateCalendarView();
            notifyDateChanged();
        }
    }
}
