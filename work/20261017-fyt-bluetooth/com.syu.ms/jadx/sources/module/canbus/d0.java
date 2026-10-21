package module.canbus;

import android.bluetooth.BluetoothClass;
import android.content.Intent;
import android.drm.DrmManagerClient;
import android.media.MediaPlayer;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;
import k0.lt;
import k0.nt;
import k0.qt;
import o1.o0;
import o1.s0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class d0 extends lt implements o1.q {
    public static int Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static int f13863a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static int f13864b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static int f13865c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static int f13866d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static int f13867e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static int f13868f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static int f13869g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static int f13870h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static int f13871i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static int f13872j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static int f13873k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static int f13874l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static int f13875m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static int f13876n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static final int[] f13877o0 = {0, 3, 6, 9, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63};

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final int[] f13878p0 = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static final int[] f13879q0 = {0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 14};

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static final o1.f<q> f13880r0 = new o1.f<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13891l;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f13896q;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f13900u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f13881b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13882c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13883d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13884e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f13885f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13886g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f13887h = new int[5][];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f13888i = new int[15][];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public o1.g0 f13889j = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f13890k = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13892m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f13893n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f13894o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int[][] f13895p = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 6}, new int[]{22, 16}, new int[]{24, 5}, new int[]{25, 9}, new int[]{26, 21}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 27}, new int[]{132, 28}, new int[]{133, 3}, new int[]{134, 4}, new int[]{135, 0}, new int[]{136, 2}, new int[]{11, 2}};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f13897r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int[][] f13898s = {new int[]{1, 7}, new int[]{4, 8}, new int[]{7, 20}, new int[]{8, 68}, new int[]{10, 19}, new int[]{11, 67}, new int[]{12, 18}, new int[]{13, 18}, new int[]{14, 38}, new int[]{15, 38}, new int[]{16, 2}, new int[]{17, 2}, new int[]{18, 26}, new int[]{19, 13}, new int[]{20, 13}, new int[]{21, 5}, new int[]{22, 5}, new int[]{23, 6}, new int[]{24, 6}, new int[]{25, 12}, new int[]{26, 25}, new int[]{27, 25}, new int[]{28, -1}, new int[]{29, 26}, new int[]{30, -1}, new int[]{31, 62}, new int[]{32, 12}};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int[][] f13899t = {new int[]{1, 75}, new int[]{4, 53}, new int[]{5, 74}, new int[]{6, 54}, new int[]{16, 27}, new int[]{17, 28}, new int[]{18, 3}, new int[]{19, 4}, new int[]{20, 64}, new int[]{21, 0}};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f13901v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int[][] f13902w = {new int[]{1, 75}, new int[]{2, 74}, new int[]{3, 54}, new int[]{4, 54}, new int[]{5, 76}, new int[]{6, 53}, new int[]{7, 1}};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f13903x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f13904y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f13905z = new h();
    public boolean A = false;
    public Runnable B = new i();
    public long C = -1;
    public int D = -1;
    public Runnable E = new j();
    public Runnable F = new k();
    public Runnable G = new l();
    public Runnable H = new m();
    public Runnable I = new n();
    public Runnable J = new o();
    public Runnable K = new p();
    public Runnable L = new a();
    public float M = 0.0f;
    public int N = 255;
    public int O = 255;
    public Runnable P = new b();
    public Runnable Q = new c();
    public Runnable R = new d();
    public byte S = 10;
    public Runnable T = new e();
    public Runnable U = new f();
    public int V = 0;
    public int W = 100;
    public Runnable X = new g();
    public int Y = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d0.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            double d2;
            double d3;
            double d4;
            double d5;
            double d6;
            double d7;
            d0.this.M = u0.b.f17359s0;
            int i2 = nt.f8637c;
            if ((i2 >= 42 && i2 <= 78) || i2 == 87 || i2 == 88) {
                if ((d0.this.M <= 22.5d && d0.this.M >= 0.0f) || (d0.this.M >= 337.5d && d0.this.M <= 360.0f)) {
                    d0.this.O = 4;
                } else if (d0.this.M > 22.5d && d0.this.M < 67.5d) {
                    d0.this.O = 5;
                } else if (d0.this.M >= 67.5d && d0.this.M <= 112.5d) {
                    d0.this.O = 6;
                } else if (d0.this.M <= 112.5d || d0.this.M >= 157.5d) {
                    if (d0.this.M >= 157.5d) {
                        d5 = 202.5d;
                        if (d0.this.M <= 202.5d) {
                            d0.this.O = 0;
                        }
                    } else {
                        d5 = 202.5d;
                    }
                    if (d0.this.M > d5) {
                        d6 = 247.5d;
                        if (d0.this.M < 247.5d) {
                            d0.this.O = 1;
                        }
                    } else {
                        d6 = 247.5d;
                    }
                    if (d0.this.M >= d6) {
                        d7 = 292.5d;
                        if (d0.this.M <= 292.5d) {
                            d0.this.O = 2;
                        }
                    } else {
                        d7 = 292.5d;
                    }
                    if (d0.this.M <= d7 || d0.this.M >= 337.5d) {
                        d0.this.O = 4;
                    } else {
                        d0.this.O = 3;
                    }
                } else {
                    d0.this.O = 7;
                }
                if (d0.this.O != d0.this.N) {
                    z.k.s(227, 131, 2, 48, d0.this.O);
                    d0 d0Var = d0.this;
                    d0Var.N = d0Var.O;
                    return;
                }
                return;
            }
            if ((d0.this.M <= 7.5d && d0.this.M >= 0.0f) || (d0.this.M >= 352.5d && d0.this.M <= 360.0f)) {
                d0.this.O = 0;
            } else if (d0.this.M > 7.5d && d0.this.M < 22.5d) {
                d0.this.O = 1;
            } else if (d0.this.M >= 22.5d && d0.this.M <= 37.5d) {
                d0.this.O = 2;
            } else if (d0.this.M > 37.5d && d0.this.M < 52.5d) {
                d0.this.O = 3;
            } else if (d0.this.M >= 52.5d && d0.this.M <= 67.5d) {
                d0.this.O = 4;
            } else if (d0.this.M > 67.5d && d0.this.M < 82.5d) {
                d0.this.O = 5;
            } else if (d0.this.M >= 82.5d && d0.this.M <= 97.5d) {
                d0.this.O = 6;
            } else if (d0.this.M > 97.5d && d0.this.M < 112.5d) {
                d0.this.O = 7;
            } else if (d0.this.M > 112.5d && d0.this.M < 127.5d) {
                d0.this.O = 8;
            } else if (d0.this.M > 127.5d && d0.this.M < 142.5d) {
                d0.this.O = 9;
            } else if (d0.this.M > 142.5d && d0.this.M < 157.5d) {
                d0.this.O = 10;
            } else if (d0.this.M > 157.5d && d0.this.M < 172.5d) {
                d0.this.O = 11;
            } else if (d0.this.M <= 172.5d || d0.this.M >= 187.5d) {
                if (d0.this.M > 187.5d) {
                    d2 = 202.5d;
                    if (d0.this.M < 202.5d) {
                        d0.this.O = 13;
                    }
                } else {
                    d2 = 202.5d;
                }
                if (d0.this.M > d2 && d0.this.M < 217.5d) {
                    d0.this.O = 14;
                } else if (d0.this.M <= 217.5d || d0.this.M >= 232.5d) {
                    if (d0.this.M > 232.5d) {
                        d3 = 247.5d;
                        if (d0.this.M < 247.5d) {
                            d0.this.O = 16;
                        }
                    } else {
                        d3 = 247.5d;
                    }
                    if (d0.this.M > d3 && d0.this.M < 262.5d) {
                        d0.this.O = 17;
                    } else if (d0.this.M <= 262.5d || d0.this.M >= 277.5d) {
                        if (d0.this.M > 277.5d) {
                            d4 = 292.5d;
                            if (d0.this.M < 292.5d) {
                                d0.this.O = 19;
                            }
                        } else {
                            d4 = 292.5d;
                        }
                        if (d0.this.M > d4 && d0.this.M < 307.5d) {
                            d0.this.O = 20;
                        } else if (d0.this.M > 307.5d && d0.this.M < 322.5d) {
                            d0.this.O = 21;
                        } else if (d0.this.M > 325.5d && d0.this.M < 337.5d) {
                            d0.this.O = 22;
                        } else if (d0.this.M <= 337.5d || d0.this.M >= 352.5d) {
                            d0.this.O = 0;
                        } else {
                            d0.this.O = 23;
                        }
                    } else {
                        d0.this.O = 18;
                    }
                } else {
                    d0.this.O = 15;
                }
            } else {
                d0.this.O = 12;
            }
            if (d0.this.O != d0.this.N) {
                z.k.s(227, 145, 1, d0.this.O);
                qt.y0(210, u0.b.f17359s0);
                d0 d0Var2 = d0.this;
                d0Var2.N = d0Var2.O;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = 16;
            int i3 = (nt.f8633a >> 16) & 255;
            switch (nt.f8637c) {
                case 8:
                case 21:
                case 26:
                case 27:
                case 28:
                case 29:
                case 42:
                case 55:
                case 60:
                case 61:
                case 62:
                case 63:
                    i2 = 0;
                    break;
                case 9:
                case 22:
                case 43:
                case 56:
                    i2 = 1;
                    break;
                case 10:
                case 23:
                case 44:
                case 57:
                    i2 = 2;
                    break;
                case 11:
                case 24:
                case 45:
                case 58:
                case 88:
                    i2 = 3;
                    break;
                case 12:
                case 46:
                    i2 = 5;
                    break;
                case 13:
                case 25:
                case 47:
                case 59:
                    i2 = 6;
                    break;
                case 14:
                case 48:
                    i2 = 9;
                    break;
                case 15:
                case 49:
                    i2 = 8;
                    break;
                case 16:
                case 50:
                    i2 = 10;
                    break;
                case 17:
                case 51:
                    i2 = 11;
                    break;
                case 18:
                case 52:
                    i2 = 12;
                    break;
                case 19:
                case 53:
                    i2 = 13;
                    break;
                case 20:
                case 32:
                case 54:
                case 66:
                default:
                    i2 = -1;
                    break;
                case 30:
                case 64:
                    i2 = 14;
                    break;
                case 31:
                case 65:
                    i2 = 15;
                    break;
                case 33:
                case 85:
                case 101:
                    i2 = 36;
                    break;
                case 34:
                case 86:
                    i2 = 37;
                    break;
                case 35:
                case 89:
                case 102:
                    i2 = 38;
                    break;
                case 36:
                case 37:
                case 70:
                case 71:
                case 78:
                    i2 = 19;
                    break;
                case 38:
                case 39:
                case 72:
                case 73:
                    i2 = 18;
                    break;
                case 40:
                case 41:
                case 74:
                case 75:
                    i2 = 20;
                    break;
                case 67:
                case 68:
                case 69:
                    i2 = 23;
                    break;
                case 76:
                    i2 = 21;
                    break;
                case 77:
                    i2 = 22;
                    break;
                case 79:
                    i2 = 17;
                    break;
                case 80:
                case 98:
                    break;
                case 81:
                case 99:
                    i2 = 32;
                    break;
                case 82:
                    i2 = 33;
                    break;
                case 83:
                case 100:
                    i2 = 34;
                    break;
                case 84:
                    i2 = 35;
                    break;
                case 87:
                    i2 = 24;
                    break;
                case 90:
                    i2 = 41;
                    break;
                case 91:
                case 92:
                case 103:
                case 104:
                    i2 = 40;
                    break;
                case 93:
                    i2 = 48;
                    break;
                case 94:
                    i2 = 49;
                    break;
                case 95:
                    i2 = 50;
                    break;
                case 96:
                    i2 = 51;
                    break;
                case 97:
                    i2 = 52;
                    break;
            }
            if (i2 != -1) {
                z.k.s(227, -30, 1, i2);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 2, 29, 0);
                z.k.s(227, 144, 2, 30, 0);
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(d0.this.U);
            d0.this.S = (byte) 5;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d0 d0Var = d0.this;
            byte b2 = (byte) (d0Var.S - 1);
            d0Var.S = b2;
            if (b2 <= 0) {
                l0.b0.p0(d0Var.U);
                d0.this.S = (byte) 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            z.k.s(227, 144, 2, 50, 0);
            z.k.s(227, -112, 2, 48, 0);
            int i2 = u0.b.D;
            if (i2 == 11) {
                if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.PAToyotaXMRadioAct")) {
                    return;
                }
                Intent intent = new Intent();
                intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.ziyouguang.PAToyotaXMRadioAct");
                intent.addCategory(Intent.CATEGORY_DEFAULT);
                intent.setFlags(268435456);
                App.c().startActivity(intent);
                return;
            }
            if (i2 != 13 || nt.f8645g[218] == 1 || qt.i0().equals("com.syu.carinfo.xp.ziyouguang.PAToyotaCarCDAct")) {
                return;
            }
            Intent intent2 = new Intent();
            intent2.setClassName("com.syu.canbus", "com.syu.carinfo.xp.ziyouguang.PAToyotaCarCDAct");
            intent2.addCategory(Intent.CATEGORY_DEFAULT);
            intent2.setFlags(268435456);
            App.c().startActivity(intent2);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (d0.this.W > 100) {
                    d0.i3(d0.this);
                    if (d0.this.Y == d0.this.W / 100) {
                        d0.this.Y = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = y0.f.f18055i;
                if (i2 == 0 || i3 == 1) {
                    int unused = d0.f13866d0 = d0.f13877o0[0];
                } else {
                    int unused2 = d0.f13866d0 = d0.f13877o0[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (d0.this.f7886a.f8307b == 1 && d0.f13865c0 != d0.f13866d0) {
                    d0.this.b4();
                }
                if (d0.this.f7886a.f8309d == 1) {
                    if (d0.f13867e0 != d0.f13870h0) {
                        d0.this.W3();
                    }
                    if (d0.f13868f0 != d0.f13871i0) {
                        d0.this.Z3();
                    }
                    if (d0.f13869g0 != d0.f13872j0) {
                        d0.this.a4();
                    }
                }
                if (d0.this.f7886a.f8308c == 1) {
                    if (d0.f13873k0 != d0.f13875m0) {
                        d0.this.X3();
                    }
                    if (d0.f13874l0 != d0.f13876n0) {
                        d0.this.V3();
                    }
                }
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d0.this.b4();
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            byte b2 = (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0);
            if (d0.this.C == millis && d0.this.D == b2) {
                return;
            }
            d0.this.C = millis;
            d0.this.D = b2;
            int i2 = time.hour;
            if (b2 == 1 && i2 > 12) {
                i2 -= 12;
            }
            z.k.s(227, 157, 6, i2, time.minute, (b2 << 7) & 128, time.monthDay, time.month + 1, time.year + DrmManagerClient.ERROR_UNKNOWN);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(207, u0.b.f17361t0);
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(208, (int) (u0.b.b2 * 10000.0d));
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(209, (int) (u0.b.c2 * 10000.0d));
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            int i3 = 3;
            if (i2 != 3) {
                if (i2 != 4) {
                    i3 = i2 != 5 ? 0 : 2;
                } else {
                    i3 = 1;
                }
            }
            d0.this.c4(i3, h0.c.f2437h);
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d0.this.R3((byte) 112, u0.b.i3);
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d0.this.R3((byte) 113, u0.b.j3);
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = w0.d.H;
            if (str == null) {
                d0.this.R3((byte) 112, "----");
            } else {
                d0.this.R3((byte) 112, str);
            }
        }
    }

    public static class q implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13922a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13923b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13924c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f13925d;

        public q(int i2, int i3) {
            this.f13922a = i2;
            this.f13925d = i3;
        }

        public synchronized void a(int i2) {
            this.f13923b = i2;
            if (!this.f13924c) {
                this.f13924c = true;
                o1.k.a().postDelayed(this, this.f13925d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 132, 2, this.f13922a, this.f13923b);
            this.f13924c = false;
        }
    }

    public static void Q3(int i2, int i3) {
        q qVarC = f13880r0.c(i2);
        if (qVarC != null) {
            qVarC.a(i3);
        }
    }

    public static void d4(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 ^ 255);
        z.k.q(bArr);
    }

    public static /* synthetic */ int i3(d0 d0Var) {
        int i2 = d0Var.Y;
        d0Var.Y = i2 + 1;
        return i2;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        switch (nt.f8637c) {
            case 93:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
                y0.f.C0 = 26;
                break;
            default:
                y0.f.C0 = 10;
                break;
        }
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        P3(1, 1);
                        P3(1, 0);
                    }
                } else if (nt.f8645g[10] == 0) {
                    P3(21, 1);
                    P3(21, 0);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        P3(23, 1);
                        P3(23, 0);
                    }
                } else if (nt.f8645g[11] == 0) {
                    P3(23, 1);
                    P3(23, 0);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        P3(21, 1);
                        P3(21, 0);
                    }
                } else if (nt.f8645g[13] == 0) {
                    P3(21, 1);
                    P3(21, 0);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        P3(25, 1);
                        P3(25, 0);
                    }
                } else if (nt.f8645g[12] == 0) {
                    P3(25, 1);
                    P3(25, 0);
                }
                break;
            case 39:
                int i2 = iArr[1];
                if (i2 == -2) {
                    P3(9, 1);
                    P3(9, 0);
                    break;
                } else if (i2 == -1) {
                    P3(10, 1);
                    P3(10, 0);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    P3(2, 1);
                    P3(2, 0);
                } else {
                    P3(3, 1);
                    P3(3, 0);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    P3(4, 1);
                    P3(4, 0);
                } else {
                    P3(5, 1);
                    P3(5, 0);
                }
                break;
        }
    }

    public final void O3(int i2) {
        if (i2 != 0) {
            i2 = 1;
        }
        z.k.s(227, 132, 2, 8, i2);
        d4(new byte[]{46, -124, 2, 8, (byte) i2, 0});
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        if (nt.a() && this.f7886a.f8309d == 1) {
            int[] iArr2 = f13878p0;
            int[] iArr3 = y0.f.f18038c0;
            f13870h0 = iArr2[o0.a(iArr3[0] >> 1, 0, 10)];
            f13871i0 = iArr2[o0.a(iArr3[1] >> 1, 0, 10)];
            f13872j0 = iArr2[o0.a(iArr3[2] >> 1, 0, 10)];
        }
    }

    public final void P3(int i2, int i3) {
        z.k.s(227, -32, 2, (byte) i2, (byte) i3);
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = f13879q0;
            f13875m0 = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f13876n0 = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    public final void R3(byte b2, String str) {
        if (str == null) {
            str = u0.b.D == 9 ? "  " : "Unkown";
        }
        int length = str.length();
        if (length > 30) {
            length = 30;
        }
        int i2 = length * 2;
        int[] iArr = new int[i2 + 4];
        iArr[0] = 227;
        iArr[1] = b2;
        iArr[2] = i2 + 1;
        iArr[3] = 16;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 4] = iCodePointAt & 255;
            iArr[i4 + 5] = (iCodePointAt >> 8) & 255;
        }
        z.k.s(iArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:32:0x007c  */
    /* JADX WARN: Code duplicated, block: B:35:0x008a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:40:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:44:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:47:0x013f  */
    /* JADX WARN: Code duplicated, block: B:48:0x0144  */
    /* JADX WARN: Code duplicated, block: B:51:0x0157  */
    /* JADX WARN: Code duplicated, block: B:54:0x016b  */
    /* JADX WARN: Code duplicated, block: B:56:0x016f  */
    /* JADX WARN: Code duplicated, block: B:63:0x0183  */
    /* JADX WARN: Code duplicated, block: B:65:0x0188  */
    /* JADX WARN: Code duplicated, block: B:67:0x0198  */
    /* JADX WARN: Code duplicated, block: B:68:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:72:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c9  */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    @Override // k0.lt
    public void S2() {
        /*
            Method dump skipped, instruction units count: 682
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: module.canbus.d0.S2():void");
    }

    public final void S3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }

    public void T3(byte[] bArr, int i2, int i3) {
        if (bArr[i2] != 49) {
            return;
        }
        this.f13885f = true;
        qt.y0(162, bArr[i2 + 5] & 255);
        byte b2 = bArr[i2 + 2];
        byte b3 = bArr[i2 + 3];
        byte b4 = bArr[i2 + 4];
        byte b5 = bArr[i2 + 6];
        qt.y0(164, (b2 >> 4) & 15);
        qt.y0(165, (b2 >> 0) & 15);
        qt.y0(166, (b3 >> 4) & 15);
        qt.y0(167, (b3 >> 0) & 15);
        qt.y0(173, (b4 >> 4) & 15);
        qt.y0(168, (b4 >> 0) & 15);
        qt.y0(169, (b5 >> 2) & 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int[][] iArr3;
        byte b2;
        byte b3;
        char c2;
        byte b4;
        byte b5;
        char c3;
        int i5;
        int[][] iArr4;
        int i6;
        byte b6;
        byte b7;
        int i7;
        int i8;
        byte b8 = bArr[i2];
        if (b8 == 53) {
            int i9 = i2 + 2;
            qt.y0(29, bArr[i9] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i10 = i2 + 3;
            qt.y0(30, bArr[i10] & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(31, (bArr[i9] >> 4) & 15);
            qt.y0(32, (bArr[i10] >> 4) & 15);
        }
        if (b8 == 65) {
            byte b9 = bArr[i2 + 2];
            if (b9 != 1) {
                if (b9 == 2) {
                    qt.y0(149, ((bArr[i2 + 3] & 255) << 16) | ((bArr[i2 + 4] & 255) << 8) | ((bArr[i2 + 5] & 255) << 0));
                    qt.y0(150, ((bArr[i2 + 6] & 255) << 8) | ((bArr[i2 + 7] & 255) << 0));
                    qt.y0(151, ((bArr[i2 + 8] & 255) << 16) | ((bArr[i2 + 9] & 255) << 8) | ((bArr[i2 + 10] & 255) << 0));
                    qt.y0(152, ((bArr[i2 + 11] & 255) << 16) | ((bArr[i2 + 12] & 255) << 8) | ((bArr[i2 + 13] & 255) << 0));
                    qt.y0(153, ((bArr[i2 + 14] & 255) << 8) | ((bArr[i2 + 15] & 255) << 0));
                    qt.y0(97, ((bArr[i2 + 17] & 255) << 0) | ((bArr[i2 + 16] & 255) << 8));
                    return;
                }
                if (b9 != 3) {
                    return;
                }
                int i11 = ((bArr[i2 + 3] & 255) << 8) | ((bArr[i2 + 4] & 255) << 0);
                qt.y0(154, i11);
                qt.y0(1032, i11);
                int i12 = i2 + 9;
                qt.y0(155, bArr[i12] & 255);
                int i13 = bArr[i12] & 255;
                u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((i13 & 128) != 0 ? 1320 - ((256 - i13) * 18) : (i13 * 18) + 1320) | 268435456) & (-1) : (i13 & 128) <= 0 ? (i13 * 10) + 1000 : 1000 - (((255 - i13) + 1) * 10));
                return;
            }
            byte b10 = bArr[i2 + 3];
            qt.y0(0, (b10 >> 5) & 1);
            qt.y0(5, (b10 >> 4) & 1);
            qt.y0(4, (b10 >> 3) & 1);
            qt.y0(3, (b10 >> 2) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b10 >> 0) & 1);
                qt.y0(1, (b10 >> 1) & 1);
            } else {
                qt.y0(1, (b10 >> 0) & 1);
                qt.y0(2, (b10 >> 1) & 1);
            }
            byte b11 = bArr[i2 + 6];
            byte b12 = bArr[i2 + 7];
            qt.y0(135, (b11 >> 7) & 1);
            qt.y0(136, (b11 >> 6) & 1);
            qt.y0(137, (b11 >> 5) & 1);
            qt.y0(138, (b12 >> 7) & 1);
            qt.y0(139, (b12 >> 6) & 1);
            qt.y0(140, (b12 >> 5) & 1);
            qt.y0(141, (b12 >> 4) & 1);
            qt.y0(142, (b12 >> 3) & 1);
            qt.y0(143, (b12 >> 2) & 1);
            qt.y0(144, (b12 >> 1) & 1);
            byte b13 = bArr[i2 + 8];
            byte b14 = bArr[i2 + 9];
            qt.y0(145, (b13 >> 2) & 3);
            qt.y0(146, (b13 >> 1) & 1);
            qt.y0(147, b13 & 1);
            qt.y0(148, (b14 >> 5) & 3);
            return;
        }
        if (b8 == 77) {
            qt.y0(211, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(212, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
            return;
        }
        if (b8 == 80) {
            int i14 = ((bArr[i2 + 2] & 255) << 0) | ((bArr[i2 + 3] & 255) << 8);
            qt.y0(154, i14);
            qt.y0(1032, i14);
            return;
        }
        if (b8 == 82) {
            if (nt.f8633a != 2556301) {
                int i15 = nt.f8637c;
                if ((i15 > 41 && i15 <= 77) || i15 == 87 || i15 == 88) {
                    qt.y0(176, (bArr[i2 + 2] >> 7) & 1);
                    qt.y0(186, (bArr[i2 + 3] >> 7) & 1);
                    qt.y0(180, (bArr[i2 + 4] >> 0) & 7);
                    return;
                }
                return;
            }
            if (f13864b0 == 0) {
                return;
            }
            int i16 = (bArr[i2 + 2] >> 7) & 1;
            if (u0.b.f17347o != 0) {
                return;
            }
            if (i16 != 0) {
                if (o1.u.T(a.b.O)) {
                    return;
                }
                qt.t();
                return;
            } else {
                if (o1.u.T(a.b.O)) {
                    qt.t();
                    return;
                }
                return;
            }
        }
        if (b8 == 88) {
            qt.y0(34, (bArr[i2 + 5] >> 7) & 1);
            return;
        }
        if (b8 == 93) {
            int i17 = i2 + 2;
            qt.y0(200, (bArr[i17] >> 0) & 1);
            qt.y0(205, (bArr[i17] >> 1) & 1);
            qt.y0(206, (bArr[i2 + 3] >> 0) & 1);
            return;
        }
        if (b8 == 95) {
            int i18 = i2 + 2;
            qt.y0(187, (bArr[i18] >> 7) & 1);
            qt.y0(188, (bArr[i18] >> 6) & 1);
            qt.y0(189, (bArr[i18] >> 5) & 1);
            qt.y0(190, (bArr[i18] >> 4) & 1);
            qt.y0(191, (bArr[i18] >> 3) & 1);
            qt.y0(192, (bArr[i18] >> 2) & 1);
            qt.y0(193, (bArr[i18] >> 1) & 1);
            qt.y0(194, (bArr[i18] >> 0) & 1);
            qt.y0(195, bArr[i2 + 3] & 255);
            qt.y0(196, bArr[i2 + 4] & 255);
            qt.y0(197, bArr[i2 + 5] & 255);
            qt.y0(198, bArr[i2 + 6] & 255);
            return;
        }
        if (b8 == 100) {
            byte b15 = bArr[i2 + 2];
            byte b16 = bArr[i2 + 3];
            this.f13892m = b15 & 255;
            int i19 = 0;
            while (true) {
                iArr = this.f13899t;
                if (i19 >= iArr.length) {
                    break;
                }
                int i20 = this.f13892m;
                if (i20 == iArr[i19][0]) {
                    if (i20 == 0) {
                        break;
                    }
                    this.f13891l = i19;
                    break;
                }
                i19++;
            }
            int i21 = b16 & 255;
            if (i21 != 0) {
                if (i19 < iArr.length) {
                    l0.b0.l0(iArr[i19][1], 0);
                }
            } else if (i19 <= iArr.length) {
                l0.b0.l0(iArr[this.f13891l][1], 1);
            }
            if (i21 != 0) {
                if (b15 == 1 || b15 == 5 || b15 == 20) {
                    o1.u.x0();
                    return;
                }
                return;
            }
            return;
        }
        if (b8 == 125) {
            int i22 = bArr[i2 + 2] & 255;
            if (i22 == 1) {
                int i23 = i2 + 3;
                qt.y0(135, (bArr[i23] >> 6) & 1);
                qt.y0(136, (bArr[i23] >> 5) & 1);
                qt.y0(137, (bArr[i23] >> 7) & 1);
                qt.y0(140, (bArr[i23] >> 3) & 1);
                qt.y0(141, (bArr[i23] >> 4) & 1);
                qt.y0(143, (bArr[i23] >> 1) & 1);
                qt.y0(144, (bArr[i23] >> 2) & 1);
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    l0.c0.b((bArr[i23] >> 3) & 1, (bArr[i23] >> 4) & 1, 0);
                    return;
                } else {
                    l0.c0.a((bArr[i23] >> 3) & 1, (bArr[i23] >> 4) & 1, 0);
                    return;
                }
            }
            if (i22 == 6) {
                int i24 = i2 + 3;
                qt.y0(138, (bArr[i24] >> 1) & 1);
                qt.y0(139, (bArr[i24] >> 0) & 1);
                return;
            }
            if (i22 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.A = true;
                return;
            }
            if (i22 == 10) {
                qt.y0(154, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                return;
            }
            if (i22 == 13) {
                int i25 = bArr[i2 + 3] & 255;
                qt.y0(146, (i25 >> 4) & 1);
                qt.y0(147, (i25 >> 5) & 1);
                qt.y0(145, (i25 >> 2) & 3);
                qt.y0(148, (i25 >> 6) & 3);
                return;
            }
            if (i22 != 3) {
                if (i22 != 4) {
                    return;
                }
                qt.y0(149, ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(151, ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(152, (bArr[i2 + 11] & 255) | ((bArr[i2 + 13] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280));
                return;
            }
            int i26 = i2 + 4;
            int i27 = i2 + 3;
            int i28 = (((bArr[i26] << 8) & 65280) | (bArr[i27] & 255)) / 100;
            qt.y0(1031, i28);
            o1.x.C(nt.f8643f, 1049, new int[]{1, i28}, null, null);
            qt.y0(153, ((bArr[i26] << 8) & 65280) | (bArr[i27] & 255));
            qt.y0(97, (bArr[i2 + 5] & 255) | ((bArr[i2 + 6] << 8) & 65280));
            return;
        }
        switch (b8) {
            case 16:
                if (nt.a()) {
                    this.f13901v = bArr[i2 + 2] & 255;
                    int i29 = 0;
                    while (true) {
                        iArr2 = this.f13902w;
                        if (i29 < iArr2.length) {
                            int i30 = this.f13901v;
                            if (i30 != iArr2[i29][0]) {
                                i29++;
                            } else if (i30 != 0) {
                                this.f13900u = i29;
                            }
                        }
                    }
                    int i31 = this.f13901v;
                    if (i31 == 3) {
                        o1.u.i();
                        break;
                    } else if (i31 == 4) {
                        o1.u.c1();
                        break;
                    } else {
                        switch (i31) {
                            case 8:
                                int i32 = nt.f8637c;
                                if ((i32 == 79 || i32 == 80 || i32 == 81 || i32 == 82 || i32 == 83 || i32 == 84 || i32 == 85 || i32 == 86 || i32 == 89 || i32 == 90 || i32 == 91 || i32 == 92 || i32 == 93 || i32 == 94 || i32 == 95 || i32 == 96 || i32 == 97 || i32 == 98 || i32 == 99 || i32 == 100 || i32 == 101 || i32 == 102 || i32 == 103 || i32 == 104) && !o1.u.S("com.syu.carlink")) {
                                    o1.u.g("com.syu.carlink");
                                }
                                break;
                            case 9:
                                int i33 = nt.f8637c;
                                if ((i33 == 79 || i33 == 80 || i33 == 81 || i33 == 82 || i33 == 83 || i33 == 84 || i33 == 85 || i33 == 86 || i33 == 89 || i33 == 90 || i33 == 91 || i33 == 92 || i33 == 93 || i33 == 94 || i33 == 95 || i33 == 96 || i33 == 97 || i33 == 98 || i33 == 99 || i33 == 100 || i33 == 101 || i33 == 102 || i33 == 103 || i33 == 104) && !qt.i0().equals("com.syu.carinfo.xp.ziyouguang.PAToyotaXMRadioAct")) {
                                    Intent intent = new Intent();
                                    intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.ziyouguang.PAToyotaXMRadioAct");
                                    intent.addCategory(Intent.CATEGORY_DEFAULT);
                                    intent.setFlags(268435456);
                                    App.c().startActivity(intent);
                                }
                                break;
                            case 10:
                                int i34 = nt.f8637c;
                                if (i34 == 79 || i34 == 80 || i34 == 81 || i34 == 82 || i34 == 83 || i34 == 84 || i34 == 85 || i34 == 86 || i34 == 89 || i34 == 90 || i34 == 91 || i34 == 92 || i34 == 93 || i34 == 94 || i34 == 95 || i34 == 96 || i34 == 97 || i34 == 98 || i34 == 99 || i34 == 100 || i34 == 101 || i34 == 102 || i34 == 103 || i34 == 104) {
                                    int i35 = this.f13903x;
                                    if (i35 == 1) {
                                        o1.u.z();
                                        break;
                                    } else if (i35 == 0 && !qt.i0().equals("com.syu.carinfo.xp.ziyouguang.PAToyotaCarCDAct")) {
                                        Intent intent2 = new Intent();
                                        intent2.setClassName("com.syu.canbus", "com.syu.carinfo.xp.ziyouguang.PAToyotaCarCDAct");
                                        intent2.addCategory(Intent.CATEGORY_DEFAULT);
                                        intent2.setFlags(268435456);
                                        App.c().startActivity(intent2);
                                        break;
                                    }
                                }
                                break;
                            case 11:
                                int i36 = nt.f8637c;
                                if ((i36 == 79 || i36 == 80 || i36 == 81 || i36 == 82 || i36 == 83 || i36 == 84 || i36 == 85 || i36 == 86 || i36 == 89 || i36 == 90 || i36 == 91 || i36 == 92 || i36 == 93 || i36 == 94 || i36 == 95 || i36 == 96 || i36 == 97 || i36 == 98 || i36 == 99 || i36 == 100 || i36 == 101 || i36 == 102 || i36 == 103 || i36 == 104) && !qt.i0().equals("com.syu.carinfo.xp.ziyouguang.PAToyotaXMRSEAct")) {
                                    Intent intent3 = new Intent();
                                    intent3.setClassName("com.syu.canbus", "com.syu.carinfo.xp.ziyouguang.PAToyotaXMRSEAct");
                                    intent3.addCategory(Intent.CATEGORY_DEFAULT);
                                    intent3.setFlags(268435456);
                                    App.c().startActivity(intent3);
                                }
                                break;
                            default:
                                if (i31 != 0) {
                                    int i37 = this.f13900u;
                                    if (i37 >= iArr2.length) {
                                        i4 = 255;
                                    } else if (i37 != 255) {
                                        l0.b0.l0(iArr2[i37][1], 0);
                                        l0.b0.l0(this.f13902w[this.f13900u][1], 1);
                                        i4 = 255;
                                    } else {
                                        i4 = 255;
                                    }
                                    this.f13900u = i4;
                                }
                                break;
                        }
                    }
                }
                break;
            case 17:
                int i38 = i2 + 2;
                qt.y0(214, (bArr[i38] >> 7) & 1);
                qt.y0(215, (bArr[i38] >> 6) & 1);
                qt.y0(216, (bArr[i38] >> 5) & 1);
                qt.y0(217, (bArr[i38] >> 4) & 1);
                qt.y0(218, (bArr[i38] >> 3) & 1);
                if (this.f13903x != ((bArr[i38] >> 3) & 1)) {
                    int i39 = (bArr[i38] >> 3) & 1;
                    this.f13903x = i39;
                    if (i39 == 1) {
                        if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.PAToyotaCarCDAct")) {
                            o1.u.z();
                        }
                    } else if (i39 == 0 && o1.u.a0() && !qt.i0().equals("com.syu.carinfo.xp.ziyouguang.PAToyotaCarCDAct")) {
                        Intent intent4 = new Intent();
                        intent4.setClassName("com.syu.canbus", "com.syu.carinfo.xp.ziyouguang.PAToyotaCarCDAct");
                        intent4.addCategory(Intent.CATEGORY_DEFAULT);
                        intent4.setFlags(268435456);
                        App.c().startActivity(intent4);
                    }
                }
                qt.y0(219, (bArr[i38] >> 0) & 7);
                qt.y0(220, bArr[i2 + 3] & 255);
                qt.y0(221, bArr[i2 + 4] & 255);
                qt.y0(222, (bArr[i2 + 6] & 255) | ((bArr[i2 + 5] << 8) & 65280));
                break;
            case 18:
                int i40 = i2 + 2;
                qt.y0(224, (bArr[i40] >> 7) & 1);
                qt.y0(225, (bArr[i40] >> 0) & 15);
                qt.y0(226, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                qt.y0(227, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(228, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(229, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                qt.y0(230, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                qt.y0(231, ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
                qt.y0(232, (bArr[i2 + 16] & 255) | ((bArr[i2 + 15] << 8) & 65280));
                break;
            case 19:
                qt.x0(233, new String(bArr, i2 + 2, 30));
                break;
            case 20:
                qt.x0(234, new String(bArr, i2 + 2, 30));
                break;
            case 21:
                qt.x0(235, new String(bArr, i2 + 2, 30));
                break;
            case 22:
                int i41 = ((bArr[i2 + 2] & 255) | (bArr[i2 + 3] << 8)) / 16;
                qt.y0(156, i41);
                qt.y0(1031, i41);
                break;
            case 23:
                qt.x0(236, new String(bArr, i2 + 2, 30));
                break;
            case 24:
                qt.x0(223, new String(bArr, i2 + 2, 30));
                break;
            case 25:
                qt.x0(i.a.Theme_actionModeWebSearchDrawable, new String(bArr, i2 + 2, 30));
                break;
            case 26:
                switch (nt.f8637c) {
                    case 79:
                    case 80:
                    case 81:
                    case 82:
                    case 83:
                    case 84:
                    case 85:
                    case 86:
                    case 89:
                    case 90:
                    case 91:
                    case 92:
                    case 93:
                    case 94:
                    case 95:
                    case 96:
                    case 97:
                    case 98:
                    case 99:
                    case 100:
                    case 101:
                    case 102:
                    case 103:
                    case 104:
                        qt.x0(i.a.Theme_actionModePopupWindowStyle, new String(bArr, i2 + 2, 30));
                        break;
                    case 87:
                    case 88:
                    default:
                        qt.y0(133, (bArr[i2 + 3] >> 6) & 1);
                        break;
                }
                break;
            case 27:
                String str = new String(bArr, i2 + 3, 30);
                switch (bArr[i2 + 2]) {
                    case 1:
                        qt.x0(237, str);
                        break;
                    case 2:
                        qt.x0(238, str);
                        break;
                    case 3:
                        qt.x0(239, str);
                        break;
                    case 4:
                        qt.x0(240, str);
                        break;
                    case 5:
                        qt.x0(i.a.Theme_actionModeShareDrawable, str);
                        break;
                    case 6:
                        qt.x0(i.a.Theme_actionModeFindDrawable, str);
                        break;
                }
                break;
            case 28:
                int i42 = i2 + 2;
                qt.y0(i.a.Theme_dialogTitleDecorLayout, (bArr[i42] >> 7) & 1);
                qt.y0(254, (bArr[i42] >> 6) & 1);
                qt.y0(255, (bArr[i42] >> 5) & 1);
                qt.y0(256, (bArr[i42] >> 4) & 1);
                qt.y0(257, (bArr[i42] >> 3) & 1);
                qt.y0(258, (bArr[i42] >> 2) & 1);
                qt.y0(259, (bArr[i42] >> 1) & 1);
                break;
            case 29:
                if (nt.a()) {
                    int i43 = i2 + 2;
                    int i44 = bArr[i43] & 255;
                    int i45 = i2 + 3;
                    int i46 = bArr[i45] & 255;
                    int i47 = i2 + 4;
                    int i48 = bArr[i47] & 255;
                    int i49 = i2 + 5;
                    int i50 = bArr[i49] & 255;
                    if (i44 == 0 && i46 == 0 && i48 == 0 && i50 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i44 || l0.c0.f13014h != i46 || l0.c0.f13015i != i48 || l0.c0.f13016j != i50) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i44;
                    l0.c0.f13014h = i46;
                    l0.c0.f13015i = i48;
                    l0.c0.f13016j = i50;
                    u0.d.D2(b3(bArr[i43] & 255));
                    u0.d.E2(b3(bArr[i45] & 255));
                    u0.d.F2(b3(bArr[i47] & 255));
                    u0.d.G2(b3(bArr[i49] & 255));
                }
                break;
            case 30:
                if (nt.a()) {
                    u0.d.R2(b3(bArr[i2 + 2] & 255));
                    u0.d.S2(b3(bArr[i2 + 3] & 255));
                    u0.d.T2(b3(bArr[i2 + 4] & 255));
                    u0.d.U2(b3(bArr[i2 + 5] & 255));
                }
                int i51 = i2 + 6;
                qt.y0(176, (bArr[i51] >> 6) & 1);
                qt.y0(177, (bArr[i51] >> 7) & 1);
                int i52 = nt.f8637c;
                if ((i52 <= 41 || i52 > 77) && i52 != 87 && i52 != 88) {
                    qt.y0(179, (bArr[i51] >> 4) & 1);
                }
                qt.y0(178, (bArr[i51] >> 0) & 7);
                break;
            case 31:
                byte b17 = bArr[i2 + 2];
                byte b18 = bArr[i2 + 3];
                byte b19 = bArr[i2 + 4];
                qt.y0(97, (b17 >> 0) & 15);
                qt.y0(98, (b17 >> 7) & 1);
                qt.y0(99, b18 & 255);
                qt.y0(158, b19 & 1);
                qt.y0(159, (b19 >> 1) & 1);
                qt.y0(160, (b19 >> 2) & 1);
                break;
            case 32:
                if (nt.f8637c != 32) {
                    if (nt.a()) {
                        byte b20 = bArr[i2 + 2];
                        byte b21 = bArr[i2 + 3];
                        this.f13892m = b20 & 255;
                        int i53 = 0;
                        while (true) {
                            iArr3 = this.f13895p;
                            if (i53 < iArr3.length) {
                                int i54 = this.f13892m;
                                if (i54 != iArr3[i53][0]) {
                                    i53++;
                                } else if (i54 != 0) {
                                    this.f13891l = i53;
                                }
                            }
                        }
                        int i55 = this.f13892m;
                        if (i55 == 1) {
                            if ((b21 & 255) != 0) {
                                switch (nt.f8637c) {
                                    case 93:
                                    case 94:
                                    case 95:
                                    case 96:
                                    case 97:
                                    case 98:
                                    case 99:
                                    case 100:
                                    case 101:
                                    case 102:
                                    case 103:
                                    case 104:
                                        int i56 = nt.f8645g[162];
                                        if (i56 < 63) {
                                            i56++;
                                        }
                                        if (this.f13885f) {
                                            b2 = 2;
                                            b3 = 7;
                                            c2 = 3;
                                        } else {
                                            b2 = 2;
                                            b3 = 7;
                                            c2 = 3;
                                            z.k.s(227, 132, 2, 7, i56);
                                        }
                                        byte[] bArr2 = new byte[6];
                                        bArr2[0] = 46;
                                        bArr2[1] = -124;
                                        bArr2[b2] = b2;
                                        bArr2[c2] = b3;
                                        bArr2[4] = (byte) i56;
                                        bArr2[5] = 0;
                                        d4(bArr2);
                                        break;
                                    default:
                                        l0.b0.l0(7, 0);
                                        l0.b0.l0(7, 1);
                                        break;
                                }
                            }
                        } else if (i55 == 2) {
                            if ((b21 & 255) != 0) {
                                switch (nt.f8637c) {
                                    case 93:
                                    case 94:
                                    case 95:
                                    case 96:
                                    case 97:
                                    case 98:
                                    case 99:
                                    case 100:
                                    case 101:
                                    case 102:
                                    case 103:
                                    case 104:
                                        int i57 = nt.f8645g[162];
                                        if (i57 > 0) {
                                            i57--;
                                        }
                                        if (this.f13885f) {
                                            b4 = 2;
                                            b5 = 7;
                                            c3 = 3;
                                        } else {
                                            b4 = 2;
                                            b5 = 7;
                                            c3 = 3;
                                            z.k.s(227, 132, 2, 7, i57);
                                        }
                                        byte[] bArr3 = new byte[6];
                                        bArr3[0] = 46;
                                        bArr3[1] = -124;
                                        bArr3[b4] = b4;
                                        bArr3[c3] = b5;
                                        bArr3[4] = (byte) i57;
                                        bArr3[5] = 0;
                                        d4(bArr3);
                                        break;
                                    default:
                                        l0.b0.l0(8, 0);
                                        l0.b0.l0(8, 1);
                                        break;
                                }
                            }
                        } else if (i55 == 7) {
                            if (this.f13894o != b21) {
                                this.f13894o = b21;
                                if (b21 == 1) {
                                    this.f13893n = false;
                                } else if (b21 == 2) {
                                    this.f13893n = true;
                                    l0.b0.l0(12, 0);
                                    l0.b0.l0(12, 1);
                                } else if (b21 == 0) {
                                    if (this.f13893n) {
                                        this.f13893n = false;
                                    } else {
                                        l0.b0.l0(2, 0);
                                        l0.b0.l0(2, 1);
                                    }
                                }
                            }
                            break;
                        } else if (i55 == 25) {
                            if ((b21 & 255) == 1) {
                                int i58 = nt.f8637c;
                                if (i58 != 79 && i58 != 80 && i58 != 81 && i58 != 82 && i58 != 83 && i58 != 84 && i58 != 85 && i58 != 86 && i58 != 89 && i58 != 90 && i58 != 91 && i58 != 92 && i58 != 93 && i58 != 94 && i58 != 95 && i58 != 96 && i58 != 97 && i58 != 98 && i58 != 99 && i58 != 100 && i58 != 101 && i58 != 102 && i58 != 103 && i58 != 104) {
                                    l0.b0.l0(9, 0);
                                    l0.b0.l0(9, 1);
                                } else if (!o1.u.S("com.syu.carlink")) {
                                    o1.u.g("com.syu.carlink");
                                }
                            }
                            break;
                        } else if (i55 == 135) {
                            if (this.f13894o != b21) {
                                this.f13894o = b21;
                                if (b21 != 1) {
                                    if (b21 != 2) {
                                        if (b21 == 0) {
                                            if (!this.f13893n) {
                                                switch (nt.f8637c) {
                                                    case 93:
                                                    case 94:
                                                    case 95:
                                                    case 96:
                                                    case 97:
                                                    case 98:
                                                    case 99:
                                                    case 100:
                                                    case 101:
                                                    case 102:
                                                    case 103:
                                                    case 104:
                                                        if (this.f13885f) {
                                                            l0.b0.l0(12, 0);
                                                            l0.b0.l0(12, 1);
                                                        } else {
                                                            int[] iArr5 = nt.f8645g;
                                                            if (iArr5[162] != 0) {
                                                                this.f13886g = iArr5[162];
                                                                z.k.s(227, 132, 2, 7, 0);
                                                            } else {
                                                                int i59 = this.f13886g;
                                                                if (i59 != 0) {
                                                                    z.k.s(227, 132, 2, 7, i59);
                                                                    this.f13886g = 0;
                                                                }
                                                            }
                                                        }
                                                        break;
                                                    default:
                                                        l0.b0.l0(12, 0);
                                                        l0.b0.l0(12, 1);
                                                        break;
                                                }
                                            } else {
                                                this.f13893n = false;
                                                break;
                                            }
                                        }
                                    } else {
                                        this.f13893n = true;
                                        l0.b0.l0(25, 0);
                                        l0.b0.l0(25, 1);
                                        break;
                                    }
                                } else {
                                    this.f13893n = false;
                                    break;
                                }
                            }
                        } else {
                            int i60 = b21 & 255;
                            if (i60 == 1) {
                                if (i53 < iArr3.length) {
                                    l0.b0.l0(iArr3[i53][1], 0);
                                }
                            } else if (i60 == 0) {
                                int i61 = this.f13891l;
                                if (i61 < iArr3.length) {
                                    i5 = 255;
                                    if (i61 != 255) {
                                        l0.b0.l0(iArr3[i61][1], 1);
                                    }
                                } else {
                                    i5 = 255;
                                }
                                this.f13891l = i5;
                            }
                            break;
                        }
                    }
                } else {
                    byte b22 = bArr[i2 + 2];
                    byte b23 = bArr[i2 + 3];
                    this.f13897r = b22 & 255;
                    int i62 = 0;
                    while (true) {
                        iArr4 = this.f13898s;
                        if (i62 < iArr4.length) {
                            int i63 = this.f13897r;
                            if (i63 != iArr4[i62][0]) {
                                i62++;
                            } else if (i63 != 0) {
                                this.f13896q = i62;
                            }
                        }
                    }
                    int i64 = this.f13897r;
                    if (i64 != 12) {
                        if (i64 != 30) {
                            int i65 = b23 & 255;
                            if (i65 == 1) {
                                if (i62 < iArr4.length) {
                                    l0.b0.l0(iArr4[i62][1], 0);
                                }
                            } else if (i65 == 0) {
                                int i66 = this.f13896q;
                                if (i66 < iArr4.length) {
                                    i6 = 255;
                                    if (i66 != 255) {
                                        l0.b0.l0(iArr4[i66][1], 1);
                                    }
                                } else {
                                    i6 = 255;
                                }
                                this.f13896q = i6;
                            }
                        } else if ((b23 & 255) == 1) {
                            if (App.c().getResources().getConfiguration().orientation == 1) {
                                z.k.s(1, 0, 201);
                            } else {
                                z.k.s(1, 0, 200);
                            }
                        }
                    } else if ((b23 & 255) == 1) {
                        int i67 = h0.c.E;
                        if (i67 == 3 || i67 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                    }
                    break;
                }
                break;
            case 33:
                int i68 = (bArr[i2 + 8] & 255) << 24;
                qt.y0(100, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i68);
                qt.y0(101, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                int i69 = i2 + 6;
                int i70 = i2 + 7;
                qt.y0(102, i68 | ((bArr[i69] & 255) << 8) | (bArr[i70] & 255));
                qt.y0(150, ((bArr[i70] & 255) << 0) | ((bArr[i69] & 255) << 8));
                break;
            case 34:
                int i71 = i2 + 2;
                int i72 = (bArr[i71] & 255) << 24;
                int i73 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
                if (i73 == 65535) {
                    i73 = 0;
                }
                qt.y0(103, i72 | i73);
                int i74 = nt.f8637c;
                if ((i74 <= 41 || i74 > 77) && i74 != 79 && i74 != 80 && i74 != 87 && i74 != 88) {
                    qt.y0(186, bArr[i71] & 255);
                }
                break;
            case 35:
                int i75 = (bArr[i2 + 2] & 255) << 24;
                int i76 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
                if (i76 == 65535) {
                    i76 = 0;
                }
                qt.y0(104, i76 | i75);
                for (int i77 = 0; i77 < 5; i77++) {
                    int i78 = i2 + (i77 * 2);
                    int[] iArr6 = {i77, (bArr[i78 + 6] & 255) | ((bArr[i78 + 5] & 255) << 8) | i75};
                    if (qt.C0(105, iArr6, this.f13887h[i77])) {
                        this.f13887h[i77] = iArr6;
                    }
                }
                break;
            case 36:
                byte b24 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b24 >> 7) & 1);
                    qt.y0(2, (b24 >> 6) & 1);
                } else {
                    qt.y0(1, (b24 >> 6) & 1);
                    qt.y0(2, (b24 >> 7) & 1);
                }
                qt.y0(3, (b24 >> 4) & 1);
                qt.y0(4, (b24 >> 5) & 1);
                qt.y0(5, (b24 >> 3) & 1);
                break;
            case 37:
                byte b25 = bArr[i2 + 2];
                int[] iArr7 = new int[1];
                iArr7[0] = (b25 & 128) == 0 ? 0 : 1;
                qt.y0(106, iArr7);
                int[] iArr8 = new int[1];
                iArr8[0] = (b25 & 64) == 0 ? 0 : 1;
                qt.y0(107, iArr8);
                int[] iArr9 = new int[1];
                iArr9[0] = (b25 & 32) == 0 ? 0 : 1;
                qt.y0(108, iArr9);
                int[] iArr10 = new int[1];
                iArr10[0] = (b25 & 4) == 0 ? 0 : 1;
                qt.y0(109, iArr10);
                int i79 = (b25 & 3) << 24;
                int i80 = bArr[i2 + 3] & 255;
                if (i80 == 255) {
                    i80 = 16777215;
                }
                qt.y0(110, i80 | i79);
                int i81 = bArr[i2 + 4] & 255;
                if (i81 == 255) {
                    i81 = 16777215;
                }
                qt.y0(111, i81 | i79);
                int i82 = bArr[i2 + 5] & 255;
                if (i82 == 255) {
                    i82 = 16777215;
                }
                qt.y0(112, i82 | i79);
                int i83 = bArr[i2 + 6] & 255;
                if (i83 == 255) {
                    i83 = 16777215;
                }
                qt.y0(113, i83 | i79);
                int i84 = bArr[i2 + 7] & 255;
                if (i84 == 255) {
                    i84 = 16777215;
                }
                qt.y0(114, i84 | i79);
                break;
            case 38:
                byte b26 = bArr[i2 + 2];
                int[] iArr11 = new int[1];
                iArr11[0] = (b26 & 128) == 0 ? 0 : 1;
                qt.y0(115, iArr11);
                qt.y0(116, (b26 & 112) >> 4);
                qt.y0(117, (b26 & DhcpPacket.DHCP_HOST_NAME) >> 2);
                qt.y0(118, b26 & 3);
                byte b27 = bArr[i2 + 3];
                int[] iArr12 = new int[1];
                iArr12[0] = (b27 & 128) == 0 ? 0 : 1;
                qt.y0(119, iArr12);
                int[] iArr13 = new int[1];
                iArr13[0] = (b27 & 64) == 0 ? 0 : 1;
                qt.y0(120, iArr13);
                int[] iArr14 = new int[1];
                iArr14[0] = (b27 & 32) == 0 ? 0 : 1;
                qt.y0(121, iArr14);
                int[] iArr15 = new int[1];
                iArr15[0] = (b27 & 16) == 0 ? 0 : 1;
                qt.y0(122, iArr15);
                qt.y0(123, b27 & 7);
                byte b28 = bArr[i2 + 4];
                int[] iArr16 = new int[1];
                iArr16[0] = (b28 & 128) == 0 ? 0 : 1;
                qt.y0(124, iArr16);
                int[] iArr17 = new int[1];
                iArr17[0] = (b28 & 64) == 0 ? 0 : 1;
                qt.y0(125, iArr17);
                int[] iArr18 = new int[1];
                iArr18[0] = (b28 & 32) == 0 ? 0 : 1;
                qt.y0(126, iArr18);
                int[] iArr19 = new int[1];
                iArr19[0] = (b28 & 16) == 0 ? 0 : 1;
                qt.y0(127, iArr19);
                int[] iArr20 = new int[1];
                iArr20[0] = (b28 & 8) == 0 ? 0 : 1;
                qt.y0(128, iArr20);
                qt.y0(129, b28 & 7);
                byte b29 = bArr[i2 + 5];
                int[] iArr21 = new int[1];
                iArr21[0] = (b29 & 128) == 0 ? 0 : 1;
                qt.y0(130, iArr21);
                int[] iArr22 = new int[1];
                iArr22[0] = (b29 & 64) == 0 ? 0 : 1;
                qt.y0(131, iArr22);
                qt.y0(132, (b29 >> 2) & 3);
                qt.y0(161, b29 & 3);
                int i85 = nt.f8637c;
                if (i85 == 79 || i85 == 80 || i85 == 81 || i85 == 82 || i85 == 83 || i85 == 84 || i85 == 85 || i85 == 86 || i85 == 89 || i85 == 90 || i85 == 91 || i85 == 92 || i85 == 93 || i85 == 94 || i85 == 95 || i85 == 96 || i85 == 97 || i85 == 98 || i85 == 99 || i85 == 100 || i85 == 101 || i85 == 102 || i85 == 103 || i85 == 104) {
                    byte b30 = bArr[i2 + 6];
                    qt.y0(182, (b30 >> 5) & 7);
                    qt.y0(186, (b30 >> 3) & 3);
                    qt.y0(199, (b30 >> 2) & 1);
                    qt.y0(201, (b30 >> 0) & 3);
                    int i86 = i2 + 7;
                    qt.y0(202, (bArr[i86] >> 5) & 3);
                    qt.y0(203, (bArr[i86] >> 3) & 3);
                    qt.y0(204, (bArr[i86] >> 0) & 7);
                    qt.y0(i.a.Theme_preferenceFragmentStyle, (bArr[i86] >> 7) & 1);
                    int i87 = i2 + 8;
                    qt.y0(i.a.Theme_preferencePanelStyle, (bArr[i87] >> 7) & 1);
                    qt.y0(i.a.Theme_preferenceHeaderPanelStyle, (bArr[i87] >> 6) & 1);
                    qt.y0(248, (bArr[i87] >> 5) & 1);
                    qt.y0(249, (bArr[i87] >> 4) & 1);
                    qt.y0(250, (bArr[i87] >> 3) & 1);
                    qt.y0(251, (bArr[i87] >> 2) & 1);
                    qt.y0(252, (bArr[i87] >> 1) & 1);
                }
                break;
            case 39:
                int i88 = (bArr[i2 + 2] & 255) << 24;
                for (int i89 = 0; i89 < 15; i89++) {
                    int i90 = i2 + (i89 * 2);
                    int[] iArr23 = {i89, (bArr[i90 + 4] & 255) | ((bArr[i90 + 3] & 255) << 8) | i88};
                    if (qt.C0(134, iArr23, this.f13888i[i89])) {
                        this.f13888i[i89] = iArr23;
                    }
                }
                break;
            case 40:
                byte b31 = bArr[i2 + 2];
                int i91 = (b31 >> 7) & 1;
                qt.y0(10, i91);
                qt.y0(11, (b31 >> 6) & 1);
                qt.y0(12, (b31 >> 5) & 1);
                int i92 = nt.f8637c;
                if ((i92 > 41 && i92 < 78) || i92 == 87 || i92 == 88) {
                    qt.y0(13, (b31 >> 4) & 1);
                } else {
                    qt.y0(13, (b31 >> 3) & 1);
                }
                qt.y0(14, (b31 >> 2) & 1);
                qt.y0(15, (b31 >> 1) & 1);
                byte b32 = bArr[i2 + 3];
                int i93 = b32 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i93 > 7) {
                    i93 = 7;
                }
                qt.y0(21, i93);
                byte b33 = bArr[i2 + 4];
                byte b34 = bArr[i2 + 5];
                byte b35 = bArr[i2 + 6];
                int i94 = b35 & 1;
                if (i91 == 0) {
                    qt.y0(27, -1);
                    qt.y0(28, -1);
                } else if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    if (b33 == 0) {
                        qt.y0(28, -2);
                    } else if (b33 != 31) {
                        int i95 = nt.f8637c;
                        if ((i95 >= 42 && i95 <= 78) || i95 == 87 || i95 == 88) {
                            if (i94 == 1) {
                                qt.y0(28, b33 * 10);
                            } else if (b33 >= 1 && b33 <= 29) {
                                qt.y0(28, (b33 * 5) + 175);
                            } else if (b33 >= 32 && b33 <= 35) {
                                qt.y0(28, ((b33 - 32) * 5) + 160);
                            } else if (b33 < 36 || b33 > 37) {
                                qt.y0(28, -1);
                            } else {
                                qt.y0(28, ((b33 - 36) * 5) + 150);
                            }
                        } else if (i94 == 1) {
                            if (b33 >= 1 && b33 <= 29) {
                                qt.y0(28, b33 + 64);
                            } else if (b33 < 33 || b33 > 38) {
                                qt.y0(28, -1);
                            } else {
                                qt.y0(28, (b33 - 33) + 59);
                            }
                        } else if (b33 >= 1 && b33 <= 29) {
                            qt.y0(28, (b33 + 35) * 5);
                        } else if (b33 < 33 || b33 > 38) {
                            qt.y0(28, -1);
                        } else {
                            qt.y0(28, ((b33 - 33) * 5) + 150);
                        }
                    } else {
                        qt.y0(28, -3);
                    }
                    if (b34 == 0) {
                        qt.y0(27, -2);
                    } else if (b34 != 31) {
                        int i96 = nt.f8637c;
                        if ((i96 >= 42 && i96 <= 78) || i96 == 87 || i96 == 88) {
                            if (i94 == 1) {
                                qt.y0(27, b34 * 10);
                            } else if (b34 >= 1 && b34 <= 29) {
                                qt.y0(27, (b34 * 5) + 175);
                            } else if (b34 >= 32 && b34 <= 35) {
                                qt.y0(27, ((b34 - 32) * 5) + 160);
                            } else if (b34 < 36 || b34 > 37) {
                                qt.y0(27, -1);
                            } else {
                                qt.y0(27, ((b34 - 36) * 5) + 150);
                            }
                        } else if (i94 == 1) {
                            if (b34 >= 1 && b34 <= 29) {
                                qt.y0(27, b34 + 64);
                            } else if (b34 < 33 || b34 > 38) {
                                qt.y0(27, -1);
                            } else {
                                qt.y0(27, (b34 - 33) + 59);
                            }
                        } else if (b34 >= 1 && b34 <= 29) {
                            qt.y0(27, (b34 + 35) * 5);
                        } else if (b34 < 33 || b34 > 38) {
                            qt.y0(27, -1);
                        } else {
                            qt.y0(27, ((b34 - 33) * 5) + 150);
                        }
                    } else {
                        qt.y0(27, -3);
                    }
                } else {
                    if (b33 == 0) {
                        qt.y0(27, -2);
                    } else if (b33 != 31) {
                        int i97 = nt.f8637c;
                        if ((i97 >= 42 && i97 <= 78) || i97 == 87 || i97 == 88) {
                            if (i94 == 1) {
                                qt.y0(27, b33 * 10);
                            } else if (b33 >= 1 && b33 <= 29) {
                                qt.y0(27, (b33 * 5) + 175);
                            } else if (b33 >= 32 && b33 <= 35) {
                                qt.y0(27, ((b33 - 32) * 5) + 160);
                            } else if (b33 < 36 || b33 > 37) {
                                qt.y0(27, -1);
                            } else {
                                qt.y0(27, ((b33 - 36) * 5) + 150);
                            }
                        } else if (i94 == 1) {
                            if (b33 >= 1 && b33 <= 29) {
                                qt.y0(27, b33 + 64);
                            } else if (b33 < 33 || b33 > 38) {
                                qt.y0(27, -1);
                            } else {
                                qt.y0(27, (b33 - 33) + 59);
                            }
                        } else if (b33 >= 1 && b33 <= 29) {
                            qt.y0(27, (b33 + 35) * 5);
                        } else if (b33 < 33 || b33 > 38) {
                            qt.y0(27, -1);
                        } else {
                            qt.y0(27, ((b33 - 33) * 5) + 150);
                        }
                    } else {
                        qt.y0(27, -3);
                    }
                    if (b34 == 0) {
                        qt.y0(28, -2);
                    } else if (b34 != 31) {
                        int i98 = nt.f8637c;
                        if ((i98 >= 42 && i98 <= 78) || i98 == 87 || i98 == 88) {
                            if (i94 == 1) {
                                qt.y0(28, b34 * 10);
                            } else if (b34 >= 1 && b34 <= 29) {
                                qt.y0(28, (b34 * 5) + 175);
                            } else if (b34 >= 32 && b34 <= 35) {
                                qt.y0(28, ((b34 - 32) * 5) + 160);
                            } else if (b34 < 36 || b34 > 37) {
                                qt.y0(28, -1);
                            } else {
                                qt.y0(28, ((b34 - 36) * 5) + 150);
                            }
                        } else if (i94 == 1) {
                            if (b34 >= 1 && b34 <= 29) {
                                qt.y0(28, b34 + 64);
                            } else if (b34 < 33 || b34 > 38) {
                                qt.y0(28, -1);
                            } else {
                                qt.y0(28, (b34 - 33) + 59);
                            }
                        } else if (b34 >= 1 && b34 <= 29) {
                            qt.y0(28, (b34 + 35) * 5);
                        } else if (b34 < 33 || b34 > 38) {
                            qt.y0(28, -1);
                        } else {
                            qt.y0(28, ((b34 - 33) * 5) + 150);
                        }
                    } else {
                        qt.y0(28, -3);
                    }
                }
                int i99 = nt.f8637c;
                if ((i99 >= 42 && i99 <= 77) || i99 == 87 || i99 == 88) {
                    qt.y0(33, (bArr[i2 + 12] >> 7) & 1);
                    qt.y0(65, (b35 >> 6) & 1);
                } else {
                    qt.y0(33, (b35 >> 7) & 1);
                }
                qt.y0(16, (b35 >> 6) & 1);
                qt.y0(54, (b35 >> 4) & 1);
                qt.y0(53, (b35 >> 3) & 1);
                qt.y0(67, (b35 >> 2) & 1);
                qt.y0(37, i94);
                int i100 = nt.f8633a;
                if (i100 == 2163085 || i100 == 2228621 || i100 == 2294157) {
                    b6 = 255;
                    u0.d.A3(((bArr[i2 + 7] & 255) * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                } else {
                    int i101 = nt.f8637c;
                    if (i101 == 79 || i101 == 80 || i101 == 81 || i101 == 82 || i101 == 83 || i101 == 84 || i101 == 85 || i101 == 86 || i101 == 89 || i101 == 90 || i101 == 91 || i101 == 92 || i101 == 93 || i101 == 94 || i101 == 95 || i101 == 96 || i101 == 97 || i101 == 98 || i101 == 99 || i101 == 100 || i101 == 101 || i101 == 102 || i101 == 103 || i101 == 104) {
                        int i102 = bArr[i2 + 7] & 255;
                        if (i102 == 255) {
                            u0.d.A3(0);
                        } else if (i94 == 1) {
                            u0.d.B3((((i102 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1));
                        } else {
                            u0.d.A3((i102 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                        }
                    }
                    b6 = 255;
                }
                qt.y0(155, b6 & bArr[i2 + 7]);
                byte b36 = bArr[i2 + 8];
                if (b36 == 0) {
                    qt.y0(40, -2);
                } else if (b36 == 31) {
                    qt.y0(40, -3);
                } else if (i94 == 1) {
                    if (b36 >= 1 && b36 <= 29) {
                        qt.y0(40, b36 + 64);
                    } else if (b36 < 33 || b36 > 38) {
                        qt.y0(40, -1);
                    } else {
                        qt.y0(40, (b36 - 33) + 59);
                    }
                } else if (b36 >= 1 && b36 <= 29) {
                    qt.y0(40, (b36 + 35) * 5);
                } else if (b36 < 33 || b36 > 38) {
                    qt.y0(40, -1);
                } else {
                    qt.y0(40, ((b36 - 33) * 5) + 150);
                }
                byte b37 = bArr[i2 + 10];
                if (b37 == 0) {
                    qt.y0(41, -2);
                } else if (b37 == 31) {
                    qt.y0(41, -3);
                } else if (i94 == 1) {
                    if (b37 >= 1 && b37 <= 29) {
                        qt.y0(41, b37 + 64);
                    } else if (b37 < 33 || b37 > 38) {
                        qt.y0(41, -1);
                    } else {
                        qt.y0(41, (b37 - 33) + 59);
                    }
                } else if (b37 >= 1 && b37 <= 29) {
                    qt.y0(41, (b37 + 35) * 5);
                } else if (b37 < 33 || b37 > 38) {
                    qt.y0(41, -1);
                } else {
                    qt.y0(41, ((b37 - 33) * 5) + 150);
                }
                byte b38 = bArr[i2 + 9];
                qt.y0(42, (b38 >> 7) & 1);
                qt.y0(46, (b38 >> 6) & 1);
                qt.y0(47, (b38 >> 5) & 1);
                qt.y0(43, (b38 >> 4) & 1);
                qt.y0(44, b38 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i103 = nt.f8633a;
                if (i103 == 6095245 || i103 == 6160781 || i103 == 6226317 || i103 == 6291853 || i103 == 6357389) {
                    int i104 = i2 + 11;
                    int i105 = ((bArr[i104] >> 4) & 1) == 1 ? 1 : 0;
                    int i106 = i105;
                    int i107 = i106;
                    int i108 = bArr[i104] & 3;
                    if (i108 != 1) {
                        b7 = 2;
                        if (i108 == 2) {
                            i107 = 1;
                            i7 = 1;
                        } else if (i108 != 3) {
                            i7 = 0;
                        } else {
                            i7 = 0;
                            i107 = 1;
                        }
                    } else {
                        b7 = 2;
                        i7 = 1;
                    }
                    int i109 = (bArr[i104] >> b7) & 3;
                    if (i109 == 1) {
                        i8 = 1;
                    } else if (i109 == b7) {
                        i106 = 1;
                        i8 = 1;
                    } else if (i109 != 3) {
                        i8 = 0;
                    } else {
                        i8 = 0;
                        i106 = 1;
                    }
                    qt.y0(18, i105);
                    qt.y0(19, i7);
                    qt.y0(20, i107);
                    qt.y0(22, i106);
                    qt.y0(23, i8);
                    qt.y0(24, i106);
                    qt.y0(49, (bArr[i104] >> 5) & 1);
                    qt.y0(50, (bArr[i104] >> 6) & 1);
                } else {
                    qt.y0(18, (b32 >> 7) & 1);
                    qt.y0(19, (b32 >> 6) & 1);
                    qt.y0(20, (b32 >> 5) & 1);
                }
                qt.y0(80, (bArr[i2 + 11] >> 7) & 1);
                break;
            case 41:
                if (!this.A) {
                    qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 380);
                }
                break;
            default:
                switch (b8) {
                    case 48:
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        break;
                    case 49:
                        if (!this.f13885f) {
                            if (nt.a()) {
                                int i110 = i2 + 2;
                                f13873k0 = o0.a((bArr[i110] >> 4) & 15, 0, 14);
                                f13874l0 = o0.a(bArr[i110] & DhcpPacket.DHCP_DOMAIN_NAME, 0, 14);
                                int i111 = i2 + 3;
                                f13867e0 = o0.a((bArr[i111] >> 4) & 15, 2, 12);
                                f13868f0 = o0.a((bArr[i2 + 4] >> 4) & 15, 2, 12);
                                f13869g0 = o0.a(bArr[i111] & DhcpPacket.DHCP_DOMAIN_NAME, 2, 12);
                                f13865c0 = o0.a(bArr[i2 + 5] & 255, 0, 63);
                            }
                            qt.y0(162, 255 & bArr[i2 + 5]);
                            byte b39 = bArr[i2 + 2];
                            byte b40 = bArr[i2 + 3];
                            byte b41 = bArr[i2 + 4];
                            byte b42 = bArr[i2 + 6];
                            qt.y0(164, (b39 >> 4) & 15);
                            qt.y0(165, (b39 >> 0) & 15);
                            qt.y0(166, (b40 >> 4) & 15);
                            qt.y0(167, (b40 >> 0) & 15);
                            qt.y0(173, (b41 >> 4) & 15);
                            qt.y0(168, (b41 >> 0) & 15);
                            int i112 = nt.f8637c;
                            if (i112 == 79 || i112 == 80 || i112 == 81 || i112 == 82 || i112 == 83 || i112 == 84 || i112 == 85 || i112 == 86 || i112 == 89 || i112 == 90 || i112 == 91 || i112 == 92 || i112 == 93 || i112 == 94 || i112 == 95 || i112 == 96 || i112 == 97 || i112 == 98 || i112 == 99 || i112 == 100 || i112 == 101 || i112 == 102 || i112 == 103 || i112 == 104) {
                                qt.y0(169, (b42 >> 2) & 1);
                            } else {
                                qt.y0(169, (b42 >> 0) & 1);
                                qt.y0(172, (b42 >> 4) & 3);
                            }
                            break;
                        }
                        break;
                    case 50:
                        byte b43 = bArr[i2 + 2];
                        int i113 = (b43 & 64) >> 6;
                        if ((b43 & 1) != 0) {
                            if (i113 == 0) {
                                O3(1);
                            }
                            this.f13904y = true;
                        } else {
                            this.f13904y = false;
                        }
                        Z = (b43 & 4) == 0 ? 0 : 1;
                        int i114 = (b43 & 8) == 0 ? 0 : 1;
                        f13863a0 = i114;
                        qt.y0(Process.MEDIA_UID, i114);
                        if (nt.a()) {
                            if (f13863a0 != 0) {
                                qt.a(1);
                            } else {
                                qt.a(0);
                            }
                        }
                        qt.y0(170, (b43 >> 6) & 1);
                        qt.y0(171, (b43 >> 7) & 1);
                        break;
                }
                break;
        }
    }

    public final void U3(int i2, int i3) {
        z.k.s(227, -125, 2, (byte) i2, (byte) i3);
    }

    public final synchronized void V3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        Q3(2, f13876n0);
    }

    @Override // k0.lt
    public void W2() {
        this.f13889j.j();
        u0.c.f17386m.d(this.T);
        l0.b0.p0(this.U);
        u0.c.f17379f.d(this.R);
        l0.b0.p0(this.X);
        y0.g.f18094d.d(this.f13905z);
        qt.q0(this.Q);
        o1.h.f16865a.d(this.P);
        qt.q0(this.L);
        u0.c.f17374a.d(this.L);
        u0.c.f17388o.d(this.I);
        u0.c.f17389p.d(this.J);
        w0.e.f17817c.d(this.K);
        h0.d.f2464c.d(this.H);
        h0.d.f2462a.d(this.H);
        o1.h.f16867c.d(this.E);
        o1.h.f16868d.d(this.F);
        o1.h.f16869e.d(this.G);
        qt.q0(this.B);
        if (a.f.v() != null) {
            a.f.v().a(false);
        }
    }

    public final synchronized void W3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        Q3(4, f13870h0);
    }

    public final synchronized void X3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        Q3(1, f13875m0);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 260) {
            return;
        }
        int i4 = 0;
        if (i2 == 105) {
            while (i4 < 5) {
                o1.x.v(bVar, i2, this.f13887h[i4]);
                i4++;
            }
        } else {
            if (i2 != 134) {
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                return;
            }
            while (i4 < 15) {
                o1.x.v(bVar, i2, this.f13888i[i4]);
                i4++;
            }
        }
    }

    public final void Y3(int i2) {
        f13864b0 = i2;
        qt.y0(174, i2);
        int iB = this.f13889j.b(1, 0);
        int i3 = f13864b0;
        if (iB != i3) {
            this.f13889j.g(1, i3);
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (Z != 0) {
                if (iArr[0] == 0) {
                    U3(33, 1);
                } else if (iArr[0] == 1) {
                    U3(33, 2);
                } else if (iArr[0] == 3) {
                    U3(33, 3);
                } else if (iArr[0] == 2) {
                    U3(33, 6);
                }
            }
            if (f13863a0 == 0 || iArr[0] != 4) {
                return;
            }
            U3(32, 0);
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int iW = (iArr[1] * 255) / a.f.w();
                n1.b bVarP = a.f.p();
                LogType logType = LogType.CANBUS;
                bVarP.t(logType, "touch_x = " + iArr[1]);
                int i3 = (iArr[2] * 255) / a.f.i();
                a.f.p().t(logType, "touch_y = " + iArr[2]);
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    i3 = (iArr[2] * 255) / BluetoothClass.Device.PHONE_CORDLESS;
                    if (a.f.w() == 1200) {
                        i3 = (iArr[2] * 255) / MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR;
                    }
                }
                int i4 = nt.f8637c;
                if (i4 == 79 || i4 == 80 || i4 == 81 || i4 == 82 || i4 == 83 || i4 == 84 || i4 == 85 || i4 == 86 || i4 == 89 || i4 == 90 || i4 == 91 || i4 == 92 || i4 == 93 || i4 == 94 || i4 == 95 || i4 == 96 || i4 == 97 || i4 == 98 || i4 == 99 || i4 == 100 || i4 == 101 || i4 == 102 || i4 == 103 || i4 == 104) {
                    if (iArr[0] == 1) {
                        z.k.s(227, 133, 3, iW & 255, i3 & 255, 0);
                        return;
                    } else {
                        if (iArr[0] == 0) {
                            z.k.s(227, 133, 3, iW & 255, i3 & 255, 1);
                            return;
                        }
                        return;
                    }
                }
                if (iArr[0] == 1) {
                    z.k.s(227, 133, 3, i3 & 255, iW & 255, 0);
                    return;
                } else {
                    if (iArr[0] == 0) {
                        z.k.s(227, 133, 3, i3 & 255, iW & 255, 1);
                        return;
                    }
                    return;
                }
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
                    U3(6, iArr[0]);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    U3(0, iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    U3(1, iArr[0]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    U3(2, iArr[0]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    U3(3, iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    U3(4, iArr[0]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    U3(5, iArr[0]);
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
                    U3(7, iArr[0]);
                    break;
                }
                break;
            case 8:
                U3(8, 0);
                break;
            case 9:
                U3(9, 0);
                break;
            case 10:
                U3(10, 0);
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    U3(12, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    U3(13, iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    U3(14, iArr[0]);
                    break;
                }
                break;
            case 14:
                if (iArr != null && iArr.length > 0) {
                    int i5 = iArr[0];
                    if (i5 == 0) {
                        U3(15, 0);
                        break;
                    } else if (i5 == 1) {
                        U3(15, 1);
                        break;
                    }
                }
                break;
            case 15:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    U3(16, iArr[0]);
                    break;
                }
                break;
            case 16:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    U3(17, iArr[0]);
                    break;
                }
                break;
            case 17:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    U3(18, iArr[0]);
                    break;
                }
                break;
            case 18:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    U3(19, iArr[0]);
                    break;
                }
                break;
            case 19:
                if (iArr != null && iArr.length > 0) {
                    U3(35, iArr[0]);
                    break;
                }
                break;
            case 20:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] == 65) {
                        z.k.s(227, -112, 2, 125, 1);
                        z.k.s(227, -112, 2, 125, 3);
                        z.k.s(227, -112, 2, 125, 4);
                        z.k.s(227, -112, 2, 125, 6);
                        z.k.s(227, -112, 2, 125, 9);
                        z.k.s(227, -112, 2, 125, 10);
                        z.k.s(227, -112, 2, 125, 13);
                    } else if (iArr[0] == 31) {
                        z.k.s(227, -112, 2, 31, 0);
                    }
                    break;
                }
                break;
            case 21:
                if (iArr != null && iArr.length > 0) {
                    U3(34, iArr[0]);
                    break;
                }
                break;
            case 22:
                if (iArr != null && iArr.length > 1) {
                    P3(iArr[0], iArr[1]);
                    break;
                }
                break;
            case 23:
                if (iArr != null && iArr.length > 0) {
                    U3(20, iArr[0]);
                    break;
                }
                break;
            case 24:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 51, 1, (byte) iArr[0]);
                    break;
                }
                break;
            case 25:
                if (iArr != null && iArr.length > 1) {
                    d4(new byte[]{46, -124, 2, (byte) iArr[0], (byte) iArr[1], 0});
                    if (!this.f13885f) {
                        z.k.s(227, 132, 2, iArr[0], iArr[1]);
                    }
                    break;
                }
                break;
            case 26:
                if (iArr != null && iArr.length > 0) {
                    Y3(iArr[0]);
                    break;
                }
                break;
            default:
                switch (i2) {
                    case 40:
                        if (T2(iArr, 2)) {
                            z.k.s(227, -125, 2, iArr[0], iArr[1]);
                        }
                        break;
                    case 41:
                        if (T2(iArr, 2)) {
                            z.k.s(227, -33, 2, iArr[0], iArr[1]);
                        }
                        break;
                    case 42:
                        if (T2(iArr, 2)) {
                            z.k.s(227, -35, 2, iArr[0], iArr[1]);
                            if (iArr[0] == 2) {
                                int i6 = this.V + 1;
                                this.V = i6;
                                qt.y0(213, i6);
                                if (this.V > 2) {
                                    this.V = 0;
                                }
                            }
                        }
                        break;
                    case 43:
                        if (iArr != null && iArr.length > 1) {
                            z.k.s(227, 148, 2, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                    case 44:
                        if (iArr != null && iArr.length > 0) {
                            o1.u.z();
                            break;
                        }
                        break;
                    case 45:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, 147, 2, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                    case 46:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, 149, 2, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f13866d0 = f13877o0[o0.a(i2, 0, 36)];
        }
    }

    public final synchronized void Z3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        Q3(6, f13871i0);
    }

    public final void a3() {
        int i2;
        int[] iArr = new int[6];
        int i3 = 0;
        iArr[0] = 146;
        iArr[1] = 4;
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17797i;
            int i6 = w0.d.f17798j * 255;
            int i7 = w0.d.f17796h;
            if (i7 == 65536 || i7 == 65537 || i7 == 65538) {
                iArr[2] = 2;
            } else if (i7 == 0 || i7 == 1) {
                iArr[2] = 1;
            }
            int i8 = i6 % 6;
            if (i8 != 0 || i6 == 0) {
                iArr[3] = i8;
            } else {
                iArr[3] = 6;
            }
            iArr[4] = (i5 >> 8) & 255;
            iArr[5] = i5 & 255;
        } else if (i4 == 3) {
            iArr[2] = 5;
            int i9 = h0.c.J;
            iArr[4] = (i9 >> 8) & 255;
            iArr[5] = i9 & 255;
        } else if (i4 == 5) {
            iArr[2] = 6;
        } else if (i4 == 13) {
            iArr[2] = 9;
        } else if (i4 != 17) {
            switch (i4) {
                case 8:
                case 10:
                    iArr[2] = 3;
                    int i10 = u0.b.r3;
                    iArr[4] = (i10 >> 8) & 255;
                    iArr[5] = i10 & 255;
                    break;
                case 9:
                    iArr[2] = 4;
                    int i11 = u0.b.r3;
                    iArr[4] = (i11 >> 8) & 255;
                    iArr[5] = i11 & 255;
                    break;
                case 11:
                    iArr[2] = 10;
                    break;
                default:
                    iArr[2] = 0;
                    break;
            }
        } else {
            iArr[2] = 11;
        }
        int i12 = nt.f8637c;
        if ((i12 == 79 || i12 == 80 || i12 == 81 || i12 == 82 || i12 == 83 || i12 == 84 || i12 == 85 || i12 == 86 || i12 == 89 || i12 == 90 || i12 == 91 || i12 == 92 || i12 == 93 || i12 == 94 || i12 == 95 || i12 == 96 || i12 == 97 || i12 == 98 || i12 == 99 || i12 == 100 || i12 == 101 || i12 == 102 || i12 == 103 || i12 == 104) && s0.m("sys.carlink.type", 0) > 0 && (o1.u.S("com.syu.carlink") || (i2 = u0.b.D) == 10 || i2 == 12)) {
            iArr[2] = 8;
        }
        int[] iArr2 = new int[7];
        iArr2[0] = 227;
        while (i3 < 6) {
            int i13 = i3 + 1;
            iArr2[i13] = iArr[i3];
            i3 = i13;
        }
        z.k.s(iArr2);
    }

    public final synchronized void a4() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        Q3(5, f13872j0);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f13882c + bArr.length > 1024) {
            this.f13882c = 0;
            this.f13883d = 0;
            this.f13884e = 0;
        }
        System.arraycopy(bArr, 0, this.f13881b, this.f13882c, bArr.length);
        int length = this.f13882c + bArr.length;
        this.f13882c = length;
        int i5 = this.f13884e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13881b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13884e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13881b[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f13881b;
            if (b3 == bArr2[i4]) {
                T3(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f13883d = this.f13884e + 1;
            } else {
                this.f13883d = 1;
            }
            this.f13884e = 0;
        }
        int i7 = this.f13882c - 2;
        while (true) {
            i2 = this.f13883d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13881b;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f13884e = i8;
                int i9 = i8 + i2 + 3;
                this.f13884e = i9;
                if (i9 >= this.f13882c) {
                    this.f13884e = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f13884e;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f13881b[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f13881b;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f13883d;
                    T3(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f13883d = this.f13884e;
                } else {
                    this.f13883d++;
                }
                this.f13884e = 0;
            }
            this.f13883d++;
        }
        if (i2 != 0) {
            int i12 = this.f13882c - i2;
            this.f13882c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f13881b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13883d = 0;
        }
    }

    public final int b3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }

    public final synchronized void b4() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = f13865c0;
        int i3 = f13866d0;
        if (i2 < i3) {
            i2++;
        } else if (i2 > i3) {
            i2--;
        }
        Q3(7, i2);
    }

    public final void c4(int i2, String str) {
        if (str == null) {
            z.k.s(-29, -59, 2, (byte) i2, 1);
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length + 5];
        iArr[0] = -29;
        iArr[1] = -59;
        iArr[2] = (byte) (charArray.length + 2);
        iArr[3] = (byte) i2;
        iArr[4] = 1;
        for (int i3 = 0; i3 < str.length(); i3++) {
            iArr[5 + i3] = (byte) charArray[i3];
        }
        z.k.s(iArr);
    }

    public final void init() {
        o1.f<q> fVar = f13880r0;
        fVar.f(1, new q(1, 100));
        fVar.f(2, new q(2, 100));
        fVar.f(4, new q(4, 100));
        fVar.f(5, new q(5, 100));
        fVar.f(6, new q(6, 100));
        fVar.f(7, new q(7, 100));
    }
}
