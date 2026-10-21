package android.text.format;

import android.accessibilityservice.c;
import android.content.Context;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.SpannedString;
import com.android.internal.content.NativeLibraryHelper;
import com.google.android.material.timepicker.TimeModel;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import libcore.icu.ICU;
import libcore.icu.LocaleData;

/* JADX INFO: loaded from: classes2.dex */
public class DateFormat {

    @Deprecated
    public static final char AM_PM = 'a';

    @Deprecated
    public static final char CAPITAL_AM_PM = 'A';

    @Deprecated
    public static final char DATE = 'd';

    @Deprecated
    public static final char DAY = 'E';

    @Deprecated
    public static final char HOUR = 'h';

    @Deprecated
    public static final char HOUR_OF_DAY = 'k';

    @Deprecated
    public static final char MINUTE = 'm';

    @Deprecated
    public static final char MONTH = 'M';

    @Deprecated
    public static final char QUOTE = '\'';

    @Deprecated
    public static final char SECONDS = 's';

    @Deprecated
    public static final char STANDALONE_MONTH = 'L';

    @Deprecated
    public static final char TIME_ZONE = 'z';

    @Deprecated
    public static final char YEAR = 'y';
    private static boolean sIs24Hour;
    private static Locale sIs24HourLocale;
    private static final Object sLocaleLock = new Object();

    private static int appendQuotedText(SpannableStringBuilder spannableStringBuilder, int i2, int i3) {
        int i4 = i2 + 1;
        if (i4 < i3 && spannableStringBuilder.charAt(i4) == '\'') {
            spannableStringBuilder.delete(i2, i4);
            return 1;
        }
        spannableStringBuilder.delete(i2, i4);
        int i5 = i3 - 1;
        int i6 = 0;
        while (i2 < i5) {
            if (spannableStringBuilder.charAt(i2) == '\'') {
                int i7 = i2 + 1;
                if (i7 >= i5 || spannableStringBuilder.charAt(i7) != '\'') {
                    spannableStringBuilder.delete(i2, i7);
                    break;
                }
                spannableStringBuilder.delete(i2, i7);
                i5--;
                i6++;
                i2 = i7;
            } else {
                i2++;
                i6++;
            }
        }
        return i6;
    }

    public static CharSequence format(CharSequence charSequence, long j2) {
        return format(charSequence, new Date(j2));
    }

