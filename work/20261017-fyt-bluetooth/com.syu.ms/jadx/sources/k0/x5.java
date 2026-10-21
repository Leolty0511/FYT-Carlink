package k0;

import android.content.pm.PackageManager;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class x5 extends lt {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int[] f12011j = new int[2];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int[] f12012k = new int[2];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int[] f12013l = new int[2];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int[] f12014m = new int[2];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f12015n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f12016o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f12017p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f12018q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f12019r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f12020s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f12021t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f12022u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f12023v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f12024w;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12027d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f12025b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte f12026c = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12028e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f12029f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f12030g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f12031h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f12032i = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.w();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.z0();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -110, 3, !DateFormat.is24HourFormat(App.c()) ? 1 : 0, (byte) time.hour, (byte) time.minute);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        qt.z(this.f12032i);
        if (nt.a()) {
            y0.g.f18094d.a(this.f12031h, 1);
            y0.g.f18095e.a(this.f12031h, 1);
            w0.e.f17815a.a(this.f12030g, 1);
            w0.e.f17819e.a(this.f12030g, 1);
            u0.c.f17374a.a(this.f12030g, 1);
            u0.c.f17393t.a(this.f12030g, 1);
            u0.c.f17392s.a(this.f12030g, 1);
            l0.b0.b(this.f12030g);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f12028e = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f12029f;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f12028e;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f12027d = i4;
                        break;
                    }
                    i4++;
                }
                if ((b4 & 255) != 0) {
                    if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i4 <= iArr.length) {
                        l0.b0.l0(iArr[this.f12027d][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 2) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            } else {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            }
            qt.y0(3, (b5 >> 5) & 1);
            qt.y0(4, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        if (b2 == 3) {
            if ((bArr[i2 + 2] & 128) != 0) {
                o1.u.v();
                return;
            }
            return;
        }
        if (b2 != 4) {
            return;
        }
        int i6 = i2 + 2;
        f12015n = bArr[i6] & 255;
        int i7 = i2 + 3;
        f12016o = bArr[i7] & 255;
        int i8 = i2 + 9;
        f12017p = bArr[i8] & 255;
        int i9 = i2 + 10;
        f12018q = bArr[i9] & 255;
        int i10 = i2 + 8;
        f12019r = bArr[i10] & 255;
        int i11 = i2 + 7;
        f12020s = bArr[i11] & 255;
        int i12 = i2 + 6;
        f12021t = bArr[i12] & 255;
        int i13 = i2 + 13;
        f12022u = bArr[i13] & 255;
        int i14 = i2 + 12;
        f12023v = bArr[i14] & 255;
        int i15 = i2 + 11;
        f12024w = bArr[i15] & 255;
        qt.y0(7, bArr[i7]);
        qt.y0(8, bArr[i6]);
        qt.y0(9, bArr[i2 + 4]);
        int[] iArr2 = {(qt.c(bArr[i10]) * 60) + qt.c(bArr[i8]), qt.c(bArr[i9])};
        f12011j = iArr2;
        qt.C0(10, iArr2, f12013l);
        f12013l = f12011j;
        int[] iArr3 = {(qt.c(bArr[i12]) * 100) + qt.c(bArr[i11]), (qt.c(bArr[i14]) * 100) + qt.c(bArr[i13])};
        f12012k = iArr3;
        qt.C0(11, iArr3, f12014m);
        f12014m = f12012k;
        qt.y0(12, qt.c(bArr[i15]));
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            y0.g.f18094d.d(this.f12031h);
            y0.g.f18095e.d(this.f12031h);
            w0.e.f17815a.d(this.f12030g);
            w0.e.f17819e.d(this.f12030g);
            u0.c.f17374a.d(this.f12030g);
            u0.c.f17393t.d(this.f12030g);
            u0.c.f17392s.d(this.f12030g);
            l0.b0.p0(this.f12030g);
        }
        qt.q0(this.f12032i);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 13) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1 && iArr != null && iArr.length > 0) {
            if (iArr[0] >= 0 && iArr[0] <= 9) {
                z.k.s(227, -112, 2, (byte) iArr[0], 1);
                z.k.s(227, -112, 2, (byte) iArr[0], 0);
                return;
            }
            if (iArr[0] == 10) {
                byte[] bArr = {3, 4, 5, 9};
                byte b2 = this.f12025b;
                if (b2 < 4) {
                    this.f12025b = (byte) (b2 + 1);
                } else {
                    this.f12025b = (byte) 0;
                }
                z.k.s(227, PackageManager.INSTALL_FAILED_USER_RESTRICTED, 2, 1, bArr[this.f12025b]);
                return;
            }
            if (iArr[0] == 11) {
                byte b3 = this.f12026c;
                if (b3 < 8) {
                    this.f12026c = (byte) (b3 + 1);
                } else {
                    this.f12026c = (byte) 6;
                }
                z.k.s(227, PackageManager.INSTALL_FAILED_USER_RESTRICTED, 2, 1, this.f12026c);
            }
        }
    }
}
