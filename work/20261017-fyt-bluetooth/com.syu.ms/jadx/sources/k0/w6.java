package k0;

import android.content.Intent;
import android.net.dhcp.DhcpPacket;
import android.os.BatteryStats;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class w6 extends lt {
    public static int A = 1;
    public static final int[] B = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f11646y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f11647z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11650d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11655i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f11648b = new int[5][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f11649c = new int[15][];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11651e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f11652f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 12}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 4}, new int[]{20, 3}, new int[]{21, 6}, new int[]{22, 16}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{133, 34}, new int[]{134, 35}, new int[]{135, 25}, new int[]{136, 2}, new int[]{11, 13}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11653g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f11654h = {new int[]{22, 29}, new int[]{129, 7}, new int[]{130, 8}, new int[]{133, 31}, new int[]{134, 30}, new int[]{135, 25}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11656j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f11657k = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 0}, new int[]{4, 34}, new int[]{5, 35}, new int[]{6, 32}, new int[]{7, 33}, new int[]{8, 29}, new int[]{9, 6}, new int[]{10, 21}, new int[]{11, 5}, new int[]{12, 22}, new int[]{13, 56}, new int[]{14, 54}, new int[]{15, 1}, new int[]{16, 38}, new int[]{17, 63}, new int[]{18, 72}, new int[]{19, 71}, new int[]{20, 55}, new int[]{21, 13}, new int[]{22, 2}, new int[]{23, 18}, new int[]{24, 26}, new int[]{25, 12}, new int[]{26, 5}, new int[]{27, 5}, new int[]{33, 16}, new int[]{34, -1}, new int[]{35, 62}, new int[]{36, 18}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f11658l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11659m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f11660n = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f11661o = 0.0f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f11662p = 255;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f11663q = 255;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f11664r = new b();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f11665s = new c();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public byte f11666t = 8;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f11667u = new d();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f11668v = new e();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public o1.g0 f11669w = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f11670x = 2;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (w6.this.f11659m <= 0) {
                if (qt.i0().equals("com.syu.carinfo.camry2012.xp.ToyotaLexusEQActi")) {
                    o1.u.k();
                }
                qt.q0(w6.this.f11660n);
            }
            w6 w6Var = w6.this;
            int i2 = w6Var.f11659m;
            if (i2 > 0) {
                w6Var.f11659m = i2 - 1;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w6.this.f11661o = u0.b.f17359s0;
            if ((w6.this.f11661o <= 22.5d && w6.this.f11661o >= 0.0f) || (w6.this.f11661o >= 337.5d && w6.this.f11661o <= 360.0f)) {
                w6.this.f11663q = 4;
            } else if (w6.this.f11661o > 22.5d && w6.this.f11661o < 67.5d) {
                w6.this.f11663q = 5;
            } else if (w6.this.f11661o >= 67.5d && w6.this.f11661o <= 112.5d) {
                w6.this.f11663q = 6;
            } else if (w6.this.f11661o > 112.5d && w6.this.f11661o < 157.5d) {
                w6.this.f11663q = 7;
            } else if (w6.this.f11661o >= 157.5d && w6.this.f11661o <= 202.5d) {
                w6.this.f11663q = 0;
            } else if (w6.this.f11661o > 202.5d && w6.this.f11661o < 247.5d) {
                w6.this.f11663q = 1;
            } else if (w6.this.f11661o >= 247.5d && w6.this.f11661o <= 292.5d) {
                w6.this.f11663q = 2;
            } else if (w6.this.f11661o <= 292.5d || w6.this.f11661o >= 337.5d) {
                w6.this.f11663q = 4;
            } else {
                w6.this.f11663q = 3;
            }
            if (w6.this.f11663q != w6.this.f11662p) {
                z.k.s(227, 131, 2, 48, w6.this.f11663q);
                w6 w6Var = w6.this;
                w6Var.f11662p = w6Var.f11663q;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 132, 2, 7, w6.B[o1.o0.a(y0.f.f18037c, 0, 36)]);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(w6.this.f11668v);
            w6.this.f11666t = (byte) 8;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w6 w6Var = w6.this;
            byte b2 = (byte) (w6Var.f11666t - 1);
            w6Var.f11666t = b2;
            if (b2 <= 0) {
                l0.b0.p0(w6Var.f11668v);
                w6.this.f11666t = (byte) 8;
            } else if (u0.b.f17306a0 == 1) {
                w6Var.p3(w6Var.f11669w.b(2, 1));
                z.k.s(227, 129, 1, 1);
                z.k.s(227, 132, 2, 8, 1);
                z.k.s(227, 144, 2, 48, 0);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        if (nt.f8637c != 2) {
            y0.f.C0 = 18;
        } else {
            y0.f.C0 = 36;
        }
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (i2 == 41) {
            if (iArr[1] != 0) {
                z.k.s(227, -121, 2, 11, 1);
                return;
            } else {
                z.k.s(227, -121, 2, 11, 0);
                return;
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                z.k.s(227, -121, 2, 13, 1);
                return;
            } else {
                z.k.s(227, -121, 2, 13, 0);
                return;
            }
        }
        if (i2 == 55) {
            if (iArr[1] < 18) {
                z.k.s(227, -121, 2, 12, 0);
                return;
            }
            if (iArr[1] >= 18 && iArr[1] <= 32) {
                z.k.s(227, -121, 2, 12, ((iArr[1] - 17) * 2) - 1);
                return;
            } else {
                if (iArr[1] > 32) {
                    z.k.s(227, -121, 2, 12, 31);
                    return;
                }
                return;
            }
        }
        if (i2 == 56) {
            if (iArr[1] < 18) {
                z.k.s(227, -121, 2, 14, 0);
                return;
            }
            if (iArr[1] >= 18 && iArr[1] <= 32) {
                z.k.s(227, -121, 2, 14, ((iArr[1] - 17) * 2) - 1);
                return;
            } else {
                if (iArr[1] > 32) {
                    z.k.s(227, -121, 2, 14, 31);
                    return;
                }
                return;
            }
        }
        if (i2 != 59) {
            if (i2 != 68) {
                if (i2 != 70) {
                    switch (i2) {
                        case 33:
                            if (iArr[1] == 0) {
                                if (nt.f8645g[10] == 1) {
                                    z.k.s(227, -121, 2, 7, 0);
                                }
                            } else if (nt.f8645g[10] == 0) {
                                z.k.s(227, -121, 2, 7, 1);
                            }
                            break;
                        case 34:
                            if (iArr[1] == 0) {
                                if (nt.f8645g[11] == 1) {
                                    z.k.s(227, -121, 2, 8, 0);
                                }
                            } else if (nt.f8645g[11] == 0) {
                                z.k.s(227, -121, 2, 8, 1);
                            }
                            break;
                        case 35:
                            if (iArr[1] == 0) {
                                z.k.s(227, -121, 2, 15, 0);
                            } else {
                                z.k.s(227, -121, 2, 15, 1);
                            }
                            break;
                        case 36:
                            if (iArr[1] == 0) {
                                z.k.s(227, -121, 2, 17, 0);
                            } else {
                                z.k.s(227, -121, 2, 17, 1);
                            }
                            break;
                        case 37:
                            if (iArr[1] == 0) {
                                z.k.s(227, -121, 2, 18, 0);
                            } else {
                                z.k.s(227, -121, 2, 18, 1);
                            }
                            break;
                        case 38:
                            if (iArr[1] == 1) {
                                z.k.s(227, -121, 2, 16, 0);
                            } else if (iArr[1] == 0) {
                                z.k.s(227, -121, 2, 16, 1);
                            }
                            break;
                        case 39:
                            if (iArr[1] == -1) {
                                z.k.s(227, -121, 2, 9, 1);
                            } else if (iArr[1] == -2) {
                                z.k.s(227, -121, 2, 9, 0);
                            } else if (iArr[1] < 7) {
                                z.k.s(227, -121, 2, 10, iArr[1]);
                            } else {
                                z.k.s(227, -121, 2, 10, 7);
                            }
                            break;
                    }
                } else {
                    z.k.s(227, -13, 2, 17, iArr[1]);
                }
            } else if (iArr[1] == 1) {
                z.k.s(227, -121, 2, 2, 0);
            } else if (iArr[1] == 2) {
                z.k.s(227, -121, 2, 2, 1);
            } else if (iArr[1] == 3) {
                z.k.s(227, -121, 2, 3, 0);
            } else if (iArr[1] == 4) {
                z.k.s(227, -121, 2, 3, 1);
            } else if (iArr[1] == 5) {
                z.k.s(227, -121, 2, 4, 0);
            } else if (iArr[1] == 6) {
                z.k.s(227, -121, 2, 4, 1);
            } else if (iArr[1] == 7) {
                z.k.s(227, -121, 2, 5, 0);
            } else if (iArr[1] == 8) {
                z.k.s(227, -121, 2, 5, 1);
            } else if (iArr[1] == 9) {
                z.k.s(227, -121, 2, 6, 0);
            } else if (iArr[1] == 10) {
                z.k.s(227, -121, 2, 6, 1);
            } else if (iArr[1] == 11) {
                z.k.s(227, -121, 2, 1, 0);
            } else if (iArr[1] == 12) {
                z.k.s(227, -121, 2, 1, 1);
            }
        } else if (iArr[1] != 0) {
            a3(64, 0);
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f11667u, 1);
        o1.h.f16865a.a(this.f11664r, 1);
        this.f11669w.a();
        if (nt.f8637c != 2) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
            mtVar.f8314i = 1;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            return;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8306a = new String[]{"com.syu.canbus"};
        mtVar2.f8310e = 1;
        mtVar2.f8311f = 1;
        mtVar2.f8312g = 1;
        mtVar2.f8314i = 1;
        mtVar2.f8307b = 1;
        mtVar2.f8308c = 0;
        mtVar2.f8309d = 0;
        if (nt.a()) {
            y0.g.f18094d.a(this.f11665s, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:343:0x0a1b  */
    /* JADX WARN: Code duplicated, block: B:344:0x0a26  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 26) {
            qt.y0(133, (bArr[i2 + 3] >> 6) & 1);
        }
        if (b2 == 65) {
            byte b3 = bArr[i2 + 2];
            if (b3 != 1) {
                if (b3 != 2) {
                    if (b3 != 3) {
                        return;
                    }
                    int i4 = ((bArr[i2 + 3] & 255) << 8) | ((bArr[i2 + 4] & 255) << 0);
                    qt.y0(154, i4);
                    qt.y0(1032, i4);
                    qt.y0(155, bArr[i2 + 9] & 255);
                    return;
                }
                qt.y0(149, ((bArr[i2 + 3] & 255) << 16) | ((bArr[i2 + 4] & 255) << 8) | ((bArr[i2 + 5] & 255) << 0));
                qt.y0(150, ((bArr[i2 + 6] & 255) << 8) | ((bArr[i2 + 7] & 255) << 0));
                qt.y0(151, ((bArr[i2 + 8] & 255) << 16) | ((bArr[i2 + 9] & 255) << 8) | ((bArr[i2 + 10] & 255) << 0));
                qt.y0(152, ((bArr[i2 + 11] & 255) << 16) | ((bArr[i2 + 12] & 255) << 8) | ((bArr[i2 + 13] & 255) << 0));
                qt.y0(153, ((bArr[i2 + 14] & 255) << 8) | ((bArr[i2 + 15] & 255) << 0));
                qt.y0(97, ((bArr[i2 + 17] & 255) << 0) | ((bArr[i2 + 16] & 255) << 8));
                return;
            }
            byte b4 = bArr[i2 + 3];
            qt.y0(0, (b4 >> 5) & 1);
            qt.y0(5, (b4 >> 4) & 1);
            qt.y0(4, (b4 >> 3) & 1);
            qt.y0(3, (b4 >> 2) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b4 >> 0) & 1);
                qt.y0(1, (b4 >> 1) & 1);
            } else {
                qt.y0(1, (b4 >> 0) & 1);
                qt.y0(2, (b4 >> 1) & 1);
            }
            byte b5 = bArr[i2 + 6];
            byte b6 = bArr[i2 + 7];
            qt.y0(135, (b5 >> 7) & 1);
            qt.y0(136, (b5 >> 6) & 1);
            qt.y0(137, (b5 >> 5) & 1);
            qt.y0(138, (b6 >> 7) & 1);
            qt.y0(139, (b6 >> 6) & 1);
            qt.y0(140, (b6 >> 5) & 1);
            qt.y0(141, (b6 >> 4) & 1);
            qt.y0(142, (b6 >> 3) & 1);
            qt.y0(143, (b6 >> 2) & 1);
            qt.y0(144, (b6 >> 1) & 1);
            byte b7 = bArr[i2 + 8];
            byte b8 = bArr[i2 + 9];
            qt.y0(145, (b7 >> 2) & 3);
            qt.y0(146, (b7 >> 1) & 1);
            qt.y0(147, b7 & 1);
            qt.y0(148, (b8 >> 5) & 3);
            return;
        }
        if (b2 == 80) {
            int i5 = i2 + 2;
            qt.y0(167, (bArr[i5] >> 2) & 3);
            qt.y0(168, (bArr[i5] >> 0) & 3);
            qt.y0(165, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == 82) {
            qt.y0(162, (bArr[i2 + 2] >> 7) & 1);
            qt.y0(163, (bArr[i2 + 4] >> 0) & 7);
            return;
        }
        if (b2 == 88) {
            byte b9 = bArr[i2 + 5];
            qt.y0(34, (b9 >> 7) & 1);
            qt.y0(35, (b9 >> 6) & 1);
            qt.y0(76, (b9 >> 5) & 1);
            qt.y0(17, (b9 >> 4) & 1);
            return;
        }
        if (b2 == 102) {
            int i6 = i2 + 4;
            qt.y0(261, (bArr[i6] >> 7) & 1);
            qt.y0(262, (bArr[i6] >> 6) & 1);
            return;
        }
        if (b2 == 125) {
            int i7 = bArr[i2 + 2] & 255;
            if (i7 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i8 = i2 + 3;
                    l0.c0.b((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
                } else {
                    int i9 = i2 + 3;
                    l0.c0.a((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
                }
                int i10 = i2 + 3;
                qt.y0(135, (bArr[i10] >> 6) & 1);
                qt.y0(136, (bArr[i10] >> 5) & 1);
                qt.y0(137, (bArr[i10] >> 7) & 1);
                qt.y0(140, (bArr[i10] >> 3) & 1);
                qt.y0(141, (bArr[i10] >> 4) & 1);
                qt.y0(143, (bArr[i10] >> 1) & 1);
                qt.y0(144, (bArr[i10] >> 2) & 1);
                return;
            }
            if (i7 == 6) {
                int i11 = i2 + 3;
                qt.y0(138, (bArr[i11] >> 1) & 1);
                qt.y0(139, (bArr[i11] >> 0) & 1);
                return;
            }
            if (i7 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f11658l = true;
                return;
            }
            if (i7 == 10) {
                qt.y0(154, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                return;
            }
            if (i7 == 13) {
                int i12 = bArr[i2 + 3] & 255;
                qt.y0(146, (i12 >> 4) & 1);
                qt.y0(147, (i12 >> 5) & 1);
                qt.y0(145, (i12 >> 2) & 3);
                qt.y0(148, (i12 >> 6) & 3);
                return;
            }
            if (i7 != 3) {
                if (i7 != 4) {
                    return;
                }
                qt.y0(149, ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(151, ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(152, (bArr[i2 + 11] & 255) | ((bArr[i2 + 13] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280));
                return;
            }
            int i13 = i2 + 4;
            int i14 = i2 + 3;
            int i15 = (((bArr[i13] << 8) & 65280) | (bArr[i14] & 255)) / 100;
            qt.y0(1031, i15);
            o1.x.C(nt.f8643f, 1049, new int[]{1, i15}, null, null);
            qt.y0(153, ((bArr[i13] << 8) & 65280) | (bArr[i14] & 255));
            qt.y0(97, (bArr[i2 + 5] & 255) | ((bArr[i2 + 6] << 8) & 65280));
            return;
        }
        switch (b2) {
            case 29:
                if (nt.a()) {
                    int i16 = i2 + 2;
                    int i17 = bArr[i16] & 255;
                    int i18 = i2 + 3;
                    int i19 = bArr[i18] & 255;
                    int i20 = i2 + 4;
                    int i21 = bArr[i20] & 255;
                    int i22 = i2 + 5;
                    int i23 = bArr[i22] & 255;
                    if ((l0.c0.f13013g != i17 || l0.c0.f13014h != i19 || l0.c0.f13015i != i21 || l0.c0.f13016j != i23) && u0.b.f17347o == 0) {
                        if (i17 != 0 || i19 != 0 || i21 != 0 || i23 != 0) {
                            u0.d.C2(1);
                        } else if (u0.b.f17350p == 1) {
                            l0.c0.f13017k = 2;
                            l0.b0.b(l0.c0.f13018l);
                        }
                    }
                    l0.c0.f13013g = i17;
                    l0.c0.f13014h = i19;
                    l0.c0.f13015i = i21;
                    l0.c0.f13016j = i23;
                    u0.d.D2(l0.c0.E0(bArr[i16] & 255));
                    u0.d.E2(l0.c0.E0(bArr[i18] & 255));
                    u0.d.F2(l0.c0.E0(bArr[i20] & 255));
                    u0.d.G2(l0.c0.E0(bArr[i22] & 255));
                }
                break;
            case 30:
                if (nt.a()) {
                    u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                }
                int i24 = i2 + 6;
                qt.y0(159, (bArr[i24] >> 6) & 1);
                qt.y0(160, (bArr[i24] >> 7) & 1);
                qt.y0(161, (bArr[i24] >> 0) & 7);
                break;
            case 31:
                byte b10 = bArr[i2 + 2];
                qt.y0(97, (b10 >> 0) & 15);
                qt.y0(98, (b10 >> 7) & 1);
                qt.y0(99, bArr[i2 + 3] & 255);
                break;
            case 32:
                if (nt.a()) {
                    if (nt.f8633a == 196822) {
                        this.f11651e = bArr[i2 + 4] & 255;
                        for (int i25 = 0; i25 < 10; i25++) {
                            int i26 = this.f11651e;
                            if (i26 == this.f11652f[i25][0]) {
                                if (i26 != 0) {
                                    this.f11650d = i25;
                                }
                                if (this.f11651e != 0) {
                                    l0.b0.l0(this.f11652f[i25][1], 0);
                                } else {
                                    l0.b0.l0(this.f11652f[this.f11650d][1], 1);
                                }
                            }
                            break;
                        }
                        if (this.f11651e != 0) {
                            l0.b0.l0(this.f11652f[i25][1], 0);
                        } else {
                            l0.b0.l0(this.f11652f[this.f11650d][1], 1);
                        }
                    } else {
                        byte b11 = bArr[i2 + 2];
                        byte b12 = bArr[i2 + 3];
                        this.f11651e = b11 & 255;
                        int i27 = 0;
                        while (true) {
                            iArr = this.f11652f;
                            if (i27 < iArr.length) {
                                int i28 = this.f11651e;
                                if (i28 != iArr[i27][0]) {
                                    i27++;
                                } else if (i28 != 0) {
                                    this.f11650d = i27;
                                }
                            }
                        }
                        if ((b12 & 255) == 0) {
                            int i29 = this.f11650d;
                            if (i29 < iArr.length && i29 != 255) {
                                l0.b0.l0(iArr[i29][1], 1);
                            }
                            this.f11650d = 255;
                        } else if (i27 < iArr.length) {
                            l0.b0.l0(iArr[i27][1], 0);
                        }
                    }
                }
                break;
            case 33:
                int i30 = (bArr[i2 + 8] & 255) << 24;
                qt.y0(100, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i30);
                qt.y0(101, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(102, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8) | i30);
                break;
            case 34:
                int i31 = (bArr[i2 + 2] & 255) << 24;
                int i32 = (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] & 255) << 8);
                if (i32 == 65535) {
                    i32 = 0;
                }
                qt.y0(103, i32 | i31);
                break;
            case 35:
                if (nt.f8633a == 196822) {
                    byte b13 = bArr[i2 + 2];
                    byte b14 = bArr[i2 + 3];
                    byte b15 = bArr[i2 + 6];
                    qt.y0(10, (b13 >> 7) & 1);
                    qt.y0(11, (b13 >> 6) & 1);
                    int i33 = b13 >> 4;
                    qt.y0(12, i33 & 3);
                    qt.y0(13, i33 & 1);
                    qt.y0(26, (b13 >> 3) & 1);
                    qt.y0(14, (b13 >> 2) & 1);
                    qt.y0(18, (b14 >> 7) & 1);
                    qt.y0(19, (b14 >> 6) & 1);
                    int i34 = b14 >> 5;
                    qt.y0(20, i34 & 1);
                    qt.y0(77, i34 & 7);
                    int i35 = 15 & b14;
                    qt.y0(21, i35 <= 7 ? i35 : 7);
                    int i36 = i2 + 4;
                    byte b16 = bArr[i36];
                    int i37 = i2 + 5;
                    byte b17 = bArr[i37];
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        b16 = bArr[i37];
                        b17 = bArr[i36];
                    }
                    if (b16 == 0) {
                        qt.y0(27, -2);
                    } else if (b16 == 31) {
                        qt.y0(27, -3);
                    } else if ((b16 < 1 || b16 > 29) && (b16 < 32 || b16 > 36)) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, b16);
                    }
                    if (b17 == 0) {
                        qt.y0(28, -2);
                    } else if (b17 == 31) {
                        qt.y0(28, -3);
                    } else if ((b17 < 1 || b17 > 29) && (b17 < 32 || b17 > 36)) {
                        qt.y0(28, -1);
                    } else {
                        qt.y0(28, b17);
                    }
                    qt.y0(65, (b15 >> 7) & 1);
                    qt.y0(16, (b15 >> 6) & 1);
                    qt.y0(37, (b15 >> 0) & 1);
                } else {
                    int i38 = (bArr[i2 + 2] & 255) << 24;
                    int i39 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
                    if (i39 == 65535) {
                        i39 = 0;
                    }
                    qt.y0(104, i39 | i38);
                    for (int i40 = 0; i40 < 5; i40++) {
                        int i41 = i2 + (i40 * 2);
                        int[] iArr3 = {i40, (bArr[i41 + 6] & 255) | ((bArr[i41 + 5] & 255) << 8) | i38};
                        if (qt.C0(105, iArr3, this.f11648b[i40])) {
                            this.f11648b[i40] = iArr3;
                        }
                    }
                }
                break;
            case 36:
                byte b18 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b18 >> 7) & 1);
                    qt.y0(2, (b18 >> 6) & 1);
                } else {
                    qt.y0(1, (b18 >> 6) & 1);
                    qt.y0(2, (b18 >> 7) & 1);
                }
                qt.y0(3, (b18 >> 4) & 1);
                qt.y0(4, (b18 >> 5) & 1);
                qt.y0(5, (b18 >> 3) & 1);
                qt.y0(0, (bArr[i2 + 3] >> 7) & 1);
                break;
            case 37:
                byte b19 = bArr[i2 + 2];
                int[] iArr4 = new int[1];
                iArr4[0] = (b19 & 128) == 0 ? 0 : 1;
                qt.y0(106, iArr4);
                int[] iArr5 = new int[1];
                iArr5[0] = (b19 & 64) == 0 ? 0 : 1;
                qt.y0(107, iArr5);
                int[] iArr6 = new int[1];
                iArr6[0] = (b19 & 32) == 0 ? 0 : 1;
                qt.y0(108, iArr6);
                int[] iArr7 = new int[1];
                iArr7[0] = (b19 & 4) == 0 ? 0 : 1;
                qt.y0(109, iArr7);
                int i42 = b19 & 3;
                int i43 = i42 << 24;
                int i44 = bArr[i2 + 3] & 255;
                if (i44 == 255) {
                    i44 = 16777215;
                }
                qt.y0(110, i44 | i43);
                o1.x[] xVarArr = nt.f8643f;
                int i45 = (i42 << 12) & BatteryStats.HistoryItem.STATE_DATA_CONNECTION_MASK;
                o1.x.C(xVarArr, 1049, new int[]{8, i45 | 256 | (i44 & 255)}, null, null);
                int i46 = bArr[i2 + 4] & 255;
                if (i46 == 255) {
                    i46 = 16777215;
                }
                qt.y0(111, i46 | i43);
                o1.x.C(xVarArr, 1049, new int[]{8, (i46 & 255) | i45 | 512}, null, null);
                int i47 = bArr[i2 + 5] & 255;
                if (i47 == 255) {
                    i47 = 16777215;
                }
                qt.y0(112, i47 | i43);
                o1.x.C(xVarArr, 1049, new int[]{8, (i47 & 255) | i45 | 768}, null, null);
                int i48 = bArr[i2 + 6] & 255;
                if (i48 == 255) {
                    i48 = 16777215;
                }
                qt.y0(113, i48 | i43);
                o1.x.C(xVarArr, 1049, new int[]{8, i45 | 1024 | (i48 & 255)}, null, null);
                int i49 = bArr[i2 + 7] & 255;
                if (i49 == 255) {
                    i49 = 16777215;
                }
                qt.y0(114, i49 | i43);
                break;
            case 38:
                byte b20 = bArr[i2 + 2];
                int[] iArr8 = new int[1];
                iArr8[0] = (b20 & 128) == 0 ? 0 : 1;
                qt.y0(115, iArr8);
                qt.y0(116, (b20 & 112) >> 4);
                qt.y0(117, (b20 & DhcpPacket.DHCP_HOST_NAME) >> 2);
                qt.y0(118, b20 & 3);
                byte b21 = bArr[i2 + 3];
                int[] iArr9 = new int[1];
                iArr9[0] = (b21 & 128) == 0 ? 0 : 1;
                qt.y0(119, iArr9);
                int[] iArr10 = new int[1];
                iArr10[0] = (b21 & 64) == 0 ? 0 : 1;
                qt.y0(120, iArr10);
                int[] iArr11 = new int[1];
                iArr11[0] = (b21 & 32) == 0 ? 0 : 1;
                qt.y0(121, iArr11);
                int[] iArr12 = new int[1];
                iArr12[0] = (b21 & 16) == 0 ? 0 : 1;
                qt.y0(122, iArr12);
                qt.y0(123, b21 & 7);
                byte b22 = bArr[i2 + 4];
                int[] iArr13 = new int[1];
                iArr13[0] = (b22 & 128) == 0 ? 0 : 1;
                qt.y0(124, iArr13);
                int[] iArr14 = new int[1];
                iArr14[0] = (b22 & 64) == 0 ? 0 : 1;
                qt.y0(125, iArr14);
                int[] iArr15 = new int[1];
                iArr15[0] = (b22 & 32) == 0 ? 0 : 1;
                qt.y0(126, iArr15);
                int[] iArr16 = new int[1];
                iArr16[0] = (b22 & 16) == 0 ? 0 : 1;
                qt.y0(127, iArr16);
                int[] iArr17 = new int[1];
                iArr17[0] = (b22 & 8) == 0 ? 0 : 1;
                qt.y0(128, iArr17);
                qt.y0(129, b22 & 7);
                byte b23 = bArr[i2 + 5];
                int[] iArr18 = new int[1];
                iArr18[0] = (b23 & 128) == 0 ? 0 : 1;
                qt.y0(130, iArr18);
                int[] iArr19 = new int[1];
                iArr19[0] = (b23 & 64) == 0 ? 0 : 1;
                qt.y0(131, iArr19);
                qt.y0(132, (b23 >> 2) & 3);
                break;
            case 39:
                int i50 = (bArr[i2 + 2] & 255) << 24;
                for (int i51 = 0; i51 < 15; i51++) {
                    int i52 = i2 + (i51 * 2);
                    int[] iArr20 = {i51, (bArr[i52 + 4] & 255) | ((bArr[i52 + 3] & 255) << 8) | i50};
                    if (qt.C0(134, iArr20, this.f11649c[i51])) {
                        this.f11649c[i51] = iArr20;
                    }
                }
                break;
            case 40:
                byte b24 = bArr[i2 + 1];
                byte b25 = bArr[i2 + 2];
                qt.y0(10, (b25 >> 7) & 1);
                qt.y0(11, (b25 >> 6) & 1);
                qt.y0(12, (b25 >> 5) & 1);
                qt.y0(13, (b25 >> 4) & 1);
                qt.y0(26, (b25 >> 3) & 1);
                qt.y0(14, (b25 >> 2) & 1);
                qt.y0(15, (b25 >> 1) & 1);
                byte b26 = bArr[i2 + 3];
                qt.y0(18, (b26 >> 7) & 1);
                qt.y0(19, (b26 >> 6) & 1);
                qt.y0(20, (b26 >> 5) & 1);
                int i53 = b26 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i53 > 7) {
                    i53 = 7;
                }
                qt.y0(21, i53);
                int i54 = i2 + 6;
                qt.y0(37, (bArr[i54] >> 0) & 1);
                int i55 = i2 + 4;
                int i56 = bArr[i55] & 255;
                int i57 = i2 + 5;
                int i58 = bArr[i57] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i56 = bArr[i57] & 255;
                    i58 = bArr[i55] & 255;
                }
                if (((bArr[i54] >> 0) & 1) == 0) {
                    if (i56 == 0) {
                        qt.y0(27, -2);
                    } else if (i56 == 31) {
                        qt.y0(27, -3);
                    } else if (i56 >= 1 && i56 <= 29) {
                        qt.y0(27, (i56 * 5) + 175);
                    } else if (i56 >= 32 && i56 <= 35) {
                        qt.y0(27, ((i56 - 32) * 5) + 160);
                    } else if (i56 < 36 || i56 > 37) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, ((i56 - 36) * 5) + 150);
                    }
                    if (i58 == 0) {
                        qt.y0(28, -2);
                    } else if (i58 == 31) {
                        qt.y0(28, -3);
                    } else if (i58 >= 1 && i58 <= 29) {
                        qt.y0(28, (i58 * 5) + 175);
                    } else if (i58 >= 32 && i58 <= 35) {
                        qt.y0(28, ((i58 - 32) * 5) + 160);
                    } else if (i58 < 36 || i58 > 37) {
                        qt.y0(28, -1);
                    } else {
                        qt.y0(28, ((i58 - 36) * 5) + 150);
                    }
                } else {
                    if (i56 == 0) {
                        qt.y0(27, -2);
                    } else if (i56 != 255) {
                        qt.y0(27, i56 * 10);
                    } else {
                        qt.y0(27, -3);
                    }
                    if (i58 == 0) {
                        qt.y0(28, -2);
                    } else if (i58 != 255) {
                        qt.y0(28, i58 * 10);
                    } else {
                        qt.y0(28, -3);
                    }
                }
                qt.y0(16, (bArr[i54] >> 6) & 1);
                qt.y0(65, (bArr[i54] >> 7) & 1);
                qt.y0(54, (bArr[i54] >> 5) & 1);
                qt.y0(52, (bArr[i54] >> 4) & 1);
                qt.y0(53, (bArr[i54] >> 3) & 1);
                qt.y0(67, (bArr[i54] >> 2) & 1);
                if (((bArr[i54] >> 0) & 1) == 0) {
                    int i59 = bArr[i2 + 8] & 255;
                    if (i59 == 0) {
                        qt.y0(40, -2);
                    } else if (i59 == 31) {
                        qt.y0(40, -3);
                    } else if (i59 >= 1 && i59 <= 29) {
                        qt.y0(40, (i59 * 5) + 175);
                    } else if (i59 < 33 || i59 > 38) {
                        qt.y0(40, -1);
                    } else {
                        qt.y0(40, ((i59 - 33) * 5) + 150);
                    }
                    int i60 = bArr[i2 + 10] & 255;
                    if (i60 == 0) {
                        qt.y0(41, -2);
                    } else if (i60 == 31) {
                        qt.y0(41, -3);
                    } else if (i60 >= 1 && i60 <= 29) {
                        qt.y0(41, (i60 * 5) + 175);
                    } else if (i60 < 33 || i60 > 38) {
                        qt.y0(41, -1);
                    } else {
                        qt.y0(41, ((i60 - 33) * 5) + 150);
                    }
                } else {
                    int i61 = bArr[i2 + 8] & 255;
                    if (i61 == 0) {
                        qt.y0(40, -2);
                    } else if (i61 != 255) {
                        qt.y0(40, i61 * 10);
                    } else {
                        qt.y0(40, -3);
                    }
                    int i62 = bArr[i2 + 10] & 255;
                    if (i62 == 0) {
                        qt.y0(41, -2);
                    } else if (i62 != 255) {
                        qt.y0(41, i62 * 10);
                    } else {
                        qt.y0(41, -3);
                    }
                }
                int i63 = i2 + 9;
                qt.y0(42, (bArr[i63] >> 7) & 1);
                qt.y0(46, (bArr[i63] >> 6) & 1);
                qt.y0(47, (bArr[i63] >> 5) & 1);
                qt.y0(43, (bArr[i63] >> 4) & 1);
                qt.y0(44, (bArr[i63] >> 0) & 15);
                if (b24 >= 11) {
                    int i64 = i2 + 12;
                    qt.y0(166, (bArr[i64] >> 0) & 3);
                    qt.y0(86, (bArr[i64] >> 2) & 7);
                    qt.y0(76, (bArr[i64] >> 7) & 1);
                    qt.y0(92, (bArr[i64] >> 5) & 1);
                    int i65 = i2 + 13;
                    qt.y0(33, (bArr[i65] >> 7) & 1);
                    qt.y0(36, (bArr[i65] >> 6) & 1);
                }
                int i66 = bArr[i2 + 7] & 255;
                if (i66 == 255 || i66 == 0) {
                    u0.d.A3(0);
                } else {
                    u0.d.B3(((bArr[i54] >> 0) & 1) == 1 ? (268435456 | ((i66 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR)) & (-1) : (i66 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                }
                break;
            case 41:
                if (!this.f11658l) {
                    qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 500);
                }
                break;
            case 42:
                byte b27 = bArr[i2 + 2];
                byte b28 = bArr[i2 + 3];
                this.f11656j = b27 & 255;
                int i67 = 0;
                while (true) {
                    iArr2 = this.f11657k;
                    if (i67 < iArr2.length) {
                        int i68 = this.f11656j;
                        if (i68 != iArr2[i67][0]) {
                            i67++;
                        } else if (i68 != 0) {
                            this.f11655i = i67;
                        }
                    }
                }
                int i69 = this.f11656j;
                if (i69 != 12) {
                    if (i69 != 32) {
                        if (i69 != 34) {
                            int i70 = b28 & 255;
                            if (i70 == 1) {
                                if (i67 < iArr2.length) {
                                    l0.b0.l0(iArr2[i67][1], 0);
                                }
                            } else if (i70 == 0) {
                                int i71 = this.f11655i;
                                if (i71 < iArr2.length && i71 != 255) {
                                    l0.b0.l0(iArr2[i71][1], 1);
                                }
                                this.f11655i = 255;
                            }
                        }
                    } else if ((b28 & 255) == 1) {
                        n3();
                    }
                }
                if ((b28 & 255) == 1) {
                    m3();
                }
                break;
            default:
                switch (b2) {
                    case 48:
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        break;
                    case 49:
                        int i72 = i2 + 2;
                        qt.y0(183, (bArr[i72] >> 4) & 15);
                        qt.y0(184, (bArr[i72] >> 0) & 15);
                        int i73 = i2 + 3;
                        qt.y0(185, (bArr[i73] >> 4) & 15);
                        qt.y0(186, (bArr[i73] >> 0) & 15);
                        int i74 = i2 + 4;
                        qt.y0(187, (bArr[i74] >> 4) & 15);
                        qt.y0(188, (bArr[i74] >> 0) & 15);
                        qt.y0(189, (bArr[i2 + 5] >> 0) & 255);
                        qt.y0(190, (bArr[i2 + 6] >> 0) & 1);
                        break;
                    case 50:
                        byte b29 = bArr[i2 + 2];
                        f11646y = (b29 & 4) == 0 ? 0 : 1;
                        int i75 = (b29 & 8) == 0 ? 0 : 1;
                        f11647z = i75;
                        qt.y0(Process.MEDIA_UID, i75);
                        if (nt.a()) {
                            if (f11646y == 0 || f11647z != 1) {
                                qt.a(0);
                            } else {
                                qt.a(1);
                            }
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f11669w.j();
        u0.c.f17386m.d(this.f11667u);
        l0.b0.p0(this.f11668v);
        y0.g.f18094d.d(this.f11665s);
        o1.h.f16865a.d(this.f11664r);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 263) {
            return;
        }
        int i4 = 0;
        if (i2 == 105) {
            while (i4 < 5) {
                o1.x.v(bVar, i2, this.f11648b[i4]);
                i4++;
            }
        } else {
            if (i2 != 134) {
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                return;
            }
            while (i4 < 15) {
                o1.x.v(bVar, i2, this.f11649c[i4]);
                i4++;
            }
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 30) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            o3(iArr[0], iArr[1]);
        }
        if (i2 == 44) {
            if (T2(iArr, 2)) {
                z.k.s(227, 132, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 48) {
            if (T2(iArr, 7)) {
                z.k.s(227, 199, 7, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6]);
                return;
            }
            return;
        }
        if (i2 == 50) {
            if (T2(iArr, 1)) {
                p3(iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 1005) {
            a.f.p().t(LogType.CANBUS, "C_CAMERA_MODE = " + iArr[0] + "=========== " + iArr[1]);
            if (iArr[1] != 0 && iArr.length > 0) {
                if (f11647z == 0) {
                    if (iArr[0] == 0) {
                        o3(33, 4);
                        return;
                    } else if (iArr[0] == 2) {
                        o3(33, 7);
                        return;
                    } else {
                        if (iArr[0] == 3) {
                            o3(33, 3);
                            return;
                        }
                        return;
                    }
                }
                if (iArr[0] == 0) {
                    o3(33, 2);
                    return;
                }
                if (iArr[0] == 2) {
                    o3(33, 1);
                    return;
                } else if (iArr[0] == 3) {
                    o3(33, 3);
                    return;
                } else {
                    if (iArr[0] == 4) {
                        qt.a(0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int iW = (iArr[1] * Process.MEDIA_RW_GID) / a.f.w();
                int i3 = (iArr[2] * 1000) / a.f.i();
                if (iArr[0] == 0) {
                    z.k.s(227, 152, 6, 1, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, 152, 6, 0, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i2 == 40) {
            if (T2(iArr, 2)) {
                z.k.s(227, -125, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 41) {
            if (T2(iArr, 5)) {
                z.k.s(227, 199, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                return;
            }
            return;
        }
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 4) {
                        iArr[0] = 4;
                    }
                    o3(6, iArr[0]);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    o3(0, iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    o3(1, iArr[0]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    o3(2, iArr[0]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    o3(3, iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    o3(4, iArr[0]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 6) {
                        iArr[0] = 6;
                    }
                    o3(5, iArr[0]);
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
                    o3(7, iArr[0]);
                    break;
                }
                break;
            case 8:
                o3(8, 0);
                break;
            case 9:
                o3(9, 0);
                break;
            case 10:
                o3(10, 0);
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    o3(12, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    o3(13, iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    o3(14, iArr[0]);
                    break;
                }
                break;
            case 14:
                if (iArr != null && iArr.length > 0) {
                    int i4 = iArr[0];
                    if (i4 == 0) {
                        o3(15, 0);
                        break;
                    } else if (i4 == 1) {
                        o3(15, 1);
                        break;
                    }
                }
                break;
            case 15:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    o3(16, iArr[0]);
                    break;
                }
                break;
            case 16:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    o3(17, iArr[0]);
                    break;
                }
                break;
            case 17:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    o3(18, iArr[0]);
                    break;
                }
                break;
            case 18:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    o3(19, iArr[0]);
                    break;
                }
                break;
            case 19:
                if (iArr != null && iArr.length > 0) {
                    o3(35, iArr[0]);
                    break;
                }
                break;
            case 20:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] == 65) {
                        z.k.s(227, -112, 2, 65, 1);
                        z.k.s(227, -112, 2, 65, 2);
                        z.k.s(227, -112, 2, 65, 3);
                    } else if (iArr[0] == 31) {
                        z.k.s(227, -112, 2, 31, 0);
                    }
                    break;
                }
                break;
            case 21:
                if (iArr != null && iArr.length > 0) {
                    o3(34, iArr[0]);
                    break;
                }
                break;
        }
    }

    public final void a3(int i2, int i3) {
        switch (i3) {
            case 0:
                z.k.s(227, -57, 7, i2, 0, 0, 0, 0, 0, 0);
                break;
            case 1:
                z.k.s(227, -57, 7, 0, i2, 0, 0, 0, 0, 0);
                break;
            case 2:
                z.k.s(227, -57, 7, 0, 0, i2, 0, 0, 0, 0);
                break;
            case 3:
                z.k.s(227, -57, 7, 0, 0, 0, i2, 0, 0, 0);
                break;
            case 4:
                z.k.s(227, -57, 7, 0, 0, 0, 0, i2, 0, 0);
                break;
            case 5:
                z.k.s(227, -57, 7, 0, 0, 0, 0, 0, i2, 0);
                break;
            case 6:
                z.k.s(227, -57, 7, 0, 0, 0, 0, 0, 0, i2);
                break;
        }
        a.i.a0(50L);
        z.k.s(227, -57, 7, 0, 0, 0, 0, 0, 0, 0);
    }

    public final void m3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.camry2012.xp.ToyotaLexusActivityCarCD")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.camry2012.xp.ToyotaLexusActivityCarCD");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void n3() {
        try {
            this.f11659m = 4;
            if (qt.i0().equals("com.syu.carinfo.camry2012.xp.ToyotaLexusEQActi")) {
                return;
            }
            qt.z(this.f11660n);
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.camry2012.xp.ToyotaLexusEQActi");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void o3(int i2, int i3) {
        z.k.s(227, -125, 2, (byte) i2, (byte) i3);
    }

    public final void p3(int i2) {
        A = i2;
        qt.y0(239, i2);
        int iB = this.f11669w.b(2, 1);
        int i3 = A;
        if (iB != i3) {
            this.f11669w.g(2, i3);
        }
    }
}
