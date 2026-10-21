package android.app;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TimePicker;

/* JADX INFO: loaded from: classes.dex */
public class TimePickerDialog extends AlertDialog implements DialogInterface.OnClickListener, TimePicker.OnTimeChangedListener {
    private static final String HOUR = "hour";
    private static final String IS_24_HOUR = "is24hour";
    private static final String MINUTE = "minute";
    private final OnTimeSetListener mCallback;
    public int mInitialHourOfDay;
    public int mInitialMinute;
    public boolean mIs24HourView;
    private final TimePicker mTimePicker;

    public interface OnTimeSetListener {
        void onTimeSet(TimePicker timePicker, int i2, int i3);
    }

    public TimePickerDialog(Context context, OnTimeSetListener onTimeSetListener, int i2, int i3, boolean z2) {
        this(context, 0, onTimeSetListener, i2, i3, z2);
    }

    private void tryNotifyTimeSet() {
        if (this.mCallback != null) {
            this.mTimePicker.clearFocus();
            OnTimeSetListener onTimeSetListener = this.mCallback;
            TimePicker timePicker = this.mTimePicker;
            onTimeSetListener.onTimeSet(timePicker, timePicker.getCurrentHour().intValue(), this.mTimePicker.getCurrentMinute().intValue());
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        tryNotifyTimeSet();
    }

    @Override // android.app.Dialog
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        int i2 = bundle.getInt(HOUR);
        int i3 = bundle.getInt(MINUTE);
        this.mTimePicker.setIs24HourView(Boolean.valueOf(bundle.getBoolean(IS_24_HOUR)));
        this.mTimePicker.setCurrentHour(Integer.valueOf(i2));
        this.mTimePicker.setCurrentMinute(Integer.valueOf(i3));
    }

    @Override // android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putInt(HOUR, this.mTimePicker.getCurrentHour().intValue());
        bundleOnSaveInstanceState.putInt(MINUTE, this.mTimePicker.getCurrentMinute().intValue());
        bundleOnSaveInstanceState.putBoolean(IS_24_HOUR, this.mTimePicker.is24HourView());
        return bundleOnSaveInstanceState;
    }

    @Override // android.app.Dialog
    public void onStop() {
        tryNotifyTimeSet();
        super.onStop();
    }

    @Override // android.widget.TimePicker.OnTimeChangedListener
    public void onTimeChanged(TimePicker timePicker, int i2, int i3) {
    }

    public void updateTime(int i2, int i3) {
        this.mTimePicker.setCurrentHour(Integer.valueOf(i2));
        this.mTimePicker.setCurrentMinute(Integer.valueOf(i3));
    }

    public TimePickerDialog(Context context, int i2, OnTimeSetListener onTimeSetListener, int i3, int i4, boolean z2) {
        super(context, i2);
        this.mCallback = onTimeSetListener;
        this.mInitialHourOfDay = i3;
        this.mInitialMinute = i4;
        this.mIs24HourView = z2;
        setIcon(0);
        setTitle(17040476);
        Context context2 = getContext();
        setButton(-1, context2.getText(17040479), this);
        View viewInflate = ((LayoutInflater) context2.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(17367219, (ViewGroup) null);
        setView(viewInflate);
        TimePicker timePicker = (TimePicker) viewInflate.findViewById(16909149);
        this.mTimePicker = timePicker;
        timePicker.setIs24HourView(Boolean.valueOf(this.mIs24HourView));
        timePicker.setCurrentHour(Integer.valueOf(this.mInitialHourOfDay));
        timePicker.setCurrentMinute(Integer.valueOf(this.mInitialMinute));
        timePicker.setOnTimeChangedListener(this);
    }
}
