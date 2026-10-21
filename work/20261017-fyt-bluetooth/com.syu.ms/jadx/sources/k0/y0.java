package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class y0 extends lt {
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

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f12306k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f12307l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f12308m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f12309n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f12310o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f12311p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f12312q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f12313r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f12314s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f12315t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f12316u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f12317v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f12318w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f12319x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f12320y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f12321z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12323c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12324d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12325e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12322b = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12326f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f12327g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 55}, new int[]{11, 2}, new int[]{12, 9}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{16, -1}, new int[]{17, 3}, new int[]{18, 4}, new int[]{19, 18}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, 25}, new int[]{64, 18}, new int[]{129, 40}, new int[]{130, 41}, new int[]{131, 42}, new int[]{132, 43}, new int[]{133, 44}, new int[]{134, 45}, new int[]{135, -1}, new int[]{136, 12}, new int[]{137, 2}, new int[]{138, -1}, new int[]{139, -1}, new int[]{140, 3}, new int[]{141, 4}, new int[]{142, 27}, new int[]{143, 28}, new int[]{144, 6}, new int[]{145, 21}, new int[]{146, 58}, new int[]{147, 18}, new int[]{148, 29}, new int[]{149, 11}, new int[]{150, -1}, new int[]{151, 0}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f12328h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f12329i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f12330j = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 2, 123, 11, -128);
            } else {
                z.k.s(227, 2, 123, 11, 0);
            }
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
            y0.this.c3(u0.b.K3);
        }
    }

    public static int a3(int i2) {
        if (i2 > 7) {
            return 15;
        }
        return (i2 * 10) / 7;
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
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        qt.z(this.f12329i);
        u0.c.f17397x.a(this.f12330j, 1);
        if (nt.a()) {
            u0.c.f17379f.a(this.f12328h, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -127) {
            byte b3 = bArr[i2 + 2];
            qt.y0(132, (b3 >> 7) & 1);
            qt.y0(133, (b3 >> 6) & 1);
            qt.y0(134, (b3 >> 5) & 1);
            qt.y0(135, (b3 >> 4) & 1);
            qt.y0(136, (b3 >> 3) & 1);
            qt.y0(137, (b3 >> 2) & 1);
            qt.y0(138, (b3 >> 1) & 1);
            qt.y0(120, bArr[i2 + 3] & 255);
            qt.y0(121, bArr[i2 + 4] & 255);
            qt.y0(122, bArr[i2 + 5] & 255);
            qt.y0(123, bArr[i2 + 6] & 255);
            qt.y0(124, bArr[i2 + 7] & 255);
            qt.y0(125, bArr[i2 + 8] & 255);
        }
        if (b2 == -63) {
            int i4 = i2 + 2;
            int i5 = i2 + 3;
            qt.y0(130, ((bArr[i4] & 32) << 2) | ((bArr[i5] & 32) >> 5));
            qt.y0(131, ((bArr[i5] & 6) >> 1) | ((bArr[i4] & 8) << 4));
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            if (nt.a()) {
                l0.h0.u(bArr[i2 + 13] & 255);
                return;
            }
            return;
        }
        if (b2 == 118) {
            byte b4 = bArr[i2 + 2];
            qt.y0(109, (b4 >> 7) & 1);
            qt.y0(117, (b4 >> 6) & 1);
            qt.y0(110, ((b4 & 48) >> 4) & 255);
            qt.y0(118, (b4 >> 3) & 1);
            qt.y0(119, b4 & 7 & 255);
            byte b5 = bArr[i2 + 3];
            qt.y0(107, (b5 >> 7) & 1);
            qt.y0(108, (b5 >> 6) & 1);
            qt.y0(111, (b5 >> 3) & 1);
            qt.y0(112, (b5 >> 2) & 1);
            qt.y0(113, (b5 >> 0) & 3);
            return;
        }
        if (b2 == 121) {
            byte b6 = bArr[i2 + 2];
            qt.y0(126, (b6 >> 7) & 1);
            qt.y0(127, (b6 >> 6) & 1);
            qt.y0(128, (b6 >> 5) & 1);
            qt.y0(129, (b6 >> 4) & 1);
            return;
        }
        if (b2 == 33) {
            if (nt.a()) {
                this.f12325e = 128 | (bArr[i2 + 2] & 255);
                byte b7 = bArr[i2 + 3];
                int i6 = 0;
                while (true) {
                    iArr = this.f12327g;
                    if (i6 >= iArr.length) {
                        break;
                    }
                    int i7 = this.f12325e;
                    if (i7 == iArr[i6][0]) {
                        if (i7 == 0) {
                            break;
                        }
                        this.f12326f = i6;
                        break;
                    }
                    i6++;
                }
                if ((b7 & 255) != 0) {
                    if (i6 < iArr.length) {
                        l0.b0.l0(iArr[i6][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i8 = this.f12326f;
                    if (i8 < iArr.length && i8 != 255) {
                        l0.b0.l0(iArr[i8][1], 1);
                    }
                    this.f12326f = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 34) {
            if (nt.a()) {
                int i9 = i2 + 2;
                if (bArr[i9] == 1) {
                    int i10 = i2 + 3;
                    if (bArr[i10] != 0) {
                        if ((bArr[i10] & 255) < 128) {
                            u0.d.O1();
                            return;
                        } else {
                            u0.d.M1();
                            return;
                        }
                    }
                }
                if (bArr[i9] == 2 || bArr[i9] == 3) {
                    int i11 = i2 + 3;
                    if (bArr[i11] != 0) {
                        if ((bArr[i11] & 255) < 128) {
                            u0.d.I1();
                            return;
                        } else {
                            u0.d.B1();
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                u0.d.D2(a3(bArr[i2 + 6] & 255));
                u0.d.E2(a3(bArr[i2 + 7] & 255));
                u0.d.F2(a3(bArr[i2 + 8] & 255));
                u0.d.G2(a3(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 == 66) {
            qt.y0(114, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
            return;
        }
        switch (b2) {
            case 17:
                int i12 = i2 + 4;
                int i13 = bArr[i12] & 255;
                int i14 = i2 + 5;
                int i15 = bArr[i14] & 255;
                if (i13 == 20 && i15 == 1) {
                    nt.f8643f[115].s(115, new int[]{1}, null, null);
                }
                if (nt.a()) {
                    if ((bArr[i2 + 2] & 255 & 32) == 32) {
                        u0.d.C2(1);
                    } else {
                        u0.d.C2(0);
                    }
                    byte b8 = bArr[i12];
                    byte b9 = bArr[i14];
                    this.f12324d = b8 & 255;
                    int i16 = 0;
                    while (true) {
                        iArr2 = this.f12327g;
                        if (i16 < iArr2.length) {
                            int i17 = this.f12324d;
                            if (i17 != iArr2[i16][0]) {
                                i16++;
                            } else if (i17 != 0) {
                                this.f12323c = i16;
                            }
                        }
                    }
                    if ((b9 & 255) == 0) {
                        int i18 = this.f12323c;
                        if (i18 < iArr2.length && i18 != 255) {
                            l0.b0.l0(iArr2[i18][1], 1);
                        }
                        this.f12323c = 255;
                    } else if (i16 < iArr2.length) {
                        l0.b0.l0(iArr2[i16][1], 0);
                    }
                    qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                }
                break;
            case 18:
                byte b10 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b10 >> 6) & 1);
                    qt.y0(2, (b10 >> 7) & 1);
                } else {
                    qt.y0(1, (b10 >> 7) & 1);
                    qt.y0(2, (b10 >> 6) & 1);
                }
                qt.y0(3, (b10 >> 5) & 1);
                qt.y0(4, (b10 >> 4) & 1);
                qt.y0(5, (b10 >> 3) & 1);
                break;
            case 19:
                qt.y0(102, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(103, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(98, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
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
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f12329i);
        u0.c.f17397x.d(this.f12330j);
        u0.c.f17379f.d(this.f12328h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 139) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 51) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 2, -54, 5, (byte) iArr[0]);
        }
        if (i2 == 53) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 2, -54, 3, (byte) iArr[0]);
            return;
        }
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    e3(1, iArr[0]);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    e3(2, iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    e3(11, 0);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    e3(4, iArr[0]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    e3(5, iArr[0]);
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
                    e3(6, iArr[0]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    e3(8, iArr[0]);
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
                    e3(9, iArr[0]);
                    break;
                }
                break;
            case 8:
                if (iArr != null && iArr.length > 0) {
                    e3(10, iArr[0]);
                    break;
                }
                break;
            case 9:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    e3(12, iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    e3(13, iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f3(1, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f3(2, iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f3(3, iArr[0]);
                    break;
                }
                break;
            case 14:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f3(4, iArr[0]);
                    break;
                }
                break;
            case 15:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f3(5, iArr[0]);
                    break;
                }
                break;
            case 16:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f12306k = iArr[0];
                    h3();
                    break;
                }
                break;
            case 17:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f12307l = iArr[0];
                    h3();
                    break;
                }
                break;
            case 18:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f12319x = iArr[0];
                    b3();
                    break;
                }
                break;
            case 19:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f12320y = iArr[0];
                    b3();
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
                            g3(iArr[0]);
                            break;
                        }
                        break;
                    case 25:
                        if (iArr != null && iArr.length > 0) {
                            f12308m = iArr[0];
                            h3();
                            break;
                        }
                        break;
                    case 26:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f12309n = iArr[0];
                            h3();
                            break;
                        }
                        break;
                    case 27:
                        if (iArr != null && iArr.length > 0) {
                            f12310o = iArr[0];
                            h3();
                            break;
                        }
                        break;
                    case 28:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f12311p = iArr[0];
                            h3();
                            break;
                        }
                        break;
                    case 29:
                        if (iArr != null && iArr.length > 0) {
                            f12312q = iArr[0];
                            h3();
                            break;
                        }
                        break;
                    case 30:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f12313r = iArr[0];
                            h3();
                            break;
                        }
                        break;
                    case 31:
                        if (iArr != null && iArr.length > 0) {
                            f12314s = iArr[0];
                            h3();
                            break;
                        }
                        break;
                    case 32:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f12315t = iArr[0];
                            h3();
                            break;
                        }
                        break;
                    case 33:
                        if (iArr != null && iArr.length > 0) {
                            f12316u = iArr[0];
                            h3();
                            break;
                        }
                        break;
                    case 34:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f12317v = iArr[0];
                            h3();
                            break;
                        }
                        break;
                    case 35:
                        if (iArr != null && iArr.length > 0) {
                            f12318w = iArr[0];
                            h3();
                            break;
                        }
                        break;
                    case 36:
                        if (iArr != null && iArr.length > 0) {
                            f12321z = iArr[0];
                            b3();
                            break;
                        }
                        break;
                    case 37:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            A = iArr[0];
                            b3();
                            break;
                        }
                        break;
                    case 38:
                        if (iArr != null && iArr.length > 0) {
                            B = iArr[0];
                            b3();
                            break;
                        }
                        break;
                    case 39:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            C = iArr[0];
                            b3();
                            break;
                        }
                        break;
                    case 40:
                        if (iArr != null && iArr.length > 0) {
                            D = iArr[0];
                            b3();
                            break;
                        }
                        break;
                    case 41:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            E = iArr[0];
                            b3();
                            break;
                        }
                        break;
                    case 42:
                        if (iArr != null && iArr.length > 0) {
                            F = iArr[0];
                            b3();
                            break;
                        }
                        break;
                    case 43:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            G = iArr[0];
                            b3();
                            break;
                        }
                        break;
                    case 44:
                        if (iArr != null && iArr.length > 0) {
                            H = iArr[0];
                            b3();
                            break;
                        }
                        break;
                    case 45:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            I = iArr[0];
                            b3();
                            break;
                        }
                        break;
                    case 46:
                        if (iArr != null && iArr.length > 0) {
                            J = iArr[0];
                            b3();
                            break;
                        }
                        break;
                }
                break;
        }
    }

    public final void b3() {
        z.k.s(227, 10, -117, (byte) ((f12319x << 7) | (f12320y << 6) | (A << 5) | (C << 4) | (E << 3) | (G << 2) | (I << 1)), (byte) f12321z, (byte) B, (byte) D, (byte) F, (byte) H, (byte) J, 0, 0, 0);
    }

    public final void c3(int i2) {
        int[] iArr = new int[5];
        iArr[0] = 227;
        iArr[1] = 2;
        iArr[2] = -102;
        iArr[3] = 1;
        iArr[4] = i2 != 0 ? 2 : 1;
        z.k.s(iArr);
    }

    public final void e3(int i2, int i3) {
        z.k.s(227, 2, 123, (byte) i2, (byte) i3);
    }

    public final void f3(int i2, int i3) {
        z.k.s(227, 2, 125, (byte) i2, (byte) i3);
    }

    public final void g3(int i2) {
        byte b2 = (byte) i2;
        z.k.s(227, 4, 27, b2, b2, 1, -1);
    }

    public final void h3() {
        z.k.s(227, 10, -118, (byte) ((f12306k << 7) | (f12307l << 6) | (f12309n << 5) | (f12311p << 4) | (f12313r << 3) | (f12315t << 2) | (f12317v << 1)), (byte) f12308m, (byte) f12310o, (byte) f12312q, (byte) f12314s, (byte) f12316u, (byte) f12318w, 0, 0, 0);
    }
}
