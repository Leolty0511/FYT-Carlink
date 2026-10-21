package android.text.format;

import android.content.Context;
import android.net.wifi.BatchedScanSettings;
import android.provider.Settings;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.SpannedString;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import libcore.icu.ICU;
import libcore.icu.LocaleData;

/* JADX INFO: loaded from: classes.dex */
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
        int i5 = 0;
        spannableStringBuilder.delete(i2, i4);
        int i6 = i3 - 1;
        while (i2 < i6) {
            if (spannableStringBuilder.charAt(i2) == '\'') {
                int i7 = i2 + 1;
                if (i7 >= i6 || spannableStringBuilder.charAt(i7) != '\'') {
                    spannableStringBuilder.delete(i2, i7);
                    break;
                }
                spannableStringBuilder.delete(i2, i7);
                i6--;
                i5++;
                i2 = i7;
            } else {
                i2++;
                i5++;
            }
        }
        return i5;
    }

    public static CharSequence format(CharSequence charSequence, long j2) {
        return format(charSequence, new Date(j2));
    }

    private static String formatZoneOffset(int i2, int i3) {
        int i4 = i2 / 1000;
        StringBuilder sb = new StringBuilder();
        if (i4 < 0) {
            sb.insert(0, "-");
            i4 = -i4;
        } else {
            sb.insert(0, "+");
        }
        int i5 = i4 / BatchedScanSettings.MAX_INTERVAL_SEC;
        int i6 = (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
        sb.append(zeroPad(i5, 2));
        sb.append(zeroPad(i6, 2));
        return sb.toString();
    }

    public static String getBestDateTimePattern(Locale locale, String str) {
        return ICU.getBestDateTimePattern(str, locale.toString());
    }

    public static java.text.DateFormat getDateFormat(Context context) {
        return getDateFormatForSetting(context, Settings.System.getString(context.getContentResolver(), Settings.System.DATE_FORMAT));
    }

    public static java.text.DateFormat getDateFormatForSetting(Context context, String str) {
        return new SimpleDateFormat(getDateFormatStringForSetting(context, str));
    }

    public static char[] getDateFormatOrder(Context context) {
        return ICU.getDateFormatOrder(getDateFormatString(context));
    }

    private static String getDateFormatString(Context context) {
        return getDateFormatStringForSetting(context, Settings.System.getString(context.getContentResolver(), Settings.System.DATE_FORMAT));
    }

    private static String getDateFormatStringForSetting(Context context, String str) {
        if (str != null) {
            int iIndexOf = str.indexOf(77);
            int iIndexOf2 = str.indexOf(100);
            int iIndexOf3 = str.indexOf(121);
            if (iIndexOf >= 0 && iIndexOf2 >= 0 && iIndexOf3 >= 0) {
                String string = context.getString(17039422);
                if (iIndexOf3 < iIndexOf && iIndexOf3 < iIndexOf2) {
                    return iIndexOf < iIndexOf2 ? String.format(string, "yyyy", "MM", "dd") : String.format(string, "yyyy", "dd", "MM");
                }
                if (iIndexOf < iIndexOf2) {
                    return iIndexOf2 < iIndexOf3 ? String.format(string, "MM", "dd", "yyyy") : String.format(string, "MM", "yyyy", "dd");
                }
                return iIndexOf < iIndexOf3 ? String.format(string, "dd", "MM", "yyyy") : String.format(string, "dd", "yyyy", "MM");
            }
        }
        return LocaleData.get(context.getResources().getConfiguration().locale).shortDateFormat4;
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
        LocaleData localeData = LocaleData.get(context.getResources().getConfiguration().locale);
        return is24HourFormat(context) ? localeData.timeFormat24 : localeData.timeFormat12;
    }

    private static String getTimeZoneString(Calendar calendar, int i2) {
        TimeZone timeZone = calendar.getTimeZone();
        if (i2 < 2) {
            return formatZoneOffset(calendar.get(16) + calendar.get(15), i2);
        }
        return timeZone.getDisplayName(calendar.get(16) != 0, 0);
    }

    private static String getYearString(int i2, int i3) {
        return i3 <= 2 ? zeroPad(i2 % 100, 2) : String.format(Locale.getDefault(), "%d", Integer.valueOf(i2));
    }

    public static boolean hasDesignator(CharSequence charSequence, char c2) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            int iSkipQuotedText = 1;
            if (cCharAt == '\'') {
                iSkipQuotedText = skipQuotedText(charSequence, i2, length);
            } else if (cCharAt == c2) {
                return true;
            }
            i2 += iSkipQuotedText;
        }
        return false;
    }

    public static boolean hasSeconds(CharSequence charSequence) {
        return hasDesignator(charSequence, 's');
    }

    public static boolean is24HourFormat(Context context) {
        boolean zEquals;
        String stringForUser = Settings.System.getStringForUser(context.getContentResolver(), Settings.System.TIME_12_24, -2);
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
        return String.format(Locale.getDefault(), "%0" + i3 + "d", Integer.valueOf(i2));
    }

    public static CharSequence format(CharSequence charSequence, Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        return format(charSequence, gregorianCalendar);
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
