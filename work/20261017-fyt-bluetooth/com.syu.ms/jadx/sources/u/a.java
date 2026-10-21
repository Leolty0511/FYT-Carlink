package u;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Object[] f17211a = new Object[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Object[] f17212b = new Object[73];

    public static boolean a(int[] iArr, int i2) {
        for (int i3 : iArr) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }

    public static <T> boolean b(T[] tArr, T t2) {
        return k(tArr, t2) != -1;
    }

    public static <T> boolean c(T[] tArr, T[] tArr2) {
        for (T t2 : tArr2) {
            if (!b(tArr, t2)) {
                return false;
            }
        }
        return true;
    }

    public static <T> T[] d(Class<T> cls) {
        if (cls == Object.class) {
            return (T[]) f17211a;
        }
        int iIdentityHashCode = ((System.identityHashCode(cls) / 8) & Integer.MAX_VALUE) % 73;
        Object objNewInstance = f17212b[iIdentityHashCode];
        if (objNewInstance == null || objNewInstance.getClass().getComponentType() != cls) {
            objNewInstance = Array.newInstance((Class<?>) cls, 0);
            f17212b[iIdentityHashCode] = objNewInstance;
        }
        return (T[]) ((Object[]) objNewInstance);
    }

    public static int e(int i2) {
        for (int i3 = 4; i3 < 32; i3++) {
            int i4 = (1 << i3) - 12;
            if (i2 <= i4) {
                return i4;
            }
        }
        return i2;
    }

    public static int f(int i2) {
        return e(i2 * 2) / 2;
    }

    public static int g(int i2) {
        return e(i2 * 4) / 4;
    }

    public static int h(int i2) {
        return e(i2 * 4) / 4;
    }

    public static int i(int i2) {
        return e(i2 * 8) / 8;
    }

    public static int j(int i2) {
        return e(i2 * 4) / 4;
    }

    public static <T> int k(T[] tArr, T t2) {
        for (int i2 = 0; i2 < tArr.length; i2++) {
            if (tArr[i2] == null) {
                if (t2 == null) {
                    return i2;
                }
            } else if (t2 != null && tArr[i2].equals(t2)) {
                return i2;
            }
        }
        return -1;
    }

    public static long l(long[] jArr) {
        long j2 = 0;
        for (long j3 : jArr) {
            j2 += j3;
        }
        return j2;
    }
}
