package android.app;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TimePicker;
import com.android.internal.R;

/* JADX INFO: loaded from: classes.dex */
public class TimePickerDialog extends AlertDialog implements DialogInterface.OnClickListener, TimePicker.OnTimeChangedListener {
    private static final String HOUR = "hour";
    private static final String IS_24_HOUR = "is24hour";
    private static final String MINUTE = "minute";
    private final int mInitialHourOfDay;
    private final int mInitialMinute;
    private final boolean mIs24HourView;
    private final TimePicker mTimePicker;
    private final OnTimeSetListener mTimeSetListener;

    public interface OnTimeSetListener {
        void onTimeSet(TimePicker timePicker, int i2, int i3);
    }

    public TimePickerDialog(Context context, OnTimeSetListener onTimeSetListener, int i2, int i3, boolean z2) {
        this(context, 0, onTimeSetListener, i2, i3, z2);
    }

    public static int resolveDialogTheme(Context context, int i2) {
        if (i2 != 0) {
            return i2;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843934, typedValue, true);
        return typedValue.resourceId;
    }

    public TimePicker getTimePicker() {
        return this.mTimePicker;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        OnTimeSetListener onTimeSetListener;
        if (i2 == -2) {
            cancel();
        } else if (i2 == -1 && (onTimeSetListener = this.mTimeSetListener) != null) {
            TimePicker timePicker = this.mTimePicker;
            onTimeSetListener.onTimeSet(timePicker, timePicker.getCurrentHour().intValue(), this.mTimePicker.getCurrentMinute().intValue());
        }
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

    @Override // android.widget.TimePicker.OnTimeChangedListener
    public void onTimeChanged(TimePicker timePicker, int i2, int i3) {
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: android.app.TimePickerDialog.1
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TimePickerDialog.this.mTimePicker.validateInput()) {
                    TimePickerDialog timePickerDialog = TimePickerDialog.this;
                    timePickerDialog.onClick(timePickerDialog, -1);
                    TimePickerDialog.this.dismiss();
                }
            }
        });
    }

    public void updateTime(int i2, int i3) {
        this.mTimePicker.setCurrentHour(Integer.valueOf(i2));
        this.mTimePicker.setCurrentMinute(Integer.valueOf(i3));
    }

    public TimePickerDialog(Context context, int i2, OnTimeSetListener onTimeSetListener, int i3, int i4, boolean z2) {
        super(context, resolveDialogTheme(context, i2));
        this.mTimeSetListener = onTimeSetListener;
        this.mInitialHourOfDay = i3;
        this.mInitialMinute = i4;
        this.mIs24HourView = z2;
        Context context2 = getContext();
        View viewInflate = LayoutInflater.from(context2).inflate(R.layout.time_picker_dialog, (ViewGroup) null);
        setView(viewInflate);
        setButton(-1, context2.getString(17039370), this);
        setButton(-2, context2.getString(17039360), this);
        setButtonPanelLayoutHint(1);
        TimePicker timePicker = (TimePicker) viewInflate.findViewById(R.id.timePicker);
        this.mTimePicker = timePicker;
        timePicker.setIs24HourView(Boolean.valueOf(z2));
        timePicker.setCurrentHour(Integer.valueOf(i3));
        timePicker.setCurrentMinute(Integer.valueOf(i4));
        timePicker.setOnTimeChangedListener(this);
    }
}
