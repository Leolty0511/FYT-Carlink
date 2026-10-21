package e1;

import android.os.SystemProperties;
import android.util.Log;
import o1.q0;

/* JADX INFO: loaded from: classes2.dex */
public class m extends l {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f1728i = 184;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static boolean f1729j = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f1730a = "pr2000";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.n f1731b = new o1.n();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1732c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1733d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1734e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1735f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f1736g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f1737h = new int[0];

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e1.a.f1658c) {
                u0.d.n3(0);
                u0.d.o3(1);
            }
        }
    }

    @Override // e1.l
    public void a() {
    }

    @Override // e1.l
    public void b() {
        int iA = g.e.a();
        if (iA == 5) {
            this.f1731b.f("/dev/i2c-4");
        } else if (iA == 7) {
            this.f1731b.f("/dev/i2c-6");
        }
        b.a(this.f1736g);
    }

    @Override // e1.l
    public void c(int i2) {
        if (f1729j || j() < 0) {
            return;
        }
        f1729j = true;
    }

    @Override // e1.l
    public void d() {
        b.d(this.f1736g);
    }

    @Override // e1.l
    public void f() {
    }

    @Override // e1.l
    public void h(int i2, int i3, int i4, int i5) {
        l(f1728i, 0, i3 & 255);
        l(f1728i, 0, i4 & 255);
        l(f1728i, 0, i5 & 255);
    }

    @Override // e1.l
    public void i(int i2) {
    }

    public final int j() {
        int iK = k(this.f1737h) + 0;
        u0.d.Z3("初始化IC结果 = " + iK);
        Log.d(this.f1730a, "初始化IC结果 = " + iK);
        return iK;
    }

    public final int k(int[] iArr) {
        if (iArr == null || iArr.length <= 0) {
            return 0;
        }
        int iL = 0;
        for (int i2 = 0; i2 < iArr.length - 1; i2 += 2) {
            if (iArr[i2] != 0 && iArr[i2] != 0 && iArr[i2] != 0 && iArr[i2] != 0) {
                int i3 = i2 + 1;
                iL += l(f1728i, iArr[i2], iArr[i3]);
                u0.d.Z3("regAddr = " + String.format("%02X ", Integer.valueOf(iArr[i2])) + " value = " + String.format("%02X ", Integer.valueOf(iArr[i3])) + ";result = " + iL);
                Log.d(this.f1730a, "regAddr = " + String.format("%02X ", Integer.valueOf(iArr[i2])) + " value = " + String.format("%02X ", Integer.valueOf(iArr[i3])) + ";result = " + iL);
            }
        }
        return iL;
    }

    public final int l(int i2, int i3, int i4) {
        if (SystemProperties.getBoolean("sys.fyt.video.debug", false)) {
            return 1;
        }
        if (q0.k() == 0) {
            return -1;
        }
        return this.f1731b.h(i2, i3, i4);
    }
}
