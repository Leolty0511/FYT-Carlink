package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.icu.util.Calendar;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.MathUtils;
import android.view.View;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import com.android.internal.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;
import libcore.icu.LocaleData;

/* JADX INFO: loaded from: classes2.dex */
public class TimePicker extends FrameLayout {
    private static final String LOG_TAG = "TimePicker";
    public static final int MODE_CLOCK = 2;
    public static final int MODE_SPINNER = 1;
    private final TimePickerDelegate mDelegate;
    private final int mMode;

    public static abstract class AbstractTimePickerDelegate implements TimePickerDelegate {
        protected OnTimeChangedListener mAutoFillChangeListener;
        private long mAutofilledValue;
        protected final Context mContext;
        protected final TimePicker mDelegator;
        protected final Locale mLocale;
        protected OnTimeChangedListener mOnTimeChangedListener;

        public static class SavedState extends View.BaseSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.widget.TimePicker.AbstractTimePickerDelegate.SavedState.1
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
            private final int mCurrentItemShowing;
            private final int mHour;
            private final boolean mIs24HourMode;
            private final int mMinute;

            public int getCurrentItemShowing() {
                return this.mCurrentItemShowing;
            }

            public int getHour() {
                return this.mHour;
            }

            public int getMinute() {
                return this.mMinute;
            }

            public boolean is24HourMode() {
                return this.mIs24HourMode;
            }

            @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                super.writeToParcel(parcel, i2);
                parcel.writeInt(this.mHour);
                parcel.writeInt(this.mMinute);
                parcel.writeInt(this.mIs24HourMode ? 1 : 0);
                parcel.writeInt(this.mCurrentItemShowing);
            }

            public SavedState(Parcelable parcelable, int i2, int i3, boolean z2) {
                this(parcelable, i2, i3, z2, 0);
            }

            public SavedState(Parcelable parcelable, int i2, int i3, boolean z2, int i4) {
                super(parcelable);
                this.mHour = i2;
                this.mMinute = i3;
                this.mIs24HourMode = z2;
                this.mCurrentItemShowing = i4;
            }

