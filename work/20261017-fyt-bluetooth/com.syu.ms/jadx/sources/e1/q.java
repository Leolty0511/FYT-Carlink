package e1;

import android.os.SystemProperties;
import com.syu.jni.ToolsJni;
import o1.q0;

/* JADX INFO: loaded from: classes2.dex */
public class q extends l {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f1819j = 68;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static boolean f1820k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f1821l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static boolean f1822m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f1823n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f1824o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f1825p;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1830e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1826a = "tw9992";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.n f1827b = new o1.n();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f1828c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f1829d = new c();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f1831f = new d();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[] f1832g = {112, 1, 28, 31, 0, 146, 1, 0, 2, 64, 3, 105, 4, 0, 5, 9, 12, 204, 13, 0, 16, 232, 17, 117, 18, 24, 19, 128, 20, 128, 21, 0, 23, 128, 24, 68, 25, 6, 26, 16, 27, 0, 29, 127, 31, 0, 32, 80, 33, 34, 34, 240, 35, 207, 36, 188, 37, 184, 38, 68, 39, 56, 40, 0, 41, 0, 42, 120, 43, 68, 44, 48, 45, 20, 46, 165, 47, 228, 48, 0, 49, 16, 50, 255, 51, 197, 52, 26, 53, 0, 54, 90, 55, 24, 56, 221, 57, 0, 58, 48, 59, 0, 60, 0, 61, 0, 63, 26, 64, 128, 65, 0, 66, 0, 72, 2, 73, 0, 74, 161, 75, 10, 76, 0, 77, 1, 78, 1, 80, 0, 81, 119, 82, 0, 83, 0, 84, 22, 85, 0, 86, 0, 87, 0, 88, 0, 96, 0, 97, 0, 98, 0, 99, 0, 113, 165, 114, 160, 116, 240, 117, 0, 118, 23, 119, 5, 120, 136, 121, 6, 122, 40, 123, 70, 124, 179, 125, 6, 126, 19, 127, 16, 128, 5, 129, 160, 130, 17, 131, 17, 132, 2, 133, 14, 134, 8, 135, 55, 136, 0, 137, 0, 138, 2, 139, 51, 140, 34, 141, 3, 142, 34, 143, 1, 144, 0, 145, 12, 146, 0, 147, 14, 148, 7, 149, 255, 150, 26, 155, 2, 160, 0, 161, 0, 162, 48, 163, 192, 164, 0, 192, 71, 193, 32, 255, 255};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f1833h = {7, 2, 8, 21, 9, 240, 10, 20, 11, 208, 115, 32};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f1834i = {7, 18, 8, 23, 9, 32, 10, 30, 11, 208, 115, 32};

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.n4;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ToolsJni.cmd_33_reset_videoIc(1);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0029  */
        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if (!e1.a.f1658c || !q.f1820k) {
                i2 = 0;
            } else if (q.this.t(q.f1819j, 0) <= 0) {
                q.f1820k = false;
                ToolsJni.cmd_33_reset_videoIc(1);
                return;
            } else if (q.this.q() != 0) {
                q.this.p();
                i2 = 1;
            } else {
                i2 = 0;
            }
            int i3 = SystemProperties.getBoolean("sys.fyt.video.debug", false) ? 1 : i2;
            q.this.v(i3);
            u0.d.o3(i3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q.this.w(q.f1824o);
        }
    }

    @Override // e1.l
    public void a() {
    }

    @Override // e1.l
    public void b() {
        int iA = g.e.a();
        if (iA == 4) {
            this.f1827b.f("/dev/i2c-4");
        } else if (iA == 5 || iA == 7) {
            this.f1827b.f("/dev/i2c-0");
        }
        u0.c.f17381h.a(this.f1828c, 0);
        e1.b.a(this.f1829d);
        u0.c.D.a(this.f1831f, 0);
    }

    @Override // e1.l
    public void c(int i2) {
        if (i2 < 0 || i2 > 10) {
            return;
        }
        f1825p = i2;
        s(i2);
        f1821l = 0;
    }

    @Override // e1.l
    public void d() {
        u0.c.f17381h.d(this.f1828c);
        e1.b.d(this.f1829d);
        u0.c.D.d(this.f1831f);
        this.f1827b.close();
    }

    @Override // e1.l
    public void f() {
        int i2;
        if (!f1820k && r() >= 0) {
            f1820k = true;
        }
        if (q0.k() == 0 || (i2 = f1825p) == 0) {
            f1823n = false;
            return;
        }
        s(i2);
        i(f1825p);
        f1823n = false;
    }

    @Override // e1.l
    public void h(int i2, int i3, int i4, int i5) {
        x(f1819j, 16, i3 & 255);
        x(f1819j, 17, i5 & 255);
        int i6 = i4 & 255;
        x(f1819j, 19, i6);
        x(f1819j, 20, i6);
    }

    @Override // e1.l
    public synchronized void i(int i2) {
        if (i2 >= 0 && i2 <= 10) {
            if (f1820k) {
                f1825p = i2;
                int i3 = u0.b.t4[i2];
                f1824o = i3;
                w(i3);
            }
        }
    }

    public final int p() {
        int i2 = (t(f1819j, 3) & 1) == 0 ? 0 : 1;
        a.i.a0(10L);
        int i3 = (t(f1819j, 3) & 1) == 0 ? 0 : 1;
        a.i.a0(10L);
        int i4 = (t(f1819j, 3) & 1) == 0 ? 0 : 1;
        if (i2 != i3 || i2 != i4 || i3 != i4) {
            return -1;
        }
        if (q() == 0) {
            return i2;
        }
        u0.d.n3(i2);
        return i2;
    }

    public final int q() {
        int iT = t(f1819j, 3);
        return (((iT >> 5) & 7) == 3 && ((iT >> 3) & 1) == 1) ? 1 : 0;
    }

    public final int r() {
        return u(this.f1832g);
    }

    public final synchronized void s(int i2) {
        int i3 = u0.b.t4[i2];
        if (!f1820k && r() >= 0) {
            f1820k = true;
        }
        int i4 = 67;
        if (i3 == 1) {
            i4 = 69;
        } else if (i3 != 2) {
            if (i3 != 3) {
                if (i3 == 4) {
                    i4 = 66;
                } else if (i3 != 6) {
                    i4 = i3 != 7 ? -1 : 64;
                } else {
                    i4 = 65;
                }
            } else if (u0.b.f17322f1 != 0) {
                i4 = 68;
            }
        } else if (u0.b.f17322f1 == 0) {
            i4 = 68;
        }
        if (i4 != -1) {
            x(f1819j, 2, i4);
        }
    }

    public final int t(int i2, int i3) {
        if (SystemProperties.getBoolean("sys.fyt.video.debug", false)) {
            return 1;
        }
        if (q0.k() == 0) {
            return 0;
        }
        return this.f1827b.g(i2, i3);
    }

    public final int u(int[] iArr) {
        int iX = 0;
        for (int i2 = 0; i2 < iArr.length - 1; i2 += 2) {
            if (iArr[i2] != 2 && iArr[i2] != 16 && iArr[i2] != 17 && iArr[i2] != 19 && iArr[i2] != 20 && (iX = iX + x(f1819j, iArr[i2], iArr[i2 + 1])) < 0) {
                f1820k = false;
                int i3 = f1821l;
                if (i3 >= 5) {
                    break;
                }
                f1821l = i3 + 1;
                o1.l.a().postDelayed(new b(), 500L);
                break;
            }
        }
        return iX;
    }

    public final void v(int i2) {
        if (this.f1830e != i2 || f1822m) {
            this.f1830e = i2;
            if (i2 != 0) {
                a.i.a0(100L);
                x(f1819j, 115, 0);
                f1822m = false;
            }
        }
    }

    public final void w(int i2) {
        if (p() == -1) {
            w(i2);
            return;
        }
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 6 || i2 == 7) {
            if (u0.b.s4 != 1) {
                u(this.f1833h);
                f1822m = true;
            } else {
                u(this.f1834i);
                f1822m = true;
            }
        }
    }

    public final int x(int i2, int i3, int i4) {
        if (SystemProperties.getBoolean("sys.fyt.video.debug", false)) {
            return 1;
        }
        if (q0.k() == 0) {
            return -1;
        }
        return this.f1827b.h(i2, i3, i4);
    }
}
