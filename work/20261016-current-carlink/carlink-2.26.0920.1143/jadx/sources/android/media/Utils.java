package android.media;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.FileUtils;
import android.util.Log;
import android.util.Pair;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
class Utils {
    private static final String TAG = "Utils";

    public static Range<Integer> alignRange(Range<Integer> range, int i2) {
        return range.intersect(Integer.valueOf(divUp(((Integer) range.getLower()).intValue(), i2) * i2), Integer.valueOf((((Integer) range.getUpper()).intValue() / i2) * i2));
    }

    public static <T extends Comparable<? super T>> int binarySearchDistinctRanges(Range<T>[] rangeArr, T t2) {
        return Arrays.binarySearch(rangeArr, Range.create(t2, t2), new Comparator<Range<T>>() { // from class: android.media.Utils.2
            @Override // java.util.Comparator
            public int compare(Range<T> range, Range<T> range2) {
                if (range.getUpper().compareTo(range2.getLower()) < 0) {
                    return -1;
                }
                return range.getLower().compareTo(range2.getUpper()) > 0 ? 1 : 0;
            }
        });
    }

    public static int divUp(int i2, int i3) {
        return ((i2 + i3) - 1) / i3;
    }

    public static Range<Integer> factorRange(Range<Integer> range, int i2) {
        return i2 == 1 ? range : Range.create(Integer.valueOf(divUp(((Integer) range.getLower()).intValue(), i2)), Integer.valueOf(((Integer) range.getUpper()).intValue() / i2));
    }

