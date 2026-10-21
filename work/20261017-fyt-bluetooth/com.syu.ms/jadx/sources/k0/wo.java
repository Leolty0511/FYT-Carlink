package k0;

import android.opengl.GLES10;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class wo extends lt {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f11823n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f11824o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f11825p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11827c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11828d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 13}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 1}, new int[]{11, 12}, new int[]{12, -1}, new int[]{13, 63}, new int[]{14, 3}, new int[]{15, 28}, new int[]{16, 66}, new int[]{17, 4}, new int[]{18, 27}, new int[]{19, 65}, new int[]{20, 63}, new int[]{21, 7}, new int[]{22, 8}, new int[]{23, 0}, new int[]{24, 31}, new int[]{25, 30}, new int[]{26, 29}, new int[]{27, -1}, new int[]{28, -1}, new int[]{29, 74}, new int[]{30, 75}, new int[]{31, -1}, new int[]{32, 54}, new int[]{33, 21}, new int[]{34, 22}, new int[]{35, 53}, new int[]{36, 40}, new int[]{37, 41}, new int[]{38, 42}, new int[]{39, 43}, new int[]{40, 44}, new int[]{41, 45}, new int[]{42, 64}, new int[]{43, 6}, new int[]{44, 9}, new int[]{45, 18}, new int[]{46, 25}, new int[]{47, 58}, new int[]{48, 49}, new int[]{49, 40}, new int[]{50, 41}, new int[]{51, 42}, new int[]{52, 43}, new int[]{53, 44}, new int[]{54, 45}, new int[]{55, 46}, new int[]{56, 47}, new int[]{57, 48}, new int[]{58, 50}, new int[]{59, 51}, new int[]{60, -1}, new int[]{61, 31}, new int[]{62, 30}, new int[]{63, 38}, new int[]{64, 11}, new int[]{65, 56}, new int[]{66, 56}, new int[]{67, 55}, new int[]{68, 34}, new int[]{69, 35}, new int[]{70, 32}, new int[]{71, 33}, new int[]{72, 25}, new int[]{73, 62}, new int[]{74, 1}, new int[]{75, 72}, new int[]{76, 71}, new int[]{77, -1}, new int[]{78, 1}, new int[]{79, 1}, new int[]{80, 1}, new int[]{81, 38}, new int[]{82, 53}, new int[]{83, 34}, new int[]{84, 33}, new int[]{85, 35}, new int[]{86, 32}, new int[]{87, 30}, new int[]{88, 31}, new int[]{89, 54}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f11829e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f11830f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o1.g0 f11831g = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11832h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11833i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11834j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11835k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f11836l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f11837m = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wo.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            int i2 = time.hour;
            if (!zIs24HourFormat && i2 > 12) {
                i2 -= 12;
            }
            z.k.s(227, -121, 2, i2, time.minute);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(wo.this.f11837m);
            wo.this.f11835k = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wo woVar = wo.this;
            int i2 = woVar.f11835k - 1;
            woVar.f11835k = i2;
            if (i2 <= 0) {
                l0.b0.p0(woVar.f11837m);
                wo.this.f11835k = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                wo woVar2 = wo.this;
                woVar2.f3(woVar2.f11831g.b(1, 0));
                wo woVar3 = wo.this;
                woVar3.g3(woVar3.f11831g.b(1, 0));
                wo woVar4 = wo.this;
                woVar4.h3(woVar4.f11831g.b(2, 0));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0097  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a3 A[LOOP:1: B:48:0x00a1->B:49:0x00a3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:51:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:55:? A[RETURN, SYNTHETIC] */
    public static void a3() {
        int[] iArr;
        int[] iArr2 = new int[7];
        int i2 = 0;
        for (int i3 = 0; i3 < 7; i3++) {
            iArr2[i3] = 0;
        }
        iArr2[0] = 203;
        boolean z2 = true;
        iArr2[1] = 5;
        int i4 = u0.b.D;
        if (i4 == 1) {
            iArr2[2] = 1;
            int i5 = w0.d.f17796h;
            if (i5 == 65536 || i5 == 65537 || i5 == 65538) {
                iArr2[3] = 1;
            } else if (i5 == 0 || i5 == 1) {
                iArr2[3] = 16;
            }
            if (i5 < 65536 || i5 > 65538) {
                int i6 = w0.d.f17797i;
                iArr2[4] = (i6 >> 8) & 255;
                iArr2[5] = i6 & 255;
            } else {
                int i7 = w0.d.f17797i;
                iArr2[4] = (i7 >> 8) & 255;
                iArr2[5] = i7 & 255;
            }
            int i8 = w0.d.f17798j;
            int i9 = i8 % 6;
            if (i9 != 0 || i8 == 0) {
                iArr2[6] = i9;
            } else {
                iArr2[6] = 6;
            }
            int i10 = w0.d.f17796h;
            if (i10 == 65536 || i10 == 65537 || i10 == 65538 ? w0.d.f17797i >= 2000 : (i10 != 0 && i10 != 1) || w0.d.f17797i <= 2000) {
            }
            if (u0.b.f17306a0 == 0) {
                iArr2[2] = 0;
            }
            iArr = new int[8];
            iArr[0] = 227;
            while (i2 < 7) {
                int i11 = i2 + 1;
                iArr[i11] = iArr2[i2];
                i2 = i11;
            }
            if (z2) {
            }
            z.k.s(iArr);
        }
        if (i4 != 5) {
            switch (i4) {
                case 8:
                case 9:
                case 10:
                    iArr2[2] = 3;
                    iArr2[3] = u0.b.r3;
                    break;
                default:
                    iArr2[2] = 4;
                    break;
            }
        } else {
            iArr2[2] = 4;
        }
        z2 = false;
        if (u0.b.f17306a0 == 0) {
            iArr2[2] = 0;
        }
        iArr = new int[8];
        iArr[0] = 227;
        while (i2 < 7) {
            int i12 = i2 + 1;
            iArr[i12] = iArr2[i2];
            i2 = i12;
        }
        if (z2) {
            z.k.s(iArr);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f11831g.a();
        u0.c.f17386m.a(this.f11836l, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8313h = 0;
        mtVar.f8317l = 0;
        mtVar.f8314i = 1;
        int i2 = nt.f8633a;
        if (i2 == 4653511 || i2 == 13894087) {
            mtVar.f8313h = 2;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            if (a.f.w() >= 1080) {
                this.f7886a.f8314i = 1;
            } else {
                this.f7886a.f8314i = 0;
            }
        }
        qt.z(this.f11830f);
        qt.z(this.f11829e);
        w0.e.f17815a.a(this.f11829e, 1);
        w0.e.f17819e.a(this.f11829e, 1);
        u0.c.f17392s.a(this.f11829e, 1);
        u0.c.f17374a.a(this.f11829e, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f11827c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f11828d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f11827c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f11826b = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f11827c;
            if (i6 == 21) {
                for (int i7 = 0; i7 < (b4 & 255); i7++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
            }
            if (i6 == 22) {
                for (int i8 = 0; i8 < (b4 & 255); i8++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (i6 != 24) {
                if (i6 != 25) {
                    if (i6 != 61) {
                        if (i6 != 62) {
                            if (i6 == 77) {
                                int i9 = b4 & 255;
                                if (i9 == 1) {
                                    if (!qt.k0()) {
                                        if (u0.b.f17347o == 1) {
                                            qt.a(0);
                                            return;
                                        } else {
                                            qt.a(1);
                                            return;
                                        }
                                    }
                                    if (i9 == 1) {
                                        if (o1.u.S("com.syu.fourcamera2")) {
                                            c.e.d().c(614);
                                            return;
                                        } else {
                                            c.e.d().c(590);
                                            return;
                                        }
                                    }
                                    return;
                                }
                                return;
                            }
                            if (i6 != 87) {
                                if (i6 != 88) {
                                    if ((b4 & 255) != 0) {
                                        if (i4 < iArr.length) {
                                            l0.b0.l0(iArr[i4][1], 0);
                                            return;
                                        }
                                        return;
                                    } else {
                                        int i10 = this.f11826b;
                                        if (i10 < iArr.length && i10 != 255) {
                                            l0.b0.l0(iArr[i10][1], 1);
                                        }
                                        this.f11826b = 255;
                                        return;
                                    }
                                }
                            }
                        }
                    }
                }
                for (int i11 = 0; i11 < (b4 & 255); i11++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            for (int i12 = 0; i12 < (b4 & 255); i12++) {
                l0.b0.l0(31, 0);
            }
            l0.b0.l0(31, 1);
            return;
        }
        if (b2 == 39) {
            int i13 = bArr[i2 + 2] & 255;
            qt.y0(11, (i13 >> 6) & 1);
            qt.y0(12, (i13 >> 5) & 1);
            qt.y0(54, (i13 >> 4) & 1);
            qt.y0(14, (i13 >> 2) & 1);
            qt.y0(38, (i13 >> 1) & 1);
            qt.y0(72, (i13 >> 0) & 1);
            int i14 = bArr[i2 + 3] & 255;
            qt.y0(18, (i14 >> 7) & 1);
            qt.y0(19, (i14 >> 6) & 1);
            qt.y0(20, (i14 >> 5) & 1);
            qt.y0(46, (i14 >> 4) & 1);
            qt.y0(47, (i14 >> 3) & 1);
            int i15 = (i14 >> 2) & 1;
            qt.y0(43, i15);
            int i16 = (i14 >> 1) & 1;
            qt.y0(42, i16);
            int i17 = (i14 >> 0) & 1;
            qt.y0(67, i17);
            int i18 = i2 + 6;
            qt.y0(65, (bArr[i18] >> 7) & 1);
            qt.y0(16, (bArr[i18] >> 6) & 1);
            qt.y0(44, (bArr[i18] >> 1) & 7);
            qt.y0(37, (bArr[i18] >> 0) & 1);
            if (bArr[i2 + 1] >= 9) {
                int i19 = i2 + 10;
                qt.y0(29, (bArr[i19] >> 6) & 3);
                qt.y0(31, (bArr[i19] >> 4) & 3);
                qt.y0(30, (bArr[i19] >> 2) & 3);
                qt.y0(32, (bArr[i19] >> 0) & 3);
            }
            int i20 = i2 + 7;
            int i21 = bArr[i20] & 255;
            if (i21 == 0) {
                qt.y0(40, -2);
            } else if (i21 == 32) {
                qt.y0(40, -3);
            } else if (i21 != 255) {
                qt.y0(40, bArr[i20] & 255);
            } else {
                qt.y0(40, -1);
            }
            if (i17 == 1) {
                qt.y0(10, i16);
                qt.y0(13, i15);
                qt.y0(21, 7 & (bArr[i18] >> 1));
                int i22 = bArr[i20] & 255;
                int i23 = bArr[i20] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i22 = bArr[i20] & 255;
                    i23 = bArr[i20] & 255;
                }
                if (i22 == 0) {
                    qt.y0(27, -2);
                } else if (i22 == 32) {
                    qt.y0(27, -3);
                } else if (i22 == 255) {
                    qt.y0(27, -1);
                } else if (((bArr[i18] >> 0) & 1) == 1) {
                    qt.y0(27, (i22 * 10) + 590);
                } else if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                    qt.y0(27, ((((i22 * 5) + 175) * 9) / 5) + 320);
                } else {
                    qt.y0(27, (i22 * 5) + 175);
                }
                if (i23 == 0) {
                    qt.y0(28, -2);
                    return;
                }
                if (i23 == 32) {
                    qt.y0(28, -3);
                    return;
                }
                if (i23 == 255) {
                    qt.y0(28, -1);
                    return;
                }
                if (((bArr[i18] >> 0) & 1) == 1) {
                    qt.y0(28, (i23 * 10) + 590);
                    return;
                } else if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                    qt.y0(28, ((((i23 * 5) + 175) * 9) / 5) + 320);
                    return;
                } else {
                    qt.y0(28, (i23 * 5) + 175);
                    return;
                }
            }
            qt.y0(10, (i13 >> 7) & 1);
            qt.y0(13, (i13 >> 3) & 1);
            qt.y0(21, bArr[i2 + 8] & 255);
            int i24 = i2 + 4;
            int i25 = bArr[i24] & 255;
            int i26 = i2 + 5;
            int i27 = bArr[i26] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i25 = bArr[i26] & 255;
                i27 = bArr[i24] & 255;
            }
            if (i25 == 0) {
                qt.y0(27, -2);
            } else if (i25 == 32) {
                qt.y0(27, -3);
            } else if (i25 == 255) {
                qt.y0(27, -1);
            } else if (((bArr[i18] >> 0) & 1) == 1) {
                qt.y0(27, (i25 * 10) + 590);
            } else if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                qt.y0(27, ((((i25 * 5) + 175) * 9) / 5) + 320);
            } else {
                qt.y0(27, (i25 * 5) + 175);
            }
            if (i27 == 0) {
                qt.y0(28, -2);
                return;
            }
            if (i27 == 32) {
                qt.y0(28, -3);
                return;
            }
            if (i27 == 255) {
                qt.y0(28, -1);
                return;
            }
            if (((bArr[i18] >> 0) & 1) == 1) {
                qt.y0(28, (i27 * 10) + 590);
                return;
            } else if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                qt.y0(28, ((((i27 * 5) + 175) * 9) / 5) + 320);
                return;
            } else {
                qt.y0(28, (i27 * 5) + 175);
                return;
            }
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, GLES10.GL_AMBIENT);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 51) {
            qt.y0(102, bArr[i2 + 2] & 255);
            qt.y0(103, bArr[i2 + 3] & 255);
            qt.y0(104, bArr[i2 + 4] & 255);
            return;
        }
        if (b2 == 58) {
            int i28 = i2 + 2;
            qt.y0(124, (bArr[i28] >> 0) & 15);
            qt.y0(125, (bArr[i28] >> 7) & 1);
            qt.y0(126, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == 59) {
            qt.y0(134, bArr[i2 + 2]);
            qt.y0(135, bArr[i2 + 3]);
            qt.y0(136, bArr[i2 + 4]);
            qt.y0(137, bArr[i2 + 5]);
            qt.y0(138, bArr[i2 + 6]);
            int i29 = i2 + 7;
            qt.y0(139, (bArr[i29] >> 5) & 1);
            qt.y0(140, (bArr[i29] >> 4) & 1);
            qt.y0(141, (bArr[i29] >> 0) & 15);
            qt.y0(142, bArr[i2 + 8]);
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
                int i30 = i2 + 2;
                int i31 = bArr[i30] & 255;
                int i32 = i2 + 3;
                int i33 = bArr[i32] & 255;
                int i34 = i2 + 4;
                int i35 = bArr[i34] & 255;
                int i36 = i2 + 5;
                int i37 = bArr[i36] & 255;
                if (i31 == 0 && i33 == 0 && i35 == 0 && i37 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i31 || l0.c0.f13014h != i33 || l0.c0.f13015i != i35 || l0.c0.f13016j != i37) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i31;
                l0.c0.f13014h = i33;
                l0.c0.f13015i = i35;
                l0.c0.f13016j = i37;
                u0.d.D2(l0.c0.K0(bArr[i30] & 255));
                u0.d.E2(l0.c0.K0(bArr[i32] & 255));
                u0.d.F2(l0.c0.K0(bArr[i34] & 255));
                u0.d.G2(l0.c0.K0(bArr[i36] & 255));
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
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                qt.y0(0, (b5 >> 2) & 1);
                int i38 = i2 + 3;
                if (((bArr[i38] >> 6) & 1) == 1) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    l0.c0.b((bArr[i38] >> 5) & 1, (bArr[i38] >> 4) & 1, 0);
                } else {
                    l0.c0.a((bArr[i38] >> 5) & 1, (bArr[i38] >> 4) & 1, 0);
                }
                break;
            default:
                switch (b2) {
                    case 53:
                        qt.y0(105, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(133, (bArr[i2 + 11] & 255) | ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 10] << 8) & 65280));
                        break;
                    case 54:
                        int i39 = i2 + 6;
                        qt.y0(106, ((((bArr[i39] >> 7) & 1) << 9) & 512) | ((((bArr[i39] >> 3) & 1) << 8) & 256) | (bArr[i2 + 2] & 255));
                        qt.y0(107, ((((bArr[i39] >> 2) & 1) << 8) & 256) | ((((bArr[i39] >> 6) & 1) << 9) & 512) | (bArr[i2 + 3] & 255));
                        qt.y0(108, ((((bArr[i39] >> 5) & 1) << 9) & 512) | ((((bArr[i39] >> 1) & 1) << 8) & 256) | (bArr[i2 + 4] & 255));
                        qt.y0(109, (bArr[i2 + 5] & 255) | ((((bArr[i39] >> 0) & 1) << 8) & 256) | ((((bArr[i39] >> 4) & 1) << 9) & 512));
                        break;
                    case 55:
                        qt.y0(98, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(100, ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                        qt.y0(101, (bArr[i2 + 10] & 255) | ((bArr[i2 + 9] << 8) & 65280));
                        break;
                    case 56:
                        qt.y0(129, bArr[i2 + 2] & 255);
                        qt.y0(130, bArr[i2 + 3] & 255);
                        qt.y0(110, bArr[i2 + 4] & 255);
                        qt.y0(111, bArr[i2 + 8] & 255);
                        qt.y0(112, bArr[i2 + 9] & 255);
                        qt.y0(113, bArr[i2 + 10] & 255);
                        int i40 = i2 + 13;
                        qt.y0(114, (bArr[i40] >> 7) & 1);
                        qt.y0(115, (bArr[i40] >> 6) & 1);
                        qt.y0(116, (bArr[i40] >> 5) & 1);
                        qt.y0(117, (bArr[i40] >> 4) & 1);
                        qt.y0(118, (bArr[i40] >> 3) & 1);
                        qt.y0(119, (bArr[i40] >> 2) & 1);
                        qt.y0(120, (bArr[i40] >> 1) & 1);
                        qt.y0(143, (bArr[i40] >> 0) & 1);
                        int i41 = i2 + 14;
                        qt.y0(121, (bArr[i41] >> 6) & 3);
                        qt.y0(122, (bArr[i41] >> 2) & 3);
                        qt.y0(123, (bArr[i41] >> 0) & 3);
                        int i42 = i2 + 15;
                        qt.y0(131, (bArr[i42] >> 7) & 1);
                        qt.y0(132, (bArr[i42] >> 6) & 1);
                        qt.y0(144, (bArr[i42] >> 5) & 1);
                        qt.y0(145, (bArr[i42] >> 4) & 1);
                        qt.y0(146, (bArr[i42] >> 3) & 1);
                        qt.y0(147, (bArr[i42] >> 2) & 1);
                        qt.y0(148, (bArr[i42] >> 1) & 1);
                        int i43 = i2 + 16;
                        qt.y0(149, (bArr[i43] >> 6) & 3);
                        qt.y0(150, (bArr[i43] >> 5) & 1);
                        qt.y0(151, bArr[i2 + 17] & 255);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f11831g.j();
        l0.b0.p0(this.f11837m);
        u0.c.f17386m.d(this.f11836l);
        qt.q0(this.f11830f);
        qt.q0(this.f11829e);
        w0.e.f17815a.d(this.f11829e);
        w0.e.f17819e.d(this.f11829e);
        u0.c.f17392s.d(this.f11829e);
        u0.c.f17374a.d(this.f11829e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 153) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr[0] == 255) {
                f3(iArr[1]);
                return;
            } else if (iArr[0] == 254) {
                g3(iArr[1]);
                return;
            } else {
                z.k.s(227, 198, 3, iArr[0], iArr[1], iArr[2]);
                return;
            }
        }
        if (i2 == 2) {
            z.k.s(227, 197, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 201, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1003) {
            z.k.s(227, 198, 3, 32, 0, 0);
            return;
        }
        if (i2 != 1029) {
            return;
        }
        int iW = (iArr[1] * 800) / a.f.w();
        int i3 = (iArr[2] * 480) / a.f.i();
        if (iArr[0] == 0) {
            z.k.s(227, 199, 5, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 1);
        } else if (iArr[0] == 1) {
            z.k.s(227, 199, 5, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
        }
    }

    public final void f3(int i2) {
        qt.y0(127, i2);
        z.k.s(227, 198, 3, 24, i2, 0);
        f11823n = i2;
        int iB = this.f11831g.b(1, 0);
        int i3 = f11823n;
        if (iB != i3) {
            this.f11831g.g(1, i3);
        }
    }

    public final void g3(int i2) {
        qt.y0(152, i2);
        z.k.s(227, 198, 3, 25, i2, 0);
        f11824o = i2;
        int iB = this.f11831g.b(1, 0);
        int i3 = f11824o;
        if (iB != i3) {
            this.f11831g.g(1, i3);
        }
    }

    public final void h3(int i2) {
        qt.y0(128, i2);
        f11825p = i2;
        int iB = this.f11831g.b(2, 0);
        int i3 = f11825p;
        if (iB != i3) {
            this.f11831g.g(2, i3);
        }
    }
}
