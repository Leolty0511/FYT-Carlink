package k0;

import android.text.Spanned;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class qs extends lt {
    public static int A;
    public static int B;
    public static int C;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f9694r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f9695s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f9696t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f9697u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f9698v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f9699w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f9700x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f9701y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f9702z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f9703b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9704c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f9705d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f9706e = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f9707f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f9708g = 6;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f9709h = 7;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f9710i = 8;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f9711j = 9;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f9712k = 10;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f9713l = 11;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f9714m = 12;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public o1.g0 f9715n = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f9716o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f9717p = new a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f9718q = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qs qsVar = qs.this;
            qsVar.f9716o = 10;
            l0.b0.b(qsVar.f9718q);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qs qsVar = qs.this;
            int i2 = qsVar.f9716o - 1;
            qsVar.f9716o = i2;
            if (i2 <= 0) {
                l0.b0.p0(qsVar.f9718q);
                qs.this.f9716o = 10;
                return;
            }
            if (i2 <= 5) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            }
            if (u0.b.f17306a0 == 1) {
                qs qsVar2 = qs.this;
                qsVar2.a3(qsVar2.f9715n.b(1, 0));
                qs qsVar3 = qs.this;
                qsVar3.b3(qsVar3.f9715n.b(2, 0));
                qs qsVar4 = qs.this;
                qsVar4.c3(qsVar4.f9715n.b(3, 0));
                qs qsVar5 = qs.this;
                qsVar5.d3(qsVar5.f9715n.b(4, 0));
                qs qsVar6 = qs.this;
                qsVar6.k3(qsVar6.f9715n.b(5, 0));
                qs qsVar7 = qs.this;
                qsVar7.l3(qsVar7.f9715n.b(6, 0));
                qs qsVar8 = qs.this;
                qsVar8.e3(qsVar8.f9715n.b(7, 0));
                qs qsVar9 = qs.this;
                qsVar9.f3(qsVar9.f9715n.b(8, 0));
                qs qsVar10 = qs.this;
                qsVar10.g3(qsVar10.f9715n.b(9, 0));
                qs qsVar11 = qs.this;
                qsVar11.h3(qsVar11.f9715n.b(10, 0));
                qs qsVar12 = qs.this;
                qsVar12.i3(qsVar12.f9715n.b(11, 0));
                qs qsVar13 = qs.this;
                qsVar13.j3(qsVar13.f9715n.b(12, 0));
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f9715n.a();
        u0.c.f17386m.a(this.f9717p, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8317l = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        switch (bArr[i2]) {
            case 48:
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                break;
            case 50:
                qt.y0(1, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(2, (bArr[i2 + 9] & 255) | ((bArr[i2 + 8] << 8) & 65280));
                break;
            case 51:
                qt.y0(3, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(4, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(5, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(6, (bArr[i2 + 9] & 255) | ((bArr[i2 + 8] << 8) & 65280));
                break;
            case 52:
                qt.y0(7, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(8, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(9, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(10, (bArr[i2 + 9] & 255) | ((bArr[i2 + 8] << 8) & 65280));
                break;
            case 53:
                qt.y0(11, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(12, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(13, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(14, (bArr[i2 + 9] & 255) | ((bArr[i2 + 8] << 8) & 65280));
                break;
            case 54:
                qt.y0(52, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
                break;
            case 55:
                byte b2 = bArr[i2 + 2];
                if (b2 == 1) {
                    qt.y0(15, (bArr[i2 + 3] >> 0) & 3);
                    break;
                } else if (b2 == 2) {
                    qt.y0(16, ((bArr[i2 + 3] << 24) & (-16777216)) | ((bArr[i2 + 4] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                    qt.y0(17, (bArr[i2 + 10] & 255) | ((bArr[i2 + 7] << 24) & (-16777216)) | ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280));
                    break;
                }
                break;
            case 56:
                qt.y0(18, (bArr[i2 + 2] >> 0) & 15);
                qt.y0(19, (bArr[i2 + 3] >> 0) & 255);
                qt.y0(20, (bArr[i2 + 4] >> 0) & 15);
                break;
            case 57:
                qt.y0(21, (bArr[i2 + 2] >> 0) & 255);
                qt.y0(22, (bArr[i2 + 3] >> 0) & 255);
                qt.y0(23, (bArr[i2 + 4] >> 0) & 255);
                qt.y0(24, (bArr[i2 + 5] >> 0) & 255);
                qt.y0(25, (bArr[i2 + 6] >> 0) & 255);
                qt.y0(26, (bArr[i2 + 7] >> 0) & 255);
                break;
            case 58:
                qt.y0(27, (bArr[i2 + 2] >> 0) & 255);
                switch (bArr[i2 + 3]) {
                    case 1:
                        qt.y0(28, bArr[i2 + 4] & 255);
                        qt.y0(29, bArr[i2 + 5] & 255);
                        break;
                    case 2:
                        qt.y0(30, bArr[i2 + 4] & 255);
                        qt.y0(31, bArr[i2 + 5] & 255);
                        break;
                    case 3:
                        qt.y0(32, bArr[i2 + 4] & 255);
                        qt.y0(33, bArr[i2 + 5] & 255);
                        break;
                    case 4:
                        qt.y0(34, bArr[i2 + 4] & 255);
                        qt.y0(35, bArr[i2 + 5] & 255);
                        break;
                    case 5:
                        qt.y0(36, bArr[i2 + 4] & 255);
                        qt.y0(37, bArr[i2 + 5] & 255);
                        break;
                    case 6:
                        qt.y0(38, bArr[i2 + 4] & 255);
                        qt.y0(39, bArr[i2 + 5] & 255);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f9717p);
        l0.b0.p0(this.f9718q);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 53) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (qt.l0(iArr, 5)) {
                z.k.s(227, 199, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            }
            return;
        }
        if (i2 == 1) {
            if (qt.l0(iArr, 6)) {
                z.k.s(227, 200, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (qt.l0(iArr, 3)) {
                z.k.s(227, 201, 3, iArr[0], iArr[1], iArr[2]);
                return;
            }
            return;
        }
        if (i2 != 1040) {
            switch (i2) {
                case 99:
                    if (qt.l0(iArr, 2)) {
                        switch (iArr[0]) {
                            case 1:
                                e3(iArr[1]);
                                break;
                            case 2:
                                f3(iArr[1]);
                                break;
                            case 3:
                                g3(iArr[1]);
                                break;
                            case 4:
                                h3(iArr[1]);
                                break;
                            case 5:
                                i3(iArr[1]);
                                break;
                            case 6:
                                j3(iArr[1]);
                                break;
                        }
                    }
                    break;
                case 100:
                    if (qt.l0(iArr, 2)) {
                        int i3 = iArr[0];
                        if (i3 == 1) {
                            a3(iArr[1]);
                            break;
                        } else if (i3 == 2) {
                            b3(iArr[1]);
                            break;
                        } else if (i3 == 3) {
                            c3(iArr[1]);
                            break;
                        } else if (i3 == 4) {
                            d3(iArr[1]);
                            break;
                        }
                    }
                    break;
                case 101:
                    if (qt.l0(iArr, 1)) {
                        k3(iArr[0]);
                    }
                    break;
                case 102:
                    if (qt.l0(iArr, 1)) {
                        l3(iArr[0]);
                    }
                    break;
            }
        }
        a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CMD_6606 --- " + o1.b0.e(iArr, 0, iArr.length));
        int i4 = iArr[0];
        if (i4 == 30) {
            int i5 = iArr[1];
            if (i5 == 1) {
                z.k.s(227, 199, 5, 1, iArr[2], (nt.f8645g[19] >> 0) & 3, 0, 0);
                return;
            }
            if (i5 == 2) {
                z.k.s(227, 199, 5, 2, iArr[2], (nt.f8645g[19] >> 2) & 3, 0, 0);
                return;
            } else if (i5 == 3) {
                z.k.s(227, 199, 5, 3, iArr[2], (nt.f8645g[19] >> 4) & 3, 0, 0);
                return;
            } else {
                if (i5 != 4) {
                    return;
                }
                z.k.s(227, 199, 5, 4, iArr[2], (nt.f8645g[19] >> 6) & 3, 0, 0);
                return;
            }
        }
        if (i4 != 31) {
            return;
        }
        switch (iArr[1]) {
            case 1:
                int[] iArr2 = nt.f8645g;
                if (iArr2[28] != 0) {
                    z.k.s(227, 201, 3, 1, 0, iArr2[29]);
                } else {
                    z.k.s(227, 201, 3, 1, 1, iArr2[29]);
                }
                break;
            case 2:
                int[] iArr3 = nt.f8645g;
                if (iArr3[30] != 0) {
                    z.k.s(227, 201, 3, 2, 0, iArr3[31]);
                } else {
                    z.k.s(227, 201, 3, 2, 1, iArr3[31]);
                }
                break;
            case 3:
                int[] iArr4 = nt.f8645g;
                if (iArr4[32] != 0) {
                    z.k.s(227, 201, 3, 3, 0, iArr4[33]);
                } else {
                    z.k.s(227, 201, 3, 3, 1, iArr4[33]);
                }
                break;
            case 4:
                int[] iArr5 = nt.f8645g;
                if (iArr5[34] != 0) {
                    z.k.s(227, 201, 3, 4, 0, iArr5[35]);
                } else {
                    z.k.s(227, 201, 3, 4, 1, iArr5[35]);
                }
                break;
            case 5:
                int[] iArr6 = nt.f8645g;
                if (iArr6[36] != 0) {
                    z.k.s(227, 201, 3, 5, 0, iArr6[37]);
                } else {
                    z.k.s(227, 201, 3, 5, 1, iArr6[37]);
                }
                break;
            case 6:
                int[] iArr7 = nt.f8645g;
                if (iArr7[38] != 0) {
                    z.k.s(227, 201, 3, 5, 0, iArr7[39]);
                } else {
                    z.k.s(227, 201, 3, 5, 1, iArr7[39]);
                }
                break;
            case 7:
                if (nt.f8645g[27] != 0) {
                    z.k.s(227, 201, 3, 0, 0, 0);
                } else {
                    z.k.s(227, 201, 3, 0, 1, 0);
                }
                break;
        }
    }

    public final void a3(int i2) {
        qt.y0(40, i2);
        f9694r = i2;
        int iB = this.f9715n.b(1, 0);
        int i3 = f9694r;
        if (iB != i3) {
            this.f9715n.g(1, i3);
        }
    }

    public final void b3(int i2) {
        qt.y0(41, i2);
        f9695s = i2;
        int iB = this.f9715n.b(2, 0);
        int i3 = f9695s;
        if (iB != i3) {
            this.f9715n.g(2, i3);
        }
    }

    public final void c3(int i2) {
        qt.y0(42, i2);
        f9696t = i2;
        int iB = this.f9715n.b(3, 0);
        int i3 = f9696t;
        if (iB != i3) {
            this.f9715n.g(3, i3);
        }
    }

    public final void d3(int i2) {
        qt.y0(43, i2);
        f9697u = i2;
        int iB = this.f9715n.b(4, 0);
        int i3 = f9697u;
        if (iB != i3) {
            this.f9715n.g(4, i3);
        }
    }

    public final void e3(int i2) {
        qt.y0(46, i2);
        f9700x = i2;
        int iB = this.f9715n.b(7, 0);
        int i3 = f9700x;
        if (iB != i3) {
            this.f9715n.g(7, i3);
            a.f.p().t(LogType.CANBUS, "putDelay buf 7__value + ");
        }
    }

    public final void f3(int i2) {
        qt.y0(47, i2);
        f9701y = i2;
        int iB = this.f9715n.b(8, 0);
        int i3 = f9701y;
        if (iB != i3) {
            this.f9715n.g(8, i3);
        }
    }

    public final void g3(int i2) {
        qt.y0(48, i2);
        f9702z = i2;
        int iB = this.f9715n.b(9, 0);
        int i3 = f9702z;
        if (iB != i3) {
            this.f9715n.g(9, i3);
        }
    }

    public final void h3(int i2) {
        qt.y0(49, i2);
        A = i2;
        int iB = this.f9715n.b(10, 0);
        int i3 = A;
        if (iB != i3) {
            this.f9715n.g(10, i3);
        }
    }

    public final void i3(int i2) {
        qt.y0(50, i2);
        B = i2;
        int iB = this.f9715n.b(11, 0);
        int i3 = B;
        if (iB != i3) {
            this.f9715n.g(11, i3);
        }
    }

    public final void j3(int i2) {
        qt.y0(51, i2);
        C = i2;
        int iB = this.f9715n.b(12, 0);
        int i3 = C;
        if (iB != i3) {
            this.f9715n.g(12, i3);
        }
    }

    public final void k3(int i2) {
        qt.y0(44, i2);
        f9698v = i2;
        int iB = this.f9715n.b(5, 0);
        int i3 = f9698v;
        if (iB != i3) {
            this.f9715n.g(5, i3);
        }
    }

    public final void l3(int i2) {
        qt.y0(45, i2);
        f9699w = i2;
        int iB = this.f9715n.b(6, 0);
        int i3 = f9699w;
        if (iB != i3) {
            this.f9715n.g(6, i3);
        }
    }
}
