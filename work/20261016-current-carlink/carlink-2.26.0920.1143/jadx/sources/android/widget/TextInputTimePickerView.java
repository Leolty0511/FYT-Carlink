package android.widget;

import android.content.Context;
import android.os.LocaleList;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.MathUtils;
import android.view.View;
import com.android.internal.R;
import com.google.android.material.timepicker.TimeModel;

/* JADX INFO: loaded from: classes2.dex */
public class TextInputTimePickerView extends RelativeLayout {
    private static final int AM = 0;
    public static final int AMPM = 2;
    public static final int HOURS = 0;
    public static final int MINUTES = 1;
    private static final int PM = 1;
    private final Spinner mAmPmSpinner;
    private final TextView mErrorLabel;
    private boolean mErrorShowing;
    private final EditText mHourEditText;
    private boolean mHourFormatStartsAtZero;
    private final TextView mHourLabel;
    private final TextView mInputSeparatorView;
    private boolean mIs24Hour;
    private OnValueTypedListener mListener;
    private final EditText mMinuteEditText;
    private final TextView mMinuteLabel;

    public interface OnValueTypedListener {
        void onValueChanged(int i2, int i3);
    }

    public TextInputTimePickerView(Context context) {
        this(context, null);
    }

    private int getHourOfDayFromLocalizedHour(int i2) {
        if (this.mIs24Hour) {
            if (this.mHourFormatStartsAtZero || i2 != 24) {
                return i2;
            }
            return 0;
        }
        if (!this.mHourFormatStartsAtZero && i2 == 12) {
            i2 = 0;
        }
        return this.mAmPmSpinner.getSelectedItemPosition() == 1 ? i2 + 12 : i2;
    }

    private boolean isValidLocalizedHour(int i2) {
        int i3 = !this.mHourFormatStartsAtZero ? 1 : 0;
        return i2 >= i3 && i2 <= (this.mIs24Hour ? 23 : 11) + i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean parseAndSetHourInternal(String str) {
        try {
            int i2 = Integer.parseInt(str);
            if (isValidLocalizedHour(i2)) {
                this.mListener.onValueChanged(0, getHourOfDayFromLocalizedHour(i2));
                return true;
            }
            int i3 = this.mHourFormatStartsAtZero ? 0 : 1;
            this.mListener.onValueChanged(0, getHourOfDayFromLocalizedHour(MathUtils.constrain(i2, i3, this.mIs24Hour ? 23 : i3 + 11)));
            return false;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean parseAndSetMinuteInternal(String str) {
        try {
            int i2 = Integer.parseInt(str);
            if (i2 >= 0 && i2 <= 59) {
                this.mListener.onValueChanged(1, i2);
                return true;
            }
            this.mListener.onValueChanged(1, MathUtils.constrain(i2, 0, 59));
        } catch (NumberFormatException unused) {
        }
        return false;
    }

    private void setError(boolean z2) {
        this.mErrorShowing = z2;
        this.mErrorLabel.setVisibility(z2 ? 0 : 4);
        this.mHourLabel.setVisibility(z2 ? 4 : 0);
        this.mMinuteLabel.setVisibility(z2 ? 4 : 0);
    }

    public void setHourFormat(int i2) {
        this.mHourEditText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(i2)});
        this.mMinuteEditText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(i2)});
        LocaleList locales = this.mContext.getResources().getConfiguration().getLocales();
        this.mHourEditText.setImeHintLocales(locales);
        this.mMinuteEditText.setImeHintLocales(locales);
    }

    public void setListener(OnValueTypedListener onValueTypedListener) {
        this.mListener = onValueTypedListener;
    }

    public void updateSeparator(String str) {
        this.mInputSeparatorView.setText(str);
    }

    public void updateTextInputValues(int i2, int i3, int i4, boolean z2, boolean z3) {
        this.mIs24Hour = z2;
        this.mHourFormatStartsAtZero = z3;
        this.mAmPmSpinner.setVisibility(z2 ? 4 : 0);
        if (i4 == 0) {
            this.mAmPmSpinner.setSelection(0);
        } else {
            this.mAmPmSpinner.setSelection(1);
        }
        this.mHourEditText.setText(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i2)));
        this.mMinuteEditText.setText(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i3)));
        if (this.mErrorShowing) {
            validateInput();
        }
    }

    public boolean validateInput() {
        boolean z2 = parseAndSetHourInternal(this.mHourEditText.getText().toString()) && parseAndSetMinuteInternal(this.mMinuteEditText.getText().toString());
        setError(!z2);
        return z2;
    }

    public TextInputTimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextInputTimePickerView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public TextInputTimePickerView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        View.inflate(context, R.layout.time_picker_text_input_material, this);
        EditText editText = (EditText) findViewById(R.id.input_hour);
        this.mHourEditText = editText;
        EditText editText2 = (EditText) findViewById(R.id.input_minute);
        this.mMinuteEditText = editText2;
        this.mInputSeparatorView = (TextView) findViewById(R.id.input_separator);
        this.mErrorLabel = (TextView) findViewById(R.id.label_error);
        this.mHourLabel = (TextView) findViewById(R.id.label_hour);
        this.mMinuteLabel = (TextView) findViewById(R.id.label_minute);
        editText.addTextChangedListener(new TextWatcher() { // from class: android.widget.TextInputTimePickerView.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                TextInputTimePickerView.this.parseAndSetHourInternal(editable.toString());
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }
        });
        editText2.addTextChangedListener(new TextWatcher() { // from class: android.widget.TextInputTimePickerView.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                TextInputTimePickerView.this.parseAndSetMinuteInternal(editable.toString());
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }
        });
        Spinner spinner = (Spinner) findViewById(R.id.am_pm_spinner);
        this.mAmPmSpinner = spinner;
        String[] amPmStrings = TimePicker.getAmPmStrings(context);
        ArrayAdapter arrayAdapter = new ArrayAdapter(context, 17367049);
        arrayAdapter.add(TimePickerClockDelegate.obtainVerbatim(amPmStrings[0]));
        arrayAdapter.add(TimePickerClockDelegate.obtainVerbatim(amPmStrings[1]));
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: android.widget.TextInputTimePickerView.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j2) {
                if (i4 == 0) {
                    TextInputTimePickerView.this.mListener.onValueChanged(2, 0);
                } else {
                    TextInputTimePickerView.this.mListener.onValueChanged(2, 1);
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
    }
}
