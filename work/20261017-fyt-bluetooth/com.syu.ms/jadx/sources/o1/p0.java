package o1;

import android.text.Spanned;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class p0 {
    public static int a(String str) {
        int iAvailable = -1;
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            iAvailable = fileInputStream.available();
            fileInputStream.close();
            return iAvailable;
        } catch (Exception e2) {
            e2.printStackTrace();
            return iAvailable;
        }
    }

    public static boolean b(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public static int c(byte b2, byte b3) {
        return ((b2 << 8) & 65280) | (b3 & 255);
    }

    public static int d(byte b2, byte b3, byte b4) {
        return ((b2 << 16) & Spanned.SPAN_PRIORITY) | ((b3 << 8) & 65280) | (b4 & 255);
    }

    public static int e(byte b2, byte b3, byte b4, byte b5) {
        return ((b2 << 24) & (-16777216)) | ((b3 << 16) & Spanned.SPAN_PRIORITY) | ((b4 << 8) & 65280) | (b5 & 255);
    }

    public static byte[] f(String str) {
        byte[] bArr = null;
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            bArr = new byte[fileInputStream.available()];
            fileInputStream.read(bArr);
            fileInputStream.close();
            return bArr;
        } catch (Exception e2) {
            e2.printStackTrace();
            return bArr;
        }
    }

    public static boolean g(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equals(str2);
    }

    public static boolean h(String[] strArr, int i2) {
        return strArr != null && strArr.length >= i2;
    }
}
