package k0;

import android.app.ActivityManager;
import android.content.Intent;
import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class rn extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9986c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9987d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{18, 29}, new int[]{19, 12}, new int[]{20, 25}, new int[]{21, 6}, new int[]{22, 29}, new int[]{23, -1}, new int[]{24, -1}, new int[]{25, -1}, new int[]{26, -1}, new int[]{27, 0}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9988e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9989f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9990g = new j();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9991h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f9992i = 0.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f9993j = 255;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f9994k = 255;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f9995l = new k();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f9996m = new l();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f9997n = new m();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f9998o = new n();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f9999p = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f10000q = new o();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f10001r = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f10002s = new p();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f10003t = new q();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f10004u = new a();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f10005v = new b();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f10006w = new c();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f10007x = new d();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f10008y = -1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f10009z = new e();
    public Runnable A = new f();
    public int B = 0;
    public Runnable C = new g();
    public Runnable D = new h();
    public int E = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 9 || i2 == 3 || i2 == 4 || i2 == 8 || i2 == 10) {
                rn.this.j3((byte) 112, u0.b.i3);
            } else {
                u0.b.i3 = ProxyProperties.LOCAL_EXCL_LIST;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 9) {
                rn.this.j3((byte) 113, ProxyProperties.LOCAL_EXCL_LIST);
            } else if (i2 == 3 || i2 == 4 || i2 == 8 || i2 == 10) {
                rn.this.j3((byte) 113, u0.b.j3);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 1) {
                String str = w0.d.H;
                if (str == null) {
                    rn.this.j3((byte) 112, "----");
                } else {
                    rn.this.j3((byte) 112, str);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            byte b2 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time.month + 1);
            byte b4 = (byte) time.monthDay;
            byte b5 = (byte) time.hour;
            byte b6 = (byte) time.minute;
            byte b7 = (byte) time.second;
            int i2 = time.weekDay;
            if (((byte) i2) == 0) {
                z.k.s(227, -57, 7, b2, b3, b4, ((zIs24HourFormat ? 1 : 0) << 7) | b5, b6, b7, 7);
            } else {
                z.k.s(227, -57, 7, b2, b3, b4, ((zIs24HourFormat ? 1 : 0) << 7) | b5, b6, b7, (byte) i2);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rn rnVar = rn.this;
            int i2 = rnVar.f10008y;
            int i3 = u0.b.D;
            if (i2 != i3) {
                rnVar.f10008y = i3;
                if (i3 == 13) {
                    z.k.s(227, -123, 1, 0);
                } else {
                    z.k.s(227, -123, 1, 1);
                }
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rn rnVar = rn.this;
            int i2 = rnVar.f9988e;
            if (i2 > 0) {
                rnVar.f9988e = i2 - 1;
            }
            if (rnVar.f9988e == 0) {
                qt.y0(148, 0);
            }
            l0.c0.m();
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(rn.this.D);
            rn.this.B = 5;
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rn rnVar = rn.this;
            int i2 = rnVar.B - 1;
            rnVar.B = i2;
            if (i2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(rnVar.D);
                rn.this.B = 5;
            }
        }
    }

    public class i implements o1.p {
        public i() {
        }

        @Override // o1.p
        public void d(Object obj) {
            rn rnVar = rn.this;
            int i2 = rnVar.f9991h;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                rnVar.f9991h = i3;
                if (u0.b.D == 11) {
                    int i4 = y0.f.Q0 == 1 ? 1 : 0;
                    z.k.s(227, 208, 1, y0.f.T0 == 1 ? i4 | 2 : i4 & i.a.Theme_dialogTitleDecorLayout);
                }
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rn rnVar = rn.this;
            int i2 = rnVar.f9989f;
            int i3 = y0.f.Q0;
            if (i2 != i3) {
                rnVar.f9989f = i3;
                if (u0.b.D == 11) {
                    int i4 = y0.f.Q0 == 1 ? 1 : 0;
                    z.k.s(227, 208, 1, y0.f.T0 == 1 ? i4 | 2 : i4 & i.a.Theme_dialogTitleDecorLayout);
                }
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rn.this.f9992i = u0.b.f17359s0;
            if (rn.this.f9992i > 360.0f) {
                rn.c3(rn.this, 360.0f);
            }
            if (rn.this.f9992i < 0.0f) {
                rn.c3(rn.this, 360.0f);
                rn rnVar = rn.this;
                rnVar.f9992i = 360.0f - Math.abs(rnVar.f9992i);
            }
            if ((rn.this.f9992i <= 22.5d && rn.this.f9992i >= 0.0f) || (rn.this.f9992i >= 337.5d && rn.this.f9992i <= 360.0f)) {
                rn.this.f9994k = 0;
            } else if (rn.this.f9992i > 22.5d && rn.this.f9992i < 67.5d) {
                rn.this.f9994k = 8;
            } else if (rn.this.f9992i >= 67.5d && rn.this.f9992i <= 112.5d) {
                rn.this.f9994k = 16;
            } else if (rn.this.f9992i > 112.5d && rn.this.f9992i < 157.5d) {
                rn.this.f9994k = 24;
            } else if (rn.this.f9992i >= 157.5d && rn.this.f9992i <= 202.5d) {
                rn.this.f9994k = 32;
            } else if (rn.this.f9992i > 202.5d && rn.this.f9992i < 247.5d) {
                rn.this.f9994k = 40;
            } else if (rn.this.f9992i >= 247.5d && rn.this.f9992i <= 292.5d) {
                rn.this.f9994k = 48;
            } else if (rn.this.f9992i <= 292.5d || rn.this.f9992i >= 337.5d) {
                rn.this.f9994k = 64;
            } else {
                rn.this.f9994k = 56;
            }
            if (rn.this.f9994k != rn.this.f9993j) {
                z.k.s(227, -55, 2, rn.this.f9994k, 0);
                qt.y0(129, u0.b.f17359s0);
                rn rnVar2 = rn.this;
                rnVar2.f9993j = rnVar2.f9994k;
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(126, u0.b.f17361t0);
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(127, (int) (u0.b.b2 * 10000.0d));
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(128, (int) (u0.b.c2 * 10000.0d));
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (!rn.this.f9999p.equals(h0.c.f2437h)) {
                rn rnVar = rn.this;
                String str = h0.c.f2437h;
                rnVar.f9999p = str;
                if (str == null) {
                    rnVar.f9999p = ProxyProperties.LOCAL_EXCL_LIST;
                } else {
                    z2 = str.isEmpty() ? false : true;
                }
            }
            if (u0.b.D == 2) {
                if (z2) {
                    rn rnVar2 = rn.this;
                    rnVar2.j3((byte) 112, rnVar2.f9999p);
                    return;
                }
                String str2 = rn.this.f9999p;
                if (str2 == null || str2.isEmpty()) {
                    rn.this.j3((byte) 112, " ");
                }
            }
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (!rn.this.f10001r.equals(h0.c.f2441j)) {
                rn rnVar = rn.this;
                String str = h0.c.f2441j;
                rnVar.f10001r = str;
                if (str == null) {
                    rnVar.f10001r = ProxyProperties.LOCAL_EXCL_LIST;
                } else {
                    z2 = str.isEmpty() ? false : true;
                }
            }
            if (u0.b.D == 2) {
                if (z2) {
                    rn.this.j3((byte) 113, h0.c.f2441j);
                    return;
                }
                String str2 = h0.c.f2441j;
                if (str2 == null || str2.isEmpty()) {
                    rn.this.j3((byte) 113, ProxyProperties.LOCAL_EXCL_LIST);
                }
            }
        }
    }

    public class q implements Runnable {
        public q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = h0.c.E;
            if (i3 == 3) {
                i2 = 3;
            } else if (i3 != 4) {
                i2 = i3 != 5 ? 0 : 2;
            } else {
                i2 = 1;
            }
            int i4 = h0.c.P / 1000;
            z.k.s(227, 197, 3, i2, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i4 % 60);
        }
    }

    public static /* synthetic */ float c3(rn rnVar, float f2) {
        float f3 = rnVar.f9992i % f2;
        rnVar.f9992i = f3;
        return f3;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        int i2 = nt.f8633a;
        if (i2 == 721349 || i2 == 5702085) {
            y0.f.C0 = 30;
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.C, 1);
        qt.z(this.A);
        w0.e.f17815a.a(this.A, 1);
        w0.e.f17819e.a(this.A, 1);
        o1.y yVar = u0.c.f17374a;
        yVar.a(this.A, 1);
        yVar.a(this.f10009z, 1);
        qt.z(this.f10007x);
        u0.c.f17388o.a(this.f10004u, 1);
        u0.c.f17389p.a(this.f10005v, 1);
        yVar.a(this.f10005v, 1);
        w0.e.f17817c.a(this.f10006w, 1);
        h0.d.f2462a.a(this.f10003t, 1);
        h0.d.f2473l.a(this.f10002s, 1);
        h0.d.f2464c.a(this.f10000q, 1);
        h0.d.f2465d.a(this.f10003t, 1);
        o1.h.f16865a.a(this.f9995l, 1);
        o1.h.f16867c.a(this.f9996m, 1);
        o1.h.f16868d.a(this.f9997n, 1);
        o1.h.f16869e.a(this.f9998o, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        int i2 = nt.f8633a;
        if (i2 != 721349 && i2 != 5702085) {
            mtVar.f8307b = 0;
            return;
        }
        mtVar.f8307b = 1;
        if (a.f.v() != null) {
            a.f.v().a(true);
        }
        y0.g.f18110t.a(this.f9990g, 1);
        y0.g.f18101k.a(new i());
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 64) {
            int i4 = i2 + 2;
            if (bArr[i4] == 0) {
                qt.y0(113, bArr[i2 + 3] & 255);
                return;
            } else {
                if (bArr[i4] == 1) {
                    qt.y0(114, bArr[i2 + 3] & 255);
                    return;
                }
                return;
            }
        }
        if (b2 == 77) {
            qt.y0(111, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(112, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
            return;
        }
        if (b2 == 93) {
            int i5 = i2 + 2;
            qt.y0(110, (bArr[i5] >> 0) & 1);
            qt.y0(130, (bArr[i5] >> 1) & 1);
            return;
        }
        if (b2 == 95) {
            int i6 = i2 + 2;
            qt.y0(98, (bArr[i6] >> 7) & 1);
            qt.y0(99, (bArr[i6] >> 6) & 1);
            qt.y0(100, (bArr[i6] >> 5) & 1);
            qt.y0(101, (bArr[i6] >> 4) & 1);
            qt.y0(102, (bArr[i6] >> 3) & 1);
            qt.y0(103, (bArr[i6] >> 2) & 1);
            qt.y0(104, (bArr[i6] >> 1) & 1);
            qt.y0(105, (bArr[i6] >> 0) & 1);
            qt.y0(106, bArr[i2 + 3] & 255);
            qt.y0(107, bArr[i2 + 4] & 255);
            qt.y0(108, bArr[i2 + 5] & 255);
            qt.y0(109, bArr[i2 + 6] & 255);
            return;
        }
        switch (b2) {
            case 23:
                int i7 = i2 + 2;
                qt.y0(116, (bArr[i7] >> 0) & 1);
                qt.y0(117, bArr[i2 + 3] & 255);
                qt.y0(118, bArr[i2 + 4] & 255);
                qt.y0(119, bArr[i2 + 5] & 255);
                qt.y0(120, bArr[i2 + 6] & 255);
                qt.y0(121, bArr[i2 + 7] & 255);
                qt.y0(122, bArr[i2 + 8] & 255);
                int i8 = i2 + 9;
                qt.y0(123, 255 & bArr[i8]);
                qt.y0(124, (bArr[i8] >> 6) & 1);
                qt.y0(125, (bArr[i8] >> 0) & 15);
                if ((bArr[i8] & 128) != 0 && (bArr[i7] & 1) == 0) {
                    z.k.s(227, 132, 2, 1, 1);
                    break;
                }
                break;
            case 24:
                qt.y0(131, bArr[i2 + 2] & 255);
                break;
            case 25:
                int i9 = i2 + 2;
                qt.y0(132, bArr[i9] & 255);
                if (bArr[i9] == 1) {
                    k3();
                }
                break;
            case 26:
                qt.x0(133, new String(bArr, i2 + 2, 16, Charset.forName("ascii")));
                break;
            case 27:
                int i10 = i2 + 2;
                qt.y0(134, (bArr[i10] >> 7) & 1);
                qt.y0(135, (bArr[i10] >> 6) & 1);
                qt.y0(136, (bArr[i10] >> 5) & 1);
                qt.y0(137, (bArr[i10] >> 4) & 1);
                qt.y0(138, (bArr[i10] >> 3) & 1);
                qt.y0(139, (bArr[i10] >> 2) & 1);
                int i11 = i2 + 3;
                qt.y0(140, (bArr[i11] >> 7) & 1);
                qt.y0(141, (bArr[i11] >> 6) & 1);
                qt.y0(142, (bArr[i11] >> 5) & 1);
                qt.y0(143, (bArr[i11] >> 4) & 1);
                qt.y0(144, (bArr[i11] >> 3) & 1);
                qt.y0(145, (bArr[i11] >> 2) & 1);
                break;
            case 28:
                qt.x0(146, new String(bArr, i2 + 2, 24, Charset.forName("ascii")));
                break;
            case 29:
                qt.x0(147, new String(bArr, i2 + 2, 24, Charset.forName("ascii")));
                break;
            case 30:
                this.f9988e = 6;
                qt.y0(148, bArr[i2 + 2] & 255);
                break;
            default:
                switch (b2) {
                    case 32:
                        byte b3 = bArr[i2 + 2];
                        byte b4 = bArr[i2 + 3];
                        this.f9986c = b3 & 255;
                        int i12 = 0;
                        while (true) {
                            iArr = this.f9987d;
                            if (i12 < iArr.length) {
                                int i13 = this.f9986c;
                                if (i13 != iArr[i12][0]) {
                                    i12++;
                                } else if (i13 != 0) {
                                    this.f9985b = i12;
                                }
                            }
                        }
                        switch (this.f9986c) {
                            case 23:
                                for (int i14 = 0; i14 < (b4 & 255); i14++) {
                                    l0.b0.l0(7, 0);
                                }
                                l0.b0.l0(7, 1);
                                break;
                            case 24:
                                for (int i15 = 0; i15 < (b4 & 255); i15++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                                break;
                            case 25:
                                for (int i16 = 0; i16 < (b4 & 255); i16++) {
                                    l0.b0.l0(31, 0);
                                }
                                l0.b0.l0(31, 1);
                                break;
                            case 26:
                                for (int i17 = 0; i17 < (b4 & 255); i17++) {
                                    l0.b0.l0(30, 0);
                                }
                                l0.b0.l0(30, 1);
                                break;
                            default:
                                int i18 = b4 & 255;
                                if (i18 == 1) {
                                    if (i12 < iArr.length) {
                                        l0.b0.l0(iArr[i12][1], 0);
                                    }
                                } else if (i18 == 0) {
                                    int i19 = this.f9985b;
                                    if (i19 < iArr.length && i19 != 255) {
                                        l0.b0.l0(iArr[i19][1], 1);
                                    }
                                    this.f9985b = 255;
                                }
                                break;
                        }
                        break;
                    case 33:
                        int i20 = i2 + 2;
                        qt.y0(10, (bArr[i20] >> 7) & 1);
                        qt.y0(11, (bArr[i20] >> 6) & 1);
                        qt.y0(12, (bArr[i20] >> 5) & 1);
                        qt.y0(13, (bArr[i20] >> 3) & 1);
                        qt.y0(62, (bArr[i20] >> 2) & 1);
                        int i21 = i2 + 3;
                        qt.y0(18, (bArr[i21] >> 7) & 1);
                        qt.y0(19, (bArr[i21] >> 6) & 1);
                        qt.y0(20, (bArr[i21] >> 5) & 1);
                        qt.y0(21, (bArr[i21] >> 0) & 15);
                        int i22 = i2 + 6;
                        qt.y0(37, (bArr[i22] >> 0) & 1);
                        int i23 = i2 + 4;
                        int i24 = bArr[i23] & 255;
                        if (i24 == 0) {
                            qt.y0(27, -2);
                        } else if (i24 == 255) {
                            qt.y0(27, -3);
                        } else {
                            qt.y0(27, bArr[i23] & 255);
                        }
                        int i25 = i2 + 5;
                        int i26 = bArr[i25] & 255;
                        if (i26 == 0) {
                            qt.y0(28, -2);
                        } else if (i26 == 255) {
                            qt.y0(28, -3);
                        } else {
                            qt.y0(28, bArr[i25] & 255);
                        }
                        qt.y0(53, (bArr[i22] >> 3) & 1);
                        qt.y0(65, (bArr[i22] >> 7) & 1);
                        qt.y0(16, (bArr[i22] >> 6) & 1);
                        int i27 = i2 + 7;
                        qt.y0(29, (bArr[i27] >> 4) & 7);
                        qt.y0(30, (bArr[i27] >> 0) & 7);
                        int i28 = i2 + 9;
                        qt.y0(66, (bArr[i28] >> 7) & 1);
                        qt.y0(31, (bArr[i28] >> 4) & 7);
                        qt.y0(32, (bArr[i28] >> 0) & 7);
                        break;
                    case 34:
                        u0.d.R2(l0.c0.f1(bArr[i2 + 2] & 255));
                        u0.d.S2(l0.c0.f1(bArr[i2 + 3] & 255));
                        u0.d.T2(l0.c0.f1(bArr[i2 + 4] & 255));
                        u0.d.U2(l0.c0.f1(bArr[i2 + 5] & 255));
                        break;
                    case 35:
                        int i29 = i2 + 2;
                        int i30 = bArr[i29] & 255;
                        int i31 = i2 + 3;
                        int i32 = bArr[i31] & 255;
                        int i33 = i2 + 4;
                        int i34 = bArr[i33] & 255;
                        int i35 = i2 + 5;
                        int i36 = bArr[i35] & 255;
                        if (i30 == 0 && i32 == 0 && i34 == 0 && i36 == 0) {
                            u0.d.C2(0);
                        } else if ((l0.c0.f13013g != i30 || l0.c0.f13014h != i32 || l0.c0.f13015i != i34 || l0.c0.f13016j != i36) && u0.b.f17347o == 0) {
                            u0.d.C2(1);
                            l0.c0.f13017k = 4;
                            l0.b0.b(l0.c0.f13018l);
                        }
                        l0.c0.f13013g = i30;
                        l0.c0.f13014h = i32;
                        l0.c0.f13015i = i34;
                        l0.c0.f13016j = i36;
                        u0.d.D2(l0.c0.f1(bArr[i29] & 255));
                        u0.d.E2(l0.c0.f1(bArr[i31] & 255));
                        u0.d.F2(l0.c0.f1(bArr[i33] & 255));
                        u0.d.G2(l0.c0.f1(bArr[i35] & 255));
                        break;
                    case 36:
                        byte b5 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(1, (b5 >> 7) & 1);
                            qt.y0(2, (b5 >> 6) & 1);
                        } else {
                            qt.y0(1, (b5 >> 6) & 1);
                            qt.y0(2, (b5 >> 7) & 1);
                        }
                        qt.y0(4, (b5 >> 5) & 1);
                        qt.y0(3, (b5 >> 4) & 1);
                        qt.y0(5, (b5 >> 3) & 1);
                        qt.y0(0, (b5 >> 2) & 1);
                        break;
                    default:
                        switch (b2) {
                            case 39:
                                int i37 = bArr[i2 + 2] & 255;
                                if (i37 == 0) {
                                    u0.d.A3(0);
                                } else {
                                    u0.d.B3(bArr[i2 + 3] == 1 ? (268435456 | ((i37 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR)) & (-1) : (i37 * 5) + 605);
                                }
                                break;
                            case 40:
                                int i38 = bArr[i2 + 2] & 255;
                                int i39 = bArr[i2 + 3] & 255;
                                int i40 = bArr[i2 + 4] & 255;
                                int i41 = bArr[i2 + 5] & 255;
                                qt.y0(1031, i38 | (i39 << 8));
                                qt.y0(1032, (i41 << 8) | i40);
                                break;
                            case 41:
                                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 4600);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.C);
        l0.b0.p0(this.D);
        qt.q0(this.A);
        w0.e.f17815a.d(this.A);
        w0.e.f17819e.d(this.A);
        o1.y yVar = u0.c.f17374a;
        yVar.d(this.A);
        qt.q0(this.f10007x);
        yVar.d(this.f10005v);
        yVar.d(this.f10009z);
        u0.c.f17388o.d(this.f10004u);
        u0.c.f17389p.d(this.f10005v);
        w0.e.f17817c.d(this.f10006w);
        o1.h.f16865a.d(this.f9995l);
        o1.h.f16867c.d(this.f9996m);
        o1.h.f16868d.d(this.f9997n);
        o1.h.f16869e.d(this.f9998o);
        int i2 = nt.f8633a;
        if (i2 == 721349 || i2 == 5702085) {
            if (a.f.v() != null) {
                a.f.v().a(false);
            }
            y0.g.f18110t.d(this.f9990g);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 149) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 130, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 134, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 9) {
            if (T2(iArr, 2)) {
                z.k.s(227, -33, 2, iArr[0], iArr[1]);
            }
        } else {
            if (i2 != 10) {
                if (i2 != 13) {
                    return;
                }
                z.k.s(227, -124, 2, iArr[0], iArr[1]);
                return;
            }
            z.k.s(227, -35, 2, iArr[0], iArr[1]);
            if (iArr[0] == 2) {
                int i3 = this.E + 1;
                this.E = i3;
                qt.y0(115, i3);
                if (this.E > 2) {
                    this.E = 0;
                }
            }
        }
    }

    public String i3() {
        List<ActivityManager.RunningTaskInfo> runningTasks = a.f.d().getRunningTasks(2);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        try {
            return runningTasks.get(0).topActivity.getClassName();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final void j3(byte b2, String str) {
        if (str == null) {
            str = "  ";
        }
        int length = str.length();
        if (length > 30) {
            length = 30;
        }
        int i2 = length * 2;
        int[] iArr = new int[i2 + 4];
        iArr[0] = 227;
        iArr[1] = b2;
        iArr[2] = i2 + 1;
        iArr[3] = 16;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 4] = iCodePointAt & 255;
            iArr[i4 + 5] = (iCodePointAt >> 8) & 255;
        }
        z.k.s(iArr);
    }

    public final void k3() {
        if (i3().equals("com.syu.carinfo.xp.ziyouguang.PAFordCarSyncActi")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.ziyouguang.PAFordCarSyncActi");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }
}
