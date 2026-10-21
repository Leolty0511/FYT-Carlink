package com.android.internal.http;

import android.telephony.PreciseDisconnectCause;
import android.text.format.Time;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class HttpDateTime {
    private static final String HTTP_DATE_RFC_REGEXP = "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])";
    private static final Pattern HTTP_DATE_RFC_PATTERN = Pattern.compile(HTTP_DATE_RFC_REGEXP);
    private static final String HTTP_DATE_ANSIC_REGEXP = "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})";
    private static final Pattern HTTP_DATE_ANSIC_PATTERN = Pattern.compile(HTTP_DATE_ANSIC_REGEXP);

    public static class TimeOfDay {
        int hour;
        int minute;
        int second;

        public TimeOfDay(int i2, int i3, int i4) {
            this.hour = i2;
            this.minute = i3;
            this.second = i4;
        }
    }

    private static int getDate(String str) {
        if (str.length() != 2) {
            return str.charAt(0) - '0';
        }
        return (str.charAt(1) - '0') + ((str.charAt(0) - '0') * 10);
    }

    private static int getMonth(String str) {
        int lowerCase = (Character.toLowerCase(str.charAt(2)) + (Character.toLowerCase(str.charAt(1)) + Character.toLowerCase(str.charAt(0)))) - 291;
        if (lowerCase == 9) {
            return 11;
        }
        if (lowerCase == 10) {
            return 1;
        }
        if (lowerCase == 22) {
            return 0;
        }
        if (lowerCase == 26) {
            return 7;
        }
        if (lowerCase == 29) {
            return 2;
        }
        if (lowerCase == 32) {
            return 3;
        }
        if (lowerCase == 40) {
            return 6;
        }
        if (lowerCase == 42) {
            return 5;
        }
        if (lowerCase == 48) {
            return 10;
        }
        switch (lowerCase) {
            case 35:
                return 9;
            case 36:
                return 4;
            case 37:
                return 8;
            default:
                throw new IllegalArgumentException();
        }
    }

    private static TimeOfDay getTime(String str) {
        int i2;
        int iCharAt = str.charAt(0) - '0';
        if (str.charAt(1) != ':') {
            iCharAt = (iCharAt * 10) + (str.charAt(1) - '0');
            i2 = 2;
        } else {
            i2 = 1;
        }
        int i3 = i2 + 1;
        int i4 = i3 + 1;
        int i5 = i4 + 1 + 1;
        return new TimeOfDay(iCharAt, (str.charAt(i4) - '0') + ((str.charAt(i3) - '0') * 10), (str.charAt(i5 + 1) - '0') + ((str.charAt(i5) - '0') * 10));
    }

    private static int getYear(String str) {
        if (str.length() == 2) {
            int iCharAt = (str.charAt(1) - '0') + ((str.charAt(0) - '0') * 10);
            return iCharAt >= 70 ? iCharAt + PreciseDisconnectCause.ECBM_NOT_SUPPORTED : iCharAt + 2000;
        }
        if (str.length() == 3) {
            return (str.charAt(2) - '0') + ((str.charAt(1) - '0') * 10) + ((str.charAt(0) - '0') * 100) + PreciseDisconnectCause.ECBM_NOT_SUPPORTED;
        }
        if (str.length() == 4) {
            return (str.charAt(3) - '0') + ((str.charAt(2) - '0') * 10) + ((str.charAt(1) - '0') * 100) + ((str.charAt(0) - '0') * 1000);
        }
        return 1970;
    }

    public static long parse(String str) {
        int month;
        int year;
        int date;
        TimeOfDay time;
        int i2;
        int i3;
        int i4;
        Matcher matcher = HTTP_DATE_RFC_PATTERN.matcher(str);
        if (matcher.find()) {
            date = getDate(matcher.group(1));
            month = getMonth(matcher.group(2));
            year = getYear(matcher.group(3));
            time = getTime(matcher.group(4));
        } else {
            Matcher matcher2 = HTTP_DATE_ANSIC_PATTERN.matcher(str);
            if (!matcher2.find()) {
                throw new IllegalArgumentException();
            }
            month = getMonth(matcher2.group(1));
            int date2 = getDate(matcher2.group(2));
            TimeOfDay time2 = getTime(matcher2.group(3));
            year = getYear(matcher2.group(4));
            date = date2;
            time = time2;
        }
        if (year >= 2038) {
            i3 = 0;
            i4 = 2038;
            i2 = 1;
        } else {
            i2 = date;
            i3 = month;
            i4 = year;
        }
        Time time3 = new Time(Time.TIMEZONE_UTC);
        time3.set(time.second, time.minute, time.hour, i2, i3, i4);
        return time3.toMillis(false);
    }
}
