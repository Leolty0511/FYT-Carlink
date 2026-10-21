package android.text.format;

import android.app.AlarmManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.wifi.WifiStateMachine;
import java.io.IOException;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import libcore.icu.DateIntervalFormat;
import libcore.icu.LocaleData;

/* JADX INFO: loaded from: classes.dex */
public class DateUtils {

    @Deprecated
    public static final String ABBREV_MONTH_FORMAT = "%b";
    public static final String ABBREV_WEEKDAY_FORMAT = "%a";
    public static final long DAY_IN_MILLIS = 86400000;

    @Deprecated
    public static final int FORMAT_12HOUR = 64;

    @Deprecated
    public static final int FORMAT_24HOUR = 128;
    public static final int FORMAT_ABBREV_ALL = 524288;
    public static final int FORMAT_ABBREV_MONTH = 65536;
    public static final int FORMAT_ABBREV_RELATIVE = 262144;
    public static final int FORMAT_ABBREV_TIME = 16384;
    public static final int FORMAT_ABBREV_WEEKDAY = 32768;

    @Deprecated
    public static final int FORMAT_CAP_AMPM = 256;

    @Deprecated
    public static final int FORMAT_CAP_MIDNIGHT = 4096;

    @Deprecated
    public static final int FORMAT_CAP_NOON = 1024;

    @Deprecated
    public static final int FORMAT_CAP_NOON_MIDNIGHT = 5120;
    public static final int FORMAT_NO_MIDNIGHT = 2048;
    public static final int FORMAT_NO_MONTH_DAY = 32;
    public static final int FORMAT_NO_NOON = 512;

    @Deprecated
    public static final int FORMAT_NO_NOON_MIDNIGHT = 2560;
    public static final int FORMAT_NO_YEAR = 8;
    public static final int FORMAT_NUMERIC_DATE = 131072;
    public static final int FORMAT_SHOW_DATE = 16;
    public static final int FORMAT_SHOW_TIME = 1;
    public static final int FORMAT_SHOW_WEEKDAY = 2;
    public static final int FORMAT_SHOW_YEAR = 4;

    @Deprecated
    public static final int FORMAT_UTC = 8192;
    public static final long HOUR_IN_MILLIS = 3600000;

    @Deprecated
    public static final String HOUR_MINUTE_24 = "%H:%M";

    @Deprecated
    public static final int LENGTH_LONG = 10;

    @Deprecated
    public static final int LENGTH_MEDIUM = 20;

    @Deprecated
    public static final int LENGTH_SHORT = 30;

    @Deprecated
    public static final int LENGTH_SHORTER = 40;

    @Deprecated
    public static final int LENGTH_SHORTEST = 50;
    public static final long MINUTE_IN_MILLIS = 60000;
    public static final String MONTH_DAY_FORMAT = "%-d";
    public static final String MONTH_FORMAT = "%B";
    public static final String NUMERIC_MONTH_FORMAT = "%m";
    public static final long SECOND_IN_MILLIS = 1000;
    public static final String WEEKDAY_FORMAT = "%A";
    public static final long WEEK_IN_MILLIS = 604800000;
    public static final String YEAR_FORMAT = "%Y";
    public static final String YEAR_FORMAT_TWO_DIGITS = "%g";
    public static final long YEAR_IN_MILLIS = 31449600000L;
    private static String sElapsedFormatHMMSS;
    private static String sElapsedFormatMMSS;
    private static Configuration sLastConfig;
    private static final Object sLock = new Object();
    private static Time sNowTime;
    private static Time sThenTime;
    public static final int[] sameMonthTable = null;
    public static final int[] sameYearTable = null;

    public static String formatDateRange(Context context, long j2, long j3, int i2) {
        return formatDateRange(context, new java.util.Formatter(new StringBuilder(50), Locale.getDefault()), j2, j3, i2).toString();
    }

    public static String formatDateTime(Context context, long j2, int i2) {
        return formatDateRange(context, j2, j2, i2);
    }

    public static CharSequence formatDuration(long j2) {
        Resources system = Resources.getSystem();
        if (j2 >= 3600000) {
            int i2 = (int) ((j2 + AlarmManager.INTERVAL_HALF_HOUR) / 3600000);
            return system.getQuantityString(18022420, i2, Integer.valueOf(i2));
        }
        if (j2 >= MINUTE_IN_MILLIS) {
            int i3 = (int) ((j2 + 30000) / MINUTE_IN_MILLIS);
            return system.getQuantityString(18022419, i3, Integer.valueOf(i3));
        }
        int i4 = (int) ((j2 + 500) / 1000);
        return system.getQuantityString(18022418, i4, Integer.valueOf(i4));
    }

