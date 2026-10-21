package android.util;

import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
public class MonthDisplayHelper {
    private Calendar mCalendar;
    private int mNumDaysInMonth;
    private int mNumDaysInPrevMonth;
    private int mOffset;
    private final int mWeekStartDay;

    public MonthDisplayHelper(int i2, int i3, int i4) {
        if (i4 < 1 || i4 > 7) {
            throw new IllegalArgumentException();
        }
        this.mWeekStartDay = i4;
        Calendar calendar = Calendar.getInstance();
        this.mCalendar = calendar;
        calendar.set(1, i2);
        this.mCalendar.set(2, i3);
        this.mCalendar.set(5, 1);
        this.mCalendar.set(11, 0);
        this.mCalendar.set(12, 0);
        this.mCalendar.set(13, 0);
        this.mCalendar.getTimeInMillis();
        recalculate();
    }

    private void recalculate() {
        this.mNumDaysInMonth = this.mCalendar.getActualMaximum(5);
        this.mCalendar.add(2, -1);
        this.mNumDaysInPrevMonth = this.mCalendar.getActualMaximum(5);
        this.mCalendar.add(2, 1);
        int firstDayOfMonth = getFirstDayOfMonth() - this.mWeekStartDay;
        if (firstDayOfMonth < 0) {
            firstDayOfMonth += 7;
        }
        this.mOffset = firstDayOfMonth;
    }

    public int getColumnOf(int i2) {
        return ((i2 + this.mOffset) - 1) % 7;
    }

    public int getDayAt(int i2, int i3) {
        int i4;
        if (i2 == 0 && i3 < (i4 = this.mOffset)) {
            return ((this.mNumDaysInPrevMonth + i3) - i4) + 1;
        }
        int i5 = (((i2 * 7) + i3) - this.mOffset) + 1;
        int i6 = this.mNumDaysInMonth;
        return i5 > i6 ? i5 - i6 : i5;
    }

    public int[] getDigitsForRow(int i2) {
        if (i2 < 0 || i2 > 5) {
            throw new IllegalArgumentException("row " + i2 + " out of range (0-5)");
        }
        int[] iArr = new int[7];
        for (int i3 = 0; i3 < 7; i3++) {
            iArr[i3] = getDayAt(i2, i3);
        }
        return iArr;
    }

    public int getFirstDayOfMonth() {
        return this.mCalendar.get(7);
    }

    public int getMonth() {
        return this.mCalendar.get(2);
    }

    public int getNumberOfDaysInMonth() {
        return this.mNumDaysInMonth;
    }

    public int getOffset() {
        return this.mOffset;
    }

    public int getRowOf(int i2) {
        return ((i2 + this.mOffset) - 1) / 7;
    }

    public int getWeekStartDay() {
        return this.mWeekStartDay;
    }

    public int getYear() {
        return this.mCalendar.get(1);
    }

    public boolean isWithinCurrentMonth(int i2, int i3) {
        if (i2 < 0 || i3 < 0 || i2 > 5 || i3 > 6) {
            return false;
        }
        return (i2 != 0 || i3 >= this.mOffset) && (((i2 * 7) + i3) - this.mOffset) + 1 <= this.mNumDaysInMonth;
    }

    public void nextMonth() {
        this.mCalendar.add(2, 1);
        recalculate();
    }

    public void previousMonth() {
        this.mCalendar.add(2, -1);
        recalculate();
    }

    public MonthDisplayHelper(int i2, int i3) {
        this(i2, i3, 1);
    }
}
