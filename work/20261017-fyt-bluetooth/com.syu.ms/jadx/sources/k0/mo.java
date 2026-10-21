package k0;

import android.app.ActivityManager;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.lang.reflect.Array;
import java.util.List;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class mo extends lt implements o1.q {
    public static int N;
    public static int O;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8240b;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8247i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8241c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8242d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 3}, new int[]{17, 4}, new int[]{18, 29}, new int[]{19, 13}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{42, 50}, new int[]{43, 51}, new int[]{51, 1}, new int[]{52, 24}, new int[]{53, 22}, new int[]{54, 53}, new int[]{55, 5}, new int[]{56, 38}, new int[]{57, 18}, new int[]{61, 56}, new int[]{63, 0}, new int[]{72, 29}, new int[]{73, 32}, new int[]{74, 33}, new int[]{75, 34}, new int[]{76, 35}, new int[]{82, 18}, new int[]{83, 26}, new int[]{84, 11}, new int[]{86, 78}, new int[]{87, 55}, new int[]{89, 38}, new int[]{90, 12}, new int[]{91, 25}, new int[]{96, 4}, new int[]{97, 3}, new int[]{98, 16}, new int[]{104, 6}, new int[]{105, 1}, new int[]{106, 55}, new int[]{107, 54}, new int[]{111, 54}, new int[]{134, 16}, new int[]{112, 5}, new int[]{113, -1}, new int[]{114, -1}, new int[]{115, 1}, new int[]{240, 7}, new int[]{i.a.Theme_actionModeShareDrawable, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f8243e = new byte[1024];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8244f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8245g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8246h = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8248j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f8249k = {new int[]{1, 75}, new int[]{2, 75}, new int[]{3, 74}, new int[]{4, 74}, new int[]{5, 74}, new int[]{6, -1}, new int[]{7, 76}, new int[]{8, 54}, new int[]{17, 18}, new int[]{18, 26}, new int[]{19, 34}, new int[]{20, 35}, new int[]{21, 12}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8250l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f8251m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f8252n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f8253o = new a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f8254p = new b();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f8255q = new c();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f8256r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public float f8257s = 0.0f;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f8258t = 255;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f8259u = 255;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f8260v = new d();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public o1.g0 f8261w = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f8262x = 1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f8263y = 2;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f8264z = 0;
    public int A = 0;
    public int B = 0;
    public int C = -1;
    public String[][] D = (String[][]) Array.newInstance((Class<?>) String.class, 5, 3);
    public String[][] E = (String[][]) Array.newInstance((Class<?>) String.class, 4, 3);
    public int F = 0;
    public Runnable G = new e();
    public Runnable H = new f();
    public Runnable I = new g();
    public Runnable J = new h();
    public int[][] K = (int[][]) Array.newInstance((Class<?>) int.class, 16, 8);
    public int[] L = {34, 204};
    public int M = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.t();
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
            try {
                if (TextUtils.isEmpty(u0.b.i3)) {
                    return;
                }
                mo.this.k3(u0.b.i3);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mo.this.f8257s = u0.b.f17359s0;
            if ((mo.this.f8257s <= 22.5d && mo.this.f8257s >= 0.0f) || (mo.this.f8257s >= 337.5d && mo.this.f8257s <= 360.0f)) {
                mo.this.f8259u = 0;
            } else if (mo.this.f8257s > 22.5d && mo.this.f8257s < 67.5d) {
                mo.this.f8259u = 8;
            } else if (mo.this.f8257s >= 67.5d && mo.this.f8257s <= 112.5d) {
                mo.this.f8259u = 16;
            } else if (mo.this.f8257s > 112.5d && mo.this.f8257s < 157.5d) {
                mo.this.f8259u = 24;
            } else if (mo.this.f8257s >= 157.5d && mo.this.f8257s <= 202.5d) {
                mo.this.f8259u = 32;
            } else if (mo.this.f8257s > 202.5d && mo.this.f8257s < 247.5d) {
                mo.this.f8259u = 40;
            } else if (mo.this.f8257s >= 247.5d && mo.this.f8257s <= 292.5d) {
                mo.this.f8259u = 48;
            } else if (mo.this.f8257s <= 292.5d || mo.this.f8257s >= 337.5d) {
                mo.this.f8259u = 0;
            } else {
                mo.this.f8259u = 56;
            }
            if (mo.this.f8259u != mo.this.f8258t) {
                if (u0.b.X1 > 2) {
                    z.k.s(227, 201, 2, mo.this.f8259u, 0);
                }
                mo moVar = mo.this;
                moVar.f8258t = moVar.f8259u;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(mo.this.H);
            mo.this.F = 5;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mo moVar = mo.this;
            int i2 = moVar.F - 1;
            moVar.F = i2;
            if (i2 <= 0) {
                l0.b0.p0(moVar.H);
                mo.this.F = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                mo moVar2 = mo.this;
                moVar2.p3(moVar2.f8261w.b(1, 0));
                switch (nt.f8633a) {
                    case 7209416:
                    case 7274952:
                    case 7864775:
                    case 7930311:
                    case 7995847:
                    case 8061383:
                    case 8061384:
                    case 8126920:
                    case 8192456:
                    case 8257992:
                    case 9241032:
                    case 9306568:
                    case 9372104:
                    case 9437640:
                    case 9568712:
                    case 12779975:
                    case 12845511:
                        break;
                    default:
                        mo moVar3 = mo.this;
                        moVar3.q3(moVar3.f8261w.b(2, 0));
                        break;
                }
                z.k.s(227, 144, 2, 48, 0);
                switch (nt.f8633a) {
                    case 9503176:
                    case 9830856:
                    case 9896392:
                    case 10224072:
                    case 13304261:
                        z.k.s(227, 198, 2, 128, 2);
                        break;
                    case 13107653:
                        z.k.s(227, 198, 2, 128, 1);
                        break;
                    case 13173189:
                        z.k.s(227, 198, 2, 128, 3);
                        break;
                    case 13238725:
                        z.k.s(227, 198, 2, 128, 0);
                        break;
                }
                switch (nt.f8633a) {
                    case 852424:
                        mo moVar4 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar4.L[moVar4.M % 2], 37, 1, -86});
                        mo moVar5 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar5.L[moVar5.M % 2], 37, 1, -86});
                        mo moVar6 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar6.L[moVar6.M % 2], 37, 1, -86});
                        break;
                    case 917960:
                        mo moVar7 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar7.L[moVar7.M % 2], 0, 2, -86});
                        mo moVar8 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar8.L[moVar8.M % 2], 0, 2, -86});
                        mo moVar9 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar9.L[moVar9.M % 2], 0, 2, -86});
                        break;
                    case 3801543:
                    case 7864775:
                    case 9241032:
                    case 9306568:
                    case 14352839:
                        mo moVar10 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar10.L[moVar10.M % 2], 37, 17, -86});
                        mo moVar11 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar11.L[moVar11.M % 2], 37, 17, -86});
                        mo moVar12 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar12.L[moVar12.M % 2], 37, 17, -86});
                        break;
                    case 3867079:
                    case 7930311:
                    case 8126920:
                    case 9372104:
                    case 9437640:
                        mo moVar13 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar13.L[moVar13.M % 2], 37, 18, -86});
                        mo moVar14 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar14.L[moVar14.M % 2], 37, 18, -86});
                        mo moVar15 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar15.L[moVar15.M % 2], 37, 18, -86});
                        break;
                    case 3932615:
                    case 7995847:
                    case 8192456:
                        mo moVar16 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar16.L[moVar16.M % 2], 37, 19, -86});
                        mo moVar17 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar17.L[moVar17.M % 2], 37, 19, -86});
                        mo moVar18 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar18.L[moVar18.M % 2], 37, 19, -86});
                        break;
                    case 3998151:
                    case 8061383:
                    case 8257992:
                        mo moVar19 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar19.L[moVar19.M % 2], 37, 20, -86});
                        mo moVar20 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar20.L[moVar20.M % 2], 37, 20, -86});
                        mo moVar21 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar21.L[moVar21.M % 2], 37, 20, -86});
                        break;
                    case 7209416:
                    case 8061384:
                    case 9568712:
                    case 12779975:
                        mo moVar22 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar22.L[moVar22.M % 2], 0, 17, -86});
                        mo moVar23 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar23.L[moVar23.M % 2], 0, 17, -86});
                        mo moVar24 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar24.L[moVar24.M % 2], 0, 17, -86});
                        break;
                    case 7274952:
                    case 12845511:
                        mo moVar25 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar25.L[moVar25.M % 2], 0, 18, -86});
                        mo moVar26 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar26.L[moVar26.M % 2], 0, 18, -86});
                        mo moVar27 = mo.this;
                        mo.r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) moVar27.L[moVar27.M % 2], 0, 18, -86});
                        break;
                }
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0029  */
        @Override // java.lang.Runnable
        public void run() {
            int i2;
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i3 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (i3 == 1) {
                int i4 = time.hour;
                if (i4 > 12) {
                    time.hour = i4 - 12;
                    i2 = 1;
                } else {
                    i2 = 0;
                }
            } else if (time.hour > 12) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            z.k.s(227, -56, 3, time.hour, time.minute, (byte) ((i3 << 6) | (i2 << 7)));
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 12 || i2 == 13) {
                return;
            }
            mo.this.o3(198, 161, 130);
            qt.y0(107, 0);
        }
    }

    public static void r3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        z.k.q(bArr);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f8261w.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        y0.g.f18094d.a(this.f8254p, 1);
        y0.g.f18095e.a(this.f8254p, 1);
        w0.e.f17815a.a(this.f8253o, 1);
        w0.e.f17819e.a(this.f8253o, 1);
        u0.c.f17393t.a(this.f8253o, 1);
        u0.c.f17392s.a(this.f8253o, 1);
        o1.y yVar = u0.c.f17374a;
        yVar.a(this.f8253o, 1);
        u0.c.f17386m.a(this.G, 1);
        yVar.a(this.J, 1);
        o1.h.f16865a.a(this.f8260v, 1);
        u0.c.f17388o.a(this.f8255q, 1);
        yVar.a(this.f8255q, 1);
        if (nt.f8633a != 14352839) {
            qt.z(this.I);
        }
    }

    /* JADX WARN: Code duplicated, block: B:454:0x0c22  */
    /* JADX WARN: Code duplicated, block: B:480:0x0c8e  */
    /* JADX WARN: Code duplicated, block: B:489:0x0caf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:490:0x0cb1  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int[][] iArr;
        int i6;
        int i7;
        int[][] iArr2;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        byte b2 = bArr[i2];
        if (b2 == 22) {
            int i14 = i2 + 2;
            int i15 = i2 + 3;
            qt.y0(115, ((bArr[i14] & 255) + ((bArr[i15] << 8) & 65280)) / 100);
            qt.y0(1031, ((255 & bArr[i14]) + ((bArr[i15] << 8) & 65280)) / 100);
        }
        if (b2 == 32) {
            int i16 = i2 + 3;
            byte b3 = bArr[i16];
            this.f8264z = b3;
            int i17 = i2 + 2;
            byte b4 = bArr[i17];
            if (b4 == -16) {
                for (int i18 = 0; i18 < (this.f8264z & 255); i18++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (b4 == -15) {
                for (int i19 = 0; i19 < (this.f8264z & 255); i19++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (b4 != 14) {
                if (b4 == 82) {
                    if (b3 == 0) {
                        if (u0.b.D == 12) {
                            z.k.s(227, 198, 2, 161, 9);
                            return;
                        }
                        int i20 = h0.c.E;
                        if (i20 == 3 || i20 == 4 || i20 == 5) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                            return;
                        } else if (u0.i.l3().r3()) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                            return;
                        } else {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                            return;
                        }
                    }
                    return;
                }
                if (b4 == 83) {
                    if (b3 == 1) {
                        if (u0.b.D == 12) {
                            z.k.s(227, 198, 2, 161, 9);
                            return;
                        }
                        int i21 = h0.c.E;
                        if (i21 == 3 || i21 == 4 || i21 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                            return;
                        } else if (u0.i.l3().r3()) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                            return;
                        } else {
                            l0.b0.l0(4, 0);
                            l0.b0.l0(4, 1);
                            return;
                        }
                    }
                    return;
                }
                if (b4 == 113) {
                    int i22 = this.A;
                    if (i22 == b3) {
                        if (b3 == 2) {
                            int i23 = this.B + 1;
                            this.B = i23;
                            if (i23 == 5) {
                                l0.b0.l0(67, 0);
                                l0.b0.l0(67, 1);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if ((b3 == 0 && i22 == 1) || (b3 == 0 && i22 == 2 && this.B < 5)) {
                        l0.b0.l0(35, 0);
                        l0.b0.l0(35, 1);
                    }
                    this.B = 0;
                    this.A = this.f8264z;
                    return;
                }
                if (b4 == 114) {
                    int i24 = this.A;
                    if (i24 == b3) {
                        if (b3 == 2) {
                            int i25 = this.B + 1;
                            this.B = i25;
                            if (i25 == 5) {
                                l0.b0.l0(68, 0);
                                l0.b0.l0(68, 1);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if ((b3 == 0 && i24 == 1) || (b3 == 0 && i24 == 2 && this.B < 5)) {
                        l0.b0.l0(34, 0);
                        l0.b0.l0(34, 1);
                    }
                    this.B = 0;
                    this.A = this.f8264z;
                    return;
                }
                switch (b4) {
                    case 16:
                        if (b3 == 1) {
                            i4 = u0.b.D;
                            if (i4 != 12 || i4 == 13) {
                                z.k.s(227, 198, 2, 161, 25);
                            } else {
                                u0.d.B1();
                            }
                        }
                        break;
                    case 17:
                        if (b3 == 1) {
                            i5 = u0.b.D;
                            if (i5 != 12 || i5 == 13) {
                                z.k.s(227, 198, 2, 161, 26);
                            } else if (i5 == 1) {
                                w0.d.f17790b.c();
                            } else {
                                u0.d.I1();
                            }
                        }
                        break;
                    case 18:
                        if (b3 == 1) {
                            if (u0.b.D == 12) {
                                z.k.s(227, 198, 2, 161, 12);
                            } else {
                                u0.d.y1();
                            }
                        }
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
                                if (b3 == 1) {
                                    m3((bArr[i17] & 255) - 32);
                                }
                                break;
                            case 42:
                                if (b3 == 1) {
                                    int i26 = u0.b.D;
                                    if (i26 == 2) {
                                        h0.c.f2425b.h(13);
                                    } else if (i26 == 12 || i26 == 13) {
                                        o3(198, 161, 23);
                                    }
                                }
                                break;
                            case 43:
                                if (b3 == 1) {
                                    int i27 = u0.b.D;
                                    if (i27 == 2) {
                                        h0.c.f2425b.h(14);
                                    } else if (i27 == 12 || i27 == 13) {
                                        o3(198, 161, 24);
                                    }
                                }
                                break;
                            default:
                                switch (b4) {
                                    case 73:
                                        if (b3 == 1) {
                                            i4 = u0.b.D;
                                            if (i4 != 12) {
                                            }
                                            z.k.s(227, 198, 2, 161, 25);
                                        }
                                        break;
                                    case 74:
                                        if (b3 == 1) {
                                            i5 = u0.b.D;
                                            if (i5 != 12) {
                                            }
                                            z.k.s(227, 198, 2, 161, 26);
                                        }
                                        break;
                                    case 75:
                                        break;
                                    case 76:
                                        if (b3 == 1) {
                                            int i28 = u0.b.D;
                                            if (i28 == 12 || i28 == 13) {
                                                z.k.s(227, 198, 2, 161, 11);
                                            } else {
                                                u0.d.x1();
                                            }
                                        }
                                        break;
                                    default:
                                        switch (b4) {
                                            case 92:
                                                if (b3 == 1 && o1.u.Y0().equals("com.syu.canbus")) {
                                                    o3(198, 161, 28);
                                                    break;
                                                }
                                                break;
                                            case 93:
                                                if (b3 == 1 && o1.u.Y0().equals("com.syu.canbus")) {
                                                    o3(198, 161, 29);
                                                    break;
                                                }
                                                break;
                                            case 94:
                                                if (b3 == 1 && o1.u.Y0().equals("com.syu.canbus")) {
                                                    o3(198, 161, 30);
                                                    break;
                                                }
                                                break;
                                            case 95:
                                                if (b3 == 1 && o1.u.Y0().equals("com.syu.canbus")) {
                                                    o3(198, 161, 31);
                                                    break;
                                                }
                                                break;
                                            default:
                                                byte b5 = bArr[i17];
                                                byte b6 = bArr[i16];
                                                this.f8241c = b5 & 255;
                                                int i29 = 0;
                                                while (true) {
                                                    iArr = this.f8242d;
                                                    if (i29 < iArr.length) {
                                                        int i30 = this.f8241c;
                                                        if (i30 != iArr[i29][0]) {
                                                            i29++;
                                                        } else if (i30 != 0) {
                                                            this.f8240b = i29;
                                                        }
                                                    }
                                                }
                                                int i31 = this.f8241c;
                                                if (i31 == 3) {
                                                    int i32 = h0.c.E;
                                                    if (i32 == 3 || i32 == 4 || i32 == 5) {
                                                        l0.b0.l0(26, 0);
                                                        l0.b0.l0(26, 1);
                                                    } else {
                                                        l0.b0.l0(4, 0);
                                                        l0.b0.l0(4, 1);
                                                    }
                                                } else if (i31 != 4) {
                                                    int i33 = b6 & 255;
                                                    if (i33 == 1) {
                                                        if (i29 < iArr.length) {
                                                            l0.b0.l0(iArr[i29][1], 0);
                                                        }
                                                    } else if (i33 == 0) {
                                                        int i34 = this.f8240b;
                                                        if (i34 < iArr.length && i34 != 255) {
                                                            l0.b0.l0(iArr[i34][1], 1);
                                                        }
                                                        this.f8240b = 255;
                                                    }
                                                } else if (h0.c.E != 4) {
                                                    l0.b0.l0(3, 0);
                                                    l0.b0.l0(3, 1);
                                                } else {
                                                    l0.b0.l0(18, 0);
                                                    l0.b0.l0(18, 1);
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            if (b3 == 1) {
                int i35 = u0.b.D;
                if (i35 == 12 || i35 == 13) {
                    z.k.s(227, 198, 2, 161, 10);
                    return;
                } else {
                    u0.d.B1();
                    return;
                }
            }
            return;
        }
        if (b2 == 41) {
            int i36 = nt.f8633a;
            if (i36 == 3801543 || i36 == 3867079 || i36 == 852424 || i36 == 917960 || i36 == 3932615 || i36 == 3998151 || i36 == 7864775 || i36 == 9241032 || i36 == 9306568 || i36 == 7930311 || i36 == 9372104 || i36 == 9437640 || i36 == 7995847 || i36 == 8061383 || i36 == 12779975 || i36 == 9568712 || i36 == 12845511 || i36 == 7209416 || i36 == 7274952 || i36 == 8061384 || i36 == 8126920 || i36 == 8192456 || i36 == 8257992) {
                return;
            }
            int i37 = i2 + 2;
            qt.y0(10, (bArr[i37] >> 7) & 1);
            qt.y0(11, (bArr[i37] >> 6) & 1);
            qt.y0(12, (bArr[i37] >> 5) & 1);
            qt.y0(13, (bArr[i37] >> 3) & 1);
            qt.y0(14, (bArr[i37] >> 2) & 1);
            qt.y0(15, (bArr[i37] >> 1) & 1);
            qt.y0(16, (bArr[i37] >> 0) & 1);
            int i38 = i2 + 3;
            qt.y0(18, (bArr[i38] >> 7) & 1);
            qt.y0(19, (bArr[i38] >> 6) & 1);
            qt.y0(20, (bArr[i38] >> 5) & 1);
            qt.y0(21, (bArr[i38] >> 0) & 7);
            int i39 = i2 + 6;
            qt.y0(75, (bArr[i39] >> 3) & 1);
            int i40 = i2 + 4;
            int i41 = bArr[i40] & 255;
            int i42 = i2 + 8;
            int i43 = bArr[i42] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i41 = bArr[i42] & 255;
                i43 = bArr[i40] & 255;
            }
            if (i41 >= 30 && i41 <= 60) {
                if (i41 == 30) {
                    qt.y0(27, -2);
                } else if (i41 != 60) {
                    qt.y0(27, i41);
                } else {
                    qt.y0(27, -3);
                }
                qt.y0(37, 0);
            } else if (i41 < 119 || i41 > 171) {
                qt.y0(27, -1);
            } else {
                if (i41 == 119) {
                    qt.y0(27, -2);
                } else if (i41 != 171) {
                    qt.y0(27, i41);
                } else {
                    qt.y0(27, -3);
                }
                qt.y0(37, 1);
            }
            if (i43 < 30 || i43 > 60) {
                if (i43 < 119 || i43 > 171) {
                    qt.y0(28, -1);
                } else if (i43 == 119) {
                    qt.y0(28, -2);
                } else if (i43 != 171) {
                    qt.y0(28, i43);
                } else {
                    qt.y0(28, -3);
                }
            } else if (i43 == 30) {
                qt.y0(28, -2);
            } else if (i43 != 60) {
                qt.y0(28, i43);
            } else {
                qt.y0(28, -3);
            }
            int i44 = i2 + 5;
            qt.y0(40, bArr[i44] & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(44, (bArr[i44] >> 4) & 7);
            qt.y0(42, (bArr[i44] >> 7) & 1);
            qt.y0(67, (bArr[i39] >> 0) & 1);
            qt.y0(17, (bArr[i39] >> 1) & 1);
            qt.y0(53, (bArr[i39] >> 2) & 1);
            qt.y0(73, (bArr[i39] >> 4) & 1);
            qt.y0(74, (bArr[i39] >> 5) & 1);
            qt.y0(66, (bArr[i39] >> 7) & 1);
            int i45 = i2 + 9;
            qt.y0(29, (bArr[i45] >> 0) & 3);
            qt.y0(30, (bArr[i45] >> 2) & 3);
            qt.y0(31, (bArr[i45] >> 4) & 3);
            qt.y0(32, 3 & (bArr[i45] >> 6));
            int i46 = bArr[i2 + 7] & 255;
            if (i46 == 0) {
                u0.d.A3(0);
                return;
            }
            if ((i46 & 128) != 0) {
                int i47 = 256 - i46;
                if ((i41 < 119 || i41 > 171) && SystemProperties.getInt("persist.fyt.temperature", 0) != 1) {
                    i6 = 1320 - (i47 * 10);
                } else {
                    i7 = 1320 - (i47 * 18);
                    i6 = (i7 | 268435456) & (-1);
                }
            } else if ((i41 < 119 || i41 > 171) && SystemProperties.getInt("persist.fyt.temperature", 0) != 1) {
                i6 = (i46 * 10) + 1000;
            } else {
                i7 = (i46 * 18) + 1000;
                i6 = (i7 | 268435456) & (-1);
            }
            u0.d.B3(i6);
            return;
        }
        if (b2 == 65) {
            if (bArr[i2 + 2] == 1 && nt.f8633a == 5177800) {
                if (SystemProperties.getBoolean("persist.fyt.leftcameraswitch", false) && !SystemProperties.getBoolean("persist.fyt.rightcameraswitch", false)) {
                    int i48 = i2 + 7;
                    if (this.f8251m != ((bArr[i48] >> 4) & 1)) {
                        int i49 = (bArr[i48] >> 4) & 1;
                        this.f8251m = i49;
                        if (i49 == 1) {
                            if (o1.u.S("com.syu.rearcamera")) {
                                return;
                            }
                            o1.u.f("com.syu.rearcamera");
                            this.f8252n = true;
                            return;
                        }
                        if (o1.u.S("com.syu.rearcamera") && this.f8252n) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        this.f8252n = false;
                        return;
                    }
                    return;
                }
                if (!SystemProperties.getBoolean("persist.fyt.leftcameraswitch", false) && SystemProperties.getBoolean("persist.fyt.rightcameraswitch", false)) {
                    int i50 = i2 + 7;
                    if (this.f8250l != ((bArr[i50] >> 5) & 1)) {
                        int i51 = (bArr[i50] >> 5) & 1;
                        this.f8250l = i51;
                        if (i51 == 1) {
                            if (o1.u.S("com.syu.rearcamera")) {
                                return;
                            }
                            o1.u.f("com.syu.rearcamera");
                            this.f8252n = true;
                            return;
                        }
                        if (o1.u.S("com.syu.rearcamera") && this.f8252n) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        this.f8252n = false;
                        return;
                    }
                    return;
                }
                if (SystemProperties.getBoolean("persist.fyt.leftcameraswitch", false) && SystemProperties.getBoolean("persist.fyt.rightcameraswitch", false)) {
                    int i52 = i2 + 7;
                    if (this.f8250l == ((bArr[i52] >> 5) & 1) && this.f8251m == ((bArr[i52] >> 4) & 1)) {
                        return;
                    }
                    int i53 = (bArr[i52] >> 5) & 1;
                    this.f8250l = i53;
                    int i54 = (bArr[i52] >> 4) & 1;
                    this.f8251m = i54;
                    if (i53 == 1 || i54 == 1) {
                        if (o1.u.S("com.syu.rearcamera")) {
                            return;
                        }
                        o1.u.f("com.syu.rearcamera");
                        this.f8252n = true;
                        return;
                    }
                    if (o1.u.S("com.syu.rearcamera") && this.f8252n) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                    }
                    this.f8252n = false;
                    return;
                }
                return;
            }
            return;
        }
        if (b2 == 72) {
            qt.y0(117, (bArr[i2 + 2] >> 0) & 15);
            int i55 = i2 + 3;
            qt.y0(118, (bArr[i55] >> 6) & 3);
            qt.y0(119, (bArr[i55] >> 4) & 3);
            qt.y0(120, (bArr[i55] >> 0) & 15);
            int i56 = i2 + 4;
            qt.y0(121, (bArr[i56] >> 4) & 15);
            qt.y0(122, (bArr[i56] >> 0) & 15);
            int i57 = i2 + 5;
            qt.y0(123, (bArr[i57] >> 6) & 3);
            qt.y0(124, (bArr[i57] >> 4) & 3);
            qt.y0(125, (bArr[i57] >> 0) & 15);
            int i58 = i2 + 6;
            qt.y0(126, (bArr[i58] >> 4) & 15);
            qt.y0(127, (bArr[i58] >> 0) & 15);
            int i59 = i2 + 7;
            qt.y0(128, (bArr[i59] >> 4) & 15);
            qt.y0(129, (bArr[i59] >> 0) & 15);
            qt.y0(130, (bArr[i2 + 8] >> 0) & 15);
            int i60 = i2 + 9;
            qt.y0(131, (bArr[i60] >> 4) & 15);
            qt.y0(132, (bArr[i60] >> 0) & 15);
            int i61 = i2 + 10;
            qt.y0(133, 3 & (bArr[i61] >> 6));
            qt.y0(134, (bArr[i61] >> 0) & 1);
            qt.y0(135, (bArr[i2 + 11] >> 0) & 255);
            return;
        }
        if (b2 == 74) {
            int i62 = i2 + 2;
            qt.y0(138, (bArr[i62] >> 7) & 255);
            if (((bArr[i62] >> 7) & 1) != 1 || this.f8256r == ((bArr[i62] >> 4) & 1)) {
                return;
            }
            int i63 = (bArr[i62] >> 4) & 1;
            this.f8256r = i63;
            if (i63 == 1) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        if (b2 == 47) {
            this.f8248j = bArr[i2 + 2] & 255;
            int i64 = 0;
            while (true) {
                iArr2 = this.f8249k;
                if (i64 >= iArr2.length) {
                    break;
                }
                int i65 = this.f8248j;
                if (i65 == iArr2[i64][0]) {
                    if (i65 == 0) {
                        break;
                    }
                    this.f8247i = i64;
                    break;
                }
                i64++;
            }
            if (this.f8248j == 0 || (i8 = this.f8247i) >= iArr2.length) {
                return;
            }
            l0.b0.l0(iArr2[i8][1], 0);
            l0.b0.l0(this.f8249k[this.f8247i][1], 1);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 85) {
            int i66 = nt.f8633a;
            if (i66 == 3801543 || i66 == 3867079 || i66 == 852424 || i66 == 917960 || i66 == 3932615 || i66 == 3998151 || i66 == 7864775 || i66 == 9241032 || i66 == 9306568 || i66 == 7930311 || i66 == 9372104 || i66 == 9437640 || i66 == 7995847 || i66 == 8061383 || i66 == 12779975 || i66 == 9568712 || i66 == 12845511 || i66 == 7209416 || i66 == 7274952 || i66 == 8061384 || i66 == 8126920 || i66 == 8192456 || i66 == 8257992) {
                int i67 = SystemProperties.getInt("persist.fyt.temperature", 0);
                int i68 = i2 + 2;
                int i69 = bArr[i68] & 255;
                int i70 = i2 + 3;
                int i71 = bArr[i70] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i69 = bArr[i70] & 255;
                    i71 = bArr[i68] & 255;
                }
                if (i69 == 16) {
                    qt.y0(27, -2);
                } else if (i69 == 80) {
                    qt.y0(27, -3);
                } else if (i67 == 1) {
                    qt.y0(27, (i69 * 10) + 290);
                } else {
                    qt.y0(27, i69 * 5);
                }
                if (i71 == 16) {
                    qt.y0(28, -2);
                } else if (i71 == 80) {
                    qt.y0(28, -3);
                } else if (i67 == 1) {
                    qt.y0(28, (i71 * 10) + 290);
                } else {
                    qt.y0(28, i71 * 5);
                }
                int i72 = i2 + 4;
                switch ((bArr[i72] >> 4) & 15) {
                    case 1:
                        i9 = 0;
                        i10 = 0;
                        i11 = 1;
                        break;
                    case 2:
                        i9 = 0;
                        i11 = 1;
                        i10 = i11;
                        break;
                    case 3:
                        i9 = 0;
                        i11 = 0;
                        i10 = 1;
                        break;
                    case 4:
                        i11 = 0;
                        i9 = 1;
                        i10 = 1;
                        break;
                    case 5:
                        i10 = 0;
                        i9 = 1;
                        i11 = 1;
                        break;
                    case 6:
                        i11 = 0;
                        i10 = 0;
                        i9 = 1;
                        break;
                    case 7:
                        i9 = 1;
                        i11 = i9;
                        i10 = i11;
                        break;
                    default:
                        i9 = 0;
                        i11 = i9;
                        i10 = i11;
                        break;
                }
                qt.y0(18, i9);
                qt.y0(19, i11);
                qt.y0(20, i10);
                qt.y0(21, (bArr[i72] >> 0) & 15);
                int i73 = i2 + 5;
                qt.y0(29, (bArr[i73] >> 0) & 3);
                qt.y0(31, (bArr[i73] >> 2) & 3);
                qt.y0(30, (bArr[i73] >> 4) & 3);
                qt.y0(32, (bArr[i73] >> 6) & 3);
                int i74 = i2 + 6;
                qt.y0(13, (bArr[i74] >> 0) & 1);
                qt.y0(11, (bArr[i74] >> 1) & 1);
                qt.y0(62, (bArr[i74] >> 2) & 1);
                qt.y0(53, (bArr[i74] >> 4) & 1);
                qt.y0(65, (bArr[i74] >> 5) & 1);
                qt.y0(16, (bArr[i74] >> 6) & 1);
                qt.y0(15, (bArr[i74] >> 7) & 1);
                int i75 = i2 + 7;
                qt.y0(12, (bArr[i75] >> 0) & 3);
                qt.y0(67, (bArr[i75] >> 3) & 1);
                qt.y0(66, (bArr[i75] >> 4) & 1);
                qt.y0(17, (bArr[i75] >> 5) & 1);
                qt.y0(139, (bArr[i75] >> 7) & 1);
                qt.y0(140, (bArr[i75] >> 6) & 1);
                int i76 = bArr[i2 + 9] & 255;
                if (i76 == 0 || i76 == 255) {
                    u0.d.A3(0);
                    return;
                } else {
                    u0.d.B3(i67 == 0 ? (i76 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR : (((((i76 * 18) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) / 10) * 10) | 268435456) & (-1));
                    return;
                }
            }
            return;
        }
        if (b2 == 86) {
            int i77 = SystemProperties.getInt("persist.fyt.temperature", 0);
            int i78 = i2 + 2;
            if ((bArr[i78] & 255) == 16) {
                qt.y0(40, -2);
            } else if ((bArr[i78] & 255) == 80) {
                qt.y0(40, -3);
            } else if (i77 == 1) {
                qt.y0(40, ((bArr[i78] & 255) * 10) + 290);
            } else {
                qt.y0(40, (bArr[i78] & 255) * 5);
            }
            int i79 = i2 + 4;
            qt.y0(44, (bArr[i79] >> 0) & 15);
            int i80 = (bArr[i79] >> 4) & 15;
            if (i80 != 1) {
                if (i80 == 2) {
                    i13 = 1;
                } else if (i80 != 3) {
                    i13 = 0;
                } else {
                    i13 = 0;
                    i12 = 1;
                }
                i12 = i13;
            } else {
                i12 = 0;
                i13 = 1;
            }
            qt.y0(46, i13);
            qt.y0(47, i12);
            qt.y0(43, (bArr[i2 + 6] >> 0) & 1);
            return;
        }
        if (b2 == 120) {
            qt.y0(104, bArr[i2 + 2]);
            qt.y0(105, bArr[i2 + 3]);
            qt.y0(106, bArr[i2 + 4]);
            return;
        }
        if (b2 == 121) {
            if (nt.R == 0) {
                return;
            }
            int i81 = i2 + 2;
            qt.y0(107, bArr[i81]);
            n3(bArr[i81]);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.R0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.R0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.R0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.R0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i82 = i2 + 2;
                int i83 = bArr[i82] & 255;
                int i84 = i2 + 3;
                int i85 = bArr[i84] & 255;
                int i86 = i2 + 4;
                int i87 = bArr[i86] & 255;
                int i88 = i2 + 5;
                int i89 = bArr[i88] & 255;
                if (i83 == 0 && i85 == 0 && i87 == 0 && i89 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i83 || l0.c0.f13014h != i85 || l0.c0.f13015i != i87 || l0.c0.f13016j != i89) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i83;
                l0.c0.f13014h = i85;
                l0.c0.f13015i = i87;
                l0.c0.f13016j = i89;
                u0.d.D2(l0.c0.R0(bArr[i82] & 255));
                u0.d.E2(l0.c0.R0(bArr[i84] & 255));
                u0.d.F2(l0.c0.R0(bArr[i86] & 255));
                u0.d.G2(l0.c0.R0(bArr[i88] & 255));
                break;
            case 36:
                byte b7 = bArr[i2 + 2];
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
                qt.y0(98, (bArr[i2 + 4] >> 7) & 1);
                break;
            case 37:
                int i90 = i2 + 2;
                qt.y0(99, (bArr[i90] >> 2) & 1);
                qt.y0(100, (bArr[i90] >> 3) & 1);
                break;
            case 38:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 5300);
                break;
            case 39:
                qt.y0(136, bArr[i2 + 2] & 255);
                break;
            default:
                switch (b2) {
                    case 80:
                        int[] iArr3 = new int[6];
                        for (int i91 = 0; i91 < 6; i91++) {
                            iArr3[i91] = bArr[i2 + 2 + i91];
                        }
                        o1.x.B(nt.f8643f, 102, iArr3);
                        break;
                    case 81:
                        int i92 = i2 + 2;
                        int i93 = i2 + 4;
                        o1.x.B(nt.f8643f, 110, new int[]{bArr[i92] & 255, bArr[i93] & 255, bArr[i2 + 5] & 255});
                        try {
                            StringBuilder sb = new StringBuilder();
                            int i94 = (i2 + i3) - 1;
                            for (int i95 = i2 + 6; i95 < i94; i95 += 2) {
                                sb.append((char) ((bArr[i95 + 1] & 255) | (bArr[i95] << 8)));
                            }
                            qt.z0(111, new int[]{bArr[i92] & 255, bArr[i2 + 3] & 255, bArr[i93] & 255}, sb.toString());
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            return;
                        }
                        break;
                    case 82:
                        qt.y0(112, ((((bArr[i2 + 2] & 255) * 60) + bArr[i2 + 3]) * 60) + bArr[i2 + 4]);
                        break;
                    case 83:
                        qt.y0(103, (bArr[i2 + 3] * DhcpPacket.DHCP_VENDOR_CLASS_ID) + bArr[i2 + 4]);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        o1.y yVar = u0.c.f17374a;
        yVar.d(this.J);
        u0.c.f17386m.d(this.G);
        qt.q0(this.I);
        y0.g.f18094d.d(this.f8254p);
        y0.g.f18095e.d(this.f8254p);
        w0.e.f17815a.d(this.f8253o);
        w0.e.f17819e.d(this.f8253o);
        u0.c.f17393t.d(this.f8253o);
        u0.c.f17392s.d(this.f8253o);
        yVar.d(this.f8253o);
        o1.h.f16865a.d(this.f8260v);
        u0.c.f17388o.d(this.f8255q);
        yVar.d(this.f8255q);
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
        if (i2 == 0) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            int i3 = iArr[0];
            if (i3 == 160) {
                q3(iArr[1]);
                return;
            } else if (i3 != 188) {
                z.k.s(227, 198, 2, iArr[0], iArr[1]);
                return;
            } else {
                p3(iArr[1]);
                return;
            }
        }
        if (i2 != 24) {
            return;
        }
        switch (nt.f8633a) {
            case 852424:
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 1, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 1, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 1, -86});
                break;
            case 917960:
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 2, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 2, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 2, -86});
                break;
            case 3801543:
            case 7864775:
            case 9241032:
            case 9306568:
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 17, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 17, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 17, -86});
                break;
            case 3867079:
            case 7930311:
            case 8126920:
            case 9372104:
            case 9437640:
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 18, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 18, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 18, -86});
                break;
            case 3932615:
            case 7995847:
            case 8192456:
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 19, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 20, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 20, -86});
                break;
            case 3998151:
            case 8061383:
            case 8257992:
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 20, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 20, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 37, 20, -86});
                break;
            case 7209416:
            case 8061384:
            case 9568712:
            case 12779975:
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 0, 17, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 0, 17, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 0, 17, -86});
                break;
            case 7274952:
            case 12845511:
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 0, 18, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 0, 18, -86});
                r3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.L[this.M % 2], 0, 18, -86});
                break;
        }
        int i4 = this.M + 1;
        this.M = i4;
        this.M = i4 % 2;
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
        if (this.f8244f + bArr.length > 1024) {
            this.f8244f = 0;
            this.f8245g = 0;
            this.f8246h = 0;
        }
        System.arraycopy(bArr, 0, this.f8243e, this.f8244f, bArr.length);
        int length = this.f8244f + bArr.length;
        this.f8244f = length;
        int i3 = this.f8246h;
        if (i3 != 0) {
            if (i3 >= length) {
                return;
            }
            byte[] bArr2 = this.f8243e;
            if (bArr2[i3] == -86) {
                nt.f8639d.U2(bArr2, 0, 11);
                this.f8245g = this.f8246h + 1;
            } else {
                this.f8245g = 1;
            }
            this.f8246h = 0;
        }
        int i4 = this.f8244f - 2;
        while (true) {
            i2 = this.f8245g;
            if (i2 >= i4) {
                break;
            }
            byte[] bArr3 = this.f8243e;
            if ((bArr3[i2] == 85 && bArr3[i2 + 1] == 9) || (bArr3[i2] == 86 && bArr3[i2 + 1] == 9)) {
                if (this.f8246h > 512) {
                    this.f8246h = 0;
                } else {
                    int i5 = i2 + 10;
                    this.f8246h = i5;
                    if (i5 >= this.f8244f) {
                        this.f8246h = i5 - i2;
                        break;
                    }
                    if (bArr3[i5] == -86) {
                        nt.f8639d.U2(bArr3, i2, 11);
                        this.f8245g = this.f8246h;
                    } else {
                        this.f8245g = i2 + 1;
                    }
                    this.f8246h = 0;
                }
            }
            this.f8245g++;
        }
        if (i2 != 0) {
            int i6 = this.f8244f - i2;
            this.f8244f = i6;
            if (i6 > 0) {
                byte[] bArr4 = this.f8243e;
                System.arraycopy(bArr4, i2, bArr4, 0, i6);
            }
            this.f8245g = 0;
        }
    }

    public void k3(String str) {
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 203;
        iArr[2] = 32;
        iArr[3] = 17;
        iArr[4] = 3;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 5] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 6] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public String l3() {
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

    public void m3(int i2) {
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
                    o3(198, 161, 13);
                    break;
                case 1:
                    o3(198, 161, 14);
                    break;
                case 2:
                    o3(198, 161, 15);
                    break;
                case 3:
                    o3(198, 161, 16);
                    break;
                case 4:
                    o3(198, 161, 17);
                    break;
                case 5:
                    o3(198, 161, 18);
                    break;
                case 6:
                    o3(198, 161, 19);
                    break;
                case 7:
                    o3(198, 161, 20);
                    break;
                case 8:
                    o3(198, 161, 21);
                    break;
                case 9:
                    o3(198, 161, 22);
                    break;
            }
        }
    }

    public final void n3(byte b2) {
        if (b2 == 1 || b2 == 3 || b2 == 4) {
            if (u0.b.D != 12) {
                u0.b.f17311c.c(12);
            }
            if (l3().equals("com.syu.carinfo.focus.FocusSyncBtActi")) {
                return;
            }
            o1.u.f("com.syu.canbus.sync");
        }
    }

    public final void o3(int i2, int i3, int i4) {
        z.k.s(227, (byte) i2, 2, (byte) i3, (byte) i4);
    }

    public final void p3(int i2) {
        N = i2;
        z.k.s(227, 198, 2, 188, i2);
        qt.y0(137, N);
        int iB = this.f8261w.b(1, 0);
        int i3 = N;
        if (iB != i3) {
            this.f8261w.g(1, i3);
        }
    }

    public final void q3(int i2) {
        O = i2;
        z.k.s(227, 198, 2, 160, i2);
        qt.y0(37, O);
        int iB = this.f8261w.b(2, 0);
        int i3 = O;
        if (iB != i3) {
            this.f8261w.g(2, i3);
        }
    }
}
