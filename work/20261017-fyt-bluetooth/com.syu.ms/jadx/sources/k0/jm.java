package k0;

import android.drm.DrmManagerClient;
import android.os.Process;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class jm extends lt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f6977s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f6978t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f6979u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f6980v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f6981w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f6982x;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6983b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6986e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6984c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6985d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 13}, new int[]{7, 6}, new int[]{8, 12}, new int[]{9, 18}, new int[]{10, 26}, new int[]{13, 29}, new int[]{19, 31}, new int[]{20, 30}, new int[]{21, 29}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6987f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f6988g = {new int[]{1, 21}, new int[]{2, 54}, new int[]{3, 18}, new int[]{4, 1}, new int[]{6, 3}, new int[]{7, 4}, new int[]{8, 5}, new int[]{9, 6}, new int[]{10, 0}, new int[]{11, 38}, new int[]{12, 1}, new int[]{13, 55}, new int[]{14, 8}, new int[]{15, 7}, new int[]{16, 30}, new int[]{17, 31}, new int[]{18, 29}, new int[]{19, 34}, new int[]{20, 35}, new int[]{21, 1}, new int[]{22, 11}, new int[]{48, 49}, new int[]{49, 40}, new int[]{50, 41}, new int[]{51, 42}, new int[]{52, 43}, new int[]{53, 44}, new int[]{54, 45}, new int[]{55, 46}, new int[]{56, 47}, new int[]{57, 48}, new int[]{58, 50}, new int[]{59, 51}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public o1.g0 f6989h = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f6990i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f6991j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f6992k = 3;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f6993l = 4;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f6994m = 5;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f6995n = 6;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f6996o = new a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f6997p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f6998q = new b();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f6999r = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 198, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0));
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(jm.this.f6999r);
            jm.this.f6997p = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jm jmVar = jm.this;
            int i2 = jmVar.f6997p - 1;
            jmVar.f6997p = i2;
            if (i2 <= 0) {
                l0.b0.p0(jmVar.f6999r);
                jm.this.f6997p = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (App.c().getResources().getConfiguration().orientation == 1) {
                z.k.s(227, 198, 3, 41, 1, 0);
            } else {
                z.k.s(227, 198, 3, 41, 0, 0);
            }
            int i3 = nt.f8637c;
            if (i3 == 122) {
                z.k.s(227, 198, 3, 43, 1, 0);
            } else if (i3 == 208) {
                z.k.s(227, 198, 3, 43, 0, 0);
            } else if (i3 == 252) {
                z.k.s(227, 198, 3, 43, 2, 0);
            }
            jm jmVar2 = jm.this;
            jmVar2.m3(jmVar2.f6989h.b(1, 0));
            jm jmVar3 = jm.this;
            jmVar3.h3(jmVar3.f6989h.b(2, 0));
            jm jmVar4 = jm.this;
            jmVar4.i3(jmVar4.f6989h.b(3, 0));
            jm jmVar5 = jm.this;
            jmVar5.j3(jmVar5.f6989h.b(4, 0));
            jm jmVar6 = jm.this;
            jmVar6.k3(jmVar6.f6989h.b(5, 0));
            jm jmVar7 = jm.this;
            jmVar7.l3(jmVar7.f6989h.b(6, 0));
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f6989h.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8317l = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        u0.c.f17386m.a(this.f6998q, 1);
        qt.z(this.f6996o);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 37) {
            int i4 = i2 + 2;
            qt.y0(10, (bArr[i4] >> 7) & 1);
            qt.y0(11, (bArr[i4] >> 6) & 1);
            qt.y0(12, (bArr[i4] >> 5) & 1);
            qt.y0(13, (bArr[i4] >> 3) & 1);
            qt.y0(14, (bArr[i4] >> 2) & 1);
            int i5 = i2 + 3;
            qt.y0(18, (bArr[i5] >> 7) & 1);
            qt.y0(19, (bArr[i5] >> 6) & 1);
            qt.y0(20, (bArr[i5] >> 5) & 1);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i6 = i2 + 4;
                if ((bArr[i6] & 255) == 0) {
                    qt.y0(28, -2);
                } else if ((bArr[i6] & 255) == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i6] & 255);
                }
                int i7 = i2 + 5;
                if ((bArr[i7] & 255) == 0) {
                    qt.y0(27, -2);
                } else if ((bArr[i7] & 255) == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i7] & 255);
                }
            } else {
                int i8 = i2 + 4;
                if ((bArr[i8] & 255) == 0) {
                    qt.y0(27, -2);
                } else if ((bArr[i8] & 255) == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i8] & 255);
                }
                int i9 = i2 + 5;
                if ((bArr[i9] & 255) == 0) {
                    qt.y0(28, -2);
                } else if ((bArr[i9] & 255) == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i9] & 255);
                }
            }
            int i10 = i2 + 6;
            qt.y0(65, (bArr[i10] >> 7) & 1);
            qt.y0(16, (bArr[i10] >> 6) & 1);
            qt.y0(15, (bArr[i10] >> 5) & 1);
            qt.y0(37, (bArr[i10] >> 0) & 1);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i11 = i2 + 7;
                qt.y0(30, (bArr[i11] >> 4) & 15);
                qt.y0(29, (bArr[i11] >> 0) & 15);
            } else {
                int i12 = i2 + 7;
                qt.y0(29, (bArr[i12] >> 4) & 15);
                qt.y0(30, (bArr[i12] >> 0) & 15);
            }
            qt.y0(21, bArr[i2 + 8] & 255);
        }
        if (b2 == 48) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 540);
            return;
        }
        if (b2 == 40) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            return;
        }
        if (b2 == 41) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            this.f6987f = b4 & 255;
            int i13 = 0;
            while (true) {
                iArr = this.f6988g;
                if (i13 >= iArr.length) {
                    break;
                }
                int i14 = this.f6987f;
                if (i14 == iArr[i13][0]) {
                    if (i14 == 0) {
                        break;
                    }
                    this.f6986e = i13;
                    break;
                }
                i13++;
            }
            switch (this.f6987f) {
                case 14:
                    for (int i15 = 0; i15 < (b5 & 255); i15++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                case 15:
                    for (int i16 = 0; i16 < (b5 & 255); i16++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                case 16:
                    for (int i17 = 0; i17 < (b5 & 255); i17++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
                case 17:
                    for (int i18 = 0; i18 < (b5 & 255); i18++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                default:
                    int i19 = b5 & 255;
                    if (i19 == 1) {
                        if (i13 < iArr.length) {
                            l0.b0.l0(iArr[i13][1], 0);
                        }
                    } else if (i19 == 0) {
                        int i20 = this.f6986e;
                        if (i20 < iArr.length && i20 != 255) {
                            l0.b0.l0(iArr[i20][1], 1);
                        }
                        this.f6986e = 255;
                    }
                    break;
            }
        }
        if (b2 == 56) {
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, bArr[i2 + 3] & 255);
            qt.y0(100, bArr[i2 + 4] & 255);
            qt.y0(101, bArr[i2 + 5] & 255);
            qt.y0(102, bArr[i2 + 6] & 255);
            qt.y0(103, bArr[i2 + 7] & 255);
            qt.y0(104, bArr[i2 + 8] & 255);
            qt.y0(105, bArr[i2 + 9] & 255);
            qt.y0(106, bArr[i2 + 10] & 255);
            qt.y0(107, bArr[i2 + 11] & 255);
            qt.y0(108, bArr[i2 + 12] & 255);
            qt.y0(109, bArr[i2 + 13] & 255);
            qt.y0(110, bArr[i2 + 14] & 255);
            qt.y0(111, bArr[i2 + 15] & 255);
            qt.y0(112, bArr[i2 + 16] & 255);
            qt.y0(113, bArr[i2 + 17] & 255);
            qt.y0(114, bArr[i2 + 18] & 255);
            qt.y0(115, bArr[i2 + 19] & 255);
            qt.y0(116, bArr[i2 + 20] & 255);
            qt.y0(117, bArr[i2 + 21] & 255);
            qt.y0(118, bArr[i2 + 22] & 255);
            int i21 = i2 + 23;
            qt.y0(119, (bArr[i21] >> 6) & 3);
            qt.y0(120, (bArr[i21] >> 5) & 1);
            qt.y0(121, (bArr[i21] >> 4) & 1);
            qt.y0(122, (bArr[i21] >> 3) & 1);
            qt.y0(123, (bArr[i21] >> 1) & 3);
            qt.y0(124, (bArr[i21] >> 0) & 1);
            int i22 = i2 + 24;
            qt.y0(125, (bArr[i22] >> 7) & 1);
            qt.y0(126, (bArr[i22] >> 5) & 3);
            qt.y0(127, (bArr[i22] >> 4) & 1);
            qt.y0(128, (bArr[i22] >> 3) & 1);
            qt.y0(129, (bArr[i22] >> 2) & 1);
            qt.y0(130, (bArr[i22] >> 1) & 1);
            qt.y0(131, (bArr[i22] >> 0) & 1);
            int i23 = i2 + 25;
            qt.y0(132, (bArr[i23] >> 6) & 3);
            qt.y0(133, (bArr[i23] >> 5) & 1);
            qt.y0(134, (bArr[i23] >> 4) & 1);
            qt.y0(135, (bArr[i23] >> 3) & 1);
            qt.y0(136, (bArr[i23] >> 2) & 1);
            qt.y0(Process.MEDIA_UID, (bArr[i23] >> 2) & 1);
            qt.y0(137, (bArr[i23] >> 1) & 1);
            if (((bArr[i23] >> 0) & 1) == 1) {
                qt.a(1);
            } else {
                qt.a(0);
            }
            int i24 = i2 + 26;
            qt.y0(141, (bArr[i24] >> 7) & 1);
            qt.y0(142, (bArr[i24] >> 6) & 1);
            qt.y0(143, (bArr[i24] >> 5) & 1);
            qt.y0(144, (bArr[i24] >> 4) & 1);
            qt.y0(145, (bArr[i24] >> 3) & 1);
            qt.y0(146, (bArr[i24] >> 2) & 1);
            qt.y0(147, (bArr[i24] >> 1) & 1);
            qt.y0(148, (bArr[i24] >> 0) & 1);
            qt.y0(149, (bArr[i2 + 27] >> 7) & 1);
            return;
        }
        if (b2 == 57) {
            int i25 = i2 + 2;
            if (bArr[i25] == 0) {
                qt.y0(151, bArr[i2 + 3] & 255);
                return;
            } else if (bArr[i25] == 1) {
                qt.y0(152, bArr[i2 + 3] & 255);
                return;
            } else {
                if (bArr[i25] == 2) {
                    qt.y0(153, bArr[i2 + 3] & 255);
                    return;
                }
                return;
            }
        }
        switch (b2) {
            case 33:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                this.f6984c = b6 & 255;
                int i26 = 0;
                while (true) {
                    iArr2 = this.f6985d;
                    if (i26 < iArr2.length) {
                        int i27 = this.f6984c;
                        if (i27 != iArr2[i26][0]) {
                            i26++;
                        } else if (i27 != 0) {
                            this.f6983b = i26;
                        }
                    }
                }
                int i28 = this.f6984c;
                if (i28 == 19) {
                    for (int i29 = 0; i29 < (b7 & 255); i29++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if (i28 != 20) {
                    int i30 = b7 & 255;
                    if (i30 == 1) {
                        if (i26 < iArr2.length) {
                            l0.b0.l0(iArr2[i26][1], 0);
                        }
                    } else if (i30 == 0) {
                        int i31 = this.f6983b;
                        if (i31 < iArr2.length && i31 != 255) {
                            l0.b0.l0(iArr2[i31][1], 1);
                        }
                        this.f6983b = 255;
                    }
                } else {
                    for (int i32 = 0; i32 < (b7 & 255); i32++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i33 = i2 + 2;
                int i34 = bArr[i33] & 255;
                int i35 = i2 + 3;
                int i36 = bArr[i35] & 255;
                int i37 = i2 + 4;
                int i38 = bArr[i37] & 255;
                int i39 = i2 + 5;
                int i40 = bArr[i39] & 255;
                if (i34 == 0 && i36 == 0 && i38 == 0 && i40 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i34 || l0.c0.f13014h != i36 || l0.c0.f13015i != i38 || l0.c0.f13016j != i40) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i34;
                l0.c0.f13014h = i36;
                l0.c0.f13015i = i38;
                l0.c0.f13016j = i40;
                u0.d.D2(l0.c0.E0(bArr[i33] & 255));
                u0.d.E2(l0.c0.E0(bArr[i35] & 255));
                u0.d.F2(l0.c0.E0(bArr[i37] & 255));
                u0.d.G2(l0.c0.E0(bArr[i39] & 255));
                break;
            default:
                switch (b2) {
                    case 125:
                        qt.y0(138, (bArr[i2 + 3] >> 0) & 15);
                        break;
                    case 126:
                        qt.y0(139, ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(140, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280));
                        break;
                    case 127:
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f6989h.j();
        u0.c.f17386m.d(this.f6998q);
        l0.b0.p0(this.f6999r);
        qt.q0(this.f6996o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 159) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            switch (iArr[0]) {
                case 54:
                    m3(iArr[1]);
                    break;
                case 55:
                default:
                    z.k.s(227, 198, 3, iArr[0], iArr[1], iArr[2]);
                    break;
                case 56:
                    h3(iArr[1]);
                    break;
                case 57:
                    if (iArr[1] == 1) {
                        i3(iArr[2]);
                    } else {
                        j3(iArr[2]);
                    }
                    if (iArr[2] != 0) {
                        z.k.s(227, 198, 3, iArr[0], iArr[1], iArr[2]);
                    }
                    break;
                case 58:
                    if (iArr[1] == 1) {
                        k3(iArr[2]);
                    } else {
                        l3(iArr[2]);
                    }
                    if (iArr[2] != 0) {
                        z.k.s(227, 198, 3, iArr[0], iArr[1], iArr[2]);
                    }
                    break;
            }
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 130, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 134, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 199, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            int i3 = iArr[0];
            if (i3 != 16) {
                if (i3 != 17) {
                    return;
                }
                z.k.s(227, 198, 2, 47, 0);
            } else {
                z.k.s(227, 199, 2, 38, 1);
                a.i.a0(100L);
                z.k.s(227, 199, 2, 38, 0);
            }
        }
    }

    public final void h3(int i2) {
        f6978t = i2;
        z.k.s(227, 198, 3, 56, i2, 0);
        qt.y0(154, i2);
        int iB = this.f6989h.b(2, 0);
        int i3 = f6978t;
        if (iB != i3) {
            this.f6989h.g(2, i3);
        }
    }

    public final void i3(int i2) {
        f6979u = i2;
        qt.y0(155, i2);
        int iB = this.f6989h.b(3, 0);
        int i3 = f6979u;
        if (iB != i3) {
            this.f6989h.g(3, i3);
        }
    }

    public final void j3(int i2) {
        f6980v = i2;
        qt.y0(156, i2);
        int iB = this.f6989h.b(4, 0);
        int i3 = f6980v;
        if (iB != i3) {
            this.f6989h.g(4, i3);
        }
    }

    public final void k3(int i2) {
        f6981w = i2;
        qt.y0(157, i2);
        int iB = this.f6989h.b(5, 0);
        int i3 = f6981w;
        if (iB != i3) {
            this.f6989h.g(5, i3);
        }
    }

    public final void l3(int i2) {
        f6982x = i2;
        qt.y0(158, i2);
        int iB = this.f6989h.b(6, 0);
        int i3 = f6982x;
        if (iB != i3) {
            this.f6989h.g(6, i3);
        }
    }

    public final void m3(int i2) {
        f6977s = i2;
        z.k.s(227, 198, 3, 54, i2, 0);
        qt.y0(150, i2);
        int iB = this.f6989h.b(1, 0);
        int i3 = f6977s;
        if (iB != i3) {
            this.f6989h.g(1, i3);
        }
    }
}
