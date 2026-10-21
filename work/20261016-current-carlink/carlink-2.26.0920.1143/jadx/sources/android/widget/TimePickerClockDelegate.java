package android.widget;

import android.app.backup.FullBackup;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.icu.text.DecimalFormatSymbols;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcelable;
import android.provider.SettingsStringUtil;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.style.TtsSpan;
import android.util.AttributeSet;
import android.util.StateSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.InputMethodManager;
import com.android.internal.R;
import com.android.internal.widget.NumericTextView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
class TimePickerClockDelegate extends TimePicker.AbstractTimePickerDelegate {
    private static final int AM = 0;
    private static final long DELAY_COMMIT_MILLIS = 2000;
    private static final int FROM_EXTERNAL_API = 0;
    private static final int FROM_INPUT_PICKER = 2;
    private static final int FROM_RADIAL_PICKER = 1;
    private static final int HOURS_IN_HALF_DAY = 12;
    private static final int HOUR_INDEX = 0;
    private static final int MINUTE_INDEX = 1;
    private static final int PM = 1;
    private boolean mAllowAutoAdvance;
    private final RadioButton mAmLabel;
    private final View mAmPmLayout;
    private final View.OnClickListener mClickListener;
    private final Runnable mCommitHour;
    private final Runnable mCommitMinute;
    private int mCurrentHour;
    private int mCurrentMinute;
    private final NumericTextView.OnValueChangedListener mDigitEnteredListener;
    private final View.OnFocusChangeListener mFocusListener;
    private boolean mHourFormatShowLeadingZero;
    private boolean mHourFormatStartsAtZero;
    private final NumericTextView mHourView;
    private boolean mIs24Hour;
    private boolean mIsAmPmAtLeft;
    private boolean mIsAmPmAtTop;
    private boolean mIsEnabled;
    private boolean mLastAnnouncedIsHour;
    private CharSequence mLastAnnouncedText;
    private final NumericTextView mMinuteView;
    private final RadialTimePickerView.OnValueSelectedListener mOnValueSelectedListener;
    private final TextInputTimePickerView.OnValueTypedListener mOnValueTypedListener;
    private final RadioButton mPmLabel;
    private boolean mRadialPickerModeEnabled;
    private final View mRadialTimePickerHeader;
    private final ImageButton mRadialTimePickerModeButton;
    private final String mRadialTimePickerModeEnabledDescription;
    private final RadialTimePickerView mRadialTimePickerView;
    private final String mSelectHours;
    private final String mSelectMinutes;
    private final TextView mSeparatorView;
    private final Calendar mTempCalendar;
    private final View mTextInputPickerHeader;
    private final String mTextInputPickerModeEnabledDescription;
    private final TextInputTimePickerView mTextInputPickerView;
    private static final int[] ATTRS_TEXT_COLOR = {16842904};
    private static final int[] ATTRS_DISABLED_ALPHA = {16842803};

    @Retention(RetentionPolicy.SOURCE)
    public @interface ChangeSource {
    }

    public static class ClickActionDelegate extends View.AccessibilityDelegate {
        private final AccessibilityNodeInfo.AccessibilityAction mClickAction;

        public ClickActionDelegate(Context context, int i2) {
            this.mClickAction = new AccessibilityNodeInfo.AccessibilityAction(16, context.getString(i2));
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.addAction(this.mClickAction);
        }
    }

    public static class NearestTouchDelegate implements View.OnTouchListener {
        private View mInitialTouchTarget;

        private NearestTouchDelegate() {
        }

