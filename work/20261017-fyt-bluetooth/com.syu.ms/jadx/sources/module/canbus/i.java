package module.canbus;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.util.TimedRemoteCaller;
import app.App;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;
import o1.q0;

/* JADX INFO: loaded from: classes2.dex */
public class i extends lt implements o1.q {
    public static int A;
    public static int B;
    public static final int[] C = {0, 3, 6, 9, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63};
    public static final int[] D = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    public static final int[] E = {0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 14};
    public static final o1.f<f> F = new o1.f<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f14215q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f14216r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f14217s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f14218t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f14219u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f14220v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f14221w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f14222x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f14223y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f14224z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14226c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f14225b = new int[15][];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f14227d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f14228e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, -1}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f14229f = new byte[1024];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14230g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14231h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14232i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Runnable f14233j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f14234k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f14235l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f14236m = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f14237n = 200;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f14238o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f14239p = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.I3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 2, 10, 1, 50);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (u0.b.f2) {
                case 0:
                    i.this.c3(12);
                    break;
                case 1:
                    i.this.c3(11);
                    break;
                case 2:
                    i.this.c3(14);
                    break;
                case 3:
                    i.this.c3(13);
                    break;
                case 4:
                    i.this.c3(4);
                    break;
                case 5:
                    i.this.c3(5);
                    break;
                case 6:
                    i.this.c3(21);
                    break;
                case 7:
                    i.this.c3(7);
                    break;
                case 8:
                    i.this.c3(2);
                    break;
                case 9:
                    i.this.c3(1);
                    break;
            }
        }
    }

    public class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f14243a;

        public d(int i2) {
            this.f14243a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            i.R3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) this.f14243a, 0, 0});
            z.k.s(227, 2, 61, this.f14243a, 0);
            i.this.f14236m = true;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (i.this.f14237n > 100) {
                    i.v3(i.this);
                    if (i.this.f14239p == i.this.f14237n / 100) {
                        i.this.f14239p = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = i.f14216r = i.C[0];
                } else {
                    int unused2 = i.f14216r = i.C[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (i.this.f7886a.f8307b == 1 && i.f14215q != i.f14216r) {
                    i.this.Q3();
                }
                if (i.this.f7886a.f8309d == 1) {
                    if (i.f14217s != i.f14220v) {
                        i.this.L3();
                    }
                    if (i.f14218t != i.f14221w) {
                        i.this.O3();
                    }
                    if (i.f14219u != i.f14222x) {
                        i.this.P3();
                    }
                }
                if (i.this.f7886a.f8308c == 1) {
                    if (i.f14223y != i.A) {
                        i.this.N3();
                    }
                    if (i.f14224z != i.B) {
                        i.this.K3();
                    }
                }
            }
        }
    }

    public static class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14246a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14247b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14248c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14249d;

        public f(int i2, int i3) {
            this.f14246a = i2;
            this.f14249d = i3;
        }

        public synchronized void a(int i2) {
            this.f14247b = i2;
            if (!this.f14248c) {
                this.f14248c = true;
                o1.k.a().postDelayed(this, this.f14249d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 2, 173, this.f14246a, this.f14247b);
            this.f14248c = false;
        }
    }

    public static void D3(int i2, int i3) {
        f fVarC = F.c(i2);
        if (fVarC != null) {
            fVarC.a(i3);
        }
    }

    public static void R3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = bArr[0];
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 & 255);
        z.k.q(bArr);
    }

    public static int b3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }

    public static /* synthetic */ int v3(i iVar) {
        int i2 = iVar.f14239p;
        iVar.f14239p = i2 + 1;
        return i2;
    }

    public final void E3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }

    public final boolean F3() {
        int i2 = nt.f8637c;
        return i2 == 3 || i2 == 4 || i2 == 6 || i2 == 10 || i2 == 9;
    }

    public final void G3(int i2, int i3) {
        z.k.s(-29, 2, 108, (byte) i2, (byte) i3);
    }

    public final void H3(int i2, int i3) {
        z.k.s(-29, 2, 107, (byte) i2, (byte) i3);
    }

    public final void I3() {
        if (F3()) {
            M3(17, 1);
            return;
        }
        int i2 = nt.f8637c;
        if (i2 == 5 || i2 == 7 || i2 == 8) {
            M3(18, 1);
        }
    }

    public final void J3(int i2, int i3) {
        z.k.s(-29, 2, 106, (byte) i2, (byte) i3);
    }

    public final synchronized void K3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        D3(2, B);
    }

    public final synchronized void L3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        D3(4, f14220v);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final void M3(int i2, int i3) {
        byte b2 = (byte) i3;
        R3(new byte[]{90, -91, 2, 36, (byte) i2, b2, 0});
        z.k.s(227, 2, 36, i2, b2, 0);
    }

    public final synchronized void N3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        D3(3, A);
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[21] > 1) {
                        c3(1);
                    }
                } else if (nt.f8645g[21] == 0) {
                    if (!F3()) {
                        c3(1);
                    } else {
                        c3(12);
                    }
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        c3(2);
                    }
                } else if (nt.f8645g[11] == 0) {
                    c3(2);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        c3(4);
                    }
                } else if (nt.f8645g[13] == 0) {
                    c3(4);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        c3(5);
                    }
                } else if (nt.f8645g[65] == 0) {
                    c3(5);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        c3(6);
                    }
                } else if (nt.f8645g[16] == 0) {
                    c3(6);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        c3(7);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    c3(7);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    c3(12);
                } else {
                    c3(11);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    c3(14);
                } else {
                    c3(13);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    c3(16);
                } else {
                    c3(15);
                }
                break;
        }
    }

    public final synchronized void O3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        D3(5, f14221w);
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        if (nt.a() && this.f7886a.f8309d == 1) {
            int[] iArr2 = D;
            int[] iArr3 = y0.f.f18038c0;
            f14220v = iArr2[o0.a(iArr3[0] >> 1, 0, 10)];
            f14221w = iArr2[o0.a(iArr3[1] >> 1, 0, 10)];
            f14222x = iArr2[o0.a(iArr3[2] >> 1, 0, 10)];
        }
    }

    public final synchronized void P3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        D3(6, f14222x);
    }

    public final synchronized void Q3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = 0;
        int i3 = f14215q;
        int i4 = f14216r;
        if (i3 <= i4) {
            i2 = i4 - i3;
            if (i2 >= 5) {
                i2 = 5;
            }
        } else if (i3 > i4) {
            int i5 = i3 - i4;
            i2 = i5 >= 5 ? 251 : (255 - i5) + 1;
        }
        D3(1, i2);
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = E;
            A = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            B = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
        if (q0.v()) {
            qt.y(this.f14234k);
        }
        z.c.f18184d.a(this.f14235l, 1);
        switch (nt.f8637c) {
            case 0:
            case 3:
            case 7:
            case 11:
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                mtVar2.f8310e = 1;
                mtVar2.f8311f = 0;
                mtVar2.f8312g = 0;
                mtVar2.f8307b = 0;
                mtVar2.f8308c = 0;
                mtVar2.f8309d = 0;
                break;
            case 1:
            case 4:
            case 8:
                mt mtVar3 = this.f7886a;
                mtVar3.f8306a = new String[]{"com.syu.canbus"};
                mtVar3.f8310e = 1;
                mtVar3.f8311f = 0;
                mtVar3.f8312g = 0;
                mtVar3.f8307b = 1;
                mtVar3.f8308c = 1;
                mtVar3.f8309d = 1;
                if (nt.a()) {
                    init();
                    l0.b0.a(this.f14238o);
                    E3();
                }
                break;
            case 2:
                mt mtVar4 = this.f7886a;
                mtVar4.f8306a = new String[]{"com.syu.canbus"};
                mtVar4.f8310e = 1;
                mtVar4.f8311f = 0;
                mtVar4.f8312g = 0;
                mtVar4.f8307b = 1;
                mtVar4.f8308c = 1;
                mtVar4.f8309d = 1;
                if (nt.a()) {
                    init();
                    l0.b0.a(this.f14238o);
                    E3();
                }
                break;
            case 5:
            case 6:
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    this.f7886a.f8306a = new String[]{"com.syu.canbus"};
                } else {
                    this.f7886a.f8306a = null;
                }
                mt mtVar5 = this.f7886a;
                mtVar5.f8310e = 1;
                mtVar5.f8311f = 0;
                mtVar5.f8312g = 0;
                mtVar5.f8307b = 0;
                mtVar5.f8308c = 0;
                mtVar5.f8309d = 0;
                break;
            case 9:
            case 10:
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    this.f7886a.f8306a = new String[]{"com.syu.canbus"};
                } else {
                    this.f7886a.f8306a = null;
                }
                mt mtVar6 = this.f7886a;
                mtVar6.f8310e = 1;
                mtVar6.f8311f = 0;
                mtVar6.f8312g = 1;
                mtVar6.f8307b = 0;
                mtVar6.f8308c = 0;
                mtVar6.f8309d = 0;
                break;
        }
        this.f7886a.f8322q = 1;
        o1.j.b(o1.l.a(), this.f14233j, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
    }

    /* JADX WARN: Code duplicated, block: B:122:0x03be  */
    /* JADX WARN: Code duplicated, block: B:124:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:131:0x03f6  */
    /* JADX WARN: Code duplicated, block: B:174:0x03e7 A[SYNTHETIC] */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int[] iArr2;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        byte b2 = bArr[i2 + 1];
        int i14 = 0;
        if (b2 == -90) {
            int i15 = i2 + 8;
            qt.y0(119, (bArr[i15] >> 1) & 1);
            qt.y0(120, bArr[i15] & 1);
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                byte b5 = bArr[i2 + 4];
                byte b6 = bArr[i2 + 5];
                byte b7 = bArr[i2 + 6];
                byte b8 = bArr[i2 + 7];
                f14215q = o0.a(b3 & 255, 0, 63);
                f14223y = o0.a(b5 & 255, 0, 14);
                f14224z = o0.a(b4 & 255, 0, 14);
                f14217s = o0.a(b6 & 255, 0, 10);
                f14218t = o0.a(b7 & 255, 0, 10);
                f14219u = o0.a(b8 & 255, 0, 10);
                return;
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i16 = 4;
        if (b2 == 17) {
            qt.y0(118, (bArr[i2 + 3] & 255) | 0);
            byte b9 = bArr[i2 + 6];
            qt.y0(5, (b9 >> 3) & 1);
            qt.y0(3, (b9 >> 4) & 1);
            qt.y0(4, (b9 >> 5) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b9 >> 6) & 1);
                qt.y0(1, (b9 >> 7) & 1);
            } else {
                qt.y0(1, (b9 >> 6) & 1);
                qt.y0(2, (b9 >> 7) & 1);
            }
            if (nt.a()) {
                byte b10 = bArr[i2 + 4];
                byte b11 = bArr[i2 + 5];
                this.f14227d = b10 & 255;
                int i17 = 0;
                while (true) {
                    iArr = this.f14228e;
                    if (i17 >= iArr.length) {
                        break;
                    }
                    int i18 = this.f14227d;
                    if (i18 == iArr[i17][0]) {
                        if (i18 == 0) {
                            break;
                        }
                        this.f14226c = i17;
                        break;
                    }
                    i17++;
                }
                if ((b11 & 255) == 0) {
                    int i19 = this.f14226c;
                    if (i19 < iArr.length) {
                        i4 = 255;
                        if (i19 != 255) {
                            l0.b0.l0(iArr[i19][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f14226c = i4;
                } else if (i17 < iArr.length) {
                    l0.b0.l0(iArr[i17][1], 0);
                }
                qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                return;
            }
            return;
        }
        int i20 = 16777216;
        if (b2 == 19) {
            byte b12 = bArr[i2 + 12];
            if (b12 == 0) {
                i5 = 0;
            } else if (b12 == 1) {
                i5 = 16777216;
            } else if (b12 != 2) {
                i5 = 0;
            } else {
                i5 = 33554432;
            }
            byte b13 = bArr[i2 + 13];
            if (b13 == 0 || b13 != 1) {
                i6 = 0;
                i20 = 0;
            } else {
                i6 = 16777216;
            }
            qt.y0(98, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i5);
            qt.y0(99, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255) | i20);
            qt.y0(110, i5 | ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
            qt.y0(101, ((bArr[i2 + 8] & 255) << 8) | (bArr[i2 + 9] & 255));
            qt.y0(100, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] & 255) << 8) | i6);
            return;
        }
        if (b2 == 23) {
            byte b14 = bArr[i2 + 62];
            if (b14 != 0) {
                if (b14 != 1) {
                    i7 = 2;
                    if (b14 == 2) {
                        i20 = 33554432;
                    }
                } else {
                    i7 = 2;
                }
                i8 = 0;
                while (i8 < 15) {
                    iArr2 = new int[i7];
                    iArr2[0] = i8;
                    int i21 = i2 + (i8 * 2);
                    iArr2[1] = (bArr[i21 + 3] & 255) | ((bArr[i21 + 2] & 255) << 8) | i20;
                    if (qt.C0(109, iArr2, this.f14225b[i8])) {
                        this.f14225b[i8] = iArr2;
                    }
                    i8++;
                    i7 = 2;
                }
                return;
            }
            i7 = 2;
            i20 = 0;
            i8 = 0;
            while (i8 < 15) {
                iArr2 = new int[i7];
                iArr2[0] = i8;
                int i22 = i2 + (i8 * 2);
                iArr2[1] = (bArr[i22 + 3] & 255) | ((bArr[i22 + 2] & 255) << 8) | i20;
                if (qt.C0(109, iArr2, this.f14225b[i8])) {
                    this.f14225b[i8] = iArr2;
                }
                i8++;
                i7 = 2;
            }
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(b3(bArr[i2 + 2] & 255));
                int i23 = i2 + 3;
                u0.d.S2(b3(bArr[i23] & 255));
                u0.d.T2(b3(bArr[i23] & 255));
                u0.d.U2(b3(bArr[i2 + 5] & 255));
                u0.d.D2(b3(bArr[i2 + 6] & 255));
                int i24 = i2 + 7;
                u0.d.E2(b3(bArr[i24] & 255));
                u0.d.F2(b3(bArr[i24] & 255));
                u0.d.G2(b3(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 != 49) {
            if (b2 == 50) {
                int i25 = i2 + 4;
                int i26 = i2 + 5;
                qt.y0(122, ((bArr[i25] << 8) & 65280) | (bArr[i26] & 255));
                qt.y0(1032, ((bArr[i25] << 8) & 65280) | (bArr[i26] & 255));
                qt.y0(121, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                return;
            }
            switch (b2) {
                case 101:
                    byte b15 = bArr[i2 + 3];
                    qt.y0(111, b15 & 128);
                    int i27 = ((b15 & 112) >> 4) - 1;
                    if (i27 < 0) {
                        i16 = 0;
                    } else if (i27 <= 4) {
                        i16 = i27;
                    }
                    qt.y0(112, i16);
                    int i28 = ((b15 & DhcpPacket.DHCP_HOST_NAME) >> 2) - 1;
                    if (i28 < 0) {
                        i28 = 0;
                    } else if (i28 > 1) {
                        i28 = 1;
                    }
                    qt.y0(113, i28);
                    int i29 = (b15 & 3) - 1;
                    if (i29 < 0) {
                        i29 = 0;
                    } else if (i29 > 1) {
                        i29 = 1;
                    }
                    qt.y0(114, i29);
                    break;
                case 102:
                    int i30 = i2 + 3;
                    qt.y0(106, (bArr[i30] >> 4) & 1);
                    qt.y0(108, (bArr[i30] >> 3) & 1);
                    int[] iArr3 = new int[1];
                    iArr3[0] = ((bArr[i30] >> 2) & 1) != 0 ? 1 : 0;
                    qt.y0(107, iArr3);
                    qt.y0(103, (bArr[i30] >> 1) & 1);
                    qt.y0(105, bArr[i30] & 1);
                    break;
                case 103:
                    int i31 = i2 + 3;
                    int i32 = (bArr[i31] & 7) - 1;
                    if (i32 < 0) {
                        i16 = 0;
                    } else if (i32 <= 4) {
                        i16 = i32;
                    }
                    qt.y0(117, (bArr[i31] >> 5) & 3);
                    qt.y0(102, (bArr[i31] >> 3) & 3);
                    qt.y0(104, i16);
                    break;
                case 104:
                    int i33 = i2 + 3;
                    qt.y0(115, (bArr[i33] >> 1) & 1);
                    qt.y0(116, bArr[i33] & 1);
                    break;
            }
            return;
        }
        byte b16 = bArr[i2 + 2];
        byte b17 = bArr[i2 + 3];
        byte b18 = bArr[i2 + 4];
        int i34 = i2 + 6;
        byte b19 = bArr[i34];
        byte b20 = bArr[i2 + 7];
        byte b21 = bArr[i2 + 10];
        byte b22 = bArr[i2 + 11];
        byte b23 = bArr[i2 + 12];
        byte b24 = bArr[i2 + 13];
        qt.y0(10, (b16 >> 6) & 1);
        qt.y0(42, (b16 >> 4) & 1);
        qt.y0(13, (b16 >> 3) & 1);
        qt.y0(12, (b17 >> 4) & 1);
        qt.y0(11, (b17 >> 6) & 1);
        qt.y0(14, (b17 >> 2) & 1);
        qt.y0(16, (b18 >> 5) & 1);
        qt.y0(65, (b18 >> 4) & 1);
        qt.y0(72, (b18 >> 3) & 1);
        qt.y0(38, (b18 >> 2) & 1);
        int i35 = bArr[i34] & DhcpPacket.DHCP_DOMAIN_NAME;
        if (i35 == 3) {
            i9 = 0;
            i10 = 0;
            i11 = 1;
        } else if (i35 == 5) {
            i10 = 0;
            i11 = 1;
            i9 = 1;
        } else if (i35 != 6) {
            switch (i35) {
                case 12:
                    i9 = 0;
                    i11 = 1;
                    i10 = 1;
                    break;
                case 13:
                    i11 = 0;
                    i9 = 1;
                    i10 = i9;
                    break;
                case 14:
                    i11 = 1;
                    i9 = i11;
                    i10 = i9;
                    break;
                default:
                    i11 = 0;
                    i9 = i11;
                    i10 = i9;
                    break;
            }
        } else {
            i11 = 0;
            i10 = 0;
            i9 = 1;
        }
        qt.y0(20, i11);
        qt.y0(19, i9);
        qt.y0(18, i10);
        qt.y0(77, b19 & DhcpPacket.DHCP_DOMAIN_NAME);
        qt.y0(21, b20 & 255);
        int i36 = i2 + 8;
        byte b25 = bArr[i36];
        int i37 = i2 + 9;
        byte b26 = bArr[i37];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b25 = bArr[i37];
            b26 = bArr[i36];
        }
        int i38 = b25 & 255;
        if (i38 == 254) {
            qt.y0(27, -2);
        } else if (i38 != 255) {
            qt.y0(27, i38);
        } else {
            qt.y0(27, -3);
        }
        int i39 = b26 & 255;
        if (i39 == 254) {
            qt.y0(28, -2);
        } else if (i39 != 255) {
            qt.y0(28, i39);
        } else {
            qt.y0(28, -3);
        }
        int i40 = b21 & 255;
        if (i40 == 1) {
            i12 = 0;
            i13 = 1;
        } else if (i40 != 2) {
            i12 = i40 != 3 ? 0 : 1;
            i13 = i12;
        } else {
            i13 = 0;
            i12 = 1;
        }
        qt.y0(46, i12);
        qt.y0(47, i13);
        qt.y0(44, b22 & 255);
        int i41 = b23 & 255;
        if (i41 == 254) {
            qt.y0(40, -2);
        } else if (i41 != 255) {
            qt.y0(40, i41);
        } else {
            qt.y0(40, -3);
        }
        int i42 = (b24 * 10) / 2;
        if (i42 < 400) {
            i14 = 1000 - (400 - i42);
        } else if (i42 >= 400 && i42 <= 1250) {
            i14 = (i42 + 1000) - 400;
        }
        if (i14 > 600) {
            u0.d.A3(i14);
        }
    }

    @Override // k0.lt
    public void W2() {
        if (q0.v()) {
            qt.p0(this.f14234k);
        }
        z.c.f18184d.d(this.f14235l);
        l0.b0.o0(this.f14238o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 123) {
            return;
        }
        if (i2 != 109) {
            o1.x.v(bVar, i2, nt.f8645g[i2]);
            return;
        }
        for (int i4 = 0; i4 < 15; i4++) {
            o1.x.v(bVar, i2, this.f14225b[i4]);
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 1) {
                        iArr[0] = 1;
                    } else if (iArr[0] > 5) {
                        iArr[0] = 5;
                    }
                    G3(1, iArr[0]);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    H3(2, iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    G3(2, iArr[0]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    G3(3, iArr[0]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    H3(1, iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    int i3 = iArr[0];
                    if (i3 == 0) {
                        H3(3, 1);
                        break;
                    } else if (i3 == 1) {
                        H3(3, 0);
                        break;
                    }
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    H3(4, iArr[0]);
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    H3(5, iArr[0]);
                    break;
                }
                break;
            case 8:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(1, iArr[0]);
                    break;
                }
                break;
            case 9:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(2, iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    J3(1, iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    iArr[0] = iArr[0] + 1;
                    if (iArr[0] < 1) {
                        iArr[0] = 1;
                    } else if (iArr[0] > 5) {
                        iArr[0] = 5;
                    }
                    J3(2, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    int i4 = iArr[0];
                    if (i4 == 0) {
                        J3(3, 1);
                        break;
                    } else if (i4 == 1) {
                        J3(3, 2);
                        break;
                    }
                }
                break;
            case 13:
                z.k.s(-29, 2, 27, 1, 1);
                break;
            case 15:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    d3(7, iArr[0]);
                    break;
                }
                break;
            case 16:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    d3(8, iArr[0]);
                    break;
                }
                break;
            case 17:
                if (iArr[0] == 1 && F3() && nt.f8645g[21] == 0) {
                    iArr[0] = 12;
                }
                if (iArr.length > 1) {
                    if (iArr[1] == 1) {
                        R3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[0], 1, 0});
                    } else if (iArr[1] == 0) {
                        R3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[0], 0, 0});
                    }
                    if (iArr[1] == 1) {
                        z.k.s(227, 2, 61, iArr[0], 1);
                    } else if (iArr[1] == 0) {
                        z.k.s(227, 2, 61, iArr[0], 0);
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f14216r = C[o0.a(i2, 0, 36)];
        }
    }

    public final void a3(int i2, int i3) {
        z.k.s(-29, 2, 109, (byte) i2, (byte) i3);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f14230g + bArr.length > 1024) {
            this.f14230g = 0;
            this.f14231h = 0;
            this.f14232i = 0;
        }
        System.arraycopy(bArr, 0, this.f14229f, this.f14230g, bArr.length);
        int length = this.f14230g + bArr.length;
        this.f14230g = length;
        int i5 = this.f14232i;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f14229f[2];
            int i6 = 3;
            while (true) {
                i4 = this.f14232i;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f14229f[i6]);
                i6++;
            }
            byte b3 = (byte) ((b2 - 1) & 255);
            byte[] bArr2 = this.f14229f;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 2, bArr2[2]);
                this.f14231h = this.f14232i + 1;
            } else {
                this.f14231h = 2;
            }
            this.f14232i = 0;
        }
        int i7 = this.f14230g - 3;
        while (true) {
            i2 = this.f14231h;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f14229f;
            if (bArr3[i2] == 90 && bArr3[i2 + 1] == -91) {
                if (this.f14232i > 512) {
                    this.f14232i = 0;
                } else {
                    int i8 = bArr3[i2 + 2] + i2 + 4;
                    this.f14232i = i8;
                    if (i8 >= this.f14230g) {
                        this.f14232i = i8 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 2];
                    int i9 = i2 + 3;
                    while (true) {
                        i3 = this.f14232i;
                        if (i9 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f14229f[i9]);
                        i9++;
                    }
                    byte b5 = (byte) ((b4 - 1) & 255);
                    byte[] bArr4 = this.f14229f;
                    if (b5 == bArr4[i3]) {
                        int i10 = this.f14231h;
                        U2(bArr4, i10 + 2, bArr4[i10 + 2]);
                        this.f14231h = this.f14232i;
                    } else {
                        this.f14231h++;
                    }
                    this.f14232i = 0;
                }
            }
            this.f14231h++;
        }
        if (i2 != 0) {
            int i11 = this.f14230g - i2;
            this.f14230g = i11;
            if (i11 != 0) {
                byte[] bArr5 = this.f14229f;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f14231h = 0;
        }
    }

    public final void c3(int i2) {
        if (this.f14236m) {
            this.f14236m = false;
            R3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) i2, 1, 0});
            z.k.s(227, 2, 61, i2, 1);
            o1.l.a().postDelayed(new d(i2), 100L);
        }
    }

    public final void d3(int i2, int i3) {
        z.k.s(-29, 2, -83, (byte) i2, (byte) i3);
    }

    public final void init() {
        o1.f<f> fVar = F;
        fVar.f(3, new f(3, 100));
        fVar.f(2, new f(2, 100));
        fVar.f(4, new f(4, 100));
        fVar.f(6, new f(6, 100));
        fVar.f(5, new f(5, 100));
        fVar.f(1, new f(1, 100));
    }
}
