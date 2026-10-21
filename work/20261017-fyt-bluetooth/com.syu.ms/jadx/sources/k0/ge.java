package k0;

import android.content.Intent;
import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ge extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5470e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f5471f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{11, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{23, 1}, new int[]{24, 55}, new int[]{64, 13}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f5472g = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{9, 12}, new int[]{31, 53}, new int[]{32, 1}, new int[]{43, 5}, new int[]{44, 2}, new int[]{45, 54}, new int[]{47, 5}, new int[]{55, 55}, new int[]{69, 7}, new int[]{70, 8}, new int[]{97, 62}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5473h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5474i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f5475j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f5476k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f5477l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f5478m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f5479n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f5480o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f5481p = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f5482q = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                qt.y0(192, 1);
                qt.y0(1009, 0);
            } else {
                qt.y0(192, 0);
                qt.y0(1009, 2);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f2;
            if (i2 == 0) {
                ge.this.b3(12);
                return;
            }
            if (i2 == 1) {
                ge.this.b3(11);
                return;
            }
            if (i2 != 9) {
                return;
            }
            if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.WCYuncheUINissanAirControlAct")) {
                if (nt.f8645g[10] == 1) {
                    l0.b0.l0(62, 0);
                    l0.b0.l0(62, 1);
                }
            } else if (nt.f8645g[10] == 0) {
                l0.b0.l0(62, 0);
                l0.b0.l0(62, 1);
            }
            ge.this.b3(1);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().t(LogType.CANBUS, "DataMain.sBspAirKey ---> " + u0.b.E0);
            switch (u0.b.E0) {
                case i.a.Theme_actionModePopupWindowStyle /* 244 */:
                    ge.this.b3(11);
                    break;
                case i.a.Theme_preferenceFragmentStyle /* 245 */:
                    ge.this.b3(12);
                    break;
                case i.a.Theme_preferencePanelStyle /* 246 */:
                    ge.this.b3(14);
                    break;
                case i.a.Theme_preferenceHeaderPanelStyle /* 247 */:
                    ge.this.b3(13);
                    break;
                case 248:
                    ge.this.b3(14);
                    break;
                case 249:
                    ge.this.b3(13);
                    break;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ge geVar = ge.this;
            geVar.f5473h = 0;
            geVar.f5474i = 0;
            l0.b0.b(geVar.f5480o);
            ge.this.f5478m = 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ge geVar = ge.this;
            int i2 = geVar.f5478m - 1;
            geVar.f5478m = i2;
            if (i2 <= 0) {
                l0.b0.p0(geVar.f5480o);
                ge.this.f5478m = 5;
            }
            switch (nt.f8637c) {
                case 0:
                case 1:
                case 15:
                case 24:
                    z.k.s(227, 2, 36, 27, 13);
                    break;
                case 2:
                case 7:
                    z.k.s(227, 2, 36, 16, 13);
                    break;
                case 3:
                case 4:
                    z.k.s(227, 2, 36, 19, 13);
                    break;
                case 5:
                    z.k.s(227, 2, 36, 20, 13);
                    break;
                case 6:
                    z.k.s(227, 2, 36, 22, 13);
                    break;
                case 8:
                    z.k.s(227, 2, 36, 23, 13);
                    break;
                case 9:
                    z.k.s(227, 2, 36, 21, 13);
                    break;
                case 10:
                    z.k.s(227, 2, 36, 24, 13);
                    break;
                case 11:
                case 19:
                    z.k.s(227, 2, 36, 31, 13);
                    break;
                case 12:
                    z.k.s(227, 2, 36, 17, 13);
                    break;
                case 13:
                    z.k.s(227, 2, 36, 26, 13);
                    break;
                case 14:
                case 23:
                case 25:
                    z.k.s(227, 2, 36, 18, 13);
                    break;
                case 16:
                    z.k.s(227, 2, 36, 28, 13);
                    break;
                case 17:
                    z.k.s(227, 2, 36, 29, 13);
                    break;
                case 18:
                    z.k.s(227, 2, 36, 30, 13);
                    break;
                case 20:
                    z.k.s(227, 2, 36, 32, 13);
                    break;
                case 21:
                    z.k.s(227, 2, 36, 33, 13);
                    break;
                case 22:
                    z.k.s(227, 2, 36, 34, 13);
                    break;
                case 26:
                case 27:
                    z.k.s(227, 2, 36, 35, 13);
                    break;
            }
        }
    }

    public class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f5488a;

        public f(int i2) {
            this.f5488a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 2, 61, this.f5488a, 0);
            ge.this.f5481p = true;
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? 1 : 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 0);
        }
    }

    public static int a3(int i2) {
        if (i2 == 255) {
            return 15;
        }
        return ((i2 - 1) * 2) / 3;
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
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        b3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    b3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        b3(2);
                    }
                } else if (nt.f8645g[11] == 0) {
                    b3(2);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        b3(5);
                    }
                } else if (nt.f8645g[65] == 0) {
                    b3(5);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        b3(6);
                    }
                } else if (nt.f8645g[16] == 0) {
                    b3(6);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        b3(7);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    b3(7);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    b3(12);
                } else {
                    b3(11);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    b3(14);
                } else {
                    b3(13);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        if (App.c().getResources().getConfiguration().orientation != 1) {
            this.f7886a.f8314i = 1;
        } else {
            this.f7886a.f8314i = 0;
        }
        int i2 = nt.f8637c;
        if (i2 == 5 || i2 == 13) {
            this.f7886a.f8314i = 0;
        } else if (i2 == 27) {
            this.f7886a.f8313h = 2;
            u0.c.f17379f.a(this.f5475j, 1);
        }
        qt.z(this.f5482q);
        u0.c.f17386m.a(this.f5479n, 1);
        e.e.f1624b.a(this.f5477l, 0);
        z.c.f18184d.a(this.f5476k, 0);
        this.f7886a.f8318m = new int[]{33, 34, 36, 37, 38, 39, 41};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        byte b3 = bArr[i2 + 1];
        if (b3 == -24) {
            if (bArr[i2 + 5] == 1) {
                qt.a(1);
            } else {
                qt.a(0);
            }
            qt.y0(193, bArr[i2 + 3] & 255);
            return;
        }
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 26) {
            int i12 = (((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255)) / 10;
            o1.x[] xVarArr = nt.f8643f;
            o1.x.C(xVarArr, 1031, new int[]{i12}, null, null);
            o1.x.C(xVarArr, 1049, new int[]{1, i12}, null, null);
            int i13 = i2 + 4;
            l0.c0.N1((bArr[i13] >> 0) & 1, (bArr[i13] >> 1) & 1, (bArr[i13] >> 2) & 1);
            return;
        }
        if (b3 == 63) {
            qt.y0(170, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(171, bArr[i2 + 5] & 255);
            qt.y0(172, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(173, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280));
            return;
        }
        if (b3 == 65) {
            u0.d.R2(a3(bArr[i2 + 2] & 255));
            u0.d.S2(a3(bArr[i2 + 3] & 255));
            u0.d.T2(a3(bArr[i2 + 4] & 255));
            u0.d.U2(a3(bArr[i2 + 5] & 255));
            int i14 = i2 + 6;
            int i15 = bArr[i14] & 255;
            int i16 = i2 + 7;
            int i17 = bArr[i16] & 255;
            int i18 = i2 + 8;
            int i19 = bArr[i18] & 255;
            int i20 = i2 + 9;
            int i21 = bArr[i20] & 255;
            if (i15 == 255 && i17 == 255 && i19 == 255 && i21 == 255) {
                u0.d.C2(0);
            } else if (l0.c0.f13013g != i15 || l0.c0.f13014h != i17 || l0.c0.f13015i != i19 || l0.c0.f13016j != i21) {
                l0.c0.f13013g = i15;
                l0.c0.f13014h = i17;
                l0.c0.f13015i = i19;
                l0.c0.f13016j = i21;
                if (u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
            }
            u0.d.D2(a3(bArr[i14] & 255));
            u0.d.E2(a3(bArr[i16] & 255));
            u0.d.F2(a3(bArr[i18] & 255));
            u0.d.G2(a3(bArr[i20] & 255));
            return;
        }
        if (b3 == 72) {
            qt.y0(175, bArr[i2 + 4] & 255);
            qt.y0(176, bArr[i2 + 5] & 255);
            qt.y0(177, bArr[i2 + 6] & 255);
            qt.y0(178, bArr[i2 + 7] & 255);
            qt.y0(179, bArr[i2 + 9] & 255);
            qt.y0(180, bArr[i2 + 10] & 255);
            qt.y0(181, bArr[i2 + 11] & 255);
            qt.y0(182, bArr[i2 + 12] & 255);
            return;
        }
        if (b3 == 102) {
            int i22 = i2 + 2;
            qt.y0(103, (bArr[i22] >> 7) & 1);
            qt.y0(183, (bArr[i22] >> 6) & 1);
            qt.y0(104, (bArr[i22] >> 5) & 1);
            qt.y0(105, (bArr[i22] >> 4) & 1);
            qt.y0(106, (bArr[i22] >> 3) & 1);
            qt.y0(107, (bArr[i22] >> 2) & 1);
            qt.y0(108, (bArr[i22] >> 1) & 1);
            qt.y0(109, (bArr[i22] >> 0) & 1);
            int i23 = i2 + 3;
            qt.y0(184, (bArr[i23] >> 5) & 1);
            qt.y0(185, (bArr[i23] >> 7) & 1);
            int i24 = i2 + 4;
            qt.y0(110, (bArr[i24] >> 7) & 1);
            qt.y0(111, (bArr[i24] >> 6) & 1);
            qt.y0(112, (bArr[i24] >> 5) & 1);
            qt.y0(113, (bArr[i24] >> 4) & 1);
            qt.y0(114, (bArr[i24] >> 3) & 1);
            qt.y0(115, (bArr[i24] >> 2) & 1);
            qt.y0(116, (bArr[i24] >> 1) & 1);
            qt.y0(186, (bArr[i24] >> 0) & 1);
            int i25 = i2 + 5;
            qt.y0(191, (bArr[i25] >> 7) & 1);
            qt.y0(187, (bArr[i25] >> 6) & 1);
            qt.y0(117, (bArr[i25] >> 5) & 1);
            qt.y0(118, (bArr[i25] >> 4) & 1);
            qt.y0(119, (bArr[i25] >> 2) & 3);
            qt.y0(120, (bArr[i25] >> 0) & 3);
            int i26 = i2 + 6;
            qt.y0(121, (bArr[i26] >> 7) & 1);
            qt.y0(122, (bArr[i26] >> 6) & 1);
            qt.y0(123, (bArr[i26] >> 5) & 1);
            qt.y0(124, (bArr[i26] >> 4) & 1);
            qt.y0(125, (bArr[i26] >> 3) & 1);
            qt.y0(126, (bArr[i26] >> 2) & 1);
            qt.y0(127, (bArr[i26] >> 1) & 1);
            qt.y0(128, (bArr[i26] >> 0) & 1);
            int i27 = i2 + 7;
            qt.y0(129, (bArr[i27] >> 4) & 15);
            qt.y0(130, (bArr[i27] >> 0) & 15);
            int i28 = i2 + 8;
            qt.y0(131, (bArr[i28] >> 5) & 1);
            qt.y0(132, (bArr[i28] >> 4) & 1);
            qt.y0(133, (bArr[i28] >> 2) & 3);
            qt.y0(134, (bArr[i28] >> 0) & 3);
            int i29 = i2 + 9;
            qt.y0(135, (bArr[i29] >> 6) & 3);
            qt.y0(136, (bArr[i29] >> 4) & 3);
            qt.y0(137, (bArr[i29] >> 2) & 3);
            qt.y0(138, (bArr[i29] >> 0) & 3);
            int i30 = i2 + 10;
            qt.y0(139, (bArr[i30] >> 7) & 1);
            qt.y0(140, (bArr[i30] >> 6) & 1);
            qt.y0(141, (bArr[i30] >> 4) & 3);
            qt.y0(142, (bArr[i30] >> 3) & 1);
            qt.y0(143, (bArr[i30] >> 2) & 1);
            qt.y0(144, (bArr[i30] >> 0) & 3);
            int i31 = i2 + 11;
            qt.y0(145, (bArr[i31] >> 7) & 1);
            qt.y0(146, (bArr[i31] >> 6) & 1);
            qt.y0(147, (bArr[i31] >> 4) & 3);
            qt.y0(148, (bArr[i31] >> 2) & 3);
            qt.y0(149, (bArr[i31] >> 0) & 3);
            int i32 = i2 + 12;
            qt.y0(150, (bArr[i32] >> 7) & 1);
            qt.y0(151, (bArr[i32] >> 6) & 1);
            qt.y0(152, (bArr[i32] >> 5) & 1);
            qt.y0(153, (bArr[i32] >> 4) & 1);
            qt.y0(154, (bArr[i32] >> 3) & 1);
            qt.y0(155, (bArr[i32] >> 2) & 1);
            qt.y0(156, (bArr[i32] >> 1) & 1);
            qt.y0(157, (bArr[i32] >> 0) & 1);
            qt.y0(158, bArr[i2 + 13] & 255);
            qt.y0(159, bArr[i2 + 14] & 255);
            qt.y0(160, bArr[i2 + 15] & 255);
            qt.y0(161, bArr[i2 + 16] & 255);
            int i33 = i2 + 17;
            qt.y0(188, (bArr[i33] >> 4) & 3);
            qt.y0(189, (bArr[i33] >> 2) & 3);
            qt.y0(190, (bArr[i33] >> 0) & 3);
            return;
        }
        if (b3 == 17) {
            byte b4 = bArr[i2 + 4];
            byte b5 = bArr[i2 + 5];
            this.f5468c = b4 & 255;
            int i34 = 0;
            while (true) {
                iArr = this.f5471f;
                if (i34 >= iArr.length) {
                    break;
                }
                int i35 = this.f5468c;
                if (i35 == iArr[i34][0]) {
                    if (i35 == 0) {
                        break;
                    }
                    this.f5467b = i34;
                    break;
                }
                i34++;
            }
            if ((b5 & 255) != 0) {
                if (i34 < iArr.length) {
                    l0.b0.l0(iArr[i34][1], 0);
                }
                b2 = 255;
            } else {
                int i36 = this.f5467b;
                if (i36 < iArr.length) {
                    b2 = 255;
                    if (i36 != 255) {
                        l0.b0.l0(iArr[i36][1], 1);
                    }
                } else {
                    b2 = 255;
                }
                this.f5467b = b2;
            }
            qt.i(bArr[i2 + 9] & b2, bArr[i2 + 8] & b2, false, 540);
            return;
        }
        if (b3 == 18) {
            int i37 = bArr[i2 + 4] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i37 >> 7) & 1);
                qt.y0(1, (i37 >> 6) & 1);
            } else {
                qt.y0(1, (i37 >> 7) & 1);
                qt.y0(2, (i37 >> 6) & 1);
            }
            qt.y0(3, (i37 >> 5) & 1);
            qt.y0(4, (i37 >> 4) & 1);
            qt.y0(5, (i37 >> 3) & 1);
            qt.y0(0, (i37 >> 2) & 1);
            return;
        }
        if (b3 == 20) {
            for (int i38 = 0; i38 < 50; i38++) {
                o1.x.C(nt.f8643f, 168, new int[]{i38, bArr[i2 + i38 + 3] & 255}, null, null);
            }
            return;
        }
        if (b3 == 21) {
            for (int i39 = 0; i39 < 50; i39++) {
                o1.x.C(nt.f8643f, 169, new int[]{i39, bArr[i2 + i39 + 3] & 255}, null, null);
            }
            return;
        }
        if (b3 == 33) {
            this.f5469d = bArr[i2 + 2] & 255;
            byte b6 = bArr[i2 + 3];
            int i40 = 0;
            while (true) {
                iArr2 = this.f5472g;
                if (i40 >= iArr2.length) {
                    break;
                }
                int i41 = this.f5469d;
                if (i41 == iArr2[i40][0]) {
                    if (i41 == 0) {
                        break;
                    }
                    this.f5470e = i40;
                    break;
                }
                i40++;
            }
            if (this.f5469d != 97) {
                if ((b6 & 255) == 0) {
                    int i42 = this.f5470e;
                    if (i42 < iArr2.length) {
                        i4 = 255;
                        if (i42 != 255) {
                            l0.b0.l0(iArr2[i42][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f5470e = i4;
                } else if (i40 < iArr2.length) {
                    l0.b0.l0(iArr2[i40][1], 0);
                }
            } else if ((b6 & 255) == 1) {
                if (App.c().getResources().getConfiguration().orientation != 1) {
                    l0.b0.l0(62, 0);
                    l0.b0.l0(62, 1);
                } else if (!qt.i0().equals("com.syu.carinfo.air.ActivityNewAir")) {
                    Intent intent = new Intent();
                    intent.setClassName("com.syu.canbus", "com.syu.carinfo.air.ActivityNewAir");
                    intent.addCategory(Intent.CATEGORY_DEFAULT);
                    intent.setFlags(268435456);
                    App.c().startActivity(intent);
                }
            }
        } else if (b3 != 34) {
            if (b3 != 49) {
                if (b3 == 50) {
                    qt.y0(1032, ((bArr[i2 + 4] << 8) & 65280) | (255 & bArr[i2 + 5]));
                    qt.y0(98, bArr[i2 + 8]);
                    return;
                }
                if (b3 == 52) {
                    qt.y0(162, ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                    qt.y0(163, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                    qt.y0(164, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
                    qt.y0(165, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
                    qt.y0(166, ((bArr[i2 + 17] << 8) & 65280) | (bArr[i2 + 18] & 255));
                    qt.y0(167, (bArr[i2 + 23] & 255) | ((bArr[i2 + 22] << 8) & 65280));
                    return;
                }
                if (b3 != 53) {
                    return;
                }
                int i43 = i2 + 4;
                qt.y0(99, (bArr[i43] >> 6) & 3);
                qt.y0(100, (bArr[i43] >> 0) & 3);
                qt.y0(101, (bArr[i2 + 5] >> 1) & 1);
                int i44 = i2 + 6;
                qt.y0(102, (bArr[i44] >> 3) & 1);
                qt.y0(174, (bArr[i44] >> 2) & 1);
                return;
            }
            int i45 = bArr[i2 + 2] & 255;
            int i46 = bArr[i2 + 3] & 255;
            int i47 = bArr[i2 + 4] & 255;
            int i48 = bArr[i2 + 6] & 255;
            int i49 = bArr[i2 + 7] & 255;
            int i50 = i2 + 8;
            int i51 = bArr[i50] & 255;
            int i52 = i2 + 9;
            int i53 = bArr[i52] & 255;
            qt.y0(10, (i45 >> 6) & 1);
            qt.y0(13, (i45 >> 3) & 1);
            qt.y0(14, (i45 >> 2) & 1);
            qt.y0(42, (i46 >> 7) & 1);
            qt.y0(11, (i46 >> 6) & 1);
            qt.y0(12, (i46 >> 4) & 3);
            qt.y0(52, (i46 >> 1) & 1);
            qt.y0(80, (i46 >> 0) & 1);
            qt.y0(67, (i47 >> 7) & 1);
            qt.y0(43, (i47 >> 6) & 1);
            qt.y0(16, (i47 >> 5) & 1);
            qt.y0(65, (i47 >> 4) & 1);
            qt.y0(30, (i47 >> 2) & 3);
            qt.y0(29, (i47 >> 0) & 3);
            int i54 = i2 + 5;
            qt.y0(89, (bArr[i54] >> 2) & 3);
            qt.y0(88, (bArr[i54] >> 0) & 3);
            int i55 = i48 & 15;
            if (i55 == 1) {
                i6 = 0;
                i7 = 0;
                i8 = 0;
                i9 = 1;
            } else if (i55 == 2) {
                i9 = 0;
                i7 = 0;
                i8 = 0;
                i6 = 1;
            } else if (i55 != 3) {
                if (i55 == 5) {
                    i9 = 0;
                    i6 = 0;
                    i7 = 1;
                } else if (i55 != 6) {
                    switch (i55) {
                        case 12:
                            i9 = 0;
                            i7 = 0;
                            i6 = 1;
                            i8 = 1;
                            break;
                        case 13:
                            i9 = 0;
                            i8 = 0;
                            i6 = 1;
                            i7 = 1;
                            break;
                        case 14:
                            i9 = 0;
                            i6 = 1;
                            i7 = i6;
                            break;
                        default:
                            i9 = 0;
                            i6 = 0;
                            i7 = i6;
                            break;
                    }
                } else {
                    i9 = 0;
                    i6 = 0;
                    i8 = 0;
                    i7 = 1;
                }
                i8 = i7;
            } else {
                i9 = 0;
                i6 = 0;
                i7 = 0;
                i8 = 1;
            }
            qt.y0(49, i9);
            qt.y0(18, i6);
            qt.y0(19, i7);
            qt.y0(20, i8);
            qt.y0(21, i49 & 255);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i51 = bArr[i52] & 255;
                i53 = bArr[i50] & 255;
            }
            if (i51 == 254) {
                qt.y0(27, -2);
            } else if (i51 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i51);
            }
            if (i53 == 254) {
                qt.y0(28, -2);
            } else if (i53 == 255) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i53);
            }
            byte b7 = bArr[i2 + 10];
            if (b7 == 1) {
                i10 = 0;
                i11 = 1;
            } else if (b7 != 2) {
                i10 = b7 != 3 ? 0 : 1;
                i11 = i10;
            } else {
                i11 = 0;
                i10 = 1;
            }
            qt.y0(48, i10);
            qt.y0(46, i10);
            qt.y0(47, i11);
            qt.y0(44, bArr[i2 + 11] & 255);
            int i56 = i2 + 12;
            if ((bArr[i56] & 255) == 254) {
                qt.y0(40, -2);
            } else if ((bArr[i56] & 255) == 255) {
                qt.y0(40, -3);
            } else {
                qt.y0(40, bArr[i56] & 255);
            }
            int i57 = bArr[i2 + 13] & 255;
            if (i57 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3((i57 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        byte b8 = bArr[i2 + 2];
        byte b9 = bArr[i2 + 3];
        if (b8 != 1) {
            if (b8 == 2 && b9 != (i5 = this.f5474i)) {
                if (b9 > i5) {
                    for (int i58 = 0; i58 < b9 - this.f5474i; i58++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if (b9 < i5) {
                    for (int i59 = 0; i59 < this.f5474i - b9; i59++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                }
                this.f5474i = b9;
                return;
            }
            return;
        }
        int i60 = this.f5473h;
        if (b9 != i60) {
            if (b9 > i60) {
                for (int i61 = 0; i61 < b9 - this.f5473h; i61++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
            } else if (b9 < i60) {
                for (int i62 = 0; i62 < this.f5473h - b9; i62++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
            }
            this.f5473h = b9;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f5482q);
        u0.c.f17386m.d(this.f5479n);
        l0.b0.p0(this.f5480o);
        e.e.f1624b.d(this.f5477l);
        z.c.f18184d.d(this.f5476k);
        u0.c.f17379f.d(this.f5475j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 194) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 2, 61, iArr[0], iArr[1]);
            }
            return;
        }
        if (i2 == 1) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 4, 111, iArr[0], iArr[1], 255, 255);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (qt.l0(iArr, 1)) {
                z.k.s(227, 3, 106, 5, 1, iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 2, 58, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 4) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 2, 154, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 5) {
            if (qt.l0(iArr, 2)) {
                if (iArr[0] == 15 && iArr[1] == 0) {
                    qt.a(0);
                }
                z.k.s(227, 2, i.a.Theme_actionModeFindDrawable, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (u0.b.f17347o == 0) {
                z.k.s(227, 2, -14, 15, 1);
                qt.a(1);
                return;
            } else {
                z.k.s(227, 2, -14, 15, 0);
                qt.a(0);
                return;
            }
        }
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            switch (iArr[0]) {
                case 1:
                    z.k.s(227, 2, -14, 16, 7);
                    break;
                case 2:
                    z.k.s(227, 2, -14, 16, 8);
                    break;
                case 3:
                    z.k.s(227, 2, -14, 16, 6);
                    break;
                case 4:
                    z.k.s(227, 2, -14, 16, 5);
                    break;
                case 5:
                    z.k.s(227, 2, -14, 16, 7);
                    break;
                case 6:
                    z.k.s(227, 2, -14, 16, 8);
                    break;
                case 7:
                    z.k.s(227, 2, -14, 16, 6);
                    break;
                case 8:
                    z.k.s(227, 2, -14, 16, 5);
                    break;
                case 9:
                    z.k.s(227, 2, -14, 16, 12);
                    break;
                case 10:
                    z.k.s(227, 2, -14, 16, 11);
                    break;
                case 11:
                    z.k.s(227, 2, -14, 16, 10);
                    break;
                case 12:
                    z.k.s(227, 2, -14, 16, 13);
                    break;
                case 13:
                    z.k.s(227, 2, -14, 17, 0);
                    break;
                case 14:
                    z.k.s(227, 2, -14, 17, 1);
                    break;
            }
        }
    }

    public final void b3(int i2) {
        if (this.f5481p) {
            this.f5481p = false;
            z.k.s(227, 2, 61, i2, 1);
            o1.l.a().postDelayed(new f(i2), 100L);
        }
    }
}
