package k0;

import android.media.MediaPlayer;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class b5 extends lt {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int[] f3544l = new int[19];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int[] f3545m = new int[19];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int[] f3546n = new int[19];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int[] f3547o = new int[19];

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int[] f3548p = new int[19];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int[] f3549q = new int[4];

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int[] f3550r = new int[19];

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int[] f3551s = new int[19];

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int[] f3552t = new int[19];

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int[] f3553u = new int[19];

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int[] f3554v = new int[19];

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f3555w;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3557c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3558d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f3556b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3559e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f3560f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, -1}, new int[]{4, 12}, new int[]{5, 18}, new int[]{6, 6}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 5}, new int[]{11, 2}, new int[]{12, -1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o1.g0 f3561g = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3562h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f3563i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f3564j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3565k = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17320f != 0) {
                z.k.s(227, 2, 45, 2, 41);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 13) {
                z.k.s(227, 2, -66, 1, 0);
            } else {
                z.k.s(227, 2, -66, 1, 1);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 3, -75, (byte) time.hour, (byte) time.minute, (byte) time.second);
        }
    }

    public static int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 9;
        }
        if (i2 == 2) {
            return 6;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 0;
        }
        return 3;
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
        mtVar.f8313h = 1;
        mtVar.f8320o = 0;
        this.f3561g.a();
        b3(this.f3561g.b(1, 0));
        if (nt.f8633a == 196774) {
            u0.c.f17374a.a(this.f3564j, 1);
            u0.c.f17386m.a(this.f3564j, 1);
            return;
        }
        qt.z(this.f3565k);
        if (nt.a()) {
            u0.c.f17386m.a(this.f3563i, 1);
            qt.z(l0.h0.f13060f);
            w0.e.f17815a.a(l0.h0.f13060f, 1);
            w0.e.f17819e.a(l0.h0.f13060f, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        int i7 = 10;
        if (b2 == -128) {
            if (u0.b.D != 13) {
                qt.y0(118, (bArr[i2 + 2] >> 3) & 1);
            }
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            byte b7 = bArr[i2 + 6];
            byte b8 = bArr[i2 + 7];
            byte b9 = bArr[i2 + 8];
            byte b10 = bArr[i2 + 9];
            byte b11 = bArr[i2 + 10];
            byte b12 = bArr[i2 + 11];
            byte b13 = bArr[i2 + 12];
            byte b14 = bArr[i2 + 13];
            byte b15 = bArr[i2 + 14];
            byte b16 = bArr[i2 + 15];
            byte b17 = bArr[i2 + 16];
            byte b18 = bArr[i2 + 17];
            byte b19 = bArr[i2 + 18];
            byte b20 = bArr[i2 + 19];
            byte b21 = bArr[i2 + 20];
            byte b22 = bArr[i2 + 21];
            byte b23 = bArr[i2 + 22];
            byte b24 = bArr[i2 + 23];
            qt.y0(118, (b3 >> 3) & 1);
            qt.y0(119, (b4 >> 3) & 1);
            qt.y0(120, (b8 >> 3) & 1);
            qt.y0(121, (b8 >> 2) & 1);
            qt.y0(122, (b9 >> 4) & 1);
            qt.y0(123, (b9 >> 6) & 1);
            qt.y0(124, (b9 >> 7) & 1);
            qt.y0(125, (b10 >> 7) & 1);
            qt.y0(126, (b12 >> 3) & 1);
            qt.y0(127, (b23 >> 3) & 1);
            qt.y0(128, (b4 >> 7) & 1);
            qt.y0(129, (b5 >> 7) & 1);
            qt.y0(130, (b6 >> 3) & 1);
            qt.y0(131, (b8 >> 7) & 1);
            qt.y0(132, (b8 >> 1) & 1);
            qt.y0(133, (b9 >> 5) & 1);
            qt.y0(134, (b15 >> 3) & 1);
            qt.y0(135, (b20 >> 3) & 1);
            qt.y0(147, (b18 >> 7) & 1);
            int i8 = (b4 >> 5) & 1;
            int i9 = (b4 >> 2) & 1;
            int i10 = (b4 >> 1) & 1;
            int i11 = b4 & 1;
            int[] iArr2 = {i8, i8, i8, i8, 0, 0, 0, 0, i9, i9, i9, i9, (b4 >> 6) & 1, 0, i10, (b4 >> 4) & 1, i10, i11, i11};
            qt.C0(136, iArr2, f3544l);
            f3544l = iArr2;
            int i12 = (b5 >> 6) & 1;
            int i13 = (b6 >> 5) & 1;
            int i14 = (b5 >> 1) & 1;
            int[] iArr3 = {i12, i12, i12, i12, (b5 >> 2) & 1, (b5 >> 4) & 1, (b6 >> 4) & 1, (b6 >> 6) & 1, (b6 >> 7) & 1, i13, i13, i13, (b5 >> 3) & 1, b5 & 1, i14, (b5 >> 5) & 1, i14, 0, 0};
            qt.C0(137, iArr3, f3545m);
            f3545m = iArr3;
            int i15 = (b6 >> 2) & 1;
            int i16 = (b6 >> 1) & 1;
            int i17 = (b8 >> 6) & 1;
            int i18 = (b8 >> 5) & 1;
            int i19 = (b7 >> 1) & 1;
            int i20 = (b7 >> 2) & 1;
            int[] iArr4 = {i15, i15, i16, i16, 0, 0, 0, 0, i17, i17, i18, i18, (b7 >> 3) & 1, b6 & 1, i19, b7 & 1, i19, i20, i20};
            qt.C0(138, iArr4, f3546n);
            f3546n = iArr4;
            int i21 = (b8 >> 4) & 1;
            int i22 = b8 & 1;
            int[] iArr5 = {i21, i21, i21, i21, 0, 0, 0, 0, 0, 0, 0, 0, i21, i21, i22, i22, i22, 0, 0};
            qt.C0(139, iArr5, f3547o);
            f3547o = iArr5;
            int i23 = (b9 >> 2) & 1;
            int i24 = (b9 >> 1) & 1;
            int i25 = (b10 >> 6) & 1;
            int i26 = (b10 >> 4) & 1;
            int i27 = (b10 >> 5) & 1;
            int[] iArr6 = {i23, i23, i24, i24, 0, 0, 0, 0, i25, i25, i26, i26, (b9 >> 3) & 1, b9 & 1, i27, i27, i27, 0, 0};
            qt.C0(140, iArr6, f3548p);
            f3548p = iArr6;
            int[] iArr7 = {(b10 >> 3) & 1, (b10 >> 2) & 1, (b10 >> 1) & 1, b10 & 1};
            qt.C0(141, iArr7, f3549q);
            f3549q = iArr7;
            int[] iArr8 = {(b11 >> 7) & 1, (b11 >> 6) & 1, (b11 >> 5) & 1, (b11 >> 4) & 1, (b11 >> 2) & 1, b11 & 1, b12 & 1, (b12 >> 2) & 1, (b13 >> 7) & 1, (b13 >> 6) & 1, (b13 >> 5) & 1, (b13 >> 4) & 1, (b11 >> 3) & 1, (b12 >> 4) & 1, (b11 >> 1) & 1, (b12 >> 6) & 1, (b12 >> 1) & 1, (b12 >> 7) & 1, (b12 >> 5) & 1};
            qt.C0(142, iArr8, f3550r);
            f3550r = iArr8;
            int[] iArr9 = {(b13 >> 3) & 1, (b13 >> 2) & 1, (b13 >> 1) & 1, b13 & 1, (b14 >> 2) & 1, b14 & 1, b15 & 1, (b15 >> 2) & 1, (b16 >> 7) & 1, (b16 >> 6) & 1, (b16 >> 5) & 1, (b16 >> 4) & 1, (b14 >> 3) & 1, (b15 >> 4) & 1, (b14 >> 1) & 1, (b15 >> 6) & 1, (b15 >> 1) & 1, (b15 >> 7) & 1, (b15 >> 5) & 1};
            qt.C0(143, iArr9, f3551s);
            f3551s = iArr9;
            int[] iArr10 = {(b16 >> 3) & 1, (b16 >> 2) & 1, (b16 >> 1) & 1, b16 & 1, (b17 >> 6) & 1, (b17 >> 4) & 1, (b18 >> 4) & 1, (b18 >> 6) & 1, (b18 >> 3) & 1, (b18 >> 2) & 1, (b18 >> 1) & 1, b18 & 1, (b17 >> 7) & 1, b17 & 1, (b17 >> 5) & 1, (b17 >> 2) & 1, (b18 >> 5) & 1, (b17 >> 3) & 1, (b17 >> 1) & 1};
            qt.C0(144, iArr10, f3552t);
            f3552t = iArr10;
            int[] iArr11 = {(b19 >> 7) & 1, (b19 >> 6) & 1, (b19 >> 5) & 1, (b19 >> 4) & 1, (b19 >> 2) & 1, b19 & 1, b20 & 1, (b20 >> 2) & 1, (b21 >> 3) & 1, (b21 >> 2) & 1, (b21 >> 1) & 1, b21 & 1, (b19 >> 3) & 1, (b20 >> 4) & 1, (b19 >> 1) & 1, (b20 >> 6) & 1, (b20 >> 1) & 1, (b20 >> 7) & 1, (b20 >> 5) & 1};
            qt.C0(145, iArr11, f3553u);
            f3553u = iArr11;
            int[] iArr12 = {(b22 >> 7) & 1, (b22 >> 6) & 1, (b22 >> 5) & 1, (b22 >> 4) & 1, (b22 >> 2) & 1, b22 & 1, b23 & 1, (b23 >> 2) & 1, (b24 >> 7) & 1, (b24 >> 6) & 1, (b24 >> 5) & 1, (b24 >> 4) & 1, (b22 >> 3) & 1, (b23 >> 4) & 1, (b22 >> 1) & 1, (b23 >> 6) & 1, (b23 >> 1) & 1, (b23 >> 7) & 1, (b23 >> 5) & 1};
            qt.C0(146, iArr12, f3554v);
            f3554v = iArr12;
            return;
        }
        if (b2 == -24) {
            qt.y0(Process.MEDIA_UID, (bArr[i2 + 3] & 255) - 1);
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            byte b25 = bArr[i2 + 2];
            byte b26 = bArr[i2 + 3];
            byte b27 = bArr[i2 + 4];
            qt.y0(10, (b25 >> 6) & 1);
            qt.y0(13, (b25 >> 3) & 1);
            qt.y0(62, (b25 >> 2) & 1);
            qt.y0(11, (b25 >> 0) & 1);
            int[] iArr13 = new int[1];
            iArr13[0] = ((b26 >> 4) & 1) == 0 ? 0 : 1;
            qt.y0(12, iArr13);
            qt.y0(16, (b27 >> 5) & 1);
            qt.y0(65, (b27 >> 4) & 1);
            byte b28 = bArr[i2 + 6];
            if (b28 == 3) {
                i4 = 1;
                i5 = 0;
                i6 = 0;
            } else if (b28 == 4) {
                i5 = 1;
                i4 = 1;
                i6 = 0;
            } else if (b28 == 5) {
                i6 = 1;
                i4 = 1;
                i5 = 0;
            } else if (b28 == 6) {
                i6 = 1;
                i5 = 0;
                i4 = 0;
            } else if (b28 != 7) {
                i5 = b28 != 10 ? 0 : 1;
                i6 = i5;
                i4 = i6;
            } else {
                i5 = 1;
                i6 = 1;
                i4 = 0;
            }
            qt.y0(18, i5);
            qt.y0(19, i6);
            qt.y0(20, i4);
            int i28 = bArr[i2 + 7] & 255;
            qt.y0(21, i28 <= 7 ? i28 : 7);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i29 = i2 + 9;
                byte b29 = bArr[i29];
                if (b29 == -2) {
                    qt.y0(27, -2);
                } else if (b29 != -1) {
                    qt.y0(27, (bArr[i29] & 255) * 5);
                } else {
                    qt.y0(27, -3);
                }
                int i30 = i2 + 8;
                byte b30 = bArr[i30];
                if (b30 == -2) {
                    qt.y0(28, -2);
                    return;
                } else if (b30 != -1) {
                    qt.y0(28, (bArr[i30] & 255) * 5);
                    return;
                } else {
                    qt.y0(28, -3);
                    return;
                }
            }
            int i31 = i2 + 8;
            byte b31 = bArr[i31];
            if (b31 == -2) {
                qt.y0(27, -2);
            } else if (b31 != -1) {
                qt.y0(27, (bArr[i31] & 255) * 5);
            } else {
                qt.y0(27, -3);
            }
            int i32 = i2 + 9;
            byte b32 = bArr[i32];
            if (b32 == -2) {
                qt.y0(28, -2);
                return;
            } else if (b32 != -1) {
                qt.y0(28, (bArr[i32] & 255) * 5);
                return;
            } else {
                qt.y0(28, -3);
                return;
            }
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
        if (b2 != 17) {
            if (b2 == 18) {
                byte b33 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b33 >> 6) & 1);
                    qt.y0(2, (b33 >> 7) & 1);
                } else {
                    qt.y0(1, (b33 >> 7) & 1);
                    qt.y0(2, (b33 >> 6) & 1);
                }
                qt.y0(3, (b33 >> 5) & 1);
                qt.y0(4, (b33 >> 4) & 1);
                qt.y0(5, (b33 >> 3) & 1);
                qt.y0(0, (b33 >> 2) & 1);
                return;
            }
            if (b2 != 22) {
                if (b2 != 23) {
                    return;
                }
                qt.y0(110, ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
                qt.y0(111, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
                qt.y0(112, ((bArr[i2 + 7] & 255) << 16) | ((bArr[i2 + 8] & 255) << 8) | (bArr[i2 + 9] & 255));
                qt.y0(113, ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
                qt.y0(114, ((bArr[i2 + 12] & 255) << 16) | ((bArr[i2 + 13] & 255) << 8) | (bArr[i2 + 14] & 255));
                qt.y0(115, (bArr[i2 + 16] & 255) | ((bArr[i2 + 15] & 255) << 8));
                return;
            }
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
            qt.y0(100, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
            qt.y0(101, ((bArr[i2 + 7] & 255) << 8) | (bArr[i2 + 8] & 255));
            qt.y0(102, ((bArr[i2 + 9] & 255) << 16) | ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
            qt.y0(103, ((bArr[i2 + 12] & 255) << 8) | (bArr[i2 + 13] & 255));
            byte b34 = bArr[i2 + 14];
            qt.y0(104, b34 & 3 & 255);
            qt.y0(105, (b34 >> 2) & 3 & 255);
            qt.y0(106, (b34 >> 4) & 3 & 255);
            qt.y0(107, (b34 >> 6) & 1 & 255);
            qt.y0(108, (b34 >> 7) & 1 & 255);
            int i33 = bArr[i2 + 15] & 255;
            if (i33 < 0) {
                i7 = 0;
            } else if (i33 <= 10) {
                i7 = i33;
            }
            qt.y0(109, this.f3556b[i7]);
            return;
        }
        int i34 = i2 + 4;
        byte b35 = bArr[i34];
        int i35 = i2 + 5;
        byte b36 = bArr[i35];
        if (b35 == 12 && b36 == 1) {
            if (o1.u.Y0().equals("com.syu.canbus")) {
                o1.u.k();
            } else {
                o1.u.v();
            }
        }
        if (nt.a()) {
            byte b37 = bArr[i34];
            byte b38 = bArr[i35];
            this.f3558d = b37 & 255;
            int i36 = 0;
            while (true) {
                iArr = this.f3560f;
                if (i36 >= iArr.length) {
                    break;
                }
                int i37 = this.f3558d;
                if (i37 == iArr[i36][0]) {
                    if (i37 == 0) {
                        break;
                    }
                    this.f3557c = i36;
                    break;
                }
                i36++;
            }
            if ((b38 & 255) == 0) {
                int i38 = this.f3557c;
                if (i38 < iArr.length && i38 != 255) {
                    l0.b0.l0(iArr[i38][1], 1);
                }
                this.f3557c = 255;
            } else if (i36 < iArr.length) {
                int i39 = h0.c.E;
                if ((i39 == 4 || i39 == 3 || i39 == 5) && iArr[i36][0] == 6) {
                    l0.b0.l0(26, 0);
                } else {
                    l0.b0.l0(iArr[i36][1], 0);
                }
            }
            qt.l(bArr[i2 + 9], bArr[i2 + 8], true, 5000);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f3561g.j();
        qt.q0(this.f3565k);
        o1.y yVar = u0.c.f17386m;
        yVar.d(this.f3563i);
        qt.q0(l0.h0.f13060f);
        w0.e.f17815a.d(l0.h0.f13060f);
        w0.e.f17819e.d(l0.h0.f13060f);
        yVar.d(this.f3564j);
        u0.c.f17374a.d(this.f3564j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 149) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 101) {
            if (iArr == null || iArr.length <= 0 || iArr[0] != 3) {
                return;
            }
            z.k.s(227, 2, -14, 6, -1);
            return;
        }
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            iArr[0] = iArr[0] + 1;
            if (iArr[0] < 1) {
                iArr[0] = 1;
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            b3(iArr[0]);
        }
    }

    public final void b3(int i2) {
        f3555w = i2;
        z.k.s(227, 2, -14, (byte) i2, -1);
        int iB = this.f3561g.b(1, 0);
        int i3 = f3555w;
        if (iB != i3) {
            this.f3561g.g(1, i3);
        }
    }
}
