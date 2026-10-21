package android.text.format;

import android.app.job.JobInfo;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.icu.text.MeasureFormat;
import android.icu.util.MeasureUnit;
import com.android.internal.R;
import java.io.IOException;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import libcore.icu.DateIntervalFormat;
import libcore.icu.LocaleData;
import libcore.icu.RelativeDateTimeFormatter;

/* JADX INFO: loaded from: classes2.dex */
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

    @Deprecated
    public static final int[] sameMonthTable = null;

    @Deprecated
    public static final int[] sameYearTable = null;

    public static String formatDateRange(Context context, long j2, long j3, int i2) {
        return formatDateRange(context, new java.util.Formatter(new StringBuilder(50), Locale.getDefault()), j2, j3, i2).toString();
    }

    public static String formatDateTime(Context context, long j2, int i2) {
        return formatDateRange(context, j2, j2, i2);
    }

    public static CharSequence formatDuration(long j2) {
        return formatDuration(j2, 10);
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
        int i3 = i2;
        if ((i3 & 193) == 1) {
            i3 |= DateFormat.is24HourFormat(context) ? 128 : 64;
        }
        return RelativeDateTimeFormatter.getRelativeDateTimeString(Locale.getDefault(), TimeZone.getDefault(), j2, System.currentTimeMillis(), j3, j4, i3);
    }

    public static CharSequence getRelativeTimeSpanString(long j2) {
        return getRelativeTimeSpanString(j2, System.currentTimeMillis(), 60000L);
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
            sElapsedFormatMMSS = system.getString(R.string.elapsed_time_short_format_mm_ss);
            sElapsedFormatHMMSS = system.getString(R.string.elapsed_time_short_format_h_mm_ss);
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

    public static CharSequence formatDuration(long j2, int i2) {
        MeasureFormat.FormatWidth formatWidth;
        if (i2 == 10) {
            formatWidth = MeasureFormat.FormatWidth.WIDE;
        } else if (i2 == 20 || i2 == 30 || i2 == 40) {
            formatWidth = MeasureFormat.FormatWidth.SHORT;
        } else {
            formatWidth = i2 != 50 ? MeasureFormat.FormatWidth.WIDE : MeasureFormat.FormatWidth.NARROW;
        }
        MeasureFormat measureFormat = MeasureFormat.getInstance(Locale.getDefault(), formatWidth);
        if (j2 >= 3600000) {
            a.p();
            return measureFormat.format(a.i(Integer.valueOf((int) ((j2 + 1800000) / 3600000)), MeasureUnit.HOUR));
        }
        if (j2 < 60000) {
            a.p();
            return measureFormat.format(a.i(Integer.valueOf((int) ((j2 + 500) / 1000)), MeasureUnit.SECOND));
        }
        int i3 = (int) ((j2 + JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS) / 60000);
        a.p();
        return measureFormat.format(a.i(Integer.valueOf(i3), MeasureUnit.MINUTE));
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
        return RelativeDateTimeFormatter.getRelativeTimeSpanString(Locale.getDefault(), TimeZone.getDefault(), j2, j3, j4, i2);
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
        int i2;
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
            if (jAbs < 86400000 && sNowTime.weekDay == sThenTime.weekDay) {
                dateRange = formatDateRange(context, j2, j2, 1);
                i2 = R.string.preposition_for_time;
            } else {
                if (sNowTime.year != sThenTime.year) {
                    dateRange = formatDateRange(context, j2, j2, 131092);
                } else {
                    dateRange = formatDateRange(context, j2, j2, 65552);
                }
                i2 = 17040679;
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
