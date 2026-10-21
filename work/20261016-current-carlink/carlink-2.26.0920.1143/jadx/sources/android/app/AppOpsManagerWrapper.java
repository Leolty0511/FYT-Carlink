package android.app;

/* JADX INFO: loaded from: classes.dex */
public class AppOpsManagerWrapper {
    public static final int OP_POST_AUTORUN = 70;

    public static int[] addItem(int[] iArr, int i2) {
        int length = iArr.length + 1;
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        iArr2[length - 1] = i2;
        return iArr2;
    }

    public static boolean[] addItem(boolean[] zArr, boolean z2) {
        int length = zArr.length + 1;
        boolean[] zArr2 = new boolean[length];
        System.arraycopy(zArr, 0, zArr2, 0, zArr.length);
        zArr2[length - 1] = z2;
        return zArr2;
    }

    public static String[] addItem(String[] strArr, String str) {
        int length = strArr.length + 1;
        String[] strArr2 = new String[length];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length - 1] = str;
        return strArr2;
    }
}
