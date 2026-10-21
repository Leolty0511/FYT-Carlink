package k0;

import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.Time;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class xj extends lt {
    public static int A = 0;
    public static int B = 1;
    public static int C = 1000;
    public static int D = 0;
    public static int E = 1000;
    public static int F = 0;
    public static int G = 1000;
    public static int H;
    public static int I;
    public static int J;
    public static int K;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f12144z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12145b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12148e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12146c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12147d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12149f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f12150g = {new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{9, 12}, new int[]{22, 29}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{32, 1}, new int[]{43, 5}, new int[]{45, 54}, new int[]{84, 2}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12151h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12152i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f12153j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f12154k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f12155l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f12156m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public o1.g0 f12157n = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f12158o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f12159p = 2;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f12160q = 3;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f12161r = 4;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f12162s = 5;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f12163t = 6;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f12164u = 7;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f12165v = 8;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f12166w = 9;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f12167x = 10;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f12168y = 11;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.g0.i(y0.f.f18037c);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xj xjVar = xj.this;
            xjVar.f12151h = 0;
            xjVar.f12152i = 0;
            l0.b0.b(xjVar.f12156m);
            xj.this.f12154k = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xj xjVar = xj.this;
            int i2 = xjVar.f12154k - 1;
            xjVar.f12154k = i2;
            if (i2 <= 0) {
                l0.b0.p0(xjVar.f12156m);
                xj.this.f12154k = 5;
                return;
            }
            int i3 = nt.f8637c;
            if (i3 == 233) {
                z.k.s(227, 2, 36, 14, 10);
            } else if (i3 == 234) {
                z.k.s(227, 2, 36, 15, 10);
            } else if (i3 != 239) {
                switch (i3) {
                    case 6:
                        z.k.s(227, 2, 36, 16, 10);
                        break;
                    case 7:
                        z.k.s(227, 2, 36, 4, 10);
                        break;
                    case 8:
                        z.k.s(227, 2, 36, 5, 10);
                        break;
                    case 9:
                        z.k.s(227, 2, 36, 6, 10);
                        break;
                    case 10:
                        z.k.s(227, 2, 36, 7, 10);
                        break;
                    case 11:
                        z.k.s(227, 2, 36, 8, 10);
                        break;
                    case 12:
                        z.k.s(227, 2, 36, 9, 10);
                        break;
                    case 13:
                        z.k.s(227, 2, 36, 10, 10);
                        break;
                    case 14:
                        z.k.s(227, 2, 36, 11, 10);
                        break;
                    case 15:
                        z.k.s(227, 2, 36, 12, 10);
                        break;
                    case 16:
                        z.k.s(227, 2, 36, 13, 10);
                        break;
                }
            } else {
                z.k.s(227, 2, 36, 3, 10);
            }
            if (u0.b.f17306a0 == 1) {
                int i4 = nt.f8637c;
                if (i4 == 11 || i4 == 12 || i4 == 14 || i4 == 15 || i4 == 233 || i4 == 234) {
                    xj xjVar2 = xj.this;
                    xjVar2.h3(xjVar2.f12157n.b(1, 0));
                    xj xjVar3 = xj.this;
                    xjVar3.f3(xjVar3.f12157n.b(2, 1));
                    xj xjVar4 = xj.this;
                    xjVar4.g3(xjVar4.f12157n.b(3, 1000));
                    xj xjVar5 = xj.this;
                    xjVar5.j3(xjVar5.f12157n.b(4, 0));
                    xj xjVar6 = xj.this;
                    xjVar6.i3(xjVar6.f12157n.b(5, 1000));
                    xj xjVar7 = xj.this;
                    xjVar7.e3(xjVar7.f12157n.b(6, 0));
                    xj xjVar8 = xj.this;
                    xjVar8.d3(xjVar8.f12157n.b(7, 1000));
                    if (xj.A != 1) {
                        qt.y0(171, 0);
                        return;
                    }
                    Time time = new Time(Time.getCurrentTimezone());
                    time.setToNow();
                    if (xj.this.k3(xj.I, (((byte) time.monthDay) & 255) | ((((byte) (time.year + DrmManagerClient.ERROR_UNKNOWN)) << 16) & Spanned.SPAN_PRIORITY) | ((((byte) (time.month + 1)) << 8) & 65280), xj.B)) {
                        qt.y0(171, 1);
                    } else {
                        qt.y0(171, 0);
                    }
                }
            }
        }
    }

    public static int a3(int i2) {
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

    public static void b3(int i2) {
        if (i2 == 3) {
            if (f12144z == 1) {
                c3(7, 1);
                return;
            }
            return;
        }
        if (i2 == 4) {
            if (f12144z == 1) {
                c3(7, 0);
                return;
            }
            return;
        }
        if (i2 != 32) {
            if (i2 != 33) {
                if (i2 != 36) {
                    switch (i2) {
                    }
                    return;
                }
                if (f12144z == 5) {
                    c3(1, 0);
                    return;
                } else {
                    c3(2, 0);
                    return;
                }
            }
            if (f12144z == 1) {
                c3(8, 0);
                return;
            }
            return;
        }
        if (f12144z == 1) {
            c3(8, 1);
        }
    }

    public static void c3(int i2, int i3) {
        z.k.s(227, 2, i.a.Theme_actionModeFindDrawable, i2, i3);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f12157n.a();
        u0.c.f17386m.a(this.f12155l, 1);
        int i2 = nt.f8637c;
        if (i2 == 15) {
            this.f7886a.f8317l = 1;
        } else {
            this.f7886a.f8317l = 0;
        }
        if (i2 != 233 && i2 != 234 && i2 != 239) {
            switch (i2) {
                case 10:
                    mt mtVar = this.f7886a;
                    mtVar.f8306a = new String[]{"com.syu.canbus"};
                    mtVar.f8310e = 1;
                    mtVar.f8311f = 1;
                    mtVar.f8312g = 0;
                    mtVar.f8307b = 0;
                    mtVar.f8308c = 0;
                    mtVar.f8309d = 0;
                    mtVar.f8320o = 0;
                    qt.z(l0.g0.f13048d);
                    y0.g.f18094d.a(this.f12153j, 0);
                    y0.g.f18095e.a(this.f12153j, 0);
                    w0.e.f17815a.a(l0.g0.f13048d, 1);
                    w0.e.f17819e.a(l0.g0.f13048d, 1);
                    break;
                case 11:
                case 12:
                case 14:
                case 15:
                    mt mtVar2 = this.f7886a;
                    mtVar2.f8306a = new String[]{"com.syu.canbus"};
                    mtVar2.f8310e = 1;
                    mtVar2.f8311f = 1;
                    mtVar2.f8312g = 0;
                    mtVar2.f8307b = 0;
                    mtVar2.f8308c = 0;
                    mtVar2.f8309d = 0;
                    mtVar2.f8320o = 0;
                    break;
            }
        }
        qt.z(l0.g0.f13048d);
        y0.g.f18094d.a(l0.g0.f13051g, 0);
        y0.g.f18095e.a(l0.g0.f13051g, 0);
        w0.e.f17815a.a(l0.g0.f13048d, 1);
        w0.e.f17819e.a(l0.g0.f13048d, 1);
        mt mtVar3 = this.f7886a;
        mtVar3.f8306a = new String[]{"com.syu.canbus"};
        mtVar3.f8310e = 1;
        mtVar3.f8311f = 1;
        mtVar3.f8312g = 0;
        mtVar3.f8307b = 0;
        mtVar3.f8308c = 0;
        mtVar3.f8309d = 0;
        mtVar3.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        boolean z2;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -91) {
            int i4 = nt.f8633a;
            if (i4 == 721339 || i4 == 917947 || i4 == 983483) {
                try {
                    qt.z0(105, new int[]{bArr[i2 + 2]}, new String(bArr, i2 + 5, i3 - 5, "GB2312"));
                    return;
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            return;
        }
        if (b2 == -90) {
            qt.y0(179, bArr[i2 + 2] & 255);
            qt.y0(180, bArr[i2 + 3] & 255);
            qt.y0(181, bArr[i2 + 4] & 255);
            qt.y0(182, bArr[i2 + 5] & 255);
            qt.y0(183, bArr[i2 + 7] & 255);
            qt.y0(184, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == -82) {
            int i5 = nt.f8633a;
            if (i5 == 721339 || i5 == 917947 || i5 == 983483) {
                int i6 = ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255);
                int i7 = ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255);
                int i8 = ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255);
                int i9 = ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255);
                int i10 = (255 & bArr[i2 + 16]) | ((bArr[i2 + 15] << 8) & 65280);
                qt.y0(99, bArr[i2 + 5]);
                int i11 = i2 + 6;
                qt.y0(100, (bArr[i11] >> 5) & 7);
                qt.y0(101, (bArr[i11] >> 2) & 7);
                qt.y0(102, (i6 << 16) | i7);
                qt.y0(104, (i8 << 16) | i9);
                qt.y0(103, i10);
                return;
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
            u0.d.R2(a3(bArr[i2 + 2] & 255));
            u0.d.S2(a3(bArr[i2 + 3] & 255));
            u0.d.T2(a3(bArr[i2 + 4] & 255));
            u0.d.U2(a3(bArr[i2 + 5] & 255));
            int i12 = i2 + 6;
            int i13 = bArr[i12] & 255;
            int i14 = i2 + 7;
            int i15 = bArr[i14] & 255;
            int i16 = i2 + 8;
            int i17 = bArr[i16] & 255;
            int i18 = i2 + 9;
            int i19 = bArr[i18] & 255;
            if (i13 == 0 && i15 == 0 && i17 == 0 && i19 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i13 || l0.c0.f13014h != i15 || l0.c0.f13015i != i17 || l0.c0.f13016j != i19) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i13;
            l0.c0.f13014h = i15;
            l0.c0.f13015i = i17;
            l0.c0.f13016j = i19;
            u0.d.D2(a3(bArr[i12] & 255));
            u0.d.E2(a3(bArr[i14] & 255));
            u0.d.F2(a3(bArr[i16] & 255));
            u0.d.G2(a3(bArr[i18] & 255));
            return;
        }
        if (b2 == 17) {
            this.f12146c = bArr[i2 + 4] & 255;
            int i20 = 0;
            while (true) {
                iArr = this.f12147d;
                if (i20 >= iArr.length) {
                    break;
                }
                int i21 = this.f12146c;
                if (i21 == iArr[i20][0]) {
                    if (i21 == 0) {
                        break;
                    }
                    this.f12145b = i20;
                    break;
                }
                i20++;
            }
            int i22 = this.f12146c;
            if (i22 == 4) {
                z2 = true;
                if ((255 & bArr[i2 + 5]) == 1) {
                    if (nt.f8633a == 15270331) {
                        int i23 = h0.c.E;
                        if (i23 == 3 || i23 == 4 || i23 == 5) {
                            z2 = true;
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else if (u0.i.l3().r3()) {
                            l0.b0.l0(18, 0);
                            z2 = true;
                            l0.b0.l0(18, 1);
                        } else {
                            z2 = true;
                            l0.b0.l0(13, 0);
                            l0.b0.l0(13, 1);
                        }
                    } else {
                        z2 = true;
                        l0.b0.l0(13, 0);
                        l0.b0.l0(13, 1);
                    }
                }
            } else if (i22 == 0 || (bArr[i2 + 5] & 255) == 0) {
                int i24 = this.f12145b;
                if (i24 == 255 || (bArr[i2 + 5] & 255) != 0) {
                    z2 = true;
                } else {
                    int[] iArr3 = iArr[i24];
                    z2 = true;
                    l0.b0.l0(iArr3[1], 1);
                }
                this.f12145b = 255;
            } else {
                if (i20 < iArr.length) {
                    l0.b0.l0(iArr[i20][1], 0);
                }
                z2 = true;
            }
            qt.i(bArr[i2 + 9], bArr[i2 + 8], z2, 540);
            return;
        }
        if (b2 == 18) {
            byte b3 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            }
            qt.y0(3, (b3 >> 5) & 1);
            qt.y0(4, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            return;
        }
        if (b2 == 33) {
            this.f12149f = bArr[i2 + 2] & 255;
            byte b4 = bArr[i2 + 3];
            int i25 = 0;
            while (true) {
                iArr2 = this.f12150g;
                if (i25 >= iArr2.length) {
                    break;
                }
                int i26 = this.f12149f;
                if (i26 == iArr2[i25][0]) {
                    if (i26 == 0) {
                        break;
                    }
                    this.f12148e = i25;
                    break;
                }
                i25++;
            }
            if ((b4 & 255) == 0) {
                int i27 = this.f12148e;
                if (i27 < iArr2.length) {
                    l0.b0.l0(iArr2[i27][1], 1);
                }
                this.f12148e = 255;
                return;
            }
            if (i25 < iArr2.length) {
                if ((iArr2[i25][1] == 3 || iArr2[i25][1] == 4 || iArr2[i25][1] == 32 || iArr2[i25][1] == 33) && u0.b.D == 13) {
                    b3(iArr2[i25][1]);
                    return;
                } else {
                    l0.b0.l0(iArr2[i25][1], 0);
                    return;
                }
            }
            return;
        }
        if (b2 == 34) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            if (b5 == 1) {
                int i28 = this.f12151h;
                if (b6 != i28) {
                    if (b6 > i28) {
                        for (int i29 = 0; i29 < b6 - this.f12151h; i29++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else {
                        int i30 = 0;
                        if (b6 < i28) {
                            int i31 = 0;
                            while (i31 < this.f12151h - b6) {
                                l0.b0.l0(8, i30);
                                i31++;
                                i30 = 0;
                            }
                            l0.b0.l0(8, 1);
                        }
                    }
                    this.f12151h = b6;
                    return;
                }
                return;
            }
            if (b5 == 2) {
                int i32 = this.f12152i;
                if (b6 != i32) {
                    if (b6 > i32) {
                        for (int i33 = 0; i33 < b6 - this.f12152i; i33++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b6 < i32) {
                        for (int i34 = 0; i34 < this.f12152i - b6; i34++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f12152i = b6;
                }
            }
        } else if (b2 == 49) {
            int i35 = bArr[i2 + 2] & 255;
            int i36 = bArr[i2 + 3] & 255;
            int i37 = bArr[i2 + 4] & 255;
            int i38 = bArr[i2 + 6] & 255;
            int i39 = bArr[i2 + 7] & 255;
            qt.y0(10, (i35 >> 6) & 1);
            qt.y0(13, (i35 >> 3) & 1);
            qt.y0(12, (i36 >> 4) & 1);
            qt.y0(36, (i36 >> 3) & 1);
            qt.y0(11, (i36 >> 6) & 1);
            qt.y0(14, (i36 >> 2) & 1);
            qt.y0(16, (i37 >> 5) & 1);
            qt.y0(65, (i37 >> 4) & 1);
            qt.y0(30, (i37 >> 2) & 3);
            qt.y0(29, (i37 >> 0) & 3);
            qt.y0(18, (i38 >> 4) & 1);
            qt.y0(19, (i38 >> 5) & 1);
            qt.y0(20, (i38 >> 6) & 1);
            qt.y0(21, (i38 >> 0) & 15);
            qt.y0(22, (i39 >> 4) & 1);
            qt.y0(23, (i39 >> 5) & 1);
            qt.y0(24, (i39 >> 6) & 1);
            qt.y0(25, (i39 >> 0) & 15);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                qt.y0(27, bArr[i2 + 9] & 255);
                qt.y0(28, bArr[i2 + 8] & 255);
            } else {
                qt.y0(27, bArr[i2 + 8] & 255);
                qt.y0(28, bArr[i2 + 9] & 255);
            }
        } else if (b2 == 50) {
            qt.y0(162, (bArr[i2 + 10] & 255) | ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280));
            if (A == 1) {
                int i40 = nt.f8645g[162];
                int i41 = H;
                if (i40 <= C + i41 || i41 == 0) {
                    qt.y0(170, 0);
                } else {
                    qt.y0(170, 1);
                }
            } else {
                qt.y0(170, 0);
            }
            if (D == 1) {
                int i42 = nt.f8645g[162];
                int i43 = J;
                if (i42 <= E + i43 || i43 == 0) {
                    qt.y0(172, 0);
                } else {
                    qt.y0(172, 1);
                }
            } else {
                qt.y0(172, 0);
            }
            if (F == 1) {
                int i44 = nt.f8645g[162];
                int i45 = K;
                if (i44 <= G + i45 || i45 == 0) {
                    qt.y0(173, 0);
                } else {
                    qt.y0(173, 1);
                }
            } else {
                qt.y0(173, 0);
            }
        } else {
            if (b2 != 120) {
                if (b2 == 121) {
                    int i46 = i2 + 2;
                    qt.y0(120, (bArr[i46] >> 7) & 1);
                    qt.y0(121, (bArr[i46] >> 2) & 31);
                    qt.y0(122, (bArr[i46] >> 1) & 1);
                    int i47 = i2 + 3;
                    qt.y0(123, (bArr[i47] >> 4) & 15);
                    qt.y0(124, (bArr[i47] >> 0) & 15);
                    qt.y0(178, (bArr[i2 + 5] >> 0) & 1);
                }
                return;
            }
            int i48 = bArr[i2 + 4] & 255;
            int i49 = bArr[i2 + 5] & 255;
            int i50 = bArr[i2 + 6] & 255;
            int i51 = bArr[i2 + 7] & 255;
            int i52 = bArr[i2 + 8] & 255;
            int i53 = bArr[i2 + 9] & 255;
            int i54 = bArr[i2 + 10] & 255;
            int i55 = bArr[i2 + 11] & 255;
            int i56 = bArr[i2 + 12] & 255;
            int i57 = bArr[i2 + 13] & 255;
            int i58 = bArr[i2 + 14] & 255;
            int i59 = bArr[i2 + 15] & 255;
            int i60 = bArr[i2 + 16] & 255;
            int i61 = bArr[i2 + 17] & 255;
            int i62 = bArr[i2 + 18] & 255;
            qt.y0(107, (((i48 >> 7) & 1) << 8) | ((i53 >> 5) & 7));
            qt.y0(108, (((i48 >> 6) & 1) << 8) | ((i53 >> 3) & 3));
            qt.y0(109, (((i48 >> 5) & 1) << 8) | ((i53 >> 2) & 1));
            qt.y0(110, (((i48 >> 4) & 1) << 8) | ((i53 >> 0) & 3));
            qt.y0(111, (((i48 >> 3) & 1) << 8) | ((i54 >> 6) & 3));
            qt.y0(112, (((i48 >> 2) & 1) << 8) | ((i54 >> 5) & 1));
            qt.y0(113, (((i48 >> 1) & 1) << 8) | ((i54 >> 4) & 1));
            qt.y0(114, (((i48 >> 0) & 1) << 8) | ((i54 >> 3) & 1));
            qt.y0(115, (((i49 >> 7) & 1) << 8) | ((i54 >> 2) & 1));
            qt.y0(116, (((i49 >> 6) & 1) << 8) | ((i54 >> 0) & 3));
            qt.y0(117, (((i49 >> 5) & 1) << 8) | ((i55 >> 5) & 7));
            qt.y0(118, (((i49 >> 4) & 1) << 8) | ((i55 >> 2) & 7));
            qt.y0(119, (((i49 >> 3) & 1) << 8) | ((i55 >> 1) & 1));
            qt.y0(125, (((i51 >> 3) & 1) << 8) | ((i55 >> 0) & 1));
            qt.y0(126, (((i50 >> 0) & 1) << 8) | ((i56 >> 7) & 1));
            int i63 = ((i49 >> 2) & 1) << 8;
            qt.y0(127, ((i56 >> 6) & 1) | i63);
            qt.y0(128, ((i56 >> 5) & 1) | i63);
            qt.y0(129, i63 | ((i56 >> 4) & 1));
            qt.y0(130, (((i49 >> 1) & 1) << 8) | ((i56 >> 3) & 1));
            qt.y0(131, (((i49 >> 0) & 1) << 8) | ((i56 >> 2) & 1));
            qt.y0(132, (((i50 >> 7) & 1) << 8) | ((i56 >> 0) & 3));
            qt.y0(133, (((i50 >> 6) & 1) << 8) | ((i57 >> 5) & 7));
            qt.y0(134, (((i50 >> 5) & 1) << 8) | ((i57 >> 4) & 1));
            qt.y0(135, (((i50 >> 4) & 1) << 8) | ((i57 >> 3) & 1));
            qt.y0(136, (((i50 >> 3) & 1) << 8) | ((i57 >> 1) & 3));
            qt.y0(137, (((i51 >> 2) & 1) << 8) | ((i57 >> 0) & 1));
            qt.y0(138, (((i50 >> 2) & 1) << 8) | ((i58 >> 7) & 1));
            int i64 = ((i50 >> 1) & 1) << 8;
            qt.y0(139, ((i58 >> 5) & 3) | i64);
            qt.y0(140, ((i58 >> 3) & 3) | 256);
            qt.y0(141, ((i58 >> 1) & 3) | 256);
            qt.y0(142, ((i58 >> 0) & 1) | 256);
            qt.y0(143, ((i59 >> 6) & 3) | 256);
            qt.y0(144, ((i59 >> 4) & 3) | 256);
            qt.y0(145, ((i59 >> 3) & 1) | 256);
            qt.y0(146, ((i59 >> 2) & 1) | 256);
            qt.y0(147, ((i59 >> 0) & 3) | 256);
            qt.y0(148, ((i60 >> 7) & 1) | 256);
            qt.y0(149, ((i60 >> 6) & 1) | 256);
            qt.y0(150, ((i60 >> 5) & 1) | 256);
            qt.y0(151, ((i60 >> 4) & 1) | 256);
            qt.y0(152, (((i51 >> 1) & 1) << 8) | ((i60 >> 3) & 1));
            qt.y0(153, (((i51 >> 0) & 1) << 8) | ((i60 >> 2) & 1));
            qt.y0(154, (((i52 >> 6) & 1) << 8) | ((i60 >> 0) & 3));
            qt.y0(155, i64 | ((i61 >> 6) & 3));
            qt.y0(156, (((i51 >> 7) & 1) << 8) | ((i61 >> 5) & 1));
            qt.y0(157, (((i51 >> 6) & 1) << 8) | ((i61 >> 3) & 3));
            qt.y0(158, (((i51 >> 5) & 1) << 8) | ((i61 >> 2) & 1));
            qt.y0(159, ((i61 >> 0) & 3) | (((i51 >> 4) & 1) << 8));
            qt.y0(160, (((i52 >> 7) & 1) << 8) | ((i62 >> 5) & 7));
            qt.y0(161, (((i52 >> 5) & 1) << 8) | (3 & (i62 >> 3)));
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f12157n.j();
        u0.c.f17386m.d(this.f12155l);
        l0.b0.p0(this.f12156m);
        qt.q0(l0.g0.f13048d);
        y0.g.f18094d.d(l0.g0.f13051g);
        y0.g.f18095e.d(l0.g0.f13051g);
        w0.e.f17815a.d(l0.g0.f13048d);
        w0.e.f17819e.d(l0.g0.f13048d);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 185) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    @Override // k0.lt, y.c
    public void Z0(int r17, int[] r18, float[] r19, java.lang.String[] r20) {
        /*
            Method dump skipped, instruction units count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k0.xj.Z0(int, int[], float[], java.lang.String[]):void");
    }

    public final void d3(int i2) {
        G = i2;
        qt.y0(166, i2);
        int iB = this.f12157n.b(7, 1000);
        int i3 = G;
        if (iB != i3) {
            this.f12157n.g(7, i3);
        }
    }

    public final void e3(int i2) {
        F = i2;
        qt.y0(169, i2);
        int iB = this.f12157n.b(6, 0);
        int i3 = F;
        if (iB != i3) {
            this.f12157n.g(6, i3);
        }
    }

    public final void f3(int i2) {
        B = i2;
        qt.y0(164, i2);
        int iB = this.f12157n.b(2, 1);
        int i3 = B;
        if (iB != i3) {
            this.f12157n.g(2, i3);
        }
    }

    public final void g3(int i2) {
        C = i2;
        qt.y0(163, i2);
        int iB = this.f12157n.b(3, 1000);
        int i3 = C;
        if (iB != i3) {
            this.f12157n.g(3, i3);
        }
    }

    public final void h3(int i2) {
        A = i2;
        qt.y0(167, i2);
        int iB = this.f12157n.b(1, 0);
        int i3 = A;
        if (iB != i3) {
            this.f12157n.g(1, i3);
        }
    }

    public final void i3(int i2) {
        E = i2;
        qt.y0(165, i2);
        int iB = this.f12157n.b(5, 1000);
        int i3 = E;
        if (iB != i3) {
            this.f12157n.g(5, i3);
        }
    }

    public final void j3(int i2) {
        D = i2;
        qt.y0(168, i2);
        int iB = this.f12157n.b(4, 0);
        int i3 = D;
        if (iB != i3) {
            this.f12157n.g(4, i3);
        }
    }

    public final boolean k3(int i2, int i3, int i4) {
        int i5 = (i2 >> 16) & 255;
        int i6 = (i2 >> 8) & 255;
        int i7 = i2 & 255;
        int i8 = (i3 >> 16) & 255;
        int i9 = (i3 >> 8) & 255;
        int i10 = i3 & 255;
        if (i8 > i5) {
            int i11 = i9 + ((i8 - i5) * 12);
            int i12 = i6 + i4;
            if (i11 > i12) {
                return true;
            }
            return i11 == i12 && i10 > i7;
        }
        if (i8 != i5) {
            return false;
        }
        int i13 = i6 + i4;
        if (i9 > i13) {
            return true;
        }
        return i9 == i13 && i10 > i7;
    }

    public final void x3(int i2) {
        z.k.s(227, 13, PackageManager.INSTALL_FAILED_USER_RESTRICTED, (byte) i2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    }

    public void y3(int i2) {
        if (i2 != 0) {
            qt.q0(l0.g0.f13048d);
            y0.g.f18094d.d(l0.g0.f13051g);
            y0.g.f18095e.d(l0.g0.f13051g);
            w0.e.f17815a.d(l0.g0.f13048d);
            w0.e.f17819e.d(l0.g0.f13048d);
            return;
        }
        qt.z(l0.g0.f13048d);
        y0.g.f18094d.a(l0.g0.f13051g, 0);
        y0.g.f18095e.a(l0.g0.f13051g, 0);
        w0.e.f17815a.a(l0.g0.f13048d, 1);
        w0.e.f17819e.a(l0.g0.f13048d, 1);
    }
}
