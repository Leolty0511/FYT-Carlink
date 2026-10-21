package k0;

import android.app.ActivityManager;
import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.lang.reflect.Array;
import java.util.List;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ca extends lt implements o1.q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3935c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String[][] f3936d = (String[][]) Array.newInstance((Class<?>) String.class, 5, 3);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String[][] f3937e = (String[][]) Array.newInstance((Class<?>) String.class, 4, 3);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3938f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3939g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f3940h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3941i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f3942j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3943k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f3944l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f3945m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f3946n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f3947o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f3948p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3949q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f3950r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int[][] f3951s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int[] f3952t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f3953u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final byte[] f3954v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f3955w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f3956x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f3957y;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.f();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.B0();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 1) {
                if (o0.e.f16784k == 1) {
                    z.k.s(227, -58, 2, 162, 7);
                    return;
                } else {
                    z.k.s(227, -58, 2, 162, 6);
                    return;
                }
            }
            if (o0.e.f16784k == 1) {
                z.k.s(227, -58, 2, 162, 1);
            } else {
                z.k.s(227, -58, 2, 162, 0);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o0.e.f16784k == 1) {
                z.k.s(227, -58, 2, 162, 7);
            } else {
                z.k.s(227, -58, 2, 162, 6);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ca.this.a3(u0.b.K3);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 6000;
            int i3 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (ca.this.f3948p == millis && ca.this.f3949q == i3) {
                return;
            }
            ca.this.f3948p = millis;
            ca.this.f3949q = i3;
            byte b2 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time.month + 1);
            byte b4 = (byte) time.monthDay;
            int i4 = time.hour;
            byte b5 = (byte) i4;
            int i5 = time.minute;
            byte b6 = (byte) i5;
            if (i3 == 0 || i4 <= 12) {
                i2 = 0;
            } else {
                time.hour = i4 - 12;
                i2 = 1;
            }
            if (ca.this.f3941i == 1) {
                z.k.s(227, -126, 6, b2, b3, b4, b5, b6, time.second);
            } else {
                z.k.s(227, -56, 3, time.hour, i5, (byte) ((i2 << 7) | (i3 << 6)));
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 12 || i2 == 13) {
                return;
            }
            ca.this.l3(198, 161, 130);
            qt.y0(110, 0);
        }
    }

    public ca() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        this.f3939g = 0;
        this.f3940h = new int[][]{new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 3}, new int[]{17, 4}, new int[]{18, 29}, new int[]{19, 13}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{42, 50}, new int[]{43, 51}, new int[]{51, 1}, new int[]{52, 24}, new int[]{53, 22}, new int[]{54, 53}, new int[]{55, 5}, new int[]{56, 38}, new int[]{57, 18}, new int[]{61, 56}, new int[]{63, 25}, new int[]{72, 29}, new int[]{73, 32}, new int[]{74, 33}, new int[]{75, 34}, new int[]{76, 35}, new int[]{82, 18}, new int[]{83, 26}, new int[]{84, 11}, new int[]{86, 78}, new int[]{87, 55}, new int[]{89, 38}, new int[]{90, 12}, new int[]{91, 25}, new int[]{96, 4}, new int[]{97, 3}, new int[]{98, 16}, new int[]{104, 6}, new int[]{105, 1}, new int[]{106, 55}, new int[]{107, 54}, new int[]{111, 54}, new int[]{134, 16}, new int[]{240, 7}, new int[]{i.a.Theme_actionModeShareDrawable, 8}};
        this.f3941i = 0;
        this.f3942j = new a();
        this.f3943k = new b();
        this.f3944l = new c();
        this.f3945m = new d();
        this.f3946n = new e();
        this.f3947o = new f();
        this.f3948p = -1L;
        this.f3949q = -1;
        this.f3950r = new g();
        this.f3951s = (int[][]) Array.newInstance((Class<?>) int.class, 16, 8);
        this.f3952t = new int[]{34, 204};
        this.f3953u = 0;
        this.f3954v = new byte[1024];
        this.f3955w = 0;
        this.f3956x = 0;
        this.f3957y = 0;
    }

    public static void n3(byte[] bArr) {
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

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f3941i = (nt.f8633a >> 16) & 65535;
        if (nt.a()) {
            y0.g.f18094d.a(this.f3943k, 1);
            y0.g.f18095e.a(this.f3943k, 1);
            w0.e.f17815a.a(this.f3942j, 1);
            w0.e.f17819e.a(this.f3942j, 1);
            u0.c.f17393t.a(this.f3942j, 1);
            u0.c.f17392s.a(this.f3942j, 1);
            u0.c.f17374a.a(this.f3942j, 1);
        }
        u0.c.f17386m.a(this.f3944l, 1);
        o0.f.f16805c.a(this.f3945m, 1);
        int i2 = this.f3941i;
        if (i2 == 1 || i2 == 4 || i2 == 5) {
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8306a = new String[]{"com.syu.canbus"};
            } else {
                this.f7886a.f8306a = null;
            }
            mt mtVar = this.f7886a;
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8314i = 0;
            mtVar.f8312g = 1;
        } else {
            z.k.s(227, -119, 1, 5);
            z.k.s(227, -118, 1, 5);
            z.k.s(227, -112, 1, 137);
            z.k.s(227, -112, 1, 138);
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8310e = 1;
            mtVar2.f8311f = 1;
            mtVar2.f8312g = 1;
            u0.c.f17374a.a(this.f3950r, 1);
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8314i = 0;
            } else {
                this.f7886a.f8314i = 1;
            }
        }
        u0.c.f17397x.a(this.f3946n, 1);
        if (this.f3941i == 0) {
            qt.z(this.f3947o);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 22) {
            int i4 = i2 + 2;
            int i5 = i2 + 3;
            qt.y0(113, ((bArr[i4] & 255) + ((bArr[i5] << 8) & 65280)) / 100);
            qt.y0(1031, ((bArr[i4] & 255) + ((bArr[i5] << 8) & 65280)) / 100);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 64) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 101) {
            if (b2 == 106) {
                int i6 = i2 + 2;
                int i7 = i2 + 3;
                qt.y0(113, (bArr[i6] & 255) + ((bArr[i7] << 8) & 65280));
                qt.y0(1031, (bArr[i6] & 255) + ((bArr[i7] << 8) & 65280));
                return;
            }
            if (b2 == 40) {
                if (bArr[i2 + 2] == 1) {
                    qt.y0(104, bArr[i2 + 3] & 255);
                    return;
                }
                return;
            }
            if (b2 != 41) {
                if (b2 == 103) {
                    qt.y0(15, bArr[i2 + 2] & 1);
                    int i8 = i2 + 3;
                    qt.y0(29, bArr[i8] & 3);
                    qt.y0(30, (bArr[i8] >> 2) & 3);
                    qt.y0(31, (bArr[i8] >> 4) & 3);
                    qt.y0(32, (bArr[i8] >> 6) & 3);
                    return;
                }
                if (b2 != 104) {
                    if (b2 == 120) {
                        qt.y0(107, bArr[i2 + 2]);
                        qt.y0(108, bArr[i2 + 3]);
                        qt.y0(109, bArr[i2 + 4]);
                        return;
                    }
                    if (b2 == 121) {
                        if (nt.R == 0) {
                            return;
                        }
                        int i9 = i2 + 2;
                        qt.y0(110, bArr[i9]);
                        k3(bArr[i9]);
                        return;
                    }
                    switch (b2) {
                        case 32:
                            int i10 = i2 + 3;
                            byte b3 = bArr[i10];
                            this.f3934b = b3;
                            int i11 = i2 + 2;
                            byte b4 = bArr[i11];
                            if (b4 != 61) {
                                if (b4 != 86) {
                                    if (b4 != 82) {
                                        if (b4 == 83) {
                                            if (nt.a()) {
                                                if (u0.b.D == 12) {
                                                    if (this.f3934b == 0) {
                                                        z.k.s(227, 198, 2, 161, 9);
                                                    }
                                                } else if (this.f3934b != 0) {
                                                    l0.b0.l0(4, 0);
                                                } else {
                                                    l0.b0.l0(4, 1);
                                                }
                                            }
                                            break;
                                        } else {
                                            switch (b4) {
                                                case 14:
                                                    if (nt.a() && this.f3934b == 0) {
                                                        int i12 = u0.b.D;
                                                        if (i12 == 12) {
                                                            m3(161, 10);
                                                        } else if (i12 == 1) {
                                                            w0.d.f17790b.i();
                                                        } else {
                                                            u0.d.L1();
                                                        }
                                                        break;
                                                    }
                                                    break;
                                                case 15:
                                                    if (nt.a() && this.f3934b == 0) {
                                                        int i13 = u0.b.D;
                                                        if (i13 == 12) {
                                                            m3(161, 11);
                                                        } else if (i13 == 1) {
                                                            w0.d.f17790b.d();
                                                        } else {
                                                            u0.d.x1();
                                                        }
                                                        break;
                                                    }
                                                    break;
                                                case 16:
                                                    if (nt.a() && this.f3934b == 0) {
                                                        int i14 = u0.b.D;
                                                        if (i14 == 12) {
                                                            m3(161, 25);
                                                        } else if (i14 == 1) {
                                                            w0.d.f17790b.g();
                                                        } else {
                                                            u0.d.B1();
                                                        }
                                                        break;
                                                    }
                                                    break;
                                                case 17:
                                                    if (nt.a() && this.f3934b == 0) {
                                                        int i15 = u0.b.D;
                                                        if (i15 == 12) {
                                                            m3(161, 26);
                                                        } else if (i15 == 1) {
                                                            w0.d.f17790b.c();
                                                        } else {
                                                            u0.d.I1();
                                                        }
                                                        break;
                                                    }
                                                    break;
                                                case 18:
                                                    break;
                                                default:
                                                    switch (b4) {
                                                        case 32:
                                                        case 33:
                                                        case 34:
                                                        case 35:
                                                        case 36:
                                                        case 37:
                                                        case 38:
                                                        case 39:
                                                        case 40:
                                                        case 41:
                                                            if (b3 == 0) {
                                                                i3((bArr[i11] & 255) - 32);
                                                            }
                                                            break;
                                                        case 42:
                                                            int i16 = u0.b.D;
                                                            if (i16 == 2) {
                                                                if (b3 == 0) {
                                                                    h0.c.f2425b.h(13);
                                                                }
                                                            } else if ((i16 == 12 || i16 == 13) && b3 == 0) {
                                                                l3(198, 161, 23);
                                                            }
                                                            break;
                                                        case 43:
                                                            int i17 = u0.b.D;
                                                            if (i17 == 2) {
                                                                if (b3 == 0) {
                                                                    h0.c.f2425b.h(14);
                                                                }
                                                            } else if ((i17 == 12 || i17 == 13) && b3 == 0) {
                                                                l3(198, 161, 24);
                                                            }
                                                            break;
                                                        default:
                                                            switch (b4) {
                                                                case 52:
                                                                    if (nt.a()) {
                                                                        o1.u.x0();
                                                                    }
                                                                    break;
                                                                case 53:
                                                                    if (nt.a()) {
                                                                        o1.u.E();
                                                                    }
                                                                    break;
                                                                case 54:
                                                                    o1.u.j();
                                                                    break;
                                                                case 55:
                                                                    if (nt.a()) {
                                                                        a.i.A();
                                                                    }
                                                                    break;
                                                                case 56:
                                                                    int i18 = this.f3941i;
                                                                    if (i18 == 1 || i18 == 4) {
                                                                        o1.u.a1();
                                                                    } else {
                                                                        o1.u.i();
                                                                    }
                                                                    break;
                                                                case 57:
                                                                    o1.u.r();
                                                                    break;
                                                                default:
                                                                    switch (b4) {
                                                                        case 72:
                                                                            if (nt.a()) {
                                                                                if (this.f3934b != 0) {
                                                                                    l0.b0.l0(29, 0);
                                                                                } else {
                                                                                    l0.b0.l0(29, 1);
                                                                                }
                                                                            }
                                                                            break;
                                                                        case 73:
                                                                            if (nt.a()) {
                                                                                int i19 = u0.b.D;
                                                                                if (i19 == 12 || i19 == 13) {
                                                                                    z.k.s(227, 198, 2, 161, 25);
                                                                                } else {
                                                                                    u0.d.B1();
                                                                                }
                                                                            }
                                                                            break;
                                                                        case 74:
                                                                            if (nt.a()) {
                                                                                int i20 = u0.b.D;
                                                                                if (i20 == 12 || i20 == 13) {
                                                                                    z.k.s(227, 198, 2, 161, 25);
                                                                                } else {
                                                                                    u0.d.I1();
                                                                                }
                                                                            }
                                                                            break;
                                                                        case 75:
                                                                            if (nt.a()) {
                                                                                int i21 = u0.b.D;
                                                                                if (i21 == 12 || i21 == 13) {
                                                                                    z.k.s(227, 198, 2, 161, 10);
                                                                                } else {
                                                                                    u0.d.B1();
                                                                                }
                                                                            }
                                                                            break;
                                                                        case 76:
                                                                            if (nt.a()) {
                                                                                int i22 = u0.b.D;
                                                                                if (i22 == 12 || i22 == 13) {
                                                                                    z.k.s(227, 198, 2, 161, 11);
                                                                                } else {
                                                                                    u0.d.x1();
                                                                                }
                                                                            }
                                                                            break;
                                                                        default:
                                                                            switch (b4) {
                                                                                case 92:
                                                                                    if (this.f3941i == 5) {
                                                                                        if (b3 == 0) {
                                                                                            l0.b0.l0(1, 0);
                                                                                            l0.b0.l0(1, 1);
                                                                                        }
                                                                                        break;
                                                                                    } else if (b3 == 0 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                                        l3(198, 161, 28);
                                                                                        break;
                                                                                    }
                                                                                    break;
                                                                                case 93:
                                                                                    if (this.f3941i == 5) {
                                                                                        if (b3 == 0) {
                                                                                            l0.b0.l0(24, 0);
                                                                                            l0.b0.l0(24, 1);
                                                                                        }
                                                                                        break;
                                                                                    } else if (b3 == 0 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                                        l3(198, 161, 29);
                                                                                        break;
                                                                                    }
                                                                                    break;
                                                                                case 94:
                                                                                    if (this.f3941i == 5) {
                                                                                        if (b3 == 0) {
                                                                                            l0.b0.l0(18, 0);
                                                                                            l0.b0.l0(18, 1);
                                                                                        }
                                                                                        break;
                                                                                    } else if (b3 == 0 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                                        l3(198, 161, 30);
                                                                                        break;
                                                                                    }
                                                                                    break;
                                                                                case 95:
                                                                                    if (this.f3941i == 5) {
                                                                                        if (b3 == 0) {
                                                                                            l0.b0.l0(16, 0);
                                                                                            l0.b0.l0(16, 1);
                                                                                        }
                                                                                        break;
                                                                                    } else if (b3 == 0 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                                        l3(198, 161, 31);
                                                                                        break;
                                                                                    }
                                                                                    break;
                                                                                default:
                                                                                    if (nt.a()) {
                                                                                        byte b5 = bArr[i11];
                                                                                        byte b6 = bArr[i10];
                                                                                        this.f3939g = b5 & 255;
                                                                                        int i23 = 0;
                                                                                        while (true) {
                                                                                            iArr = this.f3940h;
                                                                                            if (i23 < iArr.length) {
                                                                                                int i24 = this.f3939g;
                                                                                                if (i24 != iArr[i23][0]) {
                                                                                                    i23++;
                                                                                                } else if (i24 != 0) {
                                                                                                    this.f3938f = i23;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        if ((b6 & 255) == 0) {
                                                                                            int i25 = this.f3938f;
                                                                                            if (i25 < iArr.length && i25 != 255) {
                                                                                                l0.b0.l0(iArr[i25][1], 1);
                                                                                            }
                                                                                            this.f3938f = 255;
                                                                                        } else if (i23 < iArr.length) {
                                                                                            l0.b0.l0(iArr[i23][1], 0);
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                            }
                                                                            break;
                                                                    }
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                            if (nt.a() && this.f3934b == 0) {
                                                int i26 = u0.b.D;
                                                if (i26 == 12) {
                                                    m3(161, 10);
                                                } else if (i26 == 1) {
                                                    w0.d.f17790b.h();
                                                } else {
                                                    u0.d.y1();
                                                }
                                                break;
                                            }
                                        }
                                    } else {
                                        if (nt.a()) {
                                            if (u0.b.D == 12) {
                                                z.k.s(227, 198, 2, 161, 9);
                                            } else if (this.f3934b != 0) {
                                                l0.b0.l0(3, 0);
                                            } else {
                                                l0.b0.l0(3, 1);
                                            }
                                        }
                                        break;
                                    }
                                } else if (nt.a() && this.f3934b == 0 && u0.b.D == 1) {
                                    w0.d.f17790b.w(2);
                                    break;
                                }
                            } else {
                                o1.u.W0();
                                break;
                            }
                            break;
                        case 33:
                            break;
                        case 34:
                            if (nt.a()) {
                                u0.d.R2(l0.c0.R0(bArr[i2 + 2] & 255));
                                u0.d.S2(l0.c0.R0(bArr[i2 + 3] & 255));
                                u0.d.T2(l0.c0.R0(bArr[i2 + 4] & 255));
                                u0.d.U2(l0.c0.R0(bArr[i2 + 5] & 255));
                            }
                            break;
                        case 35:
                            if (nt.a()) {
                                int i27 = i2 + 2;
                                int i28 = bArr[i27] & 255;
                                int i29 = i2 + 3;
                                int i30 = bArr[i29] & 255;
                                int i31 = i2 + 4;
                                int i32 = bArr[i31] & 255;
                                int i33 = i2 + 5;
                                int i34 = bArr[i33] & 255;
                                if (i28 == 0 && i30 == 0 && i32 == 0 && i34 == 0) {
                                    u0.d.C2(0);
                                } else if ((l0.c0.f13013g != i28 || l0.c0.f13014h != i30 || l0.c0.f13015i != i32 || l0.c0.f13016j != i34) && u0.b.f17347o == 0) {
                                    u0.d.C2(1);
                                    l0.c0.f13017k = 4;
                                    l0.b0.b(l0.c0.f13018l);
                                }
                                l0.c0.f13013g = i28;
                                l0.c0.f13014h = i30;
                                l0.c0.f13015i = i32;
                                l0.c0.f13016j = i34;
                                u0.d.D2(l0.c0.R0(bArr[i27] & 255));
                                u0.d.E2(l0.c0.R0(bArr[i29] & 255));
                                u0.d.F2(l0.c0.R0(bArr[i31] & 255));
                                u0.d.G2(l0.c0.R0(bArr[i33] & 255));
                            }
                            break;
                        case 36:
                            byte b7 = bArr[i2 + 2];
                            byte b8 = bArr[i2 + 4];
                            byte b9 = bArr[i2 + 5];
                            byte b10 = bArr[i2 + 7];
                            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                                qt.y0(1, (b7 >> 7) & 1);
                                qt.y0(2, (b7 >> 6) & 1);
                            } else {
                                qt.y0(1, (b7 >> 6) & 1);
                                qt.y0(2, (b7 >> 7) & 1);
                            }
                            qt.y0(4, (b7 >> 5) & 1);
                            qt.y0(3, (b7 >> 4) & 1);
                            qt.y0(5, (b7 >> 3) & 1);
                            qt.y0(0, (b7 >> 2) & 1);
                            qt.y0(119, (b8 >> 7) & 1);
                            qt.y0(120, (b8 >> 4) & 7);
                            qt.y0(117, (b8 >> 3) & 1);
                            qt.y0(116, (b8 >> 2) & 1);
                            qt.y0(121, (b8 >> 1) & 1);
                            qt.y0(115, (b8 >> 0) & 1);
                            qt.y0(118, (b9 >> 7) & 1);
                            o1.x.B(nt.f8643f, 123, new int[]{(b9 >> 6) & 1});
                            qt.y0(124, (b10 >> 0) & 1);
                            qt.y0(122, (b10 >> 1) & 1);
                            break;
                        default:
                            switch (b2) {
                                case 80:
                                    int[] iArr2 = new int[6];
                                    for (int i35 = 0; i35 < 6; i35++) {
                                        iArr2[i35] = bArr[i2 + 2 + i35];
                                    }
                                    o1.x.B(nt.f8643f, 105, iArr2);
                                    break;
                                case 81:
                                    int i36 = i2 + 2;
                                    int i37 = i2 + 4;
                                    o1.x.B(nt.f8643f, 99, new int[]{bArr[i36] & 255, bArr[i37] & 255, bArr[i2 + 5] & 255});
                                    try {
                                        StringBuilder sb = new StringBuilder();
                                        int i38 = (i2 + i3) - 1;
                                        for (int i39 = i2 + 6; i39 < i38; i39 += 2) {
                                            sb.append((char) ((bArr[i39 + 1] & 255) | (bArr[i39] << 8)));
                                        }
                                        qt.z0(100, new int[]{bArr[i36] & 255, bArr[i2 + 3] & 255, bArr[i37] & 255}, sb.toString());
                                    } catch (Exception e2) {
                                        e2.printStackTrace();
                                        return;
                                    }
                                    break;
                                case 82:
                                    qt.y0(101, ((((bArr[i2 + 2] & 255) * 60) + bArr[i2 + 3]) * 60) + bArr[i2 + 4]);
                                    break;
                                case 83:
                                    qt.y0(106, (bArr[i2 + 3] * DhcpPacket.DHCP_VENDOR_CLASS_ID) + bArr[i2 + 4]);
                                    break;
                            }
                            break;
                    }
                    return;
                }
            }
            byte b11 = bArr[i2 + 2];
            byte b12 = bArr[i2 + 3];
            int i40 = i2 + 4;
            byte b13 = bArr[i40];
            byte b14 = bArr[i2 + 5];
            int i41 = i2 + 6;
            byte b15 = bArr[i41];
            int i42 = i2 + 7;
            byte b16 = bArr[i42];
            int i43 = i2 + 8;
            byte b17 = bArr[i43];
            byte b18 = bArr[i2 + 9];
            int[] iArr3 = new int[1];
            iArr3[0] = (b11 & 128) == 0 ? 0 : 1;
            qt.y0(10, iArr3);
            int[] iArr4 = new int[1];
            iArr4[0] = (b11 & 64) == 0 ? 0 : 1;
            qt.y0(11, iArr4);
            int[] iArr5 = new int[1];
            iArr5[0] = (b11 & 32) == 0 ? 0 : 1;
            qt.y0(12, iArr5);
            int[] iArr6 = new int[1];
            iArr6[0] = (b11 & 8) == 0 ? 0 : 1;
            qt.y0(13, iArr6);
            int[] iArr7 = new int[1];
            iArr7[0] = (b11 & 4) == 0 ? 0 : 1;
            qt.y0(14, iArr7);
            int[] iArr8 = new int[1];
            iArr8[0] = (b11 & 2) == 0 ? 0 : 1;
            qt.y0(15, iArr8);
            int[] iArr9 = new int[1];
            iArr9[0] = (b11 & 1) == 0 ? 0 : 1;
            qt.y0(16, iArr9);
            int[] iArr10 = new int[1];
            iArr10[0] = (b12 & 128) == 0 ? 0 : 1;
            qt.y0(18, iArr10);
            int[] iArr11 = new int[1];
            iArr11[0] = (b12 & 64) == 0 ? 0 : 1;
            qt.y0(19, iArr11);
            int[] iArr12 = new int[1];
            iArr12[0] = (b12 & 32) == 0 ? 0 : 1;
            qt.y0(20, iArr12);
            int i44 = b12 & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i44 > 7) {
                i44 = 7;
            }
            qt.y0(21, i44);
            if (this.f3941i == 0) {
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b13 = bArr[i43];
                    b17 = bArr[i40];
                }
                byte b19 = b17;
                int i45 = b13 & 255;
                int i46 = (b15 >> 3) & 1;
                if (i46 == 1) {
                    if (i45 < 30 || i45 > 60) {
                        if (i45 >= 119 && i45 <= 171) {
                            if (i45 == 119) {
                                qt.y0(27, -2);
                            } else if (i45 == 171) {
                                qt.y0(27, -3);
                            } else if (i45 >= 120 && i45 <= 170) {
                                qt.y0(27, ((i45 - 120) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                            }
                        }
                    } else if (i45 == 30) {
                        qt.y0(27, -2);
                    } else if (i45 == 60) {
                        qt.y0(27, -3);
                    } else if (i45 >= 31 && i45 <= 59) {
                        qt.y0(27, ((i45 - 31) * 5) + 155);
                    }
                    qt.y0(25, 15);
                } else if (i46 == 0) {
                    qt.y0(27, -1);
                    qt.y0(25, i45);
                }
                qt.y0(40, b14 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(44, (b14 >> 4) & 7);
                qt.y0(42, (b14 >> 7) & 1);
                qt.y0(67, b15 & 1);
                qt.y0(17, (b15 >> 1) & 1);
                qt.y0(66, (b15 >> 7) & 1);
                qt.y0(53, (b15 >> 2) & 1);
                qt.y0(54, i46);
                qt.y0(37, (b15 >> 6) & 1);
                int i47 = b19 & 255;
                if (i47 < 30 || i47 > 60) {
                    if (i47 >= 119 && i47 <= 171) {
                        if (i47 == 119) {
                            qt.y0(28, -2);
                        } else if (i47 == 171) {
                            qt.y0(28, -3);
                        } else if (i47 >= 120 && i47 <= 170) {
                            qt.y0(28, ((i47 - 120) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                        }
                    }
                } else if (i47 == 30) {
                    qt.y0(28, -2);
                } else if (i47 == 60) {
                    qt.y0(28, -3);
                } else if (i47 >= 31 && i47 <= 59) {
                    qt.y0(28, ((i47 - 31) * 5) + 155);
                }
                qt.y0(29, b18 & 3);
                qt.y0(30, (b18 >> 2) & 3);
                qt.y0(31, (b18 >> 4) & 3);
                qt.y0(32, 3 & (b18 >> 6));
            } else {
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    qt.y0(27, b14 & 255);
                    qt.y0(28, b13 & 255);
                } else {
                    qt.y0(27, b13 & 255);
                    qt.y0(28, b14 & 255);
                }
                qt.y0(53, (b15 >> 2) & 1);
                qt.y0(37, (b15 >> 6) & 1);
            }
            if (nt.a()) {
                l0.f0.e(bArr[i41], bArr[i42]);
                return;
            }
            return;
        }
        int i48 = i2 + 2;
        int i49 = i2 + 3;
        qt.y0(114, (bArr[i48] & 255) + ((bArr[i49] << 8) & 65280));
        qt.y0(1032, (bArr[i48] & 255) + ((bArr[i49] << 8) & 65280));
    }

    @Override // k0.lt
    public void W2() {
        o1.y yVar = u0.c.f17374a;
        yVar.d(this.f3950r);
        u0.c.f17397x.d(this.f3946n);
        u0.c.f17386m.d(this.f3944l);
        o0.f.f16805c.d(this.f3945m);
        qt.q0(this.f3947o);
        y0.g.f18094d.d(this.f3943k);
        y0.g.f18095e.d(this.f3943k);
        w0.e.f17815a.d(this.f3942j);
        w0.e.f17819e.d(this.f3942j);
        u0.c.f17393t.d(this.f3942j);
        u0.c.f17392s.d(this.f3942j);
        yVar.d(this.f3942j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 112) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            l3(144, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            l3(198, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            int i3 = (nt.f8645g[30] << 2) | iArr[0];
            o1.b0.i("value =" + i3);
            l3(198, 169, i3);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            l3(198, 169, (iArr[0] << 2) | nt.f8645g[29]);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            l3(113, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 5) {
            return;
        }
        int i4 = nt.f8633a;
        if (i4 == 131372) {
            n3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f3952t[this.f3953u % 2], 37, 17, -86, 0});
            n3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f3952t[this.f3953u % 2], 37, 17, -86, 0});
            n3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f3952t[this.f3953u % 2], 37, 17, -86, 0});
        } else if (i4 == 196908) {
            n3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f3952t[this.f3953u % 2], 37, 18, -86, 0});
            n3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f3952t[this.f3953u % 2], 37, 18, -86, 0});
            n3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f3952t[this.f3953u % 2], 37, 18, -86, 0});
        }
        int i5 = this.f3953u + 1;
        this.f3953u = i5;
        this.f3953u = i5 % 2;
    }

    public final void a3(int i2) {
        if (i2 == 1 || i2 == 2) {
            z.k.s(227, 39, 2, 27, 0);
        } else if (i2 == 6) {
            z.k.s(227, 39, 2, 4, 0);
        } else {
            z.k.s(227, 39, 2, 2, 0);
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f3955w + bArr.length > 1024) {
            this.f3955w = 0;
            this.f3956x = 0;
            this.f3957y = 0;
        }
        System.arraycopy(bArr, 0, this.f3954v, this.f3955w, bArr.length);
        int length = this.f3955w + bArr.length;
        this.f3955w = length;
        int i3 = this.f3957y;
        if (i3 != 0) {
            if (i3 >= length) {
                return;
            }
            byte b2 = this.f3954v[0];
            for (int i4 = 2; i4 < this.f3957y; i4++) {
                byte b3 = this.f3954v[i4];
            }
            byte[] bArr2 = this.f3954v;
            j3(bArr2, 0, bArr2[1] + 2);
            this.f3956x = this.f3957y + 1;
            this.f3957y = 0;
        }
        int i5 = this.f3955w - 2;
        while (true) {
            i2 = this.f3956x;
            if (i2 >= i5) {
                break;
            }
            byte[] bArr3 = this.f3954v;
            if (bArr3[i2] == 85 || bArr3[i2] == 97) {
                if (this.f3957y > 512) {
                    this.f3957y = 0;
                } else {
                    byte b4 = bArr3[i2 + 1];
                    this.f3957y = b4;
                    if (b4 >= this.f3955w) {
                        this.f3957y = b4 - i2;
                        break;
                    }
                    byte b5 = bArr3[i2 + 1];
                    for (int i6 = i2 + 2; i6 < this.f3957y; i6++) {
                        byte b6 = this.f3954v[i6];
                    }
                    byte[] bArr4 = this.f3954v;
                    int i7 = this.f3956x;
                    j3(bArr4, i7, bArr4[i7 + 1] + 2);
                    this.f3956x = this.f3957y;
                    this.f3957y = 0;
                }
            }
            this.f3956x++;
        }
        if (i2 != 0) {
            int i8 = this.f3955w - i2;
            this.f3955w = i8;
            if (i8 != 0) {
                byte[] bArr5 = this.f3954v;
                System.arraycopy(bArr5, i2, bArr5, 0, i8);
            }
            this.f3956x = 0;
        }
    }

    public String h3() {
        List<ActivityManager.RunningTaskInfo> runningTasks = a.f.d().getRunningTasks(2);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        try {
            return runningTasks.get(0).topActivity.getClassName();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void i3(int i2) {
        int i3 = u0.b.D;
        if (i3 == 8 || i3 == 9) {
            u0.d.I3(37, i3, 8, i2);
        }
        if (i3 == 4 && i2 > 0) {
            o0.e.f16766b.D(i2 - 1);
            return;
        }
        if (i3 == 1 && i2 > 0 && i2 < 7) {
            w0.f.B(i2);
            return;
        }
        if (i3 == 2) {
            switch (i2) {
                case 0:
                    h0.c.f2425b.h(2);
                    break;
                case 1:
                    h0.c.f2425b.h(3);
                    break;
                case 2:
                    h0.c.f2425b.h(4);
                    break;
                case 3:
                    h0.c.f2425b.h(5);
                    break;
                case 4:
                    h0.c.f2425b.h(6);
                    break;
                case 5:
                    h0.c.f2425b.h(7);
                    break;
                case 6:
                    h0.c.f2425b.h(8);
                    break;
                case 7:
                    h0.c.f2425b.h(9);
                    break;
                case 8:
                    h0.c.f2425b.h(10);
                    break;
                case 9:
                    h0.c.f2425b.h(11);
                    break;
            }
        }
        if (i3 == 12 || i3 == 13) {
            switch (i2) {
                case 0:
                    l3(198, 161, 13);
                    break;
                case 1:
                    l3(198, 161, 14);
                    break;
                case 2:
                    l3(198, 161, 15);
                    break;
                case 3:
                    l3(198, 161, 16);
                    break;
                case 4:
                    l3(198, 161, 17);
                    break;
                case 5:
                    l3(198, 161, 18);
                    break;
                case 6:
                    l3(198, 161, 19);
                    break;
                case 7:
                    l3(198, 161, 20);
                    break;
                case 8:
                    l3(198, 161, 21);
                    break;
                case 9:
                    l3(198, 161, 22);
                    break;
            }
        }
    }

    public final void j3(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        a.f.p().t(LogType.CANBUS, "revObd ---> " + o1.b0.d(bArr, i2, bArr.length));
        byte b2 = bArr[i2];
        if (b2 != 85) {
            if (b2 != 97) {
                return;
            }
            qt.I(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i7 = i2 + 2;
        qt.y0(27, bArr[i7] & 255);
        int i8 = i2 + 3;
        qt.y0(28, bArr[i8] & 255);
        int i9 = i2 + 4;
        qt.y0(21, (bArr[i9] >> 0) & 15);
        switch ((bArr[i9] >> 4) & 15) {
            case 1:
                i4 = 1;
                i5 = 0;
                i6 = 0;
                break;
            case 2:
                i6 = 1;
                i4 = 1;
                i5 = 0;
                break;
            case 3:
                i6 = 1;
                i5 = 0;
                i4 = 0;
                break;
            case 4:
                i5 = 1;
                i6 = 1;
                i4 = 0;
                break;
            case 5:
                i5 = 1;
                i4 = 1;
                i6 = 0;
                break;
            case 6:
                i5 = 1;
                i6 = 0;
                i4 = i6;
                break;
            case 7:
                i5 = 1;
                i6 = i5;
                i4 = i6;
                break;
            default:
                i5 = 0;
                i6 = i5;
                i4 = i6;
                break;
        }
        qt.y0(18, i5);
        qt.y0(20, i6);
        qt.y0(19, i4);
        int i10 = i2 + 5;
        qt.y0(29, (bArr[i10] >> 0) & 3);
        qt.y0(31, (bArr[i10] >> 2) & 3);
        qt.y0(30, (bArr[i10] >> 4) & 3);
        qt.y0(32, (bArr[i10] >> 6) & 3);
        int i11 = i2 + 6;
        qt.y0(13, (bArr[i11] >> 0) & 1);
        qt.y0(11, (bArr[i11] >> 1) & 1);
        qt.y0(14, (bArr[i11] >> 2) & 1);
        qt.y0(53, (bArr[i11] >> 4) & 1);
        qt.y0(15, (bArr[i11] >> 7) & 1);
        qt.y0(16, (bArr[i11] >> 6) & 1);
        int i12 = i2 + 7;
        qt.y0(12, (bArr[i12] >> 0) & 3);
        qt.y0(126, bArr[i7]);
        qt.y0(127, bArr[i8]);
        qt.y0(128, bArr[i9]);
        qt.y0(129, bArr[i10]);
        qt.y0(130, bArr[i11]);
        qt.y0(131, bArr[i12]);
    }

    public final void k3(byte b2) {
        if (b2 == 1 || b2 == 3 || b2 == 4) {
            if (u0.b.D != 12) {
                u0.b.f17311c.c(12);
            }
            if (!h3().equals("com.syu.carinfo.focus.FocusSyncBtActi")) {
                o1.u.f("com.syu.canbus.sync");
            }
            m3(121, 131);
        }
    }

    public final void l3(int i2, int i3, int i4) {
        z.k.s(227, (byte) i2, 2, (byte) i3, (byte) i4);
    }

    public final void m3(int i2, int i3) {
        try {
            Z0(0, new int[]{i2, i3}, null, null);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }
}
