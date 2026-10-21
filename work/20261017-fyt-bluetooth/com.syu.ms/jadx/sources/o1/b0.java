package o1;

import android.net.ProxyProperties;
import android.util.Log;
import android.widget.Toast;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f16823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Runnable f16824b = new a();

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Toast f16825a;

        @Override // java.lang.Runnable
        public void run() {
            if (this.f16825a == null) {
                this.f16825a = Toast.makeText(App.c(), ProxyProperties.LOCAL_EXCL_LIST, 1);
            }
            this.f16825a.setText(b0.f16823a);
            this.f16825a.show();
        }
    }

    public static String b(byte[] bArr, int i2, int i3) {
        StringBuilder sb = new StringBuilder(i3);
        int i4 = i3 + i2;
        while (i2 < i4) {
            sb.append(((char) bArr[i2]) + " ");
            i2++;
        }
        return sb.toString();
    }

    public static String c(int i2, int[] iArr, float[] fArr, String[] strArr) {
        StringBuilder sb = new StringBuilder(100);
        sb.append("[code\t" + i2 + "] ");
        if (iArr != null && iArr.length > 0) {
            sb.append("[ints");
            for (int i3 : iArr) {
                sb.append(" " + i3);
            }
            sb.append("] ");
        }
        if (fArr != null && fArr.length > 0) {
            sb.append("[flts");
            for (float f2 : fArr) {
                sb.append(" " + f2);
            }
            sb.append("] ");
        }
        if (strArr != null && strArr.length > 0) {
            sb.append("[strs");
            for (String str : strArr) {
                sb.append(" " + str);
            }
            sb.append("]");
        }
        return sb.toString();
    }

    public static String d(byte[] bArr, int i2, int i3) {
        StringBuilder sb = new StringBuilder(i3 * 3);
        int i4 = i3 + i2;
        while (i2 < i4) {
            sb.append(String.format("%02X ", Byte.valueOf(bArr[i2])));
            i2++;
        }
        return sb.toString();
    }

    public static String e(int[] iArr, int i2, int i3) {
        if (iArr == null || iArr.length == 0) {
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
        StringBuilder sb = new StringBuilder(i3 * 3);
        int i4 = i3 + i2;
        while (i2 < i4) {
            sb.append(String.format("%02X ", Integer.valueOf(iArr[i2] & 255)));
            i2++;
        }
        return sb.toString();
    }

    public static void f(String str) {
        a.f.p().s(str);
    }

    public static void g(String str, byte[] bArr, int i2, int i3) {
        Log.d(str, d(bArr, i2, i3));
    }

    public static void h(byte[] bArr, int i2, int i3) {
        a.f.p().s(d(bArr, i2, i3));
    }

    public static void i(String str) {
    }

    public static void j(String str) {
        a.f.p().s(str);
    }
}
