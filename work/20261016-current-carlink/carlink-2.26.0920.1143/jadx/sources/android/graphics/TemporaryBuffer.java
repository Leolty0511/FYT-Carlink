package android.graphics;

import com.android.internal.util.ArrayUtils;

/* JADX INFO: loaded from: classes.dex */
public class TemporaryBuffer {
    private static char[] sTemp;

    public static char[] obtain(int i2) {
        char[] cArr;
        synchronized (TemporaryBuffer.class) {
            cArr = sTemp;
            sTemp = null;
        }
        return (cArr == null || cArr.length < i2) ? ArrayUtils.newUnpaddedCharArray(i2) : cArr;
    }

    public static void recycle(char[] cArr) {
        if (cArr.length > 1000) {
            return;
        }
        synchronized (TemporaryBuffer.class) {
            sTemp = cArr;
        }
    }
}
