package android.widget;

import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
interface DatePickerController {
    Calendar getSelectedDay();

    void onYearSelected(int i2);

    void registerOnDateChangedListener(OnDateChangedListener onDateChangedListener);

    void tryVibrate();
}
