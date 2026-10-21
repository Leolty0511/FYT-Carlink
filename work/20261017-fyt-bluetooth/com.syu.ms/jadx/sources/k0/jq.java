package k0;

import android.content.Intent;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import com.syu.jni.ToolsJni;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class jq extends lt {
    public static int F = 255;
    public static int G = 20;
    public static int H = 36;
    public static int I;
    public static int J;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7048c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7049d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 34}, new int[]{20, 35}, new int[]{135, 0}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f7050e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7051f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7052g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7053h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f7054i = new f();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7055j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f7056k = new g();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f7057l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f7058m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f7059n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f7060o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f7061p = 10;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f7062q = 11;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f7063r = 15;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f7064s = 14;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public o1.g0 f7065t = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f7066u = new h();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f7067v = new i();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f7068w = new j();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f7069x = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f7070y = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f7071z = new k();
    public Runnable A = new l();
    public Runnable B = new a();
    public int C = 0;
    public Runnable D = new b();
    public Runnable E = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0);
            int i2 = time.hour;
            int i3 = time.minute;
            int i4 = nt.f8633a;
            if (i4 == 2949575 || i4 == 12648904) {
                return;
            }
            z.k.s(227, 157, 3, i2, i3, (b2 << 7) & 128);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(jq.this.E);
            jq.this.C = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jq jqVar = jq.this;
            int i2 = jqVar.C - 1;
            jqVar.C = i2;
            if (i2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(jqVar.E);
                jq.this.C = 5;
            }
        }
    }

    public class d implements o1.p {
        public d() {
        }

        @Override // o1.p
        public void d(Object obj) {
            jq jqVar = jq.this;
            int i2 = jqVar.f7059n;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                jqVar.f7059n = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (jqVar.f7057l) {
                        jqVar.c3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    jqVar.c3(true);
                } else if (y0.f.Q0 == 0) {
                    jqVar.c3(false);
                }
            }
        }
    }

    public class e implements o1.p {
        public e() {
        }

        @Override // o1.p
        public void d(Object obj) {
            jq jqVar = jq.this;
            int i2 = jqVar.f7059n;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                jqVar.f7059n = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (jqVar.f7057l) {
                        jqVar.c3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    jqVar.c3(true);
                } else if (y0.f.Q0 == 0) {
                    jqVar.c3(false);
                }
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = jq.F;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13) {
                    jq jqVar = jq.this;
                    if (jqVar.f7057l) {
                        jqVar.c3(false);
                    }
                }
                jq.F = u0.b.D;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jq.this.f7055j = y0.f.Q0;
            a.f.p().t(LogType.CANBUS, "mCarSendNaviSound DataSound.sNaviSoundOn= " + y0.f.Q0);
            if (u0.b.D != 13) {
                jq jqVar = jq.this;
                if (jqVar.f7057l) {
                    jqVar.c3(false);
                    return;
                }
                return;
            }
            int i2 = y0.f.Q0;
            if (i2 != 0) {
                if (i2 != 1) {
                    return;
                }
                jq.this.c3(true);
            } else if (u0.b.j4 == 0) {
                jq.this.c3(false);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.P / 1000;
            z.k.s(-29, -100, 3, (i2 / BatchedScanSettings.MAX_INTERVAL_SEC) & 255, ((i2 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) & 255, (i2 % 60) & 255);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 3) {
                jq.this.a3((byte) 5, (byte) 2, u0.b.i3);
                jq.this.a3((byte) 5, (byte) 3, u0.b.j3);
                jq.this.a3((byte) 5, (byte) 4, u0.b.k3);
            } else {
                jq.this.a3((byte) 4, (byte) 2, u0.b.i3);
                jq.this.a3((byte) 4, (byte) 3, u0.b.j3);
                jq.this.a3((byte) 4, (byte) 4, u0.b.k3);
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            int i3 = 5;
            boolean z2 = false;
            boolean z3 = true;
            if (i2 != 0 && i2 != 1) {
                if (i2 == 2) {
                    i3 = 6;
                } else if (i2 == 3) {
                    i3 = 2;
                } else if (i2 != 4) {
                    i3 = i2 != 5 ? 0 : 3;
                } else {
                    i3 = 1;
                }
            }
            if (jq.this.f7069x != i3) {
                if ((jq.this.f7069x == 1 || jq.this.f7069x == 2 || jq.this.f7069x == 3) && i3 == 6) {
                    jq jqVar = jq.this;
                    jqVar.q3(4, jqVar.f7070y);
                    a.i.a0(100L);
                }
                jq.this.f7069x = i3;
                z2 = true;
            }
            if (jq.this.f7070y.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                jq.this.f7070y = h0.c.f2437h;
                if (jq.this.f7070y == null) {
                    jq.this.f7070y = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                jq jqVar2 = jq.this;
                jqVar2.q3(jqVar2.f7069x, jq.this.f7070y);
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jq.this.b3();
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.f8637c != 242) {
                return;
            }
            z.k.s(227, -30, 1, 1);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f7065t.a();
        u0.c.f17386m.a(this.D, 1);
        qt.z(this.A);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 0;
        int i2 = nt.f8633a;
        if (i2 == 2949575 || i2 == 12648904) {
            mtVar.f8317l = 1;
            u0.c.f17374a.a(this.f7054i, 1);
            y0.g.f18110t.a(this.f7056k, 1);
            y0.g.f18101k.a(new d());
        }
        qt.z(this.B);
        u0.c.f17388o.a(this.f7067v, 1);
        u0.c.f17389p.a(this.f7067v, 1);
        u0.c.f17390q.a(this.f7067v, 1);
        u0.c.f17392s.a(this.f7067v, 1);
        w0.e.f17815a.a(this.f7071z, 1);
        w0.e.f17819e.a(this.f7071z, 1);
        h0.d.f2462a.a(this.f7068w, 1);
        h0.d.f2464c.a(this.f7068w, 1);
        h0.d.f2465d.a(this.f7066u, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 29) {
            int i4 = i2 + 2;
            int i5 = bArr[i4] & 255;
            int i6 = i2 + 3;
            int i7 = bArr[i6] & 255;
            int i8 = i2 + 4;
            int i9 = bArr[i8] & 255;
            int i10 = i2 + 5;
            int i11 = bArr[i10] & 255;
            if (i5 == 0 && i7 == 0 && i9 == 0 && i11 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i5 || l0.c0.f13014h != i7 || l0.c0.f13015i != i9 || l0.c0.f13016j != i11) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i5;
            l0.c0.f13014h = i7;
            l0.c0.f13015i = i9;
            l0.c0.f13016j = i11;
            u0.d.D2(l0.c0.V0(bArr[i4] & 255));
            u0.d.E2(l0.c0.V0(bArr[i6] & 255));
            u0.d.F2(l0.c0.V0(bArr[i8] & 255));
            u0.d.G2(l0.c0.V0(bArr[i10] & 255));
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.V0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.V0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.V0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.V0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f7048c = b3 & 255;
            int i12 = 0;
            while (true) {
                iArr = this.f7049d;
                if (i12 >= iArr.length) {
                    break;
                }
                int i13 = this.f7048c;
                if (i13 == iArr[i12][0]) {
                    if (i13 == 0) {
                        break;
                    }
                    this.f7047b = i12;
                    break;
                }
                i12++;
            }
            int i14 = b4 & 255;
            if (i14 == 1) {
                if (i12 < iArr.length) {
                    l0.b0.l0(iArr[i12][1], 0);
                    return;
                }
                return;
            } else {
                if (i14 == 0) {
                    int i15 = this.f7047b;
                    if (i15 < iArr.length && i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                    }
                    this.f7047b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b5 >> 6) & 1);
                qt.y0(1, (b5 >> 7) & 1);
            } else {
                qt.y0(2, (b5 >> 7) & 1);
                qt.y0(1, (b5 >> 6) & 1);
            }
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            return;
        }
        if (b2 == 38) {
            int i16 = i2 + 2;
            qt.y0(98, (bArr[i16] >> 4) & 15);
            qt.y0(99, (bArr[i16] >> 0) & 15);
            int i17 = i2 + 3;
            qt.y0(100, (bArr[i17] >> 7) & 1);
            qt.y0(101, (bArr[i17] >> 0) & 15);
            int i18 = i2 + 4;
            qt.y0(102, (bArr[i18] >> 7) & 1);
            qt.y0(103, (bArr[i18] >> 6) & 1);
            qt.y0(104, (bArr[i18] >> 5) & 1);
            int i19 = i2 + 5;
            qt.y0(106, (bArr[i19] >> 7) & 1);
            qt.y0(107, (bArr[i19] >> 6) & 1);
            qt.y0(108, (bArr[i19] >> 5) & 1);
            qt.y0(109, (bArr[i19] >> 4) & 1);
            qt.y0(110, (bArr[i19] >> 3) & 1);
            qt.y0(111, (bArr[i19] >> 2) & 1);
            int i20 = i2 + 6;
            qt.y0(112, (bArr[i20] >> 7) & 1);
            qt.y0(113, (bArr[i20] >> 6) & 1);
            qt.y0(114, (bArr[i20] >> 4) & 3);
            qt.y0(121, (bArr[i20] >> 3) & 1);
            qt.y0(122, (bArr[i20] >> 0) & 7);
            qt.y0(115, bArr[i2 + 7] & 255);
            qt.y0(116, bArr[i2 + 8] & 255);
            qt.y0(105, (bArr[i2 + 9] >> 0) & 255);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 125) {
            int i21 = bArr[i2 + 2] & 255;
            if (i21 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i22 = i2 + 3;
                    l0.c0.b((bArr[i22] >> 3) & 1, (bArr[i22] >> 4) & 1, 0);
                } else {
                    int i23 = i2 + 3;
                    l0.c0.a((bArr[i23] >> 3) & 1, (bArr[i23] >> 4) & 1, 0);
                }
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
                return;
            }
            if (i21 == 3) {
                int i24 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i24);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i24}, null, null);
                return;
            } else {
                if (i21 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f7050e = true;
                return;
            }
        }
        if (b2 == 40) {
            int i25 = i2 + 2;
            qt.y0(10, (bArr[i25] >> 7) & 1);
            qt.y0(11, (bArr[i25] >> 6) & 1);
            qt.y0(12, (bArr[i25] >> 5) & 1);
            qt.y0(49, (bArr[i25] >> 4) & 1);
            qt.y0(13, (bArr[i25] >> 3) & 1);
            qt.y0(14, (bArr[i25] >> 2) & 1);
            qt.y0(15, (bArr[i25] >> 1) & 1);
            int i26 = i2 + 3;
            qt.y0(18, (bArr[i26] >> 7) & 1);
            qt.y0(19, (bArr[i26] >> 6) & 1);
            qt.y0(20, (bArr[i26] >> 5) & 1);
            qt.y0(21, bArr[i26] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i27 = i2 + 6;
            qt.y0(37, (bArr[i27] >> 0) & 1);
            int i28 = i2 + 4;
            int i29 = bArr[i28] & 255;
            int i30 = i2 + 5;
            int i31 = bArr[i30] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i29 = bArr[i30] & 255;
                i31 = bArr[i28] & 255;
            }
            if (i29 == 0) {
                qt.y0(27, -2);
            } else if (i29 == 255) {
                qt.y0(27, -3);
            } else if (nt.f8645g[37] == 1) {
                qt.y0(27, i29 * 10);
            } else {
                qt.y0(27, i29 * 5);
            }
            if (i31 == 0) {
                qt.y0(28, -2);
            } else if (i31 == 255) {
                qt.y0(28, -3);
            } else if (nt.f8645g[37] == 1) {
                qt.y0(28, i31 * 10);
            } else {
                qt.y0(28, i31 * 5);
            }
            qt.y0(65, (bArr[i27] >> 7) & 1);
            qt.y0(16, (bArr[i27] >> 6) & 1);
            return;
        }
        if (b2 == 41) {
            if (this.f7050e) {
                return;
            }
            int i32 = i2 + 3;
            if ((bArr[i32] & 8) != 0) {
                qt.i(bArr[i2 + 2] & 255, (bArr[i32] & DhcpPacket.DHCP_DOMAIN_NAME) | 240, false, 380);
                return;
            } else {
                qt.i(bArr[i2 + 2] & 255, bArr[i32] & DhcpPacket.DHCP_DOMAIN_NAME, false, 380);
                return;
            }
        }
        if (b2 == 64) {
            qt.y0(117, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(118, bArr[i2 + 4] & 255);
            int i33 = nt.f8633a;
            if (i33 != 2949575 || i33 != 12648904) {
                int i34 = i2 + 5;
                if (this.f7052g != ((bArr[i34] >> 0) & 1)) {
                    this.f7052g = (bArr[i34] >> 0) & 1;
                    if (!qt.i0().equals("com.syu.carinfo.rzc.sanlin.RZCVinFastPlusCarInfo")) {
                        Intent intent = new Intent();
                        intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.sanlin.RZCVinFastPlusCarInfo");
                        intent.addCategory(Intent.CATEGORY_DEFAULT);
                        intent.setFlags(268435456);
                        App.c().startActivity(intent);
                    }
                }
            }
            qt.y0(119, (bArr[i2 + 5] >> 0) & 1);
            qt.y0(120, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
            return;
        }
        if (b2 == 65) {
            int i35 = bArr[i2 + 2] & 255;
            if (this.f7051f != i35) {
                if (i35 == 1) {
                    if (!qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                        l3();
                    }
                } else if (i35 == 0 && qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                }
                this.f7051f = i35;
                return;
            }
            return;
        }
        switch (b2) {
            case 80:
                int i36 = nt.f8633a;
                if (i36 == 2949575 || i36 == 12648904) {
                    int i37 = i2 + 2;
                    if (bArr[i37] == 2) {
                        if (o1.u.a0()) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        break;
                    } else if (bArr[i37] == 1 && !o1.u.a0()) {
                        o1.u.z();
                        break;
                    }
                }
                break;
            case 81:
                int i38 = nt.f8633a;
                if (i38 == 2949575 || i38 == 12648904) {
                    qt.y0(127, bArr[i2 + 2] & 255);
                }
                break;
            case 82:
                int i39 = i2 + 2;
                qt.y0(1031, bArr[i39] & 255);
                o1.x[] xVarArr = nt.f8643f;
                o1.x.C(xVarArr, 1049, new int[]{1, bArr[i39] & 255}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{5, bArr[i2 + 3] & 255}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{24, bArr[i2 + 4] & 255}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{3, bArr[i2 + 5] & 255}, null, null);
                int i40 = bArr[i2 + 6] & 255;
                if (i40 == 1) {
                    o1.x.C(xVarArr, 1049, new int[]{4, 1}, null, null);
                } else if (i40 == 2 || i40 != 3) {
                    o1.x.C(xVarArr, 1049, new int[]{4, 2}, null, null);
                } else {
                    o1.x.C(xVarArr, 1049, new int[]{4, 3}, null, null);
                }
                o1.x.C(xVarArr, 1049, new int[]{28, bArr[i2 + 7] & 255}, null, null);
                int i41 = bArr[i2 + 8] & 255;
                if (i41 == 1) {
                    o1.x.C(xVarArr, 1049, new int[]{26, 1}, null, null);
                } else if (i41 != 2) {
                    o1.x.C(xVarArr, 1049, new int[]{26, 0}, null, null);
                } else {
                    o1.x.C(xVarArr, 1049, new int[]{26, 3}, null, null);
                }
                int i42 = i2 + 9;
                if (bArr[i42] == 0) {
                    o1.x.C(xVarArr, 1049, new int[]{10, 1}, null, null);
                } else if (bArr[i42] == 1) {
                    o1.x.C(xVarArr, 1049, new int[]{10, 0}, null, null);
                }
                break;
            case 83:
                int i43 = i2 + 2;
                if (bArr[i43] == 0) {
                    o1.x.C(nt.f8643f, 1049, new int[]{25, 2}, null, null);
                } else if (bArr[i43] == 1) {
                    o1.x.C(nt.f8643f, 1049, new int[]{25, 1}, null, null);
                }
                break;
            case 84:
                int i44 = i2 + 2;
                if (bArr[i44] == 0) {
                    o1.x.C(nt.f8643f, 1049, new int[]{9, 0}, null, null);
                } else if (bArr[i44] == 1) {
                    o1.x.C(nt.f8643f, 1049, new int[]{9, 1}, null, null);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f7065t.j();
        qt.q0(this.A);
        u0.c.f17386m.d(this.D);
        l0.b0.p0(this.E);
        qt.q0(this.B);
        u0.c.f17388o.a(this.f7067v, 1);
        u0.c.f17389p.a(this.f7067v, 1);
        u0.c.f17390q.a(this.f7067v, 1);
        u0.c.f17392s.a(this.f7067v, 1);
        w0.e.f17815a.a(this.f7071z, 1);
        w0.e.f17819e.a(this.f7071z, 1);
        h0.d.f2462a.a(this.f7068w, 1);
        h0.d.f2464c.a(this.f7068w, 1);
        h0.d.f2465d.d(this.f7066u);
        y0.g.f18110t.d(this.f7056k);
        u0.c.f17374a.d(this.f7054i);
        y0.g.f18101k.d(new e());
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 128) {
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
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 199, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            return;
        }
        if (i2 == 3) {
            if ((iArr[0] & 255) == 253) {
                o3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 252) {
                m3(iArr[1]);
                return;
            } else if ((iArr[0] & 255) == 249) {
                n3(iArr[1]);
                return;
            } else {
                if ((iArr[0] & 255) == 247) {
                    p3(iArr[1]);
                    return;
                }
                return;
            }
        }
        if (i2 == 5) {
            z.k.s(227, 228, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            return;
        }
        if (i2 == 43) {
            z.k.s(227, 229, 1, iArr[0]);
            return;
        }
        if (i2 == 46) {
            z.k.s(227, 227, 1, iArr[0]);
            return;
        }
        if (i2 == 238) {
            z.k.s(227, 134, 1, iArr[0]);
            return;
        }
        if (i2 != 1040) {
            return;
        }
        a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CMD_6606 --- " + o1.b0.e(iArr, 0, iArr.length));
        if (iArr[0] != 25) {
            return;
        }
        z.k.s(227, 230, 2, iArr[1], iArr[2]);
    }

    public final void a3(byte b2, byte b3, String str) {
        if (str == null) {
            str = "Unkown";
        }
        int[] iArr = new int[37];
        for (int i2 = 0; i2 < 37; i2++) {
            iArr[i2] = 0;
        }
        byte[] bytes = str.getBytes();
        iArr[0] = 227;
        iArr[1] = 153;
        iArr[2] = 34;
        iArr[3] = b2;
        iArr[4] = b3;
        int length = bytes.length <= 32 ? bytes.length : 32;
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3 + 5] = bytes[i3];
        }
        z.k.s(iArr);
    }

    public final void b3() {
        int i2 = w0.d.f17796h;
        if (i2 - 65536 == 0 || 1 == i2 - 65536 || 2 == i2 - 65536) {
            int[] iArr = new int[37];
            for (int i3 = 0; i3 < 37; i3++) {
                iArr[i3] = 0;
            }
            iArr[0] = 227;
            iArr[1] = 153;
            iArr[2] = 34;
            iArr[3] = 1;
            iArr[4] = 1;
            int i4 = w0.d.f17797i;
            iArr[5] = (i4 >> 8) & 255;
            iArr[6] = i4 & 255;
            z.k.s(iArr);
        }
    }

    public final void c3(boolean z2) {
        if (u0.b.f17306a0 == 0) {
            return;
        }
        n1.b bVarP = a.f.p();
        LogType logType = LogType.CANBUS;
        bVarP.t(logType, "SoundChangeTo 1111111=== " + this.f7057l);
        if (this.f7057l == z2) {
            return;
        }
        this.f7057l = z2;
        a.f.p().t(logType, "SoundChangeTo 222222=== " + this.f7057l);
        String str = SystemProperties.get("ro.fyt.platform", ProxyProperties.LOCAL_EXCL_LIST);
        if ("6521".equals(str)) {
            if (z2) {
                ToolsJni.cmd_31_fan_en(1);
                return;
            } else {
                ToolsJni.cmd_31_fan_en(0);
                return;
            }
        }
        if ("6316".equals(str) || "6312".equals(str)) {
            if (z2) {
                ToolsJni.cmd_251_Normal_Io_Set(13, 1);
                return;
            } else {
                ToolsJni.cmd_251_Normal_Io_Set(13, 0);
                return;
            }
        }
        if ("6315".equals(str) || "6318".equals(str) || "6319".equals(str)) {
            if (z2) {
                ToolsJni.cmd_251_Normal_Io_Set(14, 1);
                return;
            } else {
                ToolsJni.cmd_251_Normal_Io_Set(14, 0);
                return;
            }
        }
        if (z2) {
            ToolsJni.cmd_251_Normal_Io_Set(5, 1);
        } else {
            ToolsJni.cmd_251_Normal_Io_Set(5, 0);
        }
    }

    public final void l3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.xiandai.XiandaiSosPage");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void m3(int i2) {
        qt.y0(124, i2);
        H = i2;
        int iB = this.f7065t.b(11, 36);
        int i3 = H;
        if (iB != i3) {
            this.f7065t.g(11, i3);
        }
    }

    public final void n3(int i2) {
        qt.y0(126, i2);
        J = i2;
        int iB = this.f7065t.b(14, 0);
        int i3 = J;
        if (iB != i3) {
            this.f7065t.g(14, i3);
        }
    }

    public final void o3(int i2) {
        qt.y0(123, i2);
        G = i2;
        int iB = this.f7065t.b(10, 20);
        int i3 = G;
        if (iB != i3) {
            this.f7065t.g(10, i3);
        }
    }

    public final void p3(int i2) {
        qt.y0(125, i2);
        I = i2;
        int iB = this.f7065t.b(15, 0);
        int i3 = I;
        if (iB != i3) {
            this.f7065t.g(15, i3);
        }
    }

    public final void q3(int i2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[28];
        for (int i3 = 0; i3 < 28; i3++) {
            iArr[i3] = 0;
        }
        byte[] bytes = str.getBytes();
        iArr[0] = 227;
        iArr[1] = 155;
        iArr[2] = 25;
        iArr[3] = i2;
        int length = str.length() <= 24 ? str.length() : 24;
        for (int i4 = 0; i4 < length; i4++) {
            iArr[i4 + 4] = bytes[i4];
        }
        z.k.s(iArr);
    }
}