    public static int gcd(int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return 1;
        }
        if (i3 < 0) {
            i3 = -i3;
        }
        if (i2 < 0) {
            i2 = -i2;
        }
        while (i2 != 0) {
            int i4 = i3 % i2;
            i3 = i2;
            i2 = i4;
        }
        return i3;
    }

    public static String getFileDisplayNameFromUri(Context context, Uri uri) {
        String scheme = uri.getScheme();
        if (ContentResolver.SCHEME_FILE.equals(scheme)) {
            return uri.getLastPathSegment();
        }
        if ("content".equals(scheme)) {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() != 0) {
                        cursorQuery.moveToFirst();
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex("_display_name"));
                        cursorQuery.close();
                        return string;
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            cursorQuery.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
        return uri.toString();
    }

    public static File getUniqueExternalFile(Context context, String str, String str2, String str3) {
        File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(str);
        externalStoragePublicDirectory.mkdirs();
        try {
            return FileUtils.buildUniqueFile(externalStoragePublicDirectory, str3, str2);
        } catch (FileNotFoundException e2) {
            Log.e(TAG, "Unable to get a unique file name: " + e2);
            return null;
        }
    }

    public static Range<Integer> intRangeFor(double d2) {
        return Range.create(Integer.valueOf((int) d2), Integer.valueOf((int) Math.ceil(d2)));
    }

    public static <T extends Comparable<? super T>> Range<T>[] intersectSortedDistinctRanges(Range<T>[] rangeArr, Range<T>[] rangeArr2) {
        Vector vector = new Vector();
        int i2 = 0;
        for (Range<T> range : rangeArr2) {
            while (i2 < rangeArr.length && rangeArr[i2].getUpper().compareTo(range.getLower()) < 0) {
                i2++;
            }
            while (i2 < rangeArr.length && rangeArr[i2].getUpper().compareTo(range.getUpper()) < 0) {
                vector.add(range.intersect(rangeArr[i2]));
                i2++;
            }
            if (i2 == rangeArr.length) {
                break;
            }
            if (rangeArr[i2].getLower().compareTo(range.getUpper()) <= 0) {
                vector.add(range.intersect(rangeArr[i2]));
            }
        }
        return (Range[]) vector.toArray(new Range[vector.size()]);
    }

    private static long lcm(int i2, int i3) {
        if (i2 == 0 || i3 == 0) {
            throw new IllegalArgumentException("lce is not defined for zero arguments");
        }
        return (((long) i2) * ((long) i3)) / ((long) gcd(i2, i3));
    }

    public static Range<Long> longRangeFor(double d2) {
        return Range.create(Long.valueOf((long) d2), Long.valueOf((long) Math.ceil(d2)));
    }

    public static Range<Integer> parseIntRange(Object obj, Range<Integer> range) {
        try {
            String str = (String) obj;
            int iIndexOf = str.indexOf(45);
            if (iIndexOf >= 0) {
                return Range.create(Integer.valueOf(Integer.parseInt(str.substring(0, iIndexOf), 10)), Integer.valueOf(Integer.parseInt(str.substring(iIndexOf + 1), 10)));
            }
            int i2 = Integer.parseInt(str);
            return Range.create(Integer.valueOf(i2), Integer.valueOf(i2));
        } catch (ClassCastException | NumberFormatException | IllegalArgumentException unused) {
            Log.w(TAG, "could not parse integer range '" + obj + "'");
            return range;
        } catch (NullPointerException unused2) {
            return range;
        }
    }

    public static int parseIntSafely(Object obj, int i2) {
        if (obj == null) {
            return i2;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (ClassCastException | NumberFormatException unused) {
            Log.w(TAG, "could not parse integer '" + obj + "'");
            return i2;
        } catch (NullPointerException unused2) {
            return i2;
        }
    }

    public static Range<Long> parseLongRange(Object obj, Range<Long> range) {
        try {
            String str = (String) obj;
            int iIndexOf = str.indexOf(45);
            if (iIndexOf >= 0) {
                return Range.create(Long.valueOf(Long.parseLong(str.substring(0, iIndexOf), 10)), Long.valueOf(Long.parseLong(str.substring(iIndexOf + 1), 10)));
            }
            long j2 = Long.parseLong(str);
            return Range.create(Long.valueOf(j2), Long.valueOf(j2));
        } catch (ClassCastException | NumberFormatException | IllegalArgumentException unused) {
            Log.w(TAG, "could not parse long range '" + obj + "'");
            return range;
        } catch (NullPointerException unused2) {
            return range;
        }
    }

    public static Range<Rational> parseRationalRange(Object obj, Range<Rational> range) {
        try {
            String str = (String) obj;
            int iIndexOf = str.indexOf(45);
            if (iIndexOf >= 0) {
                return Range.create(Rational.parseRational(str.substring(0, iIndexOf)), Rational.parseRational(str.substring(iIndexOf + 1)));
            }
            Rational rational = Rational.parseRational(str);
            return Range.create(rational, rational);
        } catch (ClassCastException | NumberFormatException | IllegalArgumentException unused) {
            Log.w(TAG, "could not parse rational range '" + obj + "'");
            return range;
        } catch (NullPointerException unused2) {
            return range;
        }
    }

    public static Size parseSize(Object obj, Size size) {
        try {
            return Size.parseSize((String) obj);
        } catch (ClassCastException | NumberFormatException unused) {
            Log.w(TAG, "could not parse size '" + obj + "'");
            return size;
        } catch (NullPointerException unused2) {
            return size;
        }
    }

    public static Pair<Size, Size> parseSizeRange(Object obj) {
        try {
            String str = (String) obj;
            int iIndexOf = str.indexOf(45);
            if (iIndexOf >= 0) {
                return Pair.create(Size.parseSize(str.substring(0, iIndexOf)), Size.parseSize(str.substring(iIndexOf + 1)));
            }
            Size size = Size.parseSize(str);
            return Pair.create(size, size);
        } catch (ClassCastException | NumberFormatException | IllegalArgumentException unused) {
            Log.w(TAG, "could not parse size range '" + obj + "'");
            return null;
        } catch (NullPointerException unused2) {
            return null;
        }
    }

    public static Range<Rational> scaleRange(Range<Rational> range, int i2, int i3) {
        return i2 == i3 ? range : Range.create(scaleRatio((Rational) range.getLower(), i2, i3), scaleRatio((Rational) range.getUpper(), i2, i3));
    }

    private static Rational scaleRatio(Rational rational, int i2, int i3) {
        int iGcd = gcd(i2, i3);
        return new Rational((int) (((double) rational.getNumerator()) * ((double) (i2 / iGcd))), (int) (((double) rational.getDenominator()) * ((double) (i3 / iGcd))));
    }

    public static <T extends Comparable<? super T>> void sortDistinctRanges(Range<T>[] rangeArr) {
        Arrays.sort(rangeArr, new Comparator<Range<T>>() { // from class: android.media.Utils.1
            @Override // java.util.Comparator
            public int compare(Range<T> range, Range<T> range2) {
                if (range.getUpper().compareTo(range2.getLower()) < 0) {
                    return -1;
                }
                if (range.getLower().compareTo(range2.getUpper()) > 0) {
                    return 1;
                }
                throw new IllegalArgumentException("sample rate ranges must be distinct (" + range + " and " + range2 + ")");
            }
        });
    }

    public static long divUp(long j2, long j3) {
        return ((j2 + j3) - 1) / j3;
    }

    public static Range<Long> factorRange(Range<Long> range, long j2) {
        return j2 == 1 ? range : Range.create(Long.valueOf(divUp(((Long) range.getLower()).longValue(), j2)), Long.valueOf(((Long) range.getUpper()).longValue() / j2));
    }
}
