package k0;

import android.content.Intent;
import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.Time;
import app.App;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class ki extends lt {
    public static int C = 0;
    public static int D = 1;
    public static int E = 1000;
    public static int F = 0;
    public static int G = 1000;
    public static int H = 0;
    public static int I = 1000;
    public static int J;
    public static int K;
    public static int L;
    public static int M;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7313b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7316e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7314c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7315d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{16, 13}, new int[]{17, 21}, new int[]{18, 5}, new int[]{19, 1}, new int[]{20, 6}, new int[]{21, 18}, new int[]{22, 0}, new int[]{23, 31}, new int[]{24, 30}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7317f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7318g = {new int[]{1, 1}, new int[]{2, -1}, new int[]{3, -1}, new int[]{4, 0}, new int[]{5, 5}, new int[]{6, 6}, new int[]{7, 2}, new int[]{8, 54}, new int[]{9, 34}, new int[]{10, 35}, new int[]{11, 32}, new int[]{12, 33}, new int[]{13, -1}, new int[]{14, -1}, new int[]{15, 29}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f7319h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7320i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7321j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f7322k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7323l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f7324m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f7325n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f7326o = new c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f7327p = new d();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public o1.g0 f7328q = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f7329r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f7330s = 2;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f7331t = 3;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f7332u = 4;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f7333v = 5;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f7334w = 6;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f7335x = 7;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f7336y = 8;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f7337z = 9;
    public final int A = 10;
    public final int B = 11;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                qt.y0(1009, 2);
            } else {
                qt.y0(1009, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 11 || i2 == 13) {
                return;
            }
            z.k.s(227, 161, 2, 4, 3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ki.this.f7327p);
            ki.this.f7325n = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ki kiVar = ki.this;
            int i2 = kiVar.f7325n - 1;
            kiVar.f7325n = i2;
            if (i2 <= 0) {
                l0.b0.p0(kiVar.f7327p);
                ki.this.f7325n = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                int i3 = u0.b.D;
                if (i3 != 11 && i3 != 13) {
                    z.k.s(227, 161, 2, 4, 3);
                }
                ki kiVar2 = ki.this;
                kiVar2.e3(kiVar2.f7328q.b(1, 0));
                ki kiVar3 = ki.this;
                kiVar3.c3(kiVar3.f7328q.b(2, 1));
                ki kiVar4 = ki.this;
                kiVar4.d3(kiVar4.f7328q.b(3, 1000));
                ki kiVar5 = ki.this;
                kiVar5.g3(kiVar5.f7328q.b(4, 0));
                ki kiVar6 = ki.this;
                kiVar6.f3(kiVar6.f7328q.b(5, 1000));
                ki kiVar7 = ki.this;
                kiVar7.b3(kiVar7.f7328q.b(6, 0));
                ki kiVar8 = ki.this;
                kiVar8.a3(kiVar8.f7328q.b(7, 1000));
                if (ki.C != 1) {
                    qt.y0(171, 0);
                    return;
                }
                Time time = new Time(Time.getCurrentTimezone());
                time.setToNow();
                if (ki.this.h3(ki.K, (((byte) time.monthDay) & 255) | ((((byte) (time.year + DrmManagerClient.ERROR_UNKNOWN)) << 16) & Spanned.SPAN_PRIORITY) | ((((byte) (time.month + 1)) << 8) & 65280), ki.D)) {
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
        this.f7328q.a();
        o1.y yVar = u0.c.f17386m;
        yVar.a(this.f7326o, 1);
        u0.c.f17374a.a(this.f7324m, 1);
        yVar.a(this.f7324m, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        if (nt.f8633a != 15139255) {
            return;
        }
        u0.c.f17379f.a(this.f7323l, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        String str;
        byte b2 = bArr[i2];
        if (b2 == 38) {
            qt.y0(142, bArr[i2 + 2] & 255);
            qt.y0(143, bArr[i2 + 3] & 255);
            qt.y0(144, bArr[i2 + 4] & 255);
            qt.y0(145, bArr[i2 + 5] & 255);
        }
        if (b2 == 116) {
            int i4 = i2 + 2;
            qt.y0(100, (bArr[i4] >> 7) & 1);
            qt.y0(101, (bArr[i4] >> 5) & 3);
            qt.y0(102, (bArr[i4] >> 3) & 3);
            qt.y0(103, (bArr[i4] >> 1) & 3);
            int i5 = i2 + 3;
            qt.y0(104, (bArr[i5] >> 7) & 1);
            qt.y0(105, (bArr[i5] >> 5) & 3);
            int i6 = i2 + 4;
            qt.y0(106, (bArr[i6] >> 7) & 1);
            qt.y0(107, (bArr[i6] >> 5) & 3);
            qt.y0(108, (bArr[i6] >> 3) & 3);
            int i7 = i2 + 5;
            qt.y0(109, (bArr[i7] >> 7) & 1);
            qt.y0(110, (bArr[i7] >> 5) & 3);
            int i8 = i2 + 6;
            qt.y0(111, (bArr[i8] >> 5) & 7);
            qt.y0(112, (bArr[i8] >> 3) & 3);
            qt.y0(113, (bArr[i8] >> 2) & 1);
            qt.y0(114, (bArr[i8] >> 0) & 3);
            int i9 = i2 + 7;
            qt.y0(115, (bArr[i9] >> 7) & 1);
            qt.y0(116, (bArr[i9] >> 5) & 3);
            qt.y0(117, (bArr[i9] >> 3) & 3);
            int i10 = i2 + 8;
            qt.y0(118, (bArr[i10] >> 7) & 1);
            qt.y0(119, (bArr[i10] >> 6) & 1);
            qt.y0(120, (bArr[i10] >> 5) & 1);
            int i11 = i2 + 9;
            qt.y0(121, (bArr[i11] >> 7) & 1);
            qt.y0(122, (bArr[i11] >> 6) & 1);
            qt.y0(123, (bArr[i11] >> 3) & 7);
            qt.y0(124, (bArr[i11] >> 2) & 1);
            qt.y0(125, (bArr[i11] >> 0) & 3);
            int i12 = i2 + 10;
            qt.y0(126, (bArr[i12] >> 7) & 1);
            qt.y0(127, (bArr[i12] >> 5) & 3);
            qt.y0(128, (bArr[i12] >> 3) & 3);
            qt.y0(129, (bArr[i12] >> 1) & 3);
            int i13 = i2 + 11;
            qt.y0(130, (bArr[i13] >> 7) & 1);
            qt.y0(131, (bArr[i13] >> 6) & 1);
            qt.y0(132, (bArr[i13] >> 5) & 1);
            int i14 = i2 + 12;
            qt.y0(133, (bArr[i14] >> 6) & 3);
            qt.y0(134, (bArr[i14] >> 4) & 3);
            qt.y0(135, (bArr[i2 + 13] >> 5) & 7);
            qt.y0(136, (bArr[i2 + 14] >> 6) & 3);
            qt.y0(137, (bArr[i2 + 15] >> 6) & 3);
            return;
        }
        if (b2 == 125) {
            int i15 = bArr[i2 + 2] & 255;
            if (i15 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i16 = i2 + 3;
                    l0.c0.b((bArr[i16] >> 3) & 1, (bArr[i16] >> 4) & 1, 0);
                    return;
                } else {
                    int i17 = i2 + 3;
                    l0.c0.a((bArr[i17] >> 3) & 1, (bArr[i17] >> 4) & 1, 0);
                    return;
                }
            }
            if (i15 == 8) {
                qt.i(bArr[i2 + 3] & 255, bArr[i2 + 4] & 255, true, 540);
                this.f7322k = true;
                return;
            }
            if (i15 == 3) {
                int i18 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i18);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i18}, null, null);
                return;
            }
            if (i15 != 4) {
                return;
            }
            qt.y0(162, (bArr[i2 + 3] & 255) | ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280));
            if (C == 1) {
                int i19 = nt.f8645g[162];
                int i20 = J;
                if (i19 <= E + i20 || i20 == 0) {
                    qt.y0(170, 0);
                } else {
                    qt.y0(170, 1);
                }
            } else {
                qt.y0(170, 0);
            }
            if (F == 1) {
                int i21 = nt.f8645g[162];
                int i22 = L;
                if (i21 <= G + i22 || i22 == 0) {
                    qt.y0(172, 0);
                } else {
                    qt.y0(172, 1);
                }
            } else {
                qt.y0(172, 0);
            }
            if (H != 1) {
                qt.y0(173, 0);
                return;
            }
            int i23 = nt.f8645g[162];
            int i24 = M;
            if (i23 <= I + i24 || i24 == 0) {
                qt.y0(173, 0);
                return;
            } else {
                qt.y0(173, 1);
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 40) {
            int i25 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i25 >> 6) & 1);
                qt.y0(1, (i25 >> 7) & 1);
            } else {
                qt.y0(2, (i25 >> 7) & 1);
                qt.y0(1, (i25 >> 6) & 1);
            }
            qt.y0(4, (i25 >> 5) & 1);
            qt.y0(3, (i25 >> 4) & 1);
            qt.y0(5, (i25 >> 3) & 1);
            qt.y0(0, (i25 >> 2) & 1);
            return;
        }
        if (b2 == 41) {
            if (this.f7322k) {
                return;
            }
            qt.i(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, true, 540);
            return;
        }
        if (b2 == 64) {
            qt.y0(8, bArr[i2 + 2] & 255);
            qt.y0(9, bArr[i2 + 3] & 255);
            qt.y0(10, bArr[i2 + 4] & 255);
            int i26 = i2 + 5;
            qt.y0(11, (bArr[i26] >> 7) & 1);
            qt.y0(12, (bArr[i26] >> 0) & 127);
            int i27 = i2 + 6;
            qt.y0(13, (bArr[i27] >> 7) & 1);
            qt.y0(14, (bArr[i27] >> 3) & 15);
            return;
        }
        if (b2 == 65) {
            int i28 = i2 + 2;
            qt.y0(15, (bArr[i28] >> 5) & 7);
            qt.y0(16, (bArr[i28] >> 3) & 3);
            qt.y0(17, (bArr[i28] >> 2) & 1);
            qt.y0(18, (bArr[i28] >> 0) & 3);
            qt.y0(19, (bArr[i2 + 3] >> 7) & 1);
            int i29 = i2 + 4;
            qt.y0(20, (bArr[i29] >> 7) & 1);
            qt.y0(21, (bArr[i29] >> 5) & 3);
            int i30 = i2 + 5;
            qt.y0(22, (bArr[i30] >> 6) & 3);
            qt.y0(23, (bArr[i30] >> 4) & 3);
            qt.y0(24, (bArr[i30] >> 2) & 3);
            qt.y0(25, (bArr[i30] >> 1) & 1);
            int i31 = i2 + 6;
            qt.y0(26, (bArr[i31] >> 5) & 7);
            qt.y0(27, (bArr[i31] >> 2) & 7);
            int i32 = i2 + 7;
            qt.y0(28, (bArr[i32] >> 7) & 1);
            qt.y0(30, (bArr[i32] >> 4) & 3);
            qt.y0(31, (bArr[i32] >> 3) & 1);
            qt.y0(32, (bArr[i32] >> 0) & 7);
            int i33 = i2 + 8;
            qt.y0(33, (bArr[i33] >> 7) & 1);
            qt.y0(34, (bArr[i33] >> 6) & 1);
            qt.y0(35, (bArr[i33] >> 4) & 3);
            qt.y0(36, (bArr[i33] >> 2) & 3);
            int i34 = i2 + 9;
            qt.y0(37, (bArr[i34] >> 7) & 1);
            qt.y0(38, (bArr[i34] >> 4) & 7);
            qt.y0(39, (bArr[i34] >> 3) & 1);
            qt.y0(40, (bArr[i34] >> 2) & 1);
            qt.y0(41, (bArr[i34] >> 1) & 1);
            qt.y0(42, (bArr[i34] >> 0) & 1);
            qt.y0(43, (bArr[i2 + 10] >> 6) & 3);
            qt.y0(29, bArr[i2 + 11] & 255);
            return;
        }
        if (b2 == 112) {
            qt.y0(92, bArr[i2 + 2] & 255);
            qt.y0(93, bArr[i2 + 3] & 255);
            qt.y0(94, bArr[i2 + 4] & 255);
            qt.y0(95, bArr[i2 + 5] & 255);
            qt.y0(96, bArr[i2 + 6] & 255);
            qt.y0(97, bArr[i2 + 7] & 255);
            int i35 = i2 + 8;
            qt.y0(98, (bArr[i35] >> 7) & 1);
            qt.y0(99, (bArr[i35] >> 6) & 1);
            return;
        }
        if (b2 == 113) {
            int i36 = i2 + 2;
            qt.y0(138, (bArr[i36] >> 7) & 1);
            qt.y0(139, (bArr[i36] >> 6) & 1);
            qt.y0(140, (bArr[i36] >> 0) & 63);
            qt.y0(141, bArr[i2 + 3] & 255);
            return;
        }
        switch (b2) {
            case 33:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f7314c = b3 & 255;
                int i37 = 0;
                while (true) {
                    iArr = this.f7315d;
                    if (i37 < iArr.length) {
                        int i38 = this.f7314c;
                        if (i38 != iArr[i37][0]) {
                            i37++;
                        } else if (i38 != 0) {
                            this.f7313b = i37;
                        }
                    }
                }
                int i39 = this.f7314c;
                if (i39 != 16) {
                    if (i39 == 23) {
                        for (int i40 = 0; i40 < (b4 & 255); i40++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (i39 != 24) {
                        int i41 = b4 & 255;
                        if (i41 == 1) {
                            if (i37 < iArr.length) {
                                l0.b0.l0(iArr[i37][1], 0);
                            }
                        } else if (i41 == 0) {
                            int i42 = this.f7313b;
                            if (i42 < iArr.length && i42 != 255) {
                                l0.b0.l0(iArr[i42][1], 1);
                            }
                            this.f7313b = 255;
                        }
                    } else {
                        for (int i43 = 0; i43 < (b4 & 255); i43++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                } else if ((b4 & 255) == 1) {
                    int i44 = h0.c.E;
                    if (i44 != 3) {
                        if (i44 == 4) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else if (i44 != 5) {
                            l0.b0.l0(13, 0);
                            l0.b0.l0(13, 1);
                        }
                    }
                    l0.b0.l0(26, 0);
                    l0.b0.l0(26, 1);
                }
                break;
            case 34:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f7317f = b5 & 255;
                int i45 = 0;
                while (true) {
                    iArr2 = this.f7318g;
                    if (i45 < iArr2.length) {
                        int i46 = this.f7317f;
                        if (i46 != iArr2[i45][0]) {
                            i45++;
                        } else if (i46 != 0) {
                            this.f7316e = i45;
                        }
                    }
                }
                int i47 = this.f7317f;
                if (i47 == 2) {
                    for (int i48 = 0; i48 < (b6 & 255); i48++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                } else if (i47 == 3) {
                    for (int i49 = 0; i49 < (b6 & 255); i49++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (i47 == 13) {
                    for (int i50 = 0; i50 < (b6 & 255); i50++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                } else if (i47 == 14) {
                    for (int i51 = 0; i51 < (b6 & 255); i51++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if ((b6 & 255) == 0) {
                    int i52 = this.f7316e;
                    if (i52 < iArr2.length && i52 != 255) {
                        l0.b0.l0(iArr2[i52][1], 1);
                    }
                    this.f7316e = 255;
                } else if (i45 < iArr2.length) {
                    l0.b0.l0(iArr2[i45][1], 0);
                }
                break;
            case 35:
                u0.d.R2(l0.c0.T0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.T0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.T0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.T0(bArr[i2 + 5] & 255));
                break;
            case 36:
                int i53 = i2 + 2;
                int i54 = bArr[i53] & 255;
                int i55 = i2 + 3;
                int i56 = bArr[i55] & 255;
                int i57 = i2 + 4;
                int i58 = bArr[i57] & 255;
                int i59 = i2 + 5;
                int i60 = bArr[i59] & 255;
                if (i54 == 0 && i56 == 0 && i58 == 0 && i60 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i54 || l0.c0.f13014h != i56 || l0.c0.f13015i != i58 || l0.c0.f13016j != i60) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i54;
                l0.c0.f13014h = i56;
                l0.c0.f13015i = i58;
                l0.c0.f13016j = i60;
                u0.d.D2(l0.c0.T0(bArr[i53] & 255));
                u0.d.E2(l0.c0.T0(bArr[i55] & 255));
                u0.d.F2(l0.c0.T0(bArr[i57] & 255));
                u0.d.G2(l0.c0.T0(bArr[i59] & 255));
                break;
            default:
                switch (b2) {
                    case 80:
                        qt.y0(44, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(45, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(46, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(47, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                        qt.y0(48, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                        qt.y0(49, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
                        qt.y0(50, (bArr[i2 + 17] & 255) | ((bArr[i2 + 16] << 8) & 65280));
                        break;
                    case 81:
                        qt.y0(51, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(52, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(53, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(54, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                        qt.y0(55, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                        qt.y0(56, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
                        qt.y0(57, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
                        qt.y0(58, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
                        qt.y0(59, ((bArr[i2 + 18] << 8) & 65280) | (bArr[i2 + 19] & 255));
                        qt.y0(60, ((bArr[i2 + 20] << 8) & 65280) | (bArr[i2 + 21] & 255));
                        qt.y0(61, ((bArr[i2 + 22] << 8) & 65280) | (bArr[i2 + 23] & 255));
                        qt.y0(62, ((bArr[i2 + 24] << 8) & 65280) | (bArr[i2 + 25] & 255));
                        qt.y0(63, ((bArr[i2 + 26] << 8) & 65280) | (bArr[i2 + 27] & 255));
                        qt.y0(64, ((bArr[i2 + 28] << 8) & 65280) | (bArr[i2 + 29] & 255));
                        qt.y0(65, (bArr[i2 + 31] & 255) | ((bArr[i2 + 30] << 8) & 65280));
                        break;
                    case 82:
                        int i61 = i2 + 2;
                        qt.y0(66, (bArr[i61] >> 7) & 1);
                        qt.y0(67, (bArr[i61] >> 6) & 1);
                        qt.y0(68, (bArr[i61] >> 5) & 1);
                        qt.y0(69, (bArr[i61] >> 4) & 1);
                        qt.y0(70, (bArr[i61] >> 3) & 1);
                        qt.y0(71, bArr[i2 + 3] & 255);
                        qt.y0(72, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(73, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(74, bArr[i2 + 8] & 255);
                        qt.y0(75, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                        qt.y0(76, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                        qt.y0(77, (bArr[i2 + 14] & 255) | ((bArr[i2 + 13] << 8) & 65280));
                        break;
                    default:
                        switch (b2) {
                            case 96:
                                int i62 = i2 + 2;
                                qt.y0(78, (bArr[i62] >> 7) & 1);
                                if (this.f7321j != ((bArr[i62] >> 7) & 1)) {
                                    int i63 = (bArr[i62] >> 7) & 1;
                                    this.f7321j = i63;
                                    if (i63 == 1) {
                                        u3();
                                    }
                                }
                                break;
                            case 97:
                                qt.y0(79, bArr[i2 + 2] & 255);
                                int i64 = i2 + 3;
                                qt.y0(80, (bArr[i64] >> 7) & 1);
                                qt.y0(81, (bArr[i64] >> 6) & 1);
                                qt.y0(82, (bArr[i64] >> 5) & 1);
                                qt.y0(83, (bArr[i64] >> 4) & 1);
                                qt.y0(84, (bArr[i64] >> 3) & 1);
                                qt.y0(85, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                                qt.y0(86, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                                qt.y0(87, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                                qt.y0(88, (bArr[i2 + 13] & 255) | ((bArr[i2 + 11] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280));
                                break;
                            case 98:
                                int i65 = bArr[i2 + 2] & 255;
                                int i66 = bArr[i2 + 1] & 255;
                                int i67 = (bArr[i2 + 3] >> 4) & 15;
                                if (i67 == 0) {
                                    try {
                                        str = new String(bArr, i2 + 4, i66 - 2, "GB2312");
                                    } catch (UnsupportedEncodingException e2) {
                                        e2.printStackTrace();
                                        str = ProxyProperties.LOCAL_EXCL_LIST;
                                    }
                                } else if (i67 == 1) {
                                    try {
                                        str = new String(bArr, i2 + 4, i66 - 2, "UTF-16BE");
                                    } catch (UnsupportedEncodingException e3) {
                                        e3.printStackTrace();
                                        str = ProxyProperties.LOCAL_EXCL_LIST;
                                    }
                                } else if (i67 != 2) {
                                    str = ProxyProperties.LOCAL_EXCL_LIST;
                                } else {
                                    try {
                                        str = new String(bArr, i2 + 4, i66 - 2, "UTF-16LE");
                                    } catch (UnsupportedEncodingException e4) {
                                        e4.printStackTrace();
                                        str = ProxyProperties.LOCAL_EXCL_LIST;
                                    }
                                }
                                if (i65 == 1) {
                                    qt.z0(90, new int[]{i65}, str);
                                    break;
                                } else if (i65 == 2) {
                                    qt.z0(91, new int[]{i65}, str);
                                    break;
                                } else if (i65 == 3) {
                                    qt.z0(89, new int[]{i65}, str);
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
        this.f7328q.j();
        o1.y yVar = u0.c.f17386m;
        yVar.d(this.f7326o);
        l0.b0.p0(this.f7327p);
        u0.c.f17374a.d(this.f7324m);
        yVar.d(this.f7324m);
        u0.c.f17379f.d(this.f7323l);
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
        if (i2 != 8) {
            if (i2 == 1003) {
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                z.k.s(227, -121, 2, 1, 1);
                return;
            }
            switch (i2) {
                case 0:
                    z.k.s(227, 132, 2, iArr[0], iArr[1]);
                    break;
                case 1:
                    z.k.s(227, 131, 2, iArr[0], iArr[1]);
                    break;
                case 2:
                    z.k.s(227, 144, 1, iArr[0]);
                    break;
                case 3:
                    z.k.s(227, 130, 3, iArr[0], iArr[1], iArr[2]);
                    break;
                case 4:
                    z.k.s(227, 160, 2, iArr[0], iArr[1]);
                    break;
                case 5:
                    z.k.s(227, 164, 3, iArr[0], iArr[1], iArr[2]);
                    break;
                case 6:
                    z.k.s(227, 161, 2, iArr[0], iArr[1]);
                    break;
            }
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
        }
        int i4 = iArr[1];
        if (i4 != 1) {
            if (i4 == 2) {
                f3(10000);
                L = nt.f8645g[162];
                int iB = this.f7328q.b(10, 0);
                int i5 = L;
                if (iB != i5) {
                    this.f7328q.g(10, i5);
                }
                qt.y0(176, L);
                return;
            }
            if (i4 != 3) {
                return;
            }
            a3(10000);
            M = nt.f8645g[162];
            int iB2 = this.f7328q.b(11, 0);
            int i6 = M;
            if (iB2 != i6) {
                this.f7328q.g(11, i6);
            }
            qt.y0(177, M);
            return;
        }
        c3(6);
        d3(10000);
        J = nt.f8645g[162];
        int iB3 = this.f7328q.b(8, 0);
        int i7 = J;
        if (iB3 != i7) {
            this.f7328q.g(8, i7);
        }
        qt.y0(174, J);
        Time time = new Time(Time.getCurrentTimezone());
        time.setToNow();
        K = (((byte) time.monthDay) & 255) | ((((byte) (time.year + DrmManagerClient.ERROR_UNKNOWN)) << 16) & Spanned.SPAN_PRIORITY) | ((((byte) (time.month + 1)) << 8) & 65280);
        int iB4 = this.f7328q.b(9, 0);
        int i8 = K;
        if (iB4 != i8) {
            this.f7328q.g(9, i8);
        }
        qt.y0(175, K);
    }

    public final void a3(int i2) {
        I = i2;
        qt.y0(166, i2);
        int iB = this.f7328q.b(7, 1000);
        int i3 = I;
        if (iB != i3) {
            this.f7328q.g(7, i3);
        }
    }

    public final void b3(int i2) {
        H = i2;
        qt.y0(169, i2);
        int iB = this.f7328q.b(6, 0);
        int i3 = H;
        if (iB != i3) {
            this.f7328q.g(6, i3);
        }
    }

    public final void c3(int i2) {
        D = i2;
        qt.y0(164, i2);
        int iB = this.f7328q.b(2, 1);
        int i3 = D;
        if (iB != i3) {
            this.f7328q.g(2, i3);
        }
    }

    public final void d3(int i2) {
        E = i2;
        qt.y0(163, i2);
        int iB = this.f7328q.b(3, 1000);
        int i3 = E;
        if (iB != i3) {
            this.f7328q.g(3, i3);
        }
    }

    public final void e3(int i2) {
        C = i2;
        qt.y0(167, i2);
        int iB = this.f7328q.b(1, 0);
        int i3 = C;
        if (iB != i3) {
            this.f7328q.g(1, i3);
        }
    }

    public final void f3(int i2) {
        G = i2;
        qt.y0(165, i2);
        int iB = this.f7328q.b(5, 1000);
        int i3 = G;
        if (iB != i3) {
            this.f7328q.g(5, i3);
        }
    }

    public final void g3(int i2) {
        F = i2;
        qt.y0(168, i2);
        int iB = this.f7328q.b(4, 0);
        int i3 = F;
        if (iB != i3) {
            this.f7328q.g(4, i3);
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

    public final void u3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.rzc.mazda.Rzc_Mazda_CarCD")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.mazda.Rzc_Mazda_CarCD");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
