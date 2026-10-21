package k0;

import android.content.Intent;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class vq extends lt {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f11493l = 255;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f11494m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11495b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11496c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11497d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 13}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 1}, new int[]{11, 12}, new int[]{12, 55}, new int[]{13, 63}, new int[]{14, 3}, new int[]{15, 28}, new int[]{16, 66}, new int[]{17, 4}, new int[]{18, 27}, new int[]{19, 65}, new int[]{20, 63}, new int[]{21, 7}, new int[]{22, 8}, new int[]{23, 0}, new int[]{24, 31}, new int[]{25, 30}, new int[]{26, 29}, new int[]{27, -1}, new int[]{28, -1}, new int[]{29, 74}, new int[]{30, 75}, new int[]{31, 54}, new int[]{32, -1}, new int[]{33, 21}, new int[]{34, -1}, new int[]{35, 53}, new int[]{36, 40}, new int[]{37, 41}, new int[]{38, 42}, new int[]{39, 43}, new int[]{40, 44}, new int[]{41, 45}, new int[]{42, 64}, new int[]{43, 6}, new int[]{44, 5}, new int[]{45, 18}, new int[]{46, 25}, new int[]{47, 58}, new int[]{48, 49}, new int[]{49, 40}, new int[]{50, 41}, new int[]{51, 42}, new int[]{52, 43}, new int[]{53, 44}, new int[]{54, 45}, new int[]{55, 46}, new int[]{56, 47}, new int[]{57, 48}, new int[]{58, 50}, new int[]{59, 51}, new int[]{60, -1}, new int[]{61, 31}, new int[]{62, 30}, new int[]{63, 38}, new int[]{64, 11}, new int[]{65, 56}, new int[]{66, 56}, new int[]{67, 55}, new int[]{68, 34}, new int[]{69, 35}, new int[]{70, 32}, new int[]{71, 33}, new int[]{72, 25}, new int[]{73, 62}, new int[]{74, 1}, new int[]{75, 72}, new int[]{76, 71}, new int[]{77, -1}, new int[]{78, 1}, new int[]{79, 1}, new int[]{80, 1}, new int[]{81, 13}, new int[]{82, 53}, new int[]{83, 34}, new int[]{84, 33}, new int[]{85, 35}, new int[]{86, 32}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11498e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f11499f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o1.g0 f11500g = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11501h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11502i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f11503j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f11504k = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = vq.f11493l;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13) {
                    z.k.s(227, 192, 1, 0);
                } else {
                    z.k.s(227, 192, 1, 1);
                }
                vq.f11493l = u0.b.D;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(vq.this.f11504k);
            vq.this.f11502i = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        /* JADX WARN: Code duplicated, block: B:10:0x003c  */
        /* JADX WARN: Code duplicated, block: B:11:0x0045  */
        /* JADX WARN: Code duplicated, block: B:12:0x004e  */
        @Override // java.lang.Runnable
        public void run() {
            vq vqVar = vq.this;
            int i2 = vqVar.f11502i - 1;
            vqVar.f11502i = i2;
            if (i2 <= 0) {
                l0.b0.p0(vqVar.f11504k);
                vq.this.f11502i = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                vq vqVar2 = vq.this;
                vqVar2.d3(vqVar2.f11500g.b(1, 0), false);
                int i3 = nt.f8637c;
                switch (i3) {
                    case 224:
                        z.k.s(227, 198, 3, 14, 0, 0);
                        break;
                    case 225:
                        z.k.s(227, 198, 3, 14, 1, 0);
                        break;
                    case 226:
                        z.k.s(227, 198, 3, 14, 2, 0);
                        break;
                    default:
                        switch (i3) {
                            case 240:
                                z.k.s(227, 198, 3, 14, 0, 0);
                                break;
                            case i.a.Theme_actionModeShareDrawable /* 241 */:
                                z.k.s(227, 198, 3, 14, 1, 0);
                                break;
                            case i.a.Theme_actionModeFindDrawable /* 242 */:
                                z.k.s(227, 198, 3, 14, 2, 0);
                                break;
                        }
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
        this.f11500g.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8313h = 0;
        int i2 = nt.f8637c;
        switch (i2) {
            case 224:
            case 226:
                mtVar.f8314i = 0;
                mtVar.f8317l = 0;
                break;
            default:
                switch (i2) {
                    case 240:
                    case i.a.Theme_actionModeFindDrawable /* 242 */:
                        mtVar.f8314i = 1;
                        mtVar.f8317l = 0;
                        break;
                }
            case 225:
                mtVar.f8314i = 1;
                mtVar.f8317l = 1;
                break;
        }
        switch (i2) {
            case 240:
            case i.a.Theme_actionModeShareDrawable /* 241 */:
            case i.a.Theme_actionModeFindDrawable /* 242 */:
            case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                u0.c.f17374a.a(this.f11499f, 1);
                break;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        u0.c.f17386m.a(this.f11503j, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 22) {
            qt.y0(1031, ((bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280)) / 16);
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f11496c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f11497d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f11496c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f11495b = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f11496c;
            if (i6 == 21) {
                for (int i7 = 0; i7 < (b4 & 255); i7++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
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
                    if (i6 == 34) {
                        if ((b4 & 255) == 1) {
                            switch (nt.f8637c) {
                                case 240:
                                case i.a.Theme_actionModeShareDrawable /* 241 */:
                                case i.a.Theme_actionModeFindDrawable /* 242 */:
                                case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                                    c3();
                                    break;
                            }
                        }
                        return;
                    }
                    if (i6 != 61) {
                        if (i6 != 62) {
                            int i9 = b4 & 255;
                            if (i9 == 1) {
                                if (i4 < iArr.length) {
                                    l0.b0.l0(iArr[i4][1], 0);
                                    return;
                                }
                                return;
                            } else {
                                if (i9 == 0) {
                                    int i10 = this.f11495b;
                                    if (i10 < iArr.length && i10 != 255) {
                                        l0.b0.l0(iArr[i10][1], 1);
                                    }
                                    this.f11495b = 255;
                                    return;
                                }
                                return;
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
            qt.y0(21, bArr[i2 + 8] & 255);
            int i15 = i2 + 6;
            qt.y0(37, (bArr[i15] >> 0) & 1);
            qt.y0(65, (bArr[i15] >> 7) & 1);
            qt.y0(16, (bArr[i15] >> 6) & 1);
            int i16 = i2 + 4;
            int i17 = bArr[i16] & 255;
            int i18 = i2 + 5;
            int i19 = bArr[i18] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i17 = bArr[i18] & 255;
                i19 = bArr[i16] & 255;
            }
            if (i17 == 0) {
                qt.y0(27, -2);
            } else if (i17 == 32) {
                qt.y0(27, -3);
            } else if (((bArr[i15] >> 0) & 1) == 1) {
                if (i17 < 1 || i17 > 31) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, (i17 * 10) + 590);
                }
            } else if (i17 >= 1 && i17 <= 29) {
                qt.y0(27, (i17 * 5) + 175);
            } else if (i17 < 48 || i17 > 51) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, ((i17 - 48) * 5) + 160);
            }
            if (i19 == 0) {
                qt.y0(28, -2);
                return;
            }
            if (i19 == 32) {
                qt.y0(28, -3);
                return;
            }
            if (((bArr[i15] >> 0) & 1) == 1) {
                if (i19 < 1 || i19 > 31) {
                    qt.y0(28, -1);
                    return;
                } else {
                    qt.y0(28, (i19 * 10) + 590);
                    return;
                }
            }
            if (i19 >= 1 && i19 <= 29) {
                qt.y0(28, (i19 * 5) + 175);
                return;
            } else if (i19 < 48 || i19 > 51) {
                qt.y0(28, -1);
                return;
            } else {
                qt.y0(28, ((i19 - 48) * 5) + 160);
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
        if (b2 == 59) {
            qt.y0(109, bArr[i2 + 2] & 255);
            qt.y0(110, bArr[i2 + 3] & 255);
            qt.y0(111, bArr[i2 + 4] & 255);
            qt.y0(112, bArr[i2 + 5] & 255);
            qt.y0(113, bArr[i2 + 6] & 255);
            int i20 = i2 + 7;
            qt.y0(114, (bArr[i20] >> 5) & 1);
            qt.y0(115, (bArr[i20] >> 4) & 1);
            qt.y0(116, (bArr[i20] >> 0) & 15);
            qt.y0(117, bArr[i2 + 8] & 255);
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
                int i29 = i2 + 3;
                l0.c0.N1((bArr[i29] >> 5) & 1, (bArr[i29] >> 4) & 1, 0);
                break;
            default:
                switch (b2) {
                    case 53:
                        qt.y0(102, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(103, ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | (65280 & (bArr[i2 + 10] << 8)) | (bArr[i2 + 11] & 255));
                        qt.y0(104, (bArr[i2 + 12] >> 6) & 1);
                        int i30 = bArr[i2 + 8] & 255;
                        if (i30 == 255 || i30 == 0) {
                            u0.d.A3(0);
                        } else {
                            u0.d.A3((i30 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                        }
                        break;
                    case 54:
                        int i31 = i2 + 6;
                        qt.y0(105, ((((bArr[i31] >> 7) & 1) << 9) & 512) | ((((bArr[i31] >> 3) & 1) << 8) & 256) | (bArr[i2 + 2] & 255));
                        qt.y0(106, ((((bArr[i31] >> 2) & 1) << 8) & 256) | ((((bArr[i31] >> 6) & 1) << 9) & 512) | (bArr[i2 + 3] & 255));
                        qt.y0(107, ((((bArr[i31] >> 5) & 1) << 9) & 512) | ((((bArr[i31] >> 1) & 1) << 8) & 256) | (bArr[i2 + 4] & 255));
                        qt.y0(108, (bArr[i2 + 5] & 255) | ((((bArr[i31] >> 0) & 1) << 8) & 256) | ((((bArr[i31] >> 4) & 1) << 9) & 512));
                        break;
                    case 55:
                        qt.y0(98, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(100, ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                        qt.y0(101, (bArr[i2 + 10] & 255) | ((bArr[i2 + 9] << 8) & 65280));
                        break;
                    case 56:
                        qt.y0(119, bArr[i2 + 2] & 255);
                        qt.y0(120, bArr[i2 + 3] & 255);
                        qt.y0(121, bArr[i2 + 4] & 255);
                        qt.y0(122, bArr[i2 + 5] & 255);
                        qt.y0(123, bArr[i2 + 6] & 255);
                        qt.y0(124, bArr[i2 + 7] & 255);
                        qt.y0(125, bArr[i2 + 8] & 255);
                        qt.y0(126, bArr[i2 + 9] & 255);
                        qt.y0(127, bArr[i2 + 10] & 255);
                        qt.y0(128, bArr[i2 + 11] & 255);
                        qt.y0(129, bArr[i2 + 12] & 255);
                        int i32 = i2 + 13;
                        qt.y0(130, (bArr[i32] >> 7) & 1);
                        qt.y0(131, (bArr[i32] >> 6) & 1);
                        qt.y0(132, (bArr[i32] >> 1) & 1);
                        break;
                    case 57:
                        qt.y0(133, (bArr[i2 + 4] >> 4) & 15);
                        qt.y0(134, bArr[i2 + 5] & 255);
                        qt.y0(135, bArr[i2 + 6] & 255);
                        qt.y0(136, bArr[i2 + 7] & 255);
                        qt.y0(137, bArr[i2 + 8] & 255);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f11500g.j();
        u0.c.f17386m.d(this.f11503j);
        l0.b0.p0(this.f11504k);
        u0.c.f17374a.d(this.f11499f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 138) {
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
            if (iArr[0] == 239) {
                d3(iArr[1], true);
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
        if (i2 == 5) {
            z.k.s(227, 202, 1, iArr[0]);
        } else if (i2 == 6) {
            z.k.s(227, 199, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
        } else {
            if (i2 != 7) {
                return;
            }
            z.k.s(227, 200, 2, iArr[0], iArr[1]);
        }
    }

    public final void c3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.rzc.xima.LZ_NissanInfinitiCdAct")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.xima.LZ_NissanInfinitiCdAct");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void d3(int i2, boolean z2) {
        qt.y0(118, i2);
        if (z2) {
            z.k.s(227, 198, 3, 24, i2, 0);
        }
        f11494m = i2;
        int iB = this.f11500g.b(1, 0);
        int i3 = f11494m;
        if (iB != i3) {
            this.f11500g.g(1, i3);
        }
    }
}
