package k0;

import android.content.Intent;
import android.net.ProxyProperties;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.text.Spanned;
import app.App;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public class kp extends lt {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f7375k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7377c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7378d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 13}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 1}, new int[]{11, 12}, new int[]{12, 10}, new int[]{13, -1}, new int[]{14, 3}, new int[]{15, 28}, new int[]{16, 66}, new int[]{17, 4}, new int[]{18, 27}, new int[]{19, 65}, new int[]{20, -1}, new int[]{21, 7}, new int[]{22, 8}, new int[]{23, 0}, new int[]{24, 31}, new int[]{25, 30}, new int[]{26, 16}, new int[]{27, 4}, new int[]{28, 3}, new int[]{29, 74}, new int[]{30, 75}, new int[]{31, -1}, new int[]{32, 13}, new int[]{33, 21}, new int[]{34, 22}, new int[]{35, 53}, new int[]{36, 40}, new int[]{37, 41}, new int[]{38, 42}, new int[]{39, 43}, new int[]{40, 44}, new int[]{41, 40}, new int[]{42, 64}, new int[]{43, 6}, new int[]{44, 9}, new int[]{45, 18}, new int[]{46, 25}, new int[]{47, 58}, new int[]{48, 49}, new int[]{49, 40}, new int[]{50, 41}, new int[]{51, 42}, new int[]{52, 43}, new int[]{53, 44}, new int[]{54, 45}, new int[]{55, 46}, new int[]{56, 47}, new int[]{57, 48}, new int[]{58, 50}, new int[]{59, 51}, new int[]{60, -1}, new int[]{61, -1}, new int[]{62, -1}, new int[]{63, 38}, new int[]{64, 11}, new int[]{65, 56}, new int[]{66, 56}, new int[]{67, 55}, new int[]{68, 34}, new int[]{69, 35}, new int[]{70, 32}, new int[]{71, 33}, new int[]{72, 25}, new int[]{73, 62}, new int[]{74, 1}, new int[]{75, 72}, new int[]{76, 71}, new int[]{77, -1}, new int[]{78, 1}, new int[]{79, 5}, new int[]{80, 1}, new int[]{81, 13}, new int[]{82, 53}, new int[]{83, 34}, new int[]{84, 33}, new int[]{85, 35}, new int[]{86, 32}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7379e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public o1.g0 f7380f = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f7381g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7382h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f7383i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f7384j = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(kp.this.f7384j);
            kp.this.f7382h = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kp kpVar = kp.this;
            int i2 = kpVar.f7382h - 1;
            kpVar.f7382h = i2;
            if (i2 <= 0) {
                l0.b0.p0(kpVar.f7384j);
                kp.this.f7382h = 6;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            kp kpVar2 = kp.this;
            kpVar2.g3(kpVar2.f7380f.b(1, 0));
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8637c) {
                    case 237:
                        z.k.s(227, 198, 2, 14, 0);
                        break;
                    case 238:
                        z.k.s(227, 198, 2, 14, 1);
                        break;
                    case 239:
                        z.k.s(227, 198, 2, 14, 2);
                        break;
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
        this.f7380f.a();
        u0.c.f17386m.a(this.f7383i, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 0;
        if (nt.f8637c == 238) {
            mtVar.f8317l = 1;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f7377c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f7378d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f7377c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f7376b = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f7377c;
            if (i6 == 13) {
                if ((b4 & 255) == 1) {
                    d3();
                }
                return;
            }
            if (i6 == 31) {
                if ((b4 & 255) == 1) {
                    c3();
                    return;
                }
                return;
            }
            if (i6 == 77) {
                if ((b4 & 255) == 1) {
                    if (u0.b.f17347o == 0) {
                        qt.a(1);
                        return;
                    } else {
                        qt.a(0);
                        return;
                    }
                }
                return;
            }
            if (i6 == 24) {
                for (int i7 = 0; i7 < (b4 & 255); i7++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            if (i6 == 25) {
                for (int i8 = 0; i8 < (b4 & 255); i8++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            switch (i6) {
                case 20:
                    if ((b4 & 255) == 1) {
                        d3();
                    }
                    break;
                case 21:
                    for (int i9 = 0; i9 < (b4 & 255); i9++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                case 22:
                    for (int i10 = 0; i10 < (b4 & 255); i10++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                default:
                    int i11 = b4 & 255;
                    if (i11 == 1) {
                        if (i4 < iArr.length) {
                            l0.b0.l0(iArr[i4][1], 0);
                        }
                    } else if (i11 == 0) {
                        int i12 = this.f7376b;
                        if (i12 < iArr.length && i12 != 255) {
                            l0.b0.l0(iArr[i12][1], 1);
                        }
                        this.f7376b = 255;
                    }
                    break;
            }
        }
        if (b2 == 39) {
            int i13 = i2 + 2;
            qt.y0(10, (bArr[i13] >> 7) & 1);
            qt.y0(11, (bArr[i13] >> 6) & 1);
            qt.y0(12, (bArr[i13] >> 5) & 1);
            qt.y0(13, (bArr[i13] >> 3) & 1);
            qt.y0(14, (bArr[i13] >> 2) & 1);
            int i14 = i2 + 3;
            qt.y0(18, (bArr[i14] >> 7) & 1);
            qt.y0(19, (bArr[i14] >> 6) & 1);
            qt.y0(20, (bArr[i14] >> 5) & 1);
            int i15 = i2 + 4;
            int i16 = bArr[i15] & 255;
            int i17 = i2 + 5;
            int i18 = bArr[i17] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i16 = bArr[i17] & 255;
                i18 = bArr[i15] & 255;
            }
            int i19 = i2 + 6;
            int i20 = (bArr[i19] >> 0) & 1;
            if (i16 == 0) {
                qt.y0(27, -2);
            } else if (i16 == 32) {
                qt.y0(27, -3);
            } else if (i16 == 255) {
                qt.y0(27, -1);
            } else if (i20 == 1) {
                if (i16 < 1 || i16 > 31) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, (i16 * 10) + 590);
                }
            } else if (i16 >= 1 && i16 <= 29) {
                qt.y0(27, (i16 * 5) + 175);
            } else if (i16 < 48 || i16 > 51) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, ((i16 - 48) * 5) + 160);
            }
            if (i18 == 0) {
                qt.y0(28, -2);
            } else if (i18 == 32) {
                qt.y0(28, -3);
            } else if (i18 == 255) {
                qt.y0(28, -1);
            } else if (i20 == 1) {
                if (i18 < 1 || i18 > 31) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, (i18 * 10) + 590);
                }
            } else if (i18 >= 1 && i18 <= 29) {
                qt.y0(28, (i18 * 5) + 175);
            } else if (i18 < 48 || i18 > 51) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, ((i18 - 48) * 5) + 160);
            }
            qt.y0(65, (bArr[i19] >> 7) & 1);
            qt.y0(16, (bArr[i19] >> 6) & 1);
            qt.y0(34, (bArr[i19] >> 5) & 1);
            qt.y0(76, (bArr[i19] >> 4) & 1);
            qt.y0(37, (bArr[i19] >> 0) & 1);
            qt.y0(21, bArr[i2 + 8] & 255);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, GLES10.GL_AMBIENT);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i21 = i2 + 2;
                int i22 = bArr[i21] & 255;
                int i23 = i2 + 3;
                int i24 = bArr[i23] & 255;
                int i25 = i2 + 4;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 5;
                int i28 = bArr[i27] & 255;
                if (i22 == 0 && i24 == 0 && i26 == 0 && i28 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i22 || l0.c0.f13014h != i24 || l0.c0.f13015i != i26 || l0.c0.f13016j != i28) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i22;
                l0.c0.f13014h = i24;
                l0.c0.f13015i = i26;
                l0.c0.f13016j = i28;
                u0.d.D2(l0.c0.K0(bArr[i21] & 255));
                u0.d.E2(l0.c0.K0(bArr[i23] & 255));
                u0.d.F2(l0.c0.K0(bArr[i25] & 255));
                u0.d.G2(l0.c0.K0(bArr[i27] & 255));
                break;
            case 36:
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b5 >> 6) & 1);
                    qt.y0(1, (b5 >> 7) & 1);
                } else {
                    qt.y0(2, (b5 >> 7) & 1);
                    qt.y0(1, (b5 >> 6) & 1);
                }
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                qt.y0(0, (b5 >> 2) & 1);
                break;
            default:
                switch (b2) {
                    case 53:
                        qt.y0(103, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        int i29 = i2 + 10;
                        qt.y0(104, ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i29] << 8) & 65280) | (bArr[i2 + 11] & 255));
                        qt.y0(105, (bArr[i29] >> 7) & 1);
                        qt.y0(106, (bArr[i29] >> 6) & 1);
                        break;
                    case 54:
                        int i30 = i2 + 6;
                        qt.y0(108, ((bArr[i30] & 128) << 8) | ((bArr[i30] & 8) << 5) | (bArr[i2 + 2] & 255));
                        qt.y0(107, ((4 & bArr[i30]) << 6) | ((bArr[i30] & 64) << 9) | (bArr[i2 + 3] & 255));
                        qt.y0(110, ((bArr[i30] & 32) << 10) | ((2 & bArr[i30]) << 7) | (bArr[i2 + 4] & 255));
                        qt.y0(109, (bArr[i2 + 5] & 255) | ((bArr[i30] & 16) << 11) | ((bArr[i30] & 1) << 8));
                        break;
                    case 55:
                        qt.y0(99, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(100, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(101, ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                        qt.y0(102, (bArr[i2 + 10] & 255) | ((bArr[i2 + 9] << 8) & 65280));
                        break;
                    default:
                        switch (b2) {
                            case 59:
                                qt.y0(111, bArr[i2 + 2]);
                                qt.y0(112, bArr[i2 + 3]);
                                qt.y0(113, bArr[i2 + 4]);
                                qt.y0(114, bArr[i2 + 5]);
                                qt.y0(115, bArr[i2 + 6]);
                                int i31 = i2 + 7;
                                qt.y0(116, (bArr[i31] >> 5) & 1);
                                qt.y0(117, (bArr[i31] >> 4) & 1);
                                qt.y0(118, (bArr[i31] >> 0) & 15);
                                qt.y0(119, bArr[i2 + 8]);
                                break;
                            case 60:
                                byte b6 = bArr[i2 + 2];
                                if (b6 == 0) {
                                    qt.x0(120, ProxyProperties.LOCAL_EXCL_LIST);
                                    qt.x0(121, ProxyProperties.LOCAL_EXCL_LIST);
                                    break;
                                } else if (b6 == 1) {
                                    qt.x0(120, new String(bArr, i2 + 3, 16, Charset.forName("ascii")));
                                    break;
                                } else if (b6 == 2) {
                                    qt.x0(121, new String(bArr, i2 + 3, 16, Charset.forName("ascii")));
                                    break;
                                } else if (b6 == 3) {
                                    int i32 = i2 + 3;
                                    qt.y0(122, (bArr[i32] >> 0) & 1);
                                    qt.y0(123, (bArr[i32] >> 1) & 1);
                                    qt.y0(124, (bArr[i32] >> 2) & 1);
                                    qt.y0(125, (bArr[i32] >> 3) & 1);
                                    qt.y0(126, (bArr[i32] >> 4) & 1);
                                    qt.y0(127, (bArr[i32] >> 5) & 1);
                                    qt.y0(128, (bArr[i32] >> 6) & 1);
                                    qt.y0(129, (bArr[i32] >> 7) & 1);
                                    int i33 = i2 + 4;
                                    qt.y0(130, (bArr[i33] >> 0) & 1);
                                    qt.y0(131, (bArr[i33] >> 1) & 1);
                                    qt.y0(132, (bArr[i33] >> 2) & 1);
                                    qt.y0(133, (bArr[i33] >> 3) & 1);
                                    qt.y0(134, (bArr[i33] >> 4) & 1);
                                    qt.y0(135, (bArr[i33] >> 5) & 1);
                                    qt.y0(136, (bArr[i33] >> 6) & 1);
                                    qt.y0(137, (bArr[i33] >> 7) & 1);
                                    int i34 = i2 + 5;
                                    qt.y0(138, (bArr[i34] >> 0) & 1);
                                    qt.y0(139, (bArr[i34] >> 1) & 1);
                                    break;
                                }
                                break;
                            case 61:
                                if (this.f7382h == 6) {
                                    int i35 = i2 + 2;
                                    if (bArr[i35] != this.f7379e) {
                                        byte b7 = bArr[i35];
                                        this.f7379e = b7;
                                        if (b7 == 1) {
                                            f3();
                                        } else if (b7 == 2) {
                                            e3();
                                        } else if (b7 == 3) {
                                            l0.b0.l0(54, 0);
                                            l0.b0.l0(54, 1);
                                        }
                                    } else if (bArr[i35] == 2 && u0.b.D != 11) {
                                        e3();
                                    } else if (bArr[i35] == 1 && u0.b.D != 11) {
                                        f3();
                                    }
                                }
                                byte b8 = bArr[i2 + 2];
                                if (b8 == 1) {
                                    byte b9 = bArr[i2 + 3];
                                    if (b9 == 0) {
                                        qt.y0(141, bArr[i2 + 4] & 255);
                                        qt.y0(142, bArr[i2 + 5] & 255);
                                        qt.y0(143, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                                        break;
                                    } else if (b9 == 1) {
                                        qt.y0(144, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                                        qt.y0(145, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                                        qt.y0(146, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                                        qt.y0(147, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                                        qt.y0(148, ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
                                        qt.y0(149, (bArr[i2 + 16] & 255) | ((bArr[i2 + 15] << 8) & 65280));
                                        break;
                                    }
                                } else if (b8 == 2) {
                                    int i36 = i2 + 3;
                                    qt.y0(151, (bArr[i36] >> 5) & 1);
                                    qt.y0(152, (bArr[i36] >> 4) & 1);
                                    qt.y0(153, (bArr[i36] >> 3) & 1);
                                    qt.y0(154, (bArr[i36] >> 2) & 1);
                                    qt.y0(155, (bArr[i36] >> 1) & 1);
                                    qt.y0(156, (bArr[i36] >> 0) & 1);
                                    int i37 = i2 + 4;
                                    qt.y0(157, (bArr[i37] >> 4) & 15);
                                    qt.y0(158, (bArr[i37] >> 0) & 15);
                                    qt.y0(159, bArr[i2 + 5] & 255);
                                    qt.y0(160, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                                    qt.y0(161, bArr[i2 + 10] & 255);
                                    qt.y0(162, bArr[i2 + 11] & 255);
                                    break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f7380f.j();
        u0.c.f17386m.d(this.f7383i);
        l0.b0.p0(this.f7384j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 165) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                z.k.s(227, 197, 2, iArr[0], iArr[1]);
                break;
            case 1:
                if (iArr[0] == 24) {
                    g3(iArr[1]);
                } else {
                    z.k.s(227, 198, 3, iArr[0], iArr[1], iArr[2]);
                }
                break;
            case 2:
                z.k.s(227, 201, 2, iArr[0], iArr[1]);
                break;
            case 3:
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
                break;
            case 4:
                o1.u.z();
                break;
            case 5:
                z.k.s(227, 202, 1, iArr[0]);
                break;
            case 6:
                z.k.s(227, 199, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                break;
        }
    }

    public final void c3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.rzc.xima.LZ_Nissan08TeanaCd")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.xima.LZ_Nissan08TeanaCd");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void d3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.rzc.xima.LZ_Nissan08TeanaCarinfoAct")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.xima.LZ_Nissan08TeanaCarinfoAct");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void e3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.rzc.xima.LZ_Nissan08TeanaCd")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.xima.LZ_Nissan08TeanaCd");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void f3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.rzc.xima.LZ_Nissan08TeanaRadio")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.xima.LZ_Nissan08TeanaRadio");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void g3(int i2) {
        qt.y0(164, i2);
        z.k.s(227, 198, 3, 24, i2, 0);
        f7375k = i2;
        int iB = this.f7380f.b(1, 0);
        int i3 = f7375k;
        if (iB != i3) {
            this.f7380f.g(1, i3);
        }
    }
}
