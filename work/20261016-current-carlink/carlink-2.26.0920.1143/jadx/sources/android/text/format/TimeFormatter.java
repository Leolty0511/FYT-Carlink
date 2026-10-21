package android.text.format;

import android.app.m;
import android.content.res.Resources;
import com.android.internal.R;
import com.google.android.material.timepicker.TimeModel;
import java.nio.CharBuffer;
import java.util.Locale;
import libcore.icu.LocaleData;
import libcore.util.ZoneInfo;

/* JADX INFO: loaded from: classes2.dex */
class TimeFormatter {
    private static final int DAYSPERLYEAR = 366;
    private static final int DAYSPERNYEAR = 365;
    private static final int DAYSPERWEEK = 7;
    private static final int FORCE_LOWER_CASE = -1;
    private static final int HOURSPERDAY = 24;
    private static final int MINSPERHOUR = 60;
    private static final int MONSPERYEAR = 12;
    private static final int SECSPERMIN = 60;
    private static String sDateOnlyFormat;
    private static String sDateTimeFormat;
    private static Locale sLocale;
    private static LocaleData sLocaleData;
    private static String sTimeOnlyFormat;
    private final String dateOnlyFormat;
    private final String dateTimeFormat;
    private final LocaleData localeData;
    private java.util.Formatter numberFormatter;
    private StringBuilder outputBuilder;
    private final String timeOnlyFormat;

    public TimeFormatter() {
        synchronized (TimeFormatter.class) {
            Locale locale = Locale.getDefault();
            Locale locale2 = sLocale;
            if (locale2 == null || !locale.equals(locale2)) {
                sLocale = locale;
                sLocaleData = LocaleData.get(locale);
                Resources system = Resources.getSystem();
                sTimeOnlyFormat = system.getString(R.string.time_of_day);
                sDateOnlyFormat = system.getString(R.string.month_day_year);
                sDateTimeFormat = system.getString(R.string.date_and_time);
            }
            this.dateTimeFormat = sDateTimeFormat;
            this.timeOnlyFormat = sTimeOnlyFormat;
            this.dateOnlyFormat = sDateOnlyFormat;
            this.localeData = sLocaleData;
        }
    }

    private static boolean brokenIsLower(char c) {
        return c >= 'a' && c <= 'z';
    }

    private static boolean brokenIsUpper(char c) {
        return c >= 'A' && c <= 'Z';
    }

    private static char brokenToLower(char c) {
        return (c < 'A' || c > 'Z') ? c : (char) ((c - DateFormat.CAPITAL_AM_PM) + 97);
    }

    private static char brokenToUpper(char c) {
        return (c < 'a' || c > 'z') ? c : (char) ((c - DateFormat.AM_PM) + 65);
    }

    private void formatInternal(String str, ZoneInfo.WallTime wallTime, ZoneInfo zoneInfo) {
        CharBuffer charBufferWrap = CharBuffer.wrap(str);
        while (charBufferWrap.remaining() > 0) {
            if (charBufferWrap.get(charBufferWrap.position()) == '%' ? handleToken(charBufferWrap, wallTime, zoneInfo) : true) {
                this.outputBuilder.append(charBufferWrap.get(charBufferWrap.position()));
            }
            charBufferWrap.position(charBufferWrap.position() + 1);
        }
    }

    private static String getFormat(int i2, String str, String str2, String str3, String str4) {
        if (i2 == 45) {
            return str3;
        }
        if (i2 != 48) {
            return i2 != 95 ? str : str2;
        }
        return str4;
    }

