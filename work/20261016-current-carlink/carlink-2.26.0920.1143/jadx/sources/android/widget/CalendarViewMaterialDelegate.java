package android.widget;

import android.content.Context;
import android.graphics.Rect;
import android.icu.util.Calendar;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes2.dex */
class CalendarViewMaterialDelegate extends CalendarView.AbstractCalendarViewDelegate {
    private final DayPickerView mDayPickerView;
    private CalendarView.OnDateChangeListener mOnDateChangeListener;
    private final DayPickerView.OnDaySelectedListener mOnDaySelectedListener;

    public CalendarViewMaterialDelegate(CalendarView calendarView, Context context, AttributeSet attributeSet, int i2, int i3) {
        super(calendarView, context);
        DayPickerView.OnDaySelectedListener onDaySelectedListener = new DayPickerView.OnDaySelectedListener() { // from class: android.widget.CalendarViewMaterialDelegate.1
            @Override // android.widget.DayPickerView.OnDaySelectedListener
            public void onDaySelected(DayPickerView dayPickerView, Calendar calendar) {
                if (CalendarViewMaterialDelegate.this.mOnDateChangeListener != null) {
                    CalendarViewMaterialDelegate.this.mOnDateChangeListener.onSelectedDayChange(CalendarViewMaterialDelegate.this.mDelegator, calendar.get(1), calendar.get(2), calendar.get(5));
                }
            }
        };
        this.mOnDaySelectedListener = onDaySelectedListener;
        DayPickerView dayPickerView = new DayPickerView(context, attributeSet, i2, i3);
        this.mDayPickerView = dayPickerView;
        dayPickerView.setOnDaySelectedListener(onDaySelectedListener);
        calendarView.addView(dayPickerView);
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public boolean getBoundsForDate(long j2, Rect rect) {
        if (!this.mDayPickerView.getBoundsForDate(j2, rect)) {
            return false;
        }
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        this.mDayPickerView.getLocationOnScreen(iArr);
        this.mDelegator.getLocationOnScreen(iArr2);
        int i2 = iArr[1] - iArr2[1];
        rect.top += i2;
        rect.bottom += i2;
        return true;
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public long getDate() {
        return this.mDayPickerView.getDate();
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public int getDateTextAppearance() {
        return this.mDayPickerView.getDayTextAppearance();
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public int getFirstDayOfWeek() {
        return this.mDayPickerView.getFirstDayOfWeek();
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public long getMaxDate() {
        return this.mDayPickerView.getMaxDate();
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public long getMinDate() {
        return this.mDayPickerView.getMinDate();
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public int getWeekDayTextAppearance() {
        return this.mDayPickerView.getDayOfWeekTextAppearance();
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setDate(long j2) {
        this.mDayPickerView.setDate(j2, true);
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setDateTextAppearance(int i2) {
        this.mDayPickerView.setDayTextAppearance(i2);
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setFirstDayOfWeek(int i2) {
        this.mDayPickerView.setFirstDayOfWeek(i2);
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setMaxDate(long j2) {
        this.mDayPickerView.setMaxDate(j2);
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setMinDate(long j2) {
        this.mDayPickerView.setMinDate(j2);
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setOnDateChangeListener(CalendarView.OnDateChangeListener onDateChangeListener) {
        this.mOnDateChangeListener = onDateChangeListener;
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setWeekDayTextAppearance(int i2) {
        this.mDayPickerView.setDayOfWeekTextAppearance(i2);
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setDate(long j2, boolean z2, boolean z3) {
        this.mDayPickerView.setDate(j2, z2);
    }
}
