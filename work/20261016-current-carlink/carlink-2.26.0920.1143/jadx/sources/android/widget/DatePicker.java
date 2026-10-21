package android.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.icu.util.Calendar;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import com.android.internal.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class DatePicker extends FrameLayout {
    private static final String LOG_TAG = "DatePicker";
    public static final int MODE_CALENDAR = 2;
    public static final int MODE_SPINNER = 1;
    private final DatePickerDelegate mDelegate;
    private final int mMode;

    public static abstract class AbstractDatePickerDelegate implements DatePickerDelegate {
        protected OnDateChangedListener mAutoFillChangeListener;
        private long mAutofilledValue;
        protected Context mContext;
        protected Calendar mCurrentDate;
        protected Locale mCurrentLocale;
        protected DatePicker mDelegator;
        protected OnDateChangedListener mOnDateChangedListener;
        protected ValidationCallback mValidationCallback;

        public static class SavedState extends View.BaseSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.widget.DatePicker.AbstractDatePickerDelegate.SavedState.1
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
            private final int mCurrentView;
            private final int mListPosition;
            private final int mListPositionOffset;
            private final long mMaxDate;
            private final long mMinDate;
            private final int mSelectedDay;
            private final int mSelectedMonth;
            private final int mSelectedYear;

            public int getCurrentView() {
                return this.mCurrentView;
            }

            public int getListPosition() {
                return this.mListPosition;
            }

            public int getListPositionOffset() {
                return this.mListPositionOffset;
            }

            public long getMaxDate() {
                return this.mMaxDate;
            }

            public long getMinDate() {
                return this.mMinDate;
            }

            public int getSelectedDay() {
                return this.mSelectedDay;
            }

            public int getSelectedMonth() {
                return this.mSelectedMonth;
            }

            public int getSelectedYear() {
                return this.mSelectedYear;
            }

            @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                super.writeToParcel(parcel, i2);
                parcel.writeInt(this.mSelectedYear);
                parcel.writeInt(this.mSelectedMonth);
                parcel.writeInt(this.mSelectedDay);
                parcel.writeLong(this.mMinDate);
                parcel.writeLong(this.mMaxDate);
                parcel.writeInt(this.mCurrentView);
                parcel.writeInt(this.mListPosition);
                parcel.writeInt(this.mListPositionOffset);
            }

            public SavedState(Parcelable parcelable, int i2, int i3, int i4, long j2, long j3) {
                this(parcelable, i2, i3, i4, j2, j3, 0, 0, 0);
            }

            public SavedState(Parcelable parcelable, int i2, int i3, int i4, long j2, long j3, int i5, int i6, int i7) {
                super(parcelable);
                this.mSelectedYear = i2;
                this.mSelectedMonth = i3;
                this.mSelectedDay = i4;
                this.mMinDate = j2;
                this.mMaxDate = j3;
                this.mCurrentView = i5;
                this.mListPosition = i6;
                this.mListPositionOffset = i7;
            }

            private SavedState(Parcel parcel) {
                super(parcel);
                this.mSelectedYear = parcel.readInt();
                this.mSelectedMonth = parcel.readInt();
                this.mSelectedDay = parcel.readInt();
                this.mMinDate = parcel.readLong();
                this.mMaxDate = parcel.readLong();
                this.mCurrentView = parcel.readInt();
                this.mListPosition = parcel.readInt();
                this.mListPositionOffset = parcel.readInt();
            }
        }

        public AbstractDatePickerDelegate(DatePicker datePicker, Context context) {
            this.mDelegator = datePicker;
            this.mContext = context;
            setCurrentLocale(Locale.getDefault());
        }

        @Override // android.widget.DatePicker.DatePickerDelegate
        public final void autofill(AutofillValue autofillValue) {
            if (autofillValue != null && autofillValue.isDate()) {
                long dateValue = autofillValue.getDateValue();
                Calendar calendar = Calendar.getInstance(this.mCurrentLocale);
                calendar.setTimeInMillis(dateValue);
                updateDate(calendar.get(1), calendar.get(2), calendar.get(5));
                this.mAutofilledValue = dateValue;
                return;
            }
            Log.w(DatePicker.LOG_TAG, autofillValue + " could not be autofilled into " + this);
        }

        @Override // android.widget.DatePicker.DatePickerDelegate
        public final AutofillValue getAutofillValue() {
            long timeInMillis = this.mAutofilledValue;
            if (timeInMillis == 0) {
                timeInMillis = this.mCurrentDate.getTimeInMillis();
            }
            return AutofillValue.forDate(timeInMillis);
        }

        public String getFormattedCurrentDate() {
            return DateUtils.formatDateTime(this.mContext, this.mCurrentDate.getTimeInMillis(), 22);
        }

        public void onLocaleChanged(Locale locale) {
        }

        @Override // android.widget.DatePicker.DatePickerDelegate
        public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.getText().add(getFormattedCurrentDate());
        }

        public void onValidationChanged(boolean z2) {
            ValidationCallback validationCallback = this.mValidationCallback;
            if (validationCallback != null) {
                validationCallback.onValidationChanged(z2);
            }
        }

        public void resetAutofilledValue() {
            this.mAutofilledValue = 0L;
        }

        @Override // android.widget.DatePicker.DatePickerDelegate
        public void setAutoFillChangeListener(OnDateChangedListener onDateChangedListener) {
            this.mAutoFillChangeListener = onDateChangedListener;
        }

        public void setCurrentLocale(Locale locale) {
            if (locale.equals(this.mCurrentLocale)) {
                return;
            }
            this.mCurrentLocale = locale;
            onLocaleChanged(locale);
        }

        @Override // android.widget.DatePicker.DatePickerDelegate
        public void setOnDateChangedListener(OnDateChangedListener onDateChangedListener) {
            this.mOnDateChangedListener = onDateChangedListener;
        }

        @Override // android.widget.DatePicker.DatePickerDelegate
        public void setValidationCallback(ValidationCallback validationCallback) {
            this.mValidationCallback = validationCallback;
        }
    }

    public interface DatePickerDelegate {
        void autofill(AutofillValue autofillValue);

        boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent);

        AutofillValue getAutofillValue();

        CalendarView getCalendarView();

        boolean getCalendarViewShown();

        int getDayOfMonth();

        int getFirstDayOfWeek();

        Calendar getMaxDate();

        Calendar getMinDate();

        int getMonth();

        boolean getSpinnersShown();

        int getYear();

        void init(int i2, int i3, int i4, OnDateChangedListener onDateChangedListener);

        boolean isEnabled();

        void onConfigurationChanged(Configuration configuration);

        void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent);

        void onRestoreInstanceState(Parcelable parcelable);

        Parcelable onSaveInstanceState(Parcelable parcelable);

        void setAutoFillChangeListener(OnDateChangedListener onDateChangedListener);

        void setCalendarViewShown(boolean z2);

        void setEnabled(boolean z2);

        void setFirstDayOfWeek(int i2);

        void setMaxDate(long j2);

        void setMinDate(long j2);

        void setOnDateChangedListener(OnDateChangedListener onDateChangedListener);

        void setSpinnersShown(boolean z2);

        void setValidationCallback(ValidationCallback validationCallback);

        void updateDate(int i2, int i3, int i4);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DatePickerMode {
    }

    public interface OnDateChangedListener {
        void onDateChanged(DatePicker datePicker, int i2, int i3, int i4);
    }

    public interface ValidationCallback {
        void onValidationChanged(boolean z2);
    }

    public DatePicker(Context context) {
        this(context, null);
    }

    private DatePickerDelegate createCalendarUIDelegate(Context context, AttributeSet attributeSet, int i2, int i3) {
        return new DatePickerCalendarDelegate(this, context, attributeSet, i2, i3);
    }

    private DatePickerDelegate createSpinnerUIDelegate(Context context, AttributeSet attributeSet, int i2, int i3) {
        return new DatePickerSpinnerDelegate(this, context, attributeSet, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Context context, DatePicker datePicker, int i2, int i3, int i4) {
        AutofillManager autofillManager = (AutofillManager) context.getSystemService(AutofillManager.class);
        if (autofillManager != null) {
            autofillManager.notifyValueChanged(this);
        }
    }

    @Override // android.view.View
    public void autofill(AutofillValue autofillValue) {
        if (isEnabled()) {
            this.mDelegate.autofill(autofillValue);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchPopulateAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        return this.mDelegate.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i2) {
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return DatePicker.class.getName();
    }

    @Override // android.view.View
    public int getAutofillType() {
        return isEnabled() ? 4 : 0;
    }

    @Override // android.view.View
    public AutofillValue getAutofillValue() {
        if (isEnabled()) {
            return this.mDelegate.getAutofillValue();
        }
        return null;
    }

    @Deprecated
    public CalendarView getCalendarView() {
        return this.mDelegate.getCalendarView();
    }

    @Deprecated
    public boolean getCalendarViewShown() {
        return this.mDelegate.getCalendarViewShown();
    }

    public int getDayOfMonth() {
        return this.mDelegate.getDayOfMonth();
    }

    public int getFirstDayOfWeek() {
        return this.mDelegate.getFirstDayOfWeek();
    }

    public long getMaxDate() {
        return this.mDelegate.getMaxDate().getTimeInMillis();
    }

    public long getMinDate() {
        return this.mDelegate.getMinDate().getTimeInMillis();
    }

    public int getMode() {
        return this.mMode;
    }

    public int getMonth() {
        return this.mDelegate.getMonth();
    }

    @Deprecated
    public boolean getSpinnersShown() {
        return this.mDelegate.getSpinnersShown();
    }

    public int getYear() {
        return this.mDelegate.getYear();
    }

    public void init(int i2, int i3, int i4, OnDateChangedListener onDateChangedListener) {
        this.mDelegate.init(i2, i3, i4, onDateChangedListener);
    }

    @Override // android.view.View
    public boolean isEnabled() {
        return this.mDelegate.isEnabled();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mDelegate.onConfigurationChanged(configuration);
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEventInternal(accessibilityEvent);
        this.mDelegate.onPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        View.BaseSavedState baseSavedState = (View.BaseSavedState) parcelable;
        super.onRestoreInstanceState(baseSavedState.getSuperState());
        this.mDelegate.onRestoreInstanceState(baseSavedState);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        return this.mDelegate.onSaveInstanceState(super.onSaveInstanceState());
    }

    @Deprecated
    public void setCalendarViewShown(boolean z2) {
        this.mDelegate.setCalendarViewShown(z2);
    }

    @Override // android.view.View
    public void setEnabled(boolean z2) {
        if (this.mDelegate.isEnabled() == z2) {
            return;
        }
        super.setEnabled(z2);
        this.mDelegate.setEnabled(z2);
    }

    public void setFirstDayOfWeek(int i2) {
        if (i2 < 1 || i2 > 7) {
            throw new IllegalArgumentException("firstDayOfWeek must be between 1 and 7");
        }
        this.mDelegate.setFirstDayOfWeek(i2);
    }

    public void setMaxDate(long j2) {
        this.mDelegate.setMaxDate(j2);
    }

    public void setMinDate(long j2) {
        this.mDelegate.setMinDate(j2);
    }

    public void setOnDateChangedListener(OnDateChangedListener onDateChangedListener) {
        this.mDelegate.setOnDateChangedListener(onDateChangedListener);
    }

    @Deprecated
    public void setSpinnersShown(boolean z2) {
        this.mDelegate.setSpinnersShown(z2);
    }

    public void setValidationCallback(ValidationCallback validationCallback) {
        this.mDelegate.setValidationCallback(validationCallback);
    }

    public void updateDate(int i2, int i3, int i4) {
        this.mDelegate.updateDate(i2, i3, i4);
    }

    public DatePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843612);
    }

    public DatePicker(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public DatePicker(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        if (getImportantForAutofill() == 0) {
            setImportantForAutofill(1);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DatePicker, i2, i3);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(17, false);
        int i4 = typedArrayObtainStyledAttributes.getInt(16, 1);
        int i5 = typedArrayObtainStyledAttributes.getInt(3, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (i4 == 2 && z2) {
            this.mMode = context.getResources().getInteger(R.integer.date_picker_mode);
        } else {
            this.mMode = i4;
        }
        if (this.mMode != 2) {
            this.mDelegate = createSpinnerUIDelegate(context, attributeSet, i2, i3);
        } else {
            this.mDelegate = createCalendarUIDelegate(context, attributeSet, i2, i3);
        }
        if (i5 != 0) {
            setFirstDayOfWeek(i5);
        }
        this.mDelegate.setAutoFillChangeListener(new c(this, context));
    }
}