    private boolean handleToken(CharBuffer charBuffer, ZoneInfo.WallTime wallTime, ZoneInfo zoneInfo) {
        int iB;
        char c = 0;
        while (true) {
            if (charBuffer.remaining() <= 1) {
                return true;
            }
            charBuffer.position(charBuffer.position() + 1);
            char c2 = charBuffer.get(charBuffer.position());
            if (c2 != '#') {
                if (c2 == '+') {
                    formatInternal("%a %b %e %H:%M:%S %Z %Y", wallTime, zoneInfo);
                    return false;
                }
                char c3 = '-';
                if (c2 != '-' && c2 != '0') {
                    if (c2 == 'M') {
                        this.numberFormatter.format(getFormat(c, TimeModel.ZERO_LEADING_NUMBER_FORMAT, "%2d", TimeModel.NUMBER_FORMAT, TimeModel.ZERO_LEADING_NUMBER_FORMAT), Integer.valueOf(wallTime.getMinute()));
                        return false;
                    }
                    if (c2 == 'p') {
                        modifyAndAppend(wallTime.getHour() >= 12 ? this.localeData.amPm[1] : this.localeData.amPm[0], c);
                        return false;
                    }
                    if (c2 == 'O') {
                        continue;
                    } else {
                        if (c2 == 'P') {
                            modifyAndAppend(wallTime.getHour() >= 12 ? this.localeData.amPm[1] : this.localeData.amPm[0], -1);
                            return false;
                        }
                        if (c2 != '^' && c2 != '_') {
                            if (c2 != 'g') {
                                String str = "?";
                                if (c2 != 'h') {
                                    switch (c2) {
                                        case 'A':
                                            if (wallTime.getWeekDay() >= 0 && wallTime.getWeekDay() < 7) {
                                                str = this.localeData.longWeekdayNames[wallTime.getWeekDay() + 1];
                                            }
                                            modifyAndAppend(str, c);
                                            return false;
                                        case 'B':
                                            if (c == '-') {
                                                if (wallTime.getMonth() >= 0 && wallTime.getMonth() < 12) {
                                                    str = this.localeData.longStandAloneMonthNames[wallTime.getMonth()];
                                                }
                                                modifyAndAppend(str, c);
                                            } else {
                                                if (wallTime.getMonth() >= 0 && wallTime.getMonth() < 12) {
                                                    str = this.localeData.longMonthNames[wallTime.getMonth()];
                                                }
                                                modifyAndAppend(str, c);
                                            }
                                            return false;
                                        case 'C':
                                            outputYear(wallTime.getYear(), true, false, c);
                                            return false;
                                        case 'D':
                                            formatInternal("%m/%d/%y", wallTime, zoneInfo);
                                            return false;
                                        case 'E':
                                            break;
                                        case 'F':
                                            formatInternal("%Y-%m-%d", wallTime, zoneInfo);
                                            return false;
                                        case 'G':
                                            break;
                                        case 'H':
                                            this.numberFormatter.format(getFormat(c, TimeModel.ZERO_LEADING_NUMBER_FORMAT, "%2d", TimeModel.NUMBER_FORMAT, TimeModel.ZERO_LEADING_NUMBER_FORMAT), Integer.valueOf(wallTime.getHour()));
                                            return false;
                                        case 'I':
                                            this.numberFormatter.format(getFormat(c, TimeModel.ZERO_LEADING_NUMBER_FORMAT, "%2d", TimeModel.NUMBER_FORMAT, TimeModel.ZERO_LEADING_NUMBER_FORMAT), Integer.valueOf(wallTime.getHour() % 12 != 0 ? wallTime.getHour() % 12 : 12));
                                            return false;
                                        default:
                                            switch (c2) {
                                                case 'R':
                                                    formatInternal(DateUtils.HOUR_MINUTE_24, wallTime, zoneInfo);
                                                    return false;
                                                case 'S':
                                                    this.numberFormatter.format(getFormat(c, TimeModel.ZERO_LEADING_NUMBER_FORMAT, "%2d", TimeModel.NUMBER_FORMAT, TimeModel.ZERO_LEADING_NUMBER_FORMAT), Integer.valueOf(wallTime.getSecond()));
                                                    return false;
                                                case 'T':
                                                    formatInternal("%H:%M:%S", wallTime, zoneInfo);
                                                    return false;
                                                case 'U':
                                                    this.numberFormatter.format(getFormat(c, TimeModel.ZERO_LEADING_NUMBER_FORMAT, "%2d", TimeModel.NUMBER_FORMAT, TimeModel.ZERO_LEADING_NUMBER_FORMAT), Integer.valueOf(((wallTime.getYearDay() + 7) - wallTime.getWeekDay()) / 7));
                                                    return false;
                                                case 'V':
                                                    break;
                                                case 'W':
                                                    this.numberFormatter.format(getFormat(c, TimeModel.ZERO_LEADING_NUMBER_FORMAT, "%2d", TimeModel.NUMBER_FORMAT, TimeModel.ZERO_LEADING_NUMBER_FORMAT), Integer.valueOf(((wallTime.getYearDay() + 7) - (wallTime.getWeekDay() != 0 ? wallTime.getWeekDay() - 1 : 6)) / 7));
                                                    return false;
                                                case 'X':
                                                    formatInternal(this.timeOnlyFormat, wallTime, zoneInfo);
                                                    return false;
                                                case 'Y':
                                                    outputYear(wallTime.getYear(), true, true, c);
                                                    return false;
                                                case 'Z':
                                                    if (wallTime.getIsDst() < 0) {
                                                        return false;
                                                    }
                                                    modifyAndAppend(zoneInfo.getDisplayName(wallTime.getIsDst() != 0, 0), c);
                                                    return false;
                                                default:
                                                    switch (c2) {
                                                        case 'a':
                                                            if (wallTime.getWeekDay() >= 0 && wallTime.getWeekDay() < 7) {
                                                                str = this.localeData.shortWeekdayNames[wallTime.getWeekDay() + 1];
                                                            }
                                                            modifyAndAppend(str, c);
                                                            return false;
                                                        case 'b':
                                                            break;
                                                        case 'c':
                                                            formatInternal(this.dateTimeFormat, wallTime, zoneInfo);
                                                            return false;
                                                        case 'd':
                                                            this.numberFormatter.format(getFormat(c, TimeModel.ZERO_LEADING_NUMBER_FORMAT, "%2d", TimeModel.NUMBER_FORMAT, TimeModel.ZERO_LEADING_NUMBER_FORMAT), Integer.valueOf(wallTime.getMonthDay()));
                                                            return false;
                                                        case 'e':
                                                            this.numberFormatter.format(getFormat(c, "%2d", "%2d", TimeModel.NUMBER_FORMAT, TimeModel.ZERO_LEADING_NUMBER_FORMAT), Integer.valueOf(wallTime.getMonthDay()));
                                                            return false;
                                                        default:
                                                            switch (c2) {
                                                                case 'j':
                                                                    this.numberFormatter.format(getFormat(c, "%03d", "%3d", TimeModel.NUMBER_FORMAT, "%03d"), Integer.valueOf(wallTime.getYearDay() + 1));
                                                                    return false;
                                                                case 'k':
                                                                    this.numberFormatter.format(getFormat(c, "%2d", "%2d", TimeModel.NUMBER_FORMAT, TimeModel.ZERO_LEADING_NUMBER_FORMAT), Integer.valueOf(wallTime.getHour()));
                                                                    return false;
                                                                case 'l':
                                                                    this.numberFormatter.format(getFormat(c, "%2d", "%2d", TimeModel.NUMBER_FORMAT, TimeModel.ZERO_LEADING_NUMBER_FORMAT), Integer.valueOf(wallTime.getHour() % 12 != 0 ? wallTime.getHour() % 12 : 12));
                                                                    return false;
                                                                case 'm':
                                                                    this.numberFormatter.format(getFormat(c, TimeModel.ZERO_LEADING_NUMBER_FORMAT, "%2d", TimeModel.NUMBER_FORMAT, TimeModel.ZERO_LEADING_NUMBER_FORMAT), Integer.valueOf(wallTime.getMonth() + 1));
                                                                    return false;
                                                                case 'n':
                                                                    this.outputBuilder.append('\n');
                                                                    return false;
                                                                default:
                                                                    switch (c2) {
                                                                        case 'r':
                                                                            formatInternal("%I:%M:%S %p", wallTime, zoneInfo);
                                                                            return false;
                                                                        case 's':
                                                                            this.outputBuilder.append(Integer.toString(wallTime.mktime(zoneInfo)));
                                                                            return false;
                                                                        case 't':
                                                                            this.outputBuilder.append('\t');
                                                                            return false;
                                                                        case 'u':
                                                                            this.numberFormatter.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(wallTime.getWeekDay() != 0 ? wallTime.getWeekDay() : 7));
                                                                            return false;
                                                                        case 'v':
                                                                            formatInternal("%e-%b-%Y", wallTime, zoneInfo);
                                                                            return false;
                                                                        case 'w':
                                                                            this.numberFormatter.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(wallTime.getWeekDay()));
                                                                            return false;
                                                                        case 'x':
                                                                            formatInternal(this.dateOnlyFormat, wallTime, zoneInfo);
                                                                            return false;
                                                                        case 'y':
                                                                            outputYear(wallTime.getYear(), false, true, c);
                                                                            return false;
                                                                        case 'z':
                                                                            if (wallTime.getIsDst() < 0) {
                                                                                return false;
                                                                            }
                                                                            int gmtOffset = wallTime.getGmtOffset();
                                                                            if (gmtOffset < 0) {
                                                                                gmtOffset = -gmtOffset;
                                                                            } else {
                                                                                c3 = '+';
                                                                            }
                                                                            this.outputBuilder.append(c3);
                                                                            int i2 = gmtOffset / 60;
                                                                            this.numberFormatter.format(getFormat(c, "%04d", "%4d", TimeModel.NUMBER_FORMAT, "%04d"), Integer.valueOf((i2 % 60) + ((i2 / 60) * 100)));
                                                                            return false;
                                                                        default:
                                                                            return true;
                                                                    }
                                                            }
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                }
                                if (wallTime.getMonth() >= 0 && wallTime.getMonth() < 12) {
                                    str = this.localeData.shortMonthNames[wallTime.getMonth()];
                                }
                                modifyAndAppend(str, c);
                                return false;
                            }
                            int year = wallTime.getYear();
                            int yearDay = wallTime.getYearDay();
                            int weekDay = wallTime.getWeekDay();
                            while (true) {
                                int i3 = isLeap(year) ? 366 : 365;
                                int i4 = (((yearDay + 11) - weekDay) % 7) - 3;
                                int i5 = i4 - (i3 % 7);
                                if (i5 < -3) {
                                    i5 += 7;
                                }
                                if (yearDay >= i5 + i3) {
                                    year++;
                                    iB = 1;
                                } else if (yearDay >= i4) {
                                    iB = m.b(yearDay, i4, 7, 1);
                                } else {
                                    year--;
                                    yearDay += isLeap(year) ? 366 : 365;
                                }
                            }
                            if (c2 == 'V') {
                                this.numberFormatter.format(getFormat(c, TimeModel.ZERO_LEADING_NUMBER_FORMAT, "%2d", TimeModel.NUMBER_FORMAT, TimeModel.ZERO_LEADING_NUMBER_FORMAT), Integer.valueOf(iB));
                            } else if (c2 == 'g') {
                                outputYear(year, false, true, c);
                            } else {
                                outputYear(year, true, true, c);
                            }
                            return false;
                        }
                    }
                }
            }
            c = c2;
        }
    }

    private static boolean isLeap(int i2) {
        return i2 % 4 == 0 && (i2 % 100 != 0 || i2 % 400 == 0);
    }

    private String localizeDigits(String str) {
        int length = str.length();
        int i2 = this.localeData.zeroDigit - '0';
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

    private void modifyAndAppend(CharSequence charSequence, int i2) {
        int i3 = 0;
        if (i2 == -1) {
            while (i3 < charSequence.length()) {
                this.outputBuilder.append(brokenToLower(charSequence.charAt(i3)));
                i3++;
            }
            return;
        }
        if (i2 != 35) {
            if (i2 != 94) {
                this.outputBuilder.append(charSequence);
                return;
            }
            while (i3 < charSequence.length()) {
                this.outputBuilder.append(brokenToUpper(charSequence.charAt(i3)));
                i3++;
            }
            return;
        }
        while (i3 < charSequence.length()) {
            char cCharAt = charSequence.charAt(i3);
            if (brokenIsUpper(cCharAt)) {
                cCharAt = brokenToLower(cCharAt);
            } else if (brokenIsLower(cCharAt)) {
                cCharAt = brokenToUpper(cCharAt);
            }
            this.outputBuilder.append(cCharAt);
            i3++;
        }
    }

    private void outputYear(int i2, boolean z2, boolean z3, int i3) {
        int i4 = i2 % 100;
        int i5 = (i4 / 100) + (i2 / 100);
        int i6 = i4 % 100;
        if (i6 < 0 && i5 > 0) {
            i6 += 100;
            i5--;
        } else if (i5 < 0 && i6 > 0) {
            i6 -= 100;
            i5++;
        }
        if (z2) {
            if (i5 != 0 || i6 >= 0) {
                this.numberFormatter.format(getFormat(i3, TimeModel.ZERO_LEADING_NUMBER_FORMAT, "%2d", TimeModel.NUMBER_FORMAT, TimeModel.ZERO_LEADING_NUMBER_FORMAT), Integer.valueOf(i5));
            } else {
                this.outputBuilder.append("-0");
            }
        }
        if (z3) {
            if (i6 < 0) {
                i6 = -i6;
            }
            this.numberFormatter.format(getFormat(i3, TimeModel.ZERO_LEADING_NUMBER_FORMAT, "%2d", TimeModel.NUMBER_FORMAT, TimeModel.ZERO_LEADING_NUMBER_FORMAT), Integer.valueOf(i6));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String format(String str, ZoneInfo.WallTime wallTime, ZoneInfo zoneInfo) {
        try {
            StringBuilder sb = new StringBuilder();
            this.outputBuilder = sb;
            this.numberFormatter = new java.util.Formatter(sb, Locale.US);
            formatInternal(str, wallTime, zoneInfo);
            String string = sb.toString();
            if (this.localeData.zeroDigit != '0') {
                string = localizeDigits(string);
            }
            return string;
        } finally {
            this.outputBuilder = null;
            this.numberFormatter = null;
        }
    }
}