    private static String formatZoneOffset(int i2, int i3) {
        int i4 = i2 / 1000;
        StringBuilder sb = new StringBuilder();
        if (i4 < 0) {
            sb.insert(0, NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
            i4 = -i4;
        } else {
            sb.insert(0, "+");
        }
        sb.append(zeroPad(i4 / 3600, 2));
        sb.append(zeroPad((i4 % 3600) / 60, 2));
        return sb.toString();
    }

    public static String getBestDateTimePattern(Locale locale, String str) {
        return ICU.getBestDateTimePattern(str, locale);
    }

    public static java.text.DateFormat getDateFormat(Context context) {
        return java.text.DateFormat.getDateInstance(3);
    }

    public static char[] getDateFormatOrder(Context context) {
        return ICU.getDateFormatOrder(getDateFormatString());
    }

    private static String getDateFormatString() {
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(3);
        if (dateInstance instanceof SimpleDateFormat) {
            return ((SimpleDateFormat) dateInstance).toPattern();
        }
        throw new AssertionError("!(df instanceof SimpleDateFormat)");
    }

    private static String getDayOfWeekString(LocaleData localeData, int i2, int i3, int i4) {
        boolean z2 = i4 == 99;
        if (i3 == 5) {
            return z2 ? localeData.tinyStandAloneWeekdayNames[i2] : localeData.tinyWeekdayNames[i2];
        }
        if (i3 == 4) {
            return z2 ? localeData.longStandAloneWeekdayNames[i2] : localeData.longWeekdayNames[i2];
        }
        return z2 ? localeData.shortStandAloneWeekdayNames[i2] : localeData.shortWeekdayNames[i2];
    }

    public static java.text.DateFormat getLongDateFormat(Context context) {
        return java.text.DateFormat.getDateInstance(1);
    }

    public static java.text.DateFormat getMediumDateFormat(Context context) {
        return java.text.DateFormat.getDateInstance(2);
    }

    private static String getMonthString(LocaleData localeData, int i2, int i3, int i4) {
        boolean z2 = i4 == 76;
        if (i3 == 5) {
            return z2 ? localeData.tinyStandAloneMonthNames[i2] : localeData.tinyMonthNames[i2];
        }
        if (i3 == 4) {
            return z2 ? localeData.longStandAloneMonthNames[i2] : localeData.longMonthNames[i2];
        }
        if (i3 == 3) {
            return z2 ? localeData.shortStandAloneMonthNames[i2] : localeData.shortMonthNames[i2];
        }
        return zeroPad(i2 + 1, i3);
    }

    public static java.text.DateFormat getTimeFormat(Context context) {
        return new SimpleDateFormat(getTimeFormatString(context));
    }

    public static String getTimeFormatString(Context context) {
        return getTimeFormatString(context, UserHandle.myUserId());
    }

    private static String getTimeZoneString(Calendar calendar, int i2) {
        TimeZone timeZone = calendar.getTimeZone();
        if (i2 < 2) {
            return formatZoneOffset(calendar.get(15) + calendar.get(16), i2);
        }
        return timeZone.getDisplayName(calendar.get(16) != 0, 0);
    }

    private static String getYearString(int i2, int i3) {
        return i3 <= 2 ? zeroPad(i2 % 100, 2) : String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i2));
    }

    public static boolean hasDesignator(CharSequence charSequence, char c) {
        int iSkipQuotedText;
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt == '\'') {
                iSkipQuotedText = skipQuotedText(charSequence, i2, length);
            } else {
                if (cCharAt == c) {
                    return true;
                }
                iSkipQuotedText = 1;
            }
            i2 += iSkipQuotedText;
        }
        return false;
    }

    public static boolean hasSeconds(CharSequence charSequence) {
        return hasDesignator(charSequence, 's');
    }

    public static boolean is24HourFormat(Context context) {
        return is24HourFormat(context, UserHandle.myUserId());
    }

    private static int skipQuotedText(CharSequence charSequence, int i2, int i3) {
        int i4 = 1;
        int i5 = i2 + 1;
        if (i5 < i3 && charSequence.charAt(i5) == '\'') {
            return 2;
        }
        while (i5 < i3) {
            if (charSequence.charAt(i5) == '\'') {
                i4++;
                i5++;
                if (i5 >= i3 || charSequence.charAt(i5) != '\'') {
                    break;
                }
            } else {
                i5++;
                i4++;
            }
        }
        return i4;
    }

    private static String zeroPad(int i2, int i3) {
        return String.format(Locale.getDefault(), c.e("%0", i3, "d"), Integer.valueOf(i2));
    }

    public static CharSequence format(CharSequence charSequence, Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        return format(charSequence, gregorianCalendar);
    }

    public static String getTimeFormatString(Context context, int i2) {
        LocaleData localeData = LocaleData.get(context.getResources().getConfiguration().locale);
        return is24HourFormat(context, i2) ? localeData.timeFormat_Hm : localeData.timeFormat_hm;
    }

    public static boolean is24HourFormat(Context context, int i2) {
        boolean zEquals;
        String stringForUser = Settings.System.getStringForUser(context.getContentResolver(), Settings.System.TIME_12_24, i2);
        if (stringForUser != null) {
            return stringForUser.equals("24");
        }
        Locale locale = context.getResources().getConfiguration().locale;
        Object obj = sLocaleLock;
        synchronized (obj) {
            Locale locale2 = sIs24HourLocale;
            if (locale2 != null && locale2.equals(locale)) {
                return sIs24Hour;
            }
            java.text.DateFormat timeInstance = java.text.DateFormat.getTimeInstance(1, locale);
            String str = (!(timeInstance instanceof SimpleDateFormat) || ((SimpleDateFormat) timeInstance).toPattern().indexOf(72) < 0) ? "12" : "24";
            synchronized (obj) {
                sIs24HourLocale = locale;
                zEquals = str.equals("24");
                sIs24Hour = zEquals;
            }
            return zEquals;
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:49:0x00af  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:52:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ca  */
    public static CharSequence format(CharSequence charSequence, Calendar calendar) {
        int i2;
        String dayOfWeekString;
        int length;
        int length2;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        LocaleData localeData = LocaleData.get(Locale.getDefault());
        int length3 = charSequence.length();
        int i3 = 0;
        while (i3 < length3) {
            char cCharAt = spannableStringBuilder.charAt(i3);
            if (cCharAt == '\'') {
                length2 = appendQuotedText(spannableStringBuilder, i3, length3);
                length = spannableStringBuilder.length();
            } else {
                int i4 = 1;
                while (true) {
                    i2 = i3 + i4;
                    if (i2 < length3 && spannableStringBuilder.charAt(i2) == cCharAt) {
                        i4++;
                    }
                }
                if (cCharAt == 'A') {
                    dayOfWeekString = localeData.amPm[calendar.get(9) - 0];
                } else if (cCharAt == 'E') {
                    dayOfWeekString = getDayOfWeekString(localeData, calendar.get(7), i4, cCharAt);
                } else if (cCharAt == 'H') {
                    dayOfWeekString = zeroPad(calendar.get(11), i4);
                } else if (cCharAt != 'a') {
                    if (cCharAt == 'h') {
                        int i5 = calendar.get(10);
                        dayOfWeekString = zeroPad((cCharAt == 'h' || i5 != 0) ? i5 : 12, i4);
                    } else if (cCharAt == 'k') {
                        dayOfWeekString = zeroPad(calendar.get(11), i4);
                    } else if (cCharAt == 'm') {
                        dayOfWeekString = zeroPad(calendar.get(12), i4);
                    } else if (cCharAt == 's') {
                        dayOfWeekString = zeroPad(calendar.get(13), i4);
                    } else if (cCharAt == 'c') {
                        dayOfWeekString = getDayOfWeekString(localeData, calendar.get(7), i4, cCharAt);
                    } else if (cCharAt == 'd') {
                        dayOfWeekString = zeroPad(calendar.get(5), i4);
                    } else if (cCharAt == 'y') {
                        dayOfWeekString = getYearString(calendar.get(1), i4);
                    } else if (cCharAt == 'z') {
                        dayOfWeekString = getTimeZoneString(calendar, i4);
                    } else {
                        switch (cCharAt) {
                            case 'K':
                                int i6 = calendar.get(10);
                                dayOfWeekString = zeroPad((cCharAt == 'h' || i6 != 0) ? i6 : 12, i4);
                                break;
                            case 'L':
                            case 'M':
                                dayOfWeekString = getMonthString(localeData, calendar.get(2), i4, cCharAt);
                                break;
                            default:
                                dayOfWeekString = null;
                                break;
                        }
                    }
                } else {
                    dayOfWeekString = localeData.amPm[calendar.get(9) - 0];
                }
                if (dayOfWeekString != null) {
                    spannableStringBuilder.replace(i3, i2, (CharSequence) dayOfWeekString);
                    length2 = dayOfWeekString.length();
                    length = spannableStringBuilder.length();
                } else {
                    length = length3;
                    length2 = i4;
                }
            }
            i3 += length2;
            length3 = length;
        }
        if (charSequence instanceof Spanned) {
            return new SpannedString(spannableStringBuilder);
        }
        return spannableStringBuilder.toString();
    }
}
