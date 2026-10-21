package k0;

import android.drm.DrmManagerClient;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.BatteryStats;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class fk extends lt {
    public static int K;
    public static int L;
    public static int M;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5206b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5209e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5207c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5208d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{16, 6}, new int[]{24, 1}, new int[]{34, 5}, new int[]{43, 5}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5210f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f5211g = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 55}, new int[]{6, 6}, new int[]{8, 53}, new int[]{9, 12}, new int[]{10, 29}, new int[]{18, 58}, new int[]{22, 29}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{27, 32}, new int[]{28, 34}, new int[]{29, 35}, new int[]{30, 33}, new int[]{31, 53}, new int[]{32, 1}, new int[]{36, 54}, new int[]{40, 18}, new int[]{42, 29}, new int[]{43, 5}, new int[]{44, 2}, new int[]{47, 9}, new int[]{48, 18}, new int[]{51, 24}, new int[]{52, 18}, new int[]{53, 26}, new int[]{57, 25}, new int[]{59, 2}, new int[]{69, 7}, new int[]{70, 8}, new int[]{75, 21}, new int[]{84, 1}, new int[]{97, 62}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5212h = 255;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5213i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f5214j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5215k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f5216l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f5217m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5218n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f5219o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5220p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f5221q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f5222r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f5223s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f5224t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f5225u = 1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public o1.g0 f5226v = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f5227w = new b();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f5228x = new c();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f5229y = new d();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f5230z = new e();
    public Runnable A = new f();
    public Runnable B = new g();
    public int C = 0;
    public Runnable D = new h();
    public Runnable E = new i();
    public int F = 0;
    public int G = 0;
    public int H = 0;
    public int I = 0;
    public int J = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            fk fkVar = fk.this;
            byte b2 = (byte) (fkVar.f5214j + 1);
            fkVar.f5214j = b2;
            if (b2 == 20) {
                fkVar.f5213i = true;
                if (fkVar.f5207c == 12 && ((i2 = nt.f8633a) == 16449979 || i2 == 16515515)) {
                    int[] iArr = nt.f8645g;
                    if (iArr[127] == 2) {
                        z.k.s(227, 4, 111, 55, 0, 255, 255);
                    } else if (iArr[127] == 3) {
                        z.k.s(227, 4, 111, 55, 1, 255, 255);
                    } else {
                        z.k.s(227, 4, 111, 55, 2, 255, 255);
                    }
                }
                l0.b0.o0(fk.this.f5216l);
                fk.this.f5214j = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if (fk.this.f5220p == 0) {
                if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
                    z.k.s(227, 3, -95, 0, 0, 0);
                } else {
                    z.k.s(227, 3, -95, 0, 0, i2);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8633a) {
                case 459198:
                case 524734:
                case 1180094:
                case 1245630:
                case 5439932:
                case 5767612:
                    fk.c3();
                    break;
                default:
                    fk.b3();
                    break;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fk.this.i3((byte) -110, u0.b.i3);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fk.this.i3((byte) -108, u0.b.j3);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fk.this.i3((byte) -109, u0.b.k3);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 0);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fk fkVar = fk.this;
            fkVar.f5223s = 0;
            fkVar.f5224t = 0;
            l0.b0.b(fkVar.E);
            fk.this.C = 5;
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fk fkVar = fk.this;
            int i2 = fkVar.C - 1;
            fkVar.C = i2;
            if (i2 <= 0) {
                l0.b0.p0(fkVar.E);
                fk.this.C = 5;
            }
            if (u0.b.f17306a0 != 1) {
                if (nt.f8633a == 9568699 && i2 <= 3 && u0.b.f17347o == 1) {
                    z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 10, 0);
                    qt.a(0);
                    return;
                }
                return;
            }
            z.k.s(227, 4, 111, 40, 0, 255, 255);
            fk fkVar2 = fk.this;
            fkVar2.k3(fkVar2.f5226v.b(1, 0));
            switch (nt.f8633a) {
                case 459198:
                case 524734:
                    z.k.s(227, 2, 36, 13, 49);
                    break;
                case 1180094:
                    z.k.s(227, 2, 36, 16, 49);
                    break;
                case 1245630:
                    z.k.s(227, 2, 36, 15, 49);
                    break;
                case 5439932:
                case 5767612:
                    z.k.s(227, 2, 36, 11, 49);
                    break;
                case 9306555:
                    z.k.s(227, 2, 36, 6, 49);
                    break;
                case 9372091:
                    z.k.s(227, 2, 36, 1, 49);
                    break;
                case 9437627:
                    z.k.s(227, 2, 36, 3, 49);
                    break;
                case 9503163:
                case 9568699:
                    z.k.s(227, 2, 36, 2, 49);
                    break;
                case 16449979:
                case 16515515:
                    z.k.s(227, 2, 36, 4, 49);
                    break;
                case 16581051:
                case 16646587:
                    z.k.s(227, 2, 36, 5, 49);
                    break;
            }
            switch (nt.f8633a) {
                case 459198:
                case 524734:
                case 1180094:
                case 1245630:
                case 5439932:
                case 5767612:
                    if (!o1.u.a0()) {
                        z.k.s(227, 3, -96, 0, 0, 0);
                    } else {
                        z.k.s(227, 3, -96, 0, 1, 0);
                    }
                    break;
            }
        }
    }

    public static void b3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 145;
        iArr[2] = d3();
        if (u0.b.D == 1) {
            int i4 = w0.d.f17796h;
            if (i4 - 65536 == 0 || 1 == i4 - 65536 || 2 == i4 - 65536) {
                int i5 = w0.d.f17798j & 255;
                iArr[3] = (i5 / 10) + 48;
                iArr[4] = (i5 % 10) + 48;
                int i6 = w0.d.f17797i;
                iArr[6] = ((i6 % 100000) / 10000) + 48;
                iArr[7] = ((i6 % 10000) / 1000) + 48;
                iArr[8] = ((i6 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i6 % 100) / 10) + 48;
            } else {
                int i7 = w0.d.f17798j;
                iArr[3] = (i7 / 10) + 48;
                iArr[4] = (i7 % 10) + 48;
                int i8 = w0.d.f17797i;
                iArr[6] = ((i8 % 10000) / 1000) + 48;
                iArr[7] = ((i8 % 1000) / 100) + 48;
                iArr[8] = ((i8 % 100) / 10) + 48;
                iArr[9] = (i8 % 10) + 48;
            }
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i9 = i2 + 1;
            iArr2[i9] = (byte) iArr[i2];
            i2 = i9;
        }
        z.k.s(iArr2);
    }

    public static void c3() {
        int[] iArr = new int[34];
        int i2 = 0;
        for (int i3 = 0; i3 < 34; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 32;
        iArr[1] = 145;
        iArr[2] = (u0.b.f17306a0 << 7) & 128;
        iArr[3] = d3();
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
    public static int d3() {
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

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
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
                a3(13);
                return;
            }
            a3(14);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(15);
                return;
            } else {
                a3(16);
                return;
            }
        }
        if (i2 == 67) {
            int i3 = iArr[1];
            if (i3 == 0) {
                if (u0.b.f17347o == 0) {
                    if (nt.f8633a == 9568699) {
                        z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 10, 1);
                        return;
                    } else {
                        j3(1);
                        return;
                    }
                }
                return;
            }
            if (i3 == 1) {
                if (u0.b.f17347o == 1) {
                    if (nt.f8633a == 9568699) {
                        z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 10, 0);
                        return;
                    } else {
                        j3(1);
                        return;
                    }
                }
                return;
            }
            if (i3 == 2) {
                j3(2);
                return;
            }
            if (i3 == 3) {
                j3(3);
                return;
            } else if (i3 == 4) {
                j3(4);
                return;
            } else {
                if (i3 != 5) {
                    return;
                }
                j3(5);
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] == 1) {
                if (nt.W == 1) {
                    z.k.s(227, 4, 111, 17, 0, 255, 255);
                    return;
                } else {
                    z.k.s(227, 4, 111, 16, 0, 255, 255);
                    return;
                }
            }
            if (iArr[1] == 2) {
                if (nt.W == 1) {
                    z.k.s(227, 4, 111, 17, 1, 255, 255);
                    return;
                } else {
                    z.k.s(227, 4, 111, 16, 1, 255, 255);
                    return;
                }
            }
            if (iArr[1] == 3) {
                if (nt.W == 1) {
                    z.k.s(227, 4, 111, 16, 0, 255, 255);
                    return;
                } else {
                    z.k.s(227, 4, 111, 17, 0, 255, 255);
                    return;
                }
            }
            if (iArr[1] == 4) {
                if (nt.W == 1) {
                    z.k.s(227, 4, 111, 16, 1, 255, 255);
                    return;
                } else {
                    z.k.s(227, 4, 111, 17, 1, 255, 255);
                    return;
                }
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
            } else if (iArr[1] == 11) {
                z.k.s(227, 4, 111, 21, 0, 255, 255);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, 4, 111, 21, 1, 255, 255);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(2);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(2);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(4);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(4);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[15] == 1) {
                        a3(5);
                    }
                } else if (nt.f8645g[15] == 0) {
                    a3(5);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(6);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(6);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(7);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(7);
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    a3(12);
                } else {
                    a3(11);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f5226v.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8322q = 1;
        mtVar.f8314i = 1;
        mtVar.f8313h = 0;
        mtVar.f8317l = 0;
        o1.y yVar = u0.c.f17386m;
        yVar.a(this.D, 1);
        qt.z(this.B);
        switch (nt.f8633a) {
            case 459198:
            case 1180094:
            case 1245630:
            case 5439932:
                this.f7886a.f8317l = 1;
                yVar.a(this.f5228x, 1);
                u0.c.f17374a.a(this.f5228x, 1);
                w0.e.f17815a.a(this.f5228x, 1);
                w0.e.f17819e.a(this.f5228x, 1);
                u0.c.f17388o.a(this.f5229y, 1);
                u0.c.f17389p.a(this.f5230z, 1);
                u0.c.f17390q.a(this.A, 1);
                y0.g.f18094d.a(this.f5227w, 1);
                y0.g.f18095e.a(this.f5227w, 1);
                break;
            case 524734:
            case 5767612:
                mt mtVar2 = this.f7886a;
                mtVar2.f8317l = 1;
                mtVar2.f8313h = 2;
                yVar.a(this.f5228x, 1);
                u0.c.f17374a.a(this.f5228x, 1);
                w0.e.f17815a.a(this.f5228x, 1);
                w0.e.f17819e.a(this.f5228x, 1);
                u0.c.f17388o.a(this.f5229y, 1);
                u0.c.f17389p.a(this.f5230z, 1);
                u0.c.f17390q.a(this.A, 1);
                y0.g.f18094d.a(this.f5227w, 1);
                y0.g.f18095e.a(this.f5227w, 1);
                break;
            case 9306555:
            case 16581051:
                yVar.a(this.f5228x, 1);
                u0.c.f17374a.a(this.f5228x, 1);
                w0.e.f17815a.a(this.f5228x, 1);
                w0.e.f17819e.a(this.f5228x, 1);
                u0.c.f17388o.a(this.f5229y, 1);
                u0.c.f17389p.a(this.f5230z, 1);
                u0.c.f17390q.a(this.A, 1);
                break;
            case 9372091:
            case 16646587:
                this.f7886a.f8313h = 2;
                yVar.a(this.f5228x, 1);
                u0.c.f17374a.a(this.f5228x, 1);
                w0.e.f17815a.a(this.f5228x, 1);
                w0.e.f17819e.a(this.f5228x, 1);
                u0.c.f17388o.a(this.f5229y, 1);
                u0.c.f17389p.a(this.f5230z, 1);
                u0.c.f17390q.a(this.A, 1);
                break;
            case 9437627:
                this.f7886a.f8314i = 0;
                break;
            case 9503163:
                yVar.a(this.f5228x, 1);
                u0.c.f17374a.a(this.f5228x, 1);
                w0.e.f17815a.a(this.f5228x, 1);
                w0.e.f17819e.a(this.f5228x, 1);
                break;
            case 9568699:
                this.f7886a.f8313h = 2;
                yVar.a(this.f5228x, 1);
                u0.c.f17374a.a(this.f5228x, 1);
                w0.e.f17815a.a(this.f5228x, 1);
                w0.e.f17819e.a(this.f5228x, 1);
                break;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56, 70};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        byte b2;
        byte b3 = bArr[i2 + 1];
        if (b3 == -112) {
            switch (nt.f8633a) {
                case 459198:
                case 524734:
                case 1180094:
                case 1245630:
                case 5439932:
                case 5767612:
                    int i10 = i2 + 3;
                    if (K != (bArr[i10] & 255)) {
                        int i11 = bArr[i10] & 255;
                        K = i11;
                        if (i11 == 1) {
                            if (!o1.u.S(a.b.Q)) {
                                if (this.f5217m == 0 && this.f5220p == 0 && (SystemProperties.getBoolean("persist.lesc.video.ignore", false) || nt.f8645g[158] == 1)) {
                                    SystemProperties.set("persist.lesc.video.ignore", "false");
                                    qt.y0(158, 0);
                                    a.i.a0(250L);
                                }
                                o1.u.z();
                            }
                        } else if (i11 == 0 && o1.u.S(a.b.Q) && this.H == 1) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                    }
                    int i12 = i2 + 4;
                    if (L != (bArr[i12] & 255)) {
                        int i13 = bArr[i12] & 255;
                        L = i13;
                        y0.h.t0(i13);
                    }
                    break;
            }
            return;
        }
        if (b3 == -24) {
            int i14 = i2 + 2;
            qt.y0(160, (bArr[i14] >> 7) & 1);
            int i15 = nt.f8633a;
            if (i15 == 9372091 || i15 == 9568699) {
                int i16 = i2 + 5;
                if (this.f5217m != (bArr[i16] & 255)) {
                    this.f5217m = bArr[i16] & 255;
                    if (qt.k0()) {
                        if (this.f5217m == 1) {
                            u0.i.l3().g4(131072, true);
                        } else {
                            u0.i.l3().g4(131072, false);
                        }
                    } else if (this.f5217m == 1) {
                        qt.a(1);
                    } else {
                        qt.a(0);
                    }
                }
                if (nt.f8633a == 9372091) {
                    this.F = (bArr[i14] >> 6) & 1;
                    this.G = (bArr[i14] >> 7) & 1;
                    qt.y0(Process.MEDIA_UID, (bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME) | ((((((((bArr[i2 + 7] == 1 ? 1 : 0) << 3) & 8) | (((bArr[i2 + 8] == 1 ? 1 : 0) << 2) & 4)) | (((bArr[i2 + 6] == 1 ? 1 : 0) << 1) & 2)) | (((bArr[i2 + 4] == 1 ? 1 : 0) << 0) & 1)) << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK) | (bArr[i14] & 240));
                    return;
                }
                return;
            }
            if (i15 != 5767612 && i15 != 524734) {
                if (qt.k0()) {
                    int i17 = i2 + 5;
                    if (this.f5218n != bArr[i17]) {
                        byte b4 = bArr[i17];
                        this.f5218n = b4;
                        if (b4 == 1) {
                            if (!o1.u.S("com.syu.fourcamera2")) {
                                this.f5219o = true;
                            }
                            c.e.d().c(591);
                            return;
                        } else {
                            if (this.f5219o) {
                                this.f5219o = false;
                                c.e.d().c(614);
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            int i18 = i2 + 5;
            if (this.f5217m != (bArr[i18] & 255)) {
                this.f5217m = bArr[i18] & 255;
                n1.b bVarP = a.f.p();
                LogType logType = LogType.CANBUS;
                bVarP.t(logType, "isFlagCamera 11111111  ==   " + this.f5217m);
                if (u0.b.f17357r0 == 0) {
                    int i19 = this.f5217m;
                    if (i19 == 1) {
                        a.i.a0(300L);
                        a.f.p().t(logType, "JumpPage.isCarUiTop 11111111  ==   " + o1.u.a0());
                        if (!o1.u.a0()) {
                            a.f.p().t(logType, "JumpPage.isCarUiTop 3333333  ==  U_CAR_BACKCAR_UI 111 ");
                            qt.y0(158, 1);
                            SystemProperties.set("persist.lesc.video.ignore", "true");
                            a.i.a0(200L);
                            this.f5221q = true;
                            o1.u.z();
                        }
                        u0.d.C2(0);
                        return;
                    }
                    if (i19 == 0 && this.f5220p == 0) {
                        a.f.p().t(logType, "JumpPage.isCarUiTop 222222222  ==   " + o1.u.a0() + "____  iJumppage  = " + this.f5221q);
                        a.i.a0(400L);
                        a.f.p().t(logType, "JumpPage.isCarUiTop 555555  ==   " + o1.u.a0() + "____  iJumppage  = " + this.f5221q);
                        if (this.f5221q && o1.u.a0()) {
                            a.f.p().t(logType, "JumpPage.isCarUiTop 44444444  ==  U_CAR_BACKCAR_UI 222222222 ");
                            o1.u.k();
                            a.i.a0(350L);
                            SystemProperties.set("persist.lesc.video.ignore", "false");
                        }
                        this.f5221q = false;
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 24) {
            int i20 = i2 + 3;
            o1.x.C(nt.f8643f, 1049, new int[]{11, ((((bArr[i20] >> 7) & 1) << 3) & 8) | ((((bArr[i20] >> 6) & 1) << 4) & 16) | ((u0.b.f17366w << 6) & 64)}, null, null);
            l0.c0.N1((bArr[i20] >> 7) & 1, (bArr[i20] >> 6) & 1, (bArr[i20] >> 3) & 1);
            return;
        }
        if (b3 == 26) {
            o1.x[] xVarArr = nt.f8643f;
            int i21 = i2 + 4;
            o1.x.C(xVarArr, 1049, new int[]{12, (bArr[i21] >> 7) & 1}, null, null);
            o1.x.C(xVarArr, 1049, new int[]{9, (bArr[i21] >> 6) & 1}, null, null);
            byte b5 = bArr[i2 + 7];
            if (b5 == 1) {
                o1.x.C(xVarArr, 1049, new int[]{4, 4}, null, null);
                return;
            }
            if (b5 == 2) {
                o1.x.C(xVarArr, 1049, new int[]{4, 2}, null, null);
                return;
            } else if (b5 == 3) {
                o1.x.C(xVarArr, 1049, new int[]{4, 3}, null, null);
                return;
            } else {
                if (b5 != 4) {
                    return;
                }
                o1.x.C(xVarArr, 1049, new int[]{4, 1}, null, null);
                return;
            }
        }
        if (b3 == 65) {
            u0.d.R2(l0.c0.b1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.U0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.U0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.b1(bArr[i2 + 5] & 255));
            int i22 = i2 + 6;
            int i23 = bArr[i22] & 255;
            int i24 = i2 + 7;
            int i25 = bArr[i24] & 255;
            int i26 = i2 + 8;
            int i27 = bArr[i26] & 255;
            int i28 = i2 + 9;
            int i29 = bArr[i28] & 255;
            if (i23 == 255 && i25 == 255 && i27 == 255 && i29 == 255) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i23 || l0.c0.f13014h != i25 || l0.c0.f13015i != i27 || l0.c0.f13016j != i29) && u0.b.f17347o == 0) {
                u0.d.C2(1);
            }
            l0.c0.f13013g = i23;
            l0.c0.f13014h = i25;
            l0.c0.f13015i = i27;
            l0.c0.f13016j = i29;
            u0.d.D2(l0.c0.b1(bArr[i22] & 255));
            u0.d.E2(l0.c0.U0(bArr[i24] & 255));
            u0.d.F2(l0.c0.U0(bArr[i26] & 255));
            u0.d.G2(l0.c0.b1(bArr[i28] & 255));
            return;
        }
        if (b3 == 17) {
            byte b6 = bArr[i2 + 4];
            byte b7 = bArr[i2 + 5];
            this.f5207c = b6 & 255;
            int i30 = 0;
            while (true) {
                int[][] iArr2 = this.f5208d;
                if (i30 >= iArr2.length) {
                    break;
                }
                int i31 = this.f5207c;
                if (i31 == iArr2[i30][0]) {
                    if (i31 == 0) {
                        break;
                    }
                    this.f5206b = i30;
                    this.f5212h = i31;
                    break;
                }
                i30++;
            }
            int i32 = nt.f8633a;
            if ((i32 == 5767612 || i32 == 524734) && u0.b.f17357r0 == 0) {
                int i33 = i2 + 2;
                if (this.f5220p != ((bArr[i33] >> 2) & 1)) {
                    int i34 = (bArr[i33] >> 2) & 1;
                    this.f5220p = i34;
                    if (i34 == 1) {
                        float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                        this.f5222r = y0.f.f18037c;
                        y0.h.t0((int) f2);
                    } else if (i34 == 0) {
                        y0.h.t0(this.f5222r);
                    }
                }
            }
            int i35 = this.f5207c;
            if (i35 == 0) {
                if (this.f5212h != 12) {
                    if ((b7 & 255) == 0) {
                        int i36 = this.f5206b;
                        int[][] iArr3 = this.f5208d;
                        if (i36 < iArr3.length && i36 != 255) {
                            l0.b0.l0(iArr3[i36][1], 1);
                        }
                        this.f5206b = 255;
                    }
                } else if (!this.f5213i) {
                    l0.b0.l0(2, 0);
                    l0.b0.l0(2, 1);
                }
                l0.b0.o0(this.f5216l);
                this.f5213i = false;
                this.f5214j = (byte) 0;
                this.f5215k = 0;
                this.f5212h = 0;
            } else if (i35 != 5) {
                if (i35 != 12) {
                    int i37 = b7 & 255;
                    if (i37 == 1) {
                        int[][] iArr4 = this.f5208d;
                        if (i30 < iArr4.length) {
                            l0.b0.l0(iArr4[i30][1], 0);
                        }
                    } else if (i37 == 0) {
                        int i38 = this.f5206b;
                        int[][] iArr5 = this.f5208d;
                        if (i38 < iArr5.length) {
                            i4 = 255;
                            if (i38 != 255) {
                                l0.b0.l0(iArr5[i38][1], 1);
                            }
                        } else {
                            i4 = 255;
                        }
                        this.f5206b = i4;
                    }
                } else if (this.f5215k != b7) {
                    this.f5215k = b7;
                    if (b7 == 1) {
                        this.f5213i = false;
                        this.f5214j = (byte) 0;
                        l0.b0.a(this.f5216l);
                    }
                }
            } else if (nt.f8633a != 9437627 || h0.c.E == 4) {
                l0.b0.l0(18, 0);
                l0.b0.l0(18, 1);
            } else {
                l0.b0.l0(12, 0);
                l0.b0.l0(12, 1);
            }
            qt.i(bArr[i2 + 9] & 255, 255 & bArr[i2 + 8], true, 540);
            o1.x.C(nt.f8643f, 1049, new int[]{3, (bArr[i2 + 2] >> 3) & 1}, null, null);
            return;
        }
        if (b3 == 18) {
            byte b8 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b8 >> 6) & 1);
                qt.y0(2, (b8 >> 7) & 1);
            } else {
                qt.y0(1, (b8 >> 7) & 1);
                qt.y0(2, (b8 >> 6) & 1);
            }
            qt.y0(3, (b8 >> 5) & 1);
            qt.y0(4, (b8 >> 4) & 1);
            qt.y0(5, (b8 >> 3) & 1);
            qt.y0(0, (b8 >> 2) & 1);
            return;
        }
        if (b3 == 33) {
            this.f5210f = bArr[i2 + 2] & 255;
            int i39 = bArr[i2 + 3] & 255;
            int i40 = 0;
            while (true) {
                iArr = this.f5211g;
                if (i40 >= iArr.length) {
                    break;
                }
                int i41 = this.f5210f;
                if (i41 == iArr[i40][0]) {
                    if (i41 == 0) {
                        break;
                    }
                    this.f5209e = i40;
                    break;
                }
                i40++;
            }
            int i42 = i39 & 255;
            if (i42 == 1) {
                if (i40 < iArr.length) {
                    l0.b0.l0(iArr[i40][1], 0);
                    return;
                }
                return;
            } else {
                if (i42 == 0) {
                    int i43 = this.f5209e;
                    if (i43 < iArr.length) {
                        i5 = 255;
                        if (i43 != 255) {
                            l0.b0.l0(iArr[i43][1], 1);
                        }
                    } else {
                        i5 = 255;
                    }
                    this.f5209e = i5;
                    return;
                }
                return;
            }
        }
        if (b3 == 34) {
            byte b9 = bArr[i2 + 2];
            byte b10 = bArr[i2 + 3];
            if (b9 == 1) {
                int i44 = this.f5223s;
                if (b10 != i44) {
                    if (b10 > i44) {
                        for (int i45 = 0; i45 < b10 - this.f5223s; i45++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (b10 < i44) {
                        for (int i46 = 0; i46 < this.f5223s - b10; i46++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    this.f5223s = b10;
                    return;
                }
                return;
            }
            if ((b9 == 2 || b9 == 3 || b9 == 4 || b9 == 5) && b10 != (i6 = this.f5224t)) {
                if (b10 > i6) {
                    for (int i47 = 0; i47 < b10 - this.f5224t; i47++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if (b10 < i6) {
                    for (int i48 = 0; i48 < this.f5224t - b10; i48++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                }
                this.f5224t = b10;
                return;
            }
            return;
        }
        if (b3 == 49) {
            byte b11 = bArr[i2 + 2];
            byte b12 = bArr[i2 + 3];
            byte b13 = bArr[i2 + 4];
            byte b14 = bArr[i2 + 6];
            byte b15 = bArr[i2 + 7];
            qt.y0(10, (b11 >> 6) & 1);
            qt.y0(53, (b11 >> 5) & 1);
            qt.y0(38, (b11 >> 4) & 1);
            qt.y0(13, (b11 >> 3) & 1);
            qt.y0(58, (b12 >> 7) & 1);
            qt.y0(11, (b12 >> 6) & 1);
            qt.y0(52, (b12 >> 5) & 1);
            qt.y0(12, (b12 >> 4) & 1);
            qt.y0(54, (b12 >> 3) & 1);
            qt.y0(14, (b12 >> 2) & 1);
            qt.y0(76, (b12 >> 1) & 1);
            qt.y0(15, (b13 >> 4) & 1);
            qt.y0(16, (b13 >> 5) & 1);
            qt.y0(29, (((b13 >> 6) & 1) << 4) | ((b13 >> 0) & 3));
            qt.y0(30, (((b13 >> 7) & 1) << 4) | ((b13 >> 2) & 3));
            if (b14 != 3) {
                if (b14 == 5) {
                    i7 = 0;
                    i8 = 1;
                } else if (b14 == 6) {
                    i7 = 0;
                    i9 = 0;
                    i8 = 1;
                } else if (b14 == 11) {
                    i8 = 0;
                    i9 = 0;
                    i7 = 1;
                } else if (b14 != 12) {
                    i7 = 0;
                    i8 = 0;
                } else {
                    i8 = 0;
                    i7 = 1;
                    i9 = 1;
                }
                i9 = i8;
            } else {
                i7 = 0;
                i8 = 0;
                i9 = 1;
            }
            qt.y0(18, i7);
            qt.y0(19, i8);
            qt.y0(20, i9);
            qt.y0(21, b15 & 255);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i49 = i2 + 8;
                b2 = 255;
                if ((bArr[i49] & 255) == 254) {
                    qt.y0(28, -2);
                } else if ((bArr[i49] & 255) == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i49] & 255);
                }
                int i50 = i2 + 9;
                if ((bArr[i50] & 255) == 254) {
                    qt.y0(27, -2);
                } else if ((bArr[i50] & 255) == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i50] & 255);
                }
            } else {
                b2 = 255;
                int i51 = i2 + 8;
                if ((bArr[i51] & 255) == 254) {
                    qt.y0(27, -2);
                } else if ((bArr[i51] & 255) == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i51] & 255);
                }
                int i52 = i2 + 9;
                if ((bArr[i52] & 255) == 254) {
                    qt.y0(28, -2);
                } else if ((bArr[i52] & 255) == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i52] & 255);
                }
            }
            qt.y0(44, bArr[i2 + 11] & b2);
            return;
        }
        if (b3 == 50) {
            int i53 = bArr[i2 + 4] & 255;
            int i54 = bArr[i2 + 5] & 255;
            int i55 = bArr[i2 + 6] & 255;
            int i56 = bArr[i2 + 7] & 255;
            qt.y0(1032, (i53 << 8) | i54);
            qt.y0(1031, (i55 << 8) | i56);
            qt.y0(98, bArr[i2 + 8] & 255);
            qt.y0(99, bArr[i2 + 9] & 255);
            int i57 = i2 + 10;
            int i58 = i2 + 11;
            qt.y0(120, ((bArr[i57] << 8) & 65280) | (bArr[i58] & 255));
            o1.x.C(nt.f8643f, 1049, new int[]{5, (bArr[i58] & 255) | ((bArr[i57] << 8) & 65280)}, null, null);
            return;
        }
        if (b3 != 97) {
            if (b3 != 98) {
                return;
            }
            int i59 = i2 + 2;
            qt.y0(145, (bArr[i59] >> 7) & 1);
            qt.y0(146, (bArr[i59] >> 6) & 1);
            qt.y0(147, (bArr[i59] >> 5) & 1);
            int i60 = i2 + 3;
            qt.y0(148, (bArr[i60] >> 7) & 1);
            qt.y0(149, (bArr[i60] >> 5) & 3);
            qt.y0(150, (bArr[i60] >> 3) & 3);
            int i61 = i2 + 4;
            if (this.I != ((bArr[i61] >> 7) & 1)) {
                int i62 = (bArr[i61] >> 7) & 1;
                this.I = i62;
                qt.y0(162, i62);
            }
            if (this.J != ((bArr[i61] >> 6) & 1)) {
                int i63 = (bArr[i61] >> 7) & 1;
                this.J = i63;
                qt.y0(163, i63);
                return;
            }
            return;
        }
        int i64 = nt.f8633a;
        if (i64 == 5439932 || i64 == 5767612 || i64 == 459198 || i64 == 524734 || i64 == 1180094 || i64 == 1245630) {
            int i65 = i2 + 2;
            qt.y0(161, (bArr[i65] >> 2) & 1);
            qt.y0(156, (bArr[i65] >> 1) & 1);
            qt.y0(157, (bArr[i65] >> 0) & 1);
            qt.y0(159, bArr[i2 + 3] & 255);
            return;
        }
        int i66 = i2 + 2;
        qt.y0(100, (bArr[i66] >> 7) & 1);
        qt.y0(121, (bArr[i66] >> 6) & 1);
        qt.y0(118, (bArr[i66] >> 4) & 3);
        qt.y0(101, (bArr[i66] >> 2) & 3);
        int i67 = i2 + 3;
        qt.y0(102, (bArr[i67] >> 7) & 1);
        qt.y0(103, (bArr[i67] >> 6) & 1);
        qt.y0(104, (bArr[i67] >> 5) & 1);
        qt.y0(105, (bArr[i67] >> 4) & 1);
        qt.y0(106, (bArr[i67] >> 3) & 1);
        qt.y0(107, (bArr[i67] >> 2) & 1);
        qt.y0(108, (bArr[i67] >> 1) & 1);
        qt.y0(109, (bArr[i67] >> 0) & 1);
        int i68 = i2 + 4;
        qt.y0(119, (bArr[i68] >> 7) & 1);
        qt.y0(110, (bArr[i68] >> 6) & 1);
        qt.y0(111, (bArr[i68] >> 5) & 1);
        qt.y0(112, (bArr[i68] >> 4) & 1);
        qt.y0(113, (bArr[i68] >> 2) & 3);
        qt.y0(114, (bArr[i68] >> 1) & 1);
        qt.y0(115, (bArr[i68] >> 0) & 1);
        int i69 = i2 + 5;
        qt.y0(116, (bArr[i69] >> 7) & 1);
        qt.y0(117, (bArr[i69] >> 6) & 1);
        qt.y0(123, (bArr[i69] >> 5) & 1);
        qt.y0(124, (bArr[i69] >> 4) & 1);
        qt.y0(125, (bArr[i69] >> 3) & 1);
        qt.y0(126, (bArr[i69] >> 2) & 1);
        qt.y0(127, ((bArr[i69] >> 0) & 3) + 1);
        int i70 = i2 + 6;
        qt.y0(122, (bArr[i70] >> 5) & 7);
        qt.y0(128, (bArr[i70] >> 3) & 3);
        qt.y0(129, (bArr[i70] >> 2) & 1);
        qt.y0(130, (bArr[i70] >> 1) & 1);
        qt.y0(131, (bArr[i70] >> 0) & 1);
        int i71 = i2 + 7;
        qt.y0(132, (bArr[i71] >> 7) & 1);
        qt.y0(133, (bArr[i71] >> 6) & 1);
        qt.y0(134, (bArr[i71] >> 5) & 1);
        qt.y0(140, (bArr[i71] >> 4) & 1);
        qt.y0(139, (bArr[i71] >> 0) & 15);
        int i72 = i2 + 8;
        qt.y0(135, (bArr[i72] >> 7) & 1);
        qt.y0(136, (bArr[i72] >> 6) & 1);
        qt.y0(137, (bArr[i72] >> 5) & 1);
        qt.y0(138, (bArr[i72] >> 3) & 3);
        qt.y0(155, (bArr[i72] >> 0) & 7);
        int i73 = i2 + 9;
        qt.y0(141, (bArr[i73] >> 7) & 1);
        qt.y0(142, (bArr[i73] >> 6) & 1);
        qt.y0(143, (bArr[i73] >> 5) & 1);
        qt.y0(144, (bArr[i73] >> 4) & 1);
        qt.y0(151, (bArr[i73] >> 3) & 1);
        qt.y0(152, (bArr[i73] >> 2) & 1);
        qt.y0(153, (bArr[i73] >> 1) & 1);
        qt.y0(154, (bArr[i73] >> 0) & 1);
    }

    @Override // k0.lt
    public void W2() {
        this.f5226v.j();
        o1.y yVar = u0.c.f17386m;
        yVar.d(this.D);
        l0.b0.p0(this.E);
        qt.q0(this.B);
        yVar.d(this.f5228x);
        u0.c.f17374a.d(this.f5228x);
        w0.e.f17815a.d(this.f5228x);
        w0.e.f17819e.d(this.f5228x);
        u0.c.f17388o.d(this.f5229y);
        u0.c.f17389p.d(this.f5230z);
        u0.c.f17390q.d(this.A);
        y0.g.f18094d.d(this.f5227w);
        y0.g.f18095e.d(this.f5227w);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 165) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003) {
            if (nt.f8633a == 9568699) {
                if (u0.b.f17347o == 0) {
                    z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 10, 1);
                    qt.a(1);
                    return;
                } else {
                    z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 10, 0);
                    qt.a(0);
                    return;
                }
            }
            j3(1);
        }
        if (i2 == 1005) {
            if (T2(iArr, 1)) {
                switch (iArr[0]) {
                    case 0:
                        if (this.F != 1) {
                            z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 8, 1);
                        } else {
                            z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 8, 0);
                        }
                        break;
                    case 1:
                        j3(6);
                        break;
                    case 2:
                        j3(7);
                        break;
                    case 3:
                        if (this.G != 1) {
                            z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 9, 1);
                        } else {
                            z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 9, 0);
                        }
                        break;
                    case 4:
                        j3(4);
                        break;
                    case 5:
                        j3(5);
                        break;
                    case 6:
                        j3(2);
                        break;
                    case 7:
                        j3(3);
                        break;
                }
            }
            return;
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int iW = (iArr[1] * 1280) / a.f.w();
                int i3 = (iArr[2] * MediaProperties.HEIGHT_720) / a.f.i();
                if (iArr[0] == 0) {
                    z.k.s(227, 6, 44, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, 6, 44, 0, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 0:
                z.k.s(227, 2, 61, iArr[0], iArr[1]);
                break;
            case 1:
                z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
                break;
            case 2:
                z.k.s(227, 3, 106, 5, 1, iArr[0]);
                break;
            case 3:
                a.f.p().t(LogType.CANBUS, "CarDisNormalScreen  222 =   ints[0] = " + iArr[0]);
                this.H = iArr[0];
                z.k.s(227, 3, -96, 0, iArr[0], 0);
                break;
            case 4:
                z.k.s(227, 25, 44, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                break;
            case 5:
                z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, iArr[0], iArr[1]);
                break;
            case 6:
                if (nt.U == 1) {
                    o1.x.x(nt.f8643f, 1001, iArr[0]);
                }
                break;
            case 7:
                k3(iArr[0]);
                break;
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 2, 61, i2, 1);
        a.i.a0(200L);
        z.k.s(227, 2, 61, i2, 0);
    }

    public final void i3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() < 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 4] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 3] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void j3(int i2) {
        z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, i2, 1);
        a.i.a0(100L);
        z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, i2, 0);
    }

    public final void k3(int i2) {
        qt.y0(164, i2);
        M = i2;
        int iB = this.f5226v.b(1, 0);
        int i3 = M;
        if (iB != i3) {
            this.f5226v.g(1, i3);
        }
    }
}
