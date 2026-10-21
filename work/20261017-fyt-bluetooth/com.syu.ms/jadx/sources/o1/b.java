package o1;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Object[] f16821a = new Object[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Object[] f16822b = new Object[73];

    public static int a(int i2) {
        for (int i3 = 4; i3 < 32; i3++) {
            int i4 = (1 << i3) - 12;
            if (i2 <= i4) {
                return i4;
            }
        }
        return i2;
    }

    public static int b(int i2) {
        return a(i2 * 4) / 4;
    }
}
