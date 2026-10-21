package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class f3 extends lt {
    public static int A;
    public static int B;
    public static int C;
    public static int D;
    public static int E;
    public static int F;
    public static int G;
    public static int H;
    public static int I;
    public static int J;
    public static int K;
    public static Runnable L = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f5037l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f5038m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f5039n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f5040o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f5041p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f5042q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f5043r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f5044s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f5045t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f5046u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f5047v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f5048w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f5049x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f5050y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f5051z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5053c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5055e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f5056f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 5}, new int[]{11, 2}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 27}, new int[]{18, 28}, new int[]{19, 1}, new int[]{20, -1}, new int[]{64, 18}, new int[]{129, 0}, new int[]{145, 11}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5057g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5058h = 255;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5059i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f5060j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f5061k = new d();

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            f3.c3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, DateFormat.is24HourFormat(App.c()) ? 1 : 0, 0, 0, 0, 0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f3.this.h3(u0.b.K3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.e2 == 1) {
                o1.x.x(nt.f8643f, 166, 1);
                u0.b.e2 = 0;
            }
        }
    }

    public static void a3() {
        int[] iArr = new int[14];
        for (int i2 = 0; i2 < 14; i2++) {
            iArr[i2] = 0;
        }
        iArr[0] = 227;
        iArr[1] = 11;
        iArr[2] = 164;
        iArr[3] = 15;
        iArr[4] = 1;
        iArr[5] = 64;
        iArr[6] = o0.e.B & 255;
        iArr[7] = 0;
        int i3 = o0.e.f16794r;
        iArr[8] = (i3 / 60) % 60;
        iArr[9] = i3 % 60;
        iArr[10] = 32;
        iArr[11] = 32;
        iArr[12] = o0.e.C & 255;
        iArr[13] = 0;
        z.k.s(iArr);
    }

    public static void b3() {
        int i2;
        int i3 = w0.d.f17796h;
        if (i3 - 65536 == 0) {
            i2 = 1;
        } else if (1 == i3 - 65536 || 2 == i3 - 65536) {
            i2 = 2;
        } else {
            i2 = (i3 + 0 == 0 || 1 == i3 + 0) ? 4 : 0;
        }
        int i4 = (i3 - 65536 == 0 || 1 == i3 - 65536 || 2 == i3 - 65536) ? w0.d.f17797i : w0.d.f17797i;
        int i5 = i4 & 255;
        int i6 = (i4 >> 8) & 255;
        int i7 = w0.d.f17798j;
        z.k.s(227, 6, -94, (byte) i2, (byte) i5, (byte) i6, (byte) ((i7 % 6 != 0 || i7 == 0) ? (i7 & 255) % 6 : 6), 0, 0);
    }

    public static void c3() {
        f3();
        int i2 = u0.b.D;
        if (i2 == 1) {
            b3();
        } else {
            if (i2 != 4) {
                return;
            }
            a3();
        }
    }

    public static byte d3() {
        byte b2 = 0;
        switch (u0.b.D) {
            case 0:
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
                b2 = 5;
                break;
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 - 65536 != 0 && 1 != i2 - 65536 && 2 != i2 - 65536) {
                    int i3 = i2 - 0;
                }
                b2 = 1;
                break;
            case 4:
                int i4 = o0.e.H;
                b2 = 2;
                break;
            case 12:
                b2 = -2;
                break;
            case 13:
                b2 = -1;
                break;
        }
        if (u0.b.f17347o == 1) {
            return (byte) 5;
        }
        return b2;
    }

    public static void f3() {
        if (y0.f.C0 >= 30) {
            z.k.s(227, 3, -95, i3() | 32, d3(), 30);
        } else {
            z.k.s(227, 3, -95, i3() | 32, d3(), y0.f.C0);
        }
    }

    public static int i3() {
        return u0.b.f17320f != 0 ? 128 : 0;
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
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8320o = 0;
        qt.z(this.f5059i);
        u0.c.f17397x.a(this.f5060j, 1);
        z.c.f18183c.a(this.f5061k, 1);
        if (nt.a()) {
            qt.z(L);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -123) {
            qt.y0(151, ((bArr[i2 + 3] & 128) >> 7) | (bArr[i2 + 2] & 128));
        }
        if (b2 == -63) {
            int i7 = i2 + 2;
            int i8 = i2 + 3;
            qt.y0(130, ((32 & bArr[i8]) >> 5) | ((bArr[i7] & 32) << 2));
            qt.y0(131, ((bArr[i8] & 8) >> 3) | ((bArr[i7] & 8) << 4));
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            byte b3 = bArr[i2 + 2];
            qt.y0(53, (b3 >> 5) & 1);
            qt.y0(13, (b3 >> 3) & 1);
            qt.y0(55, (b3 >> 2) & 1);
            qt.y0(11, (b3 >> 0) & 1);
            int[] iArr3 = new int[1];
            iArr3[0] = (bArr[i2 + 3] & 16) == 0 ? 0 : 1;
            qt.y0(12, iArr3);
            byte b4 = bArr[i2 + 4];
            qt.y0(16, (b4 >> 5) & 1);
            qt.y0(65, (b4 >> 4) & 1);
            int i9 = bArr[i2 + 5] & 3;
            qt.y0(52, i9 <= 2 ? i9 : 2);
            byte b5 = bArr[i2 + 6];
            if (b5 != 3) {
                if (b5 == 5) {
                    i4 = 0;
                    i5 = 1;
                } else if (b5 != 6) {
                    switch (b5) {
                        case 11:
                            i5 = 0;
                            i6 = 0;
                            i4 = 1;
                            break;
                        case 12:
                            i5 = 0;
                            i4 = 1;
                            i6 = 1;
                            break;
                        case 13:
                            i6 = 0;
                            i4 = 1;
                            i5 = 1;
                            break;
                        case 14:
                            i4 = 1;
                            i5 = i4;
                            break;
                        default:
                            i4 = 0;
                            i5 = i4;
                            break;
                    }
                } else {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                }
                i6 = i5;
            } else {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            }
            qt.y0(18, i4);
            qt.y0(19, i5);
            qt.y0(20, i6);
            int i10 = bArr[i2 + 7] & 255;
            qt.y0(21, i10 <= 8 ? i10 : 8);
            int i11 = i2 + 8;
            byte b6 = bArr[i11];
            int i12 = i2 + 9;
            byte b7 = bArr[i12];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b6 = bArr[i12];
                b7 = bArr[i11];
            }
            if (b6 == -2) {
                qt.y0(27, -2);
            } else if (b6 != -1) {
                int i13 = (b6 & 255) * 5;
                if (i13 < 200 || i13 > 260) {
                    i13 = (i13 / 10) * 10;
                }
                qt.y0(27, i13);
            } else {
                qt.y0(27, -3);
            }
            if (b7 == -2) {
                qt.y0(28, -2);
            } else if (b7 != -1) {
                int i14 = (b7 & 255) * 5;
                if (i14 < 200 || i14 > 260) {
                    i14 = (i14 / 10) * 10;
                }
                qt.y0(28, i14);
            } else {
                qt.y0(28, -3);
            }
            if (nt.a()) {
                l0.h0.u(bArr[i2 + 13] & 255);
                return;
            }
            return;
        }
        if (b2 == 118) {
            byte b8 = bArr[i2 + 2];
            qt.y0(109, (b8 >> 7) & 1);
            qt.y0(117, (b8 >> 6) & 1);
            qt.y0(110, ((b8 & 48) >> 4) & 255);
            qt.y0(118, (b8 >> 3) & 1);
            qt.y0(119, b8 & 7 & 255);
            byte b9 = bArr[i2 + 3];
            qt.y0(107, (b9 >> 7) & 1);
            qt.y0(108, (b9 >> 6) & 1);
            qt.y0(111, (b9 >> 3) & 1);
            qt.y0(112, (b9 >> 2) & 1);
            qt.y0(113, (b9 >> 0) & 3);
            return;
        }
        if (b2 == 121) {
            byte b10 = bArr[i2 + 2];
            qt.y0(126, (b10 >> 7) & 1);
            qt.y0(127, (b10 >> 6) & 1);
            qt.y0(128, (b10 >> 5) & 1);
            qt.y0(129, (b10 >> 4) & 1);
            return;
        }
        if (b2 == 33) {
            if (nt.a()) {
                this.f5054d = (bArr[i2 + 2] & 255) | 128;
                int i15 = 0;
                while (true) {
                    iArr = this.f5056f;
                    if (i15 >= iArr.length) {
                        break;
                    }
                    int i16 = this.f5054d;
                    if (i16 == iArr[i15][0]) {
                        if (i16 == 0) {
                            break;
                        }
                        this.f5055e = i15;
                        break;
                    }
                    i15++;
                }
                if (this.f5054d != 128) {
                    if (i15 < iArr.length) {
                        l0.b0.l0(iArr[i15][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i17 = this.f5052b;
                    if (i17 < iArr.length && i17 != 255) {
                        l0.b0.l0(iArr[this.f5055e][1], 1);
                    }
                    this.f5055e = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 34) {
            if (nt.a() && bArr[i2 + 2] == 1) {
                int i18 = i2 + 3;
                if (bArr[i18] != 0) {
                    if ((bArr[i18] & 255) < 128) {
                        u0.d.O1();
                        return;
                    } else {
                        u0.d.M1();
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2((((bArr[i2 + 2] & 255) * 10) / 7) - 1);
                u0.d.S2((((bArr[i2 + 3] & 255) * 10) / 7) - 1);
                u0.d.T2((((bArr[i2 + 4] & 255) * 10) / 7) - 1);
                u0.d.U2((((bArr[i2 + 5] & 255) * 10) / 7) - 1);
                int i19 = i2 + 6;
                if ((bArr[i19] & 255) == 0) {
                    u0.d.D2(15);
                } else {
                    u0.d.D2((((bArr[i19] & 255) * 10) / 7) - 1);
                }
                int i20 = i2 + 7;
                if ((bArr[i20] & 255) == 0) {
                    u0.d.E2(15);
                } else {
                    u0.d.E2((((bArr[i20] & 255) * 10) / 7) - 1);
                }
                int i21 = i2 + 8;
                if ((bArr[i21] & 255) == 0) {
                    u0.d.F2(15);
                } else {
                    u0.d.F2((((bArr[i21] & 255) * 10) / 7) - 1);
                }
                int i22 = i2 + 9;
                if ((bArr[i22] & 255) == 0) {
                    u0.d.G2(15);
                    return;
                } else {
                    u0.d.G2((((bArr[i22] & 255) * 10) / 7) - 1);
                    return;
                }
            }
            return;
        }
        if (b2 == 66) {
            qt.y0(114, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
            return;
        }
        switch (b2) {
            case -127:
                byte b11 = bArr[i2 + 2];
                qt.y0(132, (b11 >> 7) & 1);
                qt.y0(133, (b11 >> 6) & 1);
                qt.y0(134, (b11 >> 5) & 1);
                qt.y0(135, (b11 >> 4) & 1);
                qt.y0(136, (b11 >> 3) & 1);
                qt.y0(137, (b11 >> 2) & 1);
                qt.y0(138, (b11 >> 1) & 1);
                qt.y0(120, bArr[i2 + 3] & 255);
                qt.y0(121, bArr[i2 + 4] & 255);
                qt.y0(122, bArr[i2 + 5] & 255);
                qt.y0(123, bArr[i2 + 6] & 255);
                qt.y0(124, bArr[i2 + 7] & 255);
                qt.y0(125, bArr[i2 + 8] & 255);
                break;
            case -126:
                byte b12 = bArr[i2 + 2];
                int i23 = (b12 & 128) == 0 ? 0 : 1;
                f5050y = i23;
                qt.y0(139, i23);
                int i24 = (b12 & 64) == 0 ? 0 : 1;
                f5051z = i24;
                qt.y0(140, i24);
                int i25 = (b12 & 32) == 0 ? 0 : 1;
                B = i25;
                qt.y0(141, i25);
                int i26 = (b12 & 16) == 0 ? 0 : 1;
                D = i26;
                qt.y0(142, i26);
                int i27 = (b12 & 8) == 0 ? 0 : 1;
                F = i27;
                qt.y0(143, i27);
                int i28 = (b12 & 4) == 0 ? 0 : 1;
                H = i28;
                qt.y0(144, i28);
                int i29 = (b12 & 2) == 0 ? 0 : 1;
                J = i29;
                qt.y0(145, i29);
                int i30 = bArr[i2 + 3] & 255;
                A = i30;
                qt.y0(146, i30);
                int i31 = bArr[i2 + 4] & 255;
                C = i31;
                qt.y0(147, i31);
                int i32 = bArr[i2 + 5] & 255;
                E = i32;
                qt.y0(148, i32);
                int i33 = bArr[i2 + 6] & 255;
                G = i33;
                qt.y0(149, i33);
                int i34 = bArr[i2 + 7] & 255;
                I = i34;
                qt.y0(150, i34);
                int i35 = bArr[i2 + 8] & 255;
                K = i35;
                qt.y0(117, i35);
                break;
            case -125:
                if (nt.a()) {
                    e3(bArr[i2 + 2] & 255 & 1);
                }
                break;
            default:
                switch (b2) {
                    case 17:
                        int i36 = i2 + 4;
                        int i37 = bArr[i36] & 255;
                        int i38 = i2 + 5;
                        int i39 = bArr[i38] & 255;
                        if (i37 == 20 && i39 == 1) {
                            nt.f8643f[115].s(115, new int[]{1}, null, null);
                        }
                        if (nt.a()) {
                            if ((bArr[i2 + 2] & 255 & 32) == 32) {
                                u0.d.C2(1);
                            } else {
                                u0.d.C2(0);
                            }
                            byte b13 = bArr[i36];
                            byte b14 = bArr[i38];
                            this.f5053c = b13 & 255;
                            int i40 = 0;
                            while (true) {
                                iArr2 = this.f5056f;
                                if (i40 < iArr2.length) {
                                    int i41 = this.f5053c;
                                    if (i41 != iArr2[i40][0]) {
                                        i40++;
                                    } else if (i41 != 0) {
                                        this.f5052b = i40;
                                    }
                                }
                            }
                            if ((b14 & 255) == 0) {
                                int i42 = this.f5052b;
                                if (i42 < iArr2.length && i42 != 255) {
                                    l0.b0.l0(iArr2[i42][1], 1);
                                }
                                this.f5052b = 255;
                            } else if (i40 < iArr2.length) {
                                l0.b0.l0(iArr2[i40][1], 0);
                            }
                            qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                        }
                        break;
                    case 18:
                        byte b15 = bArr[i2 + 4];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(1, (b15 >> 6) & 1);
                            qt.y0(2, (b15 >> 7) & 1);
                        } else {
                            qt.y0(1, (b15 >> 7) & 1);
                            qt.y0(2, (b15 >> 6) & 1);
                        }
                        qt.y0(3, (b15 >> 5) & 1);
                        qt.y0(4, (b15 >> 4) & 1);
                        qt.y0(5, (b15 >> 3) & 1);
                        break;
                    case 19:
                        qt.y0(102, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                        qt.y0(103, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] & 255) << 8));
                        break;
                    case 20:
                        qt.y0(104, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                        qt.y0(99, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                        qt.y0(100, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                        break;
                    case 21:
                        qt.y0(101, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                        qt.y0(105, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                        qt.y0(106, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f5059i);
        u0.c.f17397x.d(this.f5060j);
        z.c.f18183c.d(this.f5061k);
        qt.q0(L);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 167) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        char c2;
        if (i2 >= 256) {
            switch (i2) {
                case 256:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(2, iArr[0]);
                        break;
                    }
                    break;
                case 257:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(3, iArr[0]);
                        break;
                    }
                    break;
                case 258:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(4, iArr[0]);
                        break;
                    }
                    break;
                case 259:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(5, iArr[0]);
                        break;
                    }
                    break;
                case 260:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(6, iArr[0]);
                        break;
                    }
                    break;
                case 261:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(7, iArr[0]);
                        break;
                    }
                    break;
                case 262:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(8, iArr[0]);
                        break;
                    }
                    break;
                case 263:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(9, iArr[0]);
                        break;
                    }
                    break;
                case 264:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(10, iArr[0]);
                        break;
                    }
                    break;
                case 265:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        iArr[0] = iArr[0] + 1;
                        k3(11, iArr[0]);
                        break;
                    }
                    break;
                case 266:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        iArr[0] = iArr[0] + 1;
                        k3(12, iArr[0]);
                        break;
                    }
                    break;
                case 267:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        iArr[0] = iArr[0] + 1;
                        k3(13, iArr[0]);
                        break;
                    }
                    break;
                case 268:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] < 0) {
                            iArr[0] = 0;
                        }
                        if (iArr[0] > 2) {
                            iArr[0] = 2;
                        }
                        k3(14, iArr[0]);
                        break;
                    }
                    break;
                case i.a.Theme_findOnPageNextDrawable /* 269 */:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(15, iArr[0]);
                        break;
                    }
                    break;
            }
        }
        if (i2 == 51) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            iArr[0] = iArr[0] + 1;
            if (iArr[0] < 1) {
                iArr[0] = 1;
                c2 = 3;
            } else {
                c2 = 3;
                if (iArr[0] > 3) {
                    iArr[0] = 3;
                }
            }
            int[] iArr2 = new int[5];
            iArr2[0] = 227;
            iArr2[1] = 2;
            iArr2[2] = -54;
            iArr2[c2] = 5;
            iArr2[4] = (byte) iArr[0];
            z.k.s(iArr2);
        }
        if (i2 == 53) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 0;
            }
            iArr[0] = iArr[0] + 1;
            z.k.s(227, 2, -54, 3, (byte) iArr[0]);
            return;
        }
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    l3(1, iArr[0]);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    l3(2, iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    l3(11, 0);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    l3(4, iArr[0]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    l3(5, iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    l3(6, iArr[0]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    l3(8, iArr[0]);
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    l3(9, iArr[0]);
                    break;
                }
                break;
            case 8:
                if (iArr != null && iArr.length > 0) {
                    l3(10, iArr[0]);
                    break;
                }
                break;
            case 9:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    l3(12, iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    l3(13, iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    m3(1, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    m3(2, iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    m3(3, iArr[0]);
                    break;
                }
                break;
            case 14:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    m3(4, iArr[0]);
                    break;
                }
                break;
            case 15:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    m3(5, iArr[0]);
                    break;
                }
                break;
            case 16:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f5037l = iArr[0];
                    o3();
                    break;
                }
                break;
            case 17:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f5038m = iArr[0];
                    o3();
                    break;
                }
                break;
            case 18:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f5050y = iArr[0];
                    g3();
                    break;
                }
                break;
            case 19:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f5051z = iArr[0];
                    g3();
                    break;
                }
                break;
            case 20:
                z.k.s(227, 2, -116, 1, -1);
                break;
            default:
                switch (i2) {
                    case 24:
                        if (iArr != null && iArr.length > 0) {
                            n3(iArr[0]);
                            break;
                        }
                        break;
                    case 25:
                        if (iArr != null && iArr.length > 0) {
                            f5039n = iArr[0];
                            o3();
                            break;
                        }
                        break;
                    case 26:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5040o = iArr[0];
                            o3();
                            break;
                        }
                        break;
                    case 27:
                        if (iArr != null && iArr.length > 0) {
                            f5041p = iArr[0];
                            o3();
                            break;
                        }
                        break;
                    case 28:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5042q = iArr[0];
                            o3();
                            break;
                        }
                        break;
                    case 29:
                        if (iArr != null && iArr.length > 0) {
                            f5043r = iArr[0];
                            o3();
                            break;
                        }
                        break;
                    case 30:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5044s = iArr[0];
                            o3();
                            break;
                        }
                        break;
                    case 31:
                        if (iArr != null && iArr.length > 0) {
                            f5045t = iArr[0];
                            o3();
                            break;
                        }
                        break;
                    case 32:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5046u = iArr[0];
                            o3();
                            break;
                        }
                        break;
                    case 33:
                        if (iArr != null && iArr.length > 0) {
                            f5047v = iArr[0];
                            o3();
                            break;
                        }
                        break;
                    case 34:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5048w = iArr[0];
                            o3();
                            break;
                        }
                        break;
                    case 35:
                        if (iArr != null && iArr.length > 0) {
                            f5049x = iArr[0];
                            o3();
                            break;
                        }
                        break;
                    case 36:
                        if (iArr != null && iArr.length > 0) {
                            A = iArr[0];
                            g3();
                            break;
                        }
                        break;
                    case 37:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            B = iArr[0];
                            g3();
                            break;
                        }
                        break;
                    case 38:
                        if (iArr != null && iArr.length > 0) {
                            C = iArr[0];
                            g3();
                            break;
                        }
                        break;
                    case 39:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            D = iArr[0];
                            g3();
                            break;
                        }
                        break;
                    case 40:
                        if (iArr != null && iArr.length > 0) {
                            E = iArr[0];
                            g3();
                            break;
                        }
                        break;
                    case 41:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            F = iArr[0];
                            g3();
                            break;
                        }
                        break;
                    case 42:
                        if (iArr != null && iArr.length > 0) {
                            G = iArr[0];
                            g3();
                            break;
                        }
                        break;
                    case 43:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            H = iArr[0];
                            g3();
                            break;
                        }
                        break;
                    case 44:
                        if (iArr != null && iArr.length > 0) {
                            I = iArr[0];
                            g3();
                            break;
                        }
                        break;
                    case 45:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            J = iArr[0];
                            g3();
                            break;
                        }
                        break;
                    case 46:
                        if (iArr != null && iArr.length > 0) {
                            K = iArr[0];
                            g3();
                            break;
                        }
                        break;
                }
                break;
        }
    }

    public void e3(int i2) {
        this.f5057g = i2;
        boolean z2 = i2 == 1;
        if (this.f5058h != i2) {
            if (z2) {
                qt.y0(1015, 1);
            } else {
                qt.y0(1015, 0);
            }
        }
        this.f5058h = this.f5057g;
    }

    public final void g3() {
        z.k.s(227, 10, -117, (byte) ((f5050y << 7) | (f5051z << 6) | (B << 5) | (D << 4) | (F << 3) | (H << 2) | (J << 1)), (byte) A, (byte) C, (byte) E, (byte) G, (byte) I, (byte) K, 0, 0, 0);
    }

    public final void h3(int i2) {
        int[] iArr = new int[5];
        iArr[0] = 227;
        iArr[1] = 2;
        iArr[2] = -102;
        iArr[3] = 1;
        iArr[4] = i2 != 0 ? 2 : 1;
        z.k.s(iArr);
    }

    public final void k3(int i2, int i3) {
        z.k.s(227, 2, 59, (byte) i2, (byte) i3);
    }

    public final void l3(int i2, int i3) {
        z.k.s(227, 2, 123, (byte) i2, (byte) i3);
    }

    public final void m3(int i2, int i3) {
        z.k.s(227, 2, 125, (byte) i2, (byte) i3);
    }

    public final void n3(int i2) {
        byte b2 = (byte) i2;
        z.k.s(227, 4, 27, b2, b2, 1, -1);
    }

    public final void o3() {
        z.k.s(227, 10, -118, (byte) ((f5037l << 7) | (f5038m << 6) | (f5040o << 5) | (f5042q << 4) | (f5044s << 3) | (f5046u << 2) | (f5048w << 1)), (byte) f5039n, (byte) f5041p, (byte) f5043r, (byte) f5045t, (byte) f5047v, (byte) f5049x, 0, 0, 0);
    }
}
