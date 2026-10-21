package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class rh extends lt {
    public static int A = 1000;
    public static int B = 0;
    public static int C = 1000;
    public static int D = 0;
    public static int E = 1000;
    public static int F = 0;
    public static int G = 0;
    public static int H = 0;
    public static int I = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f9899y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f9900z = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f9913n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f9901b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9902c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f9903d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f9904e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f9905f = 4;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f9906g = 5;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f9907h = 6;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f9908i = 7;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f9909j = 8;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f9910k = 9;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f9911l = 10;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f9912m = 11;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f9914o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int[][] f9915p = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{8, 12}, new int[]{9, 13}, new int[]{10, 18}, new int[]{11, 26}, new int[]{32, 54}, new int[]{33, 5}, new int[]{34, 1}, new int[]{35, 21}, new int[]{36, 34}, new int[]{37, 35}, new int[]{38, 32}, new int[]{39, 33}, new int[]{40, 29}, new int[]{41, 0}, new int[]{42, 6}, new int[]{240, 7}, new int[]{i.a.Theme_actionModeShareDrawable, 8}, new int[]{i.a.Theme_actionModeFindDrawable, 31}, new int[]{i.a.Theme_actionModeWebSearchDrawable, 30}};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f9916q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f9917r = new a();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f9918s = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public byte f9919t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f9920u = new b();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f9921v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f9922w = new c();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f9923x = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            if (rh.this.f9918s == millis && rh.this.f9919t == b2) {
                return;
            }
            rh.this.f9918s = millis;
            rh.this.f9919t = b2;
            byte b3 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b4 = (byte) (time.month + 1);
            byte b5 = (byte) time.monthDay;
            byte b6 = (byte) time.hour;
            byte b7 = (byte) time.minute;
            if (b2 == 1) {
                z.k.s(227, 198, 6, 0, 0, 0, 0, 0, 0);
            } else if (b2 == 0) {
                z.k.s(227, 198, 6, 0, 1, 0, 0, 0, 0);
            }
            z.k.s(227, 198, 6, 1, b3, b4, b5, b6, b7);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 131, 2, 7, 0);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(rh.this.f9923x);
            rh.this.f9921v = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rh rhVar = rh.this;
            int i2 = rhVar.f9921v - 1;
            rhVar.f9921v = i2;
            if (i2 <= 0) {
                l0.b0.p0(rhVar.f9923x);
                rh.this.f9921v = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 131, 2, 16, 0);
                rh rhVar2 = rh.this;
                rhVar2.e3(rhVar2.f9901b.b(1, 0));
                rh rhVar3 = rh.this;
                rhVar3.c3(rhVar3.f9901b.b(2, 1));
                rh rhVar4 = rh.this;
                rhVar4.d3(rhVar4.f9901b.b(3, 1000));
                rh rhVar5 = rh.this;
                rhVar5.g3(rhVar5.f9901b.b(4, 0));
                rh rhVar6 = rh.this;
                rhVar6.f3(rhVar6.f9901b.b(5, 1000));
                rh rhVar7 = rh.this;
                rhVar7.b3(rhVar7.f9901b.b(6, 0));
                rh rhVar8 = rh.this;
                rhVar8.a3(rhVar8.f9901b.b(7, 1000));
                if (rh.f9899y != 1) {
                    qt.y0(171, 0);
                    return;
                }
                Time time = new Time(Time.getCurrentTimezone());
                time.setToNow();
                if (rh.this.h3(rh.G, (((byte) time.monthDay) & 255) | ((((byte) (time.year + DrmManagerClient.ERROR_UNKNOWN)) << 16) & Spanned.SPAN_PRIORITY) | ((((byte) (time.month + 1)) << 8) & 65280), rh.f9900z)) {
                    qt.y0(171, 1);
                } else {
                    qt.y0(171, 0);
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
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        this.f9901b.a();
        u0.c.f17386m.a(this.f9922w, 1);
        qt.z(this.f9917r);
        qt.x(this.f9920u);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        String str;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f9914o = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f9915p;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f9914o;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f9913n = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f9914o;
            if (i6 == 3) {
                if ((255 & b4) == 1) {
                    if (u0.b.D == 13) {
                        z.k.s(227, 130, 1, 4);
                        return;
                    } else {
                        l0.b0.l0(4, 0);
                        l0.b0.l0(4, 1);
                        return;
                    }
                }
                return;
            }
            if (i6 == 4) {
                if ((b4 & 255) == 1) {
                    if (u0.b.D == 13) {
                        z.k.s(227, 130, 1, 5);
                        return;
                    } else {
                        l0.b0.l0(3, 0);
                        l0.b0.l0(3, 1);
                        return;
                    }
                }
                return;
            }
            switch (i6) {
                case 240:
                    int i7 = 0;
                    int i8 = 0;
                    while (i8 < (b4 & 255)) {
                        l0.b0.l0(7, i7);
                        i8++;
                        i7 = 0;
                    }
                    l0.b0.l0(7, 1);
                    break;
                case i.a.Theme_actionModeShareDrawable /* 241 */:
                    for (int i9 = 0; i9 < (b4 & 255); i9++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                case i.a.Theme_actionModeFindDrawable /* 242 */:
                    for (int i10 = 0; i10 < (b4 & 255); i10++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                    for (int i11 = 0; i11 < (b4 & 255); i11++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
                default:
                    int i12 = b4 & 255;
                    if (i12 == 1) {
                        if (i4 < iArr.length) {
                            l0.b0.l0(iArr[i4][1], 0);
                        }
                    } else if (i12 == 0) {
                        int i13 = this.f9913n;
                        if (i13 < iArr.length && i13 != 255) {
                            l0.b0.l0(iArr[i13][1], 1);
                        }
                        this.f9913n = 255;
                    }
                    break;
            }
            return;
        }
        if (b2 == 2) {
            int i14 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i14 >> 7) & 1);
                qt.y0(1, (i14 >> 6) & 1);
            } else {
                qt.y0(2, (i14 >> 6) & 1);
                qt.y0(1, (i14 >> 7) & 1);
            }
            qt.y0(4, (i14 >> 4) & 1);
            qt.y0(3, (i14 >> 5) & 1);
            qt.y0(5, (i14 >> 3) & 1);
            int i15 = i2 + 4;
            if (this.f9916q != ((bArr[i15] >> 7) & 1)) {
                int i16 = (bArr[i15] >> 7) & 1;
                this.f9916q = i16;
                if (i16 == 0) {
                    qt.i(0, 0, false, 540);
                    return;
                }
                return;
            }
            return;
        }
        if (b2 == 16) {
            int i17 = i2 + 3;
            int i18 = i2 + 4;
            int i19 = i2 + 5;
            qt.y0(51, ((bArr[i17] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i18] << 8) & 65280) | (bArr[i19] & 255));
            qt.y0(162, ((bArr[i17] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i18] << 8) & 65280) | (bArr[i19] & 255));
            if (f9899y == 1) {
                int i20 = nt.f8645g[162];
                int i21 = F;
                if (i20 <= A + i21 || i21 == 0) {
                    qt.y0(170, 0);
                } else {
                    qt.y0(170, 1);
                }
            } else {
                qt.y0(170, 0);
            }
            if (B == 1) {
                int i22 = nt.f8645g[162];
                int i23 = H;
                if (i22 <= C + i23 || i23 == 0) {
                    qt.y0(172, 0);
                } else {
                    qt.y0(172, 1);
                }
            } else {
                qt.y0(172, 0);
            }
            if (D == 1) {
                int i24 = nt.f8645g[162];
                int i25 = I;
                if (i24 <= E + i25 || i25 == 0) {
                    qt.y0(173, 0);
                } else {
                    qt.y0(173, 1);
                }
            } else {
                qt.y0(173, 0);
            }
        } else if (b2 == 17) {
            qt.y0(45, bArr[i2 + 2] & 255);
        } else if (b2 == 37) {
            int i26 = bArr[i2 + 2] & 255;
            qt.y0(60, (i26 >> 7) & 1);
            qt.y0(61, (i26 >> 6) & 1);
            qt.y0(62, (i26 >> 5) & 1);
            qt.y0(63, (i26 >> 2) & 1);
            qt.y0(64, (i26 >> 0) & 3);
            qt.y0(55, bArr[i2 + 3] & 255);
            qt.y0(56, bArr[i2 + 4] & 255);
            qt.y0(57, bArr[i2 + 5] & 255);
            qt.y0(58, bArr[i2 + 6] & 255);
            qt.y0(59, bArr[i2 + 7] & 255);
        } else if (b2 != 125) {
            if (b2 != 127) {
                switch (b2) {
                    case 4:
                        int i27 = bArr[i2 + 2] & 255;
                        byte b5 = bArr[i2 + 3];
                        byte b6 = bArr[i2 + 4];
                        int i28 = bArr[i2 + 5] & 255;
                        int i29 = bArr[i2 + 6] & 255;
                        qt.y0(31, (i27 >> 6) & 3);
                        qt.y0(32, (i27 >> 0) & 15);
                        qt.y0(33, (((i28 << 8) & 65280) | (i29 & 255)) & 65535);
                        break;
                    case 5:
                        int i30 = bArr[i2 + 3] & 255;
                        int i31 = bArr[i2 + 4] & 255;
                        byte b7 = bArr[i2 + 5];
                        byte b8 = bArr[i2 + 6];
                        int i32 = bArr[i2 + 7] & 255;
                        int i33 = bArr[i2 + 8] & 255;
                        int i34 = bArr[i2 + 9] & 255;
                        int i35 = bArr[i2 + 10] & 255;
                        int i36 = bArr[i2 + 11] & 255;
                        int i37 = bArr[i2 + 12] & 255;
                        qt.y0(34, i30);
                        qt.y0(35, (i31 >> 4) & 15);
                        qt.y0(36, (i31 >> 0) & 15);
                        qt.y0(37, (((i32 << 8) & 65280) | (i33 & 255)) & 65535);
                        qt.y0(39, (((i34 << 8) & 65280) | (i35 & 255)) & 65535);
                        qt.y0(38, ((i37 & 255) | ((i36 << 8) & 65280)) & 65535);
                        break;
                    case 6:
                        int i38 = i2 + 3;
                        if ((bArr[i38] & DhcpPacket.DHCP_DOMAIN_NAME) == 1) {
                            int i39 = (bArr[i38] >> 4) & 15;
                            if (i39 == 0) {
                                str = new String(bArr, i2 + 4, i3 - 4);
                            } else if (i39 == 1) {
                                try {
                                    str = new String(bArr, i2 + 4, i3 - 4, "UTF-16BE");
                                } catch (UnsupportedEncodingException e2) {
                                    e2.printStackTrace();
                                }
                            } else if (i39 != 2) {
                                str = i39 != 3 ? ProxyProperties.LOCAL_EXCL_LIST : new String(bArr, i2 + 4, i3 - 4);
                            } else {
                                try {
                                    str = new String(bArr, i2 + 4, i3 - 4, "UTF-16LE");
                                } catch (UnsupportedEncodingException e3) {
                                    e3.printStackTrace();
                                }
                            }
                            int i40 = i2 + 2;
                            byte b9 = bArr[i40];
                            if (b9 == 0) {
                                qt.x0(40, str);
                            } else if (b9 == 2) {
                                qt.x0(41, str);
                            } else if (b9 == 3) {
                                qt.x0(42, str);
                            }
                            qt.y0(43, bArr[i40]);
                        }
                        break;
                    case 7:
                        qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 4600);
                        break;
                    case 8:
                        int i41 = bArr[i2 + 2] & 255;
                        int i42 = i2 + 3;
                        int i43 = bArr[i42] & 255;
                        int i44 = bArr[i42] & 255;
                        int i45 = i2 + 4;
                        int i46 = bArr[i45] & 255;
                        if (i41 == 0 && i43 == 0 && i44 == 0 && i46 == 0) {
                            u0.d.C2(0);
                        } else if ((l0.c0.f13013g != i41 || l0.c0.f13014h != i43 || l0.c0.f13015i != i44 || l0.c0.f13016j != i46) && u0.b.f17347o == 0) {
                            u0.d.C2(1);
                            l0.c0.f13017k = 4;
                            l0.b0.b(l0.c0.f13018l);
                        }
                        l0.c0.f13013g = i41;
                        l0.c0.f13014h = i43;
                        l0.c0.f13015i = i44;
                        l0.c0.f13016j = i46;
                        u0.d.D2(l0.c0.E0(bArr[i42] & 255));
                        u0.d.E2(l0.c0.E0(bArr[i45] & 255));
                        u0.d.F2(l0.c0.E0(bArr[i45] & 255));
                        u0.d.G2(l0.c0.E0(bArr[i2 + 5] & 255));
                        u0.d.R2(l0.c0.E0(bArr[i2 + 6] & 255));
                        int i47 = i2 + 7;
                        u0.d.S2(l0.c0.E0(bArr[i47] & 255));
                        u0.d.T2(l0.c0.E0(bArr[i47] & 255));
                        u0.d.U2(l0.c0.E0(bArr[i2 + 8] & 255));
                        break;
                    case 9:
                        int i48 = i2 + 2;
                        qt.y0(65, (bArr[i48] >> 7) & 1);
                        qt.y0(66, (bArr[i48] >> 4) & 7);
                        qt.y0(67, (bArr[i48] >> 2) & 3);
                        qt.y0(68, (bArr[i48] >> 0) & 3);
                        int i49 = i2 + 3;
                        qt.y0(69, (bArr[i49] >> 7) & 1);
                        qt.y0(70, (bArr[i49] >> 6) & 1);
                        qt.y0(71, (bArr[i49] >> 5) & 1);
                        qt.y0(72, (bArr[i49] >> 4) & 1);
                        qt.y0(73, (bArr[i49] >> 2) & 3);
                        qt.y0(74, (bArr[i49] >> 0) & 3);
                        int i50 = i2 + 4;
                        qt.y0(75, (bArr[i50] >> 7) & 1);
                        qt.y0(76, (bArr[i50] >> 6) & 1);
                        qt.y0(77, (bArr[i50] >> 5) & 1);
                        qt.y0(78, (bArr[i50] >> 4) & 1);
                        qt.y0(79, (bArr[i50] >> 3) & 1);
                        qt.y0(80, (bArr[i50] >> 2) & 1);
                        qt.y0(81, (bArr[i50] >> 0) & 3);
                        int i51 = i2 + 5;
                        qt.y0(82, (bArr[i51] >> 6) & 3);
                        qt.y0(83, (bArr[i51] >> 3) & 7);
                        qt.y0(84, (bArr[i51] >> 0) & 7);
                        qt.y0(85, (bArr[i2 + 6] >> 0) & 255);
                        qt.y0(86, (bArr[i2 + 7] >> 0) & 255);
                        qt.y0(87, (bArr[i2 + 8] >> 0) & 255);
                        int i52 = i2 + 9;
                        qt.y0(88, (bArr[i52] >> 7) & 1);
                        qt.y0(89, (bArr[i52] >> 6) & 1);
                        qt.y0(90, (bArr[i52] >> 4) & 3);
                        qt.y0(91, (bArr[i52] >> 3) & 1);
                        qt.y0(92, (bArr[i52] >> 1) & 3);
                        break;
                    default:
                        switch (b2) {
                            case 11:
                                int i53 = bArr[i2 + 2] & 255;
                                int i54 = bArr[i2 + 3] & 255;
                                int i55 = bArr[i2 + 4] & 255;
                                int i56 = bArr[i2 + 5] & 255;
                                int i57 = bArr[i2 + 6] & 255;
                                int i58 = bArr[i2 + 7] & 255;
                                int i59 = bArr[i2 + 8] & 255;
                                int i60 = bArr[i2 + 9] & 255;
                                int i61 = bArr[i2 + 10] & 255;
                                int i62 = bArr[i2 + 11] & 255;
                                int i63 = bArr[i2 + 12] & 255;
                                int i64 = bArr[i2 + 13] & 255;
                                int i65 = bArr[i2 + 14] & 255;
                                int i66 = bArr[i2 + 15] & 255;
                                int i67 = bArr[i2 + 16] & 255;
                                int i68 = bArr[i2 + 17] & 255;
                                qt.y0(7, (((i53 << 8) & 65280) | (i54 & 255)) & 65535);
                                qt.y0(8, (((i55 << 8) & 65280) | (i56 & 255)) & 65535);
                                qt.y0(9, (((i57 << 8) & 65280) | (i58 & 255)) & 65535);
                                qt.y0(10, (((i59 << 8) & 65280) | (i60 & 255)) & 65535);
                                qt.y0(11, (((i61 << 8) & 65280) | (i62 & 255)) & 65535);
                                qt.y0(12, (((i63 << 8) & 65280) | (i64 & 255)) & 65535);
                                qt.y0(13, (((i65 << 8) & 65280) | (i66 & 255)) & 65535);
                                qt.y0(14, (((i67 << 8) & 65280) | (i68 & 255)) & 65535);
                                break;
                            case 12:
                                int i69 = bArr[i2 + 2] & 255;
                                int i70 = bArr[i2 + 3] & 255;
                                int i71 = bArr[i2 + 4] & 255;
                                int i72 = bArr[i2 + 5] & 255;
                                int i73 = bArr[i2 + 6] & 255;
                                int i74 = bArr[i2 + 7] & 255;
                                int i75 = bArr[i2 + 8] & 255;
                                int i76 = bArr[i2 + 9] & 255;
                                int i77 = bArr[i2 + 10] & 255;
                                int i78 = bArr[i2 + 11] & 255;
                                int i79 = bArr[i2 + 12] & 255;
                                int i80 = bArr[i2 + 13] & 255;
                                int i81 = bArr[i2 + 14] & 255;
                                int i82 = bArr[i2 + 15] & 255;
                                int i83 = bArr[i2 + 16] & 255;
                                int i84 = bArr[i2 + 17] & 255;
                                int i85 = bArr[i2 + 18] & 255;
                                int i86 = bArr[i2 + 19] & 255;
                                int i87 = bArr[i2 + 20] & 255;
                                int i88 = bArr[i2 + 21] & 255;
                                int i89 = bArr[i2 + 22] & 255;
                                int i90 = bArr[i2 + 23] & 255;
                                int i91 = bArr[i2 + 24] & 255;
                                int i92 = bArr[i2 + 25] & 255;
                                int i93 = bArr[i2 + 26] & 255;
                                int i94 = bArr[i2 + 27] & 255;
                                int i95 = bArr[i2 + 28] & 255;
                                int i96 = bArr[i2 + 29] & 255;
                                int i97 = bArr[i2 + 30] & 255;
                                int i98 = bArr[i2 + 31] & 255;
                                qt.y0(29, (((i69 << 8) & 65280) | (i70 & 255)) & 65535);
                                qt.y0(28, (((i71 << 8) & 65280) | (i72 & 255)) & 65535);
                                qt.y0(27, (((i73 << 8) & 65280) | (i74 & 255)) & 65535);
                                qt.y0(26, ((i76 & 255) | ((i75 << 8) & 65280)) & 65535);
                                qt.y0(25, (((i77 << 8) & 65280) | (i78 & 255)) & 65535);
                                qt.y0(24, (((i79 << 8) & 65280) | (i80 & 255)) & 65535);
                                qt.y0(23, (((i81 << 8) & 65280) | (i82 & 255)) & 65535);
                                qt.y0(22, (((i83 << 8) & 65280) | (i84 & 255)) & 65535);
                                qt.y0(21, (((i85 << 8) & 65280) | (i86 & 255)) & 65535);
                                qt.y0(20, (((i87 << 8) & 65280) | (i88 & 255)) & 65535);
                                qt.y0(19, (((i89 << 8) & 65280) | (i90 & 255)) & 65535);
                                qt.y0(18, (((i91 << 8) & 65280) | (i92 & 255)) & 65535);
                                qt.y0(17, (((i93 << 8) & 65280) | (i94 & 255)) & 65535);
                                qt.y0(16, (((i95 << 8) & 65280) | (i96 & 255)) & 65535);
                                qt.y0(15, (((i97 << 8) & 65280) | (i98 & 255)) & 65535);
                                break;
                            case 13:
                                int i99 = i2 + 2;
                                qt.y0(93, (bArr[i99] >> 7) & 1);
                                qt.y0(94, (bArr[i99] >> 6) & 1);
                                qt.y0(95, (bArr[i99] >> 3) & 7);
                                qt.y0(96, (bArr[i99] >> 2) & 1);
                                qt.y0(97, (bArr[i99] >> 1) & 1);
                                qt.y0(98, (bArr[i99] >> 0) & 1);
                                int i100 = i2 + 3;
                                qt.y0(99, (bArr[i100] >> 6) & 3);
                                qt.y0(100, (bArr[i100] >> 5) & 1);
                                qt.y0(101, (bArr[i100] >> 3) & 3);
                                qt.y0(102, (bArr[i100] >> 1) & 3);
                                int i101 = i2 + 4;
                                qt.y0(103, (bArr[i101] >> 7) & 1);
                                qt.y0(104, (bArr[i101] >> 5) & 3);
                                qt.y0(105, (bArr[i101] >> 3) & 3);
                                qt.y0(106, (bArr[i101] >> 2) & 1);
                                qt.y0(107, (bArr[i101] >> 1) & 1);
                                return;
                            case 14:
                                int i102 = i2 + 2;
                                qt.y0(108, (bArr[i102] >> 6) & 3);
                                qt.y0(109, (bArr[i102] >> 4) & 3);
                                qt.y0(110, (bArr[i102] >> 3) & 1);
                                int i103 = i2 + 3;
                                qt.y0(111, (bArr[i103] >> 7) & 1);
                                qt.y0(112, (bArr[i103] >> 6) & 1);
                                qt.y0(113, (bArr[i103] >> 5) & 1);
                                qt.y0(114, (bArr[i103] >> 4) & 1);
                                int i104 = i2 + 4;
                                qt.y0(115, (bArr[i104] >> 6) & 3);
                                qt.y0(116, (bArr[i104] >> 3) & 7);
                                return;
                            default:
                                return;
                        }
                        break;
                }
            } else {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
            }
        } else if ((bArr[i2 + 2] & 255) == 1) {
            int i105 = i2 + 3;
            l0.c0.a((bArr[i105] >> 3) & 1, (bArr[i105] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i105] & 255}, null, null);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f9901b.j();
        qt.q0(this.f9917r);
        u0.c.f17386m.d(this.f9922w);
        l0.b0.p0(this.f9923x);
        qt.o0(this.f9920u);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 178) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 132, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 130, 1, iArr[0]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 8) {
            return;
        }
        int i3 = iArr[0];
        if (i3 != 255) {
            switch (i3) {
                case 1:
                    e3(iArr[1]);
                    break;
                case 2:
                    c3(iArr[1]);
                    break;
                case 3:
                    d3(iArr[1]);
                    break;
                case 4:
                    g3(iArr[1]);
                    break;
                case 5:
                    f3(iArr[1]);
                    break;
                case 6:
                    b3(iArr[1]);
                    break;
                case 7:
                    a3(iArr[1]);
                    break;
            }
            return;
        }
        int i4 = iArr[1];
        if (i4 != 1) {
            if (i4 == 2) {
                f3(10000);
                H = nt.f8645g[162];
                int iB = this.f9901b.b(10, 0);
                int i5 = H;
                if (iB != i5) {
                    this.f9901b.g(10, i5);
                }
                qt.y0(176, H);
                return;
            }
            if (i4 != 3) {
                return;
            }
            a3(10000);
            I = nt.f8645g[162];
            int iB2 = this.f9901b.b(11, 0);
            int i6 = I;
            if (iB2 != i6) {
                this.f9901b.g(11, i6);
            }
            qt.y0(177, I);
            return;
        }
        c3(6);
        d3(10000);
        F = nt.f8645g[162];
        int iB3 = this.f9901b.b(8, 0);
        int i7 = F;
        if (iB3 != i7) {
            this.f9901b.g(8, i7);
        }
        qt.y0(174, F);
        Time time = new Time(Time.getCurrentTimezone());
        time.setToNow();
        G = (((byte) time.monthDay) & 255) | ((((byte) (time.year + DrmManagerClient.ERROR_UNKNOWN)) << 16) & Spanned.SPAN_PRIORITY) | ((((byte) (time.month + 1)) << 8) & 65280);
        int iB4 = this.f9901b.b(9, 0);
        int i8 = G;
        if (iB4 != i8) {
            this.f9901b.g(9, i8);
        }
        qt.y0(175, G);
    }

    public final void a3(int i2) {
        E = i2;
        qt.y0(166, i2);
        int iB = this.f9901b.b(7, 1000);
        int i3 = E;
        if (iB != i3) {
            this.f9901b.g(7, i3);
        }
    }

    public final void b3(int i2) {
        D = i2;
        qt.y0(169, i2);
        int iB = this.f9901b.b(6, 0);
        int i3 = D;
        if (iB != i3) {
            this.f9901b.g(6, i3);
        }
    }

    public final void c3(int i2) {
        f9900z = i2;
        qt.y0(164, i2);
        int iB = this.f9901b.b(2, 1);
        int i3 = f9900z;
        if (iB != i3) {
            this.f9901b.g(2, i3);
        }
    }

    public final void d3(int i2) {
        A = i2;
        qt.y0(163, i2);
        int iB = this.f9901b.b(3, 1000);
        int i3 = A;
        if (iB != i3) {
            this.f9901b.g(3, i3);
        }
    }

    public final void e3(int i2) {
        f9899y = i2;
        qt.y0(167, i2);
        int iB = this.f9901b.b(1, 0);
        int i3 = f9899y;
        if (iB != i3) {
            this.f9901b.g(1, i3);
        }
    }

    public final void f3(int i2) {
        C = i2;
        qt.y0(165, i2);
        int iB = this.f9901b.b(5, 1000);
        int i3 = C;
        if (iB != i3) {
            this.f9901b.g(5, i3);
        }
    }

    public final void g3(int i2) {
        B = i2;
        qt.y0(168, i2);
        int iB = this.f9901b.b(4, 0);
        int i3 = B;
        if (iB != i3) {
            this.f9901b.g(4, i3);
        }
    }

    public final boolean h3(int i2, int i3, int i4) {
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
}
