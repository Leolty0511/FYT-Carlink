package k0;

import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class t0 extends lt implements o1.q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10489b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10492e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10490c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10491d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 12}, new int[]{12, 18}, new int[]{13, 26}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10493f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f10494g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 54}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 9}, new int[]{12, 1}, new int[]{49, 0}, new int[]{50, 6}, new int[]{51, 74}, new int[]{52, 75}, new int[]{53, -1}, new int[]{54, 53}, new int[]{55, 18}, new int[]{56, 40}, new int[]{57, 41}, new int[]{58, 42}, new int[]{59, 43}, new int[]{60, 44}, new int[]{61, 45}, new int[]{62, 29}, new int[]{63, 25}, new int[]{64, 5}, new int[]{65, 16}, new int[]{66, 54}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10495h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f10496i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10497j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10498k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f10499l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f10500m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f10501n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f10502o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f10503p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final byte[] f10504q = new byte[1024];

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f10505r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f10506s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f10507t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f10508u = new a();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f10509v = new b();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f10510w = new c();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f10511x = new d();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f10512y = new e();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f10513z = new f();
    public Runnable A = new g();
    public Runnable B = new h();
    public Runnable C = new i();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.this.c3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 2, 34, 0);
                z.k.s(227, 144, 2, 35, 0);
                z.k.s(227, 144, 2, 38, 0);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.this.i3((byte) 2, u0.b.i3);
            a.i.a0(20L);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.this.i3((byte) 4, u0.b.j3);
            a.i.a0(20L);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.this.i3((byte) 3, u0.b.k3);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.this.j3(h0.c.f2437h);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, -112, 2, 22, 0);
            z.k.s(227, -112, 2, 113, 0);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 200, 4, 0, !DateFormat.is24HourFormat(App.c()) ? 1 : 0, time.hour, time.minute);
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
        mtVar.f8320o = 1;
        if (nt.a()) {
            qt.z(this.f10508u);
            y0.g.f18094d.a(this.f10509v, 1);
            y0.g.f18095e.a(this.f10509v, 1);
            w0.e.f17815a.a(this.f10508u, 1);
            w0.e.f17819e.a(this.f10508u, 1);
            u0.c.f17379f.a(this.f10510w, 1);
            u0.c.f17388o.a(this.f10511x, 1);
            u0.c.f17389p.a(this.f10512y, 1);
            u0.c.f17390q.a(this.f10513z, 1);
            h0.d.f2464c.a(this.A, 1);
        }
        z.k.s(227, 201, 2, 1, 1);
        qt.z(this.C);
        if (nt.f8637c != 1) {
            this.f7886a.f8312g = 0;
        } else {
            this.f7886a.f8312g = 1;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == -46) {
            byte b3 = bArr[i2 + 2];
            int i6 = bArr[i2 + 3] & 255;
            qt.y0(105, (b3 >> 7) & 1);
            qt.y0(106, (b3 >> 0) & 15);
            qt.y0(107, (i6 * 3) >> 1);
        }
        if (b2 == 22) {
            qt.y0(118, (bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280));
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
            byte b4 = bArr[i2 + 2];
            if (b4 == 1) {
                byte b5 = bArr[i2 + 3];
                qt.y0(110, (b5 >> 7) & 1);
                qt.y0(111, (b5 >> 6) & 1);
                qt.y0(112, (b5 >> 5) & 1);
                qt.y0(5, (b5 >> 4) & 1);
                qt.y0(4, (b5 >> 3) & 1);
                qt.y0(3, (b5 >> 2) & 1);
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 1) & 1);
                    qt.y0(2, (b5 >> 0) & 1);
                    return;
                } else {
                    qt.y0(1, (b5 >> 0) & 1);
                    qt.y0(2, (b5 >> 1) & 1);
                    return;
                }
            }
            if (b4 != 2) {
                if (b4 != 3) {
                    return;
                }
                byte b6 = bArr[i2 + 3];
                qt.y0(108, (b6 >> 7) & 1);
                qt.y0(109, (b6 >> 6) & 1);
                return;
            }
            int i7 = i2 + 3;
            int i8 = i2 + 4;
            qt.y0(119, ((bArr[i7] << 8) & 65280) | ((bArr[i8] << 0) & 255));
            qt.y0(1032, ((bArr[i7] << 8) & 65280) | ((bArr[i8] << 0) & 255));
            qt.y0(118, ((bArr[i2 + 5] << 8) & 65280) | ((bArr[i2 + 6] << 0) & 255));
            qt.y0(114, ((bArr[i2 + 7] << 8) & 65280) | ((bArr[i2 + 8] << 0) & 255));
            int i9 = i2 + 9;
            int i10 = i2 + 10;
            qt.y0(121, ((bArr[i9] << 8) & 65280) | ((bArr[i10] << 0) & 255));
            int i11 = ((bArr[i9] << 8) & 65280) | ((bArr[i10] << 0) & 255);
            if ((i11 & 128) != 0) {
                i4 = 1;
                i5 = 1000 - ((65535 - i11) + 1);
            } else {
                i4 = 1;
                i5 = i11 + 1000;
            }
            u0.d.A3(i5);
            int[] iArr3 = new int[i4];
            iArr3[0] = ((bArr[i2 + 11] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280) | ((bArr[i2 + 13] << 0) & 255);
            qt.y0(115, iArr3);
            qt.y0(113, bArr[i2 + 14] & 255);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_AMBIENT);
            return;
        }
        if (b2 == 42) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            this.f10493f = b7 & 255;
            int i12 = 0;
            while (true) {
                iArr = this.f10494g;
                if (i12 >= iArr.length) {
                    break;
                }
                int i13 = this.f10493f;
                if (i13 == iArr[i12][0]) {
                    if (i13 == 0) {
                        break;
                    }
                    this.f10492e = i12;
                    break;
                }
                i12++;
            }
            int i14 = b8 & 255;
            if (i14 == 1) {
                if (i12 < iArr.length) {
                    l0.b0.l0(iArr[i12][1], 0);
                    return;
                }
                return;
            } else {
                if (i14 == 0) {
                    int i15 = this.f10492e;
                    if (i15 < iArr.length && i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                    }
                    this.f10492e = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 112) {
            int i16 = (bArr[i2 + 3] >> 6) & 1;
            if (u0.b.f17347o != 0) {
                return;
            }
            if (i16 != 0) {
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
        if (b2 == 113) {
            int i17 = i2 + 3;
            int i18 = i2 + 2;
            qt.y0(119, ((bArr[i17] << 8) & 65280) | (bArr[i18] & 255));
            qt.y0(1032, (bArr[i18] & 255) | ((bArr[i17] << 8) & 65280));
            return;
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b9 = bArr[i2 + 2];
                    byte b10 = bArr[i2 + 3];
                    this.f10490c = b9 & 255;
                    int i19 = 0;
                    while (true) {
                        iArr2 = this.f10491d;
                        if (i19 < iArr2.length) {
                            int i20 = this.f10490c;
                            if (i20 != iArr2[i19][0]) {
                                i19++;
                            } else if (i20 != 0) {
                                this.f10489b = i19;
                            }
                        }
                    }
                    int i21 = b10 & 255;
                    if (i21 != 1) {
                        if (i21 == 0) {
                            int i22 = this.f10489b;
                            if (i22 < iArr2.length && i22 != 255) {
                                l0.b0.l0(iArr2[i22][1], 1);
                            }
                            this.f10489b = 255;
                        }
                    } else if (i19 < iArr2.length) {
                        l0.b0.l0(iArr2[i19][1], 0);
                    }
                }
                break;
            case 33:
                byte b11 = bArr[i2 + 2];
                int i23 = i2 + 4;
                byte b12 = bArr[i23];
                int i24 = i2 + 5;
                byte b13 = bArr[i24];
                int i25 = i2 + 6;
                byte b14 = bArr[i25];
                int i26 = i2 + 7;
                byte b15 = bArr[i26];
                int i27 = i2 + 8;
                byte b16 = bArr[i27];
                int i28 = i2 + 9;
                byte b17 = bArr[i28];
                int i29 = i2 + 10;
                byte b18 = bArr[i29];
                int i30 = i2 + 11;
                byte b19 = bArr[i30];
                this.f10495h = b11 & 255;
                this.f10496i = b12 & 255;
                this.f10497j = b13 & 255;
                this.f10498k = b15 & 255;
                this.f10499l = b14 & 255;
                this.f10500m = b17 & 255;
                this.f10501n = b16 & 255;
                this.f10502o = b18 & 255;
                this.f10503p = b19 & 255;
                int i31 = b11 & DhcpPacket.DHCP_DOMAIN_NAME;
                qt.y0(98, i31);
                int i32 = (b11 >> 4) & 3;
                qt.y0(99, i32);
                if (i31 == 2 || i31 == 0) {
                    qt.y0(100, 16777215);
                    qt.y0(101, 16777215);
                    qt.y0(102, 16777215);
                    qt.y0(103, 16777215);
                    qt.y0(104, 0);
                } else {
                    qt.y0(100, ((bArr[i23] << 8) & 65280) | (bArr[i24] & 255));
                    qt.y0(101, ((bArr[i25] << 8) & 65280) | (bArr[i26] & 255));
                    qt.y0(102, ((bArr[i27] << 8) & 65280) | (bArr[i28] & 255));
                    if (i32 == 2) {
                        qt.y0(103, bArr[i29] & 255);
                    } else {
                        qt.y0(103, 16777215);
                    }
                    qt.y0(104, bArr[i30] & 255);
                }
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(d3(bArr[i2 + 2] & 255));
                    u0.d.S2(d3(bArr[i2 + 3] & 255));
                    u0.d.T2(d3(bArr[i2 + 4] & 255));
                    u0.d.U2(d3(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i33 = i2 + 2;
                    int i34 = bArr[i33] & 255;
                    int i35 = i2 + 3;
                    int i36 = bArr[i35] & 255;
                    int i37 = i2 + 4;
                    int i38 = bArr[i37] & 255;
                    int i39 = i2 + 5;
                    int i40 = bArr[i39] & 255;
                    if (i34 == 0 && i36 == 0 && i38 == 0 && i40 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i34 || l0.c0.f13014h != i36 || l0.c0.f13015i != i38 || l0.c0.f13016j != i40) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i34;
                    l0.c0.f13014h = i36;
                    l0.c0.f13015i = i38;
                    l0.c0.f13016j = i40;
                    u0.d.D2(d3(bArr[i33] & 255));
                    u0.d.E2(d3(bArr[i35] & 255));
                    u0.d.F2(d3(bArr[i37] & 255));
                    u0.d.G2(d3(bArr[i39] & 255));
                }
                break;
            case 36:
                byte b20 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b20 >> 7) & 1);
                    qt.y0(2, (b20 >> 6) & 1);
                } else {
                    qt.y0(2, (b20 >> 7) & 1);
                    qt.y0(1, (b20 >> 6) & 1);
                }
                qt.y0(4, (b20 >> 5) & 1);
                qt.y0(3, (b20 >> 4) & 1);
                qt.y0(5, (b20 >> 3) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f10508u);
        y0.g.f18094d.d(this.f10509v);
        y0.g.f18095e.d(this.f10509v);
        w0.e.f17815a.d(this.f10508u);
        w0.e.f17819e.d(this.f10508u);
        u0.c.f17379f.d(this.f10510w);
        qt.q0(this.C);
        qt.p0(this.B);
        u0.c.f17388o.d(this.f10511x);
        u0.c.f17389p.d(this.f10512y);
        u0.c.f17390q.d(this.f10513z);
        h0.d.f2464c.d(this.A);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 123) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return;
                }
                z.k.s(227, 201, 2, 1, 1);
                return;
            } else {
                if (T2(iArr, 1)) {
                    if (iArr[0] < 1) {
                        iArr[0] = 1;
                    } else if (iArr[0] > 15) {
                        iArr[0] = 15;
                    }
                    z.k.s(227, 201, 2, 2, iArr[0]);
                    return;
                }
                return;
            }
        }
        if (T2(iArr, 1)) {
            int i3 = iArr[0];
            if (i3 == 0) {
                z.k.s(227, 197, 2, 0, 0);
                return;
            }
            if (i3 == 1) {
                z.k.s(227, 197, 2, 1, 0);
                return;
            }
            if (i3 == 2) {
                z.k.s(227, 197, 2, 2, 0);
            } else if (i3 == 3) {
                z.k.s(227, 197, 2, 3, 0);
            } else {
                if (i3 != 4) {
                    return;
                }
                z.k.s(227, 197, 2, 4, 0);
            }
        }
    }

    public final void a3() {
        b3();
        int i2 = 0;
        switch (u0.b.D) {
            case 0:
            case 2:
            case 3:
            case 5:
            case 6:
            case 11:
            case 12:
            case 14:
                break;
            case 1:
                int[] iArr = new int[6];
                iArr[0] = 194;
                iArr[1] = 4;
                int i3 = w0.d.f17798j & 255;
                int i4 = w0.d.f17796h;
                if (i4 != 0 && i4 != 1) {
                    switch (i4) {
                        case 65536:
                            iArr[2] = 1;
                            break;
                        case 65537:
                            iArr[2] = 2;
                            break;
                        case 65538:
                            iArr[2] = 0;
                            break;
                    }
                } else {
                    iArr[2] = 16;
                }
                int i5 = w0.d.f17797i;
                iArr[3] = i5 & 255;
                iArr[4] = (i5 >> 8) & 255;
                int i6 = i3 % 6;
                if (i6 != 0 || i3 == 0) {
                    iArr[5] = i6;
                } else {
                    iArr[5] = 6;
                }
                int[] iArr2 = new int[7];
                iArr2[0] = 227;
                while (i2 < 6) {
                    int i7 = i2 + 1;
                    iArr2[i7] = iArr[i2];
                    i2 = i7;
                }
                z.k.s(iArr2);
                break;
            case 4:
                int[] iArr3 = new int[8];
                iArr3[0] = 195;
                iArr3[1] = 6;
                if (o0.e.H == 1) {
                    iArr3[2] = o0.e.C & 255;
                    iArr3[3] = o0.e.B & 255;
                    iArr3[4] = 0;
                    iArr3[5] = 0;
                    int i8 = o0.e.f16794r;
                    iArr3[6] = i8 / 60;
                    iArr3[7] = i8 % 60;
                } else {
                    int i9 = o0.e.C;
                    iArr3[2] = i9 & 255;
                    iArr3[3] = (i9 >> 8) & 255;
                    int i10 = o0.e.B;
                    iArr3[4] = i10 & 255;
                    iArr3[5] = (i10 >> 8) & 255;
                    int i11 = o0.e.f16794r;
                    iArr3[6] = i11 / 60;
                    iArr3[7] = i11 % 60;
                }
                int[] iArr4 = new int[9];
                iArr4[0] = 227;
                while (i2 < 8) {
                    int i12 = i2 + 1;
                    iArr4[i12] = iArr3[i2];
                    i2 = i12;
                }
                z.k.s(iArr4);
                break;
            case 7:
            case 13:
                int[] iArr5 = new int[8];
                iArr5[0] = 195;
                iArr5[1] = 6;
                if ((this.f10495h & 48) == 16) {
                    iArr5[2] = this.f10498k;
                    iArr5[3] = this.f10499l;
                    iArr5[4] = this.f10500m;
                    iArr5[5] = this.f10501n;
                    iArr5[6] = this.f10503p;
                    iArr5[7] = 0;
                } else {
                    iArr5[2] = this.f10502o;
                    iArr5[3] = this.f10503p;
                    iArr5[4] = this.f10498k;
                    iArr5[5] = this.f10499l;
                    iArr5[6] = this.f10496i;
                    iArr5[7] = this.f10497j;
                }
                int[] iArr6 = new int[9];
                iArr6[0] = 227;
                while (i2 < 8) {
                    int i13 = i2 + 1;
                    iArr6[i13] = iArr5[i2];
                    i2 = i13;
                }
                z.k.s(iArr6);
                break;
            case 8:
            case 10:
                int i14 = u0.b.s3;
                int i15 = u0.b.r3;
                int i16 = u0.b.t3;
                int[] iArr7 = {195, 6, i14 & 255, (i14 >> 8) & 255, i15 & 255, (i15 >> 8) & 255, i16 / 60, i16 % 60};
                int[] iArr8 = new int[9];
                iArr8[0] = 227;
                while (i2 < 8) {
                    int i17 = i2 + 1;
                    iArr8[i17] = iArr7[i2];
                    i2 = i17;
                }
                z.k.s(iArr8);
                break;
            case 9:
            default:
                z.k.s(227, 194, 4, 0, 0, 0, 0);
                z.k.s(227, 195, 6, 0, 0, 0, 0, 0, 0);
                break;
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f10505r + bArr.length > 1024) {
            this.f10505r = 0;
            this.f10506s = 0;
            this.f10507t = 0;
        }
        System.arraycopy(bArr, 0, this.f10504q, this.f10505r, bArr.length);
        int length = this.f10505r + bArr.length;
        this.f10505r = length;
        int i5 = this.f10507t;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f10504q[1];
            int i6 = 2;
            while (true) {
                i4 = this.f10507t;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f10504q[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f10504q;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f10506s = this.f10507t + 1;
            } else {
                this.f10506s = 1;
            }
            this.f10507t = 0;
        }
        int i7 = this.f10505r - 2;
        while (true) {
            i2 = this.f10506s;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f10504q;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f10507t = i8;
                int i9 = i8 + i2 + 3;
                this.f10507t = i9;
                if (i9 >= this.f10505r) {
                    this.f10507t = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f10507t;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f10504q[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f10504q;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f10506s;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f10506s = this.f10507t;
                } else {
                    this.f10506s++;
                }
                this.f10507t = 0;
            }
            this.f10506s++;
        }
        if (i2 != 0) {
            int i12 = this.f10505r - i2;
            this.f10505r = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f10504q;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f10506s = 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x008a  */
    public final void b3() {
        int[] iArr = new int[4];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 2;
        int i3 = u0.b.D;
        if (i3 == 10) {
            iArr[2] = 8;
            iArr[3] = 17;
        } else if (i3 != 13) {
            switch (i3) {
                case 1:
                    iArr[2] = 1;
                    iArr[3] = 1;
                    break;
                case 2:
                case 3:
                    iArr[2] = 5;
                    iArr[3] = 64;
                    break;
                case 4:
                    int i4 = o0.e.H;
                    if (i4 == 1) {
                        iArr[2] = 2;
                        iArr[3] = 16;
                    } else if (i4 == 2 || i4 == 3) {
                        iArr[2] = 8;
                        iArr[3] = 17;
                    }
                    break;
                case 5:
                    iArr[2] = 7;
                    iArr[3] = 48;
                    break;
                case 6:
                    iArr[2] = 7;
                    iArr[3] = 48;
                    break;
                case 7:
                    if (n0.j4.f16464b == 21 || (this.f10495h & 48) == 16) {
                        iArr[2] = 6;
                        iArr[3] = 18;
                    } else {
                        iArr[2] = 8;
                        iArr[3] = 19;
                    }
                    break;
                case 8:
                    iArr[2] = 8;
                    iArr[3] = 17;
                    break;
                default:
                    iArr[2] = 12;
                    iArr[3] = 48;
                    break;
            }
        } else if ((this.f10495h & 48) == 16) {
            iArr[2] = 6;
            iArr[3] = 18;
        } else {
            iArr[2] = 8;
            iArr[3] = 19;
        }
        int[] iArr2 = new int[5];
        iArr2[0] = 227;
        while (i2 < 4) {
            int i5 = i2 + 1;
            iArr2[i5] = iArr[i2];
            i2 = i5;
        }
        z.k.s(iArr2);
    }

    public final void c3() {
        int i2 = 0;
        int[] iArr = {196, 1, y0.f.C0};
        if (y0.f.f18055i == 1) {
            iArr[2] = 0;
        }
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i2 < 3) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }

    public final int d3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }

    public final void i3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[36];
        iArr[0] = 227;
        iArr[1] = 203;
        iArr[2] = 33;
        iArr[3] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 5] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void j3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length() <= 31 ? str.length() : 31;
        int[] iArr = new int[36];
        iArr[0] = -29;
        iArr[1] = -53;
        iArr[2] = 33;
        iArr[3] = 1;
        int i2 = length + 4;
        for (int i3 = 4; i3 < i2; i3++) {
            iArr[i3] = (byte) (str.charAt(i3 - 4) & 255);
        }
        iArr[i2] = 15;
        z.k.s(iArr);
    }
}
