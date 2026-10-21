package d;

import android.util.DisplayMetrics;
import o1.s0;
import u0.b;
import u0.f;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static a f1544c = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f1545a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String[] f1546b = {"G23P32F32_Ver", "S32P32F32_V1", "S32P32F32_V2", "G13P32F32_Ver", "AT32P32F32_V2"};

    public static a c() {
        return f1544c;
    }

    public int a(byte[] bArr, String str) {
        int length = bArr.length;
        int i2 = 0;
        int i3 = 4096;
        while (i3 <= length) {
            int i4 = i3 + DisplayMetrics.DENSITY_XXXHIGH;
            if (i4 >= length - 64) {
                return -1;
            }
            if (new String(bArr, i4, 64).contains(str)) {
                return i2;
            }
            i2++;
            i3 = (65536 * i2) + 4096;
        }
        return -1;
    }

    public String b(String str) {
        for (String str2 : this.f1546b) {
            if (str.contains(str2)) {
                return str2;
            }
        }
        return null;
    }

    public void d(String str) {
        int iA;
        this.f1545a = q1.a.b(str);
        String strB = b(b.F1);
        if (!s0.t(strB) && (iA = a(this.f1545a, strB)) >= 0) {
            int i2 = (65536 * iA) + 4096;
            byte[] bArr = this.f1545a;
            int i3 = iA * 4;
            f.G(this.f1545a, i2, s0.z(bArr[i3 + 3], bArr[i3 + 2], bArr[i3 + 1], bArr[i3 + 0]) + i2);
        }
    }
}
