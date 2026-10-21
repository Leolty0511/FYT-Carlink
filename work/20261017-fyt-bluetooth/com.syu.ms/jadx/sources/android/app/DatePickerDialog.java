package android.app;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.DatePicker;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
public class DatePickerDialog extends AlertDialog implements DialogInterface.OnClickListener, DatePicker.OnDateChangedListener {
    private static final String DAY = "day";
    private static final String MONTH = "month";
    private static final String YEAR = "year";
    private final Calendar mCalendar;
    private final OnDateSetListener mCallBack;
    private final DatePicker mDatePicker;
    private boolean mTitleNeedsUpdate;

    public interface OnDateSetListener {
        void onDateSet(DatePicker datePicker, int i2, int i3, int i4);
    }

    public DatePickerDialog(Context context, OnDateSetListener onDateSetListener, int i2, int i3, int i4) {
        this(context, 0, onDateSetListener, i2, i3, i4);
    }

    private void tryNotifyDateSet() {
        if (this.mCallBack != null) {
            this.mDatePicker.clearFocus();
            OnDateSetListener onDateSetListener = this.mCallBack;
            DatePicker datePicker = this.mDatePicker;
            onDateSetListener.onDateSet(datePicker, datePicker.getYear(), this.mDatePicker.getMonth(), this.mDatePicker.getDayOfMonth());
        }
    }

    private void updateTitle(int i2, int i3, int i4) {
        if (this.mDatePicker.getCalendarViewShown()) {
            if (this.mTitleNeedsUpdate) {
                this.mTitleNeedsUpdate = false;
                setTitle(17040477);
                return;
            }
            return;
        }
        this.mCalendar.set(1, i2);
        this.mCalendar.set(2, i3);
        this.mCalendar.set(5, i4);
        setTitle(DateUtils.formatDateTime(this.mContext, this.mCalendar.getTimeInMillis(), 98326));
        this.mTitleNeedsUpdate = true;
    }

    public DatePicker getDatePicker() {
        return this.mDatePicker;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        tryNotifyDateSet();
    }

    @Override // android.widget.DatePicker.OnDateChangedListener
    public void onDateChanged(DatePicker datePicker, int i2, int i3, int i4) {
        this.mDatePicker.init(i2, i3, i4, this);
        updateTitle(i2, i3, i4);
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

    @Override // android.app.Dialog
    public void onStop() {
        tryNotifyDateSet();
        super.onStop();
    }

    public void updateDate(int i2, int i3, int i4) {
        this.mDatePicker.updateDate(i2, i3, i4);
    }

    public DatePickerDialog(Context context, int i2, OnDateSetListener onDateSetListener, int i3, int i4, int i5) {
        super(context, i2);
        this.mTitleNeedsUpdate = true;
        this.mCallBack = onDateSetListener;
        this.mCalendar = Calendar.getInstance();
        Context context2 = getContext();
        setButton(-1, context2.getText(17040479), this);
        setIcon(0);
        View viewInflate = ((LayoutInflater) context2.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(17367097, (ViewGroup) null);
        setView(viewInflate);
        DatePicker datePicker = (DatePicker) viewInflate.findViewById(16908966);
        this.mDatePicker = datePicker;
        datePicker.init(i3, i4, i5, this);
        updateTitle(i3, i4, i5);
    }
}
