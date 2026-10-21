package k0;

import android.content.Intent;
import android.drm.DrmManagerClient;
import android.media.MediaMetadataEditor;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.UrlQuerySanitizer;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.opengl.GLES10;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.Downloads;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import android.widget.SpellChecker;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class w4 extends lt implements o1.q {

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static int f11580l0 = 0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static int f11581m0 = 0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static int f11582n0 = -1;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static int f11583o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final int[] f11584p0 = {0, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 30, 30, 30, 30, 30};

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static int f11585q0 = 0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static int f11586r0 = 0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static int f11587s0 = 10;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public String f11588a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public String f11590b0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11603i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f11609l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f11589b = new int[3][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f11591c = new int[6][];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11593d = new int[7][];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public o1.g0 f11595e = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f11597f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f11599g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11601h = 3;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11605j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f11607k = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{17, 0}, new int[]{18, 6}, new int[]{19, 16}, new int[]{20, 1}, new int[]{21, 54}, new int[]{22, 9}, new int[]{23, 18}, new int[]{24, 24}, new int[]{25, 18}, new int[]{26, 26}, new int[]{27, 2}, new int[]{28, 38}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11610m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[][] f11611n = {new int[]{0, -1}, new int[]{1, 3}, new int[]{2, 4}, new int[]{3, 27}, new int[]{4, 28}, new int[]{5, 36}, new int[]{17, 18}, new int[]{18, 26}, new int[]{19, -1}, new int[]{20, -1}, new int[]{21, 36}, new int[]{22, -1}, new int[]{23, -1}, new int[]{24, -1}, new int[]{25, -1}};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f11612o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final byte[] f11613p = new byte[1024];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f11614q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f11615r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f11616s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f11617t = 10;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f11618u = 60;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f11619v = 120;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f11620w = 165;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f11621x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f11622y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f11623z = -1;
    public int A = 0;
    public Runnable B = new i();
    public Runnable C = new j();
    public Runnable D = new k();
    public Runnable E = new l();
    public int F = 0;
    public Runnable G = new m();
    public boolean H = false;
    public byte I = 0;
    public Runnable J = new n();
    public int K = 0;
    public int L = 0;
    public Runnable M = new o();
    public float N = 0.0f;
    public int O = 255;
    public int P = 255;
    public Runnable Q = new p();
    public Runnable R = new q();
    public Runnable S = new a();
    public Runnable T = new b();
    public final Runnable U = new c();
    public int V = -1;
    public boolean W = false;
    public String X = ProxyProperties.LOCAL_EXCL_LIST;
    public String Y = ProxyProperties.LOCAL_EXCL_LIST;
    public Runnable Z = new d();

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int[] f11592c0 = {34, 204};

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f11594d0 = 0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f11596e0 = 0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f11598f0 = 0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public Runnable f11600g0 = new e();

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public byte f11602h0 = 5;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public Runnable f11604i0 = new f();

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public Runnable f11606j0 = new g();

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public Runnable f11608k0 = new h();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.t3;
            int i3 = i2 / BatchedScanSettings.MAX_INTERVAL_SEC;
            int i4 = (i2 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            int i5 = i2 % 60;
            w4.this.C3((byte) 115, ((i3 / 10) + (i3 % 10)) + ":" + (i4 / 10) + (i4 % 10) + ":" + (i5 / 10) + (i5 % 10));
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            int i2 = h0.c.E;
            int i3 = 3;
            boolean z3 = true;
            boolean z4 = i2 == 5 || i2 == 3 || i2 == 4;
            switch (i2) {
                case 0:
                default:
                    i3 = 0;
                    break;
                case 1:
                case 2:
                case 6:
                    break;
                case 3:
                    i3 = 2;
                    break;
                case 4:
                case 5:
                    i3 = 1;
                    break;
            }
            if (w4.this.V != i3) {
                w4.this.V = i3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (!w4.this.X.equals(h0.c.f2437h)) {
                w4.this.X = h0.c.f2437h;
                if (w4.this.X == null) {
                    w4.this.X = ProxyProperties.LOCAL_EXCL_LIST;
                } else {
                    z2 = true;
                }
            }
            if (w4.this.Y.equals(h0.c.f2441j)) {
                z3 = z2;
            } else {
                w4.this.Y = h0.c.f2441j;
                if (w4.this.Y == null) {
                    w4.this.Y = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                if (w4.this.V != 0) {
                    w4.this.K3();
                }
                if (w4.this.W != z4) {
                    w4.this.W = z4;
                    w4.this.V = 0;
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = h0.c.f2441j;
            if (str == null || str.isEmpty()) {
                w4.this.J3(h0.c.f2437h);
            } else {
                w4.this.J3(h0.c.f2441j);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            qt.y0(456, time.hour);
            qt.y0(457, time.minute);
            z.k.s(227, 166, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) (((i2 << 7) | time.hour) & 255), (byte) time.minute, (byte) time.second, 1);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(w4.this.f11608k0);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(w4.this.f11606j0);
            w4.this.f11602h0 = (byte) 5;
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w4 w4Var = w4.this;
            byte b2 = (byte) (w4Var.f11602h0 - 1);
            w4Var.f11602h0 = b2;
            if (b2 <= 0) {
                l0.b0.p0(w4Var.f11606j0);
                w4.this.f11602h0 = (byte) 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            z.k.s(227, 144, 1, 48);
            z.k.s(227, 144, 2, 64, 16);
            z.k.s(227, 144, 2, 64, 112);
            w4 w4Var2 = w4.this;
            w4Var2.G3(w4Var2.f11595e.b(2, 1));
            if (nt.f8637c == 2) {
                w4 w4Var3 = w4.this;
                w4Var3.H3(w4Var3.f11595e.b(3, 10));
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (w4.this.f11598f0 == 0) {
                w4.L3(new byte[]{46, -112, 1, 33, 0});
            }
            w4 w4Var = w4.this;
            int i2 = w4Var.f11598f0;
            if (i2 > 0) {
                w4Var.f11598f0 = i2 - 1;
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.z();
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.w0();
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 2, 41, 0);
            }
            w4 w4Var = w4.this;
            int i2 = w4Var.f11623z;
            if (i2 > 0) {
                w4Var.f11623z = i2 - 1;
            }
            if (w4Var.f11622y == 1 && w4Var.f11623z == 0) {
                z.k.s(227, 144, 2, 34, 0);
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 != 53 && i2 != 58) {
                int i3 = w4.f11582n0;
                int i4 = u0.b.f17347o;
                if (i3 != i4) {
                    w4.f11582n0 = i4;
                    u0.d.C2(0);
                    return;
                }
                return;
            }
            int i5 = w4.f11582n0;
            int i6 = u0.b.f17347o;
            if (i5 != i6) {
                w4.f11582n0 = i6;
                if (i6 == 0 && u0.b.G == 0) {
                    u0.d.F(1);
                }
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (w4.this.F <= 0) {
                int i2 = nt.f8633a;
                if (i2 == 655520 || i2 == 3801248 || i2 == 2883744 || i2 == 2949280 || i2 == 3014816) {
                    if (qt.i0().equals("com.syu.carinfo.golf7.Golf7FunctionalHundongInfo1Acti")) {
                        o1.u.k();
                    }
                } else if (qt.i0().equals("com.syu.carinfo.golf7.Golf7FunctionalDrivingInfo1Acti")) {
                    o1.u.k();
                }
                qt.q0(w4.this.G);
            }
            w4 w4Var = w4.this;
            int i3 = w4Var.F;
            if (i3 > 0) {
                w4Var.F = i3 - 1;
            }
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w4 w4Var = w4.this;
            byte b2 = (byte) (w4Var.I + 1);
            w4Var.I = b2;
            if (b2 > 5) {
                l0.b0.o0(w4Var.J);
                w4.this.I = (byte) 0;
            }
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w4.this.I3();
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w4.this.N = u0.b.f17359s0;
            if ((w4.this.N <= 22.5d && w4.this.N >= 0.0f) || (w4.this.N >= 337.5d && w4.this.N <= 360.0f)) {
                w4.this.P = 0;
            } else if (w4.this.N > 22.5d && w4.this.N < 67.5d) {
                w4.this.P = 1;
            } else if (w4.this.N >= 67.5d && w4.this.N <= 112.5d) {
                w4.this.P = 2;
            } else if (w4.this.N > 112.5d && w4.this.N < 157.5d) {
                w4.this.P = 3;
            } else if (w4.this.N >= 157.5d && w4.this.N <= 202.5d) {
                w4.this.P = 4;
            } else if (w4.this.N > 202.5d && w4.this.N < 247.5d) {
                w4.this.P = 5;
            } else if (w4.this.N >= 247.5d && w4.this.N <= 292.5d) {
                w4.this.P = 6;
            } else if (w4.this.N <= 292.5d || w4.this.N >= 337.5d) {
                w4.this.P = 0;
            } else {
                w4.this.P = 7;
            }
            int i2 = u0.b.f17359s0;
            z.k.s(227, 167, 3, w4.this.P, i2 & 255, (i2 >> 8) & 255);
            w4 w4Var = w4.this;
            w4Var.O = w4Var.P;
        }
    }

    public class q implements Runnable {
        public q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w4.this.C3((byte) 112, u0.b.i3);
            w4.this.C3((byte) 113, u0.b.j3);
            w4.this.C3((byte) 114, u0.b.k3);
        }
    }

    public static void L3(byte[] bArr) {
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

    public final void A3(String str) {
        if (str == null) {
            if (this.f11588a0 != str) {
                this.f11588a0 = str;
            }
        } else {
            if (str.equals(this.f11588a0)) {
                return;
            }
            this.f11588a0 = str;
        }
    }

    public final int B3(int i2) {
        if (i2 < 1) {
            return 1;
        }
        if (i2 > 9) {
            return 9;
        }
        return i2;
    }

    public final void C3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int length = str.length() <= 10 ? str.length() : 10;
        int i2 = length * 2;
        int[] iArr = new int[i2 + 4];
        iArr[0] = 227;
        iArr[1] = b2;
        iArr[2] = i2 + 1;
        iArr[3] = 16;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 4] = (iCodePointAt >> 8) & 255;
            iArr[i4 + 5] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void D3(String str) {
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", str);
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(274857984);
        App.c().startActivity(intent);
    }

    public final void E3() {
        try {
            this.F = 8;
            int i2 = nt.f8633a;
            if (i2 == 655520 || i2 == 3801248 || i2 == 2883744 || i2 == 2949280 || i2 == 3014816) {
                if (!qt.i0().equals("com.syu.carinfo.golf7.Golf7FunctionalHundongInfo1Acti")) {
                    qt.z(this.G);
                    Intent intent = new Intent();
                    intent.setClassName("com.syu.canbus", "com.syu.carinfo.golf7.Golf7FunctionalHundongInfo1Acti");
                    intent.addCategory(Intent.CATEGORY_DEFAULT);
                    intent.setFlags(268435456);
                    App.c().startActivity(intent);
                }
            } else if (!qt.i0().equals("com.syu.carinfo.golf7.Golf7FunctionalDrivingInfo1Acti")) {
                qt.z(this.G);
                Intent intent2 = new Intent();
                intent2.setClassName("com.syu.canbus", "com.syu.carinfo.golf7.Golf7FunctionalDrivingInfo1Acti");
                intent2.addCategory(Intent.CATEGORY_DEFAULT);
                intent2.setFlags(268435456);
                App.c().startActivity(intent2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void F3(int i2) {
        f11585q0 = i2;
        z.k.s(227, 198, 2, 70, (byte) i2);
        int iB = this.f11595e.b(1, 0);
        int i3 = f11585q0;
        if (iB != i3) {
            this.f11595e.g(1, i3);
        }
    }

    public final void G3(int i2) {
        f11586r0 = i2;
        z.k.s(227, 198, 2, 75, (byte) i2);
        qt.y0(377, f11586r0);
        int iB = this.f11595e.b(2, 0);
        int i3 = f11586r0;
        if (iB != i3) {
            this.f11595e.g(2, i3);
        }
    }

    public final void H3(int i2) {
        f11587s0 = i2;
        z.k.s(227, 168, 2, 0, (byte) i2);
        qt.y0(461, f11587s0);
        int iB = this.f11595e.b(3, 0);
        int i3 = f11587s0;
        if (iB != i3) {
            this.f11595e.g(3, i3);
        }
    }

    public final synchronized void I3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        z.k.s(227, 168, 2, 0, f11583o0);
    }

    public final void J3(String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length + 5];
        iArr[0] = -29;
        iArr[1] = -54;
        iArr[2] = (byte) (charArray.length + 2);
        iArr[3] = 3;
        iArr[4] = 1;
        for (int i2 = 0; i2 < str.length(); i2++) {
            iArr[5 + i2] = (byte) charArray[i2];
        }
        z.k.s(iArr);
    }

    public final void K3() {
        int[] iArr = new int[5];
        iArr[0] = -29;
        iArr[1] = -59;
        iArr[2] = 2;
        iArr[3] = 0;
        switch (h0.c.E) {
            case 0:
                iArr[4] = 0;
                break;
            case 1:
            case 2:
            case 6:
                iArr[4] = 16;
                break;
            case 3:
                iArr[4] = 18;
                break;
            case 4:
                iArr[4] = 17;
                break;
            case 5:
                iArr[4] = 20;
                break;
        }
        z.k.s(iArr);
        if (h0.c.E != 0) {
            o1.j.e(o1.l.a(), this.U);
            o1.j.b(o1.l.a(), this.U, 1200L);
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
            y0.f.C0 = 10;
        }
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    b3(178, 0);
                } else {
                    b3(178, 1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    b3(189, 0);
                } else {
                    b3(189, 1);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    b3(205, 0);
                } else {
                    b3(205, 1);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    b3(190, 1);
                } else if (iArr[1] == 0) {
                    b3(190, 0);
                }
                break;
            case 39:
                if (iArr[1] != -1 && iArr[1] != -2) {
                    b3(183, iArr[1]);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    b3(184, 0);
                } else if (iArr[1] == 1) {
                    b3(184, 1);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    b3(185, 0);
                } else if (iArr[1] == 1) {
                    b3(185, 1);
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0084  */
    @Override // k0.lt
    public void S2() {
        this.f11595e.a();
        F3(this.f11595e.b(1, 0));
        if (nt.a()) {
            qt.z(this.B);
            y0.g.f18094d.a(this.C, 1);
            y0.g.f18095e.a(this.C, 1);
            w0.e.f17815a.a(this.B, 1);
            u0.c.f17374a.a(this.B, 1);
            qt.y(this.D);
            u0.c.f17386m.a(this.f11604i0, 1);
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8322q = 0;
        mtVar.f8317l = 0;
        mtVar.f8307b = 0;
        int i2 = nt.f8637c;
        if (i2 == 2) {
            mtVar.f8307b = 0;
        } else if (i2 == 3 || i2 == 4) {
            mtVar.f8314i = 1;
        } else if (i2 == 7 || i2 == 8) {
            mtVar.f8322q = 1;
            u0.c.f17386m.a(this.f11600g0, 1);
        } else if (i2 != 11) {
            switch (i2) {
                case 60:
                case 61:
                case 62:
                    mtVar.f8317l = 1;
                    break;
                default:
                    mtVar.f8314i = 1;
                    break;
            }
        } else {
            mtVar.f8314i = 1;
        }
        this.f7886a.f8323r = 1;
        qt.z(this.Z);
        h0.d.f2464c.a(this.T, 1);
        h0.d.f2473l.a(this.T, 1);
        h0.d.f2462a.a(this.T, 1);
        u0.c.f17388o.a(this.R, 1);
        u0.c.f17389p.a(this.R, 1);
        u0.c.f17393t.a(this.S, 1);
        o1.h.f16865a.a(this.Q, 1);
        u0.c.f17379f.a(this.E, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        byte b3 = bArr[i2];
        if (b3 == -14) {
            int i10 = i2 + 2;
            if (bArr[i10] != 1) {
                if (bArr[i10] == 2) {
                    qt.y0(458, bArr[i2 + 3] & 255);
                    return;
                } else {
                    if (bArr[i10] == 3) {
                        qt.y0(459, bArr[i2 + 3] & 255);
                    }
                    return;
                }
            }
            int i11 = i2 + 3;
            if (bArr[i11] == 1) {
                l0.b0.l0(72, 0);
                l0.b0.l0(72, 1);
                return;
            } else {
                if (bArr[i11] == 2) {
                    l0.b0.l0(71, 0);
                    l0.b0.l0(71, 1);
                    return;
                }
                return;
            }
        }
        if (b3 == 64) {
            byte b4 = bArr[i2 + 2];
            if (b4 == -128) {
                int i12 = i2 + 3;
                qt.y0(153, bArr[i12] & 1);
                qt.y0(154, bArr[i12] & 2);
                qt.y0(155, bArr[i12] & 4);
                qt.y0(156, bArr[i12] & 8);
                qt.y0(157, bArr[i12] & 16);
                qt.y0(158, bArr[i12] & 32);
                qt.y0(159, bArr[i12] & 64);
                qt.y0(160, bArr[i12] & 128);
                int i13 = i2 + 4;
                qt.y0(161, bArr[i13] & 1);
                qt.y0(182, bArr[i13] & 2);
                return;
            }
            if (b4 == -112) {
                int i14 = i2 + 3;
                qt.y0(180, bArr[i14] & 1);
                qt.y0(181, (bArr[i14] & 2) >> 1);
                int[] iArr3 = new int[1];
                iArr3[0] = ((bArr[i14] & 4) >> 2) == 0 ? 0 : 1;
                qt.y0(163, iArr3);
                qt.y0(335, (bArr[i14] & 8) >> 3);
                qt.y0(164, ((bArr[i14] & 240) >> 4) & 255);
                int i15 = i2 + 4;
                qt.y0(165, bArr[i15] & DhcpPacket.DHCP_DOMAIN_NAME & 255);
                qt.y0(166, ((bArr[i15] & 240) >> 4) & 255);
                return;
            }
            if (b4 == -96) {
                byte b5 = bArr[i2 + 3];
                byte b6 = bArr[i2 + 4];
                byte b7 = bArr[i2 + 5];
                if ((((b5 >> 4) & 1) | ((b5 >> 5) & 1)) == 1) {
                    E3();
                }
                qt.y0(190, b5 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(191, (b6 >> 4) & 15);
                qt.y0(192, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(193, (b7 >> 4) & 15);
                qt.y0(194, b7 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i16 = i2 + 6;
                qt.y0(486, (bArr[i16] >> 3) & 31);
                qt.y0(336, bArr[i16] & 7);
                return;
            }
            if (b4 == -48) {
                qt.y0(Process.MEDIA_UID, bArr[i2 + 3] & 255);
                qt.y0(213, bArr[i2 + 4] & 255);
                qt.y0(214, bArr[i2 + 5] & 255);
                qt.y0(215, bArr[i2 + 6] & 255);
                return;
            }
            if (b4 == 0) {
                qt.y0(362, bArr[i2 + 3] & 255);
                return;
            }
            if (b4 == 16) {
                qt.y0(162, bArr[i2 + 3] & 3);
                qt.y0(388, bArr[i2 + 4] & 255);
                return;
            }
            if (b4 == 32) {
                int i17 = i2 + 3;
                qt.y0(125, (255 & bArr[i2 + 4]) | ((bArr[i17] & 2) << 7));
                qt.y0(124, bArr[i17] & 1);
                qt.y0(i.a.Theme_dialogTitleDecorLayout, bArr[i2 + 5] & 3);
                return;
            }
            if (b4 == 64) {
                int i18 = i2 + 3;
                qt.y0(116, bArr[i18] & 1);
                int i19 = i2 + 4;
                qt.y0(117, B3(bArr[i19] & DhcpPacket.DHCP_DOMAIN_NAME) - 1);
                qt.y0(118, B3((bArr[i19] & 240) >> 4) - 1);
                int i20 = i2 + 5;
                qt.y0(119, B3(bArr[i20] & DhcpPacket.DHCP_DOMAIN_NAME) - 1);
                qt.y0(120, B3((bArr[i20] & 240) >> 4) - 1);
                qt.y0(327, (bArr[i18] >> 1) & 1);
                qt.y0(328, (bArr[i18] >> 2) & 1);
                qt.y0(329, (bArr[i18] >> 3) & 1);
                qt.y0(390, (bArr[i18] >> 7) & 1);
                if (this.L != ((bArr[i18] >> 7) & 1)) {
                    int i21 = (bArr[i18] >> 7) & 1;
                    this.L = i21;
                    if (i21 == 1) {
                        if (!qt.i0().equals("com.syu.carinfo.golf7.Golf7FunctionalParkingAndManoeurvrinActi")) {
                            D3("com.syu.carinfo.golf7.Golf7FunctionalParkingAndManoeurvrinActi");
                        }
                    } else if (qt.i0().equals("com.syu.carinfo.golf7.Golf7FunctionalParkingAndManoeurvrinActi")) {
                        o1.u.k();
                    }
                }
                int i22 = i2 + 6;
                qt.y0(330, bArr[i22] & DhcpPacket.DHCP_DOMAIN_NAME);
                int i23 = nt.f8637c;
                if (i23 == 53 || i23 == 58) {
                    qt.y0(Process.MEDIA_UID, bArr[i22] & 255);
                    int i24 = (bArr[i22] >> 4) & 7;
                    this.f11596e0 = i24;
                    if (i24 == 7) {
                        qt.a(0);
                        return;
                    }
                    qt.a(1);
                    if (((bArr[i22] >> 4) & 7) == 4) {
                        if (u0.b.G == 1) {
                            u0.d.F(0);
                            return;
                        }
                        return;
                    } else if (((bArr[i22] >> 7) & 1) == 1) {
                        if (u0.b.G == 0) {
                            u0.d.F(1);
                            return;
                        }
                        return;
                    } else {
                        if (((bArr[i22] >> 7) & 1) == 0 && u0.b.G == 1) {
                            u0.d.F(0);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (b4 == 96) {
                int i25 = i2 + 3;
                qt.y0(148, bArr[i25] & 1);
                qt.y0(149, bArr[i25] & 2);
                qt.y0(151, bArr[i25] & 4);
                qt.y0(152, bArr[i25] & 8);
                qt.y0(150, bArr[i2 + 4] & 1);
                return;
            }
            if (b4 == 112) {
                int i26 = i2 + 3;
                qt.y0(136, bArr[i26] & DhcpPacket.DHCP_DOMAIN_NAME & 255);
                qt.y0(137, ((bArr[i26] & 240) >> 4) & 255);
                int i27 = i2 + 4;
                qt.y0(138, bArr[i27] & 1);
                qt.y0(209, (bArr[i27] >> 1) & 1);
                qt.y0(332, (bArr[i27] >> 2) & 1);
                qt.y0(333, (bArr[i27] >> 3) & 1);
                qt.y0(334, (bArr[i27] >> 4) & 1);
                qt.y0(MediaProperties.HEIGHT_360, (bArr[i27] >> 5) & 1);
                qt.y0(361, (bArr[i27] >> 6) & 1);
                return;
            }
            if (b4 == -64) {
                qt.y0(349, (bArr[i2 + 3] >> 0) & 3);
                qt.y0(SpellChecker.WORD_ITERATOR_INTERVAL, (bArr[i2 + 5] >> 7) & 1);
                qt.y0(351, bArr[i2 + 6] & 255);
                qt.y0(352, bArr[i2 + 4] & 255);
                return;
            }
            if (b4 == -63) {
                qt.y0(353, bArr[i2 + 3] & 255);
                qt.y0(354, bArr[i2 + 4] & 255);
                qt.y0(355, bArr[i2 + 5] & 255);
                return;
            }
            if (b4 == 48) {
                int i28 = i2 + 3;
                qt.y0(323, bArr[i28] & 1);
                qt.y0(134, bArr[i28] & 2);
                if (this.K != ((bArr[i28] >> 7) & 1)) {
                    int i29 = (bArr[i28] >> 7) & 1;
                    this.K = i29;
                    if (i29 == 1) {
                        if (!qt.i0().equals("com.syu.carinfo.golf7.Golf7FunctionalDriverAssistanceActi")) {
                            D3("com.syu.carinfo.golf7.Golf7FunctionalDriverAssistanceActi");
                        }
                    } else if (qt.i0().equals("com.syu.carinfo.golf7.Golf7FunctionalDriverAssistanceActi")) {
                        o1.u.k();
                    }
                }
                qt.y0(Downloads.Impl.STATUS_UNHANDLED_REDIRECT, (bArr[i28] >> 3) & 1);
                qt.y0(389, (bArr[i28] >> 7) & 1);
                int i30 = i2 + 4;
                qt.y0(132, bArr[i30] & 1);
                qt.y0(356, (bArr[i30] >> 1) & 1);
                int i31 = i2 + 5;
                qt.y0(487, (bArr[i31] >> 7) & 1);
                qt.y0(488, (bArr[i31] >> 5) & 3);
                qt.y0(Downloads.Impl.STATUS_CANNOT_RESUME, (bArr[i31] >> 4) & 1);
                qt.y0(Downloads.Impl.STATUS_CANCELED, (bArr[i31] >> 2) & 3);
                qt.y0(Downloads.Impl.STATUS_UNKNOWN_ERROR, (bArr[i31] >> 1) & 1);
                return;
            }
            if (b4 == 49) {
                int i32 = i2 + 3;
                qt.y0(127, bArr[i32] & 1);
                qt.y0(129, bArr[i32] & 2);
                qt.y0(130, bArr[i32] & 4);
                qt.y0(131, bArr[i32] & 8);
                qt.y0(Downloads.Impl.STATUS_FILE_ERROR, (bArr[i32] >> 4) & 1);
                int i33 = i2 + 4;
                qt.y0(126, bArr[i33] & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(128, ((bArr[i33] & 240) >> 4) & 255);
                int i34 = i2 + 5;
                qt.y0(324, 3 & (bArr[i34] >> 2));
                qt.y0(325, (bArr[i34] >> 1) & 1);
                qt.y0(326, (bArr[i34] >> 0) & 1);
                qt.y0(357, (bArr[i34] >> 4) & 15);
                return;
            }
            switch (b4) {
                case -80:
                    int i35 = i2 + 3;
                    qt.y0(337, bArr[i35] & 4);
                    qt.y0(208, bArr[i35] & 2);
                    qt.y0(338, bArr[i35] & 1);
                    break;
                case -79:
                    int i36 = i2 + 3;
                    qt.y0(339, (bArr[i36] >> 4) & 15);
                    qt.y0(340, (bArr[i36] >> 0) & 15);
                    int i37 = i2 + 4;
                    qt.y0(341, (bArr[i37] >> 4) & 15);
                    qt.y0(342, (bArr[i37] >> 0) & 15);
                    int i38 = i2 + 5;
                    qt.y0(343, (bArr[i38] >> 7) & 1);
                    qt.y0(344, (bArr[i38] >> 6) & 1);
                    break;
                case -78:
                    int i39 = i2 + 3;
                    qt.y0(345, (bArr[i39] >> 7) & 1);
                    qt.y0(346, (bArr[i39] >> 4) & 7);
                    qt.y0(347, (bArr[i39] >> 3) & 1);
                    qt.y0(348, (bArr[i2 + 4] >> 6) & 3);
                    break;
                default:
                    switch (b4) {
                        case 80:
                            int i40 = i2 + 3;
                            qt.y0(139, bArr[i40] & DhcpPacket.DHCP_DOMAIN_NAME);
                            qt.y0(140, bArr[i40] & 16);
                            qt.y0(141, bArr[i40] & 32);
                            qt.y0(175, bArr[i40] & 64);
                            qt.y0(143, bArr[i2 + 4] & 255);
                            qt.y0(146, bArr[i2 + 5] & 255);
                            qt.y0(147, bArr[i2 + 6] & 255);
                            break;
                        case 81:
                            int i41 = i2 + 3;
                            qt.y0(142, bArr[i41] & 1);
                            qt.y0(277, (bArr[i41] >> 1) & 7);
                            qt.y0(144, bArr[i2 + 4] & 255);
                            qt.y0(145, bArr[i2 + 5] & 255);
                            int i42 = i2 + 6;
                            qt.y0(205, (bArr[i42] >> 1) & 1);
                            qt.y0(206, (bArr[i42] >> 0) & 1);
                            qt.y0(363, (bArr[i42] >> 3) & 1);
                            qt.y0(364, (bArr[i42] >> 4) & 15);
                            break;
                        case 82:
                            qt.y0(203, bArr[i2 + 3] & 255);
                            qt.y0(204, bArr[i2 + 4] & 255);
                            int i43 = i2 + 5;
                            qt.y0(202, bArr[i43] & 63);
                            qt.y0(331, (bArr[i43] >> 6) & 3);
                            qt.y0(207, bArr[i2 + 6] & 255);
                            break;
                        case 83:
                            qt.y0(387, bArr[i2 + 3] & 255);
                            int i44 = i2 + 4;
                            qt.y0(391, (bArr[i44] >> 7) & 1);
                            qt.y0(392, (bArr[i44] >> 0) & 15);
                            qt.y0(393, (bArr[i2 + 5] >> 0) & 63);
                            qt.y0(394, (bArr[i2 + 6] >> 0) & 63);
                            break;
                    }
                    break;
            }
        }
        if (b3 == 125) {
            int i45 = bArr[i2 + 2] & 255;
            if (i45 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i46 = i2 + 3;
                    l0.c0.b((bArr[i46] >> 3) & 1, (bArr[i46] >> 4) & 1, 0);
                    return;
                } else {
                    int i47 = i2 + 3;
                    l0.c0.a((bArr[i47] >> 3) & 1, (bArr[i47] >> 4) & 1, 0);
                    return;
                }
            }
            if (i45 == 6) {
                o1.x[] xVarArr = nt.f8643f;
                o1.x.C(xVarArr, 1049, new int[]{3, (bArr[i2 + 3] >> 0) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{4, (bArr[i2 + 4] >> 0) & 15}, null, null);
                return;
            }
            if (i45 == 240) {
                qt.y0(Downloads.Impl.STATUS_UNHANDLED_HTTP_CODE, bArr[i2 + 3] & 255);
                qt.y0(Downloads.Impl.STATUS_HTTP_DATA_ERROR, bArr[i2 + 4] & 255);
                qt.y0(Downloads.Impl.STATUS_HTTP_EXCEPTION, bArr[i2 + 5] & 255);
                qt.y0(Downloads.Impl.STATUS_TOO_MANY_REDIRECTS, bArr[i2 + 6] & 255);
                qt.y0(Downloads.Impl.STATUS_BLOCKED, bArr[i2 + 7] & 255);
                qt.y0(499, bArr[i2 + 8] & 255);
                return;
            }
            if (i45 == 3) {
                int i48 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i48);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i48}, null, null);
                return;
            } else {
                if (i45 == 4) {
                    o1.x.C(nt.f8643f, 1049, new int[]{5, ((bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280)) / 10}, null, null);
                    return;
                }
                if (i45 != 8) {
                    if (i45 != 9) {
                        return;
                    }
                    o1.x.C(nt.f8643f, 1049, new int[]{2, (bArr[i2 + 4] & 255) - 40}, null, null);
                    return;
                } else {
                    byte b8 = bArr[i2 + 3];
                    byte b9 = bArr[i2 + 4];
                    this.H = true;
                    qt.i(b8, b9, true, 540);
                    return;
                }
            }
        }
        if (b3 == 47) {
            if (nt.a()) {
                int i49 = bArr[i2 + 2] & 255;
                this.f11610m = i49;
                int i50 = 0;
                while (true) {
                    iArr = this.f11611n;
                    if (i50 >= iArr.length) {
                        break;
                    }
                    int i51 = this.f11610m;
                    if (i51 == iArr[i50][0]) {
                        if (i51 == 0) {
                            break;
                        }
                        this.f11609l = i50;
                        break;
                    }
                    i50++;
                }
                if (i49 != 0) {
                    if (i50 < iArr.length) {
                        l0.b0.l0(iArr[i50][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i52 = this.f11609l;
                    if (i52 <= iArr.length && i52 != 255) {
                        l0.b0.l0(iArr[i52][1], 1);
                    }
                    this.f11609l = 255;
                    return;
                }
            }
            return;
        }
        if (b3 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 50) {
            byte b10 = bArr[i2 + 2];
            byte b11 = bArr[i2 + 3];
            byte b12 = bArr[i2 + 4];
            byte b13 = bArr[i2 + 5];
            int i53 = ((b10 & 255) * 10) / 90;
            u0.d.I2(i53 > 10 ? 10 : i53);
            int i54 = ((b11 & 255) * 10) / 90;
            u0.d.K2(i54 > 10 ? 10 : i54);
            int i55 = ((b12 & 255) * 10) / 90;
            u0.d.J2(i55 > 10 ? 10 : i55);
            int i56 = ((b13 & 255) * 10) / 90;
            u0.d.H2(i56 > 10 ? 10 : i56);
            return;
        }
        if (b3 == 51) {
            byte b14 = bArr[i2 + 2];
            byte b15 = bArr[i2 + 3];
            byte b16 = bArr[i2 + 4];
            byte b17 = bArr[i2 + 5];
            int i57 = ((b14 & 255) * 10) / 90;
            u0.d.O2(i57 > 10 ? 10 : i57);
            int i58 = ((b15 & 255) * 10) / 90;
            u0.d.Q2(i58 > 10 ? 10 : i58);
            int i59 = ((b16 & 255) * 10) / 90;
            u0.d.P2(i59 > 10 ? 10 : i59);
            int i60 = ((b17 & 255) * 10) / 90;
            u0.d.N2(i60 > 10 ? 10 : i60);
            return;
        }
        if (b3 == 101) {
            byte b18 = bArr[i2 + 2];
            byte b19 = bArr[i2 + 3];
            byte b20 = bArr[i2 + 4];
            byte b21 = bArr[i2 + 5];
            qt.y0(184, b18);
            qt.y0(185, b19);
            qt.y0(186, b20);
            qt.y0(187, b21);
            return;
        }
        if (b3 == 102) {
            byte b22 = bArr[i2 + 2];
            byte b23 = bArr[i2 + 3];
            byte b24 = bArr[i2 + 4];
            byte b25 = bArr[i2 + 5];
            byte b26 = bArr[i2 + 6];
            byte b27 = bArr[i2 + 7];
            qt.y0(251, b22);
            qt.y0(184, b23);
            qt.y0(185, b24);
            qt.y0(186, b25);
            qt.y0(187, b26);
            int i61 = b27 & 3;
            qt.y0(252, i61);
            Intent intent = new Intent();
            intent.putExtra("driving_tirepressure_fl", (int) b23);
            intent.putExtra("driving_tirepressure_fr", (int) b24);
            intent.putExtra("driving_tirepressure_rl", (int) b25);
            intent.putExtra("driving_tirepressure_rr", (int) b26);
            intent.putExtra("driving_tirepressure_unit", i61);
            intent.setAction("syu.intent.action.oulande");
            App.c().sendBroadcast(intent);
            if (i61 == 0) {
                o1.x[] xVarArr2 = nt.f8643f;
                o1.x.C(xVarArr2, 1049, new int[]{8, b23 | 256}, null, null);
                o1.x.C(xVarArr2, 1049, new int[]{8, b24 | 512}, null, null);
                o1.x.C(xVarArr2, 1049, new int[]{8, b25 | 768}, null, null);
                o1.x.C(xVarArr2, 1049, new int[]{8, b26 | 1024}, null, null);
                return;
            }
            if (i61 == 1) {
                o1.x[] xVarArr3 = nt.f8643f;
                o1.x.C(xVarArr3, 1049, new int[]{8, ((b23 * 5) / 10) | 4352}, null, null);
                o1.x.C(xVarArr3, 1049, new int[]{8, ((b24 * 5) / 10) | GLES10.GL_AMBIENT}, null, null);
                o1.x.C(xVarArr3, 1049, new int[]{8, ((b25 * 5) / 10) | 4864}, null, null);
                o1.x.C(xVarArr3, 1049, new int[]{8, ((b26 * 5) / 10) | 5120}, null, null);
                return;
            }
            if (i61 != 2) {
                return;
            }
            o1.x[] xVarArr4 = nt.f8643f;
            o1.x.C(xVarArr4, 1049, new int[]{8, (b23 * 4) | GLES10.GL_MODULATE}, null, null);
            o1.x.C(xVarArr4, 1049, new int[]{8, (b24 * 4) | GLES10.GL_TEXTURE_ENV_MODE}, null, null);
            o1.x.C(xVarArr4, 1049, new int[]{8, (b25 * 4) | GLES10.GL_TEXTURE_ENV}, null, null);
            o1.x.C(xVarArr4, 1049, new int[]{8, (b26 * 4) | 9216}, null, null);
            return;
        }
        if (b3 == 104) {
            qt.y0(378, bArr[i2 + 2] & 255);
            qt.y0(379, bArr[i2 + 3] & 255);
            return;
        }
        if (b3 == 105) {
            int i62 = i2 + 2;
            int i63 = bArr[i62] & 255;
            int i64 = this.A;
            if (i64 != i63) {
                if (i63 == 1) {
                    if (y0.f.f18055i != 1) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                } else if (i64 == 1 && i63 == 0 && y0.f.f18055i == 1) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                }
                qt.y0(460, bArr[i62] & 255);
                this.A = i63;
                return;
            }
            return;
        }
        switch (b3) {
            case 32:
                if (nt.a()) {
                    byte b28 = bArr[i2 + 2];
                    byte b29 = bArr[i2 + 3];
                    this.f11605j = b28 & 255;
                    int i65 = 0;
                    while (true) {
                        iArr2 = this.f11607k;
                        if (i65 < iArr2.length) {
                            int i66 = this.f11605j;
                            if (i66 != iArr2[i65][0]) {
                                i65++;
                            } else if (i66 != 0) {
                                this.f11603i = i65;
                            }
                        }
                    }
                    if (this.f11605j == 5) {
                        if ((b29 & 255) == 1) {
                            int i67 = h0.c.E;
                            if (i67 != 3) {
                                if (i67 == 4) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                } else if (i67 != 5) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                }
                            }
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        }
                        break;
                    } else {
                        int i68 = b29 & 255;
                        if (i68 != 1) {
                            if (i68 == 0) {
                                int i69 = this.f11603i;
                                if (i69 < iArr2.length && i69 != 255) {
                                    l0.b0.l0(iArr2[i69][1], 1);
                                    l0.b0.o0(this.J);
                                    this.I = (byte) 0;
                                }
                                this.f11603i = 255;
                            }
                            break;
                        } else if (i65 < iArr2.length && (b2 = this.I) == 0) {
                            this.I = (byte) (b2 + 1);
                            l0.b0.l0(iArr2[i65][1], 0);
                            l0.b0.a(this.J);
                            break;
                        }
                    }
                }
                break;
            case 33:
                int i70 = nt.f8633a;
                if (i70 == 458912 || i70 == 524448) {
                    int i71 = bArr[i2 + 2] & 255;
                    int i72 = (i71 >> 5) & 7;
                    if (i72 != 1) {
                        if (i72 == 2) {
                            i4 = 0;
                            i6 = 1;
                        } else if (i72 == 3) {
                            i4 = 0;
                            i6 = 0;
                            i5 = 1;
                        } else if (i72 == 4) {
                            i6 = 0;
                            i4 = 1;
                            i5 = 1;
                        } else if (i72 != 5) {
                            i4 = 0;
                            i6 = 0;
                        } else {
                            i6 = 0;
                            i5 = 0;
                            i4 = 1;
                        }
                        i5 = i6;
                    } else {
                        i4 = 0;
                        i5 = 0;
                        i6 = 1;
                    }
                    qt.y0(18, i4);
                    qt.y0(19, i6);
                    qt.y0(20, i5);
                    qt.y0(77, i72);
                    qt.y0(13, (i71 >> 4) & 1);
                    if (((i71 >> 3) & 1) == 1) {
                        qt.y0(12, 0);
                    } else if (((i71 >> 2) & 1) == 1) {
                        qt.y0(12, 1);
                    }
                    qt.y0(11, (i71 >> 1) & 1);
                    if (((i71 >> 0) & 1) == 1) {
                        qt.y0(10, 0);
                    } else {
                        qt.y0(10, 1);
                    }
                    int i73 = bArr[i2 + 3] & 255;
                    qt.y0(21, (i73 >> 4) & 15);
                    qt.y0(53, (i73 >> 3) & 1);
                    qt.y0(65, (i73 >> 2) & 1);
                    qt.y0(38, (i73 >> 1) & 1);
                    qt.y0(14, (i73 >> 0) & 1);
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        qt.y0(27, (bArr[i2 + 5] >> 2) & 63);
                        qt.y0(28, (bArr[i2 + 4] >> 2) & 63);
                    } else {
                        qt.y0(27, (bArr[i2 + 4] >> 2) & 63);
                        qt.y0(28, (bArr[i2 + 5] >> 2) & 63);
                    }
                    qt.y0(29, (bArr[i2 + 4] >> 0) & 3);
                    qt.y0(30, (bArr[i2 + 5] >> 0) & 3);
                } else {
                    byte b30 = bArr[i2 + 2];
                    byte b31 = bArr[i2 + 3];
                    byte b32 = bArr[i2 + 6];
                    byte b33 = bArr[i2 + 7];
                    int i74 = i2 + 8;
                    byte b34 = bArr[i74];
                    byte b35 = bArr[i2 + 9];
                    qt.y0(10, b30 & 128);
                    qt.y0(11, b30 & 64);
                    qt.y0(12, b30 & 32);
                    qt.y0(13, b30 & 8);
                    qt.y0(14, b30 & 4);
                    qt.y0(15, b30 & 2);
                    qt.y0(67, b30 & 1);
                    qt.y0(18, b31 & 128);
                    qt.y0(19, b31 & 64);
                    qt.y0(20, b31 & 32);
                    qt.y0(21, b31 & DhcpPacket.DHCP_DOMAIN_NAME);
                    int i75 = i2 + 4;
                    int i76 = bArr[i75] & 255;
                    int i77 = i2 + 5;
                    int i78 = bArr[i77] & 255;
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        i76 = bArr[i77] & 255;
                        i78 = bArr[i75] & 255;
                    }
                    int i79 = b32 & 1;
                    qt.y0(37, i79);
                    if (i76 == 0) {
                        qt.y0(27, -2);
                    } else if (i76 != 31) {
                        int i80 = (i76 * 5) + 155;
                        if (i79 == 1) {
                            i80 = (i76 * 10) + 590;
                        } else if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                            i80 = (i76 * 9) + 579;
                        }
                        qt.y0(27, i80);
                    } else {
                        qt.y0(27, -3);
                    }
                    if (i78 == 0) {
                        qt.y0(28, -2);
                    } else if (i78 != 31) {
                        int i81 = (i78 * 5) + 155;
                        if (i79 == 1) {
                            i81 = (i78 * 10) + 590;
                        } else if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                            i81 = (i78 * 9) + 579;
                        }
                        qt.y0(28, i81);
                    } else {
                        qt.y0(28, -3);
                    }
                    qt.y0(65, (b32 >> 7) & 1);
                    qt.y0(54, b32 & 32);
                    qt.y0(53, b32 & 8);
                    qt.y0(76, 4 & b32);
                    qt.y0(66, b33 & 128);
                    qt.y0(29, (b33 >> 4) & 3);
                    qt.y0(72, (b33 >> 3) & 1);
                    qt.y0(30, b33 & 3);
                    qt.y0(31, (b34 >> 6) & 3);
                    qt.y0(32, (b34 >> 4) & 3);
                    int i82 = (bArr[i74] >> 2) & 1;
                    if (this.f11612o != i82) {
                        this.f11612o = i82;
                        if (!SystemProperties.getBoolean("persist.fyt.showduduair", false) && nt.U == 1) {
                            int i83 = this.f11612o;
                            if (i83 == 1) {
                                if (!qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_NewAdd_HP")) {
                                    l0.b0.l0(62, 0);
                                    l0.b0.l0(62, 1);
                                }
                            } else if (i83 == 0 && qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_NewAdd_HP")) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                            }
                        }
                    }
                    qt.y0(69, b34 & 3);
                    int i84 = i2 + 10;
                    qt.y0(358, (bArr[i84] >> 7) & 1);
                    qt.y0(359, (bArr[i84] >> 5) & 3);
                }
                break;
            case 34:
                if (nt.a()) {
                    byte b36 = bArr[i2 + 2];
                    byte b37 = bArr[i2 + 3];
                    byte b38 = bArr[i2 + 4];
                    byte b39 = bArr[i2 + 5];
                    int i85 = ((b36 & 255) * 10) / 60;
                    u0.d.R2(i85 > 10 ? 10 : i85);
                    int i86 = ((b37 & 255) * 10) / 165;
                    u0.d.S2(i86 > 10 ? 10 : i86);
                    int i87 = ((b38 & 255) * 10) / 165;
                    u0.d.T2(i87 > 10 ? 10 : i87);
                    int i88 = ((b39 & 255) * 10) / 60;
                    u0.d.U2(i88 > 10 ? 10 : i88);
                    if (this.f11623z > 0) {
                        this.f11623z = -1;
                    }
                }
                break;
            case 35:
                if (nt.a()) {
                    int i89 = bArr[i2 + 2] & 255;
                    int i90 = bArr[i2 + 3] & 255;
                    int i91 = bArr[i2 + 4] & 255;
                    int i92 = bArr[i2 + 5] & 255;
                    if (u0.b.f17347o == 0 && (l0.c0.f13013g != i89 || l0.c0.f13014h != i90 || l0.c0.f13015i != i91 || l0.c0.f13016j != i92)) {
                        if (i89 <= 60 || i90 <= 120 || i91 <= 120 || i92 <= 60) {
                            u0.d.C2(1);
                        } else if (u0.b.f17350p == 1) {
                            l0.c0.f13017k = 2;
                            l0.b0.b(l0.c0.f13018l);
                        }
                    }
                    l0.c0.f13013g = i89;
                    l0.c0.f13014h = i90;
                    l0.c0.f13015i = i91;
                    l0.c0.f13016j = i92;
                    int i93 = ((i89 & 255) * 10) / 60;
                    u0.d.D2(i93 > 10 ? 10 : i93);
                    int i94 = ((i90 & 255) * 10) / 120;
                    u0.d.E2(i94 > 10 ? 10 : i94);
                    int i95 = ((i91 & 255) * 10) / 120;
                    u0.d.F2(i95 > 10 ? 10 : i95);
                    int i96 = ((i92 & 255) * 10) / 60;
                    u0.d.G2(i96 > 10 ? 10 : i96);
                }
                break;
            case 36:
                byte b40 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b40 >> 7) & 1);
                    qt.y0(2, (b40 >> 6) & 1);
                } else {
                    qt.y0(1, (b40 >> 6) & 1);
                    qt.y0(2, (b40 >> 7) & 1);
                }
                qt.y0(3, (b40 >> 4) & 1);
                qt.y0(4, (b40 >> 5) & 1);
                qt.y0(5, (b40 >> 3) & 1);
                qt.y0(0, (b40 >> 2) & 1);
                break;
            case 37:
                int i97 = i2 + 2;
                qt.y0(121, 2 & bArr[i97]);
                qt.y0(122, bArr[i97] & 1);
                if (nt.a() && this.f11622y != (i7 = (bArr[i97] >> 1) & 1)) {
                    this.f11622y = i7;
                    if (i7 == 1) {
                        this.f11623z = 6;
                    } else {
                        this.f11623z = -1;
                    }
                }
                int i98 = nt.f8637c;
                if (i98 != 16) {
                    if (i98 == 53 || i98 == 58) {
                        if (((bArr[i97] >> 1) & 1) == 1) {
                            u0.d.C2(1);
                        } else {
                            u0.d.C2(0);
                        }
                    }
                } else if (((bArr[i97] >> 1) & 1) == 1) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
                break;
            default:
                switch (b3) {
                    case 39:
                        int[] iArr4 = new int[1];
                        int i99 = i2 + 2;
                        iArr4[0] = (bArr[i99] & 255) == 0 ? 1 : 0;
                        qt.y0(174, iArr4);
                        if (nt.a()) {
                            byte b41 = bArr[i99];
                            int i100 = ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255);
                            if ((32768 & i100) != 0) {
                                if ((b41 & 1) == 1) {
                                    i9 = 1000 - (65536 - i100);
                                    i8 = (i9 | 268435456) & (-1);
                                } else {
                                    int i101 = 65536 - i100;
                                    i8 = (1000 - ((i101 / 10) * 10)) - (i101 % 10);
                                }
                            } else if ((b41 & 1) == 1) {
                                i9 = i100 + 1000;
                                i8 = (i9 | 268435456) & (-1);
                            } else {
                                i8 = ((i100 / 10) * 10) + 1000 + (i100 % 10);
                            }
                            u0.d.B3(i8);
                        }
                        break;
                    case 40:
                        byte b42 = bArr[i2 + 2];
                        byte b43 = bArr[i2 + 3];
                        byte b44 = bArr[i2 + 4];
                        byte b45 = bArr[i2 + 5];
                        qt.y0(38, (b42 >> 7) & 1);
                        qt.y0(43, (b42 >> 3) & 1);
                        qt.y0(46, (b43 >> 6) & 1);
                        qt.y0(47, (b43 >> 5) & 1);
                        qt.y0(44, b43 & DhcpPacket.DHCP_DOMAIN_NAME);
                        qt.y0(88, (b44 >> 4) & 3);
                        qt.y0(89, b44 & 3);
                        if (b45 == 0) {
                            qt.y0(40, -2);
                        } else if (b45 != 31) {
                            int i102 = (b45 * 5) + 155;
                            if (nt.f8645g[37] == 1) {
                                i102 = (b45 * 10) + 590;
                            } else if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                                i102 = (b45 * 9) + 579;
                            }
                            qt.y0(40, i102);
                        } else {
                            qt.y0(40, -3);
                        }
                        break;
                    case 41:
                        if (!this.H) {
                            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 19918);
                        }
                        break;
                    default:
                        switch (b3) {
                            case 80:
                                switch (bArr[i2 + 2]) {
                                    case -128:
                                        qt.y0(380, bArr[i2 + 3] & 255);
                                        break;
                                    case 16:
                                        int i103 = ((bArr[i2 + 3] << 29) & 536870912) | (((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) & 65535);
                                        qt.y0(98, i103);
                                        qt.y0(103, i103);
                                        qt.y0(108, i103);
                                        Intent intent2 = new Intent();
                                        intent2.putExtra("driving_mile", i103);
                                        intent2.setAction("syu.intent.action.oulande");
                                        App.c().sendBroadcast(intent2);
                                        break;
                                    case 32:
                                        qt.y0(99, ((bArr[i2 + 3] << 29) & 536870912) | ((((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) | 0) | 0) / 10) & MediaMetadataEditor.KEY_EDITABLE_MASK));
                                        break;
                                    case 33:
                                        qt.y0(109, ((bArr[i2 + 3] << 29) & 536870912) | ((((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) | 0) | 0) / 10) & MediaMetadataEditor.KEY_EDITABLE_MASK));
                                        break;
                                    case 34:
                                        qt.y0(104, ((bArr[i2 + 3] << 29) & 536870912) | ((((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) | 0) | 0) / 10) & MediaMetadataEditor.KEY_EDITABLE_MASK));
                                        break;
                                    case 48:
                                        qt.y0(97, ((bArr[i2 + 3] << 29) & (-536870912)) | (((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) & 65535));
                                        break;
                                    case 49:
                                        qt.y0(107, ((bArr[i2 + 3] << 29) & (-536870912)) | (((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) & 65535));
                                        break;
                                    case 50:
                                        int i104 = ((bArr[i2 + 3] << 29) & (-536870912)) | (((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) & 65535);
                                        qt.y0(102, i104);
                                        Intent intent3 = new Intent();
                                        intent3.putExtra("driving_averagefuel", i104);
                                        intent3.setAction("syu.intent.action.oulande");
                                        App.c().sendBroadcast(intent3);
                                        break;
                                    case 64:
                                        qt.y0(101, ((bArr[i2 + 3] << 29) & 536870912) | ((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) / 10) & 65535));
                                        break;
                                    case 65:
                                        qt.y0(111, ((bArr[i2 + 3] << 29) & 536870912) | ((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) / 10) & 65535));
                                        break;
                                    case 66:
                                        qt.y0(106, ((bArr[i2 + 3] << 29) & 536870912) | ((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) / 10) & 65535));
                                        break;
                                    case 80:
                                        qt.y0(100, (((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) & 16777215);
                                        break;
                                    case 81:
                                        qt.y0(110, (((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) & 16777215);
                                        break;
                                    case 82:
                                        qt.y0(105, (((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) & 16777215);
                                        break;
                                    case 96:
                                        int i105 = i2 + 3;
                                        boolean z2 = (bArr[i105] & 1) != 0;
                                        qt.y0(115, bArr[i105] & 1);
                                        int i106 = (((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255)) & 65535;
                                        if (z2) {
                                            if (i106 > -1 && i106 < 166) {
                                                f11580l0 = 0;
                                            } else if (i106 >= 166 && i106 < 332) {
                                                f11580l0 = 1;
                                            } else if (i106 >= 332 && i106 < 498) {
                                                f11580l0 = 2;
                                            } else if (i106 >= 498 && i106 < 664) {
                                                f11580l0 = 3;
                                            } else if (i106 >= 664 && i106 < 830) {
                                                f11580l0 = 4;
                                            } else if (i106 >= 830) {
                                                f11580l0 = 5;
                                            }
                                            qt.y0(113, f11580l0);
                                            if (i106 > 1000) {
                                                i106 = 1000;
                                            }
                                            int i107 = (i106 * 100) / 1000;
                                            f11581m0 = i107;
                                            qt.y0(114, i107);
                                        } else {
                                            if (i106 > -1 && i106 < 41) {
                                                f11580l0 = 0;
                                            } else if (i106 >= 41 && i106 < 82) {
                                                f11580l0 = 1;
                                            } else if (i106 >= 82 && i106 < 123) {
                                                f11580l0 = 2;
                                            } else if (i106 >= 123 && i106 < 164) {
                                                f11580l0 = 3;
                                            } else if (i106 >= 164 && i106 < 205) {
                                                f11580l0 = 4;
                                            } else if (i106 >= 205) {
                                                f11580l0 = 5;
                                            }
                                            qt.y0(113, f11580l0);
                                            if (i106 > 250) {
                                                i106 = 250;
                                            }
                                            int i108 = (i106 * 100) / 250;
                                            f11581m0 = i108;
                                            qt.y0(114, i108);
                                        }
                                        break;
                                    case 112:
                                        qt.y0(381, bArr[i2 + 3] & 255);
                                        qt.y0(382, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                        break;
                                    case 113:
                                        qt.y0(383, bArr[i2 + 3] & 255);
                                        qt.y0(384, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                        break;
                                    case 114:
                                        qt.y0(385, bArr[i2 + 3] & 255);
                                        qt.y0(386, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                        break;
                                }
                                break;
                            case 81:
                                qt.y0(462, bArr[i2 + 3] & 255);
                                qt.y0(463, bArr[i2 + 4] & 255);
                                qt.y0(464, bArr[i2 + 5] & 255);
                                qt.y0(465, bArr[i2 + 6] & 255);
                                qt.y0(466, bArr[i2 + 7] & 255);
                                qt.y0(467, bArr[i2 + 8] & 255);
                                break;
                            case 82:
                                qt.y0(365, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                                qt.y0(366, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                                int i109 = i2 + 6;
                                qt.y0(367, 3 & (bArr[i109] >> 6));
                                qt.y0(368, (bArr[i109] >> 5) & 1);
                                qt.y0(369, (bArr[i109] >> 2) & 7);
                                qt.y0(370, bArr[i2 + 7] & 255);
                                qt.y0(371, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                                qt.y0(372, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                                qt.y0(373, bArr[i2 + 12] & 255);
                                break;
                            case 83:
                                int i110 = bArr[i2 + 2] & 255;
                                if (i110 == 0) {
                                    qt.y0(374, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                                    break;
                                } else if (i110 == 16) {
                                    for (int i111 = 0; i111 < 15; i111++) {
                                        int i112 = i2 + (i111 * 2);
                                        o1.x.C(nt.f8643f, 375, new int[]{i111, (bArr[i112 + 3] & 255) | ((bArr[i112 + 4] << 8) & 65280)}, null, null);
                                    }
                                    break;
                                } else if (i110 == 17) {
                                    for (int i113 = 0; i113 < 15; i113++) {
                                        int i114 = i2 + (i113 * 2);
                                        o1.x.C(nt.f8643f, 376, new int[]{i113, (bArr[i114 + 3] & 255) | ((bArr[i114 + 4] << 8) & 65280)}, null, null);
                                    }
                                    break;
                                }
                                break;
                            case 84:
                                int i115 = i2 + 2;
                                qt.y0(395, bArr[i115] & 255);
                                byte b46 = bArr[i115];
                                if (b46 == 0) {
                                    int i116 = i2 + 3;
                                    qt.y0(396, (bArr[i116] >> 2) & 1);
                                    qt.y0(397, (bArr[i116] >> 1) & 1);
                                    qt.y0(398, (bArr[i116] >> 0) & 1);
                                    break;
                                } else if (b46 == 1) {
                                    qt.y0(399, bArr[i2 + 3] & 255);
                                    qt.y0(400, bArr[i2 + 4] & 255);
                                    int i117 = i2 + 5;
                                    qt.y0(401, (bArr[i117] >> 7) & 1);
                                    qt.y0(402, (bArr[i117] >> 6) & 1);
                                    qt.y0(403, (bArr[i117] >> 5) & 1);
                                    qt.y0(UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL, (bArr[i117] >> 4) & 1);
                                    qt.y0(UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL, (bArr[i117] >> 0) & 3);
                                    int i118 = i2 + 6;
                                    qt.y0(Downloads.Impl.STATUS_NOT_ACCEPTABLE, (bArr[i118] >> 7) & 1);
                                    qt.y0(407, (bArr[i118] >> 6) & 1);
                                    qt.y0(408, (bArr[i118] >> 5) & 1);
                                    qt.y0(409, (bArr[i118] >> 4) & 1);
                                    qt.y0(410, (bArr[i118] >> 3) & 1);
                                    qt.y0(Downloads.Impl.STATUS_LENGTH_REQUIRED, (bArr[i118] >> 2) & 1);
                                    qt.y0(Downloads.Impl.STATUS_PRECONDITION_FAILED, (bArr[i118] >> 1) & 1);
                                    qt.y0(413, bArr[i2 + 7] & 255);
                                    qt.y0(414, bArr[i2 + 8] & 255);
                                    qt.y0(415, bArr[i2 + 9] & 255);
                                    qt.y0(416, bArr[i2 + 10] & 255);
                                    qt.y0(417, bArr[i2 + 11] & 255);
                                    break;
                                } else if (b46 == 2) {
                                    qt.y0(418, bArr[i2 + 3] & 255);
                                    qt.y0(419, bArr[i2 + 4] & 255);
                                    int i119 = i2 + 5;
                                    qt.y0(420, (bArr[i119] >> 7) & 1);
                                    qt.y0(421, (bArr[i119] >> 6) & 1);
                                    qt.y0(422, (bArr[i119] >> 5) & 1);
                                    qt.y0(423, (bArr[i119] >> 4) & 1);
                                    qt.y0(424, (bArr[i119] >> 0) & 3);
                                    int i120 = i2 + 6;
                                    qt.y0(425, (bArr[i120] >> 7) & 1);
                                    qt.y0(426, (bArr[i120] >> 6) & 1);
                                    qt.y0(427, (bArr[i120] >> 5) & 1);
                                    qt.y0(428, (bArr[i120] >> 4) & 1);
                                    qt.y0(429, (bArr[i120] >> 3) & 1);
                                    qt.y0(430, (bArr[i120] >> 2) & 1);
                                    qt.y0(431, (bArr[i120] >> 1) & 1);
                                    qt.y0(432, bArr[i2 + 7] & 255);
                                    qt.y0(433, bArr[i2 + 8] & 255);
                                    qt.y0(434, bArr[i2 + 9] & 255);
                                    qt.y0(435, bArr[i2 + 10] & 255);
                                    qt.y0(436, bArr[i2 + 11] & 255);
                                    break;
                                } else if (b46 == 3) {
                                    qt.y0(437, bArr[i2 + 3] & 255);
                                    qt.y0(438, bArr[i2 + 4] & 255);
                                    int i121 = i2 + 5;
                                    qt.y0(439, (bArr[i121] >> 7) & 1);
                                    qt.y0(440, (bArr[i121] >> 6) & 1);
                                    qt.y0(441, (bArr[i121] >> 5) & 1);
                                    qt.y0(442, (bArr[i121] >> 4) & 1);
                                    qt.y0(443, (bArr[i121] >> 0) & 3);
                                    int i122 = i2 + 6;
                                    qt.y0(444, (bArr[i122] >> 7) & 1);
                                    qt.y0(445, (bArr[i122] >> 6) & 1);
                                    qt.y0(446, (bArr[i122] >> 5) & 1);
                                    qt.y0(447, (bArr[i122] >> 4) & 1);
                                    qt.y0(448, (bArr[i122] >> 3) & 1);
                                    qt.y0(449, (bArr[i122] >> 2) & 1);
                                    qt.y0(450, (bArr[i122] >> 1) & 1);
                                    qt.y0(451, bArr[i2 + 7] & 255);
                                    qt.y0(452, bArr[i2 + 8] & 255);
                                    qt.y0(453, bArr[i2 + 9] & 255);
                                    qt.y0(454, bArr[i2 + 10] & 255);
                                    qt.y0(455, bArr[i2 + 11] & 255);
                                    break;
                                }
                                break;
                            default:
                                switch (b3) {
                                    case 96:
                                        int i123 = i2 + 2;
                                        int i124 = bArr[i123] & 255;
                                        int i125 = i124 > 6 ? 6 : i124;
                                        int[] iArr5 = new int[2];
                                        iArr5[0] = 0;
                                        iArr5[1] = (bArr[i2 + 9] & 255) == 0 ? 50 : 49;
                                        if (qt.C0(172, iArr5, this.f11591c[0])) {
                                            this.f11591c[0] = iArr5;
                                        }
                                        for (int i126 = 1; i126 < i125; i126++) {
                                            int[] iArr6 = {i126, (bArr[i123 + i126] + 1) & 255};
                                            if (qt.C0(172, iArr6, this.f11591c[i126])) {
                                                this.f11591c[i126] = iArr6;
                                            }
                                        }
                                        break;
                                    case 97:
                                        int i127 = i2 + 2;
                                        int i128 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i127] & 255);
                                        if (i128 > 7) {
                                            i128 = 7;
                                        }
                                        if (i128 > 0) {
                                            int i129 = 0;
                                            while (i129 < i128) {
                                                int i130 = i129 + 1;
                                                int[] iArr7 = {i129, (bArr[(i130 * 2) + i127] & 255) + 1};
                                                if (qt.C0(171, iArr7, this.f11593d[i129])) {
                                                    this.f11593d[i129] = iArr7;
                                                }
                                                i129 = i130;
                                            }
                                            while (i128 < 7) {
                                                int[] iArr8 = {i128, 0};
                                                if (qt.C0(171, iArr8, this.f11593d[i128])) {
                                                    this.f11593d[i128] = iArr8;
                                                }
                                                i128++;
                                            }
                                        } else {
                                            for (int i131 = 0; i131 < 7; i131++) {
                                                int[] iArr9 = {i131, 0};
                                                if (qt.C0(171, iArr9, this.f11593d[i131])) {
                                                    this.f11593d[i131] = iArr9;
                                                }
                                            }
                                        }
                                        break;
                                    case 98:
                                        int i132 = bArr[i2 + 2] & 255;
                                        if (i132 > 0) {
                                            if (i132 > 3) {
                                                i132 = 3;
                                            }
                                            if (i132 == 1) {
                                                int i133 = i2 + 3;
                                                if (qt.C0(173, new int[]{0, bArr[i133] & 255}, this.f11589b[0])) {
                                                    this.f11589b[0] = new int[]{0, bArr[i133] & 255};
                                                }
                                                for (int i134 = 1; i134 < 3; i134++) {
                                                    int[] iArr10 = {i134, 0};
                                                    if (qt.C0(173, iArr10, this.f11589b[i134])) {
                                                        this.f11589b[i134] = iArr10;
                                                    }
                                                }
                                            } else if (i132 == 2) {
                                                for (int i135 = 0; i135 < 2; i135++) {
                                                    int[] iArr11 = {i135, bArr[i2 + 3 + i135] & 255};
                                                    if (qt.C0(173, iArr11, this.f11589b[i135])) {
                                                        this.f11589b[i135] = iArr11;
                                                    }
                                                    if (qt.C0(173, new int[]{2, 0}, this.f11589b[2])) {
                                                        this.f11589b[0] = new int[]{2, 0};
                                                    }
                                                }
                                            } else if (i132 == 3) {
                                                for (int i136 = 0; i136 < 3; i136++) {
                                                    int[] iArr12 = {i136, bArr[i2 + 3 + i136] & 255};
                                                    if (qt.C0(173, iArr12, this.f11589b[i136])) {
                                                        this.f11589b[i136] = iArr12;
                                                    }
                                                }
                                            } else {
                                                for (int i137 = 0; i137 < 3; i137++) {
                                                    int[] iArr13 = {i137, 0};
                                                    if (qt.C0(173, iArr13, this.f11589b[i137])) {
                                                        this.f11589b[i137] = iArr13;
                                                    }
                                                }
                                            }
                                        }
                                        break;
                                    case 99:
                                        byte b47 = bArr[i2 + 2];
                                        if (b47 == 0) {
                                            StringBuilder sb = new StringBuilder();
                                            for (int i138 = 0; i138 < i3 - 3; i138++) {
                                                sb.append((char) bArr[i2 + 3 + i138]);
                                            }
                                            this.f11590b0 = this.f11588a0;
                                            A3(sb.toString());
                                            qt.B0(179, this.f11588a0, this.f11590b0);
                                            break;
                                        } else if (b47 == 16) {
                                            qt.y0(167, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME) << 24));
                                            break;
                                        } else if (b47 == 17) {
                                            int i139 = i2 + 3;
                                            qt.y0(168, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 4] & 255) | ((bArr[i139] & 240) << 12) | ((bArr[i139] & DhcpPacket.DHCP_DOMAIN_NAME) << 24));
                                            break;
                                        } else if (b47 == 32) {
                                            qt.y0(169, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME) << 24));
                                            break;
                                        } else if (b47 == 33) {
                                            int i140 = i2 + 3;
                                            qt.y0(170, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 4] & 255) | ((bArr[i140] & 240) << 12) | (bArr[i140] << 24));
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
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.B);
        y0.g.f18094d.d(this.C);
        y0.g.f18095e.d(this.C);
        w0.e.f17815a.d(this.B);
        u0.c.f17374a.d(this.B);
        qt.p0(this.D);
        this.f11595e.j();
        qt.q0(this.Z);
        h0.d.f2464c.d(this.T);
        h0.d.f2473l.d(this.T);
        h0.d.f2462a.d(this.T);
        u0.c.f17388o.d(this.R);
        u0.c.f17389p.d(this.R);
        u0.c.f17393t.d(this.S);
        o1.h.f16865a.d(this.Q);
        o1.y yVar = u0.c.f17386m;
        yVar.d(this.f11600g0);
        yVar.d(this.f11604i0);
        l0.b0.p0(this.f11606j0);
        u0.c.f17379f.d(this.E);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 500) {
            return;
        }
        if (i2 == 179) {
            o1.x.u(bVar, i2, this.f11588a0);
        }
        int i4 = 0;
        switch (i2) {
            case 171:
                while (i4 < 7) {
                    o1.x.v(bVar, i2, this.f11593d[i4]);
                    i4++;
                }
                break;
            case 172:
                while (i4 < 6) {
                    o1.x.v(bVar, i2, this.f11591c[i4]);
                    i4++;
                }
                break;
            case 173:
                while (i4 < 3) {
                    o1.x.v(bVar, i2, this.f11589b[i4]);
                    i4++;
                }
                break;
            default:
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                break;
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            a3(137, iArr[0]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            a3(144, iArr[0]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            a3(145, iArr[0]);
            return;
        }
        if (i2 == 8) {
            z.k.s(227, 239, 11, 125, i.a.Theme_actionModeFindDrawable, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], 0, 0, 0, 0);
            return;
        }
        if (i2 == 13) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            a3(200, iArr[0]);
            return;
        }
        if (i2 == 53) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            a3(49, iArr[0]);
            return;
        }
        if (i2 == 96) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            a3(0, iArr[0]);
            return;
        }
        if (i2 == 98) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 0) {
                z.k.s(227, -112, 2, 64, 0);
                z.k.s(227, -112, 2, 64, 16);
                z.k.s(227, -112, 2, 64, 32);
                z.k.s(227, -112, 2, 64, 48);
                z.k.s(227, -112, 2, 64, 49);
                z.k.s(227, -112, 2, 64, 64);
                z.k.s(227, -112, 2, 64, 80);
                z.k.s(227, -112, 2, 64, 81);
                z.k.s(227, -112, 2, 64, 96);
                z.k.s(227, -112, 2, 64, 112);
                z.k.s(227, -112, 2, 64, -128);
                z.k.s(227, -112, 2, 64, -112);
                z.k.s(227, -112, 2, 64, -96);
                z.k.s(227, -112, 2, 64, -80);
                return;
            }
            if (iArr[0] == 1) {
                z.k.s(227, -112, 2, 65, 0);
                z.k.s(227, -112, 2, 65, 16);
                z.k.s(227, -112, 2, 65, 32);
                z.k.s(227, -112, 2, 65, 48);
                z.k.s(227, -112, 2, 65, 49);
                z.k.s(227, -112, 2, 65, 64);
                z.k.s(227, -112, 2, 65, 80);
                z.k.s(227, -112, 2, 65, 81);
                z.k.s(227, -112, 2, 65, 96);
                z.k.s(227, -112, 2, 65, 112);
                z.k.s(227, -112, 2, 65, -128);
                z.k.s(227, -112, 2, 65, -112);
                z.k.s(227, -112, 2, 65, -80);
                return;
            }
            if (iArr[0] == 2) {
                z.k.s(227, -112, 2, 80, -1);
                return;
            }
            if (iArr[0] == 3) {
                z.k.s(227, -112, 2, 99, 0);
                z.k.s(227, -112, 2, 99, 16);
                z.k.s(227, -112, 2, 99, 17);
                z.k.s(227, -112, 2, 99, 32);
                z.k.s(227, -112, 2, 99, 33);
                z.k.s(227, -112, 2, 80, -128);
                return;
            }
            if (iArr[0] == 4) {
                z.k.s(227, -112, 2, 102, 0);
                return;
            }
            if (iArr[0] == 5) {
                z.k.s(227, -112, 2, 64, -64);
                return;
            } else if (iArr[0] == 6) {
                z.k.s(227, -112, 2, 64, -96);
                return;
            } else {
                if (iArr[0] == 255) {
                    z.k.s(227, -112, 2, -1, 0);
                    return;
                }
                return;
            }
        }
        if (i2 == 103) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            a3(iArr[0], iArr[1]);
            return;
        }
        if (i2 == 133) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            a3(95, iArr[0]);
            return;
        }
        if (i2 == 140) {
            L3(new byte[]{46, -57, 6, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2], (byte) iArr[3], (byte) iArr[4], (byte) iArr[5], 0});
            if (iArr[0] == 0 && iArr[1] == 0 && iArr[2] == 0 && iArr[3] == 0 && iArr[4] == 0 && iArr[5] == 0) {
                a.i.a0(100L);
                L3(new byte[]{46, -112, 1, 33, 0});
            }
            this.f11598f0 = 1;
            return;
        }
        if (i2 == 160) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 75) {
                G3(iArr[1]);
                return;
            } else {
                z.k.s(227, 198, 2, (byte) iArr[0], (byte) iArr[1]);
                return;
            }
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            int i3 = nt.f8637c;
            if (i3 != 53 && i3 != 58) {
                if (iArr[0] < 0) {
                    iArr[0] = 0;
                } else if (iArr[0] > 3) {
                    iArr[0] = 3;
                }
                F3(iArr[0]);
                return;
            }
            if (iArr[0] <= 6) {
                z.k.s(227, 198, 2, 70, (byte) iArr[0]);
                return;
            }
            if (iArr[0] != 7) {
                if (iArr[0] <= 11) {
                    z.k.s(227, 198, 2, 69, ((byte) iArr[0]) - 8);
                    return;
                } else {
                    if (iArr[0] == 12) {
                        z.k.s(227, 198, 2, 69, 6);
                        return;
                    }
                    return;
                }
            }
            int i4 = u0.b.G;
            if (i4 == 1) {
                z.k.s(227, 198, 2, 69, 5);
                return;
            } else {
                if (i4 == 0) {
                    z.k.s(227, 198, 2, 69, 4);
                    return;
                }
                return;
            }
        }
        if (i2 == 111) {
            if (T2(iArr, 2)) {
                z.k.s(227, 239, 8, 125, 240, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                return;
            }
            return;
        }
        if (i2 == 112) {
            if (T2(iArr, 2)) {
                z.k.s(227, 239, 4, 125, 76, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        switch (i2) {
            case 30:
                break;
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                int i5 = iArr[0];
                switch (i2) {
                    case 31:
                        a3(199, 1);
                        break;
                    case 32:
                        a3(193, 1);
                        break;
                    case 33:
                        a3(194, 1);
                        break;
                    case 34:
                        a3(195, 1);
                        break;
                    case 35:
                        a3(196, 1);
                        break;
                    case 36:
                        a3(197, 1);
                        break;
                    case 37:
                        a3(198, 1);
                        break;
                }
                return;
            case 38:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                a3(178, iArr[0]);
                return;
            case 39:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                a3(64, iArr[0]);
                return;
            case 40:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                a3(65, iArr[0]);
                return;
            case 41:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                a3(66, iArr[0]);
                return;
            case 42:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                a3(67, iArr[0]);
                return;
            case 43:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                a3(68, iArr[0]);
                return;
            case 44:
                if (iArr != null && iArr.length > 0 && iArr[0] != 0) {
                    iArr[0] = 1;
                }
                break;
            case 45:
                a3(34, 1);
                return;
            case 46:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                a3(32, iArr[0]);
                return;
            case 47:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                a3(33, iArr[0]);
                return;
            case 48:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                a3(51, iArr[0]);
                return;
            case 49:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                a3(52, iArr[0]);
                return;
            case 50:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                a3(53, iArr[0]);
                return;
            case 51:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                a3(54, iArr[0]);
                return;
            default:
                switch (i2) {
                    case 55:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 0) {
                                iArr[0] = 0;
                            } else if (iArr[0] > 4) {
                                iArr[0] = 4;
                            }
                            a3(56, iArr[0]);
                            break;
                        }
                        break;
                    case 56:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 1) {
                                iArr[0] = 1;
                            } else if (iArr[0] > 3) {
                                iArr[0] = 3;
                            }
                            a3(55, iArr[0]);
                            break;
                        }
                        break;
                    case 57:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(50, iArr[0]);
                            break;
                        }
                        break;
                    case 58:
                        if (iArr != null && iArr.length > 0) {
                            a3(80, iArr[0]);
                            break;
                        }
                        break;
                    case 59:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(81, iArr[0]);
                            break;
                        }
                        break;
                    case 60:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(82, iArr[0]);
                            break;
                        }
                        break;
                    case 61:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(86, iArr[0]);
                            break;
                        }
                        break;
                    case 62:
                        if (iArr != null && iArr.length > 0) {
                            a3(83, iArr[0]);
                            break;
                        }
                        break;
                    case 63:
                        if (iArr != null && iArr.length > 0) {
                            a3(87, iArr[0]);
                            break;
                        }
                        break;
                    case 64:
                        if (iArr != null && iArr.length > 0) {
                            a3(88, iArr[0]);
                            break;
                        }
                        break;
                    case 65:
                        if (iArr != null && iArr.length > 0) {
                            a3(84, iArr[0]);
                            break;
                        }
                        break;
                    case 66:
                        if (iArr != null && iArr.length > 0) {
                            a3(85, iArr[0]);
                            break;
                        }
                        break;
                    case 67:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(96, iArr[0]);
                            break;
                        }
                        break;
                    case 68:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(97, iArr[0]);
                            break;
                        }
                        break;
                    case 69:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(100, iArr[0]);
                            break;
                        }
                        break;
                    case 70:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(98, iArr[0]);
                            break;
                        }
                        break;
                    case 71:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(99, iArr[0]);
                            break;
                        }
                        break;
                    case 72:
                        if (iArr != null && iArr.length > 0) {
                            a3(112, iArr[0]);
                            break;
                        }
                        break;
                    case 73:
                        if (iArr != null && iArr.length > 0) {
                            a3(113, iArr[0]);
                            break;
                        }
                        break;
                    case 74:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(114, iArr[0]);
                            break;
                        }
                        break;
                    case 75:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(128, iArr[0]);
                            break;
                        }
                        break;
                    case 76:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(129, iArr[0]);
                            break;
                        }
                        break;
                    case 77:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(130, iArr[0]);
                            break;
                        }
                        break;
                    case 78:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(131, iArr[0]);
                            break;
                        }
                        break;
                    case 79:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(132, iArr[0]);
                            break;
                        }
                        break;
                    case 80:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(133, iArr[0]);
                            break;
                        }
                        break;
                    case 81:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(134, iArr[0]);
                            break;
                        }
                        break;
                    case 82:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(135, iArr[0]);
                            break;
                        }
                        break;
                    case 83:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(136, iArr[0]);
                            break;
                        }
                        break;
                    case 84:
                        if (iArr != null && iArr.length > 0) {
                            a3(138, iArr[0]);
                            break;
                        }
                        break;
                    case 85:
                        if (iArr != null && iArr.length > 0) {
                            a3(139, iArr[0]);
                            break;
                        }
                        break;
                    case 86:
                        if (iArr != null && iArr.length > 0) {
                            a3(16, iArr[0]);
                            break;
                        }
                        break;
                    case 87:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            a3(146, iArr[0]);
                            break;
                        }
                        break;
                    case 88:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 0) {
                                iArr[0] = 0;
                            } else if (iArr[0] > 2) {
                                iArr[0] = 2;
                            }
                            a3(147, iArr[0]);
                            break;
                        }
                        break;
                    case 89:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 0) {
                                iArr[0] = 0;
                            } else if (iArr[0] > 3) {
                                iArr[0] = 3;
                            }
                            a3(148, iArr[0]);
                            break;
                        }
                        break;
                    case 90:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 0) {
                                iArr[0] = 0;
                            } else if (iArr[0] > 2) {
                                iArr[0] = 2;
                            }
                            a3(149, iArr[0]);
                            break;
                        }
                        break;
                    default:
                        switch (i2) {
                            case 105:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] == 1) {
                                        a3(90, iArr[1]);
                                    } else if (iArr[0] == 2) {
                                        a3(89, iArr[1]);
                                    } else if (iArr[0] == 12) {
                                        a3(94, iArr[1]);
                                    } else if (iArr[0] == 13) {
                                        a3(91, iArr[1]);
                                    } else if (iArr[0] == 14) {
                                        a3(92, iArr[1]);
                                    } else if (iArr[0] == 15) {
                                        a3(93, iArr[1]);
                                    } else if (iArr[0] == 32) {
                                        a3(71, iArr[1]);
                                    } else if (iArr[0] == 33) {
                                        a3(72, iArr[1]);
                                    } else if (iArr[0] == 34) {
                                        a3(73, iArr[1]);
                                    }
                                    break;
                                }
                                break;
                            case 106:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[1] != 0) {
                                        iArr[1] = 1;
                                    }
                                    if (iArr[0] == 4) {
                                        a3(203, iArr[1]);
                                    } else if (iArr[0] == 5) {
                                        a3(116, iArr[1]);
                                    }
                                    break;
                                }
                                break;
                            case 107:
                                if (iArr != null && iArr.length > 0) {
                                    a3(iArr[0], iArr[1]);
                                    break;
                                }
                                break;
                            default:
                                switch (i2) {
                                    case 142:
                                        if (iArr != null && iArr.length > 0) {
                                            z.k.s(227, 165, 2, iArr[0], iArr[1]);
                                            break;
                                        }
                                        break;
                                    case 143:
                                        if (iArr != null && iArr.length > 0) {
                                            z.k.s(227, 165, 10, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7], iArr[8], iArr[9]);
                                            break;
                                        }
                                        break;
                                    case 144:
                                        if (iArr != null && iArr.length > 0) {
                                            if (iArr[0] != 0) {
                                                z.k.s(227, 168, 2, iArr[0], iArr[1]);
                                            } else {
                                                H3(iArr[1]);
                                            }
                                            break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                return;
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        if (iArr[0] != 0) {
            iArr[0] = 1;
        }
        a3(171, iArr[0]);
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f11583o0 = f11584p0[o1.o0.a(i2, 0, 36)];
        }
    }

    public final void a3(int i2, int i3) {
        z.k.s(227, 198, 2, (byte) i2, (byte) i3);
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
        if (this.f11614q + bArr.length > 1024) {
            this.f11614q = 0;
            this.f11615r = 0;
            this.f11616s = 0;
        }
        System.arraycopy(bArr, 0, this.f11613p, this.f11614q, bArr.length);
        int length = this.f11614q + bArr.length;
        this.f11614q = length;
        int i5 = this.f11616s;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f11613p[1];
            int i6 = 2;
            while (true) {
                i4 = this.f11616s;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f11613p[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f11613p;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f11615r = this.f11616s + 1;
            } else {
                this.f11615r = 1;
            }
            this.f11616s = 0;
        }
        int i7 = this.f11614q - 2;
        while (true) {
            i2 = this.f11615r;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f11613p;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f11616s = i8;
                int i9 = i8 + i2 + 3;
                this.f11616s = i9;
                if (i9 >= this.f11614q) {
                    this.f11616s = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f11616s;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f11613p[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f11613p;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f11615r;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f11615r = this.f11616s;
                } else {
                    this.f11615r++;
                }
                this.f11616s = 0;
            }
            this.f11615r++;
        }
        if (i2 != 0) {
            int i12 = this.f11614q - i2;
            this.f11614q = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f11613p;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f11615r = 0;
        }
    }

    public final void b3(int i2, int i3) {
        z.k.s(227, 198, 2, i2, i3);
    }
}
