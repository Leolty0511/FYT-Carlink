package k0;

import android.content.ComponentName;
import android.content.Intent;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.util.Log;
import android.view.InputDevice;
import com.syu.jni.ToolsJni;

/* JADX INFO: loaded from: classes2.dex */
public class bt extends lt {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f3824v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f3825w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3826b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o1.g0 f3827c = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte f3828d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f3829e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f3830f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f3831g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f3832h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f3833i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3834j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3835k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3836l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3837m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3838n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f3839o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f3840p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f3841q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f3842r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f3843s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f3844t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f3845u;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.Y == 1) {
                z.k.s(227, 133, 1, 1);
            } else {
                z.k.s(227, 133, 1, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.n4 == 1) {
                ToolsJni.cmd_6_mute_amp(1);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.n4 == 1 && u0.b.f17320f == 1) {
                u0.d.u0();
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 0) {
            }
            int i2 = u0.b.D;
            if (i2 == 2) {
                bt.this.h3(2);
                return;
            }
            if (i2 == 3) {
                bt.this.h3(12);
                return;
            }
            if (i2 == 13) {
                bt.this.h3(4);
                return;
            }
            if (i2 == 14) {
                bt.this.h3(11);
                return;
            }
            switch (i2) {
                case 5:
                    bt.this.h3(7);
                    break;
                case 6:
                    bt.this.h3(6);
                    break;
                case 7:
                    bt.this.h3(8);
                    break;
                case 8:
                    bt.this.h3(9);
                    break;
                case 9:
                    bt.this.h3(10);
                    break;
                default:
                    bt.this.h3(128);
                    break;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (bt.this.f3837m == 0) {
                if (bt.f3825w == 0) {
                    if (u0.b.C == 13 || !o1.u.S(a.b.Q) || bt.this.f3835k) {
                        return;
                    }
                    o1.u.k();
                    return;
                }
                if (!o1.u.S(a.b.Q)) {
                    bt.this.f3836l = false;
                    bt.this.f3835k = false;
                    o1.u.f(a.b.R);
                } else if (bt.this.f3836l) {
                    bt.this.f3835k = true;
                }
                o1.l.a().postDelayed(this, 1000L);
            }
        }
    }

    public class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte f3851a = 0;

        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bt btVar = bt.this;
            int i2 = btVar.f3844t + 1;
            btVar.f3844t = i2;
            if (i2 > 8) {
                btVar.f3844t = 0;
            }
            qt.y0(19, btVar.f3844t);
            qt.y0(20, bt.this.f3844t % 2);
        }
    }

    public bt() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8311f = 1;
        mtVar.f8317l = 1;
        this.f3838n = 0;
        this.f3839o = new a();
        this.f3840p = new b();
        this.f3841q = new c();
        this.f3842r = new d();
        this.f3843s = new e();
        this.f3845u = new f();
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f3827c.a();
        k3(this.f3827c.b(1, 1));
        u0.c.f17374a.a(this.f3842r, 1);
        u0.c.f17386m.a(this.f3842r, 1);
        u0.c.f17381h.a(this.f3840p, 1);
        u0.c.f17376c.a(this.f3841q, 1);
        y0.g.f18113w.a(this.f3839o, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 4) {
            byte b3 = bArr[i2 + 2];
            this.f3828d = b3;
            this.f3837m = b3 & 1;
            qt.y0(51, b3 & 1);
            return;
        }
        if (b2 == 5) {
            byte b4 = bArr[i2 + 2];
            this.f3828d = b4;
            nt.f8650k = (b4 >> 1) & 1;
            nt.f8651l = (b4 & 1) == 1 ? 0 : 1;
            qt.y0(InputDevice.SOURCE_GAMEPAD, nt.f8650k);
            qt.y0(1026, nt.f8651l);
            return;
        }
        switch (b2) {
            case 32:
                i3(bArr[i2 + 2], bArr[i2 + 3]);
                break;
            case 33:
                byte b5 = bArr[i2 + 2];
                this.f3828d = b5;
                this.f3829e = bArr[i2 + 3];
                this.f3830f = bArr[i2 + 4];
                this.f3831g = bArr[i2 + 5];
                this.f3832h = bArr[i2 + 6];
                this.f3833i = bArr[i2 + 7];
                qt.y0(11, (b5 >> 7) & 1);
                qt.y0(12, (this.f3828d >> 6) & 1);
                qt.y0(13, (this.f3828d >> 5) & 1);
                qt.y0(14, (this.f3828d >> 4) & 1);
                qt.y0(15, (this.f3828d >> 3) & 1);
                qt.y0(16, (this.f3828d >> 2) & 1);
                qt.y0(17, (this.f3828d >> 1) & 1);
                qt.y0(32, this.f3828d & 1);
                qt.y0(19, this.f3829e);
                qt.y0(20, (this.f3830f >> 7) & 1);
                qt.y0(25, this.f3830f & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(21, (this.f3830f >> 3) & 1);
                qt.y0(24, (this.f3830f >> 2) & 1);
                qt.y0(22, (this.f3830f >> 1) & 1);
                qt.y0(23, this.f3830f & 1);
                byte b6 = this.f3831g;
                if (b6 == -128) {
                    qt.y0(26, -2);
                } else if (b6 == -1) {
                    qt.y0(26, -3);
                } else if (b6 != 0) {
                    qt.y0(26, ((b6 & 63) * 2) + ((b6 >> 6) & 1));
                } else {
                    qt.y0(26, -1);
                }
                byte b7 = this.f3832h;
                if (b7 == -128) {
                    qt.y0(27, -2);
                } else if (b7 == -1) {
                    qt.y0(27, -3);
                } else if (b7 != 0) {
                    qt.y0(27, ((b7 & 63) * 2) + ((b7 >> 6) & 1));
                } else {
                    qt.y0(27, -1);
                }
                qt.y0(28, (this.f3833i >> 7) & 1);
                qt.y0(30, (this.f3833i >> 4) & 7);
                qt.y0(29, (this.f3833i >> 3) & 1);
                qt.y0(31, this.f3833i & 7);
                break;
            case 34:
                if (u0.b.f17347o == 1 && u0.b.G == 1) {
                    this.f3828d = bArr[i2 + 2];
                    this.f3829e = (byte) (bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
                    this.f3830f = (byte) (bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME);
                    this.f3831g = (byte) (bArr[i2 + 5] & DhcpPacket.DHCP_DOMAIN_NAME);
                    this.f3832h = (byte) (bArr[i2 + 6] & DhcpPacket.DHCP_DOMAIN_NAME);
                    u0.d.C2(0);
                    if ((this.f3828d & 1) != 0) {
                        u0.d.D2(this.f3829e);
                        u0.d.E2(this.f3830f);
                        u0.d.F2(this.f3831g);
                        u0.d.G2(this.f3832h);
                    } else {
                        u0.d.R2(this.f3829e);
                        u0.d.S2(this.f3830f);
                        u0.d.T2(this.f3831g);
                        u0.d.U2(this.f3832h);
                    }
                    break;
                }
                break;
            case 35:
                if (u0.b.f17347o == 1 && u0.b.I == 1) {
                    byte b8 = bArr[i2 + 2];
                    this.f3828d = b8;
                    int i4 = b8 & 127;
                    this.f3834j = i4;
                    u0.d.y3(i4);
                    break;
                }
                break;
            case 36:
                byte b9 = bArr[i2 + 2];
                this.f3828d = b9;
                if (nt.W == 0) {
                    qt.y0(1, (b9 >> 3) & 1);
                    qt.y0(2, (this.f3828d >> 2) & 1);
                } else {
                    qt.y0(1, (b9 >> 2) & 1);
                    qt.y0(2, (this.f3828d >> 3) & 1);
                }
                qt.y0(3, (this.f3828d >> 1) & 1);
                qt.y0(4, this.f3828d & 1);
                qt.y0(0, (this.f3828d >> 5) & 1);
                qt.y0(5, (this.f3828d >> 4) & 1);
                break;
            case 37:
                byte b10 = bArr[i2 + 2];
                this.f3828d = b10;
                int i5 = (b10 >> 7) & 1;
                if (f3825w != i5) {
                    this.f3836l = true;
                    f3825w = i5;
                    o1.l.a().post(this.f3843s);
                }
                int i6 = this.f3828d & DhcpPacket.DHCP_DOMAIN_NAME;
                if (this.f3838n != i6) {
                    this.f3838n = i6;
                    if (i6 == 4 && SystemProperties.getInt("persist.fyt.gps_speed", 0) != 0 && !o1.u.S(a.b.Y)) {
                        Intent intent = new Intent("android.intent.action.ay");
                        intent.setPackage("com.syu.frontvideo");
                        intent.setComponent(new ComponentName("com.syu.frontvideo", "com.syu.exdvr.ActivityLaunch"));
                        o1.u.e(intent);
                        break;
                    }
                }
                break;
            case 38:
                if (f3824v != 0) {
                    byte b11 = bArr[i2 + 2];
                    this.f3828d = b11;
                    if ((b11 & 1) != 1) {
                        if (o1.u.T(a.b.O)) {
                            o1.u.k();
                            u0.d.T3(6, 0);
                            j3(0);
                            qt.y0(1017, 0);
                        }
                    } else if (!o1.u.T(a.b.O)) {
                        o1.u.A0();
                        j3(1);
                        qt.y0(1017, 1);
                    }
                    break;
                }
                break;
            case 39:
                qt.y0(90, bArr[i2 + 2] & 255);
                qt.y0(91, bArr[i2 + 3] & 255);
                qt.y0(92, bArr[i2 + 4] & 255);
                qt.y0(93, bArr[i2 + 5] & 255);
                break;
            case 40:
                a.f.p().x("胎压数据：", bArr, i2, i3);
                qt.y0(89, bArr[i2 + 2] & 255);
                qt.y0(81, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                qt.y0(83, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(85, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(87, (bArr[i2 + 10] & 255) | ((bArr[i2 + 9] << 8) & 65280));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f3827c.j();
        u0.c.f17374a.d(this.f3842r);
        u0.c.f17386m.d(this.f3842r);
        o1.y yVar = u0.c.f17381h;
        yVar.d(this.f3840p);
        u0.c.f17376c.d(this.f3841q);
        yVar.d(this.f3841q);
        y0.g.f18113w.d(this.f3839o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 96) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (g3(iArr, 1)) {
                h3(iArr[0]);
            }
        } else if (i2 == 1) {
            if (g3(iArr, 1)) {
                z.k.s(227, 132, 1, iArr[0]);
            }
        } else if (i2 == 2 && iArr != null && iArr.length > 0) {
            k3(iArr[0]);
            z.k.s(227, 135, 1, iArr[0]);
        }
    }

    public final boolean g3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public final void h3(int i2) {
        z.k.s(227, 130, 1, i2);
    }

    public final void i3(int i2, int i3) {
        int i4 = i3 == 1 ? 0 : 1;
        if (i2 == 1) {
            a1.c.j(0, i4);
        }
        if (i2 == 4) {
            a1.c.j(9, i4);
            return;
        }
        if (i2 == 47) {
            w0.f.z(1);
            w0.f.F(0);
            return;
        }
        if (i2 == 48) {
            o1.u.G0();
            return;
        }
        switch (i2) {
            case 10:
                a1.c.j(7, i4);
                break;
            case 11:
                a1.c.j(8, i4);
                break;
            case 12:
                a1.c.j(3, i4);
                break;
            case 13:
                a1.c.j(4, i4);
                break;
            case 14:
            case 15:
                a1.c.j(18, i4);
                break;
            case 16:
                a1.c.j(2, i4);
                break;
            case 17:
                a1.c.j(19, i4);
                break;
            case 18:
                a1.c.j(20, i4);
                break;
            case 19:
            case 20:
                a1.c.j(16, i4);
                break;
            default:
                switch (i2) {
                    case 28:
                        a1.c.j(6, i4);
                        break;
                    case 29:
                        a1.c.j(11, i4);
                        break;
                    case 30:
                        a1.c.j(5, i4);
                        break;
                    case 31:
                    case 32:
                        a1.c.j(1, i4);
                        break;
                    case 33:
                        o1.u.E();
                        break;
                    case 34:
                        o1.u.z();
                        break;
                    case 35:
                        o1.u.j();
                        break;
                    case 36:
                        o1.u.r();
                        break;
                    case 37:
                        o1.u.Z0();
                        break;
                    default:
                        switch (i2) {
                            case 39:
                                o1.u.i();
                                break;
                            case 40:
                                o1.u.i();
                                break;
                            case 41:
                                o1.u.p();
                                break;
                            case 42:
                                o1.u.H();
                                break;
                            case 43:
                                a1.c.j(21, i4);
                                break;
                            case 44:
                                o1.u.J();
                                break;
                            default:
                                switch (i2) {
                                    case 52:
                                        a.i.I(u0.b.D, 0);
                                        break;
                                    case 53:
                                        a.i.I(u0.b.D, 1);
                                        break;
                                    case 54:
                                        a.i.I(u0.b.D, 2);
                                        break;
                                    case 55:
                                        a.i.I(u0.b.D, 3);
                                        break;
                                    case 56:
                                        a.i.I(u0.b.D, 4);
                                        break;
                                    case 57:
                                        a.i.I(u0.b.D, 5);
                                        break;
                                    case 58:
                                        a.i.I(u0.b.D, 6);
                                        break;
                                    case 59:
                                        a.i.I(u0.b.D, 7);
                                        break;
                                    case 60:
                                        a.i.I(u0.b.D, 8);
                                        break;
                                    case 61:
                                        a.i.I(u0.b.D, 9);
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public void j3(int i2) {
        if (i2 != 0) {
            z.k.s(1, 0, 121);
        } else {
            z.k.s(1, 0, 120);
        }
    }

    public final void k3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f3824v = i2;
        qt.y0(95, i2);
        Log.d("right", " *** mainserver   U_TURN_RIGHT_ENTER_CAMERA mRightEnterCamera = " + f3824v);
        int iB = this.f3827c.b(1, 0);
        int i3 = f3824v;
        if (iB != i3) {
            this.f3827c.g(1, i3);
        }
    }
}