    public static String formatElapsedTime(long j2) {
        return formatElapsedTime(null, j2);
    }

    public static final CharSequence formatSameDayTime(long j2, long j3, int i2, int i3) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(j2);
        Date time = gregorianCalendar.getTime();
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar2.setTimeInMillis(j3);
        return ((gregorianCalendar.get(1) == gregorianCalendar2.get(1) && gregorianCalendar.get(2) == gregorianCalendar2.get(2) && gregorianCalendar.get(5) == gregorianCalendar2.get(5)) ? java.text.DateFormat.getTimeInstance(i3) : java.text.DateFormat.getDateInstance(i2)).format(time);
    }

    @Deprecated
    public static String getAMPMString(int i2) {
        return LocaleData.get(Locale.getDefault()).amPm[i2 + 0];
    }

    @Deprecated
    public static String getDayOfWeekString(int i2, int i3) {
        String[] strArr;
        LocaleData localeData = LocaleData.get(Locale.getDefault());
        if (i3 != 10) {
            strArr = (i3 == 20 || i3 == 30 || i3 == 40 || i3 != 50) ? localeData.shortWeekdayNames : localeData.tinyWeekdayNames;
        } else {
            strArr = localeData.longWeekdayNames;
        }
        return strArr[i2];
    }

    @Deprecated
    public static String getMonthString(int i2, int i3) {
        String[] strArr;
        LocaleData localeData = LocaleData.get(Locale.getDefault());
        if (i3 != 10) {
            strArr = (i3 == 20 || i3 == 30 || i3 == 40 || i3 != 50) ? localeData.shortMonthNames : localeData.tinyMonthNames;
        } else {
            strArr = localeData.longMonthNames;
        }
        return strArr[i2];
    }

    public static CharSequence getRelativeDateTimeString(Context context, long j2, long j3, long j4, int i2) {
        long j5;
        Resources system = Resources.getSystem();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jAbs = Math.abs(jCurrentTimeMillis - j2);
        if (j4 > WEEK_IN_MILLIS) {
            j5 = 604800000;
        } else {
            j5 = j4 < 86400000 ? 86400000L : j4;
        }
        String dateRange = formatDateRange(context, j2, j2, 1);
        return jAbs < j5 ? system.getString(17040356, getRelativeTimeSpanString(j2, jCurrentTimeMillis, j3, i2), dateRange) : system.getString(17039426, getRelativeTimeSpanString(context, j2, false), dateRange);
    }

    private static final String getRelativeDayString(Resources resources, long j2, long j3) {
        Locale locale = resources.getConfiguration().locale;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        Time time = new Time();
        time.set(j2);
        int julianDay = Time.getJulianDay(j2, time.gmtoff);
        Time time2 = new Time();
        time2.set(j3);
        int iAbs = Math.abs(Time.getJulianDay(j3, time2.gmtoff) - julianDay);
        boolean z2 = j3 > j2;
        if (iAbs == 1) {
            return z2 ? LocaleData.get(locale).yesterday : LocaleData.get(locale).tomorrow;
        }
        if (iAbs == 0) {
            return LocaleData.get(locale).today;
        }
        return String.format(resources.getQuantityString(z2 ? 18022405 : 18022409, iAbs), Integer.valueOf(iAbs));
    }

    public static CharSequence getRelativeTimeSpanString(long j2) {
        return getRelativeTimeSpanString(j2, System.currentTimeMillis(), MINUTE_IN_MILLIS);
    }

    private static void initFormatStrings() {
        synchronized (sLock) {
            initFormatStringsLocked();
        }
    }

    private static void initFormatStringsLocked() {
        Resources system = Resources.getSystem();
        Configuration configuration = system.getConfiguration();
        Configuration configuration2 = sLastConfig;
        if (configuration2 == null || !configuration2.equals(configuration)) {
            sLastConfig = configuration;
            sElapsedFormatMMSS = system.getString(17040361);
            sElapsedFormatHMMSS = system.getString(17040362);
        }
    }

    public static boolean isToday(long j2) {
        Time time = new Time();
        time.set(j2);
        int i2 = time.year;
        int i3 = time.month;
        int i4 = time.monthDay;
        time.set(System.currentTimeMillis());
        return i2 == time.year && i3 == time.month && i4 == time.monthDay;
    }

    public static String formatElapsedTime(StringBuilder sb, long j2) {
        long j3;
        long j4;
        if (j2 >= 3600) {
            j3 = j2 / 3600;
            j2 -= 3600 * j3;
        } else {
            j3 = 0;
        }
        if (j2 >= 60) {
            j4 = j2 / 60;
            j2 -= 60 * j4;
        } else {
            j4 = 0;
        }
        if (sb == null) {
            sb = new StringBuilder(8);
        } else {
            sb.setLength(0);
        }
        java.util.Formatter formatter = new java.util.Formatter(sb, Locale.getDefault());
        initFormatStrings();
        return j3 > 0 ? formatter.format(sElapsedFormatHMMSS, Long.valueOf(j3), Long.valueOf(j4), Long.valueOf(j2)).toString() : formatter.format(sElapsedFormatMMSS, Long.valueOf(j4), Long.valueOf(j2)).toString();
    }

    public static CharSequence getRelativeTimeSpanString(long j2, long j3, long j4) {
        return getRelativeTimeSpanString(j2, j3, j4, 65556);
    }

    public static java.util.Formatter formatDateRange(Context context, java.util.Formatter formatter, long j2, long j3, int i2) {
        return formatDateRange(context, formatter, j2, j3, i2, null);
    }

    public static CharSequence getRelativeTimeSpanString(long j2, long j3, long j4, int i2) {
        long j5;
        int i3;
        Resources system = Resources.getSystem();
        boolean z2 = (i2 & 786432) != 0;
        boolean z3 = j3 >= j2;
        long jAbs = Math.abs(j3 - j2);
        if (jAbs < MINUTE_IN_MILLIS && j4 < MINUTE_IN_MILLIS) {
            j5 = jAbs / 1000;
            if (z3) {
                i3 = z2 ? 18022410 : 18022401;
            } else {
                i3 = z2 ? 18022414 : 18022406;
            }
        } else if (jAbs < 3600000 && j4 < 3600000) {
            j5 = jAbs / MINUTE_IN_MILLIS;
            if (z3) {
                i3 = z2 ? 18022411 : 18022402;
            } else {
                i3 = z2 ? 18022415 : 18022407;
            }
        } else {
            if (jAbs >= 86400000 || j4 >= 86400000) {
                if (jAbs < WEEK_IN_MILLIS && j4 < WEEK_IN_MILLIS) {
                    return getRelativeDayString(system, j2, j3);
                }
                return formatDateRange(null, j2, j2, i2);
            }
            j5 = jAbs / 3600000;
            if (z3) {
                i3 = z2 ? 18022412 : 18022403;
            } else {
                i3 = z2 ? 18022416 : 18022408;
            }
        }
        return String.format(system.getQuantityString(i3, (int) j5), Long.valueOf(j5));
    }

    public static java.util.Formatter formatDateRange(Context context, java.util.Formatter formatter, long j2, long j3, int i2, String str) {
        if ((i2 & 193) == 1) {
            i2 |= DateFormat.is24HourFormat(context) ? 128 : 64;
        }
        try {
            formatter.out().append(DateIntervalFormat.formatDateRange(j2, j3, i2, str));
            return formatter;
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    public static CharSequence getRelativeTimeSpanString(Context context, long j2, boolean z2) {
        String dateRange;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jAbs = Math.abs(jCurrentTimeMillis - j2);
        synchronized (DateUtils.class) {
            if (sNowTime == null) {
                sNowTime = new Time();
            }
            if (sThenTime == null) {
                sThenTime = new Time();
            }
            sNowTime.set(jCurrentTimeMillis);
            sThenTime.set(j2);
            int i2 = 17040341;
            if (jAbs < 86400000 && sNowTime.weekDay == sThenTime.weekDay) {
                dateRange = formatDateRange(context, j2, j2, 1);
                i2 = 17040342;
            } else if (sNowTime.year != sThenTime.year) {
                dateRange = formatDateRange(context, j2, j2, WifiStateMachine.CMD_CAPTIVE_CHECK_COMPLETE);
            } else {
                dateRange = formatDateRange(context, j2, j2, 65552);
            }
            if (z2) {
                dateRange = context.getResources().getString(i2, dateRange);
            }
        }
        return dateRange;
    }

    public static CharSequence getRelativeTimeSpanString(Context context, long j2) {
        return getRelativeTimeSpanString(context, j2, false);
    }
}
