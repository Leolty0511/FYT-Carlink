package n;

import android.text.format.Time;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f16278a = Pattern.compile("([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f16279b = Pattern.compile("[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})");

    /* JADX INFO: renamed from: n.a$a, reason: collision with other inner class name */
    public static class C0082a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16280a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f16281b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16282c;

        public C0082a(int i2, int i3, int i4) {
            this.f16280a = i2;
            this.f16281b = i3;
            this.f16282c = i4;
        }
    }

    public static int a(String str) {
        return str.length() == 2 ? ((str.charAt(0) - '0') * 10) + (str.charAt(1) - '0') : str.charAt(0) - '0';
    }

    public static int b(String str) {
        int lowerCase = ((Character.toLowerCase(str.charAt(0)) + Character.toLowerCase(str.charAt(1))) + Character.toLowerCase(str.charAt(2))) - 291;
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

    public static C0082a c(String str) {
        int i2;
        int iCharAt = str.charAt(0) - '0';
        if (str.charAt(1) != ':') {
            i2 = 2;
            iCharAt = (iCharAt * 10) + (str.charAt(1) - '0');
        } else {
            i2 = 1;
        }
        int i3 = i2 + 1;
        int i4 = i3 + 1;
        int i5 = i4 + 1 + 1;
        return new C0082a(iCharAt, ((str.charAt(i3) - '0') * 10) + (str.charAt(i4) - '0'), ((str.charAt(i5) - '0') * 10) + (str.charAt(i5 + 1) - '0'));
    }

    public static int d(String str) {
        if (str.length() == 2) {
            int iCharAt = ((str.charAt(0) - '0') * 10) + (str.charAt(1) - '0');
            return iCharAt >= 70 ? iCharAt + 1900 : iCharAt + 2000;
        }
        if (str.length() == 3) {
            return ((str.charAt(0) - '0') * 100) + ((str.charAt(1) - '0') * 10) + (str.charAt(2) - '0') + 1900;
        }
        if (str.length() == 4) {
            return ((str.charAt(0) - '0') * 1000) + ((str.charAt(1) - '0') * 100) + ((str.charAt(2) - '0') * 10) + (str.charAt(3) - '0');
        }
        return 1970;
    }

    public static long e(String str) {
        int iB;
        int iD;
        int iA;
        C0082a c0082aC;
        int i2;
        int i3;
        int i4;
        Matcher matcher = f16278a.matcher(str);
        if (matcher.find()) {
            iA = a(matcher.group(1));
            iB = b(matcher.group(2));
            iD = d(matcher.group(3));
            c0082aC = c(matcher.group(4));
        } else {
            Matcher matcher2 = f16279b.matcher(str);
            if (!matcher2.find()) {
                throw new IllegalArgumentException();
            }
            iB = b(matcher2.group(1));
            int iA2 = a(matcher2.group(2));
            C0082a c0082aC2 = c(matcher2.group(3));
            iD = d(matcher2.group(4));
            iA = iA2;
            c0082aC = c0082aC2;
        }
        if (iD >= 2038) {
            i3 = 0;
            i4 = 2038;
            i2 = 1;
        } else {
            i2 = iA;
            i3 = iB;
            i4 = iD;
        }
        Time time = new Time(Time.TIMEZONE_UTC);
        time.set(c0082aC.f16282c, c0082aC.f16281b, c0082aC.f16280a, i2, i3, i4);
        return time.toMillis(false);
    }
}
