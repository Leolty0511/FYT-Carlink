package module.canbus;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import n0.j4;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class m extends lt {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f14500i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f14501j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f14502k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f14503l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f14504m = {3, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 17};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final o1.f<b> f14505n = new o1.f<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14506b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14507c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f14508d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 2}, new int[]{4, 12}, new int[]{5, 4}, new int[]{6, 3}, new int[]{7, 18}, new int[]{8, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14509e = 100;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f14510f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14511g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14512h;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                m.c3(m.this);
                if (m.this.f14512h == 10) {
                    m.this.f14512h = 0;
                    m.this.r3();
                }
                if (m.this.f14509e > 100) {
                    m.h3(m.this);
                    if (m.this.f14511g == m.this.f14509e / 100) {
                        m.this.f14511g = 0;
                        return;
                    }
                }
                m mVar = m.this;
                if (mVar.f7886a.f8308c == 1) {
                    mVar.R2(null);
                    if (m.f14500i != m.f14502k) {
                        int unused = m.f14500i = m.f14502k;
                        m.this.t3();
                    }
                    if (m.f14501j != m.f14503l) {
                        int unused2 = m.f14501j = m.f14503l;
                        m.this.s3();
                    }
                }
            }
        }
    }

    public static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14514a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14515b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14516c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14517d;

        public b(int i2, int i3) {
            this.f14514a = i2;
            this.f14517d = i3;
        }

        public synchronized void a(int i2) {
            this.f14515b = i2;
            if (!this.f14516c) {
                this.f14516c = true;
                o1.k.a().postDelayed(this, this.f14517d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 132, 2, this.f14514a, this.f14515b);
            this.f14516c = false;
        }
    }

    public static /* synthetic */ int c3(m mVar) {
        int i2 = mVar.f14512h;
        mVar.f14512h = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int h3(m mVar) {
        int i2 = mVar.f14511g;
        mVar.f14511g = i2 + 1;
        return i2;
    }

    public static void q3(int i2, int i3) {
        b bVarC = f14505n.c(i2);
        if (bVarC != null) {
            bVarC.a(i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = f14504m;
            f14502k = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f14503l = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        int i2 = nt.f8637c;
        if (i2 != 2) {
            if (i2 != 3) {
                mtVar.f8308c = 0;
                return;
            } else {
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                return;
            }
        }
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8308c = 1;
        if (nt.a()) {
            init();
            l0.b0.a(this.f14510f);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 10) {
            qt.y0(101, bArr[i2 + 2]);
        }
        if (b2 == 11) {
            byte b3 = bArr[i2 + 4];
            o1.b0.h(bArr, i2, i3);
            qt.y0(100, (b3 >> 7) & 1);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 1:
                if (nt.a()) {
                    int i4 = nt.f8633a;
                    if (i4 == 196802 || i4 == 65730 || i4 == 262338) {
                        byte b4 = bArr[i2 + 2];
                        byte b5 = bArr[i2 + 3];
                        this.f14507c = b4 & 255;
                        int i5 = 0;
                        while (true) {
                            iArr = this.f14508d;
                            if (i5 < iArr.length) {
                                int i6 = this.f14507c;
                                if (i6 != iArr[i5][0]) {
                                    i5++;
                                } else if (i6 != 0) {
                                    this.f14506b = i5;
                                }
                            }
                        }
                        if ((b5 & 255) == 0) {
                            if (i5 <= iArr.length) {
                                l0.b0.l0(iArr[this.f14506b][1], 1);
                            }
                        } else if (i5 < iArr.length) {
                            l0.b0.l0(iArr[i5][1], 0);
                        }
                    }
                }
                break;
            case 2:
                int i7 = i2 + 2;
                byte b6 = bArr[i7];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b6 >> 7) & 1);
                    qt.y0(1, (b6 >> 6) & 1);
                } else {
                    qt.y0(1, (b6 >> 7) & 1);
                    qt.y0(2, (b6 >> 6) & 1);
                }
                qt.y0(3, (b6 >> 5) & 1);
                qt.y0(4, (b6 >> 4) & 1);
                qt.y0(5, (b6 >> 3) & 1);
                qt.y0(0, (b6 >> 2) & 1);
                if (nt.a()) {
                    byte b7 = bArr[i2 + 3];
                    this.f14507c = bArr[i7] & 255;
                    int i8 = 0;
                    while (true) {
                        iArr2 = this.f14508d;
                        if (i8 < iArr2.length) {
                            int i9 = this.f14507c;
                            if (i9 != iArr2[i8][0]) {
                                i8++;
                            } else if (i9 != 0) {
                                this.f14506b = i8;
                            }
                        }
                    }
                    if ((b7 & 255) == 0) {
                        if (i8 <= iArr2.length) {
                            l0.b0.l0(iArr2[this.f14506b][1], 1);
                        }
                    } else if (i8 < iArr2.length) {
                        l0.b0.l0(iArr2[i8][1], 0);
                    }
                }
                break;
            case 3:
                byte b8 = bArr[i2 + 2];
                byte b9 = bArr[i2 + 3];
                byte b10 = bArr[i2 + 6];
                qt.y0(10, (b8 >> 7) & 1);
                qt.y0(11, (b8 >> 6) & 1);
                qt.y0(12, (b8 >> 5) & 1);
                qt.y0(13, (b8 >> 3) & 1);
                qt.y0(14, (b8 >> 2) & 1);
                qt.y0(16, b8 & 1);
                qt.y0(18, (b9 >> 7) & 1);
                qt.y0(19, (b9 >> 6) & 1);
                int i10 = b9 >> 5;
                qt.y0(20, i10 & 1);
                qt.y0(77, i10 & 7);
                qt.y0(21, b9 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i11 = i2 + 4;
                byte b11 = bArr[i11];
                int i12 = i2 + 5;
                byte b12 = bArr[i12];
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b11 = bArr[i12];
                    b12 = bArr[i11];
                }
                if (b11 == -1) {
                    qt.y0(27, -3);
                } else if (b11 == 0) {
                    qt.y0(27, -2);
                } else if (b11 < 30 || b11 > 64) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, b11);
                }
                if (b12 == -1) {
                    qt.y0(28, -3);
                } else if (b12 == 0) {
                    qt.y0(28, -2);
                } else if (b12 < 30 || b12 > 64) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, b12);
                }
                qt.y0(65, (b10 >> 7) & 1);
                break;
            case 4:
                if (nt.a()) {
                    u0.d.R2(l0.c0.W0(bArr[i2 + 3] & 255));
                    int i13 = i2 + 4;
                    u0.d.S2(l0.c0.W0(bArr[i13] & 255));
                    u0.d.T2(l0.c0.W0(bArr[i13] & 255));
                    u0.d.U2(l0.c0.W0(bArr[i2 + 5] & 255));
                }
                break;
            case 5:
                if (nt.a()) {
                    int i14 = nt.f8633a;
                    if (i14 == 196802 || i14 == 65730 || i14 == 262338) {
                        qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 4860);
                    } else {
                        qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 1600);
                    }
                }
                break;
            case 6:
                if (nt.a()) {
                    int i15 = nt.f8633a;
                    if (i15 == 196802 || i15 == 65730 || i15 == 262338) {
                        u0.d.D2(l0.c0.j1(bArr[i2 + 3] & 255));
                        u0.d.E2(l0.c0.j1(bArr[i2 + 4] & 255));
                        u0.d.F2(l0.c0.j1(bArr[i2 + 5] & 255));
                        u0.d.G2(l0.c0.j1(bArr[i2 + 6] & 255));
                        u0.d.R2(l0.c0.j1(bArr[i2 + 7] & 255));
                        u0.d.S2(l0.c0.j1(bArr[i2 + 8] & 255));
                        u0.d.T2(l0.c0.j1(bArr[i2 + 9] & 255));
                        u0.d.U2(l0.c0.j1(bArr[i2 + 10] & 255));
                    }
                }
                break;
            case 7:
                byte b13 = bArr[i2 + 2];
                qt.y0(99, (b13 >> 0) & 127);
                if (j4.f16464b == 58) {
                    y0.h.t0(b13 & 127);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        l0.b0.o0(this.f14510f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 102) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1 && T2(iArr, 2)) {
            z.k.s(227, 130, 2, iArr[0], iArr[1]);
        }
    }

    public final void init() {
        o1.f<b> fVar = f14505n;
        fVar.f(17, new b(17, 100));
        fVar.f(16, new b(16, 100));
    }

    public final void r3() {
        t3();
        s3();
    }

    public final synchronized void s3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        q3(16, f14503l);
    }

    public final synchronized void t3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        q3(17, f14502k);
    }
}
