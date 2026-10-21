package android.debug;

/* JADX INFO: loaded from: classes.dex */
public class JNITest {
    private native int part1(int i2, double d2, String str, int[] iArr);

    private int part2(double d2, int i2, String str) {
        System.out.println(str + " : " + ((float) d2) + " : " + i2);
        return part3(str) + 6;
    }

    private static native int part3(String str);

    public int test(int i2, double d2, String str) {
        return part1(i2, d2, str, new int[]{42, 53, 65, 127});
    }
}
