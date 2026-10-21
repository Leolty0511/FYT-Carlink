package module.canbus;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class t extends lt {
    public static int A;
    public static int B;
    public static int C;
    public static int D;
    public static int E;
    public static final int[] F = {0, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38};
    public static final o1.f<h> G = new o1.f<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14820c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f14821d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14822e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f14823f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, -1}, new int[]{6, -1}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{16, 6}, new int[]{23, 1}, new int[]{24, 54}, new int[]{34, 5}, new int[]{44, 2}, new int[]{129, 0}, new int[]{130, 3}, new int[]{131, 4}, new int[]{134, 6}, new int[]{135, 21}, new int[]{137, 12}, new int[]{150, 29}, new int[]{151, 34}, new int[]{152, 35}, new int[]{153, 32}, new int[]{154, 33}, new int[]{155, 34}, new int[]{156, 33}, new int[]{157, 35}, new int[]{158, 32}, new int[]{159, 53}, new int[]{160, 1}, new int[]{164, 54}, new int[]{168, 18}, new int[]{170, 29}, new int[]{171, 5}, new int[]{172, 2}, new int[]{175, 5}, new int[]{176, 18}, new int[]{179, 24}, new int[]{180, 18}, new int[]{181, 26}, new int[]{183, 55}, new int[]{185, 25}, new int[]{191, 5}, new int[]{192, 25}, new int[]{193, 63}, new int[]{194, 38}, new int[]{195, 12}, new int[]{197, 7}, new int[]{198, 8}, new int[]{199, 18}, new int[]{200, 26}, new int[]{201, 21}, new int[]{202, 55}, new int[]{203, 1}, new int[]{212, 2}, new int[]{225, 63}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14824g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14825h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14826i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f14827j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte f14828k = 10;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f14829l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f14830m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f14831n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f14832o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f14833p = new d();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f14834q = new e();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f14835r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f14836s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f14837t = 0.0f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f14838u = 255;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f14839v = 255;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f14840w = new f();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f14841x = 200;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f14842y = new g();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f14843z = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            byte b2 = (byte) time.hour;
            byte b3 = (byte) time.minute;
            byte b4 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b5 = (byte) (time.month + 1);
            byte b6 = (byte) time.monthDay;
            int i2 = nt.f8637c;
            if (i2 == 34 || i2 == 35) {
                return;
            }
            z.k.s(227, 10, -53, 0, b2, b3, 0, 0, zIs24HourFormat ? 1 : 0, b4, b5, b6, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t tVar = t.this;
            tVar.f14824g = 0;
            tVar.f14825h = 0;
            if (u0.b.f17306a0 == 1) {
                l0.b0.b(tVar.f14830m);
                t.this.f14828k = (byte) 5;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        /* JADX WARN: Code duplicated, block: B:35:0x0101  */
        @Override // java.lang.Runnable
        public void run() {
            t tVar = t.this;
            byte b2 = (byte) (tVar.f14828k - 1);
            tVar.f14828k = b2;
            if (b2 <= 0) {
                l0.b0.p0(tVar.f14830m);
                t.this.f14828k = (byte) 5;
            }
            int i2 = nt.f8637c;
            if (i2 == 2) {
                z.k.s(227, 2, 36, 5, 17);
            } else if (i2 != 5 && i2 != 6 && i2 != 7) {
                switch (i2) {
                    case 9:
                    case 11:
                        z.k.s(227, 2, 36, 8, 17);
                        break;
                    case 10:
                    case 12:
                        z.k.s(227, 2, 36, 9, 17);
                        break;
                    case 13:
                        z.k.s(227, 2, 36, 10, 17);
                        break;
                    case 14:
                    case 15:
                    case 16:
                    case 18:
                        z.k.s(227, 2, 36, 5, 17);
                        break;
                    case 17:
                        z.k.s(227, 2, 36, 1, 17);
                        break;
                    case 19:
                    case 20:
                        z.k.s(227, 2, 36, 3, 17);
                        break;
                    case 21:
                    case 22:
                        z.k.s(227, 2, 36, 13, 17);
                        break;
                    case 23:
                        z.k.s(227, 2, 36, 12, 17);
                        break;
                    case 24:
                    case 25:
                    case 26:
                        break;
                    case 27:
                    case 28:
                        z.k.s(227, 2, 36, 7, 17);
                        break;
                    case 29:
                    case 30:
                        z.k.s(227, 2, 36, 15, 17);
                        break;
                    case 31:
                    case 32:
                        z.k.s(227, 2, 36, 16, 17);
                        break;
                    case 33:
                        z.k.s(227, 2, 36, 64, 17);
                        break;
                    case 34:
                    case 35:
                        z.k.s(227, 2, 36, 18, 17);
                        break;
                    case 36:
                    case 37:
                        z.k.s(227, 2, 36, 19, 17);
                        break;
                    case 38:
                        z.k.s(227, 2, 36, 65, 17);
                        break;
                    case 39:
                    case 40:
                        z.k.s(227, 2, 36, 17, 17);
                        break;
                    case 41:
                        z.k.s(227, 2, 36, 22, 17);
                        break;
                    case 42:
                    case 43:
                        z.k.s(227, 2, 36, 20, 17);
                        break;
                    case 44:
                        z.k.s(227, 2, 36, 66, 17);
                        break;
                    case 45:
                        z.k.s(227, 2, 36, 67, 17);
                        break;
                    case 46:
                        z.k.s(227, 2, 36, 68, 17);
                        break;
                    case 47:
                        z.k.s(227, 2, 36, 69, 17);
                        break;
                    case 48:
                        z.k.s(227, 2, 36, 70, 17);
                        break;
                    default:
                        z.k.s(227, 2, 36, 2, 17);
                        break;
                }
            } else {
                z.k.s(227, 2, 36, 21, 17);
            }
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 2163008:
                    case 2490688:
                    case 2883904:
                    case 2949440:
                    case 3014976:
                    case 3080512:
                        if (!o1.u.a0()) {
                            z.k.s(227, 3, -96, 0, 0, 0);
                        } else {
                            z.k.s(227, 3, -96, 0, 1, 0);
                        }
                        break;
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
                z.k.s(227, 3, -95, 0, 0, 0);
            } else {
                z.k.s(227, 3, -95, 0, 0, i2);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 33 || i2 == 38 || i2 == 44 || i2 == 45 || i2 == 46 || i2 == 47 || i2 == 48) {
                t.b3();
            } else {
                t.this.a3();
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f14836s = u0.b.f17361t0 & 65535;
            t.this.f14837t = u0.b.f17359s0;
            if (t.this.f14837t > 360.0f) {
                t.s3(t.this, 360.0f);
            }
            if (t.this.f14837t < 0.0f) {
                t.s3(t.this, 360.0f);
                t tVar = t.this;
                tVar.f14837t = 360.0f - Math.abs(tVar.f14837t);
            }
            if ((t.this.f14837t <= 22.5d && t.this.f14837t >= 0.0f) || (t.this.f14837t >= 337.5d && t.this.f14837t <= 360.0f)) {
                t.this.f14839v = 3;
            } else if (t.this.f14837t > 22.5d && t.this.f14837t < 67.5d) {
                t.this.f14839v = 6;
            } else if (t.this.f14837t >= 67.5d && t.this.f14837t <= 112.5d) {
                t.this.f14839v = 0;
            } else if (t.this.f14837t > 112.5d && t.this.f14837t < 157.5d) {
                t.this.f14839v = 4;
            } else if (t.this.f14837t >= 157.5d && t.this.f14837t <= 202.5d) {
                t.this.f14839v = 1;
            } else if (t.this.f14837t > 202.5d && t.this.f14837t < 247.5d) {
                t.this.f14839v = 5;
            } else if (t.this.f14837t >= 247.5d && t.this.f14837t <= 292.5d) {
                t.this.f14839v = 2;
            } else if (t.this.f14837t <= 292.5d || t.this.f14837t >= 337.5d) {
                t.this.f14839v = 0;
            } else {
                t.this.f14839v = 7;
            }
            if (t.this.f14836s == t.this.f14835r && t.this.f14839v == t.this.f14838u) {
                return;
            }
            if (u0.b.X1 > 2) {
                if ((t.this.f14836s & 32768) != 0) {
                    t tVar2 = t.this;
                    tVar2.f14836s = (65536 - tVar2.f14836s) & 65535;
                    if (t.this.f14836s > 100) {
                        t tVar3 = t.this;
                        tVar3.f14836s = 32768 | tVar3.f14836s;
                    }
                }
                z.k.s(227, 5, -28, 0, 0, (t.this.f14836s >> 8) & 255, t.this.f14836s & 255, t.this.f14839v);
                qt.y0(115, t.this.f14836s);
            }
            t tVar4 = t.this;
            tVar4.f14835r = tVar4.f14836s;
            t tVar5 = t.this;
            tVar5.f14838u = tVar5.f14839v;
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (t.this.f14841x > 100) {
                    t.C3(t.this);
                    if (t.this.f14843z == t.this.f14841x / 100) {
                        t.this.f14843z = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = t.E = t.F[0];
                } else {
                    int unused2 = t.E = t.F[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (t.this.f7886a.f8307b != 1 || t.D == t.E) {
                    return;
                }
                t.this.L3();
            }
        }
    }

    public static class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14851a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14852b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14853c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14854d;

        public h(int i2, int i3) {
            this.f14851a = i2;
            this.f14854d = i3;
        }

        public synchronized void a(int i2) {
            this.f14852b = i2;
            if (!this.f14853c) {
                this.f14853c = true;
                o1.k.a().postDelayed(this, this.f14854d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 2, 173, this.f14851a, this.f14852b);
            this.f14853c = false;
        }
    }

    public static /* synthetic */ int C3(t tVar) {
        int i2 = tVar.f14843z;
        tVar.f14843z = i2 + 1;
        return i2;
    }

    public static void H3(int i2, int i3) {
        h hVarC = G.c(i2);
        if (hVarC != null) {
            hVarC.a(i3);
        }
    }

    public static void b3() {
        int[] iArr = new int[34];
        int i2 = 0;
        for (int i3 = 0; i3 < 34; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 32;
        iArr[1] = 145;
        iArr[2] = (u0.b.f17306a0 << 7) & 128;
        iArr[3] = c3();
        if (u0.b.D == 1) {
            int i4 = w0.d.f17796h;
            if (i4 - 65536 == 0 || 1 == i4 - 65536 || 2 == i4 - 65536) {
                int i5 = w0.d.f17798j & 255;
                iArr[4] = (i5 / 10) + 48;
                iArr[5] = (i5 % 10) + 48;
                int i6 = w0.d.f17797i;
                iArr[7] = ((i6 % 100000) / 10000) + 48;
                iArr[8] = ((i6 % 10000) / 1000) + 48;
                iArr[9] = ((i6 % 1000) / 100) + 48;
                iArr[10] = 46;
                iArr[11] = ((i6 % 100) / 10) + 48;
            } else {
                int i7 = w0.d.f17798j;
                iArr[4] = (i7 / 10) + 48;
                iArr[5] = (i7 % 10) + 48;
                int i8 = w0.d.f17797i;
                iArr[7] = ((i8 % 10000) / 1000) + 48;
                iArr[8] = ((i8 % 1000) / 100) + 48;
                iArr[9] = ((i8 % 100) / 10) + 48;
                iArr[10] = (i8 % 10) + 48;
            }
        }
        int[] iArr2 = new int[35];
        iArr2[0] = 227;
        while (i2 < 34) {
            int i9 = i2 + 1;
            iArr2[i9] = (byte) iArr[i2];
            i2 = i9;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:30:0x0045  */
    /* JADX WARN: Code duplicated, block: B:6:0x000e  */
    public static int c3() {
        int i2 = 2;
        switch (u0.b.D) {
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0) {
                    i2 = 1;
                } else if (1 != i3 - 65536) {
                    if (2 == i3 - 65536) {
                        i2 = 3;
                    } else if (i3 + 0 == 0) {
                        i2 = 4;
                    } else if (1 != i3 - 0) {
                        i2 = 0;
                    } else {
                        i2 = 5;
                    }
                }
                break;
            case 2:
                i2 = 10;
                break;
            case 3:
                i2 = 133;
                break;
            case 4:
                if (o0.e.H != 1) {
                    i2 = 13;
                } else {
                    i2 = 6;
                }
                break;
            case 5:
            case 13:
                i2 = 12;
                break;
            case 6:
                i2 = 8;
                break;
            case 7:
                i2 = 11;
                break;
            case 8:
            case 10:
                i2 = 13;
                break;
            case 9:
            case 11:
            default:
                i2 = 0;
                break;
            case 12:
                i2 = 254;
                break;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x004b  */
    public static int d3() {
        int i2 = u0.b.D;
        int i3 = 3;
        if (i2 != 13) {
            switch (i2) {
                case 0:
                    i3 = 9;
                    break;
                case 1:
                    int i4 = w0.d.f17796h;
                    if (i4 - 65536 == 0) {
                        i3 = 1;
                    } else if (1 == i4 - 65536) {
                        i3 = 2;
                    } else if (2 != i4 - 65536) {
                        if (i4 + 0 != 0) {
                            i3 = 1 != i4 - 0 ? 0 : 5;
                        } else {
                            i3 = 4;
                        }
                    }
                    break;
                case 2:
                case 3:
                    i3 = 10;
                    break;
                case 4:
                    int i5 = o0.e.H;
                    if (i5 != 1) {
                        i3 = (i5 != 2 && i5 != 3) ? 0 : 13;
                    } else {
                        i3 = 7;
                    }
                    break;
                case 5:
                    i3 = 12;
                    break;
                case 6:
                    i3 = 8;
                    break;
                case 7:
                    i3 = 11;
                    break;
                case 8:
                case 9:
                case 10:
                    i3 = 13;
                    break;
                default:
                    i3 = 0;
                    break;
            }
        } else {
            i3 = 12;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        if (u0.b.f17320f == 0) {
            return 0;
        }
        return i3;
    }

    public static int e3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 8;
        }
        return 4;
    }

    public static int f3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 8;
        }
        return 6;
    }

    public static int g3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 2;
        }
        if (i2 == 3) {
            return 4;
        }
        if (i2 != 4) {
            return i2 != 5 ? 15 : 8;
        }
        return 6;
    }

    public static int h3(int i2) {
        switch (i2) {
            case 1:
                return 0;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 6;
            case 5:
                return 7;
            case 6:
                return 9;
            default:
                return 15;
        }
    }

    public static int i3(int i2) {
        switch (i2) {
            case 1:
                return 0;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 9;
            default:
                return 15;
        }
    }

    public static int j3(int i2) {
        if (i2 < 1 || i2 > 10) {
            return 10;
        }
        return i2 - 1;
    }

    public static /* synthetic */ float s3(t tVar, float f2) {
        float f3 = tVar.f14837t % f2;
        tVar.f14837t = f3;
        return f3;
    }

    public void G3(int i2, int i3) {
        z.k.s(-29, 2, 108, (byte) i2, (byte) i3);
    }

    public final void I3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }

    public final void J3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void K3(int i2) {
        z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, i2, 1);
        a.i.a0(100L);
        z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, i2, 0);
    }

    public final synchronized void L3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = 0;
        int i3 = D;
        int i4 = E;
        if (i3 <= i4) {
            i2 = i4 - i3;
            if (i2 >= 5) {
                i2 = 5;
            }
        } else if (i3 > i4) {
            int i5 = i3 - i4;
            i2 = i5 >= 5 ? 251 : (255 - i5) + 1;
        }
        H3(1, i2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        int i2 = nt.f8637c;
        if (i2 == 20 || i2 == 26) {
            y0.f.C0 = 30;
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
                k3(13);
                return;
            } else {
                k3(14);
                return;
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                k3(15);
                return;
            } else {
                k3(16);
                return;
            }
        }
        if (i2 == 55) {
            if (iArr[1] <= 16) {
                z.k.s(227, 2, 61, 37, 254);
                return;
            } else if (iArr[1] >= 32) {
                z.k.s(227, 2, 61, 37, 255);
                return;
            } else {
                z.k.s(227, 2, 61, 37, iArr[1] * 2);
                return;
            }
        }
        if (i2 == 56) {
            if (iArr[1] <= 16) {
                z.k.s(227, 2, 61, 38, 254);
                return;
            } else if (iArr[1] >= 32) {
                z.k.s(227, 2, 61, 38, 255);
                return;
            } else {
                z.k.s(227, 2, 61, 38, iArr[1] * 2);
                return;
            }
        }
        if (i2 == 67) {
            int i3 = iArr[1];
            if (i3 == 2) {
                z.k.s(227, 2, -3, 3, 4);
                return;
            }
            if (i3 == 3) {
                z.k.s(227, 2, -3, 3, 5);
                return;
            } else if (i3 == 4) {
                z.k.s(227, 2, -3, 3, 6);
                return;
            } else {
                if (i3 != 5) {
                    return;
                }
                z.k.s(227, 2, -3, 3, 7);
                return;
            }
        }
        if (i2 != 68) {
            switch (i2) {
                case 33:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[10] == 1) {
                            k3(1);
                        }
                    } else if (nt.f8645g[10] == 0) {
                        k3(11);
                    }
                    break;
                case 34:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[11] == 1) {
                            k3(2);
                        }
                    } else if (nt.f8645g[11] == 0) {
                        k3(2);
                    }
                    break;
                case 35:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[13] == 1) {
                            k3(4);
                        }
                    } else if (nt.f8645g[13] == 0) {
                        k3(4);
                    }
                    break;
                case 36:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[65] == 1) {
                            k3(5);
                        }
                    } else if (nt.f8645g[65] == 0) {
                        k3(5);
                    }
                    break;
                case 37:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[16] == 1) {
                            k3(6);
                        }
                    } else if (nt.f8645g[16] == 0) {
                        k3(6);
                    }
                    break;
                case 38:
                    if (iArr[1] == 1) {
                        if (nt.f8645g[12] == 1) {
                            k3(7);
                        }
                        break;
                    } else if (iArr[1] == 0 && nt.f8645g[12] == 0) {
                        k3(7);
                        break;
                    }
                    break;
                case 39:
                    if (iArr[1] == -1) {
                        k3(11);
                    } else if (iArr[1] != -2) {
                        z.k.s(227, 2, 61, 39, iArr[1]);
                    } else {
                        k3(12);
                    }
                    break;
                default:
                    switch (i2) {
                        case 59:
                            if (iArr[1] != 0) {
                                k3(21);
                            }
                            break;
                        case 60:
                            if (iArr[1] != 0) {
                                if (iArr[1] == 0) {
                                    if (nt.f8645g[58] == 1) {
                                        k3(78);
                                    }
                                } else if (nt.f8645g[58] == 0) {
                                    k3(78);
                                }
                            }
                            break;
                        case 61:
                            if (iArr[1] != 0) {
                                z.k.s(227, 2, 61, 37, 255);
                                z.k.s(227, 2, 61, 38, 255);
                                z.k.s(227, 2, 61, 39, 7);
                            }
                            break;
                    }
                    break;
            }
            return;
        }
        int i4 = nt.f8633a;
        if (i4 != 2163008 && i4 != 2490688 && i4 != 2883904 && i4 != 2949440 && i4 != 3014976 && i4 != 3080512) {
            if (iArr[1] == 1) {
                z.k.s(227, 4, 109, 2, 0, 255, 255);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, 4, 109, 2, 1, 255, 255);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, 4, 109, 3, 0, 255, 255);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, 4, 109, 3, 1, 255, 255);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, 4, 109, 4, 0, 255, 255);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, 4, 109, 4, 1, 255, 255);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, 4, 109, 5, 0, 255, 255);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, 4, 109, 5, 1, 255, 255);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, 4, 109, 21, 0, 255, 255);
                return;
            }
            if (iArr[1] == 10) {
                z.k.s(227, 4, 109, 21, 1, 255, 255);
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, 4, 109, 6, 0, 255, 255);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, 4, 109, 6, 1, 255, 255);
                    return;
                }
                return;
            }
        }
        if (iArr[1] == 1) {
            z.k.s(227, 4, 111, 16, 0, 255, 255);
            return;
        }
        if (iArr[1] == 2) {
            z.k.s(227, 4, 111, 16, 1, 255, 255);
            return;
        }
        if (iArr[1] == 3) {
            z.k.s(227, 4, 111, 17, 0, 255, 255);
            return;
        }
        if (iArr[1] == 4) {
            z.k.s(227, 4, 111, 17, 1, 255, 255);
            return;
        }
        if (iArr[1] == 5) {
            z.k.s(227, 4, 111, 18, 0, 255, 255);
            return;
        }
        if (iArr[1] == 6) {
            z.k.s(227, 4, 111, 18, 1, 255, 255);
            return;
        }
        if (iArr[1] == 7) {
            z.k.s(227, 4, 111, 19, 0, 255, 255);
            return;
        }
        if (iArr[1] == 8) {
            z.k.s(227, 4, 111, 19, 1, 255, 255);
            return;
        }
        if (iArr[1] == 9) {
            z.k.s(227, 4, 111, 20, 0, 255, 255);
            return;
        }
        if (iArr[1] == 10) {
            z.k.s(227, 4, 111, 20, 1, 255, 255);
            return;
        }
        if (iArr[1] == 11) {
            z.k.s(227, 4, 111, 16, 0, 255, 255);
            z.k.s(227, 4, 111, 17, 0, 255, 255);
            z.k.s(227, 4, 111, 18, 0, 255, 255);
            z.k.s(227, 4, 111, 19, 0, 255, 255);
            z.k.s(227, 4, 111, 20, 0, 255, 255);
            return;
        }
        if (iArr[1] == 12) {
            z.k.s(227, 4, 111, 16, 1, 255, 255);
            z.k.s(227, 4, 111, 17, 1, 255, 255);
            z.k.s(227, 4, 111, 18, 1, 255, 255);
            z.k.s(227, 4, 111, 19, 1, 255, 255);
            z.k.s(227, 4, 111, 20, 1, 255, 255);
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f14829l, 1);
        w0.e.f17815a.a(this.f14834q, 1);
        w0.e.f17819e.a(this.f14834q, 1);
        u0.c.f17374a.a(this.f14834q, 1);
        mt mtVar = this.f7886a;
        mtVar.f8312g = 0;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8320o = 1;
        mtVar.f8307b = 0;
        mtVar.f8312g = 1;
        mtVar.f8317l = 0;
        qt.z(this.f14827j);
        switch (nt.f8637c) {
            case 2:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 16:
            case 18:
            case 21:
            case 22:
            case 23:
            case 29:
            case 30:
            case 31:
            case 32:
            case 34:
            case 35:
            case 36:
            case 37:
            case 39:
            case 40:
                this.f7886a.f8314i = 1;
                break;
            case 3:
            case 4:
            case 8:
            case 17:
            case 19:
            case 27:
            case 28:
            case 41:
            case 42:
            case 43:
            default:
                this.f7886a.f8314i = 0;
                break;
            case 5:
            case 6:
            case 7:
            case 24:
            case 25:
            case 26:
                mt mtVar2 = this.f7886a;
                mtVar2.f8322q = 1;
                mtVar2.f8314i = 1;
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    this.f7886a.f8314i = 0;
                }
                o1.h.f16865a.a(this.f14840w, 1);
                o1.h.f16867c.a(this.f14840w, 1);
                break;
            case 13:
                mt mtVar3 = this.f7886a;
                mtVar3.f8306a = null;
                mtVar3.f8314i = 1;
                break;
            case 20:
                this.f7886a.f8307b = 1;
                init();
                l0.b0.a(this.f14842y);
                I3();
                break;
            case 33:
            case 38:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
                mt mtVar4 = this.f7886a;
                mtVar4.f8314i = 1;
                mtVar4.f8317l = 1;
                mtVar4.f8313h = 2;
                y0.g.f18094d.a(this.f14833p, 1);
                y0.g.f18095e.a(this.f14833p, 1);
                break;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 59, 60, 61, 55, 56};
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:106:0x062c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:107:0x062e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:108:0x0630  */
    /* JADX WARN: Code duplicated, block: B:110:0x0633  */
    /* JADX WARN: Code duplicated, block: B:112:0x0637  */
    /* JADX WARN: Code duplicated, block: B:113:0x063a  */
    /* JADX WARN: Code duplicated, block: B:115:0x063e  */
    /* JADX WARN: Code duplicated, block: B:116:0x0642  */
    /* JADX WARN: Code duplicated, block: B:119:0x0672  */
    /* JADX WARN: Code duplicated, block: B:120:0x067c  */
    /* JADX WARN: Code duplicated, block: B:123:0x0686  */
    /* JADX WARN: Code duplicated, block: B:124:0x0691  */
    /* JADX WARN: Code duplicated, block: B:126:0x0695  */
    /* JADX WARN: Code duplicated, block: B:127:0x069e  */
    /* JADX WARN: Code duplicated, block: B:130:0x06ac  */
    /* JADX WARN: Code duplicated, block: B:131:0x06b7  */
    /* JADX WARN: Code duplicated, block: B:133:0x06bb  */
    /* JADX WARN: Code duplicated, block: B:134:0x06c4  */
    /* JADX WARN: Code duplicated, block: B:137:0x06d3  */
    /* JADX WARN: Code duplicated, block: B:138:0x06d8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:139:0x06da  */
    /* JADX WARN: Code duplicated, block: B:140:0x06df  */
    /* JADX WARN: Code duplicated, block: B:178:0x0832  */
    /* JADX WARN: Code duplicated, block: B:179:0x083c  */
    /* JADX WARN: Code duplicated, block: B:182:0x0846  */
    /* JADX WARN: Code duplicated, block: B:183:0x0851  */
    /* JADX WARN: Code duplicated, block: B:185:0x0855  */
    /* JADX WARN: Code duplicated, block: B:186:0x085e  */
    /* JADX WARN: Code duplicated, block: B:189:0x086c  */
    /* JADX WARN: Code duplicated, block: B:190:0x0877  */
    /* JADX WARN: Code duplicated, block: B:192:0x087b  */
    /* JADX WARN: Code duplicated, block: B:193:0x0884  */
    /* JADX WARN: Code duplicated, block: B:196:0x0890  */
    /* JADX WARN: Code duplicated, block: B:198:0x0893  */
    /* JADX WARN: Code duplicated, block: B:200:0x0896  */
    /* JADX WARN: Code duplicated, block: B:202:0x0899  */
    /* JADX WARN: Code duplicated, block: B:203:0x089b  */
    /* JADX WARN: Code duplicated, block: B:204:0x089d  */
    /* JADX WARN: Code duplicated, block: B:208:0x08c0  */
    /* JADX WARN: Code duplicated, block: B:209:0x08cc  */
    /* JADX WARN: Code duplicated, block: B:211:0x08d0  */
    /* JADX WARN: Code duplicated, block: B:212:0x08dc  */
    /* JADX WARN: Failed to find 'out' block for switch in B:161:0x07e8. Please report as an issue. */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        boolean z2;
        int i4;
        int i5;
        int[][] iArr;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int[][] iArr2;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        char c2;
        int i22;
        int i23;
        int i24;
        int i25;
        char c3;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        byte b2 = bArr[i2 + 1];
        if (b2 == -112) {
            int i36 = i2 + 3;
            if (B != (bArr[i36] & 255)) {
                int i37 = bArr[i36] & 255;
                B = i37;
                if (i37 == 1) {
                    if (!o1.u.S(a.b.Q)) {
                        o1.u.z();
                    }
                } else if (i37 == 0 && o1.u.S(a.b.Q)) {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                }
            }
            int i38 = i2 + 4;
            if (C != (bArr[i38] & 255)) {
                int i39 = bArr[i38] & 255;
                C = i39;
                y0.h.t0(i39);
                return;
            }
            return;
        }
        if (b2 == -90) {
            int i40 = i2 + 2;
            qt.y0(142, bArr[i40] & 255);
            qt.y0(143, bArr[i2 + 3] & 255);
            qt.y0(144, bArr[i2 + 4] & 255);
            qt.y0(145, bArr[i2 + 5] & 255);
            qt.y0(146, bArr[i2 + 6] & 255);
            qt.y0(147, bArr[i2 + 7] & 255);
            int i41 = i2 + 8;
            qt.y0(148, (bArr[i41] >> 2) & 3);
            qt.y0(149, (bArr[i41] >> 0) & 3);
            if (nt.a()) {
                D = o0.a(bArr[i40] & 255, 0, 38);
                return;
            }
            return;
        }
        if (b2 == -24) {
            int i42 = nt.f8637c;
            if (i42 == 3 || i42 == 0 || i42 == 2) {
                return;
            }
            int i43 = bArr[i2 + 4] & 255;
            int i44 = i2 + 5;
            int i45 = bArr[i44] & 255;
            int i46 = nt.f8633a;
            if (i46 != 2163008 && i46 != 2490688 && i46 != 2883904 && i46 != 2949440 && i46 != 3014976 && i46 != 3080512) {
                if (qt.k0()) {
                    if (A != i43) {
                        A = i43;
                        if (i43 == 1) {
                            c.e.d().c(591);
                            return;
                        } else {
                            c.e.d().c(614);
                            return;
                        }
                    }
                    return;
                }
                if (i45 != 0) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
                if (i43 != 0) {
                    if (o1.u.T(a.b.O)) {
                        return;
                    }
                    qt.t();
                    return;
                } else {
                    if (o1.u.T(a.b.O)) {
                        qt.f();
                        return;
                    }
                    return;
                }
            }
            if (A != (bArr[i44] & 255)) {
                A = bArr[i44] & 255;
                if (u0.b.f17357r0 == 0) {
                    int i47 = A;
                    if (i47 == 1) {
                        if (o1.u.a0()) {
                            i4 = 0;
                        } else {
                            i4 = 0;
                            qt.y0(192, 1);
                            SystemProperties.set("persist.lesc.video.ignore", "true");
                            a.i.a0(200L);
                            this.f14831n = true;
                            o1.u.z();
                        }
                        u0.d.C2(i4);
                        float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                        this.f14832o = y0.f.f18037c;
                        y0.h.t0((int) f2);
                        return;
                    }
                    if (i47 == 0) {
                        y0.h.t0(this.f14832o);
                        if (this.f14831n && o1.u.a0()) {
                            a.i.a0(100L);
                            z2 = false;
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                            a.i.a0(350L);
                            SystemProperties.set("persist.lesc.video.ignore", "false");
                            qt.y0(192, 0);
                        } else {
                            z2 = false;
                        }
                        this.f14831n = z2;
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 24) {
            int i48 = i2 + 3;
            l0.c0.c((bArr[i48] >> 7) & 1, (bArr[i48] >> 6) & 1, (bArr[i48] >> 3) & 1);
            return;
        }
        if (b2 == 26) {
            int i49 = i2 + 4;
            l0.c0.c((bArr[i49] >> 0) & 1, (bArr[i49] >> 1) & 1, (bArr[i49] >> 2) & 1);
            return;
        }
        if (b2 == 65) {
            int i50 = nt.f8637c;
            if (i50 == 5 || i50 == 6 || i50 == 7 || i50 == 24 || i50 == 25 || i50 == 26) {
                u0.d.R2(f3(bArr[i2 + 2] & 255));
                u0.d.S2(j3(bArr[i2 + 3] & 255));
                u0.d.T2(j3(bArr[i2 + 4] & 255));
                u0.d.U2(f3(bArr[i2 + 5] & 255));
                u0.d.D2(f3(bArr[i2 + 6] & 255));
                u0.d.E2(i3(bArr[i2 + 7] & 255));
                u0.d.F2(i3(bArr[i2 + 8] & 255));
                u0.d.G2(f3(bArr[i2 + 9] & 255));
            } else if (i50 == 33 || i50 == 38 || i50 == 44 || i50 == 45 || i50 == 46 || i50 == 47 || i50 == 48) {
                u0.d.R2(e3(bArr[i2 + 2] & 255));
                u0.d.S2(h3(bArr[i2 + 3] & 255));
                u0.d.T2(h3(bArr[i2 + 4] & 255));
                u0.d.U2(e3(bArr[i2 + 5] & 255));
                u0.d.D2(e3(bArr[i2 + 6] & 255));
                u0.d.E2(h3(bArr[i2 + 7] & 255));
                u0.d.F2(h3(bArr[i2 + 8] & 255));
                u0.d.G2(e3(bArr[i2 + 9] & 255));
            } else {
                u0.d.R2(e3(bArr[i2 + 2] & 255));
                u0.d.S2(i3(bArr[i2 + 3] & 255));
                u0.d.T2(i3(bArr[i2 + 4] & 255));
                u0.d.U2(e3(bArr[i2 + 5] & 255));
                u0.d.D2(e3(bArr[i2 + 6] & 255));
                u0.d.E2(g3(bArr[i2 + 7] & 255));
                u0.d.F2(g3(bArr[i2 + 8] & 255));
                u0.d.G2(e3(bArr[i2 + 9] & 255));
            }
            int i51 = nt.f8637c;
            if (i51 == 14 || i51 == 18) {
                if (bArr[i2 + 12] == 1) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            if (i51 == 5 || i51 == 6 || i51 == 7 || i51 == 24 || i51 == 25 || i51 == 26) {
                if ((bArr[i2 + 6] & 255) <= 4) {
                    i5 = 4;
                } else if ((bArr[i2 + 7] & 255) <= 7 || (bArr[i2 + 8] & 255) <= 7) {
                    i5 = 4;
                } else {
                    i5 = 4;
                    if ((bArr[i2 + 9] & 255) > 4) {
                        u0.d.C2(0);
                        return;
                    }
                }
                if (u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = i5;
                    l0.b0.b(l0.c0.f13018l);
                    return;
                }
                return;
            }
            if (i51 == 33 || i51 == 38 || i51 == 44 || i51 == 45 || i51 == 46 || i51 == 47 || i51 == 48) {
                if ((bArr[i2 + 6] & 255) == 255 && (bArr[i2 + 7] & 255) == 255 && (bArr[i2 + 8] & 255) == 255 && (bArr[i2 + 9] & 255) == 255) {
                    u0.d.C2(0);
                    return;
                } else {
                    if (u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                        return;
                    }
                    return;
                }
            }
            if (bArr[i2 + 6] == 0 && bArr[i2 + 7] == 0 && bArr[i2 + 8] == 0 && bArr[i2 + 9] == 0) {
                u0.d.C2(0);
                return;
            } else {
                if (u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                    return;
                }
                return;
            }
        }
        if (b2 == 94) {
            qt.y0(196, bArr[i2 + 4] & 255);
            qt.y0(197, bArr[i2 + 5] & 255);
            return;
        }
        if (b2 == 17) {
            byte b3 = bArr[i2 + 4];
            byte b4 = bArr[i2 + 5];
            this.f14820c = b3 & 255;
            int i52 = 0;
            while (true) {
                iArr = this.f14823f;
                if (i52 >= iArr.length) {
                    break;
                }
                int i53 = this.f14820c;
                if (i53 == iArr[i52][0]) {
                    if (i53 == 0) {
                        break;
                    }
                    this.f14819b = i52;
                    break;
                }
                i52++;
            }
            int i54 = this.f14820c;
            if (i54 != 5) {
                if (i54 != 6) {
                    if (i54 != 31) {
                        int i55 = b4 & 255;
                        if (i55 == 1) {
                            if (i52 < iArr.length) {
                                l0.b0.l0(iArr[i52][1], 0);
                            }
                        } else if (i55 == 0) {
                            int i56 = this.f14819b;
                            if (i56 < iArr.length && i56 != 255) {
                                l0.b0.l0(iArr[i56][1], 1);
                            }
                            this.f14819b = 255;
                        }
                    } else if ((b4 & 255) == 1) {
                        int i57 = nt.f8633a;
                        if (i57 == 2163008 || i57 == 2490688 || i57 == 2883904 || i57 == 2949440 || i57 == 3014976) {
                            i7 = 0;
                            i8 = 1;
                            i9 = 18;
                        } else if (i57 == 3080512) {
                            i9 = 18;
                            i7 = 0;
                            i8 = 1;
                        } else {
                            l0.b0.l0(53, 0);
                            l0.b0.l0(53, 1);
                        }
                        l0.b0.l0(i9, i7);
                        l0.b0.l0(i9, i8);
                    }
                } else if ((b4 & 255) == 1) {
                    int i58 = nt.f8633a;
                    if (i58 == 655680 || i58 == 786752 || i58 == 2752832 || i58 == 2818368 || i58 == 1245504 || i58 == 1311040 || i58 == 2163008 || i58 == 2490688 || i58 == 2883904 || i58 == 2949440 || i58 == 3014976 || i58 == 3080512) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else if (i58 == 1114432) {
                        l0.b0.l0(13, 0);
                        l0.b0.l0(13, 1);
                    } else if (i58 == 1900864 || i58 == 1966400) {
                        int i59 = h0.c.E;
                        if (i59 == 3 || i59 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                    } else if (h0.c.E == 4 || u0.i.l3().r3()) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    } else {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    }
                }
            } else if ((b4 & 255) == 1) {
                int i60 = nt.f8633a;
                if (i60 == 655680 || i60 == 786752 || i60 == 2752832 || i60 == 2818368 || i60 == 1245504 || i60 == 1311040 || i60 == 1114432 || i60 == 2163008 || i60 == 2490688 || i60 == 2883904 || i60 == 2949440 || i60 == 3014976 || i60 == 3080512 || h0.c.E == 4) {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                } else {
                    l0.b0.l0(13, 0);
                    l0.b0.l0(13, 1);
                }
            }
            int i61 = nt.f8633a;
            if (i61 == 328000 || i61 == 393536 || i61 == 459072 || i61 == 1573184 || i61 == 1638720 || i61 == 1704256 || i61 == 2163008 || i61 == 2490688 || i61 == 2883904 || i61 == 2949440 || i61 == 3014976 || i61 == 3080512) {
                i6 = 1;
                qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            } else {
                i6 = 1;
                qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 5500);
            }
            int[] iArr3 = new int[i6];
            iArr3[0] = (bArr[i2 + 9] & 255) | ((bArr[i2 + 8] << 8) & 65280);
            qt.y0(156, iArr3);
            return;
        }
        if (b2 == 18) {
            int i62 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                i10 = 1;
                qt.y0(1, (i62 >> 6) & 1);
                qt.y0(2, (i62 >> 7) & 1);
            } else {
                i10 = 1;
                qt.y0(1, (i62 >> 7) & 1);
                qt.y0(2, (i62 >> 6) & 1);
            }
            int[] iArr4 = new int[i10];
            iArr4[0] = (i62 >> 5) & i10;
            qt.y0(3, iArr4);
            int[] iArr5 = new int[i10];
            iArr5[0] = (i62 >> 4) & i10;
            qt.y0(4, iArr5);
            int[] iArr6 = new int[i10];
            iArr6[0] = (i62 >> 3) & i10;
            qt.y0(5, iArr6);
            int[] iArr7 = new int[i10];
            iArr7[0] = (i62 >> 2) & i10;
            qt.y0(0, iArr7);
            return;
        }
        if (b2 == 33) {
            this.f14821d = (bArr[i2 + 2] & 255) | 128;
            byte b5 = bArr[i2 + 3];
            int i63 = 0;
            while (true) {
                iArr2 = this.f14823f;
                if (i63 >= iArr2.length) {
                    break;
                }
                int i64 = this.f14821d;
                if (i64 == iArr2[i63][0]) {
                    if (i64 == 0) {
                        break;
                    }
                    this.f14822e = i63;
                    break;
                }
                i63++;
            }
            int i65 = b5 & 255;
            if (i65 == 1) {
                if (i63 < iArr2.length) {
                    l0.b0.l0(iArr2[i63][1], 0);
                    return;
                }
                return;
            } else {
                if (i65 == 0) {
                    int i66 = this.f14822e;
                    if (i66 < iArr2.length) {
                        i11 = 255;
                        if (i66 != 255) {
                            l0.b0.l0(iArr2[i66][1], 1);
                        }
                    } else {
                        i11 = 255;
                    }
                    this.f14822e = i11;
                    return;
                }
                return;
            }
        }
        if (b2 == 34) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            if (b6 != 1) {
                if (b6 == 2 && b7 != (i12 = this.f14825h)) {
                    if (b7 > i12) {
                        for (int i67 = 0; i67 < b7 - this.f14825h; i67++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b7 < i12) {
                        for (int i68 = 0; i68 < this.f14825h - b7; i68++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f14825h = b7;
                    return;
                }
                return;
            }
            int i69 = this.f14824g;
            if (b7 != i69) {
                if (b7 > i69) {
                    for (int i70 = 0; i70 < b7 - this.f14824g; i70++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else {
                    int i71 = 0;
                    if (b7 < i69) {
                        int i72 = 0;
                        while (i72 < this.f14824g - b7) {
                            l0.b0.l0(8, i71);
                            i72++;
                            i71 = 0;
                        }
                        l0.b0.l0(8, 1);
                    }
                }
                this.f14824g = b7;
                return;
            }
            return;
        }
        if (b2 != 49) {
            if (b2 == 50) {
                int i73 = i2 + 4;
                int i74 = i2 + 5;
                qt.y0(106, ((bArr[i73] << 8) & 65280) | (bArr[i74] & 255));
                qt.y0(1032, ((bArr[i73] << 8) & 65280) | (bArr[i74] & 255));
                qt.y0(105, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(99, bArr[i2 + 8] & 255);
                qt.y0(110, bArr[i2 + 9] & 255);
                qt.y0(100, bArr[i2 + 11] & 255);
                qt.y0(101, bArr[i2 + 14] & 255);
                qt.y0(111, bArr[i2 + 12] & 255);
                qt.y0(113, bArr[i2 + 13] & 255);
                qt.y0(112, bArr[i2 + 15] & 255);
                return;
            }
            if (b2 == 97) {
                int i75 = i2 + 2;
                qt.y0(194, (bArr[i75] >> 1) & 1);
                qt.y0(193, (bArr[i75] >> 0) & 1);
                qt.y0(195, (bArr[i2 + 3] >> 0) & 255);
                return;
            }
            if (b2 == 98) {
                int i76 = i2 + 4;
                qt.y0(157, (bArr[i76] >> 6) & 3);
                qt.y0(158, (bArr[i76] >> 4) & 3);
                qt.y0(159, (bArr[i76] >> 1) & 7);
                if (this.f14826i != ((bArr[i76] >> 0) & 1)) {
                    int i77 = (bArr[i76] >> 0) & 1;
                    this.f14826i = i77;
                    if (i77 == 1) {
                        if (!qt.i0().equals("com.syu.carinfo.havah6.WC_0320_HavalH9SeatSetAct")) {
                            Intent intent = new Intent();
                            intent.setClassName("com.syu.canbus", "com.syu.carinfo.havah6.WC_0320_HavalH9SeatSetAct");
                            intent.addCategory(Intent.CATEGORY_DEFAULT);
                            intent.setFlags(268435456);
                            App.c().startActivity(intent);
                        } else if (qt.i0().equals("com.syu.carinfo.havah6.WC_0320_HavalH9SeatSetAct")) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                    }
                }
                int i78 = i2 + 5;
                qt.y0(160, (bArr[i78] >> 6) & 3);
                qt.y0(161, (bArr[i78] >> 4) & 3);
                qt.y0(162, (bArr[i78] >> 1) & 7);
                int i79 = i2 + 6;
                qt.y0(163, (bArr[i79] >> 6) & 3);
                qt.y0(164, (bArr[i79] >> 4) & 3);
                qt.y0(165, (bArr[i79] >> 2) & 3);
                qt.y0(166, (bArr[i79] >> 1) & 1);
                qt.y0(167, (bArr[i79] >> 0) & 1);
                int i80 = i2 + 7;
                qt.y0(168, (bArr[i80] >> 7) & 1);
                qt.y0(169, (bArr[i80] >> 5) & 3);
                qt.y0(170, (bArr[i80] >> 4) & 1);
                qt.y0(171, (bArr[i80] >> 3) & 1);
                qt.y0(172, (bArr[i80] >> 2) & 1);
                int i81 = i2 + 8;
                qt.y0(173, (bArr[i81] >> 7) & 1);
                qt.y0(174, (bArr[i81] >> 6) & 1);
                qt.y0(175, (bArr[i81] >> 5) & 1);
                return;
            }
            if (b2 == 103) {
                byte b8 = bArr[i2 + 3];
                int i82 = i2 + 2;
                qt.y0(176, (bArr[i82] >> 6) & 3);
                qt.y0(177, (bArr[i82] >> 5) & 1);
                qt.y0(181, (bArr[i82] >> 0) & 3);
                qt.y0(102, (b8 >> 5) & 7);
                qt.y0(103, (b8 >> 2) & 7);
                qt.y0(104, b8 & 3);
                return;
            }
            if (b2 != 104) {
                return;
            }
            byte b9 = bArr[i2 + 2];
            qt.y0(150, (b9 >> 7) & 1);
            qt.y0(151, (b9 >> 6) & 1);
            qt.y0(152, (b9 >> 5) & 1);
            qt.y0(130, (b9 >> 4) & 1);
            qt.y0(131, (b9 >> 3) & 1);
            qt.y0(132, (b9 >> 2) & 1);
            qt.y0(107, (b9 >> 1) & 1);
            qt.y0(108, (b9 >> 0) & 1);
            int i83 = i2 + 3;
            qt.y0(133, (bArr[i83] >> 7) & 1);
            qt.y0(134, (bArr[i83] >> 6) & 1);
            qt.y0(135, (bArr[i83] >> 4) & 3);
            qt.y0(136, (bArr[i83] >> 3) & 1);
            qt.y0(137, (bArr[i83] >> 2) & 1);
            qt.y0(138, (bArr[i83] >> 1) & 1);
            qt.y0(153, (bArr[i83] >> 0) & 1);
            int i84 = i2 + 4;
            qt.y0(139, (bArr[i84] >> 0) & 3);
            qt.y0(182, (bArr[i84] >> 2) & 1);
            qt.y0(190, (bArr[i84] >> 4) & 15);
            int i85 = i2 + 5;
            qt.y0(189, (bArr[i85] >> 5) & 1);
            qt.y0(154, (bArr[i85] >> 4) & 1);
            qt.y0(155, (bArr[i85] >> 2) & 3);
            qt.y0(140, (bArr[i85] >> 1) & 1);
            qt.y0(141, (bArr[i85] >> 0) & 1);
            int i86 = i2 + 6;
            qt.y0(191, (bArr[i86] >> 7) & 1);
            qt.y0(183, (bArr[i86] >> 6) & 1);
            qt.y0(178, (bArr[i86] >> 4) & 3);
            qt.y0(179, (bArr[i86] >> 3) & 1);
            qt.y0(180, (bArr[i86] >> 0) & 7);
            int i87 = i2 + 7;
            qt.y0(184, (bArr[i87] >> 5) & 7);
            qt.y0(185, (bArr[i87] >> 4) & 1);
            qt.y0(186, (bArr[i87] >> 3) & 1);
            qt.y0(187, (bArr[i87] >> 2) & 1);
            qt.y0(188, (bArr[i87] >> 0) & 3);
            return;
        }
        int i88 = bArr[i2 + 2] & 255;
        int i89 = bArr[i2 + 3] & 255;
        int i90 = bArr[i2 + 4] & 255;
        int i91 = bArr[i2 + 5] & 255;
        int i92 = bArr[i2 + 6] & 255;
        int i93 = bArr[i2 + 7] & 255;
        int i94 = i2 + 8;
        int i95 = bArr[i94] & 255;
        int i96 = i2 + 9;
        int i97 = bArr[i96] & 255;
        int i98 = bArr[i2 + 10] & 255;
        int i99 = bArr[i2 + 11] & 255;
        int i100 = bArr[i2 + 12] & 255;
        int i101 = bArr[i2 + 13] & 255;
        int i102 = nt.f8633a;
        if (i102 == 328000 || i102 == 393536 || i102 == 459072 || i102 == 1573184 || i102 == 1638720 || i102 == 1704256 || i102 == 2163008 || i102 == 2490688 || i102 == 2883904 || i102 == 2949440 || i102 == 3014976 || i102 == 3080512) {
            qt.y0(10, (i88 >> 6) & 1);
            qt.y0(43, (i88 >> 5) & 1);
            qt.y0(42, (i88 >> 4) & 1);
            qt.y0(13, (i88 >> 3) & 1);
            qt.y0(11, (i89 >> 6) & 1);
            qt.y0(12, (i89 >> 4) & 1);
            qt.y0(14, (i89 >> 2) & 1);
            qt.y0(58, (i89 >> 0) & 1);
            qt.y0(66, (i89 >> 3) & 1);
            qt.y0(17, (i89 >> 1) & 1);
            qt.y0(16, (i90 >> 5) & 1);
            qt.y0(65, (i90 >> 4) & 1);
            int i103 = nt.f8633a;
            if (i103 == 2163008 || i103 == 2490688 || i103 == 2883904 || i103 == 2949440 || i103 == 3014976 || i103 == 3080512) {
                i13 = 3;
                qt.y0(29, (((i90 >> 6) & 1) << 4) | ((i90 >> 0) & 3));
                qt.y0(30, ((i90 >> 2) & 3) | (((i90 >> 7) & 1) << 4));
            } else {
                qt.y0(29, (i90 >> 2) & 3);
                qt.y0(30, (i90 >> 0) & 3);
                i13 = 3;
            }
            if (i92 != i13) {
                if (i92 != 5) {
                    if (i92 != 6) {
                        switch (i92) {
                            case 11:
                                i14 = 0;
                                i15 = 0;
                                i17 = 1;
                                i16 = 1;
                                break;
                            case 12:
                                i14 = 0;
                                i15 = 1;
                                i17 = 1;
                                i16 = 1;
                                break;
                            case 13:
                                i14 = 1;
                                i15 = 0;
                                i17 = 1;
                                i16 = 1;
                                break;
                            case 14:
                                i14 = 1;
                                i15 = 1;
                                i17 = 1;
                                i16 = 1;
                                break;
                            default:
                                i14 = 0;
                                break;
                        }
                    } else {
                        i14 = 1;
                    }
                    i15 = 0;
                    i17 = 1;
                    i16 = 0;
                } else {
                    i14 = 1;
                }
                int[] iArr8 = new int[i17];
                iArr8[0] = i16;
                qt.y0(18, iArr8);
                int[] iArr9 = new int[i17];
                iArr9[0] = i14;
                qt.y0(19, iArr9);
                int[] iArr10 = new int[i17];
                iArr10[0] = i15;
                qt.y0(20, iArr10);
                int[] iArr11 = new int[i17];
                iArr11[0] = i93;
                qt.y0(21, iArr11);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i18 = 255;
                    i95 = bArr[i96] & 255;
                    i19 = bArr[i94] & 255;
                } else {
                    i18 = 255;
                    i19 = i97;
                }
                i20 = i95 & 255;
                if (i20 == 254) {
                    i21 = 1;
                    c2 = 0;
                    qt.y0(27, -2);
                } else {
                    i21 = 1;
                    c2 = 0;
                    if (i20 == i18) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, i20 * 5);
                    }
                }
                i22 = i19 & i18;
                if (i22 == 254) {
                    int[] iArr12 = new int[i21];
                    iArr12[c2] = -2;
                    qt.y0(28, iArr12);
                } else if (i22 == i18) {
                    int[] iArr13 = new int[i21];
                    iArr13[c2] = -3;
                    qt.y0(28, iArr13);
                } else {
                    int[] iArr14 = new int[i21];
                    iArr14[c2] = i22 * 5;
                    qt.y0(28, iArr14);
                }
                if (i98 != 2) {
                    if (i98 != 3) {
                        if (i98 != 4) {
                            i23 = 0;
                        } else {
                            i23 = 1;
                        }
                        i24 = 0;
                    } else {
                        i23 = 1;
                    }
                    qt.y0(46, i23);
                    qt.y0(47, i24);
                    qt.y0(44, i99);
                    if (i100 == 254) {
                        qt.y0(40, -2);
                        return;
                    } else if (i100 == 255) {
                        qt.y0(40, -3);
                        return;
                    } else {
                        qt.y0(40, i100 * 5);
                        return;
                    }
                }
                i23 = 0;
                i24 = 1;
                qt.y0(46, i23);
                qt.y0(47, i24);
                qt.y0(44, i99);
                if (i100 == 254) {
                    qt.y0(40, -2);
                    return;
                } else if (i100 == 255) {
                    qt.y0(40, -3);
                    return;
                } else {
                    qt.y0(40, i100 * 5);
                    return;
                }
            }
            i14 = 0;
            i15 = 1;
            i17 = 1;
            i16 = 0;
            int[] iArr15 = new int[i17];
            iArr15[0] = i16;
            qt.y0(18, iArr15);
            int[] iArr16 = new int[i17];
            iArr16[0] = i14;
            qt.y0(19, iArr16);
            int[] iArr17 = new int[i17];
            iArr17[0] = i15;
            qt.y0(20, iArr17);
            int[] iArr18 = new int[i17];
            iArr18[0] = i93;
            qt.y0(21, iArr18);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i18 = 255;
                i95 = bArr[i96] & 255;
                i19 = bArr[i94] & 255;
            } else {
                i18 = 255;
                i19 = i97;
            }
            i20 = i95 & 255;
            if (i20 == 254) {
                i21 = 1;
                c2 = 0;
                qt.y0(27, -2);
            } else {
                i21 = 1;
                c2 = 0;
                if (i20 == i18) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i20 * 5);
                }
            }
            i22 = i19 & i18;
            if (i22 == 254) {
                int[] iArr19 = new int[i21];
                iArr19[c2] = -2;
                qt.y0(28, iArr19);
            } else if (i22 == i18) {
                int[] iArr110 = new int[i21];
                iArr110[c2] = -3;
                qt.y0(28, iArr110);
            } else {
                int[] iArr111 = new int[i21];
                iArr111[c2] = i22 * 5;
                qt.y0(28, iArr111);
            }
            if (i98 != 2) {
                if (i98 != 3) {
                    if (i98 != 4) {
                        i23 = 0;
                    } else {
                        i23 = 1;
                    }
                    i24 = 0;
                } else {
                    i23 = 1;
                }
                qt.y0(46, i23);
                qt.y0(47, i24);
                qt.y0(44, i99);
                if (i100 == 254) {
                    qt.y0(40, -2);
                    return;
                } else if (i100 == 255) {
                    qt.y0(40, -3);
                    return;
                } else {
                    qt.y0(40, i100 * 5);
                    return;
                }
            }
            i23 = 0;
            i24 = 1;
            qt.y0(46, i23);
            qt.y0(47, i24);
            qt.y0(44, i99);
            if (i100 == 254) {
                qt.y0(40, -2);
                return;
            } else if (i100 == 255) {
                qt.y0(40, -3);
                return;
            } else {
                qt.y0(40, i100 * 5);
                return;
            }
        }
        qt.y0(10, (i88 >> 6) & 1);
        qt.y0(14, (i88 >> 2) & 1);
        qt.y0(11, (i88 >> 0) & 3);
        qt.y0(12, (i89 >> 4) & 1);
        qt.y0(13, (i89 >> 3) & 1);
        qt.y0(71, (i89 >> 1) & 3);
        qt.y0(58, (i89 >> 0) & 1);
        qt.y0(66, (i90 >> 7) & 1);
        qt.y0(17, (i90 >> 6) & 1);
        qt.y0(16, (i90 >> 5) & 1);
        qt.y0(65, (i90 >> 4) & 1);
        qt.y0(29, (i90 >> 0) & 3);
        qt.y0(30, (i90 >> 2) & 3);
        int i104 = nt.f8633a;
        if (i104 == 2163008 || i104 == 2490688 || i104 == 2883904 || i104 == 2949440 || i104 == 3014976 || i104 == 3080512) {
            i25 = 1;
            if (((i91 >> 0) & 1) == 1) {
                if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP")) {
                    c3 = 0;
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                } else {
                    J3();
                }
            }
            int[] iArr20 = new int[i25];
            iArr20[c3] = (i91 >> 0) & 3;
            qt.y0(31, iArr20);
            int[] iArr21 = new int[i25];
            iArr21[c3] = (i91 >> 2) & 3;
            qt.y0(32, iArr21);
            if (i92 != i25) {
                if (i92 != 2) {
                    if (i92 != 3) {
                        i28 = i25;
                        i27 = 0;
                    } else if (i92 != 4) {
                        i27 = 0;
                        i26 = 0;
                    } else {
                        i27 = i25;
                        i28 = i27;
                    }
                    i26 = 0;
                } else {
                    i26 = i25;
                    i28 = i26;
                    i27 = 0;
                }
                int[] iArr22 = new int[i25];
                iArr22[0] = i27;
                qt.y0(18, iArr22);
                int[] iArr23 = new int[i25];
                iArr23[0] = i26;
                qt.y0(19, iArr23);
                int[] iArr24 = new int[i25];
                iArr24[0] = i28;
                qt.y0(20, iArr24);
                int[] iArr25 = new int[i25];
                iArr25[0] = i93;
                qt.y0(21, iArr25);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i29 = 255;
                    i95 = bArr[i96] & 255;
                    i30 = bArr[i94] & 255;
                } else {
                    i29 = 255;
                    i30 = i97;
                }
                i31 = i95 & 255;
                if (i31 == 254) {
                    i32 = 1;
                    i33 = 0;
                    qt.y0(27, -2);
                } else {
                    i32 = 1;
                    i33 = 0;
                    if (i31 == i29) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, i31 * 5);
                    }
                }
                i34 = i30 & i29;
                if (i34 == 254) {
                    int[] iArr26 = new int[i32];
                    iArr26[i33] = -2;
                    qt.y0(28, iArr26);
                } else if (i34 == i29) {
                    int[] iArr27 = new int[i32];
                    iArr27[i33] = -3;
                    qt.y0(28, iArr27);
                } else {
                    int[] iArr28 = new int[i32];
                    iArr28[i33] = i34 * 5;
                    qt.y0(28, iArr28);
                }
                i35 = i101 & 255;
                if (i35 == 255) {
                    u0.d.A3(i33);
                } else if (i101 == 0) {
                    u0.d.A3(i33);
                } else {
                    u0.d.A3((i35 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                }
            }
            i26 = i25;
            i27 = 0;
            i28 = 0;
            int[] iArr29 = new int[i25];
            iArr29[0] = i27;
            qt.y0(18, iArr29);
            int[] iArr210 = new int[i25];
            iArr210[0] = i26;
            qt.y0(19, iArr210);
            int[] iArr211 = new int[i25];
            iArr211[0] = i28;
            qt.y0(20, iArr211);
            int[] iArr212 = new int[i25];
            iArr212[0] = i93;
            qt.y0(21, iArr212);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i29 = 255;
                i95 = bArr[i96] & 255;
                i30 = bArr[i94] & 255;
            } else {
                i29 = 255;
                i30 = i97;
            }
            i31 = i95 & 255;
            if (i31 == 254) {
                i32 = 1;
                i33 = 0;
                qt.y0(27, -2);
            } else {
                i32 = 1;
                i33 = 0;
                if (i31 == i29) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i31 * 5);
                }
            }
            i34 = i30 & i29;
            if (i34 == 254) {
                int[] iArr213 = new int[i32];
                iArr213[i33] = -2;
                qt.y0(28, iArr213);
            } else if (i34 == i29) {
                int[] iArr214 = new int[i32];
                iArr214[i33] = -3;
                qt.y0(28, iArr214);
            } else {
                int[] iArr215 = new int[i32];
                iArr215[i33] = i34 * 5;
                qt.y0(28, iArr215);
            }
            i35 = i101 & 255;
            if (i35 == 255) {
                u0.d.A3(i33);
            } else if (i101 == 0) {
                u0.d.A3(i33);
            } else {
                u0.d.A3((i35 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            }
        }
        i25 = 1;
        if (((i91 >> 7) & 1) == 1) {
            if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP")) {
                l0.b0.l0(6, 0);
                l0.b0.l0(6, 1);
            } else {
                J3();
            }
        }
        c3 = 0;
        int[] iArr216 = new int[i25];
        iArr216[c3] = (i91 >> 0) & 3;
        qt.y0(31, iArr216);
        int[] iArr217 = new int[i25];
        iArr217[c3] = (i91 >> 2) & 3;
        qt.y0(32, iArr217);
        if (i92 != i25) {
            if (i92 != 2) {
                if (i92 != 3) {
                    i28 = i25;
                    i27 = 0;
                } else if (i92 != 4) {
                    i27 = 0;
                    i26 = 0;
                } else {
                    i27 = i25;
                    i28 = i27;
                }
                i26 = 0;
            } else {
                i26 = i25;
                i28 = i26;
                i27 = 0;
            }
            int[] iArr218 = new int[i25];
            iArr218[0] = i27;
            qt.y0(18, iArr218);
            int[] iArr219 = new int[i25];
            iArr219[0] = i26;
            qt.y0(19, iArr219);
            int[] iArr2110 = new int[i25];
            iArr2110[0] = i28;
            qt.y0(20, iArr2110);
            int[] iArr2111 = new int[i25];
            iArr2111[0] = i93;
            qt.y0(21, iArr2111);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i29 = 255;
                i95 = bArr[i96] & 255;
                i30 = bArr[i94] & 255;
            } else {
                i29 = 255;
                i30 = i97;
            }
            i31 = i95 & 255;
            if (i31 == 254) {
                i32 = 1;
                i33 = 0;
                qt.y0(27, -2);
            } else {
                i32 = 1;
                i33 = 0;
                if (i31 == i29) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i31 * 5);
                }
            }
            i34 = i30 & i29;
            if (i34 == 254) {
                int[] iArr2112 = new int[i32];
                iArr2112[i33] = -2;
                qt.y0(28, iArr2112);
            } else if (i34 == i29) {
                int[] iArr2113 = new int[i32];
                iArr2113[i33] = -3;
                qt.y0(28, iArr2113);
            } else {
                int[] iArr2114 = new int[i32];
                iArr2114[i33] = i34 * 5;
                qt.y0(28, iArr2114);
            }
            i35 = i101 & 255;
            if (i35 == 255) {
                u0.d.A3(i33);
            } else if (i101 == 0) {
                u0.d.A3(i33);
            } else {
                u0.d.A3((i35 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            }
        }
        i26 = i25;
        i27 = 0;
        i28 = 0;
        int[] iArr2115 = new int[i25];
        iArr2115[0] = i27;
        qt.y0(18, iArr2115);
        int[] iArr2116 = new int[i25];
        iArr2116[0] = i26;
        qt.y0(19, iArr2116);
        int[] iArr2117 = new int[i25];
        iArr2117[0] = i28;
        qt.y0(20, iArr2117);
        int[] iArr2118 = new int[i25];
        iArr2118[0] = i93;
        qt.y0(21, iArr2118);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i29 = 255;
            i95 = bArr[i96] & 255;
            i30 = bArr[i94] & 255;
        } else {
            i29 = 255;
            i30 = i97;
        }
        i31 = i95 & 255;
        if (i31 == 254) {
            i32 = 1;
            i33 = 0;
            qt.y0(27, -2);
        } else {
            i32 = 1;
            i33 = 0;
            if (i31 == i29) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i31 * 5);
            }
        }
        i34 = i30 & i29;
        if (i34 == 254) {
            int[] iArr2119 = new int[i32];
            iArr2119[i33] = -2;
            qt.y0(28, iArr2119);
        } else if (i34 == i29) {
            int[] iArr21110 = new int[i32];
            iArr21110[i33] = -3;
            qt.y0(28, iArr21110);
        } else {
            int[] iArr21111 = new int[i32];
            iArr21111[i33] = i34 * 5;
            qt.y0(28, iArr21111);
        }
        i35 = i101 & 255;
        if (i35 == 255) {
            u0.d.A3(i33);
        } else if (i101 == 0) {
            u0.d.A3(i33);
        } else {
            u0.d.A3((i35 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f14829l);
        qt.q0(this.f14827j);
        l0.b0.p0(this.f14830m);
        o1.h.f16865a.d(this.f14840w);
        o1.h.f16867c.d(this.f14840w);
        w0.e.f17815a.d(this.f14834q);
        w0.e.f17819e.d(this.f14834q);
        u0.c.f17374a.d(this.f14834q);
        y0.g.f18094d.d(this.f14833p);
        y0.g.f18095e.d(this.f14833p);
        l0.b0.o0(this.f14842y);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 198) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003) {
            int i3 = nt.f8637c;
            if (i3 == 33 || i3 == 38 || i3 == 44 || i3 == 45 || i3 == 46 || i3 == 47 || i3 == 48) {
                K3(1);
            }
            if (u0.b.f17347o == 0) {
                if (!o1.u.T(a.b.O)) {
                    qt.t();
                    return;
                } else {
                    if (o1.u.T(a.b.O)) {
                        qt.f();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length < 1) {
                return;
            }
            z.k.s(227, 2, -3, 3, iArr[0] + 4);
            return;
        }
        switch (i2) {
            case 1:
                if (qt.l0(iArr, 1)) {
                    G3(6, iArr[0]);
                }
                break;
            case 2:
                if (qt.l0(iArr, 1)) {
                    G3(5, iArr[0]);
                }
                break;
            case 3:
                if (qt.l0(iArr, 1)) {
                    G3(7, iArr[0]);
                }
                break;
            case 4:
                if (qt.l0(iArr, 2)) {
                    z.k.s(227, 2, 61, iArr[0], iArr[1]);
                }
                break;
            case 5:
                if (qt.l0(iArr, 2)) {
                    z.k.s(227, 4, 109, iArr[0], iArr[1], 255, 255);
                }
                break;
            case 6:
                if (qt.l0(iArr, 2)) {
                    z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, iArr[0], iArr[1]);
                }
                break;
            case 7:
                if (qt.l0(iArr, 4)) {
                    z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
                }
                break;
            case 8:
                if (qt.l0(iArr, 2)) {
                    z.k.s(227, 2, -83, iArr[0], iArr[1]);
                }
                break;
            case 9:
                if (qt.l0(iArr, 2)) {
                    z.k.s(227, 2, 108, iArr[0], iArr[1]);
                }
                break;
            case 10:
                if (qt.l0(iArr, 4)) {
                    z.k.s(227, 25, 44, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                }
                break;
            case 11:
                z.k.s(227, 3, -96, 0, iArr[0], 0);
                break;
            case 12:
                if (nt.U == 1) {
                    o1.x.x(nt.f8643f, 1001, iArr[0]);
                }
                break;
            case 13:
                z.k.s(227, 4, 95, iArr[0], iArr[1], iArr[2], iArr[3]);
                break;
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            E = F[o0.a(i2, 0, 36)];
        }
    }

    public void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 145;
        iArr[2] = d3();
        if (u0.b.f17320f == 1) {
            int i4 = u0.b.D;
            if (i4 == 1) {
                iArr[3] = 48;
                iArr[4] = ((w0.d.f17798j & 255) % 6) + 1 + 48;
                int i5 = w0.d.f17796h;
                if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                    int i6 = w0.d.f17797i;
                    iArr[6] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                    iArr[7] = ((i6 % 10000) / 1000) + 48;
                    iArr[8] = ((i6 % 1000) / 100) + 48;
                    iArr[9] = 46;
                    iArr[10] = ((i6 % 100) / 10) + 48;
                } else {
                    int i7 = w0.d.f17797i;
                    if ((i7 % 10000) / 1000 == 1) {
                        iArr[6] = ((i7 % 10000) / 1000) + 48;
                        iArr[7] = ((i7 % 1000) / 100) + 48;
                        iArr[8] = ((i7 % 100) / 10) + 48;
                        iArr[9] = (i7 % 10) + 48;
                    } else {
                        iArr[6] = 48;
                        iArr[7] = ((i7 % 1000) / 100) + 48;
                        iArr[8] = ((i7 % 100) / 10) + 48;
                        iArr[9] = (i7 % 10) + 48;
                    }
                }
            } else if (i4 == 4) {
                int i8 = o0.e.B;
                if (i8 <= 999) {
                    int i9 = i8 / 100;
                    iArr[4] = (i8 / 100) + 48;
                    int i10 = (i8 % 100) / 10;
                    iArr[5] = ((i8 % 100) / 10) + 48;
                    iArr[6] = (i8 % 10) + 48;
                } else {
                    iArr[4] = 57;
                    iArr[5] = 57;
                    iArr[6] = 57;
                }
                iArr[7] = 32;
                int i11 = o0.e.f16794r;
                iArr[8] = ((i11 / 60) / 10) + 48;
                iArr[9] = ((i11 / 60) % 10) + 48;
                iArr[10] = 58;
                iArr[11] = ((i11 % 60) / 10) + 48;
                iArr[12] = ((i11 % 60) % 10) + 48;
            } else if (i4 == 8) {
                int i12 = u0.b.r3;
                if (i12 <= 999) {
                    int i13 = i12 / 100;
                    iArr[4] = (i12 / 100) + 48;
                    int i14 = (i12 % 100) / 10;
                    iArr[5] = ((i12 % 100) / 10) + 48;
                    iArr[6] = (i12 % 10) + 48;
                } else {
                    iArr[4] = 57;
                    iArr[5] = 57;
                    iArr[6] = 57;
                }
                iArr[7] = 32;
                int i15 = u0.b.t3;
                iArr[8] = ((i15 / 60) / 10) + 48;
                iArr[9] = ((i15 / 60) % 10) + 48;
                iArr[10] = 58;
                iArr[11] = ((i15 % 60) / 10) + 48;
                iArr[12] = ((i15 % 60) % 10) + 48;
            }
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i16 = i2 + 1;
            iArr2[i16] = (byte) iArr[i2];
            i2 = i16;
        }
        z.k.s(iArr2);
    }

    public final void init() {
        G.f(1, new h(1, 0));
    }

    public final void k3(int i2) {
        z.k.s(227, 2, 61, i2, 1);
        a.i.a0(100L);
        z.k.s(227, 2, 61, i2, 0);
    }
}
