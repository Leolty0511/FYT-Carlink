package k0;

import android.content.Intent;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class yh extends lt {
    public static final int[] Q = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 33, 35, 37, 38, 39, 40};
    public static int R = 0;
    public static int S = 18;
    public static int T = 10;
    public static int U = 10;
    public static int V = 10;
    public static int W = 10;
    public static int X = 10;
    public static int Y = 1;
    public static int Z = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12485d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12483b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12484c = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12486e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f12487f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}, new int[]{13, 13}, new int[]{14, 12}, new int[]{16, 21}, new int[]{17, 0}, new int[]{18, 7}, new int[]{19, 8}, new int[]{20, 18}, new int[]{21, 1}, new int[]{22, 29}, new int[]{23, 6}, new int[]{24, 9}, new int[]{25, 5}, new int[]{26, 67}, new int[]{27, 68}, new int[]{28, 54}, new int[]{29, 29}, new int[]{32, 62}, new int[]{33, -1}, new int[]{64, 34}, new int[]{65, 35}, new int[]{66, 32}, new int[]{67, 33}, new int[]{129, 25}, new int[]{135, 21}, new int[]{137, 12}, new int[]{161, 7}, new int[]{162, 8}, new int[]{169, 68}, new int[]{176, 67}, new int[]{177, 2}, new int[]{178, 5}, new int[]{179, 18}, new int[]{180, 26}, new int[]{181, 55}, new int[]{182, 1}, new int[]{185, 62}, new int[]{186, 6}, new int[]{187, 65}, new int[]{188, 38}, new int[]{192, 34}, new int[]{193, 35}, new int[]{194, 32}, new int[]{195, 33}, new int[]{196, 29}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[] f12488g = {34, 204};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12489h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12490i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f12491j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f12492k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f12493l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f12494m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f12495n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f12496o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f12497p = new e();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f12498q = new f();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public byte f12499r = 10;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f12500s = new g();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f12501t = new h();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f12502u = new i();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f12503v = -1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public String f12504w = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f12505x = new j();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f12506y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f12507z = 0;
    public Runnable A = new k();
    public float B = 0.0f;
    public int C = 255;
    public int D = 255;
    public Runnable E = new a();
    public Runnable F = new b();
    public o1.g0 G = new o1.g0(getClass().getSimpleName(), 32);
    public final int H = 1;
    public final int I = 2;
    public final int J = 3;
    public final int K = 4;
    public final int L = 5;
    public final int M = 6;
    public final int N = 7;
    public final int O = 8;
    public final int P = 9;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yh.this.B = u0.b.f17359s0;
            if (yh.this.B > 360.0f) {
                yh.s3(yh.this, 360.0f);
            }
            if (yh.this.B < 0.0f) {
                yh.s3(yh.this, 360.0f);
                yh yhVar = yh.this;
                yhVar.B = 360.0f - Math.abs(yhVar.B);
            }
            if ((yh.this.B <= 22.5d && yh.this.B >= 0.0f) || (yh.this.B >= 337.5d && yh.this.B <= 360.0f)) {
                yh.this.D = 3;
            } else if (yh.this.B > 22.5d && yh.this.B < 67.5d) {
                yh.this.D = 6;
            } else if (yh.this.B >= 67.5d && yh.this.B <= 112.5d) {
                yh.this.D = 0;
            } else if (yh.this.B > 112.5d && yh.this.B < 157.5d) {
                yh.this.D = 4;
            } else if (yh.this.B >= 157.5d && yh.this.B <= 202.5d) {
                yh.this.D = 1;
            } else if (yh.this.B > 202.5d && yh.this.B < 247.5d) {
                yh.this.D = 5;
            } else if (yh.this.B >= 247.5d && yh.this.B <= 292.5d) {
                yh.this.D = 2;
            } else if (yh.this.B <= 292.5d || yh.this.B >= 337.5d) {
                yh.this.D = 15;
            } else {
                yh.this.D = 7;
            }
            if (yh.this.D != yh.this.C) {
                if (u0.b.X1 > 2) {
                    z.k.s(227, -125, 3, 21, yh.this.D, 0);
                }
                yh yhVar2 = yh.this;
                yhVar2.C = yhVar2.D;
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
            z.k.s(227, 131, 3, 3, (byte) time.hour, (byte) time.minute);
            switch (nt.f8633a) {
                case 2490807:
                    z.k.s(227, 133, 1, 9);
                    break;
                case 2556343:
                    z.k.s(227, 133, 1, 9);
                    break;
                case 7078327:
                    z.k.s(227, 133, 1, 7);
                    break;
                case 7143863:
                    z.k.s(227, 133, 1, 6);
                    break;
                case 7602615:
                    z.k.s(227, 133, 1, 11);
                    break;
                case 8651204:
                    z.k.s(227, 133, 1, 16);
                    break;
                case 11272631:
                    z.k.s(227, 133, 1, 12);
                    break;
                case 11796934:
                case 11862470:
                    z.k.s(227, 133, 1, 37);
                    break;
            }
            z.k.s(227, 144, 2, 39, 0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yh yhVar = yh.this;
            int i2 = yhVar.f12492k;
            int i3 = u0.b.f17347o;
            if (i2 != i3) {
                yhVar.f12492k = i3;
                if (i3 == 1 && i3 == 0) {
                    int i4 = nt.f8633a;
                    if (i4 == 12124615 || i4 == 12190151 || i4 == 16318916) {
                        z.k.s(227, 134, 2, 1, yh.S);
                    }
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                qt.a(0);
            }
            l0.b0.o0(yh.this.f12497p);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yh.this.f12496o--;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 134, 2, 1, yh.Q[o1.o0.a(y0.f.f18037c, 0, 36)]);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yh yhVar = yh.this;
            yhVar.f12490i = 0;
            l0.b0.b(yhVar.f12501t);
            yh.this.f12499r = (byte) 5;
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yh yhVar = yh.this;
            byte b2 = (byte) (yhVar.f12499r - 1);
            yhVar.f12499r = b2;
            if (b2 <= 0) {
                l0.b0.p0(yhVar.f12501t);
                yh.this.f12499r = (byte) 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            yh yhVar2 = yh.this;
            yhVar2.O3(yhVar2.G.b(1, 1));
            if (u0.b.f17306a0 == 1) {
                int i2 = nt.f8633a;
                if (i2 == 12124615 || i2 == 12190151 || i2 == 16318916) {
                    yh yhVar3 = yh.this;
                    yhVar3.N3(yhVar3.G.b(2, 18));
                    yh yhVar4 = yh.this;
                    yhVar4.M3(yhVar4.G.b(3, 10));
                    yh yhVar5 = yh.this;
                    yhVar5.J3(yhVar5.G.b(4, 10));
                    yh yhVar6 = yh.this;
                    yhVar6.H3(yhVar6.G.b(5, 10));
                    yh yhVar7 = yh.this;
                    yhVar7.G3(yhVar7.G.b(6, 10));
                    yh yhVar8 = yh.this;
                    yhVar8.I3(yhVar8.G.b(7, 10));
                    yh yhVar9 = yh.this;
                    yhVar9.L3(yhVar9.G.b(8, 1));
                    yh yhVar10 = yh.this;
                    yhVar10.K3(yhVar10.G.b(9, 0));
                }
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8633a) {
                case 16122308:
                case 16187844:
                case 16253380:
                case 16318916:
                case 16384452:
                case 16449988:
                    l0.c0.B();
                    break;
                default:
                    l0.c0.e();
                    break;
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            int i2 = yh.this.f12503v;
            int i3 = h0.c.E;
            boolean z3 = true;
            if (i2 != i3) {
                yh.this.f12503v = i3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (yh.this.f12504w.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                yh.this.f12504w = h0.c.f2437h;
                if (yh.this.f12504w == null) {
                    yh.this.f12504w = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (u0.b.D == 2 ? z3 : false) {
                yh yhVar = yh.this;
                yhVar.P3(yhVar.f12503v, yh.this.f12504w);
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yh.this.f12507z = u0.b.f17361t0 & 65535;
            if (yh.this.f12507z != yh.this.f12506y) {
                if (u0.b.X1 > 2) {
                    int i2 = nt.f8633a;
                    if ((i2 == 2490807 || i2 == 8651204 || i2 == 2556343 || i2 == 11796934 || i2 == 11862470) && (yh.this.f12507z & 32768) != 0) {
                        yh yhVar = yh.this;
                        yhVar.f12507z = 65535 & (65536 - yhVar.f12507z);
                        if (yh.this.f12507z > 100) {
                            yh.this.f12507z |= 32768;
                        }
                    }
                    z.k.s(227, -125, 3, 22, (yh.this.f12507z >> 8) & 255, yh.this.f12507z & 255);
                    qt.y0(126, yh.this.f12507z);
                }
                yh yhVar2 = yh.this;
                yhVar2.f12506y = yhVar2.f12507z;
            }
        }
    }

    public static /* synthetic */ float s3(yh yhVar, float f2) {
        float f3 = yhVar.B % f2;
        yhVar.B = f3;
        return f3;
    }

    public final void F3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.rzc.havalh6.Oudi_0439_HavalH9SetAct")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.havalh6.Oudi_0439_HavalH9SetAct");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void G3(int i2) {
        W = i2;
        z.k.s(227, 134, 2, 5, i2);
        qt.y0(146, W);
        int iB = this.G.b(6, 10);
        int i3 = W;
        if (iB != i3) {
            this.G.g(6, i3);
        }
    }

    public final void H3(int i2) {
        V = i2;
        z.k.s(227, 134, 2, 4, i2);
        qt.y0(145, V);
        int iB = this.G.b(5, 10);
        int i3 = V;
        if (iB != i3) {
            this.G.g(5, i3);
        }
    }

    public final void I3(int i2) {
        X = i2;
        z.k.s(227, 134, 2, 6, i2);
        qt.y0(147, X);
        int iB = this.G.b(7, 10);
        int i3 = X;
        if (iB != i3) {
            this.G.g(7, i3);
        }
    }

    public final void J3(int i2) {
        U = i2;
        z.k.s(227, 134, 2, 3, i2);
        qt.y0(144, U);
        int iB = this.G.b(4, 10);
        int i3 = U;
        if (iB != i3) {
            this.G.g(4, i3);
        }
    }

    public final void K3(int i2) {
        Z = i2;
        z.k.s(227, 134, 2, 8, i2);
        qt.y0(148, Z);
        int iB = this.G.b(9, 0);
        int i3 = Z;
        if (iB != i3) {
            this.G.g(9, i3);
        }
    }

    public final void L3(int i2) {
        Y = i2;
        z.k.s(227, 134, 2, 7, i2);
        qt.y0(149, Y);
        int iB = this.G.b(8, 1);
        int i3 = Y;
        if (iB != i3) {
            this.G.g(8, i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final void M3(int i2) {
        T = i2;
        z.k.s(227, 134, 2, 2, i2);
        qt.y0(143, T);
        int iB = this.G.b(3, 10);
        int i3 = T;
        if (iB != i3) {
            this.G.g(3, i3);
        }
    }

    @Override // k0.lt
    public void N2() {
        switch (nt.f8633a) {
            case 1769911:
            case 2556343:
            case 11862470:
            case 15663543:
            case 16318916:
            case 16384452:
            case 16449988:
                y0.f.C0 = 25;
                break;
            default:
                y0.f.C0 = 18;
                break;
        }
    }

    public final void N3(int i2) {
        S = i2;
        z.k.s(227, 134, 2, 1, i2);
        qt.y0(142, S);
        int iB = this.G.b(2, 18);
        int i3 = S;
        if (iB != i3) {
            this.G.g(2, i3);
        }
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        switch (nt.f8633a) {
            case 1376695:
            case 1769911:
            case 12124615:
            case 12190151:
            case 15598007:
            case 15663543:
            case 16122308:
            case 16187844:
            case 16253380:
            case 16318916:
            case 16384452:
            case 16449988:
                switch (i2) {
                    case 33:
                        if (iArr[1] == 0) {
                            if (nt.f8645g[10] == 1) {
                                a3(16);
                            }
                        } else if (nt.f8645g[10] == 0) {
                            a3(16);
                        }
                        break;
                    case 34:
                        if (iArr[1] == 0) {
                            if (nt.f8645g[11] == 1) {
                                a3(17);
                            }
                        } else if (nt.f8645g[11] == 0) {
                            a3(17);
                        }
                        break;
                    case 35:
                        if (iArr[1] == 0) {
                            if (nt.f8645g[13] == 1) {
                                a3(18);
                            }
                        } else if (nt.f8645g[13] == 0) {
                            a3(18);
                        }
                        break;
                    case 36:
                        if (iArr[1] == 0) {
                            if (nt.f8645g[65] == 1) {
                                a3(21);
                            }
                        } else if (nt.f8645g[65] == 0) {
                            a3(21);
                        }
                        break;
                    case 38:
                        if (iArr[1] == 0) {
                            if (nt.f8645g[12] == 1) {
                                a3(19);
                            }
                        } else if (nt.f8645g[12] == 0) {
                            a3(19);
                        }
                        break;
                    case 39:
                        if (iArr[1] != -1) {
                            a3(29);
                        } else {
                            a3(28);
                        }
                        break;
                    case 41:
                        if (iArr[1] == 0) {
                            a3(31);
                        } else {
                            a3(30);
                        }
                        break;
                    case 42:
                        if (iArr[1] == 0) {
                            a3(33);
                        } else {
                            a3(32);
                        }
                        break;
                }
                break;
            default:
                if (i2 != 41) {
                    if (i2 != 42) {
                        if (i2 != 55) {
                            if (i2 != 56) {
                                if (i2 != 67) {
                                    if (i2 != 68) {
                                        switch (i2) {
                                            case 33:
                                                z.k.s(227, 135, 2, 6, iArr[1]);
                                                break;
                                            case 34:
                                                z.k.s(227, 135, 2, 7, iArr[1]);
                                                break;
                                            case 35:
                                                z.k.s(227, 135, 2, 14, iArr[1]);
                                                break;
                                            case 36:
                                                z.k.s(227, 135, 2, 16, iArr[1]);
                                                break;
                                            case 37:
                                                z.k.s(227, 135, 2, 17, iArr[1]);
                                                break;
                                            case 38:
                                                z.k.s(227, 135, 2, 15, iArr[1]);
                                                break;
                                            case 39:
                                                if (iArr[1] != -1) {
                                                    z.k.s(227, 135, 2, 8, 0);
                                                } else {
                                                    z.k.s(227, 135, 2, 8, 1);
                                                }
                                                break;
                                        }
                                    } else {
                                        if (iArr[1] == 1) {
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
                                        } else if (iArr[1] == 11) {
                                            z.k.s(227, -121, 2, 1, 0);
                                        } else if (iArr[1] == 12) {
                                            z.k.s(227, -121, 2, 1, 1);
                                        }
                                        break;
                                    }
                                } else {
                                    int i3 = iArr[1];
                                    if (i3 == 2) {
                                        z.k.s(227, 131, 3, 10, 1, 0);
                                        break;
                                    } else if (i3 == 3) {
                                        z.k.s(227, 131, 3, 10, 2, 0);
                                        break;
                                    } else if (i3 == 4) {
                                        z.k.s(227, 131, 3, 10, 3, 0);
                                        break;
                                    } else if (i3 == 5) {
                                        z.k.s(227, 131, 3, 10, 4, 0);
                                        break;
                                    }
                                }
                            } else {
                                if (iArr[1] < 17) {
                                    z.k.s(227, -121, 2, 13, 0);
                                } else if (iArr[1] >= 17 && iArr[1] <= 31) {
                                    z.k.s(227, -121, 2, 13, (iArr[1] - 16) * 2);
                                } else if (iArr[1] > 31) {
                                    z.k.s(227, -121, 2, 13, 255);
                                }
                                break;
                            }
                        } else {
                            if (iArr[1] < 17) {
                                z.k.s(227, -121, 2, 11, 0);
                            } else if (iArr[1] >= 17 && iArr[1] <= 31) {
                                z.k.s(227, -121, 2, 11, (iArr[1] - 16) * 2);
                            } else if (iArr[1] > 31) {
                                z.k.s(227, -121, 2, 11, 255);
                            }
                            break;
                        }
                    } else {
                        if (iArr[1] == 0) {
                            z.k.s(227, 135, 2, 12, 0);
                        } else {
                            z.k.s(227, 135, 2, 12, 1);
                        }
                        break;
                    }
                } else {
                    if (iArr[1] == 0) {
                        z.k.s(227, 135, 2, 10, 0);
                    } else {
                        z.k.s(227, 135, 2, 10, 1);
                    }
                    break;
                }
                break;
        }
    }

    public final void O3(int i2) {
        R = i2;
        qt.y0(115, i2);
        int iB = this.G.b(1, 0);
        int i3 = R;
        if (iB != i3) {
            this.G.g(1, i3);
        }
    }

    public final void P3(int i2, String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length + 6];
        iArr[0] = -29;
        iArr[1] = -59;
        iArr[2] = (byte) (charArray.length + 2);
        if (i2 == 0) {
            iArr[3] = 6;
        } else if (i2 == 3) {
            iArr[3] = 2;
        } else if (i2 == 4) {
            iArr[3] = 1;
        } else if (i2 != 5) {
            iArr[3] = 0;
        } else {
            iArr[3] = 4;
        }
        iArr[4] = 1;
        if (charArray.length > 0) {
            for (int i3 = 0; i3 < str.length(); i3++) {
                iArr[5 + i3] = (byte) charArray[i3];
            }
        }
        z.k.s(iArr);
    }

    @Override // k0.lt
    public void S2() {
        this.G.a();
        qt.z(this.F);
        o1.h.f16865a.a(this.E, 1);
        o1.h.f16867c.a(this.A, 1);
        u0.c.f17386m.a(this.f12500s, 1);
        switch (nt.f8633a) {
            case 1376695:
            case 15598007:
                mt mtVar = this.f7886a;
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8310e = 1;
                mtVar.f8311f = 1;
                mtVar.f8312g = 1;
                mtVar.f8314i = 1;
                mtVar.f8307b = 0;
                mtVar.f8308c = 0;
                mtVar.f8309d = 0;
                mtVar.f8320o = 0;
                mtVar.f8322q = 1;
                break;
            case 1769911:
            case 15663543:
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                mtVar2.f8310e = 1;
                mtVar2.f8311f = 1;
                mtVar2.f8312g = 1;
                mtVar2.f8314i = 1;
                mtVar2.f8307b = 1;
                mtVar2.f8308c = 0;
                mtVar2.f8309d = 0;
                mtVar2.f8320o = 0;
                mtVar2.f8322q = 1;
                y0.g.f18094d.a(this.f12498q, 1);
                break;
            case 2490807:
            case 8651204:
            case 11796934:
                mt mtVar3 = this.f7886a;
                mtVar3.f8306a = new String[]{"com.syu.canbus"};
                mtVar3.f8310e = 1;
                mtVar3.f8311f = 1;
                mtVar3.f8312g = 1;
                mtVar3.f8314i = 1;
                mtVar3.f8307b = 0;
                mtVar3.f8308c = 0;
                mtVar3.f8309d = 0;
                mtVar3.f8320o = 0;
                mtVar3.f8322q = 1;
                break;
            case 2556343:
            case 11862470:
                mt mtVar4 = this.f7886a;
                mtVar4.f8306a = new String[]{"com.syu.canbus"};
                mtVar4.f8310e = 1;
                mtVar4.f8311f = 1;
                mtVar4.f8312g = 1;
                mtVar4.f8314i = 1;
                mtVar4.f8307b = 1;
                mtVar4.f8308c = 0;
                mtVar4.f8309d = 0;
                mtVar4.f8320o = 0;
                mtVar4.f8322q = 1;
                y0.g.f18094d.a(this.f12498q, 1);
                break;
            case 7078327:
                mt mtVar5 = this.f7886a;
                mtVar5.f8306a = new String[]{"com.syu.canbus"};
                mtVar5.f8310e = 1;
                mtVar5.f8311f = 1;
                mtVar5.f8312g = 1;
                mtVar5.f8314i = 1;
                mtVar5.f8307b = 0;
                mtVar5.f8308c = 0;
                mtVar5.f8309d = 0;
                mtVar5.f8320o = 0;
                mtVar5.f8322q = 0;
                break;
            case 7143863:
                mt mtVar6 = this.f7886a;
                mtVar6.f8306a = new String[]{"com.syu.canbus"};
                mtVar6.f8310e = 1;
                mtVar6.f8311f = 1;
                mtVar6.f8312g = 1;
                mtVar6.f8314i = 1;
                mtVar6.f8307b = 0;
                mtVar6.f8308c = 0;
                mtVar6.f8309d = 0;
                mtVar6.f8320o = 0;
                mtVar6.f8322q = 0;
                break;
            case 7602615:
                mt mtVar7 = this.f7886a;
                mtVar7.f8306a = new String[]{"com.syu.canbus"};
                mtVar7.f8310e = 1;
                mtVar7.f8311f = 1;
                mtVar7.f8312g = 1;
                mtVar7.f8314i = 1;
                mtVar7.f8307b = 0;
                mtVar7.f8308c = 0;
                mtVar7.f8309d = 0;
                mtVar7.f8320o = 0;
                mtVar7.f8322q = 0;
                break;
            case 11272631:
                mt mtVar8 = this.f7886a;
                mtVar8.f8306a = new String[]{"com.syu.canbus"};
                mtVar8.f8310e = 1;
                mtVar8.f8311f = 1;
                mtVar8.f8312g = 1;
                mtVar8.f8314i = 1;
                mtVar8.f8307b = 0;
                mtVar8.f8308c = 0;
                mtVar8.f8309d = 0;
                mtVar8.f8320o = 0;
                mtVar8.f8322q = 0;
                qt.z(this.f12502u);
                h0.d.f2464c.a(this.f12505x, 1);
                h0.d.f2462a.a(this.f12505x, 1);
                break;
            case 12124615:
            case 16122308:
            case 16187844:
            case 16253380:
                mt mtVar9 = this.f7886a;
                mtVar9.f8306a = new String[]{"com.syu.canbus"};
                mtVar9.f8310e = 1;
                mtVar9.f8311f = 1;
                mtVar9.f8312g = 1;
                mtVar9.f8314i = 1;
                mtVar9.f8307b = 0;
                mtVar9.f8308c = 0;
                mtVar9.f8309d = 0;
                mtVar9.f8320o = 0;
                mtVar9.f8322q = 1;
                qt.z(this.f12502u);
                break;
            case 12190151:
            case 16318916:
            case 16384452:
            case 16449988:
                mt mtVar10 = this.f7886a;
                mtVar10.f8306a = new String[]{"com.syu.canbus"};
                mtVar10.f8310e = 1;
                mtVar10.f8311f = 1;
                mtVar10.f8312g = 1;
                mtVar10.f8314i = 1;
                mtVar10.f8307b = 1;
                mtVar10.f8308c = 0;
                mtVar10.f8309d = 0;
                mtVar10.f8320o = 0;
                mtVar10.f8322q = 1;
                y0.g.f18094d.a(this.f12498q, 1);
                qt.z(this.f12502u);
                break;
        }
        this.f7886a.f8322q = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56};
        u0.c.f17379f.a(this.f12493l, 1);
    }

    /* JADX WARN: Code duplicated, block: B:301:0x0b85  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        boolean z2;
        int[][] iArr2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12 = bArr[i2] & 255;
        if (i12 == 64) {
            int i13 = nt.f8633a;
            if (i13 == 1376695 || i13 == 1769911 || i13 == 15598007 || i13 == 15663543 || i13 == 16122308 || i13 == 16187844 || i13 == 16253380 || i13 == 16318916 || i13 == 16384452 || i13 == 16449988 || i13 == 12124615 || i13 == 12190151) {
                return;
            }
            int i14 = bArr[i2 + 2] & 255;
            if (u0.b.f17347o == 0) {
                if (i14 == 0) {
                    if (o1.u.T(a.b.O)) {
                        qt.f();
                    }
                    return;
                } else {
                    if (o1.u.T(a.b.O)) {
                        return;
                    }
                    qt.t();
                    return;
                }
            }
            return;
        }
        if (i12 == 65) {
            int i15 = i2 + 2;
            qt.y0(Process.MEDIA_UID, bArr[i15] & 255);
            int i16 = bArr[i15] & 255;
            if (nt.f8633a == 11272631) {
                if (i16 != 0) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            if (qt.k0()) {
                return;
            }
            if (i16 != 0) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        if (i12 == 125) {
            int i17 = bArr[i2 + 2] & 255;
            if (i17 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i18 = i2 + 3;
                    l0.c0.b((bArr[i18] >> 3) & 1, (bArr[i18] >> 4) & 1, 0);
                    return;
                } else {
                    int i19 = i2 + 3;
                    l0.c0.a((bArr[i19] >> 3) & 1, (bArr[i19] >> 4) & 1, 0);
                    return;
                }
            }
            if (i17 == 3) {
                int i20 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i20);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i20}, null, null);
                return;
            } else {
                if (i17 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f12491j = true;
                return;
            }
        }
        if (i12 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (i12) {
            case 33:
                byte b2 = bArr[i2 + 2];
                byte b3 = bArr[i2 + 3];
                this.f12486e = b2 & 255;
                int i21 = 0;
                while (true) {
                    iArr = this.f12487f;
                    if (i21 < iArr.length) {
                        int i22 = this.f12486e;
                        if (i22 != iArr[i21][0]) {
                            i21++;
                        } else if (i22 != 0) {
                            this.f12485d = i21;
                        }
                    }
                }
                int i23 = this.f12486e;
                if (i23 == 18) {
                    for (int i24 = 0; i24 < (b3 & 255); i24++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                } else if (i23 == 19) {
                    for (int i25 = 0; i25 < (b3 & 255); i25++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                } else if (i23 == 26) {
                    for (int i26 = 0; i26 < (b3 & 255); i26++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
                } else if (i23 == 27) {
                    for (int i27 = 0; i27 < (b3 & 255); i27++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                } else if (i23 != 32) {
                    if (i23 != 33) {
                        int i28 = b3 & 255;
                        if (i28 == 1) {
                            if (i21 < iArr.length) {
                                l0.b0.l0(iArr[i21][1], 0);
                            }
                        } else if (i28 == 0) {
                            int i29 = this.f12485d;
                            if (i29 < iArr.length && i29 != 255) {
                                l0.b0.l0(iArr[i29][1], 1);
                            }
                            this.f12485d = 255;
                        }
                    } else if (b3 == 1) {
                        F3();
                    }
                    break;
                } else if (!SystemProperties.getBoolean("persist.fyt.showduduair", false) && (i4 = nt.f8633a) != 2490807 && i4 != 8651204 && i4 != 2556343 && i4 != 11796934 && i4 != 11862470 && b3 == 1) {
                    o1.x.C(nt.f8643f, 128, new int[]{1}, null, null);
                    break;
                }
                break;
            case 34:
                byte b4 = bArr[i2 + 2];
                int i30 = bArr[i2 + 3] & 255;
                if (i30 == 1) {
                    switch (b4) {
                        case 55:
                            z.k.s(227, -124, 2, 28, 1);
                            a.i.a0(200L);
                            z.k.s(227, -124, 2, 28, 0);
                            z2 = true;
                            break;
                        case 56:
                            z.k.s(227, -124, 2, 29, 1);
                            a.i.a0(200L);
                            z.k.s(227, -124, 2, 29, 0);
                            z2 = true;
                            break;
                        case 57:
                            if (!SystemProperties.getBoolean("persist.fyt.showduduair", false)) {
                                l0.b0.l0(62, 0);
                                l0.b0.l0(62, 1);
                            }
                            z2 = true;
                            break;
                        default:
                            z2 = false;
                            break;
                    }
                } else {
                    z2 = false;
                }
                if (!z2) {
                    this.f12486e = (b4 | 128) & 255;
                    int i31 = 0;
                    while (true) {
                        iArr2 = this.f12487f;
                        if (i31 < iArr2.length) {
                            int i32 = this.f12486e;
                            if (i32 != iArr2[i31][0]) {
                                i31++;
                            } else if (i32 != 0) {
                                this.f12485d = i31;
                            }
                        }
                    }
                    if (i30 == 0) {
                        int i33 = this.f12485d;
                        if (i33 < iArr2.length && i33 != 255) {
                            l0.b0.l0(iArr2[i33][1], 1);
                        }
                        this.f12485d = 255;
                    } else if (i31 < iArr2.length) {
                        l0.b0.l0(iArr2[i31][1], 0);
                    }
                }
                break;
            case 35:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                byte b7 = bArr[i2 + 4];
                byte b8 = bArr[i2 + 5];
                byte b9 = bArr[i2 + 6];
                qt.y0(10, (b5 >> 7) & 1);
                qt.y0(11, (b5 >> 6) & 1);
                qt.y0(12, (b5 >> 5) & 1);
                qt.y0(57, (b5 >> 4) & 1);
                qt.y0(13, (b5 >> 3) & 1);
                qt.y0(14, (b5 >> 2) & 1);
                qt.y0(16, (b5 >> 1) & 1);
                qt.y0(65, (b5 >> 0) & 1);
                switch (b6 & 255) {
                    case 1:
                        i5 = 0;
                        i6 = 0;
                        i7 = 1;
                        break;
                    case 2:
                        i5 = 0;
                        i7 = 1;
                        i6 = i7;
                        break;
                    case 3:
                        i5 = 0;
                        i7 = 0;
                        i6 = 1;
                        break;
                    case 4:
                        i7 = 0;
                        i5 = 1;
                        i6 = 1;
                        break;
                    case 5:
                        i7 = 0;
                        i6 = 0;
                        i5 = 1;
                        break;
                    case 6:
                        i6 = 0;
                        i5 = 1;
                        i7 = 1;
                        break;
                    case 7:
                        i5 = 1;
                        i7 = i5;
                        i6 = i7;
                        break;
                    default:
                        i5 = 0;
                        i7 = i5;
                        i6 = i7;
                        break;
                }
                qt.y0(18, i5);
                qt.y0(19, i7);
                qt.y0(20, i6);
                int i34 = b7 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i34 <= 8) {
                    qt.y0(21, i34);
                }
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    int i35 = b8 & 255;
                    if (i35 == 0) {
                        qt.y0(28, -2);
                    } else if (i35 == 255) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, i35);
                    }
                    int i36 = b9 & 255;
                    if (i36 == 0) {
                        qt.y0(27, -2);
                    } else if (i36 == 255) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, i36);
                    }
                } else {
                    int i37 = b8 & 255;
                    if (i37 == 0) {
                        qt.y0(27, -2);
                    } else if (i37 == 255) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, i37);
                    }
                    int i38 = b9 & 255;
                    if (i38 == 0) {
                        qt.y0(28, -2);
                    } else if (i38 == 255) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, i38);
                    }
                }
                int i39 = bArr[i2 + 7] & 255;
                if (i39 == 255 || i39 == 0) {
                    u0.d.A3(0);
                } else {
                    u0.d.A3((i39 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                }
                int i40 = nt.f8633a;
                if (i40 != 2490807 && i40 != 8651204 && i40 != 2556343 && i40 != 11796934 && i40 != 11862470 && i40 != 7078327 && i40 != 7143863 && i40 != 7602615 && i40 != 11272631) {
                    byte b10 = bArr[i2 + 8];
                    qt.y0(29, (b10 >> 4) & 15);
                    qt.y0(30, (b10 >> 0) & 15);
                    int i41 = bArr[i2 + 9] & 255;
                    qt.y0(31, (i41 >> 4) & 15);
                    qt.y0(32, (i41 >> 0) & 15);
                    int i42 = bArr[i2 + 10] & 255;
                    qt.y0(93, (i42 >> 4) & 15);
                    qt.y0(94, (i42 >> 0) & 15);
                    int i43 = bArr[i2 + 11] & 255;
                    qt.y0(95, (i43 >> 4) & 15);
                    qt.y0(96, (i43 >> 0) & 15);
                    break;
                }
                break;
            case 36:
                int i44 = nt.f8633a;
                if (i44 == 1376695 || i44 == 1769911 || i44 == 15598007 || i44 == 15663543 || i44 == 16122308 || i44 == 16187844 || i44 == 16253380 || i44 == 16318916 || i44 == 16384452 || i44 == 16449988 || i44 == 12124615 || i44 == 12190151) {
                    byte b11 = bArr[i2 + 2];
                    byte b12 = bArr[i2 + 3];
                    byte b13 = bArr[i2 + 4];
                    byte b14 = bArr[i2 + 5];
                    qt.y0(42, (b11 >> 7) & 1);
                    qt.y0(43, (b11 >> 3) & 1);
                    int i45 = b12 & 255;
                    if (i45 != 1) {
                        if (i45 == 2) {
                            i9 = 1;
                        } else if (i45 != 3) {
                            i9 = 0;
                        } else {
                            i9 = 0;
                            i8 = 1;
                        }
                        i8 = i9;
                    } else {
                        i8 = 0;
                        i9 = 1;
                    }
                    qt.y0(46, i9);
                    qt.y0(47, i8);
                    qt.y0(44, b13 & DhcpPacket.DHCP_DOMAIN_NAME);
                    int i46 = b14 & 255;
                    if (i46 == 0) {
                        qt.y0(40, -2);
                    } else if (i46 == 255) {
                        qt.y0(40, -3);
                    } else {
                        qt.y0(40, i46);
                    }
                    qt.y0(88, bArr[i2 + 6] & DhcpPacket.DHCP_DOMAIN_NAME);
                }
                break;
            default:
                switch (i12) {
                    case 38:
                        int i47 = nt.f8633a;
                        if (i47 == 2490807 || i47 == 8651204 || i47 == 2556343 || i47 == 11796934 || i47 == 11862470 || i47 == 7143863 || i47 == 7602615 || i47 == 11272631 || i47 == 7078327) {
                            u0.d.R2(l0.c0.L0(bArr[i2 + 2] & 255));
                            u0.d.S2(l0.c0.L0(bArr[i2 + 3] & 255));
                            u0.d.T2(l0.c0.L0(bArr[i2 + 4] & 255));
                            u0.d.U2(l0.c0.L0(bArr[i2 + 5] & 255));
                        } else {
                            u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                            u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                            u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                            u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                        }
                        break;
                    case 39:
                        int i48 = i2 + 2;
                        int i49 = bArr[i48] & 255;
                        int i50 = i2 + 3;
                        int i51 = bArr[i50] & 255;
                        int i52 = i2 + 4;
                        int i53 = bArr[i52] & 255;
                        int i54 = i2 + 5;
                        int i55 = bArr[i54] & 255;
                        if (i49 == 0 && i51 == 0 && i53 == 0 && i55 == 0) {
                            u0.d.C2(0);
                        } else if ((l0.c0.f13013g != i49 || l0.c0.f13014h != i51 || l0.c0.f13015i != i53 || l0.c0.f13016j != i55) && u0.b.f17347o == 0) {
                            u0.d.C2(1);
                            l0.c0.f13017k = 4;
                            l0.b0.b(l0.c0.f13018l);
                        }
                        l0.c0.f13013g = i49;
                        l0.c0.f13014h = i51;
                        l0.c0.f13015i = i53;
                        l0.c0.f13016j = i55;
                        int i56 = nt.f8633a;
                        if (i56 == 2490807 || i56 == 8651204 || i56 == 2556343 || i56 == 11796934 || i56 == 11862470 || i56 == 7143863 || i56 == 7602615 || i56 == 11272631 || i56 == 7078327) {
                            u0.d.D2(l0.c0.L0(bArr[i48] & 255));
                            u0.d.E2(l0.c0.L0(bArr[i50] & 255));
                            u0.d.F2(l0.c0.L0(bArr[i52] & 255));
                            u0.d.G2(l0.c0.L0(bArr[i54] & 255));
                        } else {
                            u0.d.D2(l0.c0.K0(bArr[i48] & 255));
                            u0.d.E2(l0.c0.K0(bArr[i50] & 255));
                            u0.d.F2(l0.c0.K0(bArr[i52] & 255));
                            u0.d.G2(l0.c0.K0(bArr[i54] & 255));
                        }
                        break;
                    case 40:
                        byte b15 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(2, (b15 >> 6) & 1);
                            qt.y0(1, (b15 >> 7) & 1);
                        } else {
                            qt.y0(2, (b15 >> 7) & 1);
                            qt.y0(1, (b15 >> 6) & 1);
                        }
                        qt.y0(4, (b15 >> 5) & 1);
                        qt.y0(3, (b15 >> 4) & 1);
                        qt.y0(0, (b15 >> 2) & 1);
                        qt.y0(5, (b15 >> 3) & 1);
                        break;
                    case 41:
                        qt.y0(118, bArr[i2 + 2] & 255);
                        qt.y0(119, bArr[i2 + 3] & 255);
                        qt.y0(120, bArr[i2 + 4] & 255);
                        qt.y0(121, bArr[i2 + 5] & 255);
                        break;
                    default:
                        switch (i12) {
                            case 48:
                                int i57 = i2 + 2;
                                int i58 = i2 + 3;
                                qt.y0(140, ((255 & bArr[i58]) | ((bArr[i57] << 8) & 65280)) & 65535);
                                if (!this.f12491j) {
                                    qt.i(bArr[i58], bArr[i57], true, 5500);
                                }
                                break;
                            case 49:
                                int i59 = i2 + 2;
                                qt.y0(101, (bArr[i59] >> 4) & 15);
                                qt.y0(102, bArr[i59] & DhcpPacket.DHCP_DOMAIN_NAME);
                                int i60 = i2 + 3;
                                qt.y0(103, (bArr[i60] >> 4) & 15);
                                qt.y0(104, (bArr[i60] >> 3) & 1);
                                qt.y0(131, (bArr[i60] >> 2) & 1);
                                qt.y0(105, (bArr[i60] >> 1) & 1);
                                qt.y0(106, (bArr[i60] >> 0) & 1);
                                int i61 = i2 + 4;
                                qt.y0(107, (bArr[i61] >> 7) & 1);
                                qt.y0(108, (bArr[i61] >> 6) & 1);
                                qt.y0(109, (bArr[i61] >> 4) & 3);
                                qt.y0(110, (bArr[i61] >> 3) & 1);
                                qt.y0(111, (bArr[i61] >> 2) & 1);
                                qt.y0(112, (bArr[i61] >> 1) & 1);
                                qt.y0(113, (bArr[i61] >> 0) & 1);
                                int i62 = nt.f8633a;
                                if (i62 == 1376695 || i62 == 1769911 || i62 == 15598007 || i62 == 15663543 || i62 == 16122308 || i62 == 16187844 || i62 == 16253380 || i62 == 16318916 || i62 == 16384452 || i62 == 16449988 || i62 == 12124615 || i62 == 12190151) {
                                    int i63 = i2 + 5;
                                    qt.y0(129, (bArr[i63] >> 1) & 1);
                                    qt.y0(130, (bArr[i63] >> 0) & 1);
                                    qt.y0(150, (bArr[i63] >> 2) & 3);
                                    qt.y0(153, (bArr[i63] >> 4) & 15);
                                    int i64 = i2 + 6;
                                    qt.y0(154, (bArr[i64] >> 7) & 1);
                                    qt.y0(155, (bArr[i64] >> 6) & 1);
                                    qt.y0(156, (bArr[i64] >> 4) & 3);
                                    qt.y0(157, (bArr[i64] >> 2) & 1);
                                    qt.y0(158, (bArr[i64] >> 1) & 1);
                                    qt.y0(159, (bArr[i64] >> 0) & 1);
                                    int i65 = i2 + 7;
                                    qt.y0(160, (bArr[i65] >> 7) & 1);
                                    qt.y0(161, (bArr[i65] >> 6) & 1);
                                    qt.y0(162, (bArr[i65] >> 5) & 1);
                                    qt.y0(163, (bArr[i65] >> 4) & 1);
                                    qt.y0(164, (bArr[i65] >> 0) & 7);
                                } else {
                                    int i66 = i2 + 5;
                                    qt.y0(129, (bArr[i66] >> 7) & 1);
                                    qt.y0(130, (bArr[i66] >> 6) & 1);
                                    qt.y0(151, (bArr[i66] >> 5) & 1);
                                    qt.y0(150, (bArr[i66] >> 3) & 1);
                                    qt.y0(181, (bArr[i66] >> 4) & 1);
                                    qt.y0(152, (bArr[i66] >> 2) & 1);
                                    int i67 = i2 + 6;
                                    qt.y0(154, (bArr[i67] >> 7) & 1);
                                    qt.y0(155, (bArr[i67] >> 6) & 1);
                                    qt.y0(156, (bArr[i67] >> 4) & 3);
                                    qt.y0(165, (bArr[i67] >> 3) & 1);
                                    qt.y0(157, (bArr[i67] >> 2) & 1);
                                    qt.y0(158, (bArr[i67] >> 1) & 1);
                                    qt.y0(159, (bArr[i67] >> 0) & 1);
                                    int i68 = i2 + 7;
                                    qt.y0(160, (bArr[i68] >> 7) & 1);
                                    qt.y0(161, (bArr[i68] >> 6) & 1);
                                    qt.y0(162, (bArr[i68] >> 5) & 1);
                                    qt.y0(163, (bArr[i68] >> 4) & 1);
                                    qt.y0(164, (bArr[i68] >> 0) & 7);
                                    int i69 = i2 + 8;
                                    qt.y0(166, (bArr[i69] >> 7) & 1);
                                    qt.y0(167, (bArr[i69] >> 6) & 1);
                                    qt.y0(168, (bArr[i69] >> 5) & 1);
                                    qt.y0(169, (bArr[i69] >> 0) & 31);
                                    int i70 = i2 + 9;
                                    qt.y0(170, (bArr[i70] >> 7) & 1);
                                    qt.y0(171, (bArr[i70] >> 6) & 1);
                                    qt.y0(172, (bArr[i70] >> 5) & 1);
                                    qt.y0(173, (bArr[i70] >> 4) & 1);
                                    qt.y0(174, (bArr[i70] >> 2) & 3);
                                    qt.y0(175, (bArr[i70] >> 0) & 3);
                                    int i71 = i2 + 10;
                                    qt.y0(176, (bArr[i71] >> 7) & 1);
                                    qt.y0(177, (bArr[i71] >> 6) & 1);
                                    qt.y0(178, (bArr[i71] >> 2) & 3);
                                    qt.y0(179, (bArr[i71] >> 0) & 3);
                                    qt.y0(180, (bArr[i2 + 11] >> 0) & 15);
                                }
                                break;
                            case 50:
                                qt.y0(114, bArr[i2 + 2] & 255);
                                break;
                            case 51:
                                byte b16 = bArr[i2 + 2];
                                int i72 = this.f12490i;
                                if (b16 != i72) {
                                    if (b16 > i72) {
                                        for (int i73 = 0; i73 < b16 - this.f12490i; i73++) {
                                            l0.b0.l0(7, 0);
                                        }
                                        l0.b0.l0(7, 1);
                                    } else if (b16 < i72) {
                                        for (int i74 = 0; i74 < this.f12490i - b16; i74++) {
                                            l0.b0.l0(8, 0);
                                        }
                                        l0.b0.l0(8, 1);
                                    }
                                    this.f12490i = b16;
                                }
                                break;
                            case 52:
                                int i75 = nt.f8633a;
                                if (i75 == 2490807 || i75 == 8651204 || i75 == 2556343 || i75 == 11796934 || i75 == 11862470) {
                                    byte b17 = bArr[i2 + 2];
                                    byte b18 = bArr[i2 + 3];
                                    byte b19 = bArr[i2 + 4];
                                    byte b20 = bArr[i2 + 5];
                                    qt.y0(42, (b17 >> 7) & 1);
                                    qt.y0(43, (b17 >> 6) & 1);
                                    int i76 = b18 & 255;
                                    if (i76 != 1) {
                                        if (i76 == 2) {
                                            i11 = 1;
                                        } else if (i76 != 3) {
                                            i11 = 0;
                                        } else {
                                            i11 = 0;
                                            i10 = 1;
                                        }
                                        i10 = i11;
                                    } else {
                                        i10 = 0;
                                        i11 = 1;
                                    }
                                    qt.y0(46, i11);
                                    qt.y0(47, i10);
                                    qt.y0(44, b19 & DhcpPacket.DHCP_DOMAIN_NAME);
                                    int i77 = b20 & 255;
                                    if (i77 == 0) {
                                        qt.y0(40, -2);
                                    } else if (i77 == 255) {
                                        qt.y0(40, -3);
                                    } else {
                                        qt.y0(40, i77);
                                    }
                                }
                                break;
                            case 53:
                                int i78 = nt.f8633a;
                                if (i78 == 2490807 || i78 == 8651204 || i78 == 2556343 || i78 == 11796934 || i78 == 11862470 || i78 == 7078327 || i78 == 7143863 || i78 == 7602615 || i78 == 11272631) {
                                    if ((i78 == 2490807 || i78 == 8651204 || i78 == 2556343 || i78 == 7078327 || i78 == 7143863) && !SystemProperties.getBoolean("persist.fyt.showduduair", false) && App.c().getResources().getConfiguration().orientation != 1 && !qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_NewAdd_HP2")) {
                                        l0.b0.l0(62, 0);
                                        l0.b0.l0(62, 1);
                                    }
                                    int i79 = bArr[i2 + 2] & 255;
                                    qt.y0(29, (i79 >> 4) & 15);
                                    qt.y0(30, (i79 >> 0) & 15);
                                    qt.y0(88, bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
                                    int i80 = bArr[i2 + 4] & 255;
                                    qt.y0(31, (i80 >> 4) & 15);
                                    qt.y0(32, (i80 >> 0) & 15);
                                    int i81 = bArr[i2 + 5] & 255;
                                    qt.y0(93, (i81 >> 4) & 15);
                                    qt.y0(94, (i81 >> 0) & 15);
                                    int i82 = bArr[i2 + 6] & 255;
                                    qt.y0(95, (i82 >> 4) & 15);
                                    qt.y0(96, (i82 >> 0) & 15);
                                }
                                break;
                            case 54:
                                qt.y0(122, bArr[i2 + 2] & 255);
                                qt.y0(123, bArr[i2 + 3] & 255);
                                qt.y0(124, bArr[i2 + 4] & 255);
                                qt.y0(125, bArr[i2 + 5] & 255);
                                break;
                            case 55:
                                int i83 = nt.f8633a;
                                if (i83 != 12124615 && i83 != 12190151 && i83 != 16318916) {
                                    qt.y0(142, bArr[i2 + 2] & 255);
                                    qt.y0(143, bArr[i2 + 3] & 255);
                                    qt.y0(144, bArr[i2 + 4] & 255);
                                    qt.y0(145, bArr[i2 + 5] & 255);
                                    qt.y0(146, bArr[i2 + 6] & 255);
                                    qt.y0(147, bArr[i2 + 7] & 255);
                                    qt.y0(149, bArr[i2 + 8] & 3);
                                    qt.y0(148, bArr[i2 + 9] & 255);
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
        this.G.j();
        qt.q0(this.F);
        o1.h.f16865a.d(this.E);
        o1.h.f16867c.d(this.A);
        u0.c.f17386m.d(this.f12500s);
        l0.b0.p0(this.f12501t);
        qt.q0(this.f12502u);
        h0.d.f2464c.d(this.f12505x);
        h0.d.f2462a.d(this.f12505x);
        y0.g.f18094d.d(this.f12498q);
        u0.c.f17379f.d(this.f12493l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 182) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int i3;
        if (i2 == 0) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, -124, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 131, 3, iArr[0], iArr[1], 0);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            O3(iArr[0]);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            int i4 = nt.f8633a;
            if (i4 == 2490807 || i4 == 8651204 || i4 == 2556343 || i4 == 11796934 || i4 == 11862470) {
                z.k.s(227, -124, 2, iArr[0], iArr[1]);
                return;
            } else {
                z.k.s(227, -123, 2, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            int i5 = nt.f8633a;
            if (i5 != 12124615 && i5 != 12190151 && i5 != 16318916) {
                z.k.s(227, 134, 2, iArr[0], iArr[1]);
                return;
            }
            switch (iArr[0]) {
                case 1:
                    N3(iArr[1]);
                    break;
                case 2:
                    M3(iArr[1]);
                    break;
                case 3:
                    J3(iArr[1]);
                    break;
                case 4:
                    H3(iArr[1]);
                    break;
                case 5:
                    G3(iArr[1]);
                    break;
                case 6:
                    I3(iArr[1]);
                    break;
                case 7:
                    L3(iArr[1]);
                    break;
                case 8:
                    K3(iArr[1]);
                    break;
            }
            return;
        }
        if (i2 == 5) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1005) {
            int i6 = nt.f8633a;
            if (i6 == 2490807 || i6 == 8651204 || i6 == 2556343 || i6 == 11796934 || i6 == 11862470 || i6 == 11272631 || i6 == 7143863 || i6 == 524532) {
                z.k.s(227, 131, 3, 10, iArr[0] + 1, 0);
                return;
            }
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CAMERA_MODE == " + iArr[0]);
            if (iArr[0] == 0) {
                i3 = 1;
            } else if (iArr[0] == 1) {
                i3 = 2;
            } else if (iArr[0] == 2) {
                i3 = 7;
            } else {
                i3 = iArr[0] == 3 ? 8 : 0;
            }
            z.k.s(227, 131, 3, 10, (byte) i3, 255);
            return;
        }
        if (i2 == 1029 && T2(iArr, 2)) {
            a.f.p().t(LogType.CANBUS, "touch_x = " + iArr[1] + "\\\\\\touch_y = " + iArr[2] + "touch_state = " + iArr[0]);
            if (App.c().getResources().getConfiguration().orientation != 1) {
                int i7 = iArr[1];
                int i8 = iArr[2];
                if (iArr[0] == 0) {
                    if (i7 > a.f.w() - ((a.f.w() * 70) / 1024) && i8 < (a.f.i() * 70) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                        z.k.s(227, 131, 3, 10, 5, 0);
                        return;
                    }
                    if (i7 < (a.f.w() * MediaProperties.HEIGHT_360) / 1024 && i8 < (a.f.i() * 150) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                        z.k.s(227, 131, 3, 10, 1, 0);
                        return;
                    }
                    if (i7 < (a.f.w() * 100) / 1024 && i8 < (a.f.i() * 450) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR && i8 > (a.f.i() * 200) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                        z.k.s(227, 131, 3, 10, 3, 0);
                        return;
                    }
                    if (i7 < (a.f.w() * 420) / 1024 && i7 > (a.f.w() * 220) / 1024 && i8 < (a.f.i() * 450) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR && i8 > (a.f.i() * 200) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                        z.k.s(227, 131, 3, 10, 4, 0);
                    } else {
                        if (i7 >= (a.f.w() * 260) / 1024 || i8 <= (a.f.i() * 480) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                            return;
                        }
                        z.k.s(227, 131, 3, 10, 2, 0);
                    }
                }
            }
        }
    }

    public final void a3(int i2) {
        z.k.s(227, -124, 2, i2, 1);
        a.i.a0(200L);
        z.k.s(227, -124, 2, i2, 0);
    }
}
