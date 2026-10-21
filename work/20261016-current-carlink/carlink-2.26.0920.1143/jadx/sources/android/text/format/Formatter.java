package android.text.format;

import android.content.Context;
import android.content.res.Resources;
import android.icu.text.MeasureFormat;
import android.icu.text.NumberFormat;
import android.icu.text.UnicodeSetSpanner;
import android.icu.util.MeasureUnit;
import android.net.NetworkUtils;
import android.text.BidiFormatter;
import android.text.TextUtils;
import com.android.internal.R;
import java.lang.reflect.Constructor;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class Formatter {
    public static final int FLAG_CALCULATE_ROUNDED = 2;
    public static final int FLAG_DEFAULT = 0;
    public static final int FLAG_SHORTER = 1;
    private static final int MILLIS_PER_MINUTE = 60000;
    private static final MeasureUnit PETABYTE;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final UnicodeSetSpanner SPACES_AND_CONTROLS;

    public static class BytesResult {
        public final long roundedBytes;
        public final String units;
        public final String value;

        public BytesResult(String str, String str2, long j2) {
            this.value = str;
            this.units = str2;
            this.roundedBytes = j2;
        }
    }

    public static class RoundedBytesResult {
        public final int fractionDigits;
        public final long roundedBytes;
        public final MeasureUnit units;
        public final float value;

        private RoundedBytesResult(float f2, MeasureUnit measureUnit, int i2, long j2) {
            this.value = f2;
            this.units = measureUnit;
            this.fractionDigits = i2;
            this.roundedBytes = j2;
        }

        /* JADX WARN: Code duplicated, block: B:31:0x0066  */
        public static RoundedBytesResult roundBytes(long j2, int i2) {
            long j3;
            long j4 = j2;
            int i3 = 0;
            int i4 = 1;
            boolean z2 = j4 < 0;
            if (z2) {
                j4 = -j4;
            }
            float f2 = j4;
            MeasureUnit measureUnit = MeasureUnit.BYTE;
            if (f2 > 900.0f) {
                measureUnit = MeasureUnit.KILOBYTE;
                f2 /= 1000.0f;
                j3 = 1000;
            } else {
                j3 = 1;
            }
            if (f2 > 900.0f) {
                measureUnit = MeasureUnit.MEGABYTE;
                j3 *= 1000;
                f2 /= 1000.0f;
            }
            if (f2 > 900.0f) {
                measureUnit = MeasureUnit.GIGABYTE;
                j3 *= 1000;
                f2 /= 1000.0f;
            }
            if (f2 > 900.0f) {
                measureUnit = MeasureUnit.TERABYTE;
                j3 *= 1000;
                f2 /= 1000.0f;
            }
            if (f2 > 900.0f) {
                measureUnit = Formatter.PETABYTE;
                j3 *= 1000;
                f2 /= 1000.0f;
            }
            MeasureUnit measureUnit2 = measureUnit;
            if (j3 != 1 && f2 < 100.0f) {
                if (f2 < 1.0f) {
                    i3 = 2;
                    i4 = 100;
                } else if (f2 < 10.0f) {
                    if ((i2 & 1) != 0) {
                        i3 = 1;
                        i4 = 10;
                    } else {
                        i3 = 2;
                        i4 = 100;
                    }
                } else if ((i2 & 1) == 0) {
                    i3 = 2;
                    i4 = 100;
                }
            }
            if (z2) {
                f2 = -f2;
            }
            float f3 = f2;
            return new RoundedBytesResult(f3, measureUnit2, i3, (i2 & 2) != 0 ? (((long) Math.round(i4 * f3)) * j3) / ((long) i4) : 0L);
        }
    }

    static {
        a.w();
        a.B();
        SPACES_AND_CONTROLS = a.g(a.e().freeze());
        PETABYTE = createPetaByte();
    }

    private static String bidiWrap(Context context, String str) {
        return TextUtils.getLayoutDirectionFromLocale(localeFromContext(context)) == 1 ? BidiFormatter.getInstance(true).unicodeWrap(str) : str;
    }

    private static MeasureUnit createPetaByte() {
        try {
            Constructor declaredConstructor = MeasureUnit.class.getDeclaredConstructor(String.class, String.class);
            declaredConstructor.setAccessible(true);
            return (MeasureUnit) declaredConstructor.newInstance("digital", "petabyte");
        } catch (ReflectiveOperationException e2) {
            throw new RuntimeException("Failed to create petabyte MeasureUnit", e2);
        }
    }

    private static String deleteFirstFromString(String str, String str2) {
        int iIndexOf = str.indexOf(str2);
        if (iIndexOf == -1) {
            return str;
        }
        return str.substring(0, iIndexOf) + str.substring(str2.length() + iIndexOf, str.length());
    }

    public static BytesResult formatBytes(Resources resources, long j2, int i2) {
        MeasureUnit measureUnit;
        RoundedBytesResult roundedBytesResultRoundBytes = RoundedBytesResult.roundBytes(j2, i2);
        Locale locale = resources.getConfiguration().getLocales().get(0);
        NumberFormat numberFormatter = getNumberFormatter(locale, roundedBytesResultRoundBytes.fractionDigits);
        String str = numberFormatter.format(roundedBytesResultRoundBytes.value);
        return new BytesResult(str, (roundedBytesResultRoundBytes.units == MeasureUnit.BYTE || (measureUnit = roundedBytesResultRoundBytes.units) == PETABYTE) ? getSuffixOverride(resources, roundedBytesResultRoundBytes.units) : SPACES_AND_CONTROLS.trim(deleteFirstFromString(formatMeasureShort(locale, numberFormatter, roundedBytesResultRoundBytes.value, measureUnit), str)).toString(), roundedBytesResultRoundBytes.roundedBytes);
    }

    public static String formatFileSize(Context context, long j2) {
        return formatFileSize(context, j2, 0);
    }

    @Deprecated
    public static String formatIpAddress(int i2) {
        return NetworkUtils.intToInetAddress(i2).getHostAddress();
    }

    private static String formatMeasureShort(Locale locale, NumberFormat numberFormat, float f2, MeasureUnit measureUnit) {
        MeasureFormat measureFormat = MeasureFormat.getInstance(locale, MeasureFormat.FormatWidth.SHORT, numberFormat);
        a.p();
        return measureFormat.format(a.h(Float.valueOf(f2), measureUnit));
    }

    private static String formatRoundedBytesResult(Context context, RoundedBytesResult roundedBytesResult) {
        MeasureUnit measureUnit;
        Locale localeLocaleFromContext = localeFromContext(context);
        NumberFormat numberFormatter = getNumberFormatter(localeLocaleFromContext, roundedBytesResult.fractionDigits);
        return (roundedBytesResult.units == MeasureUnit.BYTE || (measureUnit = roundedBytesResult.units) == PETABYTE) ? context.getString(R.string.fileSizeSuffix, numberFormatter.format(roundedBytesResult.value), getSuffixOverride(context.getResources(), roundedBytesResult.units)) : formatMeasureShort(localeLocaleFromContext, numberFormatter, roundedBytesResult.value, measureUnit);
    }

    public static String formatShortElapsedTime(Context context, long j2) {
        int i2;
        int i3;
        int i4;
        long j3 = j2 / 1000;
        if (j3 >= 86400) {
            i2 = (int) (j3 / 86400);
            j3 -= (long) (SECONDS_PER_DAY * i2);
        } else {
            i2 = 0;
        }
        if (j3 >= 3600) {
            i3 = (int) (j3 / 3600);
            j3 -= (long) (i3 * SECONDS_PER_HOUR);
        } else {
            i3 = 0;
        }
        if (j3 >= 60) {
            i4 = (int) (j3 / 60);
            j3 -= (long) (i4 * 60);
        } else {
            i4 = 0;
        }
        int i5 = (int) j3;
        MeasureFormat measureFormat = MeasureFormat.getInstance(localeFromContext(context), MeasureFormat.FormatWidth.SHORT);
        if (i2 >= 2) {
            a.p();
            return measureFormat.format(a.i(Integer.valueOf(((i3 + 12) / 24) + i2), MeasureUnit.DAY));
        }
        if (i2 > 0) {
            a.p();
            a.p();
            return measureFormat.formatMeasures(a.i(Integer.valueOf(i2), MeasureUnit.DAY), a.i(Integer.valueOf(i3), MeasureUnit.HOUR));
        }
        if (i3 >= 2) {
            a.p();
            return measureFormat.format(a.i(Integer.valueOf(((i4 + 30) / 60) + i3), MeasureUnit.HOUR));
        }
        if (i3 > 0) {
            a.p();
            a.p();
            return measureFormat.formatMeasures(a.i(Integer.valueOf(i3), MeasureUnit.HOUR), a.i(Integer.valueOf(i4), MeasureUnit.MINUTE));
        }
        if (i4 >= 2) {
            a.p();
            return measureFormat.format(a.i(Integer.valueOf(((i5 + 30) / 60) + i4), MeasureUnit.MINUTE));
        }
        if (i4 <= 0) {
            a.p();
            return measureFormat.format(a.i(Integer.valueOf(i5), MeasureUnit.SECOND));
        }
        a.p();
        a.p();
        return measureFormat.formatMeasures(a.i(Integer.valueOf(i4), MeasureUnit.MINUTE), a.i(Integer.valueOf(i5), MeasureUnit.SECOND));
    }

    public static String formatShortElapsedTimeRoundingUpToMinutes(Context context, long j2) {
        long j3 = ((j2 + 60000) - 1) / 60000;
        if (j3 != 0 && j3 != 1) {
            return formatShortElapsedTime(context, j3 * 60000);
        }
        MeasureFormat measureFormat = MeasureFormat.getInstance(localeFromContext(context), MeasureFormat.FormatWidth.SHORT);
        a.p();
        return measureFormat.format(a.j(Long.valueOf(j3), MeasureUnit.MINUTE));
    }

    public static String formatShortFileSize(Context context, long j2) {
        return formatFileSize(context, j2, 1);
    }

    private static NumberFormat getNumberFormatter(Locale locale, int i2) {
        NumberFormat numberFormat = NumberFormat.getInstance(locale);
        numberFormat.setMinimumFractionDigits(i2);
        numberFormat.setMaximumFractionDigits(i2);
        numberFormat.setGroupingUsed(false);
        if (a.s(numberFormat)) {
            numberFormat.setRoundingMode(4);
        }
        return numberFormat;
    }

    private static String getSuffixOverride(Resources resources, MeasureUnit measureUnit) {
        return measureUnit == MeasureUnit.BYTE ? resources.getString(R.string.byteShort) : resources.getString(R.string.petabyteShort);
    }

    private static Locale localeFromContext(Context context) {
        return context.getResources().getConfiguration().getLocales().get(0);
    }

    private static String formatFileSize(Context context, long j2, int i2) {
        return context == null ? "" : bidiWrap(context, formatRoundedBytesResult(context, RoundedBytesResult.roundBytes(j2, i2)));
    }
}