            private SavedState(Parcel parcel) {
                super(parcel);
                this.mHour = parcel.readInt();
                this.mMinute = parcel.readInt();
                this.mIs24HourMode = parcel.readInt() == 1;
                this.mCurrentItemShowing = parcel.readInt();
            }
        }

        public AbstractTimePickerDelegate(TimePicker timePicker, Context context) {
            this.mDelegator = timePicker;
            this.mContext = context;
            this.mLocale = context.getResources().getConfiguration().locale;
        }

        @Override // android.widget.TimePicker.TimePickerDelegate
        public final void autofill(AutofillValue autofillValue) {
            if (autofillValue != null && autofillValue.isDate()) {
                long dateValue = autofillValue.getDateValue();
                Calendar calendar = Calendar.getInstance(this.mLocale);
                calendar.setTimeInMillis(dateValue);
                setDate(calendar.get(11), calendar.get(12));
                this.mAutofilledValue = dateValue;
                return;
            }
            Log.w(TimePicker.LOG_TAG, autofillValue + " could not be autofilled into " + this);
        }

        @Override // android.widget.TimePicker.TimePickerDelegate
        public final AutofillValue getAutofillValue() {
            long j2 = this.mAutofilledValue;
            if (j2 != 0) {
                return AutofillValue.forDate(j2);
            }
            Calendar calendar = Calendar.getInstance(this.mLocale);
            calendar.set(11, getHour());
            calendar.set(12, getMinute());
            return AutofillValue.forDate(calendar.getTimeInMillis());
        }

        public void resetAutofilledValue() {
            this.mAutofilledValue = 0L;
        }

        @Override // android.widget.TimePicker.TimePickerDelegate
        public void setAutoFillChangeListener(OnTimeChangedListener onTimeChangedListener) {
            this.mAutoFillChangeListener = onTimeChangedListener;
        }

        @Override // android.widget.TimePicker.TimePickerDelegate
        public void setOnTimeChangedListener(OnTimeChangedListener onTimeChangedListener) {
            this.mOnTimeChangedListener = onTimeChangedListener;
        }
    }

    public interface OnTimeChangedListener {
        void onTimeChanged(TimePicker timePicker, int i2, int i3);
    }

    public interface TimePickerDelegate {
        void autofill(AutofillValue autofillValue);

        boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent);

        View getAmView();

        AutofillValue getAutofillValue();

        int getBaseline();

        int getHour();

        View getHourView();

        int getMinute();

        View getMinuteView();

        View getPmView();

        boolean is24Hour();

        boolean isEnabled();

        void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent);

        void onRestoreInstanceState(Parcelable parcelable);

        Parcelable onSaveInstanceState(Parcelable parcelable);

        void setAutoFillChangeListener(OnTimeChangedListener onTimeChangedListener);

        void setDate(int i2, int i3);

        void setEnabled(boolean z2);

        void setHour(int i2);

        void setIs24Hour(boolean z2);

        void setMinute(int i2);

        void setOnTimeChangedListener(OnTimeChangedListener onTimeChangedListener);

        boolean validateInput();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TimePickerMode {
    }

    public TimePicker(Context context) {
        this(context, null);
    }

    public static String[] getAmPmStrings(Context context) {
        LocaleData localeData = LocaleData.get(context.getResources().getConfiguration().locale);
        String[] strArr = new String[2];
        strArr[0] = localeData.amPm[0].length() > 4 ? localeData.narrowAm : localeData.amPm[0];
        strArr[1] = localeData.amPm[1].length() > 4 ? localeData.narrowPm : localeData.amPm[1];
        return strArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Context context, TimePicker timePicker, int i2, int i3) {
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

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return TimePicker.class.getName();
    }

    public View getAmView() {
        return this.mDelegate.getAmView();
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

    @Override // android.view.View
    public int getBaseline() {
        return this.mDelegate.getBaseline();
    }

    @Deprecated
    public Integer getCurrentHour() {
        return Integer.valueOf(getHour());
    }

    @Deprecated
    public Integer getCurrentMinute() {
        return Integer.valueOf(getMinute());
    }

    public int getHour() {
        return this.mDelegate.getHour();
    }

    public View getHourView() {
        return this.mDelegate.getHourView();
    }

    public int getMinute() {
        return this.mDelegate.getMinute();
    }

    public View getMinuteView() {
        return this.mDelegate.getMinuteView();
    }

    public int getMode() {
        return this.mMode;
    }

    public View getPmView() {
        return this.mDelegate.getPmView();
    }

    public boolean is24HourView() {
        return this.mDelegate.is24Hour();
    }

    @Override // android.view.View
    public boolean isEnabled() {
        return this.mDelegate.isEnabled();
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
    public void setCurrentHour(Integer num) {
        setHour(num.intValue());
    }

    @Deprecated
    public void setCurrentMinute(Integer num) {
        setMinute(num.intValue());
    }

    @Override // android.view.View
    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
        this.mDelegate.setEnabled(z2);
    }

    public void setHour(int i2) {
        this.mDelegate.setHour(MathUtils.constrain(i2, 0, 23));
    }

    public void setIs24HourView(Boolean bool) {
        if (bool == null) {
            return;
        }
        this.mDelegate.setIs24Hour(bool.booleanValue());
    }

    public void setMinute(int i2) {
        this.mDelegate.setMinute(MathUtils.constrain(i2, 0, 59));
    }

    public void setOnTimeChangedListener(OnTimeChangedListener onTimeChangedListener) {
        this.mDelegate.setOnTimeChangedListener(onTimeChangedListener);
    }

    public boolean validateInput() {
        return this.mDelegate.validateInput();
    }

    public TimePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843933);
    }

    public TimePicker(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public TimePicker(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        if (getImportantForAutofill() == 0) {
            setImportantForAutofill(1);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TimePicker, i2, i3);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(10, false);
        int i4 = typedArrayObtainStyledAttributes.getInt(8, 1);
        typedArrayObtainStyledAttributes.recycle();
        if (i4 == 2 && z2) {
            this.mMode = context.getResources().getInteger(R.integer.time_picker_mode);
        } else {
            this.mMode = i4;
        }
        if (this.mMode != 2) {
            this.mDelegate = new TimePickerSpinnerDelegate(this, context, attributeSet, i2, i3);
        } else {
            this.mDelegate = new TimePickerClockDelegate(this, context, attributeSet, i2, i3);
        }
        this.mDelegate.setAutoFillChangeListener(new c(this, context));
    }
}
