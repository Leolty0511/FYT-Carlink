package k0;

import android.media.MediaPlayer;
import android.net.ProxyProperties;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class aa extends lt {
    public static int A;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3230h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3231i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f3224b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o1.g0 f3225c = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3226d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3227e = 10;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3228f = 10;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3229g = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3232j = 255;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f3233k = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, -1}, new int[]{4, 12}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 58}, new int[]{11, 2}, new int[]{12, -1}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f3234l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f3235m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f3236n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f3237o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f3238p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f3239q = new g();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f3240r = new h();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f3241s = new i();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f3242t = new j();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f3243u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f3244v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public String f3245w = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f3246x = new a();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f3247y = -1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f3248z = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 12000;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (aa.this.f3247y == millis && aa.this.f3248z == i2) {
                return;
            }
            aa.this.f3247y = millis;
            aa.this.f3248z = i2;
            z.k.s(227, 3, -75, time.hour, time.minute, time.second);
            z.k.s(227, 2, -14, 7, 1);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17320f == 1) {
                aa.this.f3228f = 10;
                o1.l.a().removeCallbacks(aa.this.f3240r);
                o1.l.a().postDelayed(aa.this.f3240r, 300L);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            aa.this.m3((byte) -28, u0.b.i3);
            if (u0.b.D == 9) {
                aa.this.m3((byte) -29, ProxyProperties.LOCAL_EXCL_LIST);
                aa.this.m3((byte) -28, ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 9) {
                u0.b.j3 = ProxyProperties.LOCAL_EXCL_LIST;
            }
            aa.this.m3((byte) -30, u0.b.j3);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 9) {
                u0.b.k3 = ProxyProperties.LOCAL_EXCL_LIST;
            }
            aa.this.m3((byte) -29, u0.b.k3);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            aa.this.m3((byte) -27, u0.b.l3);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17320f != 0) {
                z.k.s(227, 2, 45, 2, 11);
            }
            int i2 = u0.b.D;
            if (i2 == 8 || i2 == 9 || i2 == 10) {
                if (i2 == 9) {
                    u0.b.j3 = ProxyProperties.LOCAL_EXCL_LIST;
                    u0.b.k3 = ProxyProperties.LOCAL_EXCL_LIST;
                }
                String str = u0.b.i3;
                if (str != null) {
                    aa.this.m3((byte) -30, str);
                }
                String str2 = u0.b.j3;
                if (str2 != null) {
                    aa.this.m3((byte) -28, str2);
                }
                String str3 = u0.b.k3;
                if (str3 != null) {
                    aa.this.m3((byte) -29, str3);
                }
                String str4 = u0.b.l3;
                if (str4 != null) {
                    aa.this.m3((byte) -27, str4);
                }
            }
            o1.k.a().removeCallbacks(this);
            aa aaVar = aa.this;
            int i3 = aaVar.f3228f;
            aaVar.f3228f = i3 - 1;
            if (i3 > 0) {
                o1.k.a().postDelayed(this, 1000L);
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            int i3 = (i2 == 8 || i2 == 9 || i2 == 10) ? 1 : 0;
            int i4 = h0.c.E != 0 ? 1 : 0;
            int i5 = y0.f.f18055i;
            if (y0.f.C0 == 0) {
                i5 = 1;
            }
            z.k.s(227, 10, -26, (byte) ((i3 << 7) | (i4 << 6) | (i5 << 5) | (((u0.b.n3 != 3 || u0.b.o3 == 1) ? 0 : 1) << 4) | ((u0.b.o3 == 1 ? 1 : 0) << 3) | (((u0.b.n3 != 0 || u0.b.o3 == 1) ? 0 : 1) << 2) | 0), 0, 0, 0, y0.f.f18055i == 1 ? (byte) 0 : (byte) y0.f.C0, 0, 0, 0, 0, 0);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:10:0x0014  */
        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            int i2 = h0.c.E;
            int i3 = 4;
            boolean z3 = true;
            boolean z4 = i2 == 5 || i2 == 3 || i2 == 4;
            switch (i2) {
                case 0:
                case 1:
                case 2:
                case 6:
                    if (z4 == aa.this.f3244v) {
                        i3 = 0;
                    }
                    break;
                case 3:
                    i3 = 2;
                    break;
                case 4:
                    i3 = 1;
                    break;
                case 5:
                    i3 = 3;
                    break;
                default:
                    i3 = 0;
                    break;
            }
            if (aa.this.f3243u != i3) {
                aa.this.f3243u = i3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (aa.this.f3245w.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                aa.this.f3245w = h0.c.f2437h;
                if (aa.this.f3245w == null) {
                    aa.this.f3245w = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                if (aa.this.f3243u != 0) {
                    aa aaVar = aa.this;
                    aaVar.o3(aaVar.f3243u, aa.this.f3245w);
                }
                if (aa.this.f3244v != z4) {
                    aa.this.f3244v = z4;
                    aa.this.f3243u = 0;
                }
            }
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
        mtVar.f8316k = 1;
        this.f3225c.a();
        z.k.s(227, 2, 45, 2, 11);
        z.k.s(227, 2, -14, 7, 1);
        if (nt.f8637c == 0) {
            z.k.s(227, 2, 36, 31, 2);
        } else {
            z.k.s(227, 2, 36, 29, 2);
        }
        n3(this.f3225c.b(1, 0));
        qt.z(this.f3246x);
        u0.c.f17388o.a(this.f3236n, 1);
        u0.c.f17389p.a(this.f3237o, 1);
        u0.c.f17390q.a(this.f3238p, 1);
        h0.d.f2464c.a(this.f3242t, 1);
        o1.y yVar = h0.d.f2462a;
        yVar.a(this.f3242t, 1);
        yVar.a(this.f3241s, 1);
        u0.c.f17394u.a(this.f3241s, 1);
        u0.c.f17395v.a(this.f3241s, 1);
        u0.c.f17376c.a(this.f3241s, 1);
        o1.y yVar2 = u0.c.f17374a;
        yVar2.a(this.f3241s, 1);
        u0.c.f17379f.a(this.f3234l, 1);
        u0.c.f17396w.a(this.f3239q, 1);
        y0.g.f18094d.a(this.f3241s, 1);
        u0.c.f17386m.a(this.f3240r, 1);
        yVar2.a(this.f3241s, 1);
        y0.g.f18095e.a(this.f3241s, 1);
        if (nt.a()) {
            w0.e.f17815a.a(l0.h0.f13060f, 1);
            w0.e.f17819e.a(l0.h0.f13060f, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -24) {
            qt.y0(Process.MEDIA_UID, (bArr[i2 + 3] & 255) - 1);
            if (nt.f8633a == 65833) {
                return;
            }
            int i4 = bArr[i2 + 4] & 1;
            if (u0.b.f17347o != 0) {
                return;
            }
            if (i4 != 0) {
                if (o1.u.T(a.b.O)) {
                    return;
                }
                qt.t();
                return;
            } else {
                if (o1.u.T(a.b.O)) {
                    qt.f();
                    return;
                }
                return;
            }
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(l0.h0.p(bArr[i2 + 2] & 255));
                u0.d.S2(l0.h0.p(bArr[i2 + 3] & 255));
                u0.d.T2(l0.h0.p(bArr[i2 + 4] & 255));
                u0.d.U2(l0.h0.p(bArr[i2 + 5] & 255));
                u0.d.D2(l0.h0.p(bArr[i2 + 6] & 255));
                u0.d.G2(l0.h0.p(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 == 17) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 4];
                byte b4 = bArr[i2 + 5];
                this.f3231i = b3 & 255;
                int i5 = 0;
                while (true) {
                    iArr = this.f3233k;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f3231i;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f3230h = i5;
                        break;
                    }
                    i5++;
                }
                if ((b4 & 255) == 0) {
                    int i7 = this.f3230h;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f3230h = 255;
                } else if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                }
                qt.l(bArr[i2 + 9], bArr[i2 + 8], true, 5000);
                return;
            }
            return;
        }
        if (b2 == 18) {
            byte b5 = bArr[i2 + 4];
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
        if (b2 != 22) {
            if (b2 != 23) {
                return;
            }
            qt.y0(110, ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
            qt.y0(111, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
            qt.y0(112, ((bArr[i2 + 7] & 255) << 16) | ((bArr[i2 + 8] & 255) << 8) | (bArr[i2 + 9] & 255));
            qt.y0(113, ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
            qt.y0(114, ((bArr[i2 + 12] & 255) << 16) | ((bArr[i2 + 13] & 255) << 8) | (bArr[i2 + 14] & 255));
            qt.y0(115, (bArr[i2 + 16] & 255) | ((bArr[i2 + 15] & 255) << 8));
            return;
        }
        qt.y0(98, bArr[i2 + 2] & 255);
        qt.y0(99, ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
        qt.y0(100, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
        qt.y0(101, ((bArr[i2 + 7] & 255) << 8) | (bArr[i2 + 8] & 255));
        qt.y0(102, ((bArr[i2 + 9] & 255) << 16) | ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
        qt.y0(103, ((bArr[i2 + 12] & 255) << 8) | (bArr[i2 + 13] & 255));
        byte b6 = bArr[i2 + 14];
        qt.y0(104, b6 & 3 & 255);
        qt.y0(105, (b6 >> 2) & 3 & 255);
        qt.y0(106, (b6 >> 4) & 3 & 255);
        qt.y0(107, (b6 >> 6) & 1 & 255);
        qt.y0(108, (b6 >> 7) & 1 & 255);
        int i8 = bArr[i2 + 15] & 255;
        if (i8 < 0) {
            i8 = 0;
        } else if (i8 > 10) {
            i8 = 10;
        }
        qt.y0(109, this.f3224b[i8]);
    }

    @Override // k0.lt
    public void W2() {
        this.f3225c.j();
        qt.q0(this.f3246x);
        u0.c.f17388o.d(this.f3236n);
        u0.c.f17389p.d(this.f3237o);
        u0.c.f17390q.d(this.f3238p);
        h0.d.f2464c.d(this.f3242t);
        o1.y yVar = h0.d.f2462a;
        yVar.d(this.f3242t);
        yVar.d(this.f3241s);
        u0.c.f17394u.d(this.f3241s);
        u0.c.f17395v.d(this.f3241s);
        u0.c.f17376c.d(this.f3241s);
        o1.y yVar2 = u0.c.f17374a;
        yVar2.d(this.f3241s);
        u0.c.f17379f.d(this.f3234l);
        u0.c.f17396w.d(this.f3239q);
        y0.g.f18094d.d(this.f3241s);
        u0.c.f17386m.d(this.f3240r);
        yVar2.d(this.f3241s);
        y0.g.f18095e.d(this.f3241s);
        qt.q0(l0.h0.f13060f);
        w0.e.f17815a.d(l0.h0.f13060f);
        w0.e.f17819e.d(l0.h0.f13060f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 118) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 101) {
            if (iArr == null || iArr.length <= 0 || iArr[0] != 3) {
                return;
            }
            p3(6, 255);
            return;
        }
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            iArr[0] = iArr[0] + 1;
            if (iArr[0] < 1) {
                iArr[0] = 1;
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            n3(iArr[0]);
        }
    }

    public final void m3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void n3(int i2) {
        A = i2;
        z.k.s(227, 2, -14, (byte) i2, -1);
        int iB = this.f3225c.b(1, 0);
        int i3 = A;
        if (iB != i3) {
            this.f3225c.g(1, i3);
        }
    }

    public final void o3(int i2, String str) {
        if (str == null) {
            return;
        }
        int length = str.length() <= 31 ? str.length() : 31;
        byte[] bArr = new byte[32];
        char[] charArray = str.toCharArray();
        for (int i3 = 0; i3 < length; i3++) {
            bArr[i3] = (byte) charArray[i3];
        }
        for (int i4 = length; i4 < 32; i4++) {
            bArr[i4] = 32;
        }
        int[] iArr = new int[35];
        iArr[0] = -29;
        iArr[1] = 32;
        iArr[2] = -25;
        iArr[3] = (byte) i2;
        for (int i5 = 0; i5 < length; i5++) {
            iArr[4 + i5] = bArr[i5];
        }
        for (int i6 = 4 + length; i6 < 35; i6++) {
            iArr[i6] = 0;
        }
        z.k.s(iArr);
    }

    public final void p3(int i2, int i3) {
        z.k.s(227, 2, -14, (byte) i2, (byte) i3);
    }
}
