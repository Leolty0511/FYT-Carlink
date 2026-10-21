package android.text.format;

import android.content.res.Resources;
import android.net.wifi.BatchedScanSettings;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import libcore.icu.LocaleData;

/* JADX INFO: loaded from: classes.dex */
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
    private static String sAm = null;
    private static String sDateCommand = "%a %b %e %H:%M:%S %Z %Y";
    private static String sDateOnlyFormat;
    private static String sDateTimeFormat;
    private static Locale sLocale;
    private static String[] sLongMonths;
    private static String[] sLongStandaloneMonths;
    private static String[] sLongWeekdays;
    private static String sPm;
    private static String[] sShortMonths;
    private static String[] sShortWeekdays;
    private static String sTimeOnlyFormat;
    private static char sZeroDigit;
    public boolean allDay;
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

    public Time(String str) {
        Objects.requireNonNull(str, "timezone is null!");
        this.timezone = str;
        this.year = 1970;
        this.monthDay = 1;
        this.isDst = -1;
    }

    public static int compare(Time time, Time time2) {
        Objects.requireNonNull(time, "a == null");
        Objects.requireNonNull(time2, "b == null");
        return nativeCompare(time, time2);
    }

    private native String format1(String str);

    public static String getCurrentTimezone() {
        return TimeZone.getDefault().getID();
    }

    public static int getJulianDay(long j2, long j3) {
        return ((int) ((j2 + (j3 * 1000)) / 86400000)) + EPOCH_JULIAN_DAY;
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

    public static boolean isEpoch(Time time) {
        return getJulianDay(time.toMillis(true), 0L) == 2440588;
    }

    private String localizeDigits(String str) {
        int length = str.length();
        int i2 = sZeroDigit - '0';
        StringBuilder sb = new StringBuilder(length);
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt >= '0' && cCharAt <= '9') {
                cCharAt = (char) (cCharAt + i2);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    private static native int nativeCompare(Time time, Time time2);

    private native boolean nativeParse(String str);

    private native boolean nativeParse3339(String str);

    public boolean after(Time time) {
        return compare(this, time) > 0;
    }

    public boolean before(Time time) {
        return compare(this, time) < 0;
    }

    public void clear(String str) {
        Objects.requireNonNull(str, "timezone is null!");
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
        String strLocalizeDigits;
        synchronized (Time.class) {
            Locale locale = Locale.getDefault();
            Locale locale2 = sLocale;
            if (locale2 == null || locale == null || !locale.equals(locale2)) {
                LocaleData localeData = LocaleData.get(locale);
                sAm = localeData.amPm[0];
                sPm = localeData.amPm[1];
                sZeroDigit = localeData.zeroDigit;
                sShortMonths = localeData.shortMonthNames;
                sLongMonths = localeData.longMonthNames;
                sLongStandaloneMonths = localeData.longStandAloneMonthNames;
                sShortWeekdays = localeData.shortWeekdayNames;
                sLongWeekdays = localeData.longWeekdayNames;
                Resources system = Resources.getSystem();
                sTimeOnlyFormat = system.getString(17039424);
                sDateOnlyFormat = system.getString(17039423);
                sDateTimeFormat = system.getString(17039425);
                sLocale = locale;
            }
            strLocalizeDigits = format1(str);
            if (sZeroDigit != '0') {
                strLocalizeDigits = localizeDigits(strLocalizeDigits);
            }
        }
        return strLocalizeDigits;
    }

    public native String format2445();

    public String format3339(boolean z2) {
        if (z2) {
            return format(Y_M_D);
        }
        if (TIMEZONE_UTC.equals(this.timezone)) {
            return format(Y_M_D_T_H_M_S_000_Z);
        }
        String str = format(Y_M_D_T_H_M_S_000);
        long j2 = this.gmtoff;
        String str2 = j2 < 0 ? "-" : "+";
        int iAbs = (int) Math.abs(j2);
        return String.format(Locale.US, "%s%s%02d:%02d", str, str2, Integer.valueOf(iAbs / BatchedScanSettings.MAX_INTERVAL_SEC), Integer.valueOf((iAbs % BatchedScanSettings.MAX_INTERVAL_SEC) / 60));
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
                return 2037;
            case 7:
                return 6;
            case 8:
                int i5 = this.year;
                return (i5 % 4 != 0 || (i5 % 100 == 0 && i5 % 400 != 0)) ? 364 : 365;
            case 9:
                throw new RuntimeException("WEEK_NUM not implemented");
            default:
                throw new RuntimeException("bad field=" + i2);
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

    public native long normalize(boolean z2);

    public boolean parse(String str) {
        Objects.requireNonNull(str, "time string is null");
        if (!nativeParse(str)) {
            return false;
        }
        this.timezone = TIMEZONE_UTC;
        return true;
    }

    public boolean parse3339(String str) {
        Objects.requireNonNull(str, "time string is null");
        if (!nativeParse3339(str)) {
            return false;
        }
        this.timezone = TIMEZONE_UTC;
        return true;
    }

    public native void set(long j2);

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

    public long setJulianDay(int i2) {
        long j2 = ((long) (i2 - EPOCH_JULIAN_DAY)) * 86400000;
        set(j2);
        this.monthDay += i2 - getJulianDay(j2, this.gmtoff);
        this.hour = 0;
        this.minute = 0;
        this.second = 0;
        return normalize(true);
    }

    public native void setToNow();

    public native void switchTimezone(String str);

    public native long toMillis(boolean z2);

    public native String toString();

    public Time() {
        this(TimeZone.getDefault().getID());
    }

    public Time(Time time) {
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
