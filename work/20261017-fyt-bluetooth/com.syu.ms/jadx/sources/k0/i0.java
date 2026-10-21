package k0;

import android.net.ProxyProperties;
import android.net.wifi.BatchedScanSettings;
import android.os.Process;

/* JADX INFO: loaded from: classes2.dex */
public class i0 extends lt {
    public static int F;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f6207k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f6198b = new int[6];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f6199c = new int[12];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f6200d = new int[30];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f6201e = new int[30];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f6202f = new int[30];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f6203g = new int[30];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public o1.g0 f6204h = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f6205i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6206j = 10;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f6208l = 255;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f6209m = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, -1}, new int[]{4, 5}, new int[]{5, 18}, new int[]{6, 6}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{11, 13}, new int[]{12, -1}};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte f6210n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f6211o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f6212p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f6213q = new g();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f6214r = new h();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f6215s = new i();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f6216t = new j();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f6217u = new k();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f6218v = new l();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f6219w = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f6220x = new m();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f6221y = new a();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f6222z = new b();
    public Runnable A = new c();
    public Runnable B = new d();
    public int C = -1;
    public boolean D = false;
    public String E = ProxyProperties.LOCAL_EXCL_LIST;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(1021, u0.b.Z);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 8 || i2 == 9 || i2 == 10) {
                String str = u0.b.i3;
                if (str != null) {
                    i0.this.p3((byte) -30, str);
                }
                String str2 = u0.b.j3;
                if (str2 != null) {
                    i0.this.p3((byte) -28, str2);
                }
                String str3 = u0.b.k3;
                if (str3 != null) {
                    i0.this.p3((byte) -29, str3);
                }
                String str4 = u0.b.l3;
                if (str4 != null) {
                    i0.this.p3((byte) -27, str4);
                }
            }
            o1.l.a().removeCallbacks(this);
            i0 i0Var = i0.this;
            int i3 = i0Var.f6206j;
            i0Var.f6206j = i3 - 1;
            if (i3 > 0) {
                o1.l.a().postDelayed(this, 10000L);
            }
        }
    }

    public class c implements Runnable {
        public c() {
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

    public class d implements Runnable {
        public d() {
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
                    if (z4 == i0.this.D) {
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
            if (i0.this.C != i3) {
                i0.this.C = i3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (i0.this.E.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                i0.this.E = h0.c.f2437h;
                if (i0.this.E == null) {
                    i0.this.E = ProxyProperties.LOCAL_EXCL_LIST;
                }
            }
            if (z3) {
                if (i0.this.C != 0) {
                    i0 i0Var = i0.this;
                    i0Var.r3(i0Var.C, i0.this.E);
                }
                if (i0.this.D != z4) {
                    i0.this.D = z4;
                    i0.this.C = 0;
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i0 i0Var = i0.this;
            byte b2 = (byte) (i0Var.f6210n + 1);
            i0Var.f6210n = b2;
            if (b2 > 5) {
                l0.b0.o0(i0Var.f6211o);
                i0.this.f6210n = (byte) 0;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i0.this.a3();
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i0.this.c3();
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i0.this.p3((byte) -30, u0.b.i3);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i0.this.p3((byte) -29, u0.b.k3);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i0.this.p3((byte) -28, u0.b.j3);
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i0.this.p3((byte) -27, u0.b.l3);
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.f8645g[0] != 0) {
                qt.y0(0, 0);
                i0.this.f6206j = 10;
                o1.l.a().removeCallbacks(i0.this.f6222z);
                o1.l.a().postDelayed(i0.this.f6222z, 1000L);
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.P / 1000;
            i0 i0Var = i0.this;
            if (i0Var.f6219w != i2) {
                i0Var.f6219w = i2;
                i0Var.u3(10, i2);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f6204h.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8313h = 0;
        mtVar.f8320o = 0;
        if (n0.j4.f16465c.equals("DCE")) {
            this.f7886a.f8315j = 0;
        } else {
            this.f7886a.f8315j = 1;
        }
        q3(this.f6204h.b(1, 0));
        u0.c.f17388o.a(this.f6214r, 1);
        u0.c.f17389p.a(this.f6216t, 1);
        u0.c.f17390q.a(this.f6215s, 1);
        u0.c.f17396w.a(this.f6217u, 1);
        o1.y yVar = u0.c.f17376c;
        yVar.a(this.f6218v, 1);
        h0.d.f2464c.a(this.B, 1);
        o1.y yVar2 = h0.d.f2462a;
        yVar2.a(this.B, 1);
        h0.d.f2465d.a(this.f6220x, 1);
        yVar2.a(this.A, 1);
        u0.c.f17394u.a(this.A, 1);
        u0.c.f17395v.a(this.A, 1);
        yVar.a(this.A, 1);
        o1.y yVar3 = u0.c.f17374a;
        yVar3.a(this.A, 1);
        o1.y yVar4 = y0.g.f18094d;
        yVar4.a(this.A, 1);
        yVar3.a(this.A, 1);
        if (nt.f8637c == 2) {
            u0.c.f17382i.a(this.f6221y, 1);
            yVar.a(this.f6222z, 1);
            u0.c.f17385l.a(this.f6222z, 1);
        }
        if (nt.a()) {
            if (nt.f8637c == 2) {
                u0.d.I0(0);
            }
            yVar4.a(this.f6213q, 1);
            y0.g.f18095e.a(this.f6213q, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -124) {
            int i4 = bArr[i2 + 2] & 255;
            int i5 = (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] & 255) << 8);
            int i6 = i4 == 0 ? 10 : 1;
            qt.y0(128, i4);
            qt.y0(135, i5 * i6);
            qt.y0(140, bArr[i2 + 5] & 255);
            qt.y0(137, bArr[i2 + 6] & 255);
            return;
        }
        if (b2 == -123) {
            byte b3 = bArr[i2 + 2];
            if (b3 == 1) {
                for (int i7 = 0; i7 < 6; i7++) {
                    int i8 = i7 * 2;
                    int iC = o1.p0.c(bArr[i2 + 4 + i8], bArr[i2 + 3 + i8]);
                    int[] iArr2 = this.f6198b;
                    if (iArr2[i7] != iC) {
                        iArr2[i7] = iC;
                        o1.x.C(nt.f8643f, 129, new int[]{i7, iC}, null, null);
                    }
                }
                return;
            }
            if (b3 != 2) {
                return;
            }
            for (int i9 = 0; i9 < 12; i9++) {
                int i10 = i9 * 2;
                int iC2 = o1.p0.c(bArr[i2 + 4 + i10], bArr[i2 + 3 + i10]);
                int[] iArr3 = this.f6199c;
                if (iArr3[i9] != iC2) {
                    iArr3[i9] = iC2;
                    o1.x.C(nt.f8643f, 130, new int[]{i9, iC2 * 10}, null, null);
                }
            }
            return;
        }
        if (b2 == -24) {
            qt.y0(1, (bArr[i2 + 2] & 255) - 1);
            int i11 = i2 + 3;
            qt.y0(4, (bArr[i11] & 255) - 1);
            qt.y0(Process.MEDIA_UID, (bArr[i11] & 255) - 1);
            qt.y0(2, bArr[i2 + 4] & 255);
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 17) {
            switch (b2) {
                case -121:
                    for (int i12 = 0; i12 < 30; i12++) {
                        int i13 = i12 * 2;
                        int iC3 = o1.p0.c(bArr[i2 + 3 + i13], bArr[i2 + 2 + i13]);
                        int[] iArr4 = this.f6201e;
                        if (iArr4[i12] != iC3) {
                            iArr4[i12] = iC3;
                            o1.x.C(nt.f8643f, 131, new int[]{i12, iC3 * 10}, null, null);
                        }
                    }
                    break;
                case -120:
                    qt.y0(30, bArr[i2 + 2] & 255);
                    for (int i14 = 0; i14 < 12; i14++) {
                        int i15 = bArr[i2 + 3 + i14] & 255;
                        int[] iArr5 = this.f6203g;
                        if (iArr5[i14] != i15) {
                            iArr5[i14] = i15;
                            o1.x.C(nt.f8643f, 132, new int[]{i14, i15}, null, null);
                        }
                    }
                    break;
                case -119:
                    for (int i16 = 0; i16 < 30; i16++) {
                        int i17 = i16 * 2;
                        int iC4 = o1.p0.c(bArr[i2 + 3 + i17], bArr[i2 + 2 + i17]);
                        int[] iArr6 = this.f6200d;
                        if (iArr6[i16] != iC4) {
                            iArr6[i16] = iC4;
                            o1.x.C(nt.f8643f, 133, new int[]{i16, iC4}, null, null);
                        }
                    }
                    break;
                case -118:
                    qt.y0(138, bArr[i2 + 2] & 255);
                    for (int i18 = 0; i18 < 30; i18++) {
                        int i19 = bArr[i2 + 3 + i18] & 255;
                        int[] iArr7 = this.f6202f;
                        if (iArr7[i18] != i19) {
                            iArr7[i18] = i19;
                            o1.x.C(nt.f8643f, 134, new int[]{i18, i19}, null, null);
                        }
                    }
                    break;
            }
            return;
        }
        qt.y0(0, bArr[i2 + 3] & 255);
        int i20 = i2 + 4;
        if (bArr[i20] == 12) {
            if (o1.u.Y0().equals("com.syu.canbus")) {
                o1.u.k();
            } else {
                o1.u.v();
            }
        }
        if (nt.a()) {
            if (nt.f8637c == 2) {
                int i21 = i2 + 2;
                qt.y0(1021, (bArr[i21] >> 2) & 1);
                if (((bArr[i21] >> 2) & 1) == 1) {
                    u0.d.W(1);
                } else {
                    u0.d.W(0);
                }
            }
            byte b4 = bArr[i20];
            byte b5 = bArr[i2 + 5];
            this.f6208l = b4 & 255;
            int i22 = 0;
            while (true) {
                iArr = this.f6209m;
                if (i22 >= iArr.length) {
                    break;
                }
                int i23 = this.f6208l;
                if (i23 == iArr[i22][0]) {
                    if (i23 == 0) {
                        break;
                    }
                    this.f6207k = i22;
                    break;
                }
                i22++;
            }
            int i24 = b5 & 255;
            if (i24 == 0) {
                int i25 = this.f6207k;
                if (i25 < iArr.length && i25 != 255) {
                    l0.b0.l0(iArr[i25][1], 1);
                    l0.b0.o0(this.f6211o);
                    this.f6210n = (byte) 0;
                }
                this.f6207k = 255;
                return;
            }
            if (i22 < iArr.length) {
                if (this.f6208l != 6) {
                    byte b6 = this.f6210n;
                    if (b6 == 0) {
                        this.f6210n = (byte) (b6 + 1);
                        l0.b0.l0(iArr[i22][1], 0);
                        l0.b0.a(this.f6211o);
                        return;
                    }
                    return;
                }
                if (i24 == 1) {
                    int i26 = h0.c.E;
                    if (i26 == 3 || i26 == 4 || i26 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                    }
                }
                this.f6207k = 255;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f6204h.j();
        u0.c.f17388o.d(this.f6214r);
        u0.c.f17389p.d(this.f6216t);
        u0.c.f17390q.d(this.f6215s);
        u0.c.f17396w.d(this.f6217u);
        o1.y yVar = u0.c.f17376c;
        yVar.d(this.f6218v);
        h0.d.f2464c.d(this.B);
        o1.y yVar2 = h0.d.f2462a;
        yVar2.d(this.B);
        h0.d.f2465d.d(this.f6220x);
        yVar2.d(this.A);
        u0.c.f17394u.d(this.A);
        u0.c.f17395v.d(this.A);
        yVar.d(this.A);
        o1.y yVar3 = u0.c.f17374a;
        yVar3.d(this.A);
        o1.y yVar4 = y0.g.f18094d;
        yVar4.d(this.A);
        yVar3.d(this.A);
        u0.c.f17382i.d(this.f6221y);
        yVar.d(this.f6222z);
        u0.c.f17385l.d(this.f6222z);
        u0.d.I0(1);
        qt.q0(this.f6212p);
        yVar4.d(this.f6213q);
        y0.g.f18095e.d(this.f6213q);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 141) {
            return;
        }
        switch (i2) {
            case 129:
                for (int i4 = 0; i4 < 6; i4++) {
                    o1.x.w(bVar, i2, new int[]{i4, this.f6198b[i4]}, null, null);
                }
                break;
            case 130:
                for (int i5 = 0; i5 < 12; i5++) {
                    o1.x.w(bVar, i2, new int[]{i5, this.f6199c[i5]}, null, null);
                }
                break;
            case 131:
                for (int i6 = 0; i6 < 30; i6++) {
                    o1.x.w(bVar, i2, new int[]{i6, this.f6201e[i6]}, null, null);
                }
                break;
            case 132:
            default:
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                break;
            case 133:
                for (int i7 = 0; i7 < 30; i7++) {
                    o1.x.w(bVar, i2, new int[]{i7, this.f6200d[i7]}, null, null);
                }
                break;
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 1005) {
            switch (i2) {
                case 0:
                    if (iArr != null && iArr.length > 0) {
                        iArr[0] = iArr[0] + 1;
                        if (iArr[0] < 1) {
                            iArr[0] = 1;
                        } else if (iArr[0] > 3) {
                            iArr[0] = 3;
                        }
                        s3(4, (byte) iArr[0]);
                        qt.y0(0, iArr[0] - 1);
                        break;
                    }
                    break;
                case 1:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] < 1) {
                            iArr[0] = 1;
                        } else if (iArr[0] > 4) {
                            iArr[0] = 4;
                        }
                        q3(iArr[0]);
                        break;
                    }
                    break;
                case 3:
                    t3(1, iArr[0]);
                    break;
                case 4:
                    t3(2, (byte) iArr[0]);
                    break;
                case 5:
                    t3(4, (byte) iArr[0]);
                    break;
                case 6:
                    t3(5, (byte) iArr[0]);
                    break;
                case 7:
                    t3(7, (byte) iArr[0]);
                    break;
                case 8:
                    t3(8, (byte) iArr[0]);
                    break;
            }
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        iArr[0] = iArr[0] + 1;
        if (iArr[0] < 1) {
            iArr[0] = 1;
        } else if (iArr[0] > 3) {
            iArr[0] = 3;
        }
        s3((byte) iArr[0], -1);
    }

    public final void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        iArr[0] = 13;
        iArr[1] = 225;
        iArr[2] = b3();
        for (int i3 = 3; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        int i4 = u0.b.D;
        if (i4 == 4) {
            int i5 = o0.e.B;
            iArr[3] = ((i5 / 100) % 10) + 48;
            iArr[4] = ((i5 % 100) / 10) + 48;
            iArr[5] = (i5 % 10) + 48;
            int i6 = o0.e.f16794r;
            iArr[7] = ((((i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) / 10) % 10) + 48;
            iArr[8] = (((i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 10) + 48;
            iArr[9] = (((i6 % 60) / 10) % 10) + 48;
            iArr[10] = (i6 % 10) + 48;
        } else if (i4 == 8 || i4 == 10) {
            int i7 = u0.b.r3;
            iArr[3] = ((i7 / 100) % 10) + 48;
            iArr[4] = ((i7 % 100) / 10) + 48;
            iArr[5] = (i7 % 10) + 48;
            int i8 = u0.b.t3;
            iArr[7] = ((((i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) / 10) % 10) + 48;
            iArr[8] = (((i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 10) + 48;
            iArr[9] = (((i8 % 60) / 10) % 10) + 48;
            iArr[10] = (i8 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i9 = i2 + 1;
            iArr2[i9] = iArr[i2];
            i2 = i9;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002e  */
    /* JADX WARN: Code duplicated, block: B:9:0x0015  */
    public final int b3() {
        int i2 = 13;
        switch (u0.b.D) {
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 == 65536 || i3 == 65537 || i3 == 65538) {
                    i2 = 1;
                    break;
                } else if (i3 == 0 || i3 == 1) {
                    i2 = 4;
                    break;
                }
            case 0:
            case 9:
            default:
                i2 = 0;
                break;
            case 2:
            case 3:
            case 12:
                i2 = 133;
                break;
            case 4:
                if (o0.e.H == 1) {
                    i2 = 6;
                }
                break;
            case 5:
                i2 = 12;
                break;
            case 6:
                i2 = 8;
                break;
            case 7:
                i2 = 11;
                break;
            case 8:
            case 10:
                break;
            case 11:
                if (w0.d.f17796h != 1) {
                    i2 = 4;
                } else {
                    i2 = 1;
                }
                break;
            case 13:
                i2 = 21;
                break;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        return i2;
    }

    public final void c3() {
        int i2;
        int[] iArr = new int[12];
        int i3 = 0;
        iArr[0] = 10;
        iArr[1] = 230;
        iArr[2] = y0.f.C0;
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[2] = iArr[2] | 32;
            iArr[6] = 0;
        } else {
            iArr[2] = iArr[2] & 0;
            iArr[6] = i2;
        }
        int[] iArr2 = new int[13];
        iArr2[0] = 227;
        while (i3 < 12) {
            int i4 = i3 + 1;
            iArr2[i4] = iArr[i3];
            i3 = i4;
        }
        z.k.s(iArr2);
    }

    public final void p3(byte b2, String str) {
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

    public final void q3(int i2) {
        F = i2;
        z.k.s(227, 2, -14, 5, (byte) i2);
        qt.y0(3, F);
        int iB = this.f6204h.b(1, 0);
        int i3 = F;
        if (iB != i3) {
            this.f6204h.g(1, i3);
        }
    }

    public final void r3(int i2, String str) {
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
        int[] iArr = new int[36];
        iArr[0] = -29;
        iArr[1] = 32;
        iArr[2] = -25;
        iArr[3] = (byte) i2;
        for (int i5 = 0; i5 < length; i5++) {
            iArr[4 + i5] = bArr[i5];
        }
        for (int i6 = 4 + length; i6 < 36; i6++) {
            iArr[i6] = 0;
        }
        z.k.s(iArr);
    }

    public final void s3(int i2, int i3) {
        z.k.s(227, 2, -14, (byte) i2, (byte) i3);
    }

    public final void t3(int i2, int i3) {
        z.k.s(-29, 2, -15, (byte) i2, (byte) i3);
    }

    public final void u3(int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer();
        int i4 = i3 / 60;
        int i5 = i3 % 60;
        StringBuilder sb = new StringBuilder();
        sb.append(ProxyProperties.LOCAL_EXCL_LIST);
        sb.append(i4 < 0 ? 0 : i4 / 10);
        stringBuffer.append(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(ProxyProperties.LOCAL_EXCL_LIST);
        sb2.append(i4 < 0 ? 0 : i4 % 10);
        stringBuffer.append(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(ProxyProperties.LOCAL_EXCL_LIST);
        sb3.append(i5 < 0 ? 0 : i5 / 10);
        stringBuffer.append(sb3.toString());
        StringBuilder sb4 = new StringBuilder();
        sb4.append(ProxyProperties.LOCAL_EXCL_LIST);
        sb4.append(i5 < 0 ? 0 : i5 % 10);
        stringBuffer.append(sb4.toString());
        char[] charArray = stringBuffer.toString().toCharArray();
        int[] iArr = new int[17];
        iArr[0] = -29;
        iArr[1] = 13;
        iArr[2] = -31;
        iArr[3] = (byte) i2;
        iArr[4] = 32;
        iArr[5] = 32;
        iArr[6] = 32;
        iArr[7] = 32;
        int length = charArray.length;
        for (int i6 = 0; i6 < length; i6++) {
            iArr[8 + i6] = (byte) charArray[i6];
        }
        while (true) {
            int i7 = length + 8;
            if (i7 >= 17) {
                z.k.s(iArr);
                return;
            } else {
                iArr[i7] = 32;
                length++;
            }
        }
    }
}
