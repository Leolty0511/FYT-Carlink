package android.util;

/* JADX INFO: loaded from: classes.dex */
public class DayOfMonthCursor extends MonthDisplayHelper {
    private int mColumn;
    private int mRow;

    public DayOfMonthCursor(int i2, int i3, int i4, int i5) {
        super(i2, i3, i5);
        this.mRow = getRowOf(i4);
        this.mColumn = getColumnOf(i4);
    }

    public boolean down() {
        if (isWithinCurrentMonth(this.mRow + 1, this.mColumn)) {
            this.mRow++;
            return false;
        }
        nextMonth();
        this.mRow = 0;
        while (!isWithinCurrentMonth(this.mRow, this.mColumn)) {
            this.mRow++;
        }
        return true;
    }

    public int getSelectedColumn() {
        return this.mColumn;
    }

    public int getSelectedDayOfMonth() {
        return getDayAt(this.mRow, this.mColumn);
    }

    public int getSelectedMonthOffset() {
        if (isWithinCurrentMonth(this.mRow, this.mColumn)) {
            return 0;
        }
        return this.mRow == 0 ? -1 : 1;
    }

    public int getSelectedRow() {
        return this.mRow;
    }

    public boolean isSelected(int i2, int i3) {
        return this.mRow == i2 && this.mColumn == i3;
    }

    public boolean left() {
        int i2 = this.mColumn;
        if (i2 == 0) {
            this.mRow--;
            this.mColumn = 6;
        } else {
            this.mColumn = i2 - 1;
        }
        if (isWithinCurrentMonth(this.mRow, this.mColumn)) {
            return false;
        }
        previousMonth();
        int numberOfDaysInMonth = getNumberOfDaysInMonth();
        this.mRow = getRowOf(numberOfDaysInMonth);
        this.mColumn = getColumnOf(numberOfDaysInMonth);
        return true;
    }

    public boolean right() {
        int i2 = this.mColumn;
        if (i2 == 6) {
            this.mRow++;
            this.mColumn = 0;
        } else {
            this.mColumn = i2 + 1;
        }
        if (isWithinCurrentMonth(this.mRow, this.mColumn)) {
            return false;
        }
        nextMonth();
        this.mRow = 0;
        this.mColumn = 0;
        while (!isWithinCurrentMonth(this.mRow, this.mColumn)) {
            this.mColumn++;
        }
        return true;
    }

    public void setSelectedDayOfMonth(int i2) {
        this.mRow = getRowOf(i2);
        this.mColumn = getColumnOf(i2);
    }

    public void setSelectedRowColumn(int i2, int i3) {
        this.mRow = i2;
        this.mColumn = i3;
    }

    public boolean up() {
        if (isWithinCurrentMonth(this.mRow - 1, this.mColumn)) {
            this.mRow--;
            return false;
        }
        previousMonth();
        this.mRow = 5;
        while (!isWithinCurrentMonth(this.mRow, this.mColumn)) {
            this.mRow--;
        }
        return true;
    }
}
