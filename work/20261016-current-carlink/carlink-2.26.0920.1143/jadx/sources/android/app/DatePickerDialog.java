package android.app;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import com.android.internal.R;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
public class DatePickerDialog extends AlertDialog implements DialogInterface.OnClickListener, DatePicker.OnDateChangedListener {
    private static final String DAY = "day";
    private static final String MONTH = "month";
    private static final String YEAR = "year";
    private final DatePicker mDatePicker;
    private OnDateSetListener mDateSetListener;
    private final DatePicker.ValidationCallback mValidationCallback;

    public interface OnDateSetListener {
        void onDateSet(DatePicker datePicker, int i2, int i3, int i4);
    }

    public DatePickerDialog(Context context) {
        this(context, 0, null, Calendar.getInstance(), -1, -1, -1);
    }

    public static int resolveDialogTheme(Context context, int i2) {
        if (i2 != 0) {
            return i2;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843948, typedValue, true);
        return typedValue.resourceId;
    }

    public DatePicker getDatePicker() {
        return this.mDatePicker;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        if (i2 == -2) {
            cancel();
            return;
        }
        if (i2 == -1 && this.mDateSetListener != null) {
            this.mDatePicker.clearFocus();
            OnDateSetListener onDateSetListener = this.mDateSetListener;
            DatePicker datePicker = this.mDatePicker;
            onDateSetListener.onDateSet(datePicker, datePicker.getYear(), this.mDatePicker.getMonth(), this.mDatePicker.getDayOfMonth());
        }
    }

    @Override // android.widget.DatePicker.OnDateChangedListener
    public void onDateChanged(DatePicker datePicker, int i2, int i3, int i4) {
        this.mDatePicker.init(i2, i3, i4, this);
    }

    @Override // android.app.Dialog
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.mDatePicker.init(bundle.getInt("year"), bundle.getInt(MONTH), bundle.getInt(DAY), this);
    }

    @Override // android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putInt("year", this.mDatePicker.getYear());
        bundleOnSaveInstanceState.putInt(MONTH, this.mDatePicker.getMonth());
        bundleOnSaveInstanceState.putInt(DAY, this.mDatePicker.getDayOfMonth());
        return bundleOnSaveInstanceState;
    }

    public void setOnDateSetListener(OnDateSetListener onDateSetListener) {
        this.mDateSetListener = onDateSetListener;
    }

    public void updateDate(int i2, int i3, int i4) {
        this.mDatePicker.updateDate(i2, i3, i4);
    }

    public DatePickerDialog(Context context, int i2) {
        this(context, i2, null, Calendar.getInstance(), -1, -1, -1);
    }

    public DatePickerDialog(Context context, OnDateSetListener onDateSetListener, int i2, int i3, int i4) {
        this(context, 0, onDateSetListener, null, i2, i3, i4);
    }

    public DatePickerDialog(Context context, int i2, OnDateSetListener onDateSetListener, int i3, int i4, int i5) {
        this(context, i2, onDateSetListener, null, i3, i4, i5);
    }

    private DatePickerDialog(Context context, int i2, OnDateSetListener onDateSetListener, Calendar calendar, int i3, int i4, int i5) {
        super(context, resolveDialogTheme(context, i2));
        DatePicker.ValidationCallback validationCallback = new DatePicker.ValidationCallback() { // from class: android.app.DatePickerDialog.1
            @Override // android.widget.DatePicker.ValidationCallback
            public void onValidationChanged(boolean z2) {
                Button button = DatePickerDialog.this.getButton(-1);
                if (button != null) {
                    button.setEnabled(z2);
                }
            }
        };
        this.mValidationCallback = validationCallback;
        Context context2 = getContext();
        View viewInflate = LayoutInflater.from(context2).inflate(R.layout.date_picker_dialog, (ViewGroup) null);
        setView(viewInflate);
        setButton(-1, context2.getString(17039370), this);
        setButton(-2, context2.getString(17039360), this);
        setButtonPanelLayoutHint(1);
        if (calendar != null) {
            i3 = calendar.get(1);
            i4 = calendar.get(2);
            i5 = calendar.get(5);
        }
        DatePicker datePicker = (DatePicker) viewInflate.findViewById(R.id.datePicker);
        this.mDatePicker = datePicker;
        datePicker.init(i3, i4, i5, this);
        datePicker.setValidationCallback(validationCallback);
        this.mDateSetListener = onDateSetListener;
    }
}
