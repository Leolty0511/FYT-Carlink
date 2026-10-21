package module.canbus;

import android.drm.DrmManagerClient;
import android.media.MediaPlayer;
import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class g extends lt {
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
    public static int L;
    public static int M;
    public static int N;
    public static int O;
    public static int P;
    public static int Q;
    public static final int[] R = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36};
    public static final int[] S = {1, 2, 4, 6, 8, 10, 12, 14, 16, 18, 19};
    public static final int[] T = {2, 3, 4, 6, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18};
    public static final o1.f<RunnableC0078g> U = new o1.f<>();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f14094y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f14095z;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14101g;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f14118x;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f14096b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o1.g0 f14097c = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f14098d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f14099e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14100f = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14102h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f14103i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{23, 5}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f14104j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{18, 29}, new int[]{19, 12}, new int[]{20, 25}, new int[]{21, 6}, new int[]{22, 29}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 4}, new int[]{32, 3}, new int[]{33, 0}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f14105k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f14106l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f14107m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f14108n = 0.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f14109o = 255;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f14110p = 255;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f14111q = new d();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f14112r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f14113s = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f14114t = new e();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f14115u = 100;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f14116v = new f();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f14117w = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, -124, 2, 1, g.E);
            l0.c0.m();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (g.this.f14112r == millis && g.this.f14113s == i2) {
                return;
            }
            g.this.f14112r = millis;
            g.this.f14113s = i2;
            byte b2 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time.month + 1);
            byte b4 = (byte) time.monthDay;
            byte b5 = (byte) time.hour;
            byte b6 = (byte) time.minute;
            byte b7 = (byte) time.second;
            int i3 = nt.f8633a;
            if (i3 == 65653 || i3 == 131189 || i3 == 196725) {
                z.k.s(227, -57, 6, b2, b3, b4, (i2 << 7) | b5, b6, b7);
                return;
            }
            if (i2 != 0 && b5 > 12) {
                b5 = (byte) (b5 - 12);
            }
            z.k.s(227, -58, 4, 80, (byte) (((i2 << 7) | b5) & 255), b6, b7);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g.this.f14108n = u0.b.f17359s0;
            if (g.this.f14108n > 360.0f) {
                g.F3(g.this, 360.0f);
            }
            if (g.this.f14108n < 0.0f) {
                g.F3(g.this, 360.0f);
                g gVar = g.this;
                gVar.f14108n = 360.0f - Math.abs(gVar.f14108n);
            }
            if ((g.this.f14108n <= 22.5d && g.this.f14108n >= 0.0f) || (g.this.f14108n >= 337.5d && g.this.f14108n <= 360.0f)) {
                g.this.f14110p = 0;
            } else if (g.this.f14108n > 22.5d && g.this.f14108n < 67.5d) {
                g.this.f14110p = 8;
            } else if (g.this.f14108n >= 67.5d && g.this.f14108n <= 112.5d) {
                g.this.f14110p = 16;
            } else if (g.this.f14108n > 112.5d && g.this.f14108n < 157.5d) {
                g.this.f14110p = 24;
            } else if (g.this.f14108n >= 157.5d && g.this.f14108n <= 202.5d) {
                g.this.f14110p = 32;
            } else if (g.this.f14108n > 202.5d && g.this.f14108n < 247.5d) {
                g.this.f14110p = 40;
            } else if (g.this.f14108n >= 247.5d && g.this.f14108n <= 292.5d) {
                g.this.f14110p = 48;
            } else if (g.this.f14108n <= 292.5d || g.this.f14108n >= 337.5d) {
                g.this.f14110p = 64;
            } else {
                g.this.f14110p = 56;
            }
            if (g.this.f14110p != g.this.f14109o) {
                z.k.s(227, 201, 2, g.this.f14110p, 0);
                g gVar2 = g.this;
                gVar2.f14109o = gVar2.f14110p;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.i.U();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if (nt.a() || (i2 = nt.f8633a) == 65653 || i2 == 131189 || i2 == 196725) {
                if (g.this.f14115u > 100) {
                    g.N3(g.this);
                    if (g.this.f14117w == g.this.f14115u / 100) {
                        g.this.f14117w = 0;
                        return;
                    }
                }
                int i3 = u0.b.f17306a0;
                int i4 = u0.b.f17320f;
                int i5 = y0.f.f18055i;
                if (i3 == 0 || i4 == 0 || i5 == 1) {
                    int unused = g.G = g.R[0];
                } else {
                    int unused2 = g.G = g.R[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (g.this.f7886a.f8307b == 1 && g.F != g.G) {
                    g.this.a4();
                }
                g gVar = g.this;
                if (gVar.f7886a.f8309d == 1) {
                    gVar.P2(null);
                    if (g.f14095z != g.K) {
                        int unused3 = g.f14095z = g.K;
                        g.this.V3();
                    }
                    if (g.A != g.L) {
                        int unused4 = g.A = g.L;
                        g.this.Y3();
                    }
                    if (g.B != g.M) {
                        int unused5 = g.B = g.M;
                        g.this.Z3();
                    }
                }
                g gVar2 = g.this;
                if (gVar2.f7886a.f8308c == 1) {
                    gVar2.R2(null);
                    if (g.C != g.P) {
                        int unused6 = g.C = g.P;
                        g.this.X3();
                    }
                    if (g.D != g.Q) {
                        int unused7 = g.D = g.Q;
                        g.this.U3();
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: module.canbus.g$g, reason: collision with other inner class name */
    public static class RunnableC0078g implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14125a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14126b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14127c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14128d;

        public RunnableC0078g(int i2, int i3) {
            this.f14125a = i2;
            this.f14128d = i3;
        }

        public synchronized void a(int i2) {
            this.f14126b = i2;
            if (!this.f14127c) {
                this.f14127c = true;
                o1.k.a().postDelayed(this, this.f14128d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 132, 2, this.f14125a, this.f14126b);
            this.f14127c = false;
        }
    }

    public static /* synthetic */ float F3(g gVar, float f2) {
        float f3 = gVar.f14108n % f2;
        gVar.f14108n = f3;
        return f3;
    }

    public static /* synthetic */ int N3(g gVar) {
        int i2 = gVar.f14117w;
        gVar.f14117w = i2 + 1;
        return i2;
    }

    public static void R3(int i2, int i3) {
        RunnableC0078g runnableC0078gC = U.c(i2);
        if (runnableC0078gC != null) {
            runnableC0078gC.a(i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        int i2;
        if ((nt.a() || (i2 = nt.f8633a) == 65653 || i2 == 131189 || i2 == 196725) && this.f7886a.f8309d == 1) {
            int[] iArr2 = S;
            int[] iArr3 = y0.f.f18038c0;
            K = iArr2[o0.a(iArr3[0] >> 1, 0, 10)];
            L = iArr2[o0.a(iArr3[1] >> 1, 0, 10)];
            M = iArr2[o0.a(iArr3[2] >> 1, 0, 10)];
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        int i2;
        if ((nt.a() || (i2 = nt.f8633a) == 65653 || i2 == 131189 || i2 == 196725) && this.f7886a.f8308c == 1) {
            int[] iArr2 = T;
            P = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            Q = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f14097c.a();
        W3(this.f14097c.b(1, 0));
        qt.z(this.f14107m);
        qt.y(this.f14105k);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8320o = 1;
        int i2 = nt.f8633a;
        if (i2 == 65653 || i2 == 131189 || i2 == 196725) {
            mtVar.f8312g = 1;
            T3(1, this.f14097c.b(2, 0));
            if (E == 1) {
                mt mtVar2 = this.f7886a;
                mtVar2.f8307b = 1;
                mtVar2.f8308c = 1;
                mtVar2.f8309d = 1;
                b3(1);
                init();
                l0.b0.a(this.f14116v);
                S3();
            } else {
                mt mtVar3 = this.f7886a;
                mtVar3.f8307b = 0;
                mtVar3.f8308c = 0;
                mtVar3.f8309d = 0;
            }
            l0.b0.b(this.f14106l);
            w0.e.f17815a.a(this.f14106l, 1);
            u0.c.f17374a.a(this.f14106l, 1);
            u0.c.f17393t.a(this.f14106l, 1);
            u0.c.f17392s.a(this.f14106l, 1);
            o1.h.f16865a.a(this.f14111q, 1);
        }
    }

    public final void S3() {
        a4();
        X3();
        U3();
        V3();
        Y3();
        Z3();
    }

    public final void T3(int i2, int i3) {
        E = i3;
        z.k.s(227, -124, 2, 1, i3);
        int iB = this.f14097c.b(2, 0);
        int i4 = E;
        if (iB != i4) {
            this.f14097c.g(2, i4);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 22) {
            qt.y0(1031, (bArr[i2 + 2] & 255) | (((bArr[i2 + 3] & 255) & 255) << 8));
        }
        if (b2 == 23) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 4];
            byte b5 = bArr[i2 + 5];
            byte b6 = bArr[i2 + 6];
            byte b7 = bArr[i2 + 7];
            byte b8 = bArr[i2 + 8];
            int i4 = b3 & 1;
            if (i4 != 0) {
                N = o0.a(b4 & 255, 1, 19);
                O = o0.a(b5 & 255, 1, 19);
                H = o0.a(b6 & 255, 1, 19);
                I = o0.a(b7 & 255, 1, 19);
                J = o0.a(b8 & 255, 1, 19);
                qt.y0(176, i4);
                return;
            }
            return;
        }
        if (b2 == 39) {
            int i5 = bArr[i2 + 2] & 255;
            byte b9 = bArr[i2 + 3];
            if (i5 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3(b9 == 1 ? ((i5 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 32768 : (i5 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_AMBIENT);
            return;
        }
        int i6 = 11;
        if (b2 == 51) {
            byte b10 = bArr[i2 + 2];
            if (b10 == 1) {
                qt.y0(98, bArr[i2 + 3] & 255);
                qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(100, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(101, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                qt.y0(102, (16711680 & (bArr[i2 + 10] << 16)) | ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                qt.y0(103, ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
                byte b11 = bArr[i2 + 15];
                qt.y0(104, b11 & 3);
                qt.y0(105, (b11 >> 2) & 3);
                qt.y0(106, 3 & (b11 >> 4));
                qt.y0(107, (b11 >> 6) & 1);
                qt.y0(108, (b11 >> 7) & 1);
                int i7 = bArr[i2 + 16] & 255;
                if (i7 < 0) {
                    i6 = 0;
                } else if (i7 <= 11) {
                    i6 = i7;
                }
                qt.y0(109, this.f14096b[i6]);
                return;
            }
            if (b10 != 2) {
                return;
            }
            qt.y0(110, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(111, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(112, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
            qt.y0(113, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
            qt.y0(114, (16711680 & (bArr[i2 + 13] << 16)) | ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            qt.y0(115, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
            byte b12 = bArr[i2 + 18];
            qt.y0(104, b12 & 3);
            qt.y0(105, (b12 >> 2) & 3);
            qt.y0(106, 3 & (b12 >> 4));
            qt.y0(107, (b12 >> 6) & 1);
            qt.y0(108, (b12 >> 7) & 1);
            int i8 = bArr[i2 + 19] & 255;
            if (i8 < 0) {
                i6 = 0;
            } else if (i8 <= 11) {
                i6 = i8;
            }
            qt.y0(109, this.f14096b[i6]);
            return;
        }
        if (b2 == 64) {
            byte b13 = bArr[i2 + 2];
            byte b14 = bArr[i2 + 3];
            byte b15 = bArr[i2 + 4];
            byte b16 = bArr[i2 + 5];
            int i9 = b13 & 255;
            if (i9 == 0) {
                int i10 = b14 > 0 ? b14 - 1 : 1;
                if (b14 == 1) {
                    i10 = 0;
                } else if (b14 == 10) {
                    i10 = 1;
                }
                qt.y0(118, i10);
                return;
            }
            if (i9 == 1) {
                qt.y0(119, b14 & 1);
                qt.y0(120, (b14 >> 1) & 3);
                qt.y0(121, (b14 >> 3) & 1);
                qt.y0(122, (b14 >> 4) & 1);
                qt.y0(123, (b14 >> 5) & 3);
                return;
            }
            if (i9 == 32) {
                int i11 = b14 & 127;
                if (i11 == 30) {
                    qt.y0(124, 1);
                } else if (i11 == 60) {
                    qt.y0(124, 2);
                } else if (i11 != 90) {
                    qt.y0(124, 0);
                } else {
                    qt.y0(124, 3);
                }
                qt.y0(125, (b15 >> 7) & 1);
                int i12 = b15 & 127;
                if (i12 == 30) {
                    qt.y0(126, 1);
                } else if (i12 == 60) {
                    qt.y0(126, 2);
                } else if (i12 != 90) {
                    qt.y0(126, 0);
                } else {
                    qt.y0(126, 3);
                }
                qt.y0(127, b16 & 1);
                qt.y0(128, (b16 >> 1) & 1);
                qt.y0(129, (b16 >> 2) & 1);
                qt.y0(131, (b16 >> 3) & 1);
                qt.y0(130, (b16 >> 4) & 1);
                qt.y0(132, 3 & (b16 >> 5));
                qt.y0(133, (b16 >> 7) & 1);
            } else if (i9 != 33) {
                if (i9 == 48) {
                    qt.y0(134, b14 & 1);
                    qt.y0(135, (b14 >> 1) & 1);
                    qt.y0(136, (b14 >> 2) & 1);
                    qt.y0(137, (b14 >> 3) & 3);
                    qt.y0(140, b15 & 1);
                    qt.y0(141, (b15 >> 2) & 1);
                    qt.y0(139, (b15 >> 3) & 1);
                    qt.y0(142, b16 & 1);
                    qt.y0(143, (b16 >> 1) & 1);
                    return;
                }
                if (i9 == 64) {
                    int i13 = b14 & 127;
                    if (i13 == 30) {
                        qt.y0(144, 1);
                    } else if (i13 == 60) {
                        qt.y0(144, 2);
                    } else if (i13 != 90) {
                        qt.y0(144, 0);
                    } else {
                        qt.y0(144, 3);
                    }
                    int i14 = b15 & 255;
                    if (i14 == 3) {
                        qt.y0(145, 1);
                    } else if (i14 == 20) {
                        qt.y0(145, 2);
                    } else if (i14 != 40) {
                        qt.y0(145, 0);
                    } else {
                        qt.y0(145, 3);
                    }
                    qt.y0(146, b16 & 1);
                    return;
                }
                if (i9 == 144) {
                    qt.y0(147, b14 & 3);
                    qt.y0(177, (b14 >> 2) & 1);
                    return;
                }
                if (i9 == 160) {
                    qt.y0(148, b14 & 1);
                    qt.y0(149, (b14 >> 1) & 1);
                    qt.y0(150, (b14 >> 2) & 1);
                    qt.y0(151, (b14 >> 3) & 1);
                    qt.y0(152, (b14 >> 4) & 1);
                    qt.y0(156, (b14 >> 5) & 1);
                    qt.y0(157, (b14 >> 6) & 1);
                    qt.y0(154, b15 & 3);
                    qt.y0(155, (b15 >> 2) & 3);
                    qt.y0(163, (b15 >> 4) & 3);
                    qt.y0(159, (b15 >> 6) & 3);
                    qt.y0(153, 3 & (b16 >> 0));
                    qt.y0(160, (b16 >> 2) & 1);
                } else if (i9 != 176) {
                    if (i9 == 192) {
                        qt.y0(168, (b14 >> 1) & 1);
                        qt.y0(169, (b14 >> 2) & 7);
                        return;
                    } else {
                        if (i9 != 208) {
                            return;
                        }
                        qt.y0(178, 3 & (b14 >> 0));
                        qt.y0(179, (b14 >> 2) & 1);
                        return;
                    }
                }
                int[] iArr3 = new int[1];
                int i15 = b14 & DhcpPacket.DHCP_DOMAIN_NAME;
                iArr3[0] = i15 <= 8 ? i15 : 8;
                qt.y0(164, iArr3);
                qt.y0(165, (b14 >> 4) & 1);
                qt.y0(166, b15 & DhcpPacket.DHCP_DOMAIN_NAME);
                return;
            }
            qt.y0(175, b14 & DhcpPacket.DHCP_DOMAIN_NAME);
            return;
        }
        if (b2 == 80) {
            int i16 = (bArr[i2 + 2] & 255) | (((bArr[i2 + 3] & 255) & 255) << 8);
            qt.y0(1032, i16);
            qt.y0(1032, i16);
            return;
        }
        if (b2 == 66) {
            byte b17 = bArr[i2 + 2];
            byte b18 = bArr[i2 + 3];
            qt.y0(180, b17);
            qt.y0(181, b18);
            return;
        }
        if (b2 == 67) {
            byte b19 = bArr[i2 + 2];
            int i17 = bArr[i2 + 3] & 255;
            int i18 = bArr[i2 + 4] & 255;
            int i19 = bArr[i2 + 5] & 255;
            int i20 = bArr[i2 + 6] & 255;
            int i21 = bArr[i2 + 7] & 255;
            int i22 = bArr[i2 + 8] & 255;
            int i23 = bArr[i2 + 9] & 255;
            byte b20 = bArr[i2 + 10];
            int i24 = bArr[i2 + 11] & 255;
            qt.y0(182, ((b19 & 255) << 8) | i17);
            qt.y0(184, i18 | ((i19 & 255) << 8) | (i20 << 16));
            qt.y0(183, (i23 << 16) | ((255 & i22) << 8) | i21);
            qt.y0(185, ((i24 & 255) << 8) | i24);
            return;
        }
        switch (b2) {
            case 32:
                int i25 = i2 + 2;
                byte b21 = bArr[i25];
                int i26 = i2 + 3;
                byte b22 = bArr[i26];
                int i27 = nt.f8633a;
                if (i27 == 65653 || i27 == 131189 || i27 == 196725) {
                    byte b23 = bArr[i25];
                    byte b24 = bArr[i26];
                    this.f14102h = b23 & 255;
                    int i28 = 0;
                    while (true) {
                        iArr = this.f14104j;
                        if (i28 < iArr.length) {
                            int i29 = this.f14102h;
                            if (i29 != iArr[i28][0]) {
                                i28++;
                            } else if (i29 != 0) {
                                this.f14101g = i28;
                            }
                        }
                    }
                    int i30 = b24 & 255;
                    if (i30 != 1) {
                        if (i30 == 0) {
                            int i31 = this.f14101g;
                            if (i31 < iArr.length && i31 != 255) {
                                l0.b0.l0(iArr[i31][1], 1);
                            }
                            this.f14101g = 255;
                        }
                    } else if (i28 < iArr.length) {
                        l0.b0.l0(iArr[i28][1], 0);
                    }
                } else {
                    if (b21 == 24 && b22 == 1) {
                        if (o1.u.Y0().equals("com.syu.canbus")) {
                            o1.u.k();
                        } else {
                            o1.u.v();
                        }
                    }
                    if (nt.a()) {
                        byte b25 = bArr[i25];
                        byte b26 = bArr[i26];
                        this.f14102h = b25 & 255;
                        int i32 = 0;
                        while (true) {
                            iArr2 = this.f14103i;
                            if (i32 < iArr2.length) {
                                int i33 = this.f14102h;
                                if (i33 != iArr2[i32][0]) {
                                    i32++;
                                } else if (i33 != 0) {
                                    this.f14101g = i32;
                                }
                            }
                        }
                        if ((b26 & 255) == 0) {
                            int i34 = this.f14101g;
                            if (i34 < iArr2.length && i34 != 255) {
                                l0.b0.l0(iArr2[i34][1], 1);
                            }
                            this.f14101g = 255;
                        } else if (i32 < iArr2.length) {
                            l0.b0.l0(iArr2[i32][1], 0);
                        }
                    }
                }
                break;
            case 33:
                byte b27 = bArr[i2 + 2];
                byte b28 = bArr[i2 + 3];
                byte b29 = bArr[i2 + 6];
                byte b30 = bArr[i2 + 7];
                qt.y0(10, (b27 >> 7) & 1);
                qt.y0(11, (b27 >> 6) & 1);
                qt.y0(12, (b27 >> 5) & 1);
                qt.y0(13, (b27 >> 3) & 1);
                qt.y0(62, (b27 >> 2) & 1);
                qt.y0(18, (b28 >> 7) & 1);
                qt.y0(19, (b28 >> 6) & 1);
                qt.y0(20, (b28 >> 5) & 1);
                qt.y0(21, b28 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i35 = i2 + 4;
                byte b31 = bArr[i35];
                int i36 = i2 + 5;
                byte b32 = bArr[i36];
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b31 = bArr[i36];
                    b32 = bArr[i35];
                }
                int i37 = b31 & 255;
                int i38 = (b29 >> 1) & 1;
                if (i38 == 0) {
                    if (i37 == 0) {
                        i37 = -2;
                    } else if (i37 != 255) {
                        i37 = (b29 & 1) == 0 ? i37 * 5 : i37 * 10;
                    } else {
                        i37 = -3;
                    }
                }
                qt.y0(27, i37);
                int i39 = b32 & 255;
                if (i38 == 0) {
                    if (i39 == 0) {
                        i39 = -2;
                    } else if (i39 != 255) {
                        i39 = (b29 & 1) == 0 ? i39 * 5 : i39 * 10;
                    } else {
                        i39 = -3;
                    }
                }
                qt.y0(28, i39);
                qt.y0(65, (b29 >> 7) & 1);
                qt.y0(16, (b29 >> 6) & 1);
                qt.y0(36, (b29 >> 5) & 1);
                qt.y0(52, (b29 >> 4) & 1);
                qt.y0(53, (b29 >> 3) & 1);
                qt.y0(67, (b29 >> 2) & 1);
                qt.y0(37, (b29 >> 0) & 1);
                qt.y0(29, (b30 >> 4) & 7);
                qt.y0(30, (b30 >> 0) & 7);
                break;
            case 34:
                int i40 = nt.f8633a;
                if (i40 == 65653 || i40 == 131189 || i40 == 196725) {
                    u0.d.R2(l0.c0.L0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.L0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.L0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.L0(bArr[i2 + 5] & 255));
                } else if (nt.a()) {
                    u0.d.R2(a3(bArr[i2 + 2] & 255));
                    u0.d.S2(a3(bArr[i2 + 3] & 255));
                    u0.d.T2(a3(bArr[i2 + 4] & 255));
                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                int i41 = nt.f8633a;
                if (i41 == 65653 || i41 == 131189 || i41 == 196725) {
                    u0.d.D2(l0.c0.L0(bArr[i2 + 2] & 255));
                    u0.d.E2(l0.c0.L0(bArr[i2 + 3] & 255));
                    u0.d.F2(l0.c0.L0(bArr[i2 + 4] & 255));
                    u0.d.G2(l0.c0.L0(bArr[i2 + 5] & 255));
                }
                break;
            case 36:
                byte b33 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b33 >> 7) & 1);
                    qt.y0(2, (b33 >> 6) & 1);
                } else {
                    qt.y0(1, (b33 >> 6) & 1);
                    qt.y0(2, (b33 >> 7) & 1);
                }
                qt.y0(3, (b33 >> 4) & 1);
                qt.y0(4, (b33 >> 5) & 1);
                qt.y0(5, (b33 >> 3) & 1);
                qt.y0(0, (b33 >> 2) & 1);
                break;
        }
    }

    public final synchronized void U3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        R3(4, Q);
    }

    public final synchronized void V3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        R3(5, K);
    }

    @Override // k0.lt
    public void W2() {
        this.f14097c.j();
        qt.q0(this.f14107m);
        qt.p0(this.f14105k);
        l0.b0.o0(this.f14116v);
        l0.b0.p0(this.f14106l);
        w0.e.f17815a.d(this.f14106l);
        u0.c.f17374a.d(this.f14106l);
        u0.c.f17393t.d(this.f14106l);
        u0.c.f17392s.d(this.f14106l);
        o1.h.f16865a.d(this.f14111q);
    }

    public final void W3(int i2) {
        f14094y = i2;
        if (i2 == 0) {
            z.k.s(227, 198, 2, 64, 1);
        } else if (i2 == 1) {
            z.k.s(227, 198, 2, 64, 0);
        } else if (i2 == 2) {
            z.k.s(227, 198, 2, 64, 2);
        }
        qt.y0(Process.MEDIA_UID, f14094y);
        int iB = this.f14097c.b(1, 0);
        int i3 = f14094y;
        if (iB != i3) {
            this.f14097c.g(1, i3);
        }
    }

    public final synchronized void X3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        R3(3, P);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 186) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    public final synchronized void Y3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        R3(7, L);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 2)) {
                z.k.s(227, 130, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                if (T2(iArr, 1)) {
                    z.k.s(227, -56, 2, iArr[0], 0);
                    return;
                }
                return;
            }
            if (i2 == 3) {
                if (T2(iArr, 2)) {
                    T3(iArr[0], iArr[1]);
                    if (iArr[0] == 1) {
                        o1.l.a().postDelayed(this.f14114t, 3000L);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i2 == 100) {
                if (T2(iArr, 1)) {
                    z.k.s(227, 144, 2, 51, iArr[0]);
                    return;
                }
                return;
            } else if (i2 == 101) {
                z.k.s(227, 144, 2, 51, 3);
                return;
            } else {
                if (i2 == 1005 && T2(iArr, 1)) {
                    W3(iArr[0]);
                    return;
                }
                return;
            }
        }
        if (T2(iArr, 2)) {
            int i3 = iArr[0];
            if (i3 != 0) {
                if (i3 == 41) {
                    iArr[1] = iArr[1] + 1;
                } else if (i3 == 32 || i3 == 33 || i3 == 64) {
                    if (iArr[1] == 1) {
                        iArr[1] = 30;
                    } else if (iArr[1] == 2) {
                        iArr[1] = 60;
                    } else if (iArr[1] == 3) {
                        iArr[1] = 90;
                    }
                } else if (i3 == 65) {
                    if (iArr[1] == 1) {
                        iArr[1] = 3;
                    } else if (iArr[1] == 2) {
                        iArr[1] = 20;
                    } else if (iArr[1] == 3) {
                        iArr[1] = 40;
                    }
                }
            } else if (iArr[1] == 1) {
                iArr[1] = 10;
            } else if (iArr[1] == 0) {
                iArr[1] = 1;
            }
            z.k.s(227, -58, 2, iArr[0], iArr[1]);
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        int i3;
        if ((nt.a() || (i3 = nt.f8633a) == 65653 || i3 == 131189 || i3 == 196725) && this.f7886a.f8307b == 1) {
            G = R[o0.a(i2, 0, 36)];
        }
    }

    public final synchronized void Z3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        R3(6, M);
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 8;
        }
        return 4;
    }

    public final synchronized void a4() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = F;
        int i3 = G;
        if (i2 < i3) {
            F = i2 + 1;
            this.f14118x = 0;
        } else if (i2 > i3) {
            F = i2 - 1;
            this.f14118x = 0;
        } else {
            F = i3;
        }
        R3(2, F);
    }

    public final void b3(int i2) {
        z.k.s(227, 129, 1, i2);
    }

    public final void init() {
        o1.f<RunnableC0078g> fVar = U;
        fVar.f(3, new RunnableC0078g(3, 100));
        fVar.f(4, new RunnableC0078g(4, 100));
        fVar.f(5, new RunnableC0078g(5, 100));
        fVar.f(6, new RunnableC0078g(6, 100));
        fVar.f(7, new RunnableC0078g(7, 100));
        fVar.f(2, new RunnableC0078g(2, 100));
    }
}