        private View findNearestChild(ViewGroup viewGroup, int i2, int i3) {
            int childCount = viewGroup.getChildCount();
            View view = null;
            int i4 = Integer.MAX_VALUE;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = viewGroup.getChildAt(i5);
                int width = i2 - ((childAt.getWidth() / 2) + childAt.getLeft());
                int height = i3 - ((childAt.getHeight() / 2) + childAt.getTop());
                int i6 = (height * height) + (width * width);
                if (i4 > i6) {
                    view = childAt;
                    i4 = i6;
                }
            }
            return view;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (view instanceof ViewGroup) {
                    this.mInitialTouchTarget = findNearestChild((ViewGroup) view, (int) motionEvent.getX(), (int) motionEvent.getY());
                } else {
                    this.mInitialTouchTarget = null;
                }
            }
            View view2 = this.mInitialTouchTarget;
            if (view2 == null) {
                return false;
            }
            float scrollX = view.getScrollX() - view2.getLeft();
            float scrollY = view.getScrollY() - view2.getTop();
            motionEvent.offsetLocation(scrollX, scrollY);
            boolean zDispatchTouchEvent = view2.dispatchTouchEvent(motionEvent);
            motionEvent.offsetLocation(-scrollX, -scrollY);
            if (actionMasked == 1 || actionMasked == 3) {
                this.mInitialTouchTarget = null;
            }
            return zDispatchTouchEvent;
        }
    }

    public TimePickerClockDelegate(TimePicker timePicker, Context context, AttributeSet attributeSet, int i2, int i3) {
        ColorStateList colorStateList;
        super(timePicker, context);
        this.mRadialPickerModeEnabled = true;
        this.mIsEnabled = true;
        this.mIsAmPmAtLeft = false;
        this.mIsAmPmAtTop = false;
        RadialTimePickerView.OnValueSelectedListener onValueSelectedListener = new RadialTimePickerView.OnValueSelectedListener() { // from class: android.widget.TimePickerClockDelegate.2
            @Override // android.widget.RadialTimePickerView.OnValueSelectedListener
            public void onValueSelected(int i4, int i5, boolean z2) {
                boolean z3 = false;
                if (i4 == 0) {
                    boolean z4 = TimePickerClockDelegate.this.getHour() != i5;
                    boolean z5 = TimePickerClockDelegate.this.mAllowAutoAdvance && z2;
                    TimePickerClockDelegate.this.setHourInternal(i5, 1, !z5, true);
                    if (z5) {
                        TimePickerClockDelegate.this.setCurrentItemShowing(1, true, false);
                        int localizedHour = TimePickerClockDelegate.this.getLocalizedHour(i5);
                        TimePickerClockDelegate.this.mDelegator.announceForAccessibility(localizedHour + ". " + TimePickerClockDelegate.this.mSelectMinutes);
                    }
                    z3 = z4;
                } else if (i4 == 1) {
                    z3 = TimePickerClockDelegate.this.getMinute() != i5;
                    TimePickerClockDelegate.this.setMinuteInternal(i5, 1, true);
                }
                TimePickerClockDelegate timePickerClockDelegate = TimePickerClockDelegate.this;
                TimePicker.OnTimeChangedListener onTimeChangedListener = timePickerClockDelegate.mOnTimeChangedListener;
                if (onTimeChangedListener == null || !z3) {
                    return;
                }
                onTimeChangedListener.onTimeChanged(timePickerClockDelegate.mDelegator, timePickerClockDelegate.getHour(), TimePickerClockDelegate.this.getMinute());
            }
        };
        this.mOnValueSelectedListener = onValueSelectedListener;
        TextInputTimePickerView.OnValueTypedListener onValueTypedListener = new TextInputTimePickerView.OnValueTypedListener() { // from class: android.widget.TimePickerClockDelegate.3
            @Override // android.widget.TextInputTimePickerView.OnValueTypedListener
            public void onValueChanged(int i4, int i5) {
                if (i4 == 0) {
                    TimePickerClockDelegate.this.setHourInternal(i5, 2, false, true);
                } else if (i4 == 1) {
                    TimePickerClockDelegate.this.setMinuteInternal(i5, 2, true);
                } else {
                    if (i4 != 2) {
                        return;
                    }
                    TimePickerClockDelegate.this.setAmOrPm(i5);
                }
            }
        };
        this.mOnValueTypedListener = onValueTypedListener;
        NumericTextView.OnValueChangedListener onValueChangedListener = new NumericTextView.OnValueChangedListener() { // from class: android.widget.TimePickerClockDelegate.4
            @Override // com.android.internal.widget.NumericTextView.OnValueChangedListener
            public void onValueChanged(NumericTextView numericTextView, int i4, boolean z2, boolean z3) {
                Runnable runnable;
                NumericTextView numericTextView2 = null;
                if (numericTextView == TimePickerClockDelegate.this.mHourView) {
                    runnable = TimePickerClockDelegate.this.mCommitHour;
                    if (numericTextView.isFocused()) {
                        numericTextView2 = TimePickerClockDelegate.this.mMinuteView;
                    }
                } else if (numericTextView != TimePickerClockDelegate.this.mMinuteView) {
                    return;
                } else {
                    runnable = TimePickerClockDelegate.this.mCommitMinute;
                }
                numericTextView.removeCallbacks(runnable);
                if (z2) {
                    if (!z3) {
                        numericTextView.postDelayed(runnable, TimePickerClockDelegate.DELAY_COMMIT_MILLIS);
                        return;
                    }
                    runnable.run();
                    if (numericTextView2 != null) {
                        numericTextView2.requestFocus();
                    }
                }
            }
        };
        this.mDigitEnteredListener = onValueChangedListener;
        this.mCommitHour = new Runnable() { // from class: android.widget.TimePickerClockDelegate.5
            @Override // java.lang.Runnable
            public void run() {
                TimePickerClockDelegate timePickerClockDelegate = TimePickerClockDelegate.this;
                timePickerClockDelegate.setHour(timePickerClockDelegate.mHourView.getValue());
            }
        };
        this.mCommitMinute = new Runnable() { // from class: android.widget.TimePickerClockDelegate.6
            @Override // java.lang.Runnable
            public void run() {
                TimePickerClockDelegate timePickerClockDelegate = TimePickerClockDelegate.this;
                timePickerClockDelegate.setMinute(timePickerClockDelegate.mMinuteView.getValue());
            }
        };
        View.OnFocusChangeListener onFocusChangeListener = new View.OnFocusChangeListener() { // from class: android.widget.TimePickerClockDelegate.7
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z2) {
                if (z2) {
                    switch (view.getId()) {
                        case R.id.am_label /* 16908711 */:
                            TimePickerClockDelegate.this.setAmOrPm(0);
                            break;
                        case R.id.hours /* 16908942 */:
                            TimePickerClockDelegate.this.setCurrentItemShowing(0, true, true);
                            break;
                        case R.id.minutes /* 16909052 */:
                            TimePickerClockDelegate.this.setCurrentItemShowing(1, true, true);
                            break;
                        case R.id.pm_label /* 16909166 */:
                            TimePickerClockDelegate.this.setAmOrPm(1);
                            break;
                        default:
                            return;
                    }
                    TimePickerClockDelegate.this.tryVibrate();
                }
            }
        };
        this.mFocusListener = onFocusChangeListener;
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: android.widget.TimePickerClockDelegate.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                switch (view.getId()) {
                    case R.id.am_label /* 16908711 */:
                        TimePickerClockDelegate.this.setAmOrPm(0);
                        break;
                    case R.id.hours /* 16908942 */:
                        TimePickerClockDelegate.this.setCurrentItemShowing(0, true, true);
                        break;
                    case R.id.minutes /* 16909052 */:
                        TimePickerClockDelegate.this.setCurrentItemShowing(1, true, true);
                        break;
                    case R.id.pm_label /* 16909166 */:
                        TimePickerClockDelegate.this.setAmOrPm(1);
                        break;
                    default:
                        return;
                }
                TimePickerClockDelegate.this.tryVibrate();
            }
        };
        this.mClickListener = onClickListener;
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, R.styleable.TimePicker, i2, i3);
        LayoutInflater layoutInflater = (LayoutInflater) this.mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        Resources resources = this.mContext.getResources();
        this.mSelectHours = resources.getString(R.string.select_hours);
        this.mSelectMinutes = resources.getString(R.string.select_minutes);
        View viewInflate = layoutInflater.inflate(typedArrayObtainStyledAttributes.getResourceId(12, R.layout.time_picker_material), timePicker);
        viewInflate.setSaveFromParentEnabled(false);
        View viewFindViewById = viewInflate.findViewById(R.id.time_header);
        this.mRadialTimePickerHeader = viewFindViewById;
        viewFindViewById.setOnTouchListener(new NearestTouchDelegate());
        NumericTextView numericTextView = (NumericTextView) viewInflate.findViewById(R.id.hours);
        this.mHourView = numericTextView;
        numericTextView.setOnClickListener(onClickListener);
        numericTextView.setOnFocusChangeListener(onFocusChangeListener);
        numericTextView.setOnDigitEnteredListener(onValueChangedListener);
        numericTextView.setAccessibilityDelegate(new ClickActionDelegate(context, R.string.select_hours));
        TextView textView = (TextView) viewInflate.findViewById(R.id.separator);
        this.mSeparatorView = textView;
        NumericTextView numericTextView2 = (NumericTextView) viewInflate.findViewById(R.id.minutes);
        this.mMinuteView = numericTextView2;
        numericTextView2.setOnClickListener(onClickListener);
        numericTextView2.setOnFocusChangeListener(onFocusChangeListener);
        numericTextView2.setOnDigitEnteredListener(onValueChangedListener);
        numericTextView2.setAccessibilityDelegate(new ClickActionDelegate(context, R.string.select_minutes));
        numericTextView2.setRange(0, 59);
        View viewFindViewById2 = viewInflate.findViewById(R.id.ampm_layout);
        this.mAmPmLayout = viewFindViewById2;
        viewFindViewById2.setOnTouchListener(new NearestTouchDelegate());
        String[] amPmStrings = TimePicker.getAmPmStrings(context);
        RadioButton radioButton = (RadioButton) viewFindViewById2.findViewById(R.id.am_label);
        this.mAmLabel = radioButton;
        radioButton.setText(obtainVerbatim(amPmStrings[0]));
        radioButton.setOnClickListener(onClickListener);
        ensureMinimumTextWidth(radioButton);
        RadioButton radioButton2 = (RadioButton) viewFindViewById2.findViewById(R.id.pm_label);
        this.mPmLabel = radioButton2;
        radioButton2.setText(obtainVerbatim(amPmStrings[1]));
        radioButton2.setOnClickListener(onClickListener);
        ensureMinimumTextWidth(radioButton2);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        if (resourceId != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = this.mContext.obtainStyledAttributes(null, ATTRS_TEXT_COLOR, 0, resourceId);
            colorStateList = applyLegacyColorFixes(typedArrayObtainStyledAttributes2.getColorStateList(0));
            typedArrayObtainStyledAttributes2.recycle();
        } else {
            colorStateList = null;
        }
        colorStateList = colorStateList == null ? typedArrayObtainStyledAttributes.getColorStateList(11) : colorStateList;
        View viewFindViewById3 = viewInflate.findViewById(R.id.input_header);
        this.mTextInputPickerHeader = viewFindViewById3;
        if (colorStateList != null) {
            numericTextView.setTextColor(colorStateList);
            textView.setTextColor(colorStateList);
            numericTextView2.setTextColor(colorStateList);
            radioButton.setTextColor(colorStateList);
            radioButton2.setTextColor(colorStateList);
        }
        if (typedArrayObtainStyledAttributes.hasValueOrEmpty(0)) {
            viewFindViewById.setBackground(typedArrayObtainStyledAttributes.getDrawable(0));
            viewFindViewById3.setBackground(typedArrayObtainStyledAttributes.getDrawable(0));
        }
        typedArrayObtainStyledAttributes.recycle();
        RadialTimePickerView radialTimePickerView = (RadialTimePickerView) viewInflate.findViewById(R.id.radial_picker);
        this.mRadialTimePickerView = radialTimePickerView;
        radialTimePickerView.applyAttributes(attributeSet, i2, i3);
        radialTimePickerView.setOnValueSelectedListener(onValueSelectedListener);
        TextInputTimePickerView textInputTimePickerView = (TextInputTimePickerView) viewInflate.findViewById(R.id.input_mode);
        this.mTextInputPickerView = textInputTimePickerView;
        textInputTimePickerView.setListener(onValueTypedListener);
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.toggle_mode);
        this.mRadialTimePickerModeButton = imageButton;
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: android.widget.TimePickerClockDelegate.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws Throwable {
                TimePickerClockDelegate.this.toggleRadialPickerMode();
            }
        });
        this.mRadialTimePickerModeEnabledDescription = context.getResources().getString(R.string.time_picker_radial_mode_description);
        this.mTextInputPickerModeEnabledDescription = context.getResources().getString(R.string.time_picker_text_input_mode_description);
        this.mAllowAutoAdvance = true;
        updateHourFormat();
        Calendar calendar = Calendar.getInstance(this.mLocale);
        this.mTempCalendar = calendar;
        initialize(calendar.get(11), calendar.get(12), this.mIs24Hour, 0);
    }

    private ColorStateList applyLegacyColorFixes(ColorStateList colorStateList) {
        int defaultColor;
        int iMultiplyAlphaComponent;
        if (colorStateList == null || colorStateList.hasState(16843518)) {
            return colorStateList;
        }
        if (colorStateList.hasState(16842913)) {
            defaultColor = colorStateList.getColorForState(StateSet.get(10), 0);
            iMultiplyAlphaComponent = colorStateList.getColorForState(StateSet.get(8), 0);
        } else {
            defaultColor = colorStateList.getDefaultColor();
            iMultiplyAlphaComponent = multiplyAlphaComponent(defaultColor, this.mContext.obtainStyledAttributes(ATTRS_DISABLED_ALPHA).getFloat(0, 0.3f));
        }
        if (defaultColor == 0 || iMultiplyAlphaComponent == 0) {
            return null;
        }
        return new ColorStateList(new int[][]{new int[]{16843518}, new int[0]}, new int[]{defaultColor, iMultiplyAlphaComponent});
    }

    private static void ensureMinimumTextWidth(TextView textView) {
        textView.measure(0, 0);
        int measuredWidth = textView.getMeasuredWidth();
        textView.setMinWidth(measuredWidth);
        textView.setMinimumWidth(measuredWidth);
    }

    private int getCurrentItemShowing() {
        return this.mRadialTimePickerView.getCurrentItemShowing();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLocalizedHour(int i2) {
        boolean z2 = this.mIs24Hour;
        if (!z2) {
            i2 %= 12;
        }
        if (this.mHourFormatStartsAtZero || i2 != 0) {
            return i2;
        }
        return z2 ? 24 : 12;
    }

    private void initialize(int i2, int i3, boolean z2, int i4) {
        this.mCurrentHour = i2;
        this.mCurrentMinute = i3;
        this.mIs24Hour = z2;
        updateUI(i4);
    }

    private static int lastIndexOfAny(String str, char[] cArr) {
        if (cArr.length <= 0) {
            return -1;
        }
        for (int length = str.length() - 1; length >= 0; length--) {
            char cCharAt = str.charAt(length);
            for (char c : cArr) {
                if (cCharAt == c) {
                    return length;
                }
            }
        }
        return -1;
    }

    private int multiplyAlphaComponent(int i2, float f2) {
        return (((int) ((((i2 >> 24) & 255) * f2) + 0.5f)) << 24) | (16777215 & i2);
    }

    public static final CharSequence obtainVerbatim(String str) {
        return new SpannableStringBuilder().append(str, new TtsSpan.VerbatimBuilder(str).build(), 0);
    }

    private void onTimeChanged() {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void setAmOrPm(int i2) {
        updateAmPmLabelStates(i2);
        if (this.mRadialTimePickerView.setAmOrPm(i2)) {
            this.mCurrentHour = getHour();
            updateTextInputPicker();
            TimePicker.OnTimeChangedListener onTimeChangedListener = this.mOnTimeChangedListener;
            if (onTimeChangedListener != null) {
                onTimeChangedListener.onTimeChanged(this.mDelegator, getHour(), getMinute());
            }
        }
    }

    private void setAmPmStart(boolean z2) {
        int rule;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mAmPmLayout.getLayoutParams();
        if (layoutParams.getRule(1) != 0 || layoutParams.getRule(0) != 0) {
            if (TextUtils.getLayoutDirectionFromLocale(this.mLocale) != 0) {
                z2 = !z2;
            }
            if (this.mIsAmPmAtLeft == z2) {
                return;
            }
            if (z2) {
                layoutParams.removeRule(1);
                layoutParams.addRule(0, this.mHourView.getId());
            } else {
                layoutParams.removeRule(0);
                layoutParams.addRule(1, this.mMinuteView.getId());
            }
            this.mIsAmPmAtLeft = z2;
        } else if (layoutParams.getRule(3) != 0 || layoutParams.getRule(2) != 0) {
            if (this.mIsAmPmAtTop == z2) {
                return;
            }
            if (z2) {
                rule = layoutParams.getRule(3);
                layoutParams.removeRule(3);
                layoutParams.addRule(2, rule);
            } else {
                rule = layoutParams.getRule(2);
                layoutParams.removeRule(2);
                layoutParams.addRule(3, rule);
            }
            View viewFindViewById = this.mRadialTimePickerHeader.findViewById(rule);
            viewFindViewById.setPadding(viewFindViewById.getPaddingLeft(), viewFindViewById.getPaddingBottom(), viewFindViewById.getPaddingRight(), viewFindViewById.getPaddingTop());
            this.mIsAmPmAtTop = z2;
        }
        this.mAmPmLayout.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentItemShowing(int i2, boolean z2, boolean z3) {
        this.mRadialTimePickerView.setCurrentItemShowing(i2, z2);
        if (i2 == 0) {
            if (z3) {
                this.mDelegator.announceForAccessibility(this.mSelectHours);
            }
        } else if (z3) {
            this.mDelegator.announceForAccessibility(this.mSelectMinutes);
        }
        this.mHourView.setActivated(i2 == 0);
        this.mMinuteView.setActivated(i2 == 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHourInternal(int i2, int i3, boolean z2, boolean z3) {
        if (this.mCurrentHour == i2) {
            return;
        }
        resetAutofilledValue();
        this.mCurrentHour = i2;
        updateHeaderHour(i2, z2);
        updateHeaderAmPm();
        if (i3 != 1) {
            this.mRadialTimePickerView.setCurrentHour(i2);
            this.mRadialTimePickerView.setAmOrPm(i2 < 12 ? 0 : 1);
        }
        if (i3 != 2) {
            updateTextInputPicker();
        }
        this.mDelegator.invalidate();
        if (z3) {
            onTimeChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMinuteInternal(int i2, int i3, boolean z2) {
        if (this.mCurrentMinute == i2) {
            return;
        }
        resetAutofilledValue();
        this.mCurrentMinute = i2;
        updateHeaderMinute(i2, true);
        if (i3 != 1) {
            this.mRadialTimePickerView.setCurrentMinute(i2);
        }
        if (i3 != 2) {
            updateTextInputPicker();
        }
        this.mDelegator.invalidate();
        if (z2) {
            onTimeChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleRadialPickerMode() throws Throwable {
        if (this.mRadialPickerModeEnabled) {
            this.mRadialTimePickerView.setVisibility(8);
            this.mRadialTimePickerHeader.setVisibility(8);
            this.mTextInputPickerHeader.setVisibility(0);
            this.mTextInputPickerView.setVisibility(0);
            this.mRadialTimePickerModeButton.setImageResource(R.drawable.btn_clock_material);
            this.mRadialTimePickerModeButton.setContentDescription(this.mRadialTimePickerModeEnabledDescription);
            this.mRadialPickerModeEnabled = false;
            return;
        }
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        if (inputMethodManagerPeekInstance != null && inputMethodManagerPeekInstance.isActive()) {
            inputMethodManagerPeekInstance.hideSoftInputFromWindow(this.mDelegator.getWindowToken(), 0);
        }
        this.mRadialTimePickerView.setVisibility(0);
        this.mRadialTimePickerHeader.setVisibility(0);
        this.mTextInputPickerHeader.setVisibility(8);
        this.mTextInputPickerView.setVisibility(8);
        this.mRadialTimePickerModeButton.setImageResource(R.drawable.btn_keyboard_key_material);
        this.mRadialTimePickerModeButton.setContentDescription(this.mTextInputPickerModeEnabledDescription);
        updateTextInputPicker();
        InputMethodManager inputMethodManagerPeekInstance2 = InputMethodManager.peekInstance();
        if (inputMethodManagerPeekInstance2 != null) {
            inputMethodManagerPeekInstance2.hideSoftInputFromWindow(this.mDelegator.getWindowToken(), 0);
        }
        this.mRadialPickerModeEnabled = true;
    }

    private void tryAnnounceForAccessibility(CharSequence charSequence, boolean z2) {
        if (this.mLastAnnouncedIsHour == z2 && charSequence.equals(this.mLastAnnouncedText)) {
            return;
        }
        this.mDelegator.announceForAccessibility(charSequence);
        this.mLastAnnouncedText = charSequence;
        this.mLastAnnouncedIsHour = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryVibrate() {
        this.mDelegator.performHapticFeedback(4);
    }

    private void updateAmPmLabelStates(int i2) {
        boolean z2 = i2 == 0;
        this.mAmLabel.setActivated(z2);
        this.mAmLabel.setChecked(z2);
        boolean z3 = i2 == 1;
        this.mPmLabel.setActivated(z3);
        this.mPmLabel.setChecked(z3);
    }

    private void updateHeaderAmPm() {
        if (this.mIs24Hour) {
            this.mAmPmLayout.setVisibility(8);
        } else {
            setAmPmStart(DateFormat.getBestDateTimePattern(this.mLocale, "hm").startsWith(FullBackup.APK_TREE_TOKEN));
            updateAmPmLabelStates(this.mCurrentHour < 12 ? 0 : 1);
        }
    }

    private void updateHeaderHour(int i2, boolean z2) {
        this.mHourView.setValue(getLocalizedHour(i2));
        if (z2) {
            tryAnnounceForAccessibility(this.mHourView.getText(), true);
        }
    }

    private void updateHeaderMinute(int i2, boolean z2) {
        this.mMinuteView.setValue(i2);
        if (z2) {
            tryAnnounceForAccessibility(this.mMinuteView.getText(), false);
        }
    }

    private void updateHeaderSeparator() {
        String bestDateTimePattern = DateFormat.getBestDateTimePattern(this.mLocale, this.mIs24Hour ? "Hm" : "hm");
        int iLastIndexOfAny = lastIndexOfAny(bestDateTimePattern, new char[]{'H', DateFormat.HOUR, 'K', DateFormat.HOUR_OF_DAY});
        String string = iLastIndexOfAny == -1 ? SettingsStringUtil.DELIMITER : Character.toString(bestDateTimePattern.charAt(iLastIndexOfAny + 1));
        this.mSeparatorView.setText(string);
        this.mTextInputPickerView.updateSeparator(string);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updateHourFormat() {
        boolean z2;
        char cCharAt;
        String bestDateTimePattern = DateFormat.getBestDateTimePattern(this.mLocale, this.mIs24Hour ? "Hm" : "hm");
        int length = bestDateTimePattern.length();
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                z2 = false;
                cCharAt = 0;
                break;
            }
            cCharAt = bestDateTimePattern.charAt(i2);
            if (cCharAt == 'H' || cCharAt == 'h' || cCharAt == 'K' || cCharAt == 'k') {
                int i3 = i2 + 1;
                if (i3 >= length || cCharAt != bestDateTimePattern.charAt(i3)) {
                    z2 = false;
                    break;
                } else {
                    z2 = true;
                    break;
                }
            }
            i2++;
        }
        this.mHourFormatShowLeadingZero = z2;
        boolean z3 = (cCharAt == 'K' || cCharAt == 'H') ? 1 : 0;
        this.mHourFormatStartsAtZero = z3;
        int i4 = !z3;
        this.mHourView.setRange(i4, (this.mIs24Hour ? 23 : 11) + i4);
        this.mHourView.setShowLeadingZeroes(this.mHourFormatShowLeadingZero);
        String[] digitStrings = DecimalFormatSymbols.getInstance(this.mLocale).getDigitStrings();
        int iMax = 0;
        for (int i5 = 0; i5 < 10; i5++) {
            iMax = Math.max(iMax, digitStrings[i5].length());
        }
        this.mTextInputPickerView.setHourFormat(iMax * 2);
    }

    private void updateRadialPicker(int i2) {
        this.mRadialTimePickerView.initialize(this.mCurrentHour, this.mCurrentMinute, this.mIs24Hour);
        setCurrentItemShowing(i2, false, true);
    }

    private void updateTextInputPicker() {
        this.mTextInputPickerView.updateTextInputValues(getLocalizedHour(this.mCurrentHour), this.mCurrentMinute, this.mCurrentHour < 12 ? 0 : 1, this.mIs24Hour, this.mHourFormatStartsAtZero);
    }

    private void updateUI(int i2) {
        updateHeaderAmPm();
        updateHeaderHour(this.mCurrentHour, false);
        updateHeaderSeparator();
        updateHeaderMinute(this.mCurrentMinute, false);
        updateRadialPicker(i2);
        updateTextInputPicker();
        this.mDelegator.invalidate();
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public View getAmView() {
        return this.mAmLabel;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public int getBaseline() {
        return -1;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public int getHour() {
        int currentHour = this.mRadialTimePickerView.getCurrentHour();
        if (this.mIs24Hour) {
            return currentHour;
        }
        return this.mRadialTimePickerView.getAmOrPm() == 1 ? (currentHour % 12) + 12 : currentHour % 12;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public View getHourView() {
        return this.mHourView;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public int getMinute() {
        return this.mRadialTimePickerView.getCurrentMinute();
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public View getMinuteView() {
        return this.mMinuteView;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public View getPmView() {
        return this.mPmLabel;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public boolean is24Hour() {
        return this.mIs24Hour;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        int i2 = this.mIs24Hour ? 129 : 65;
        this.mTempCalendar.set(11, getHour());
        this.mTempCalendar.set(12, getMinute());
        String dateTime = DateUtils.formatDateTime(this.mContext, this.mTempCalendar.getTimeInMillis(), i2);
        String str = this.mRadialTimePickerView.getCurrentItemShowing() == 0 ? this.mSelectHours : this.mSelectMinutes;
        accessibilityEvent.getText().add(dateTime + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + str);
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof TimePicker.AbstractTimePickerDelegate.SavedState) {
            TimePicker.AbstractTimePickerDelegate.SavedState savedState = (TimePicker.AbstractTimePickerDelegate.SavedState) parcelable;
            initialize(savedState.getHour(), savedState.getMinute(), savedState.is24HourMode(), savedState.getCurrentItemShowing());
            this.mRadialTimePickerView.invalidate();
        }
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public Parcelable onSaveInstanceState(Parcelable parcelable) {
        return new TimePicker.AbstractTimePickerDelegate.SavedState(parcelable, getHour(), getMinute(), is24Hour(), getCurrentItemShowing());
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void setDate(int i2, int i3) {
        setHourInternal(i2, 0, true, false);
        setMinuteInternal(i3, 0, false);
        onTimeChanged();
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void setEnabled(boolean z2) {
        this.mHourView.setEnabled(z2);
        this.mMinuteView.setEnabled(z2);
        this.mAmLabel.setEnabled(z2);
        this.mPmLabel.setEnabled(z2);
        this.mRadialTimePickerView.setEnabled(z2);
        this.mIsEnabled = z2;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void setHour(int i2) {
        setHourInternal(i2, 0, true, true);
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void setIs24Hour(boolean z2) {
        if (this.mIs24Hour != z2) {
            this.mIs24Hour = z2;
            this.mCurrentHour = getHour();
            updateHourFormat();
            updateUI(this.mRadialTimePickerView.getCurrentItemShowing());
        }
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void setMinute(int i2) {
        setMinuteInternal(i2, 0, true);
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public boolean validateInput() {
        return this.mTextInputPickerView.validateInput();
    }
}
