package k0;

import android.content.pm.PackageManager;
import android.os.SystemProperties;
import java.util.Locale;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class sk extends lt {
    public static int A = 0;
    public static int B = 1;
    public static int C = 1;
    public static int D;
    public static int E;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f10305z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10307c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10308d = {new int[]{1, 12}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 8}, new int[]{5, 7}, new int[]{6, 12}, new int[]{9, 2}, new int[]{16, 1}, new int[]{17, 13}, new int[]{18, 18}, new int[]{19, 24}, new int[]{20, 54}, new int[]{21, -1}, new int[]{22, -1}, new int[]{23, -1}, new int[]{24, 58}, new int[]{25, 26}, new int[]{32, 5}, new int[]{33, 34}, new int[]{34, 35}, new int[]{35, 32}, new int[]{36, 33}, new int[]{37, 29}, new int[]{38, 6}, new int[]{39, 5}, new int[]{40, 5}, new int[]{64, 62}, new int[]{129, -1}, new int[]{130, -1}, new int[]{145, -1}, new int[]{146, -1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10309e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10310f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f10311g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f10312h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f10313i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10314j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10315k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f10316l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f10317m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public o1.g0 f10318n = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f10319o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f10320p = 2;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f10321q = 3;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f10322r = 4;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f10323s = 5;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f10324t = 6;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f10325u = 15;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f10326v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f10327w = new c();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f10328x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f10329y = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(sk.this.f10317m);
            sk skVar = sk.this;
            skVar.f10315k = 10;
            skVar.f10328x = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sk skVar = sk.this;
            int i2 = skVar.f10315k - 1;
            skVar.f10315k = i2;
            if (i2 <= 0) {
                l0.b0.p0(skVar.f10317m);
                sk.this.f10315k = 11;
                return;
            }
            z.k.s(227, 1, 129, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                sk skVar2 = sk.this;
                skVar2.c3(skVar2.f10318n.b(1, 1));
                sk skVar3 = sk.this;
                skVar3.e3(skVar3.f10318n.b(2, 0));
                sk skVar4 = sk.this;
                skVar4.f3(skVar4.f10318n.b(3, 1));
                sk skVar5 = sk.this;
                skVar5.d3(skVar5.f10318n.b(4, 0));
                sk skVar6 = sk.this;
                skVar6.b3(skVar6.f10318n.b(5, 0));
                sk skVar7 = sk.this;
                skVar7.p3(skVar7.f10318n.b(15, 0));
                sk skVar8 = sk.this;
                skVar8.o3(skVar8.f10318n.b(6, 0));
                switch (nt.f8633a) {
                    case 983486:
                        z.k.s(227, 2, 148, 0, 0);
                        break;
                    case 1049022:
                        z.k.s(227, 2, 148, 33, 0);
                        break;
                    case 1114558:
                        z.k.s(227, 2, 148, 34, 0);
                        break;
                    case 1442238:
                        z.k.s(227, 2, 148, 48, 0);
                        break;
                    case 1507774:
                        z.k.s(227, 2, 148, 49, 0);
                        break;
                    case 1573310:
                        z.k.s(227, 2, 148, 50, 0);
                        break;
                    case 1638846:
                        z.k.s(227, 2, 148, 51, 0);
                        break;
                    case 3211710:
                        z.k.s(227, 2, 148, 52, 0);
                        break;
                    case 3277246:
                        z.k.s(227, 2, 148, 53, 0);
                        break;
                    case 7012796:
                        z.k.s(227, 2, 148, 16, 0);
                        break;
                }
                if (o1.u.a0()) {
                    return;
                }
                z.k.s(227, 2, 146, 0, 0);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (sk.this.f10326v == 1) {
                z.k.s(227, 1, 144, 22);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sk skVar = sk.this;
            int i2 = skVar.f10328x + 1;
            skVar.f10328x = i2;
            if (i2 % 2 == 0) {
                if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                    z.k.s(227, 1, 144, 97);
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (i2 == 41) {
            if (iArr[1] != 0) {
                a3(5);
                return;
            }
            a3(6);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(7);
                return;
            } else {
                a3(8);
                return;
            }
        }
        if (i2 == 55) {
            if (iArr[1] < 15) {
                z.k.s(227, 3, -79, 160, 0, 0);
                return;
            }
            if (iArr[1] >= 18 && iArr[1] <= 32) {
                z.k.s(227, 3, -79, 160, 0, ((iArr[1] - 14) * 2) - 1);
                return;
            } else {
                if (iArr[1] > 32) {
                    z.k.s(227, 3, -79, 160, 0, 255);
                    return;
                }
                return;
            }
        }
        if (i2 == 56) {
            if (iArr[1] < 15) {
                z.k.s(227, 3, -79, 161, 0, 0);
                return;
            }
            if (iArr[1] >= 18 && iArr[1] <= 32) {
                z.k.s(227, 3, -79, 161, 0, ((iArr[1] - 14) * 2) - 1);
                return;
            } else {
                if (iArr[1] > 32) {
                    z.k.s(227, 3, -79, 161, 0, 255);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(2);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(14);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(4);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(3);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(14);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(14);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(16);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(15);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(18);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(17);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(19);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(20);
                }
                break;
            case 39:
                if (iArr[1] == -1) {
                    a3(9);
                } else if (iArr[1] != -2) {
                    z.k.s(227, 3, -79, 162, 0, iArr[1]);
                } else {
                    a3(11);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f10318n.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        mtVar.f8322q = 0;
        mtVar.f8314i = 1;
        mtVar.f8317l = 1;
        u0.c.f17386m.a(this.f10316l, 1);
        qt.y(this.f10327w);
        l0.b0.a(this.f10329y);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56, 59, 70};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        byte b2 = bArr[i2 + 1];
        if (b2 == 1) {
            int i6 = i2 + 2;
            qt.y0(118, (bArr[i6] >> 6) & 1);
            qt.y0(119, (bArr[i6] >> 7) & 1);
        }
        if (b2 == 18) {
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                int i7 = i2 + 6;
                qt.y0(1, (bArr[i7] >> 6) & 1);
                qt.y0(2, (bArr[i7] >> 7) & 1);
            } else {
                int i8 = i2 + 6;
                qt.y0(1, (bArr[i8] >> 7) & 1);
                qt.y0(2, (bArr[i8] >> 6) & 1);
            }
            int i9 = i2 + 6;
            qt.y0(3, (bArr[i9] >> 5) & 1);
            qt.y0(4, (bArr[i9] >> 4) & 1);
            qt.y0(5, (bArr[i9] >> 3) & 1);
            qt.y0(104, bArr[i2 + 5] & 255);
            int i10 = i2 + 7;
            qt.y0(106, bArr[i10] & 255);
            int i11 = i2 + 8;
            qt.y0(102, (bArr[i11] >> 6) & 3);
            int i12 = i2 + 10;
            qt.y0(98, bArr[i12] & 255);
            qt.y0(116, bArr[i2 + 4] & 255);
            qt.y0(109, bArr[i10] & 255);
            qt.y0(110, (bArr[i11] >> 6) & 3);
            qt.y0(111, (bArr[i11] >> 4) & 3);
            if (this.f10310f != ((bArr[i11] >> 3) & 1)) {
                int i13 = (bArr[i11] >> 3) & 1;
                this.f10310f = i13;
                int i14 = u0.b.f17357r0;
                if (i14 == 0) {
                    int i15 = this.f10309e;
                    if (i15 == 1 || i13 == 1) {
                        if (!o1.u.S(a.b.Q)) {
                            qt.y0(166, 1);
                            this.f10311g = true;
                            SystemProperties.set("persist.lesc.video.ignore", "true");
                            a.i.a0(200L);
                            o1.u.z();
                        }
                    } else if (i15 == 0 && i13 == 0) {
                        if (o1.u.S(a.b.Q) && this.f10311g) {
                            qt.y0(166, 0);
                            a.i.a0(350L);
                            SystemProperties.set("persist.lesc.video.ignore", "false");
                        }
                        this.f10311g = false;
                    }
                } else if (i14 == 1 && qt.k0()) {
                    byte b3 = bArr[i2 + 3];
                    int i16 = this.f10310f;
                    if (i16 == 1) {
                        if (b3 == 1) {
                            if (!o1.u.S("com.syu.fourcamera2")) {
                                this.f10311g = true;
                            }
                            qt.a(1);
                        } else if (!o1.u.S("com.syu.fourcamera2")) {
                            c.e.d().c(590);
                            this.f10311g = true;
                        }
                    } else if (this.f10309e == 0 && i16 == 0) {
                        if (this.f10311g && o1.u.S("com.syu.fourcamera2")) {
                            c.e.d().c(614);
                        }
                        this.f10311g = false;
                    }
                }
            }
            int i17 = i2 + 9;
            u0.d.B3(((bArr[i17] >> 7) & 1) == 1 ? 1000 - ((bArr[i17] & 127) * 5) : ((bArr[i17] & 127) * 5) + 1000);
            if (u0.b.P == 0) {
                if (bArr[i12] != 0) {
                    qt.b(1);
                    return;
                } else {
                    qt.b(0);
                    return;
                }
            }
            return;
        }
        if (b2 == 22) {
            int i18 = i2 + 2;
            int i19 = i2 + 3;
            qt.y0(105, ((bArr[i18] << 8) & 65280) | (bArr[i19] & 255));
            qt.y0(1031, ((bArr[i18] << 8) & 65280) | (bArr[i19] & 255));
            o1.x.C(nt.f8643f, 1049, new int[]{1, (bArr[i19] & 255) | ((bArr[i18] << 8) & 65280)}, null, null);
            qt.y0(107, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
            return;
        }
        if (b2 == 34) {
            this.f10307c = bArr[i2 + 2] & 255;
            int i20 = bArr[i2 + 3] & 255;
            int i21 = 0;
            while (true) {
                iArr = this.f10308d;
                if (i21 >= iArr.length) {
                    break;
                }
                int i22 = this.f10307c;
                if (i22 == iArr[i21][0]) {
                    if (i22 == 0) {
                        break;
                    }
                    this.f10306b = i21;
                    break;
                }
                i21++;
            }
            int i23 = this.f10307c;
            if (i23 == 4) {
                if (f10305z == 1 && (i20 & 255) == 1) {
                    l0.b0.l0(8, 0);
                    l0.b0.l0(8, 1);
                    return;
                }
                return;
            }
            if (i23 == 5) {
                if (f10305z == 1 && (i20 & 255) == 1) {
                    l0.b0.l0(7, 0);
                    l0.b0.l0(7, 1);
                    return;
                }
                return;
            }
            if (i23 == 129) {
                for (int i24 = 0; i24 < (i20 & 255); i24++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            if (i23 == 130) {
                for (int i25 = 0; i25 < (i20 & 255); i25++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            if (i23 == 145) {
                if (f10305z == 1) {
                    for (int i26 = 0; i26 < (i20 & 255); i26++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    return;
                }
                return;
            }
            if (i23 == 146) {
                if (f10305z == 1) {
                    for (int i27 = 0; i27 < (i20 & 255); i27++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    return;
                }
                return;
            }
            switch (i23) {
                case 48:
                    if ((i20 & 255) == 1) {
                        if (u0.b.f17357r0 != 0) {
                            if (o1.u.S("com.syu.fourcamera2")) {
                                c.e.d().c(614);
                            } else {
                                c.e.d().c(590);
                            }
                            break;
                        } else {
                            int i28 = this.f10310f;
                            if (i28 == 0) {
                                if (!o1.u.S(a.b.Q)) {
                                    o1.u.z();
                                    this.f10312h = true;
                                }
                                break;
                            } else if (i28 == 1 && this.f10312h && o1.u.S(a.b.Q)) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                                this.f10312h = false;
                                break;
                            }
                        }
                    }
                    break;
                case 49:
                    if ((i20 & 255) == 1) {
                        if (u0.b.f17357r0 != 0) {
                            c.e.d().c(591);
                        } else if (!o1.u.S(a.b.Q)) {
                            o1.u.z();
                        }
                    }
                    break;
                case 50:
                    if ((i20 & 255) == 1) {
                        if (u0.b.f17357r0 != 0) {
                            c.e.d().c(592);
                        } else if (!o1.u.S(a.b.Q)) {
                            o1.u.z();
                        }
                    }
                    break;
                case 51:
                    if ((i20 & 255) == 1) {
                        if (u0.b.f17357r0 != 0) {
                            c.e.d().c(595);
                        } else if (!o1.u.S(a.b.Q)) {
                            o1.u.z();
                        }
                    }
                    break;
                case 52:
                    if ((i20 & 255) == 1) {
                        if (u0.b.f17357r0 != 0) {
                            c.e.d().c(596);
                        } else if (!o1.u.S(a.b.Q)) {
                            o1.u.z();
                        }
                    }
                    break;
                default:
                    int i29 = i20 & 255;
                    if (i29 == 1) {
                        if (i21 < iArr.length) {
                            l0.b0.l0(iArr[i21][1], 0);
                        }
                    } else if (i29 == 0) {
                        int i30 = this.f10306b;
                        if (i30 < iArr.length) {
                            i4 = 255;
                            if (i30 != 255) {
                                l0.b0.l0(iArr[i30][1], 1);
                            }
                        } else {
                            i4 = 255;
                        }
                        this.f10306b = i4;
                    }
                    break;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 71) {
            qt.y0(112, bArr[i2 + 2] & 255);
            return;
        }
        if (b2 == 82) {
            int i31 = i2 + 2;
            qt.y0(120, (bArr[i31] >> 4) & 15);
            qt.y0(121, (bArr[i31] >> 0) & 15);
            qt.y0(122, (bArr[i2 + 3] >> 0) & 255);
            qt.y0(123, (bArr[i2 + 4] >> 0) & 255);
            int i32 = i2 + 5;
            qt.y0(124, (bArr[i32] >> 6) & 3);
            qt.y0(125, (bArr[i32] >> 4) & 3);
            qt.y0(126, (bArr[i32] >> 2) & 3);
            qt.y0(127, (bArr[i32] >> 0) & 3);
            int i33 = i2 + 6;
            qt.y0(128, (bArr[i33] >> 6) & 3);
            qt.y0(129, (bArr[i33] >> 4) & 3);
            qt.y0(130, (bArr[i33] >> 2) & 3);
            int i34 = i2 + 7;
            qt.y0(131, (bArr[i34] >> 7) & 1);
            qt.y0(132, (bArr[i34] >> 4) & 1);
            qt.y0(133, (bArr[i34] >> 0) & 15);
            int i35 = i2 + 8;
            qt.y0(134, (bArr[i35] >> 6) & 3);
            qt.y0(135, (bArr[i35] >> 4) & 3);
            qt.y0(136, (bArr[i35] >> 2) & 3);
            int i36 = (bArr[i31] >> 0) & 15;
            if (i36 != 0) {
                if (i36 == 1) {
                    qt.y0(137, bArr[i2 + 10] & 255);
                    return;
                }
                if (i36 != 3) {
                    if (i36 != 15) {
                        return;
                    }
                    int i37 = i2 + 10;
                    qt.y0(146, (bArr[i37] >> 7) & 1);
                    qt.y0(147, (bArr[i37] >> 6) & 1);
                    qt.x0(148, new String(bArr, i2 + 11, bArr[i37] & 31));
                    return;
                }
                qt.y0(139, bArr[i2 + 10] & 255);
                qt.y0(140, bArr[i2 + 11] & 255);
                qt.y0(141, bArr[i2 + 12] & 255);
                qt.y0(142, bArr[i2 + 13] & 255);
                qt.y0(143, bArr[i2 + 14] & 255);
                qt.y0(144, bArr[i2 + 15] & 255);
                qt.y0(145, bArr[i2 + 16] & 255);
                return;
            }
            int i38 = (bArr[i31] >> 4) & 15;
            if (i38 == 1) {
                qt.y0(149, bArr[i2 + 10] & 255);
                qt.y0(150, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                qt.y0(151, (bArr[i2 + 13] >> 7) & 1);
                return;
            }
            if (i38 == 2) {
                qt.y0(152, bArr[i2 + 10] & 255);
                qt.y0(153, bArr[i2 + 12] & 255);
                qt.y0(154, bArr[i2 + 14] & 255);
                qt.y0(155, bArr[i2 + 15] & 255);
                return;
            }
            if (i38 == 4) {
                qt.y0(156, bArr[i2 + 12] & 255);
                qt.y0(157, bArr[i2 + 14] & 255);
                qt.y0(158, bArr[i2 + 15] & 255);
                return;
            } else {
                if (i38 != 5) {
                    return;
                }
                qt.y0(159, bArr[i2 + 11] & 255);
                qt.y0(160, bArr[i2 + 13] & 255);
                qt.y0(161, bArr[i2 + 14] & 255);
                qt.y0(162, bArr[i2 + 15] & 255);
                return;
            }
        }
        if (b2 == 97) {
            byte b4 = bArr[i2 + 2];
            if (u0.b.f17357r0 == 0) {
                if (this.f10309e != b4) {
                    this.f10309e = b4;
                    if (b4 == 1 || (i5 = this.f10310f) == 1) {
                        qt.y0(166, 1);
                        if (!o1.u.S(a.b.Q)) {
                            this.f10311g = true;
                            SystemProperties.set("persist.lesc.video.ignore", "true");
                            a.i.a0(200L);
                            o1.u.z();
                        }
                    } else if (b4 == 0 && i5 == 0) {
                        qt.y0(166, 0);
                        if (o1.u.S(a.b.Q) && this.f10311g) {
                            a.i.a0(350L);
                            SystemProperties.set("persist.lesc.video.ignore", "false");
                        }
                        this.f10311g = false;
                    }
                }
            } else if (qt.k0() && this.f10309e != b4) {
                this.f10309e = b4;
                if (b4 == 1) {
                    qt.a(1);
                } else if (b4 == 0 && this.f10310f == 1) {
                    c.e.d().c(597);
                } else if (b4 == 0 && this.f10310f == 0) {
                    qt.a(0);
                }
            }
            if (u0.b.f17357r0 == 1) {
                int i39 = bArr[i2 + 4] & 255;
                int i40 = bArr[i2 + 5] & 255;
                int i41 = bArr[i2 + 6] & 255;
                int i42 = bArr[i2 + 7] & 255;
                if (i39 >= 10 && i40 >= 10 && i41 >= 10 && i42 >= 10) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i39 || l0.c0.f13014h != i40 || l0.c0.f13015i != i41 || l0.c0.f13016j != i42) && u0.b.f17347o == 0 && this.f10309e == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i39;
                l0.c0.f13014h = i40;
                l0.c0.f13015i = i41;
                l0.c0.f13016j = i42;
            }
            u0.d.D2(bArr[i2 + 4] & 255);
            u0.d.E2(bArr[i2 + 5] & 255);
            u0.d.F2(bArr[i2 + 6] & 255);
            u0.d.G2(bArr[i2 + 7] & 255);
            u0.d.R2(bArr[i2 + 8] & 255);
            u0.d.S2(bArr[i2 + 9] & 255);
            u0.d.T2(bArr[i2 + 10] & 255);
            u0.d.U2(bArr[i2 + 11] & 255);
            qt.l(bArr[i2 + 13], bArr[i2 + 12], true, 780);
            int i43 = i2 + 3;
            l0.c0.N1(bArr[i43] == 1 ? 1 : 0, bArr[i43] == 2 ? 1 : 0, bArr[i43] == 3 ? 1 : 0);
            return;
        }
        if (b2 == 98) {
            if (this.f10315k == 11) {
                byte b5 = bArr[i2 + 2];
                this.f10314j = b5;
                if (b5 == 1) {
                    if (o1.u.S(a.b.Q)) {
                        return;
                    }
                    o1.u.f(a.b.R);
                    return;
                } else {
                    if (o1.u.S(a.b.Q)) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        switch (b2) {
            case 36:
                int i44 = i2 + 2;
                qt.y0(37, (bArr[i44] >> 3) & 1);
                qt.y0(10, (bArr[i44] >> 2) & 1);
                qt.y0(14, (bArr[i44] >> 0) & 3);
                int i45 = i2 + 3;
                int i46 = bArr[i45] & 255;
                int i47 = i2 + 4;
                int i48 = bArr[i47] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i46 = bArr[i47] & 255;
                    i48 = bArr[i45] & 255;
                }
                int i49 = i46 & 255;
                if (i49 == 0) {
                    qt.y0(27, -2);
                } else if (i49 == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i49);
                }
                int i50 = i48 & 255;
                if (i50 == 0) {
                    qt.y0(28, -2);
                } else if (i50 == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i50);
                }
                int i51 = i2 + 5;
                qt.y0(49, (bArr[i51] >> 7) & 1);
                qt.y0(18, (bArr[i51] >> 6) & 1);
                qt.y0(19, (bArr[i51] >> 5) & 1);
                qt.y0(20, (bArr[i51] >> 4) & 1);
                int i52 = i2 + 6;
                qt.y0(77, (bArr[i52] >> 4) & 15);
                qt.y0(21, (bArr[i52] >> 0) & 15);
                int i53 = i2 + 7;
                qt.y0(12, (bArr[i53] >> 7) & 1);
                qt.y0(11, (bArr[i53] >> 5) & 1);
                int i54 = i2 + 8;
                qt.y0(29, (bArr[i54] >> 4) & 3);
                qt.y0(30, (bArr[i54] >> 0) & 3);
                int i55 = i2 + 9;
                qt.y0(31, (bArr[i55] >> 4) & 3);
                qt.y0(32, (bArr[i55] >> 0) & 3);
                int i56 = i2 + 10;
                qt.y0(50, (bArr[i56] >> 7) & 1);
                qt.y0(22, (bArr[i56] >> 6) & 1);
                qt.y0(23, (bArr[i56] >> 5) & 1);
                qt.y0(24, (bArr[i56] >> 4) & 1);
                int i57 = i2 + 11;
                qt.y0(87, (bArr[i57] >> 4) & 15);
                qt.y0(25, (bArr[i57] >> 0) & 15);
                break;
            case 37:
                int i58 = i2 + 2;
                qt.y0(10, (bArr[i58] >> 7) & 1);
                qt.y0(11, (bArr[i58] >> 6) & 1);
                qt.y0(12, (bArr[i58] >> 4) & 3);
                qt.y0(13, (bArr[i58] >> 2) & 3);
                qt.y0(65, (bArr[i58] >> 1) & 1);
                qt.y0(16, (bArr[i58] >> 0) & 1);
                int i59 = i2 + 3;
                qt.y0(15, (bArr[i59] >> 7) & 1);
                qt.y0(14, (bArr[i59] >> 6) & 1);
                qt.y0(72, (bArr[i59] >> 5) & 1);
                int i60 = i2 + 4;
                qt.y0(18, (bArr[i60] >> 7) & 1);
                qt.y0(19, (bArr[i60] >> 6) & 1);
                qt.y0(20, (bArr[i60] >> 5) & 1);
                qt.y0(21, (bArr[i60] >> 0) & 15);
                int i61 = i2 + 5;
                int i62 = bArr[i61] & 255;
                int i63 = i2 + 6;
                int i64 = bArr[i63] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i62 = bArr[i63] & 255;
                    i64 = bArr[i61] & 255;
                }
                int i65 = i62 & 255;
                if (i65 == 0) {
                    qt.y0(27, -2);
                } else if (i65 == 128) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i65);
                }
                int i66 = i64 & 255;
                if (i66 == 0) {
                    qt.y0(28, -2);
                } else if (i66 == 128) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i66);
                }
                int i67 = i2 + 8;
                qt.y0(49, (bArr[i67] >> 7) & 1);
                qt.y0(33, (bArr[i67] >> 6) & 1);
                if ((bArr[i2 + 9] & 255) == 120) {
                    int i68 = i2 + 10;
                    qt.y0(22, (bArr[i68] >> 7) & 1);
                    qt.y0(23, (bArr[i68] >> 6) & 1);
                    qt.y0(24, (bArr[i68] >> 5) & 1);
                    qt.y0(25, (bArr[i68] >> 0) & 15);
                }
                break;
            case 38:
                int i69 = i2 + 2;
                qt.y0(29, (bArr[i69] >> 4) & 7);
                qt.y0(30, (bArr[i69] >> 0) & 7);
                int i70 = i2 + 3;
                qt.y0(31, (bArr[i70] >> 4) & 7);
                qt.y0(32, (bArr[i70] >> 0) & 7);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f10318n.j();
        u0.c.f17386m.d(this.f10316l);
        qt.p0(this.f10327w);
        l0.b0.o0(this.f10329y);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 168) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                d3(iArr[0]);
                break;
            case 1:
                z.k.s(227, 2, -110, iArr[0], 0);
                break;
            case 2:
                z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_MANIFEST_EMPTY, iArr[0], 0);
                break;
            case 3:
                z.k.s(227, 1, -119, iArr[0]);
                break;
            case 4:
                switch (iArr[0]) {
                    case 1:
                        c3(iArr[1]);
                        break;
                    case 2:
                        e3(iArr[1]);
                        break;
                    case 3:
                        f3(iArr[1]);
                        break;
                    case 4:
                        b3(iArr[1]);
                        break;
                    case 5:
                        p3(iArr[1]);
                        break;
                    case 6:
                        o3(iArr[1]);
                        break;
                }
                break;
            case 5:
                z.k.s(227, 10, -80, iArr[0], iArr[1], iArr[2], iArr[3], 0, iArr[4], iArr[5], iArr[6], iArr[7], iArr[8]);
                break;
            case 6:
                this.f10326v = iArr[0];
                break;
            case 7:
                z.k.s(227, 3, -63, iArr[0], iArr[1], iArr[2]);
                break;
            case 8:
                z.k.s(227, 2, -62, iArr[0], iArr[1]);
                break;
            case 9:
                z.k.s(227, 2, -78, iArr[0], iArr[1]);
                break;
            case 10:
                qt.y0(163, 0);
                qt.y0(165, iArr[0]);
                break;
            case 11:
                z.k.s(227, 3, -79, iArr[0], iArr[1], iArr[2]);
                break;
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 3, -79, i2, 1, 0);
        a.i.a0(200L);
        z.k.s(227, 3, -79, i2, 0, 0);
    }

    public final void b3(int i2) {
        D = i2;
        qt.y0(117, i2);
        int iB = this.f10318n.b(5, 0);
        int i3 = D;
        if (iB != i3) {
            this.f10318n.g(5, i3);
        }
    }

    public final void c3(int i2) {
    }

    public final void d3(int i2) {
        C = i2;
        qt.y0(112, i2);
        z.k.s(227, 1, -121, i2);
        int iB = this.f10318n.b(4, 0);
        int i3 = C;
        if (iB != i3) {
            this.f10318n.g(4, i3);
        }
    }

    public final void e3(int i2) {
        A = i2;
        qt.y0(114, i2);
        int iB = this.f10318n.b(2, 0);
        int i3 = A;
        if (iB != i3) {
            this.f10318n.g(2, i3);
            SystemProperties.set("persist.sys.splitscreenon", String.format(Locale.US, "%d", Integer.valueOf(A)));
        }
    }

    public final void f3(int i2) {
        B = i2;
        qt.y0(115, i2);
        qt.y0(1038, B);
        int iB = this.f10318n.b(3, 1);
        int i3 = B;
        if (iB != i3) {
            this.f10318n.g(3, i3);
        }
    }

    public final void o3(int i2) {
        qt.y0(167, i2);
        E = i2;
        int iB = this.f10318n.b(6, 0);
        int i3 = E;
        if (iB != i3) {
            this.f10318n.g(6, i3);
        }
    }

    public final void p3(int i2) {
        qt.y0(164, i2);
        f10305z = i2;
        int iB = this.f10318n.b(15, 0);
        int i3 = f10305z;
        if (iB != i3) {
            this.f10318n.g(15, i3);
        }
    }
}
