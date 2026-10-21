package o1;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f16857a = new int[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long[] f16858b = new long[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object[] f16859c = new Object[0];

    public static int a(int[] iArr, int i2, int i3) {
        int i4 = i2 - 1;
        int i5 = 0;
        while (i5 <= i4) {
            int i6 = (i5 + i4) >>> 1;
            int i7 = iArr[i6];
            if (i7 < i3) {
                i5 = i6 + 1;
            } else {
                if (i7 <= i3) {
                    return i6;
                }
                i4 = i6 - 1;
            }
        }
        return ~i5;
    }

    public static <T extends Comparable<T>> int b(Object[] objArr, int i2, T t2) {
        int i3 = i2 - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            int iCompareTo = ((Comparable) objArr[i5]).compareTo(t2);
            if (iCompareTo < 0) {
                i4 = i5 + 1;
            } else {
                if (iCompareTo <= 0) {
                    return i5;
                }
                i3 = i5 - 1;
            }
        }
        return ~i4;
    }
}
