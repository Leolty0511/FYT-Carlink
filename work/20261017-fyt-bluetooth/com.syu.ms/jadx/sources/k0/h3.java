package k0;

import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class h3 extends lt {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f5735v;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5738d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5741g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f5736b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5737c = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5739e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f5740f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{23, 5}, new int[]{24, 63}, new int[]{19, 3}, new int[]{20, 4}, new int[]{22, 29}, new int[]{129, 7}, new int[]{130, 8}, new int[]{134, 12}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5742h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f5743i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 54}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 9}, new int[]{12, 1}, new int[]{49, 0}, new int[]{50, 6}, new int[]{51, 74}, new int[]{52, 75}, new int[]{53, -1}, new int[]{54, 53}, new int[]{55, 18}, new int[]{56, 40}, new int[]{57, 41}, new int[]{58, 42}, new int[]{59, 43}, new int[]{60, 44}, new int[]{61, 45}, new int[]{62, 29}, new int[]{63, 25}, new int[]{64, 5}, new int[]{65, 16}, new int[]{66, 54}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f5744j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f5745k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f5746l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte f5747m = 5;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f5748n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f5749o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f5750p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f5751q = new g();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f5752r = new h();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f5753s = new i();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f5754t = new j();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f5755u = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h3.this.g3(h0.c.f2437h);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.e();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.s0();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h3 h3Var = h3.this;
            h3Var.f5747m = (byte) 5;
            l0.b0.b(h3Var.f5749o);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h3 h3Var = h3.this;
            byte b2 = (byte) (h3Var.f5747m - 1);
            h3Var.f5747m = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                z.k.s(227, 144, 2, 48, 0);
            } else {
                l0.b0.p0(h3Var.f5749o);
                h3.this.f5747m = (byte) 5;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, -112, 2, 22, 0);
            z.k.s(227, -112, 2, 113, 0);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 200, 4, 0, !DateFormat.is24HourFormat(App.c()) ? 1 : 0, time.hour, time.minute);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h3.this.e3((byte) 2, u0.b.i3);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h3.this.e3((byte) 4, u0.b.j3);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h3.this.e3((byte) 3, u0.b.k3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        if (nt.a()) {
            y0.g.f18094d.a(this.f5746l, 1);
            y0.g.f18095e.a(this.f5746l, 1);
            w0.e.f17815a.a(this.f5745k, 1);
            u0.c.f17374a.a(this.f5745k, 1);
            u0.c.f17392s.a(this.f5745k, 1);
            u0.c.f17393t.a(this.f5745k, 1);
            l0.b0.b(this.f5745k);
        }
        this.f5736b.a();
        qt.z(this.f5751q);
        f3(this.f5736b.b(1, 0));
        u0.c.f17388o.a(this.f5752r, 1);
        u0.c.f17389p.a(this.f5753s, 1);
        u0.c.f17390q.a(this.f5754t, 1);
        h0.d.f2464c.a(this.f5755u, 1);
        u0.c.f17386m.a(this.f5748n, 1);
        if (o1.q0.v()) {
            qt.y(this.f5750p);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == -48) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
        }
        if (b2 == 22) {
            int i4 = i2 + 3;
            int i5 = i2 + 2;
            qt.y0(98, ((bArr[i4] << 8) & 65280) | (bArr[i5] & 255));
            qt.y0(1032, (bArr[i5] & 255) | ((bArr[i4] << 8) & 65280));
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 113) {
            int i6 = i2 + 3;
            int i7 = i2 + 2;
            qt.y0(99, ((bArr[i6] << 8) & 65280) | (bArr[i7] & 255));
            qt.y0(1032, (bArr[i7] & 255) | ((bArr[i6] << 8) & 65280));
            return;
        }
        if (b2 == 125) {
            int i8 = bArr[i2 + 2] & 255;
            if (i8 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i9 = i2 + 3;
                    l0.c0.b((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
                    return;
                } else {
                    int i10 = i2 + 3;
                    l0.c0.a((bArr[i10] >> 3) & 1, (bArr[i10] >> 4) & 1, 0);
                    return;
                }
            }
            if (i8 == 3) {
                int i11 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i11);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i11}, null, null);
                return;
            } else {
                if (i8 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f5744j = true;
                return;
            }
        }
        if (b2 == 41) {
            if (this.f5744j) {
                return;
            }
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_AMBIENT);
            return;
        }
        if (b2 == 42) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f5742h = b5 & 255;
            int i12 = 0;
            while (true) {
                iArr = this.f5743i;
                if (i12 >= iArr.length) {
                    break;
                }
                int i13 = this.f5742h;
                if (i13 == iArr[i12][0]) {
                    if (i13 == 0) {
                        break;
                    }
                    this.f5741g = i12;
                    break;
                }
                i12++;
            }
            int i14 = b6 & 255;
            if (i14 == 1) {
                if (i12 < iArr.length) {
                    l0.b0.l0(iArr[i12][1], 0);
                    return;
                }
                return;
            } else {
                if (i14 == 0) {
                    int i15 = this.f5741g;
                    if (i15 < iArr.length && i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                    }
                    this.f5741g = 255;
                    return;
                }
                return;
            }
        }
        switch (b2) {
            case 32:
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                this.f5739e = b7 & 255;
                int i16 = 0;
                while (true) {
                    iArr2 = this.f5740f;
                    if (i16 < iArr2.length) {
                        int i17 = this.f5739e;
                        if (i17 != iArr2[i16][0]) {
                            i16++;
                        } else if (i17 != 0) {
                            this.f5738d = i16;
                        }
                    }
                }
                int i18 = b8 & 255;
                if (i18 != 1) {
                    if (i18 == 0) {
                        int i19 = this.f5738d;
                        if (i19 < iArr2.length && i19 != 255) {
                            l0.b0.l0(iArr2[i19][1], 1);
                        }
                        this.f5738d = 255;
                    }
                } else if (i16 < iArr2.length) {
                    l0.b0.l0(iArr2[i16][1], 0);
                }
                break;
            case 33:
                byte b9 = bArr[i2 + 2];
                qt.y0(10, (b9 >> 7) & 1);
                qt.y0(11, (b9 >> 6) & 1);
                int[] iArr3 = new int[1];
                iArr3[0] = (b9 & 32) == 0 ? 0 : 1;
                qt.y0(12, iArr3);
                qt.y0(13, (b9 >> 3) & 1);
                qt.y0(14, (b9 >> 2) & 1);
                qt.y0(16, (b9 >> 0) & 1);
                byte b10 = bArr[i2 + 3];
                qt.y0(18, (b10 >> 7) & 1);
                qt.y0(19, (b10 >> 6) & 1);
                qt.y0(20, (b10 >> 5) & 1);
                int i20 = b10 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i20 > 7) {
                    i20 = 7;
                }
                qt.y0(21, i20);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    byte b11 = bArr[i2 + 5];
                    int i21 = i2 + 6;
                    if ((bArr[i21] & 2) == 0) {
                        if (b11 == -1) {
                            qt.y0(27, -3);
                        } else if (b11 != 0) {
                            qt.y0(27, b11 & 255);
                        } else {
                            qt.y0(27, -2);
                        }
                    }
                    byte b12 = bArr[i2 + 4];
                    if ((bArr[i21] & 2) == 0) {
                        if (b12 == -1) {
                            qt.y0(28, -3);
                        } else if (b12 != 0) {
                            qt.y0(28, b12 & 255);
                        } else {
                            qt.y0(28, -2);
                        }
                    }
                } else {
                    byte b13 = bArr[i2 + 4];
                    int i22 = i2 + 6;
                    if ((bArr[i22] & 2) == 0) {
                        if (b13 == -1) {
                            qt.y0(27, -3);
                        } else if (b13 != 0) {
                            qt.y0(27, b13 & 255);
                        } else {
                            qt.y0(27, -2);
                        }
                    }
                    byte b14 = bArr[i2 + 5];
                    if ((bArr[i22] & 2) == 0) {
                        if (b14 == -1) {
                            qt.y0(28, -3);
                        } else if (b14 != 0) {
                            qt.y0(28, b14 & 255);
                        } else {
                            qt.y0(28, -2);
                        }
                    }
                }
                byte b15 = bArr[i2 + 6];
                qt.y0(65, (b15 >> 7) & 1);
                qt.y0(37, (b15 >> 0) & 1);
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(a3(bArr[i2 + 2] & 255));
                    u0.d.S2(a3(bArr[i2 + 3] & 255));
                    u0.d.T2(a3(bArr[i2 + 4] & 255));
                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i23 = i2 + 2;
                    int i24 = bArr[i23] & 255;
                    int i25 = i2 + 3;
                    int i26 = bArr[i25] & 255;
                    int i27 = i2 + 4;
                    int i28 = bArr[i27] & 255;
                    int i29 = i2 + 5;
                    int i30 = bArr[i29] & 255;
                    if (i24 == 0 && i26 == 0 && i28 == 0 && i30 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i24 || l0.c0.f13014h != i26 || l0.c0.f13015i != i28 || l0.c0.f13016j != i30) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i24;
                    l0.c0.f13014h = i26;
                    l0.c0.f13015i = i28;
                    l0.c0.f13016j = i30;
                    u0.d.D2(a3(bArr[i23] & 255));
                    u0.d.E2(a3(bArr[i25] & 255));
                    u0.d.F2(a3(bArr[i27] & 255));
                    u0.d.G2(a3(bArr[i29] & 255));
                }
                break;
            case 36:
                byte b16 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b16 >> 7) & 1);
                    qt.y0(2, (b16 >> 6) & 1);
                } else {
                    qt.y0(1, (b16 >> 6) & 1);
                    qt.y0(2, (b16 >> 7) & 1);
                }
                qt.y0(3, (b16 >> 4) & 1);
                qt.y0(4, (b16 >> 5) & 1);
                qt.y0(5, (b16 >> 3) & 1);
                qt.y0(0, (b16 >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f5736b.j();
        qt.q0(this.f5751q);
        u0.c.f17388o.d(this.f5752r);
        u0.c.f17389p.d(this.f5753s);
        u0.c.f17390q.d(this.f5754t);
        h0.d.f2464c.d(this.f5755u);
        qt.p0(this.f5750p);
        l0.b0.p0(this.f5745k);
        y0.g.f18094d.d(this.f5746l);
        y0.g.f18095e.d(this.f5746l);
        w0.e.f17815a.d(this.f5745k);
        u0.c.f17374a.d(this.f5745k);
        u0.c.f17392s.d(this.f5745k);
        u0.c.f17393t.d(this.f5745k);
        u0.c.f17386m.d(this.f5748n);
        l0.b0.p0(this.f5749o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 100) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            f3(iArr[0]);
        }
    }

    public final int a3(int i2) {
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

    public final void e3(byte b2, String str) {
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

    public final void f3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 3) {
            i2 = 3;
        }
        f5735v = i2;
        if (i2 == 0) {
            z.k.s(227, -58, 2, 64, 1);
        } else if (i2 == 1) {
            z.k.s(227, -58, 2, 64, 0);
        } else if (i2 == 2) {
            z.k.s(227, -58, 2, 64, 2);
        } else if (i2 == 3) {
            z.k.s(227, -58, 2, 64, 3);
        }
        qt.y0(Process.MEDIA_UID, f5735v);
        int iB = this.f5736b.b(1, 0);
        int i3 = f5735v;
        if (iB != i3) {
            this.f5736b.g(1, i3);
        }
    }

    public final void g3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length() <= 32 ? str.length() : 32;
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
