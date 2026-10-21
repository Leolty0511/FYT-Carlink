package android.widget;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.InputMethodManager;
import i.a;
import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;
import libcore.icu.ICU;

/* JADX INFO: loaded from: classes.dex */
public class DatePicker extends FrameLayout {
    private static final String DATE_FORMAT = "MM/dd/yyyy";
    private static final boolean DEFAULT_CALENDAR_VIEW_SHOWN = true;
    private static final boolean DEFAULT_ENABLED_STATE = true;
    private static final int DEFAULT_END_YEAR = 2100;
    private static final boolean DEFAULT_SPINNERS_SHOWN = true;
    private static final int DEFAULT_START_YEAR = 1900;
    private static final String LOG_TAG = "DatePicker";
    private final CalendarView mCalendarView;
    private Calendar mCurrentDate;
    private Locale mCurrentLocale;
    private final DateFormat mDateFormat;
    private final NumberPicker mDaySpinner;
    private final EditText mDaySpinnerInput;
    private boolean mIsEnabled;
    private Calendar mMaxDate;
    private Calendar mMinDate;
    private final NumberPicker mMonthSpinner;
    private final EditText mMonthSpinnerInput;
    private int mNumberOfMonths;
    private OnDateChangedListener mOnDateChangedListener;
    private String[] mShortMonths;
    private final LinearLayout mSpinners;
    private Calendar mTempDate;
    private final NumberPicker mYearSpinner;
    private final EditText mYearSpinnerInput;

    public interface OnDateChangedListener {
        void onDateChanged(DatePicker datePicker, int i2, int i3, int i4);
    }

