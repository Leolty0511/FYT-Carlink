package android.text.format;

import android.accessibilityservice.c;
import android.util.TimeFormatException;
import android.view.WindowManager;
import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.logging.nano.MetricsProto;
import java.io.IOException;
import java.util.Locale;
import java.util.TimeZone;
import libcore.util.ZoneInfo;
import libcore.util.ZoneInfoDB;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class Time {
    public static final int EPOCH_JULIAN_DAY = 2440588;
    public static final int FRIDAY = 5;
    public static final int HOUR = 3;
    public static final int MINUTE = 2;
    public static final int MONDAY = 1;
    public static final int MONDAY_BEFORE_JULIAN_EPOCH = 2440585;
    public static final int MONTH = 5;
    public static final int MONTH_DAY = 4;
    public static final int SATURDAY = 6;
    public static final int SECOND = 1;
    public static final int SUNDAY = 0;
    public static final int THURSDAY = 4;
    public static final String TIMEZONE_UTC = "UTC";
    public static final int TUESDAY = 2;
    public static final int WEDNESDAY = 3;
    public static final int WEEK_DAY = 7;
    public static final int WEEK_NUM = 9;
    public static final int YEAR = 6;
    public static final int YEAR_DAY = 8;
    private static final String Y_M_D = "%Y-%m-%d";
    private static final String Y_M_D_T_H_M_S_000 = "%Y-%m-%dT%H:%M:%S.000";
    private static final String Y_M_D_T_H_M_S_000_Z = "%Y-%m-%dT%H:%M:%S.000Z";
    public boolean allDay;
    private TimeCalculator calculator;
    public long gmtoff;
    public int hour;
    public int isDst;
    public int minute;
    public int month;
    public int monthDay;
    public int second;
    public String timezone;
    public int weekDay;
    public int year;
    public int yearDay;
    private static final int[] DAYS_PER_MONTH = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    private static final int[] sThursdayOffset = {-3, 3, 2, 1, 0, -1, -2};

    public static class TimeCalculator {
        public String timezone;
        public final ZoneInfo.WallTime wallTime = new ZoneInfo.WallTime();
        private ZoneInfo zoneInfo;

        public TimeCalculator(String str) {
            this.zoneInfo = lookupZoneInfo(str);
        }

        public static int compare(TimeCalculator timeCalculator, TimeCalculator timeCalculator2) {
            if (!timeCalculator.timezone.equals(timeCalculator2.timezone)) {
                long millis = timeCalculator.toMillis(false) - timeCalculator2.toMillis(false);
                if (millis < 0) {
                    return -1;
                }
                return millis > 0 ? 1 : 0;
            }
            int year = timeCalculator.wallTime.getYear() - timeCalculator2.wallTime.getYear();
            if (year != 0) {
                return year;
            }
            int month = timeCalculator.wallTime.getMonth() - timeCalculator2.wallTime.getMonth();
            if (month != 0) {
                return month;
            }
            int monthDay = timeCalculator.wallTime.getMonthDay() - timeCalculator2.wallTime.getMonthDay();
            if (monthDay != 0) {
                return monthDay;
            }
            int hour = timeCalculator.wallTime.getHour() - timeCalculator2.wallTime.getHour();
            if (hour != 0) {
                return hour;
            }
            int minute = timeCalculator.wallTime.getMinute() - timeCalculator2.wallTime.getMinute();
            if (minute != 0) {
                return minute;
            }
            int second = timeCalculator.wallTime.getSecond() - timeCalculator2.wallTime.getSecond();
            if (second != 0) {
                return second;
            }
            return 0;
        }

        private static ZoneInfo lookupZoneInfo(String str) {
            try {
                ZoneInfo zoneInfoMakeTimeZone = ZoneInfoDB.getInstance().makeTimeZone(str);
                if (zoneInfoMakeTimeZone == null) {
                    zoneInfoMakeTimeZone = ZoneInfoDB.getInstance().makeTimeZone("GMT");
                }
                if (zoneInfoMakeTimeZone != null) {
                    return zoneInfoMakeTimeZone;
                }
                throw new AssertionError("GMT not found: \"" + str + "\"");
            } catch (IOException e2) {
                throw new AssertionError(c.k("Error loading timezone: \"", str, "\""), e2);
            }
        }

        private char toChar(int i2) {
            if (i2 < 0 || i2 > 9) {
                return ' ';
            }
            return (char) (i2 + 48);
        }

        private void updateZoneInfoFromTimeZone() {
            if (this.zoneInfo.getID().equals(this.timezone)) {
                return;
            }
            this.zoneInfo = lookupZoneInfo(this.timezone);
        }

        public void copyFieldsFromTime(Time time) {
            this.wallTime.setSecond(time.second);
            this.wallTime.setMinute(time.minute);
            this.wallTime.setHour(time.hour);
            this.wallTime.setMonthDay(time.monthDay);
            this.wallTime.setMonth(time.month);
            this.wallTime.setYear(time.year);
            this.wallTime.setWeekDay(time.weekDay);
            this.wallTime.setYearDay(time.yearDay);
            this.wallTime.setIsDst(time.isDst);
            this.wallTime.setGmtOffset((int) time.gmtoff);
            if (time.allDay && (time.second != 0 || time.minute != 0 || time.hour != 0)) {
                throw new IllegalArgumentException("allDay is true but sec, min, hour are not 0.");
            }
            this.timezone = time.timezone;
            updateZoneInfoFromTimeZone();
        }

        public void copyFieldsToTime(Time time) {
            time.second = this.wallTime.getSecond();
            time.minute = this.wallTime.getMinute();
            time.hour = this.wallTime.getHour();
            time.monthDay = this.wallTime.getMonthDay();
            time.month = this.wallTime.getMonth();
            time.year = this.wallTime.getYear();
            time.weekDay = this.wallTime.getWeekDay();
            time.yearDay = this.wallTime.getYearDay();
            time.isDst = this.wallTime.getIsDst();
            time.gmtoff = this.wallTime.getGmtOffset();
        }

        public String format(String str) {
            if (str == null) {
                str = "%c";
            }
            return new TimeFormatter().format(str, this.wallTime, this.zoneInfo);
        }

        public String format2445(boolean z2) {
            char[] cArr = new char[z2 ? 16 : 8];
            int year = this.wallTime.getYear();
            cArr[0] = toChar(year / 1000);
            int i2 = year % 1000;
            cArr[1] = toChar(i2 / 100);
            int i3 = i2 % 100;
            cArr[2] = toChar(i3 / 10);
            cArr[3] = toChar(i3 % 10);
            int month = this.wallTime.getMonth() + 1;
            cArr[4] = toChar(month / 10);
            cArr[5] = toChar(month % 10);
            int monthDay = this.wallTime.getMonthDay();
            cArr[6] = toChar(monthDay / 10);
            cArr[7] = toChar(monthDay % 10);
            if (!z2) {
                return new String(cArr, 0, 8);
            }
            cArr[8] = 'T';
            int hour = this.wallTime.getHour();
            cArr[9] = toChar(hour / 10);
            cArr[10] = toChar(hour % 10);
            int minute = this.wallTime.getMinute();
            cArr[11] = toChar(minute / 10);
            cArr[12] = toChar(minute % 10);
            int second = this.wallTime.getSecond();
            cArr[13] = toChar(second / 10);
            cArr[14] = toChar(second % 10);
            if (!Time.TIMEZONE_UTC.equals(this.timezone)) {
                return new String(cArr, 0, 15);
            }
            cArr[15] = 'Z';
            return new String(cArr, 0, 16);
        }

        public void setTimeInMillis(long j2) {
            updateZoneInfoFromTimeZone();
            this.wallTime.localtime((int) (j2 / 1000), this.zoneInfo);
        }

        public void switchTimeZone(String str) {
            int iMktime = this.wallTime.mktime(this.zoneInfo);
            this.timezone = str;
            updateZoneInfoFromTimeZone();
            this.wallTime.localtime(iMktime, this.zoneInfo);
        }

        public long toMillis(boolean z2) {
            if (z2) {
                this.wallTime.setIsDst(-1);
            }
            int iMktime = this.wallTime.mktime(this.zoneInfo);
            if (iMktime == -1) {
                return -1L;
            }
            return ((long) iMktime) * 1000;
        }

        public String toStringInternal() {
            return String.format("%04d%02d%02dT%02d%02d%02d%s(%d,%d,%d,%d,%d)", Integer.valueOf(this.wallTime.getYear()), Integer.valueOf(this.wallTime.getMonth() + 1), Integer.valueOf(this.wallTime.getMonthDay()), Integer.valueOf(this.wallTime.getHour()), Integer.valueOf(this.wallTime.getMinute()), Integer.valueOf(this.wallTime.getSecond()), this.timezone, Integer.valueOf(this.wallTime.getWeekDay()), Integer.valueOf(this.wallTime.getYearDay()), Integer.valueOf(this.wallTime.getGmtOffset()), Integer.valueOf(this.wallTime.getIsDst()), Long.valueOf(toMillis(false) / 1000));
        }
    }

    public Time(String str) {
        if (str == null) {
            throw new NullPointerException("timezoneId is null!");
        }
        initialize(str);
    }

    private void checkChar(String str, int i2, char c) {
        char cCharAt = str.charAt(i2);
        if (cCharAt != c) {
            throw new TimeFormatException(String.format("Unexpected character 0x%02d at pos=%d.  Expected 0x%02d ('%c').", Integer.valueOf(cCharAt), Integer.valueOf(i2), Integer.valueOf(c), Character.valueOf(c)));
        }
    }

    public static int compare(Time time, Time time2) {
        if (time == null) {
            throw new NullPointerException("a == null");
        }
        if (time2 == null) {
            throw new NullPointerException("b == null");
        }
        time.calculator.copyFieldsFromTime(time);
        time2.calculator.copyFieldsFromTime(time2);
        return TimeCalculator.compare(time.calculator, time2.calculator);
    }

    private static int getChar(String str, int i2, int i3) {
        char cCharAt = str.charAt(i2);
        if (Character.isDigit(cCharAt)) {
            return Character.getNumericValue(cCharAt) * i3;
        }
        throw new TimeFormatException(c.d("Parse error at pos=", i2));
    }

    public static String getCurrentTimezone() {
        return TimeZone.getDefault().getID();
    }

    public static int getJulianDay(long j2, long j3) {
        return ((int) (((j3 * 1000) + j2) / 86400000)) + EPOCH_JULIAN_DAY;
    }

    public static int getJulianMondayFromWeeksSinceEpoch(int i2) {
        return (i2 * 7) + MONDAY_BEFORE_JULIAN_EPOCH;
    }

    public static int getWeeksSinceEpochFromJulianDay(int i2, int i3) {
        int i4 = 4 - i3;
        if (i4 < 0) {
            i4 += 7;
        }
        return (i2 - (EPOCH_JULIAN_DAY - i4)) / 7;
    }

    private void initialize(String str) {
        this.timezone = str;
        this.year = 1970;
        this.monthDay = 1;
        this.isDst = -1;
        this.calculator = new TimeCalculator(str);
    }

    public static boolean isEpoch(Time time) {
        return getJulianDay(time.toMillis(true), 0L) == 2440588;
    }

    private boolean parse3339Internal(String str) {
        int i2;
        int length = str.length();
        if (length < 10) {
            throw new TimeFormatException("String too short --- expected at least 10 characters.");
        }
        boolean z2 = true;
        this.year = getChar(str, 0, 1000) + getChar(str, 1, 100) + getChar(str, 2, 10) + getChar(str, 3, 1);
        checkChar(str, 4, '-');
        this.month = (getChar(str, 5, 10) + getChar(str, 6, 1)) - 1;
        checkChar(str, 7, '-');
        this.monthDay = getChar(str, 8, 10) + getChar(str, 9, 1);
        int i3 = 19;
        if (length >= 19) {
            checkChar(str, 10, 'T');
            this.allDay = false;
            int i4 = getChar(str, 11, 10) + getChar(str, 12, 1);
            checkChar(str, 13, ':');
            int i5 = getChar(str, 14, 10) + getChar(str, 15, 1);
            checkChar(str, 16, ':');
            this.second = getChar(str, 17, 10) + getChar(str, 18, 1);
            if (19 < length && str.charAt(19) == '.') {
                do {
                    i3++;
                    if (i3 >= length) {
                        break;
                    }
                } while (Character.isDigit(str.charAt(i3)));
            }
            if (length > i3) {
                char cCharAt = str.charAt(i3);
                if (cCharAt == '+') {
                    i2 = -1;
                } else if (cCharAt == '-') {
                    i2 = 1;
                } else {
                    if (cCharAt != 'Z') {
                        throw new TimeFormatException(String.format("Unexpected character 0x%02d at position %d.  Expected + or -", Integer.valueOf(cCharAt), Integer.valueOf(i3)));
                    }
                    i2 = 0;
                }
                if (i2 != 0) {
                    int i6 = i3 + 6;
                    if (length < i6) {
                        throw new TimeFormatException(String.format("Unexpected length; should be %d characters", Integer.valueOf(i6)));
                    }
                    i4 += (getChar(str, i3 + 1, 10) + getChar(str, i3 + 2, 1)) * i2;
                    i5 += (getChar(str, i3 + 4, 10) + getChar(str, i3 + 5, 1)) * i2;
                }
            } else {
                i2 = 0;
                z2 = false;
            }
            this.hour = i4;
            this.minute = i5;
            if (i2 != 0) {
                normalize(false);
            }
        } else {
            this.allDay = true;
            this.hour = 0;
            this.minute = 0;
            this.second = 0;
            z2 = false;
        }
        this.weekDay = 0;
        this.yearDay = 0;
        this.isDst = -1;
        this.gmtoff = 0L;
        return z2;
    }

    private boolean parseInternal(String str) {
        int length = str.length();
        if (length < 8) {
            throw new TimeFormatException(c.k("String is too short: \"", str, "\" Expected at least 8 characters."));
        }
        boolean z2 = true;
        this.year = getChar(str, 0, 1000) + getChar(str, 1, 100) + getChar(str, 2, 10) + getChar(str, 3, 1);
        this.month = (getChar(str, 4, 10) + getChar(str, 5, 1)) - 1;
        this.monthDay = getChar(str, 6, 10) + getChar(str, 7, 1);
        if (length > 8) {
            if (length < 15) {
                throw new TimeFormatException(c.k("String is too short: \"", str, "\" If there are more than 8 characters there must be at least 15."));
            }
            checkChar(str, 8, 'T');
            this.allDay = false;
            this.hour = getChar(str, 9, 10) + getChar(str, 10, 1);
            this.minute = getChar(str, 11, 10) + getChar(str, 12, 1);
            this.second = getChar(str, 13, 10) + getChar(str, 14, 1);
            if (length > 15) {
                checkChar(str, 15, 'Z');
            }
            this.weekDay = 0;
            this.yearDay = 0;
            this.isDst = -1;
            this.gmtoff = 0L;
            return z2;
        }
        this.allDay = true;
        this.hour = 0;
        this.minute = 0;
        this.second = 0;
        z2 = false;
        this.weekDay = 0;
        this.yearDay = 0;
        this.isDst = -1;
        this.gmtoff = 0L;
        return z2;
    }

    public boolean after(Time time) {
        return compare(this, time) > 0;
    }

    public boolean before(Time time) {
        return compare(this, time) < 0;
    }

    public void clear(String str) {
        if (str == null) {
            throw new NullPointerException("timezone is null!");
        }
        this.timezone = str;
        this.allDay = false;
        this.second = 0;
        this.minute = 0;
        this.hour = 0;
        this.monthDay = 0;
        this.month = 0;
        this.year = 0;
        this.weekDay = 0;
        this.yearDay = 0;
        this.gmtoff = 0L;
        this.isDst = -1;
    }

    public String format(String str) {
        this.calculator.copyFieldsFromTime(this);
        return this.calculator.format(str);
    }

    public String format2445() {
        this.calculator.copyFieldsFromTime(this);
        return this.calculator.format2445(!this.allDay);
    }

    public String format3339(boolean z2) {
        if (z2) {
            return format(Y_M_D);
        }
        if (TIMEZONE_UTC.equals(this.timezone)) {
            return format(Y_M_D_T_H_M_S_000_Z);
        }
        String str = format(Y_M_D_T_H_M_S_000);
        long j2 = this.gmtoff;
        String str2 = j2 < 0 ? NativeLibraryHelper.CLEAR_ABI_OVERRIDE : "+";
        int iAbs = (int) Math.abs(j2);
        return String.format(Locale.US, "%s%s%02d:%02d", str, str2, Integer.valueOf(iAbs / 3600), Integer.valueOf((iAbs % 3600) / 60));
    }

    public int getActualMaximum(int i2) {
        switch (i2) {
            case 1:
            case 2:
                return 59;
            case 3:
                return 23;
            case 4:
                int i3 = DAYS_PER_MONTH[this.month];
                if (i3 != 28) {
                    return i3;
                }
                int i4 = this.year;
                if (i4 % 4 == 0) {
                    return (i4 % 100 != 0 || i4 % 400 == 0) ? 29 : 28;
                }
                return 28;
            case 5:
                return 11;
            case 6:
                return WindowManager.LayoutParams.TYPE_PRESENTATION;
            case 7:
                return 6;
            case 8:
                int i5 = this.year;
                if (i5 % 4 != 0 || (i5 % 100 == 0 && i5 % 400 != 0)) {
                    return 364;
                }
                return MetricsProto.MetricsEvent.ACTION_QS_EDIT_MOVE;
            case 9:
                throw new RuntimeException("WEEK_NUM not implemented");
            default:
                throw new RuntimeException(c.d("bad field=", i2));
        }
    }

    public int getWeekNumber() {
        int i2;
        int i3 = this.yearDay;
        int[] iArr = sThursdayOffset;
        int i4 = i3 + iArr[this.weekDay];
        if (i4 < 0 || i4 > 364) {
            Time time = new Time(this);
            time.monthDay += iArr[this.weekDay];
            time.normalize(true);
            i2 = time.yearDay / 7;
        } else {
            i2 = i4 / 7;
        }
        return i2 + 1;
    }

    public long normalize(boolean z2) {
        this.calculator.copyFieldsFromTime(this);
        long millis = this.calculator.toMillis(z2);
        this.calculator.copyFieldsToTime(this);
        return millis;
    }

    public boolean parse(String str) {
        if (str == null) {
            throw new NullPointerException("time string is null");
        }
        if (!parseInternal(str)) {
            return false;
        }
        this.timezone = TIMEZONE_UTC;
        return true;
    }

    public boolean parse3339(String str) {
        if (str == null) {
            throw new NullPointerException("time string is null");
        }
        if (!parse3339Internal(str)) {
            return false;
        }
        this.timezone = TIMEZONE_UTC;
        return true;
    }

    public void set(long j2) {
        this.allDay = false;
        TimeCalculator timeCalculator = this.calculator;
        timeCalculator.timezone = this.timezone;
        timeCalculator.setTimeInMillis(j2);
        this.calculator.copyFieldsToTime(this);
    }

    public long setJulianDay(int i2) {
        long j2 = ((long) (i2 - EPOCH_JULIAN_DAY)) * 86400000;
        set(j2);
        this.monthDay += i2 - getJulianDay(j2, this.gmtoff);
        this.hour = 0;
        this.minute = 0;
        this.second = 0;
        return normalize(true);
    }

    public void setToNow() {
        set(System.currentTimeMillis());
    }

    public void switchTimezone(String str) {
        this.calculator.copyFieldsFromTime(this);
        this.calculator.switchTimeZone(str);
        this.calculator.copyFieldsToTime(this);
        this.timezone = str;
    }

    public long toMillis(boolean z2) {
        this.calculator.copyFieldsFromTime(this);
        return this.calculator.toMillis(z2);
    }

    public String toString() {
        TimeCalculator timeCalculator = new TimeCalculator(this.timezone);
        timeCalculator.copyFieldsFromTime(this);
        return timeCalculator.toStringInternal();
    }

    public Time() {
        initialize(TimeZone.getDefault().getID());
    }

    public void set(Time time) {
        this.timezone = time.timezone;
        this.allDay = time.allDay;
        this.second = time.second;
        this.minute = time.minute;
        this.hour = time.hour;
        this.monthDay = time.monthDay;
        this.month = time.month;
        this.year = time.year;
        this.weekDay = time.weekDay;
        this.yearDay = time.yearDay;
        this.isDst = time.isDst;
        this.gmtoff = time.gmtoff;
    }

    public Time(Time time) {
        initialize(time.timezone);
        set(time);
    }

    public void set(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.allDay = false;
        this.second = i2;
        this.minute = i3;
        this.hour = i4;
        this.monthDay = i5;
        this.month = i6;
        this.year = i7;
        this.weekDay = 0;
        this.yearDay = 0;
        this.isDst = -1;
        this.gmtoff = 0L;
    }

    public void set(int i2, int i3, int i4) {
        this.allDay = true;
        this.second = 0;
        this.minute = 0;
        this.hour = 0;
        this.monthDay = i2;
        this.month = i3;
        this.year = i4;
        this.weekDay = 0;
        this.yearDay = 0;
        this.isDst = -1;
        this.gmtoff = 0L;
    }
}