    public DatePicker(Context context) {
        this(context, null);
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
        return (this.mCurrentDate.get(1) == i2 && this.mCurrentDate.get(2) == i4 && this.mCurrentDate.get(5) == i3) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDateChanged() {
        sendAccessibilityEvent(4);
        OnDateChangedListener onDateChangedListener = this.mOnDateChangedListener;
        if (onDateChangedListener != null) {
            onDateChangedListener.onDateChanged(this, getYear(), getMonth(), getDayOfMonth());
        }
    }

    private boolean parseDate(String str, Calendar calendar) {
        try {
            calendar.setTime(this.mDateFormat.parse(str));
            return true;
        } catch (ParseException unused) {
            Log.w(LOG_TAG, "Date: " + str + " not in format: " + DATE_FORMAT);
            return false;
        }
    }

    private void reorderSpinners() {
        this.mSpinners.removeAllViews();
        char[] dateFormatOrder = ICU.getDateFormatOrder(ICU.getBestDateTimePattern("yyyyMMMdd", Locale.getDefault().toString()));
        int length = dateFormatOrder.length;
        for (int i2 = 0; i2 < length; i2++) {
            char c2 = dateFormatOrder[i2];
            if (c2 == 'M') {
                this.mSpinners.addView(this.mMonthSpinner);
                setImeOptions(this.mMonthSpinner, length, i2);
            } else if (c2 == 'd') {
                this.mSpinners.addView(this.mDaySpinner);
                setImeOptions(this.mDaySpinner, length, i2);
            } else {
                if (c2 != 'y') {
                    throw new IllegalArgumentException(Arrays.toString(dateFormatOrder));
                }
                this.mSpinners.addView(this.mYearSpinner);
                setImeOptions(this.mYearSpinner, length, i2);
            }
        }
    }

    private void setContentDescriptions() {
        trySetContentDescription(this.mDaySpinner, 16909048, 17040633);
        trySetContentDescription(this.mDaySpinner, 16909050, 17040634);
        trySetContentDescription(this.mMonthSpinner, 16909048, 17040631);
        trySetContentDescription(this.mMonthSpinner, 16909050, 17040632);
        trySetContentDescription(this.mYearSpinner, 16909048, 17040635);
        trySetContentDescription(this.mYearSpinner, 16909050, 17040636);
    }

    private void setCurrentLocale(Locale locale) {
        if (locale.equals(this.mCurrentLocale)) {
            return;
        }
        this.mCurrentLocale = locale;
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
                this.mShortMonths[i2] = String.format("%d", Integer.valueOf(i3));
                i2 = i3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDate(int i2, int i3, int i4) {
        this.mCurrentDate.set(i2, i3, i4);
        if (this.mCurrentDate.before(this.mMinDate)) {
            this.mCurrentDate.setTimeInMillis(this.mMinDate.getTimeInMillis());
        } else if (this.mCurrentDate.after(this.mMaxDate)) {
            this.mCurrentDate.setTimeInMillis(this.mMaxDate.getTimeInMillis());
        }
    }

    private void setImeOptions(NumberPicker numberPicker, int i2, int i3) {
        ((TextView) numberPicker.findViewById(16909049)).setImeOptions(i3 < i2 + (-1) ? 5 : 6);
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
                inputMethodManagerPeekInstance.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (inputMethodManagerPeekInstance.isActive(this.mMonthSpinnerInput)) {
                this.mMonthSpinnerInput.clearFocus();
                inputMethodManagerPeekInstance.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (inputMethodManagerPeekInstance.isActive(this.mDaySpinnerInput)) {
                this.mDaySpinnerInput.clearFocus();
                inputMethodManagerPeekInstance.hideSoftInputFromWindow(getWindowToken(), 0);
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

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    public CalendarView getCalendarView() {
        return this.mCalendarView;
    }

    public boolean getCalendarViewShown() {
        return this.mCalendarView.getVisibility() == 0;
    }

    public int getDayOfMonth() {
        return this.mCurrentDate.get(5);
    }

    public long getMaxDate() {
        return this.mCalendarView.getMaxDate();
    }

    public long getMinDate() {
        return this.mCalendarView.getMinDate();
    }

    public int getMonth() {
        return this.mCurrentDate.get(2);
    }

    public boolean getSpinnersShown() {
        return this.mSpinners.isShown();
    }

    public int getYear() {
        return this.mCurrentDate.get(1);
    }

    public void init(int i2, int i3, int i4, OnDateChangedListener onDateChangedListener) {
        setDate(i2, i3, i4);
        updateSpinners();
        updateCalendarView();
        this.mOnDateChangedListener = onDateChangedListener;
    }

    @Override // android.view.View
    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setCurrentLocale(configuration.locale);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(DatePicker.class.getName());
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(DatePicker.class.getName());
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.getText().add(DateUtils.formatDateTime(this.mContext, this.mCurrentDate.getTimeInMillis(), 20));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setDate(savedState.mYear, savedState.mMonth, savedState.mDay);
        updateSpinners();
        updateCalendarView();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), getYear(), getMonth(), getDayOfMonth());
    }

    public void setCalendarViewShown(boolean z2) {
        this.mCalendarView.setVisibility(z2 ? 0 : 8);
    }

    @Override // android.view.View
    public void setEnabled(boolean z2) {
        if (this.mIsEnabled == z2) {
            return;
        }
        super.setEnabled(z2);
        this.mDaySpinner.setEnabled(z2);
        this.mMonthSpinner.setEnabled(z2);
        this.mYearSpinner.setEnabled(z2);
        this.mCalendarView.setEnabled(z2);
        this.mIsEnabled = z2;
    }

    public void setMaxDate(long j2) {
        this.mTempDate.setTimeInMillis(j2);
        if (this.mTempDate.get(1) != this.mMaxDate.get(1) || this.mTempDate.get(6) == this.mMaxDate.get(6)) {
            this.mMaxDate.setTimeInMillis(j2);
            this.mCalendarView.setMaxDate(j2);
            if (this.mCurrentDate.after(this.mMaxDate)) {
                this.mCurrentDate.setTimeInMillis(this.mMaxDate.getTimeInMillis());
                updateCalendarView();
            }
            updateSpinners();
        }
    }

    public void setMinDate(long j2) {
        this.mTempDate.setTimeInMillis(j2);
        if (this.mTempDate.get(1) != this.mMinDate.get(1) || this.mTempDate.get(6) == this.mMinDate.get(6)) {
            this.mMinDate.setTimeInMillis(j2);
            this.mCalendarView.setMinDate(j2);
            if (this.mCurrentDate.before(this.mMinDate)) {
                this.mCurrentDate.setTimeInMillis(this.mMinDate.getTimeInMillis());
                updateCalendarView();
            }
            updateSpinners();
        }
    }

    public void setSpinnersShown(boolean z2) {
        this.mSpinners.setVisibility(z2 ? 0 : 8);
    }

    public void updateDate(int i2, int i3, int i4) {
        if (isNewDate(i2, i3, i4)) {
            setDate(i2, i3, i4);
            updateSpinners();
            updateCalendarView();
            notifyDateChanged();
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.widget.DatePicker.SavedState.1
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
        private final int mDay;
        private final int mMonth;
        private final int mYear;

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.mYear);
            parcel.writeInt(this.mMonth);
            parcel.writeInt(this.mDay);
        }

        private SavedState(Parcelable parcelable, int i2, int i3, int i4) {
            super(parcelable);
            this.mYear = i2;
            this.mMonth = i3;
            this.mDay = i4;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mYear = parcel.readInt();
            this.mMonth = parcel.readInt();
            this.mDay = parcel.readInt();
        }
    }

    public DatePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.datePickerStyle);
    }

    public DatePicker(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mDateFormat = new SimpleDateFormat(DATE_FORMAT);
        this.mIsEnabled = true;
        setCurrentLocale(Locale.getDefault());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.DatePicker, i2, 0);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(4, true);
        boolean z3 = typedArrayObtainStyledAttributes.getBoolean(5, true);
        int i3 = typedArrayObtainStyledAttributes.getInt(0, DEFAULT_START_YEAR);
        int i4 = typedArrayObtainStyledAttributes.getInt(1, DEFAULT_END_YEAR);
        String string = typedArrayObtainStyledAttributes.getString(2);
        String string2 = typedArrayObtainStyledAttributes.getString(3);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(6, 17367096);
        typedArrayObtainStyledAttributes.recycle();
        ((LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(resourceId, (ViewGroup) this, true);
        NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: android.widget.DatePicker.1
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public void onValueChange(NumberPicker numberPicker, int i5, int i6) {
                DatePicker.this.updateInputState();
                DatePicker.this.mTempDate.setTimeInMillis(DatePicker.this.mCurrentDate.getTimeInMillis());
                if (numberPicker == DatePicker.this.mDaySpinner) {
                    int actualMaximum = DatePicker.this.mTempDate.getActualMaximum(5);
                    if (i5 == actualMaximum && i6 == 1) {
                        DatePicker.this.mTempDate.add(5, 1);
                    } else if (i5 == 1 && i6 == actualMaximum) {
                        DatePicker.this.mTempDate.add(5, -1);
                    } else {
                        DatePicker.this.mTempDate.add(5, i6 - i5);
                    }
                } else if (numberPicker == DatePicker.this.mMonthSpinner) {
                    if (i5 == 11 && i6 == 0) {
                        DatePicker.this.mTempDate.add(2, 1);
                    } else if (i5 == 0 && i6 == 11) {
                        DatePicker.this.mTempDate.add(2, -1);
                    } else {
                        DatePicker.this.mTempDate.add(2, i6 - i5);
                    }
                } else {
                    if (numberPicker != DatePicker.this.mYearSpinner) {
                        throw new IllegalArgumentException();
                    }
                    DatePicker.this.mTempDate.set(1, i6);
                }
                DatePicker datePicker = DatePicker.this;
                datePicker.setDate(datePicker.mTempDate.get(1), DatePicker.this.mTempDate.get(2), DatePicker.this.mTempDate.get(5));
                DatePicker.this.updateSpinners();
                DatePicker.this.updateCalendarView();
                DatePicker.this.notifyDateChanged();
            }
        };
        this.mSpinners = (LinearLayout) findViewById(16908961);
        CalendarView calendarView = (CalendarView) findViewById(16908965);
        this.mCalendarView = calendarView;
        calendarView.setOnDateChangeListener(new CalendarView.OnDateChangeListener() { // from class: android.widget.DatePicker.2
            @Override // android.widget.CalendarView.OnDateChangeListener
            public void onSelectedDayChange(CalendarView calendarView2, int i5, int i6, int i7) {
                DatePicker.this.setDate(i5, i6, i7);
                DatePicker.this.updateSpinners();
                DatePicker.this.notifyDateChanged();
            }
        });
        NumberPicker numberPicker = (NumberPicker) findViewById(16908963);
        this.mDaySpinner = numberPicker;
        numberPicker.setFormatter(NumberPicker.getTwoDigitFormatter());
        numberPicker.setOnLongPressUpdateInterval(100L);
        numberPicker.setOnValueChangedListener(onValueChangeListener);
        this.mDaySpinnerInput = (EditText) numberPicker.findViewById(16909049);
        NumberPicker numberPicker2 = (NumberPicker) findViewById(16908962);
        this.mMonthSpinner = numberPicker2;
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(this.mNumberOfMonths - 1);
        numberPicker2.setDisplayedValues(this.mShortMonths);
        numberPicker2.setOnLongPressUpdateInterval(200L);
        numberPicker2.setOnValueChangedListener(onValueChangeListener);
        this.mMonthSpinnerInput = (EditText) numberPicker2.findViewById(16909049);
        NumberPicker numberPicker3 = (NumberPicker) findViewById(16908964);
        this.mYearSpinner = numberPicker3;
        numberPicker3.setOnLongPressUpdateInterval(100L);
        numberPicker3.setOnValueChangedListener(onValueChangeListener);
        this.mYearSpinnerInput = (EditText) numberPicker3.findViewById(16909049);
        if (!z2 && !z3) {
            setSpinnersShown(true);
        } else {
            setSpinnersShown(z2);
            setCalendarViewShown(z3);
        }
        this.mTempDate.clear();
        if (TextUtils.isEmpty(string) || !parseDate(string, this.mTempDate)) {
            this.mTempDate.set(i3, 0, 1);
        }
        setMinDate(this.mTempDate.getTimeInMillis());
        this.mTempDate.clear();
        if (TextUtils.isEmpty(string2) || !parseDate(string2, this.mTempDate)) {
            this.mTempDate.set(i4, 11, 31);
        }
        setMaxDate(this.mTempDate.getTimeInMillis());
        this.mCurrentDate.setTimeInMillis(System.currentTimeMillis());
        init(this.mCurrentDate.get(1), this.mCurrentDate.get(2), this.mCurrentDate.get(5), null);
        reorderSpinners();
        setContentDescriptions();
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }
}
