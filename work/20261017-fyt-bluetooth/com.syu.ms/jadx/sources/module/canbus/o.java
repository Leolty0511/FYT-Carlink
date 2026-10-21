package module.canbus;

import android.app.ActivityManager;
import android.content.Intent;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;
import app.App;
import java.io.UnsupportedEncodingException;
import java.util.List;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class o extends lt implements o1.q {

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static int f14559d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static int f14560e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static int f14561f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final int[] f14562g0 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 35, 37, 40};

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final o1.f<t> f14563h0 = new o1.f<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14572g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f14565b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14567c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f14569d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f14570e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14571f = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14573h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14574i = 255;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f14575j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}, new int[]{13, 13}, new int[]{14, 0}, new int[]{129, 25}, new int[]{135, 21}, new int[]{137, 0}, new int[]{161, 7}, new int[]{162, 8}, new int[]{169, 3}, new int[]{176, 4}, new int[]{177, 2}, new int[]{178, 5}, new int[]{179, 18}, new int[]{180, 26}, new int[]{181, 55}, new int[]{182, 1}, new int[]{183, 62}, new int[]{184, 62}, new int[]{185, 62}, new int[]{186, 6}, new int[]{187, 65}, new int[]{188, 38}, new int[]{192, 34}, new int[]{193, 35}, new int[]{194, 32}, new int[]{195, 33}, new int[]{196, 29}, new int[]{197, 34}, new int[]{198, 35}, new int[]{199, 32}, new int[]{200, 33}, new int[]{201, 63}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final byte[] f14576k = new byte[1024];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f14577l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f14578m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f14579n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f14580o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f14581p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f14582q = new k();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f14583r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f14584s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f14585t = new l();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f14586u = new m();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f14587v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f14588w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f14589x = new n();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int[] f14590y = {34, 204};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f14591z = 0;
    public boolean A = false;
    public Runnable B = new RunnableC0079o();
    public float C = 0.0f;
    public int D = 255;
    public int E = 255;
    public Runnable F = new p();
    public boolean G = false;
    public Runnable H = new q();
    public Runnable I = new r();
    public int J = 255;
    public Runnable K = new s();
    public Runnable L = new a();
    public int M = -1;
    public String N = ProxyProperties.LOCAL_EXCL_LIST;
    public Runnable O = new b();
    public int P = 0;
    public int Q = 0;
    public boolean R = false;
    public Runnable S = new c();
    public Runnable T = new d();
    public Runnable U = new e();
    public byte V = 5;
    public Runnable W = new f();
    public Runnable X = new g();
    public int Y = 0;
    public Runnable Z = new h();

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f14564a0 = -1;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public Runnable f14566b0 = new i();

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public Runnable f14568c0 = new j();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            int i2 = o.this.M;
            int i3 = h0.c.E;
            boolean z3 = true;
            if (i2 != i3) {
                o.this.M = i3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (o.this.N.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                o.this.N = h0.c.f2437h;
                if (o.this.N == null) {
                    o.this.N = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (u0.b.D == 2 ? z3 : false) {
                o oVar = o.this;
                oVar.I3(oVar.M, o.this.N);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f2;
            if (i2 == 0) {
                o.this.c3(29);
            } else {
                if (i2 != 1) {
                    return;
                }
                o.this.c3(28);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8637c) {
                case 0:
                case 1:
                    z.k.s(227, 133, 1, 1);
                    break;
                case 4:
                case 16:
                    z.k.s(227, 133, 1, 2);
                    break;
                case 5:
                case 28:
                    z.k.s(227, 133, 1, 3);
                    break;
                case 6:
                case 11:
                    z.k.s(227, 133, 1, 4);
                    break;
                case 7:
                case 14:
                case 24:
                    z.k.s(227, 133, 1, 5);
                    break;
                case 8:
                    z.k.s(227, 133, 1, 6);
                    break;
                case 9:
                    z.k.s(227, 133, 1, 7);
                    break;
                case 10:
                case 18:
                    z.k.s(227, 133, 1, 8);
                    break;
                case 12:
                case 15:
                    z.k.s(227, 133, 1, 10);
                    break;
                case 17:
                    z.k.s(227, 133, 1, 32);
                    break;
                case 19:
                case 22:
                    z.k.s(227, 133, 1, 14);
                    break;
                case 20:
                case 25:
                case 26:
                case 27:
                case 36:
                case 37:
                    z.k.s(227, 133, 1, 13);
                    break;
                case 21:
                case 23:
                case 34:
                    z.k.s(227, 133, 1, 15);
                    break;
                case 29:
                    z.k.s(227, 133, 1, 17);
                    break;
                case 30:
                    z.k.s(227, 133, 1, 18);
                    break;
                case 31:
                    z.k.s(227, 133, 1, 33);
                    break;
                case 32:
                case 33:
                    z.k.s(227, 133, 1, 34);
                    break;
                case 35:
                    z.k.s(227, 133, 1, 35);
                    break;
                case 38:
                case 39:
                    z.k.s(227, 133, 1, 19);
                    break;
                case 40:
                    z.k.s(227, 133, 1, 38);
                    break;
                case 41:
                    z.k.s(227, 133, 1, 39);
                    break;
                case 42:
                    z.k.s(227, 133, 1, 40);
                    break;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 131, 3, 3, (byte) time.hour, (byte) time.minute);
            o oVar = o.this;
            int i2 = oVar.f14580o;
            if (i2 > 0) {
                oVar.f14580o = i2 - 1;
            }
            if (oVar.f14580o == 1 && oVar.A3().equals("com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP")) {
                l0.b0.l0(6, 0);
                l0.b0.l0(6, 1);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o oVar = o.this;
            byte b2 = (byte) (oVar.V - 1);
            oVar.V = b2;
            if (b2 <= 0) {
                l0.b0.p0(oVar.W);
                o.this.V = (byte) 5;
                return;
            }
            int i2 = nt.f8637c;
            if (i2 != 20 && i2 != 25 && i2 != 33 && i2 != 36 && i2 != 37) {
                z.k.s(227, 144, 2, 127, 0);
                return;
            }
            z.k.s(227, 144, 2, 63, 0);
            z.k.s(227, 144, 2, 127, 0);
            o.this.G3();
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o.this.Y == 0) {
                o.J3(new byte[]{46, -112, 1, 33, 0});
            }
            o oVar = o.this;
            int i2 = oVar.Y;
            if (i2 > 0) {
                oVar.Y = i2 - 1;
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17306a0;
            if (i2 == 0) {
                o.this.R = false;
            } else if (i2 == 1) {
                o oVar = o.this;
                if (!oVar.R) {
                    oVar.R = true;
                }
            }
            o oVar2 = o.this;
            oVar2.Q = 0;
            int i3 = nt.f8637c;
            if (i3 != 5 && i3 != 7 && i3 != 14 && i3 != 28) {
                l0.b0.b(oVar2.W);
                o.this.V = (byte) 5;
            } else {
                l0.b0.b(oVar2.X);
                l0.b0.b(o.this.W);
                o.this.V = (byte) 5;
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.G3();
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.f8637c == 24) {
                z.k.s(227, 131, 3, 26, 1, 0);
                a.i.a0(100L);
                z.k.s(227, 131, 3, 26, 0, 0);
            } else if (o.this.P == 1) {
                z.k.s(227, 131, 3, 10, 2, 0);
            } else {
                z.k.s(227, 131, 3, 10, 1, 0);
            }
            l0.b0.o0(o.this.f14585t);
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.f14583r--;
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.f8637c == 24) {
                z.k.s(227, 131, 3, 26, 1, 0);
                a.i.a0(100L);
                z.k.s(227, 131, 3, 26, 0, 0);
            } else if (o.this.P == 1) {
                z.k.s(227, 131, 3, 10, 2, 0);
            } else {
                z.k.s(227, 131, 3, 10, 1, 0);
            }
            l0.b0.o0(o.this.f14589x);
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.f14587v--;
        }
    }

    /* JADX INFO: renamed from: module.canbus.o$o, reason: collision with other inner class name */
    public class RunnableC0079o implements Runnable {
        public RunnableC0079o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 48, 0);
            }
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.C = u0.b.f17359s0;
            if (o.this.C > 360.0f) {
                o.m3(o.this, 360.0f);
            }
            if (o.this.C < 0.0f) {
                o.m3(o.this, 360.0f);
                o oVar = o.this;
                oVar.C = 360.0f - Math.abs(oVar.C);
            }
            if ((o.this.C <= 22.5d && o.this.C >= 0.0f) || (o.this.C >= 337.5d && o.this.C <= 360.0f)) {
                o.this.E = 3;
            } else if (o.this.C > 22.5d && o.this.C < 67.5d) {
                o.this.E = 6;
            } else if (o.this.C >= 67.5d && o.this.C <= 112.5d) {
                o.this.E = 0;
            } else if (o.this.C > 112.5d && o.this.C < 157.5d) {
                o.this.E = 4;
            } else if (o.this.C >= 157.5d && o.this.C <= 202.5d) {
                o.this.E = 1;
            } else if (o.this.C > 202.5d && o.this.C < 247.5d) {
                o.this.E = 5;
            } else if (o.this.C >= 247.5d && o.this.C <= 292.5d) {
                o.this.E = 2;
            } else if (o.this.C <= 292.5d || o.this.C >= 337.5d) {
                o.this.E = 15;
            } else {
                o.this.E = 7;
            }
            if (o.this.E != o.this.D) {
                if (u0.b.X1 > 2) {
                    z.k.s(227, -125, 3, 21, o.this.E, 0);
                }
                o oVar2 = o.this;
                oVar2.D = oVar2.E;
            }
        }
    }

    public class q implements Runnable {
        public q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                o.this.B3((byte) -60, u0.b.i3);
            } else {
                o.this.B3((byte) -60, ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
    }

    public class r implements Runnable {
        public r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                o.this.B3((byte) -58, u0.b.j3);
            } else {
                o.this.B3((byte) -58, ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
    }

    public class s implements Runnable {
        public s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = o.this.J;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13) {
                    z.k.s(227, 136, 3, 0, 0, 0);
                }
                o.this.J = u0.b.D;
            }
        }
    }

    public static class t implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14611a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14612b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14613c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14614d;

        public t(int i2, int i3) {
            this.f14611a = i2;
            this.f14614d = i3;
        }

        public synchronized void a(int i2) {
            this.f14612b = i2;
            if (!this.f14613c) {
                this.f14613c = true;
                o1.k.a().postDelayed(this, this.f14614d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 134, 2, this.f14611a, this.f14612b);
            this.f14613c = false;
        }
    }

    public static void J3(byte[] bArr) {
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

    /* JADX WARN: Code duplicated, block: B:23:0x006c  */
    public static void b3() {
        int[] iArr = new int[4];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 2;
        int i3 = u0.b.D;
        if (i3 == 10) {
            iArr[2] = 8;
            iArr[3] = 16;
        } else if (i3 != 13) {
            switch (i3) {
                case 1:
                    iArr[2] = 1;
                    iArr[3] = 1;
                    break;
                case 2:
                    iArr[2] = 5;
                    iArr[3] = 64;
                    break;
                case 3:
                    iArr[2] = 11;
                    iArr[3] = 64;
                    break;
                case 4:
                    int i4 = o0.e.H;
                    if (i4 == 1) {
                        iArr[2] = 2;
                        iArr[3] = 16;
                    } else if (i4 == 2 || i4 == 3) {
                        iArr[2] = 8;
                        iArr[3] = 16;
                    }
                    break;
                case 5:
                    iArr[2] = 7;
                    iArr[3] = 48;
                    break;
                case 6:
                    iArr[2] = 7;
                    iArr[3] = 48;
                    break;
                case 7:
                    iArr[2] = 6;
                    iArr[3] = 18;
                    break;
                case 8:
                    iArr[2] = 8;
                    iArr[3] = 16;
                    break;
                default:
                    iArr[2] = 4;
                    iArr[3] = 48;
                    break;
            }
        } else {
            iArr[2] = 12;
            iArr[3] = 34;
        }
        int[] iArr2 = new int[5];
        iArr2[0] = 227;
        while (i2 < 4) {
            int i5 = i2 + 1;
            iArr2[i5] = iArr[i2];
            i2 = i5;
        }
        z.k.s(iArr2);
    }

    public static /* synthetic */ float m3(o oVar, float f2) {
        float f3 = oVar.C % f2;
        oVar.C = f3;
        return f3;
    }

    public static void y3(int i2, int i3) {
        t tVarC = f14563h0.c(i2);
        if (tVarC != null) {
            tVarC.a(i3);
        }
    }

    public String A3() {
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

    public final void B3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[37];
        byte[] bytes = str.getBytes();
        iArr[0] = 227;
        iArr[1] = b2;
        iArr[2] = 34;
        iArr[3] = 9;
        int length = bytes.length <= 33 ? bytes.length : 33;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 4] = bytes[i2];
        }
        z.k.s(iArr);
    }

    public final void C3() {
        Z2(y0.f.f18037c);
    }

    public final void D3() {
        if (SystemProperties.getBoolean("persist.fyt.showduduair", false) || A3().equals("com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void E3(int i2) {
        f14559d0 = i2;
        z.k.s(227, 131, 3, 2, (byte) i2, 0);
        int iB = this.f14565b.b(1, 0);
        int i3 = f14559d0;
        if (iB != i3) {
            this.f14565b.g(1, i3);
        }
    }

    public final void F3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f14560e0 = i2;
        qt.y0(164, i2);
        int iB = this.f14565b.b(2, 0);
        int i3 = f14560e0;
        if (iB != i3) {
            this.f14565b.g(2, i3);
        }
    }

    public final synchronized void G3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        y3(1, f14561f0);
    }

    public void H3() {
        Intent intent = new Intent("com.syu.cancle_tts");
        intent.setPackage("com.syu.voice");
        App.c().startService(intent);
    }

    public final void I3(int i2, String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length + 5];
        iArr[0] = -29;
        iArr[1] = -59;
        iArr[2] = (byte) (charArray.length + 2);
        if (i2 == 0) {
            iArr[3] = 17;
        } else if (i2 == 2) {
            iArr[3] = 16;
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

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        int i2 = nt.f8637c;
        if (i2 == 20 || i2 == 25 || i2 == 33) {
            y0.f.C0 = 30;
        } else {
            y0.f.C0 = 18;
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
                int i3 = nt.f8637c;
                if (i3 == 2 || i3 == 3) {
                    c3(9);
                    return;
                } else {
                    c3(30);
                    return;
                }
            }
            int i4 = nt.f8637c;
            if (i4 != 2 && i4 != 3) {
                c3(31);
                return;
            }
            c3(10);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                int i5 = nt.f8637c;
                if (i5 == 2 || i5 == 3) {
                    c3(11);
                    return;
                } else {
                    c3(32);
                    return;
                }
            }
            int i6 = nt.f8637c;
            if (i6 == 2 || i6 == 3) {
                c3(12);
                return;
            } else {
                c3(33);
                return;
            }
        }
        if (i2 == 55) {
            if (iArr[1] < 17) {
                z.k.s(227, -121, 2, 11, 0);
                return;
            }
            if (iArr[1] >= 17 && iArr[1] <= 31) {
                z.k.s(227, -121, 2, 11, (iArr[1] - 16) * 2);
                return;
            } else {
                if (iArr[1] > 31) {
                    z.k.s(227, -121, 2, 11, 255);
                    return;
                }
                return;
            }
        }
        if (i2 == 56) {
            if (iArr[1] < 17) {
                z.k.s(227, -121, 2, 13, 0);
                return;
            }
            if (iArr[1] >= 17 && iArr[1] <= 31) {
                z.k.s(227, -121, 2, 13, (iArr[1] - 16) * 2);
                return;
            } else {
                if (iArr[1] > 31) {
                    z.k.s(227, -121, 2, 13, 255);
                    return;
                }
                return;
            }
        }
        if (i2 == 67) {
            int i7 = iArr[1];
            if (i7 == 2) {
                z.k.s(227, 131, 3, 10, 1, 0);
                return;
            }
            if (i7 == 3) {
                z.k.s(227, 131, 3, 10, 2, 0);
                return;
            } else if (i7 == 4) {
                z.k.s(227, 131, 3, 10, 3, 0);
                return;
            } else {
                if (i7 != 5) {
                    return;
                }
                z.k.s(227, 131, 3, 10, 4, 0);
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] == 1) {
                z.k.s(227, -121, 2, 2, 0);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, -121, 2, 2, 1);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, -121, 2, 3, 0);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, -121, 2, 3, 1);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, -121, 2, 4, 0);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, -121, 2, 4, 1);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, -121, 2, 5, 0);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, -121, 2, 5, 1);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, -121, 2, 48, 0);
                return;
            }
            if (iArr[1] == 10) {
                z.k.s(227, -121, 2, 48, 1);
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, -121, 2, 1, 0);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, -121, 2, 1, 1);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        int i8 = nt.f8637c;
                        if (i8 == 2 || i8 == 3) {
                            c3(1);
                        } else {
                            d3(6, 0);
                        }
                    }
                } else if (nt.f8645g[10] == 0) {
                    int i9 = nt.f8637c;
                    if (i9 == 2 || i9 == 3) {
                        c3(2);
                    } else {
                        d3(6, 1);
                    }
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        int i10 = nt.f8637c;
                        if (i10 == 2 || i10 == 3) {
                            c3(16);
                        } else {
                            d3(7, 0);
                        }
                    }
                } else if (nt.f8645g[11] == 0) {
                    int i11 = nt.f8637c;
                    if (i11 == 2 || i11 == 3) {
                        c3(16);
                    } else {
                        d3(7, 1);
                    }
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        int i12 = nt.f8637c;
                        if (i12 == 2 || i12 == 3) {
                            c3(2);
                        } else {
                            d3(14, 0);
                        }
                    }
                } else if (nt.f8645g[13] == 0) {
                    int i13 = nt.f8637c;
                    if (i13 == 2 || i13 == 3) {
                        c3(2);
                    } else {
                        d3(14, 1);
                    }
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        int i14 = nt.f8637c;
                        if (i14 == 2 || i14 == 3) {
                            c3(38);
                        } else {
                            d3(16, 0);
                        }
                    }
                } else if (nt.f8645g[65] == 0) {
                    int i15 = nt.f8637c;
                    if (i15 == 2 || i15 == 3) {
                        c3(38);
                    } else {
                        d3(16, 1);
                    }
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        int i16 = nt.f8637c;
                        if (i16 == 2 || i16 == 3) {
                            c3(4);
                        } else {
                            d3(17, 0);
                        }
                    }
                } else if (nt.f8645g[16] == 0) {
                    int i17 = nt.f8637c;
                    if (i17 == 2 || i17 == 3) {
                        c3(4);
                    } else {
                        d3(17, 1);
                    }
                }
                break;
            case 38:
                int i18 = nt.f8637c;
                if (i18 != 2 && i18 != 3) {
                    if (iArr[1] == 1) {
                        if (nt.f8645g[12] == 0) {
                            int i19 = nt.f8637c;
                            if (i19 == 2 || i19 == 3) {
                                c3(35);
                            } else {
                                d3(15, 0);
                            }
                        }
                        break;
                    } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                        int i20 = nt.f8637c;
                        if (i20 == 2 || i20 == 3) {
                            c3(35);
                        } else {
                            d3(15, 1);
                        }
                        break;
                    }
                } else if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 1) {
                        c3(35);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 2) {
                    c3(35);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    int i21 = nt.f8637c;
                    if (i21 == 2 || i21 == 3) {
                        c3(21);
                    } else {
                        d3(8, 0);
                    }
                } else {
                    int i22 = nt.f8637c;
                    if (i22 == 2 || i22 == 3) {
                        c3(20);
                    } else {
                        d3(8, 1);
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f14565b.a();
        F3(this.f14565b.b(2, 0));
        o1.y yVar = u0.c.f17386m;
        yVar.a(this.Z, 1);
        qt.z(this.U);
        qt.z(this.T);
        qt.x(this.B);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8313h = 0;
        mtVar.f8314i = 0;
        mtVar.f8313h = 0;
        mtVar.f8307b = 0;
        switch (nt.f8637c) {
            case 0:
            case 1:
            case 4:
            case 5:
            case 16:
                mtVar.f8313h = 1;
                break;
            case 2:
                z.k.s(227, 51, 5, 0, this.f14590y[this.f14591z % 2], 37, 32, 170);
                z.k.s(227, 51, 5, 0, this.f14590y[this.f14591z % 2], 37, 32, 170);
                z.k.s(227, 51, 5, 0, this.f14590y[this.f14591z % 2], 37, 32, 170);
                int i2 = this.f14591z + 1;
                this.f14591z = i2;
                this.f14591z = i2 % 2;
                break;
            case 3:
                z.k.s(227, 51, 5, 0, this.f14590y[this.f14591z % 2], 37, 33, 170);
                z.k.s(227, 51, 5, 0, this.f14590y[this.f14591z % 2], 37, 33, 170);
                z.k.s(227, 51, 5, 0, this.f14590y[this.f14591z % 2], 37, 33, 170);
                int i3 = this.f14591z + 1;
                this.f14591z = i3;
                this.f14591z = i3 % 2;
                break;
            case 6:
            case 11:
            case 13:
            case 15:
            case 17:
            case 30:
            case 35:
                mtVar.f8314i = 1;
                z.c.f18184d.a(this.S, 1);
                break;
            case 7:
            case 19:
            case 22:
            case 24:
            case 38:
            case 39:
                mtVar.f8314i = 1;
                break;
            case 20:
            case 25:
            case 32:
            case 33:
                o1.h.f16865a.a(this.F, 1);
                mt mtVar2 = this.f7886a;
                mtVar2.f8314i = 1;
                mtVar2.f8307b = 1;
                init();
                C3();
                y0.g.f18094d.a(this.f14568c0, 1);
                qt.z(this.L);
                h0.d.f2464c.a(this.O, 1);
                h0.d.f2462a.a(this.O, 1);
                u0.c.f17374a.a(this.K, 1);
                u0.c.f17388o.a(this.H, 1);
                u0.c.f17389p.a(this.I, 1);
                u0.c.f17379f.a(this.f14566b0, 1);
                break;
            case 21:
            case 29:
            case 31:
            case 40:
            case 41:
            case 42:
                o1.h.f16865a.a(this.F, 1);
                this.f7886a.f8314i = 1;
                break;
            case 23:
            case 26:
            case 27:
            case 34:
            case 36:
            case 37:
                o1.h.f16865a.a(this.F, 1);
                mt mtVar3 = this.f7886a;
                mtVar3.f8306a = new String[]{"com.syu.canbus"};
                mtVar3.f8310e = 1;
                mtVar3.f8311f = 1;
                mtVar3.f8312g = 1;
                mtVar3.f8314i = 1;
                qt.z(this.L);
                h0.d.f2464c.a(this.O, 1);
                h0.d.f2462a.a(this.O, 1);
                u0.c.f17374a.a(this.K, 1);
                u0.c.f17388o.a(this.H, 1);
                u0.c.f17389p.a(this.I, 1);
                break;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56};
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        int i4 = nt.f8637c;
        if ((i4 == 5 || i4 == 7 || i4 == 14 || i4 == 28) && App.c().getResources().getConfiguration().orientation == 1) {
            J3(new byte[]{46, -127, 1, 1, 0});
            yVar.a(this.Z, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int[][] iArr;
        int[][] iArr2;
        int i10;
        int i11;
        int i12;
        String str;
        int i13 = bArr[i2] & 255;
        if (i13 == 53) {
            int i14 = i2 + 2;
            qt.y0(29, (bArr[i14] >> 4) & 15);
            qt.y0(30, (bArr[i14] >> 0) & 15);
            int i15 = i2 + 4;
            qt.y0(31, (bArr[i15] >> 4) & 15);
            qt.y0(32, (bArr[i15] >> 0) & 15);
        }
        if (i13 == 67) {
            switch (bArr[i2 + 2] & 255) {
                case 0:
                    H3();
                    break;
                case 1:
                    z3("您的爱车需要保养,是否导航到附近的4S店");
                    break;
                case 2:
                    z3("请关闭电源,主机自己发声音");
                    break;
                case 3:
                    z3("引擎已退出,请手动着车");
                    break;
                case 4:
                    z3("主人,开车累了吧,咱们休息下吧");
                    break;
                case 5:
                    z3("请带好钥匙");
                    break;
                case 6:
                    z3("油量低");
                    break;
                case 7:
                    z3("胎压异常");
                    break;
                case 8:
                    z3("胎温异常");
                    break;
                case 9:
                    z3("胎压胎温异常");
                    break;
                case 10:
                    z3("请关闭车门");
                    break;
                case 11:
                    z3("请系好安全带");
                    break;
                case 12:
                    z3("请关闭车灯");
                    break;
                case 13:
                    z3("请确认钥匙是否在车内");
                    break;
                case 15:
                    z3("请带好随身物品锁闭车门");
                    break;
            }
        }
        if (i13 == 85) {
            int i16 = nt.f8637c;
            if (i16 == 2 || i16 == 3) {
                int i17 = i2 + 2;
                byte b2 = bArr[i17];
                int i18 = i2 + 3;
                byte b3 = bArr[i18];
                byte b4 = bArr[i2 + 4];
                byte b5 = bArr[i2 + 6];
                byte b6 = bArr[i2 + 7];
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b2 = bArr[i18];
                    b3 = bArr[i17];
                }
                int i19 = b2 & 255;
                if (i19 == 16) {
                    qt.y0(27, -2);
                } else if (i19 != 80) {
                    qt.y0(27, i19);
                } else {
                    qt.y0(27, -3);
                }
                int i20 = b3 & 255;
                if (i20 == 16) {
                    qt.y0(28, -2);
                } else if (i20 != 80) {
                    qt.y0(28, i20);
                } else {
                    qt.y0(28, -3);
                }
                qt.y0(21, b4 & DhcpPacket.DHCP_DOMAIN_NAME & 255);
                switch ((b4 >> 4) & 15) {
                    case 1:
                        i5 = 0;
                        i6 = 0;
                        i4 = 1;
                        break;
                    case 2:
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                        break;
                    case 3:
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                        break;
                    case 4:
                        i4 = 0;
                        i5 = 1;
                        i6 = i5;
                        break;
                    case 5:
                        i5 = 0;
                        i4 = 1;
                        i6 = 1;
                        break;
                    case 6:
                        i4 = 0;
                        i5 = 0;
                        i6 = 1;
                        break;
                    default:
                        i4 = 0;
                        i5 = 0;
                        i6 = i5;
                        break;
                }
                qt.y0(19, i4);
                qt.y0(20, i5);
                qt.y0(18, i6);
                qt.y0(13, (b5 >> 0) & 1);
                qt.y0(11, (b5 >> 1) & 1);
                qt.y0(14, (b5 >> 2) & 1);
                qt.y0(65, (b5 >> 5) & 1);
                qt.y0(16, (b5 >> 6) & 1);
                qt.y0(12, (b6 >> 0) & 3);
                if (nt.a()) {
                    int i21 = bArr[i2 + 9] & 255;
                    if (i21 == 255 || i21 == 0) {
                        u0.d.A3(0);
                        return;
                    } else {
                        u0.d.A3((i21 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (i13 == 125) {
            int i22 = bArr[i2 + 2] & 255;
            if (i22 != 1) {
                if (i22 == 3) {
                    int i23 = (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255)) / 100;
                    qt.y0(1031, i23);
                    o1.x.C(nt.f8643f, 1049, new int[]{1, i23}, null, null);
                    return;
                } else if (i22 == 8) {
                    qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                    this.A = true;
                    return;
                } else {
                    if (i22 != 10) {
                        return;
                    }
                    qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                    return;
                }
            }
            int i24 = nt.f8637c;
            if (i24 == 24) {
                if (f14560e0 == 1) {
                    int i25 = i2 + 3;
                    if (this.f14584s != ((bArr[i25] >> 3) & 1)) {
                        int i26 = (bArr[i25] >> 3) & 1;
                        this.f14584s = i26;
                        if (i26 == 1) {
                            if (!o1.u.T(a.b.O)) {
                                z.k.s(227, 131, 3, 26, 1, 0);
                                a.i.a0(100L);
                                z.k.s(227, 131, 3, 26, 0, 0);
                            }
                            this.f14583r = 20;
                            l0.b0.a(this.f14585t);
                        } else if (this.f14583r > 0) {
                            o1.j.e(o1.l.a(), this.f14582q);
                            o1.j.b(o1.l.a(), this.f14582q, 4000L);
                        } else {
                            if (o1.u.T(a.b.O)) {
                                z.k.s(227, 131, 3, 26, 1, 0);
                                a.i.a0(100L);
                                z.k.s(227, 131, 3, 26, 0, 0);
                            }
                            l0.b0.o0(this.f14585t);
                        }
                    }
                }
            } else if ((i24 == 25 || i24 == 27 || i24 == 22) && u0.b.f17347o == 1) {
                int i27 = i2 + 3;
                if (this.f14584s != ((bArr[i27] >> 3) & 1)) {
                    int i28 = (bArr[i27] >> 3) & 1;
                    this.f14584s = i28;
                    if (i28 == 1) {
                        z.k.s(227, 131, 3, 10, 4, 0);
                        this.f14583r = 20;
                        l0.b0.a(this.f14585t);
                    } else if (this.f14583r > 0) {
                        o1.j.e(o1.l.a(), this.f14582q);
                        o1.j.b(o1.l.a(), this.f14582q, 4000L);
                    } else {
                        if (this.P == 1) {
                            z.k.s(227, 131, 3, 10, 2, 0);
                        } else {
                            z.k.s(227, 131, 3, 10, 1, 0);
                        }
                        l0.b0.o0(this.f14585t);
                    }
                }
                if (this.f14588w != ((bArr[i27] >> 4) & 1)) {
                    int i29 = (bArr[i27] >> 4) & 1;
                    this.f14588w = i29;
                    if (i29 == 1) {
                        z.k.s(227, 131, 3, 10, 3, 0);
                        this.f14587v = 20;
                        l0.b0.a(this.f14589x);
                    } else if (this.f14587v > 0) {
                        o1.j.e(o1.l.a(), this.f14586u);
                        o1.j.b(o1.l.a(), this.f14586u, 4000L);
                    } else {
                        if (this.P == 1) {
                            z.k.s(227, 131, 3, 10, 2, 0);
                        } else {
                            z.k.s(227, 131, 3, 10, 1, 0);
                        }
                        l0.b0.o0(this.f14589x);
                    }
                }
            }
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i30 = i2 + 3;
                l0.c0.b((bArr[i30] >> 3) & 1, (bArr[i30] >> 4) & 1, 0);
                return;
            } else {
                int i31 = i2 + 3;
                l0.c0.a((bArr[i31] >> 3) & 1, (bArr[i31] >> 4) & 1, 0);
                return;
            }
        }
        if (i13 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (i13) {
            case 33:
                if (bArr[i2 + 1] != 2) {
                    a.f.p().t(LogType.CANBUS, "air data = " + o1.b0.d(bArr, i2, i3));
                    int i32 = bArr[i2 + 2] & 255;
                    int i33 = (i32 >> 5) & 7;
                    if (i33 != 1) {
                        if (i33 == 2) {
                            i7 = 0;
                            i9 = 1;
                        } else if (i33 == 3) {
                            i7 = 0;
                            i9 = 0;
                            i8 = 1;
                        } else if (i33 == 4) {
                            i9 = 0;
                            i7 = 1;
                            i8 = 1;
                        } else if (i33 != 5) {
                            i7 = 0;
                            i9 = 0;
                        } else {
                            i9 = 0;
                            i8 = 0;
                            i7 = 1;
                        }
                        i8 = i9;
                    } else {
                        i7 = 0;
                        i8 = 0;
                        i9 = 1;
                    }
                    qt.y0(18, i7);
                    qt.y0(19, i9);
                    qt.y0(20, i8);
                    qt.y0(13, (i32 >> 4) & 1);
                    if (((i32 >> 3) & 1) == 1) {
                        qt.y0(12, 0);
                    } else if (((i32 >> 2) & 1) == 1) {
                        qt.y0(12, 1);
                    }
                    qt.y0(11, (i32 >> 1) & 1);
                    if (((i32 >> 0) & 1) == 1) {
                        qt.y0(10, 0);
                    } else {
                        qt.y0(10, 1);
                    }
                    int i34 = bArr[i2 + 3] & 255;
                    qt.y0(21, (i34 >> 4) & 15);
                    qt.y0(53, (i34 >> 3) & 1);
                    qt.y0(65, (i34 >> 2) & 1);
                    qt.y0(16, (i34 >> 1) & 1);
                    qt.y0(14, (i34 >> 0) & 1);
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        qt.y0(27, (bArr[i2 + 5] >> 2) & 63);
                        qt.y0(28, (bArr[i2 + 4] >> 2) & 63);
                    } else {
                        qt.y0(27, (bArr[i2 + 4] >> 2) & 63);
                        qt.y0(28, (bArr[i2 + 5] >> 2) & 63);
                    }
                } else if (nt.a()) {
                    byte b7 = bArr[i2 + 2];
                    byte b8 = bArr[i2 + 3];
                    this.f14573h = b7 & 255;
                    int i35 = 0;
                    while (true) {
                        iArr = this.f14575j;
                        if (i35 < iArr.length) {
                            int i36 = this.f14573h;
                            if (i36 != iArr[i35][0]) {
                                i35++;
                            } else if (i36 != 0) {
                                this.f14572g = i35;
                                this.f14574i = i36;
                            }
                        }
                    }
                    int i37 = this.f14573h;
                    if (i37 != 9) {
                        if (i37 != 10) {
                            int i38 = b8 & 255;
                            if (i38 == 1) {
                                if (i35 < iArr.length) {
                                    l0.b0.l0(iArr[i35][1], 0);
                                }
                            } else if (i38 == 0) {
                                int i39 = this.f14572g;
                                if (i39 < iArr.length && i39 != 255) {
                                    l0.b0.l0(iArr[i39][1], 1);
                                }
                                this.f14572g = 255;
                            }
                        } else if ((b8 & 255) == 1) {
                            int i40 = nt.f8637c;
                            if (i40 == 21 || i40 == 23 || i40 == 34) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                int i41 = h0.c.E;
                                if (i41 == 3 || i41 == 4 || i41 == 5) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else if (o1.u.S("com.syu.carlink")) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else {
                                    l0.b0.l0(13, 0);
                                    l0.b0.l0(13, 1);
                                }
                            }
                        }
                    } else if ((b8 & 255) == 1) {
                        int i42 = nt.f8637c;
                        if (i42 == 21 || i42 == 23 || i42 == 34) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else {
                            int i43 = h0.c.E;
                            if (i43 == 3 || i43 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            }
                        }
                    }
                }
                break;
            case 34:
                byte b9 = bArr[i2 + 2];
                byte b10 = bArr[i2 + 3];
                if (this.f14581p != b10) {
                    this.f14581p = b10;
                    this.f14573h = (b9 | 128) & 255;
                    int i44 = 0;
                    while (true) {
                        iArr2 = this.f14575j;
                        if (i44 < iArr2.length) {
                            int i45 = this.f14573h;
                            if (i45 != iArr2[i44][0]) {
                                i44++;
                            } else if (i45 != 0) {
                                this.f14572g = i44;
                            }
                        }
                    }
                    switch (b9 & 255) {
                        case 55:
                            if ((b10 & 255) == 1 && !SystemProperties.getBoolean("persist.fyt.showduduair", false)) {
                                if (A3().equals("com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP")) {
                                    c3(28);
                                } else {
                                    D3();
                                }
                                break;
                            }
                            break;
                        case 56:
                            if ((b10 & 255) == 1 && !SystemProperties.getBoolean("persist.fyt.showduduair", false)) {
                                if (A3().equals("com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP")) {
                                    c3(29);
                                } else {
                                    D3();
                                }
                                break;
                            }
                            break;
                        case 57:
                            if ((b10 & 255) == 1 && !SystemProperties.getBoolean("persist.fyt.showduduair", false)) {
                                if (A3().equals("com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP")) {
                                    l0.b0.l0(6, 0);
                                    l0.b0.l0(6, 1);
                                } else {
                                    this.f14580o = 6;
                                    D3();
                                }
                                break;
                            }
                            break;
                        default:
                            int i46 = b10 & 255;
                            if (i46 == 1) {
                                if (i44 < iArr2.length) {
                                    l0.b0.l0(iArr2[i44][1], 0);
                                }
                            } else if (i46 == 0) {
                                int i47 = this.f14572g;
                                if (i47 < iArr2.length && i47 != 255) {
                                    l0.b0.l0(iArr2[i47][1], 1);
                                }
                                this.f14572g = 255;
                            }
                            break;
                    }
                }
                break;
            case 35:
                int i48 = nt.f8637c;
                if (i48 != 2 && i48 != 3) {
                    if (i48 != 5 || App.c().getResources().getConfiguration().orientation != 1) {
                        this.f14580o = 6;
                        byte b11 = bArr[i2 + 2];
                        byte b12 = bArr[i2 + 3];
                        byte b13 = bArr[i2 + 4];
                        byte b14 = bArr[i2 + 5];
                        byte b15 = bArr[i2 + 6];
                        qt.y0(10, (b11 >> 7) & 1);
                        qt.y0(11, (b11 >> 6) & 1);
                        qt.y0(12, (b11 >> 5) & 1);
                        qt.y0(58, (b11 >> 4) & 1);
                        qt.y0(13, (b11 >> 3) & 1);
                        qt.y0(14, (b11 >> 2) & 1);
                        qt.y0(16, (b11 >> 1) & 1);
                        qt.y0(65, (b11 >> 0) & 1);
                        switch (b12 & 255) {
                            case 1:
                                i10 = 0;
                                i11 = 0;
                                i12 = 1;
                                break;
                            case 2:
                                i10 = 0;
                                i12 = 1;
                                i11 = 1;
                                break;
                            case 3:
                                i12 = 0;
                                i10 = 0;
                                i11 = 1;
                                break;
                            case 4:
                                i12 = 0;
                                i10 = 1;
                                i11 = i10;
                                break;
                            case 5:
                                i12 = 0;
                                i11 = 0;
                                i10 = 1;
                                break;
                            case 6:
                                i11 = 0;
                                i12 = 1;
                                i10 = 1;
                                break;
                            case 7:
                                i12 = 1;
                                i10 = i12;
                                i11 = i10;
                                break;
                            default:
                                i12 = 0;
                                i10 = i12;
                                i11 = i10;
                                break;
                        }
                        qt.y0(19, i12);
                        qt.y0(18, i10);
                        qt.y0(20, i11);
                        int i49 = b13 & DhcpPacket.DHCP_DOMAIN_NAME;
                        qt.y0(21, i49);
                        if (i49 != 0) {
                            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                                qt.y0(27, b15 & 255);
                                qt.y0(28, b14 & 255);
                            } else {
                                qt.y0(27, b14 & 255);
                                qt.y0(28, b15 & 255);
                            }
                        }
                        qt.y0(17, (bArr[i2 + 8] >> 7) & 1);
                        if (nt.a()) {
                            int i50 = bArr[i2 + 7] & 255;
                            if (i50 == 255 || i50 == 0) {
                                u0.d.A3(0);
                            } else {
                                u0.d.A3((i50 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                            }
                        }
                    }
                    break;
                }
                break;
            default:
                switch (i13) {
                    case 38:
                        if (nt.a()) {
                            int i51 = nt.f8633a;
                            if (i51 == 262388 || i51 == 327924 || i51 == 1835252 || i51 == 1048820) {
                                u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                                u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                                u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                                u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                            } else {
                                u0.d.R2(l0.c0.L0(bArr[i2 + 2] & 255));
                                u0.d.S2(l0.c0.L0(bArr[i2 + 3] & 255));
                                u0.d.T2(l0.c0.L0(bArr[i2 + 4] & 255));
                                u0.d.U2(l0.c0.L0(bArr[i2 + 5] & 255));
                            }
                        }
                        break;
                    case 39:
                        if (nt.a()) {
                            int i52 = nt.f8633a;
                            if (i52 == 262388 || i52 == 327924 || i52 == 1835252 || i52 == 1048820) {
                                u0.d.D2(l0.c0.K0(bArr[i2 + 2] & 255));
                                u0.d.E2(l0.c0.K0(bArr[i2 + 3] & 255));
                                u0.d.F2(l0.c0.K0(bArr[i2 + 4] & 255));
                                u0.d.G2(l0.c0.K0(bArr[i2 + 5] & 255));
                            } else {
                                u0.d.D2(l0.c0.L0(bArr[i2 + 2] & 255));
                                u0.d.E2(l0.c0.L0(bArr[i2 + 3] & 255));
                                u0.d.F2(l0.c0.L0(bArr[i2 + 4] & 255));
                                u0.d.G2(l0.c0.L0(bArr[i2 + 5] & 255));
                            }
                        }
                        break;
                    case 40:
                        byte b16 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(2, (b16 >> 6) & 1);
                            qt.y0(1, (b16 >> 7) & 1);
                        } else {
                            qt.y0(2, (b16 >> 7) & 1);
                            qt.y0(1, (b16 >> 6) & 1);
                        }
                        qt.y0(4, (b16 >> 5) & 1);
                        qt.y0(3, (b16 >> 4) & 1);
                        qt.y0(0, (b16 >> 2) & 1);
                        qt.y0(5, (b16 >> 3) & 1);
                        int i53 = nt.f8637c;
                        if (i53 == 2 || i53 == 3) {
                            qt.y0(Process.MEDIA_UID, (bArr[i2 + 4] & 255) - 1);
                            int i54 = (b16 >> 1) & 1;
                            if (u0.b.f17347o == 0) {
                                if (i54 != 0) {
                                    if (!o1.u.T(a.b.O)) {
                                        qt.t();
                                    }
                                } else if (o1.u.T(a.b.O)) {
                                    qt.f();
                                }
                                break;
                            }
                        }
                        break;
                    case 41:
                        byte b17 = bArr[i2 + 2];
                        byte b18 = bArr[i2 + 3];
                        byte b19 = bArr[i2 + 4];
                        qt.y0(100, b17 & 255);
                        qt.y0(101, b18 & 255);
                        qt.y0(99, b19 & 255);
                        qt.y0(159, bArr[i2 + 5] & 255);
                        break;
                    default:
                        switch (i13) {
                            case 48:
                                if (!this.A) {
                                    int i55 = nt.f8633a;
                                    if (i55 == 393460 || i55 == 655604 || i55 == 1179892 || i55 == 852212) {
                                        qt.n(bArr[i2 + 3], bArr[i2 + 2], false, 10200);
                                    } else {
                                        qt.i(bArr[i2 + 3], bArr[i2 + 2], true, 5500);
                                    }
                                    break;
                                }
                                break;
                            case 49:
                                int i56 = i2 + 2;
                                qt.y0(102, (bArr[i56] >> 4) & 15);
                                qt.y0(103, (bArr[i56] >> 0) & 15);
                                int i57 = i2 + 3;
                                qt.y0(104, (bArr[i57] >> 4) & 15);
                                qt.y0(105, (bArr[i57] >> 3) & 1);
                                qt.y0(106, (bArr[i57] >> 2) & 1);
                                qt.y0(108, (bArr[i57] >> 1) & 1);
                                qt.y0(109, (bArr[i57] >> 0) & 1);
                                int i58 = i2 + 4;
                                qt.y0(110, (bArr[i58] >> 7) & 1);
                                qt.y0(111, (bArr[i58] >> 6) & 1);
                                qt.y0(112, (bArr[i58] >> 4) & 3);
                                qt.y0(113, (bArr[i58] >> 3) & 1);
                                qt.y0(114, (bArr[i58] >> 2) & 1);
                                qt.y0(115, (bArr[i58] >> 1) & 1);
                                qt.y0(116, (bArr[i58] >> 0) & 1);
                                int i59 = i2 + 5;
                                qt.y0(117, (bArr[i59] >> 7) & 1);
                                qt.y0(118, (bArr[i59] >> 6) & 1);
                                qt.y0(119, (bArr[i59] >> 5) & 1);
                                qt.y0(120, (bArr[i59] >> 4) & 1);
                                qt.y0(123, (bArr[i59] >> 2) & 1);
                                int i60 = i2 + 6;
                                qt.y0(124, (bArr[i60] >> 7) & 1);
                                qt.y0(125, (bArr[i60] >> 6) & 1);
                                qt.y0(126, (bArr[i60] >> 4) & 3);
                                qt.y0(127, (bArr[i60] >> 3) & 1);
                                qt.y0(128, (bArr[i60] >> 2) & 1);
                                qt.y0(129, (bArr[i60] >> 1) & 1);
                                qt.y0(130, (bArr[i60] >> 0) & 1);
                                int i61 = i2 + 7;
                                qt.y0(131, (bArr[i61] >> 7) & 1);
                                qt.y0(132, (bArr[i61] >> 6) & 1);
                                qt.y0(133, (bArr[i61] >> 5) & 1);
                                qt.y0(134, (bArr[i61] >> 4) & 1);
                                qt.y0(135, (bArr[i61] >> 3) & 1);
                                qt.y0(165, (bArr[i61] >> 0) & 7);
                                int i62 = i2 + 8;
                                qt.y0(174, (bArr[i62] >> 6) & 1);
                                qt.y0(175, (bArr[i62] >> 5) & 1);
                                qt.y0(176, (bArr[i62] >> 0) & 31);
                                int i63 = i2 + 9;
                                qt.y0(166, (bArr[i63] >> 7) & 1);
                                qt.y0(177, (bArr[i63] >> 5) & 1);
                                qt.y0(167, (bArr[i63] >> 2) & 3);
                                qt.y0(178, (bArr[i63] >> 0) & 3);
                                int i64 = i2 + 10;
                                qt.y0(168, (bArr[i64] >> 7) & 1);
                                qt.y0(169, (bArr[i64] >> 2) & 3);
                                qt.y0(170, (bArr[i64] >> 0) & 3);
                                int i65 = i2 + 11;
                                qt.y0(160, (bArr[i65] >> 7) & 1);
                                qt.y0(161, (bArr[i65] >> 6) & 1);
                                qt.y0(162, (bArr[i65] >> 5) & 1);
                                qt.y0(163, (bArr[i65] >> 4) & 1);
                                qt.y0(158, (bArr[i65] >> 0) & 15);
                                int i66 = i2 + 12;
                                qt.y0(171, (bArr[i66] >> 6) & 3);
                                qt.y0(172, (bArr[i66] >> 5) & 1);
                                qt.y0(173, (bArr[i66] >> 4) & 1);
                                qt.y0(179, (bArr[i66] >> 3) & 1);
                                qt.y0(180, (bArr[i66] >> 2) & 1);
                                qt.y0(181, (bArr[i66] >> 0) & 3);
                                int i67 = i2 + 13;
                                qt.y0(182, (bArr[i67] >> 7) & 1);
                                qt.y0(183, (bArr[i67] >> 6) & 1);
                                qt.y0(184, (bArr[i67] >> 4) & 3);
                                qt.y0(185, (bArr[i67] >> 0) & 15);
                                break;
                            case 50:
                                int i68 = i2 + 2;
                                byte b20 = bArr[i68];
                                qt.y0(107, bArr[i68] & 255);
                                break;
                            case 51:
                                byte b21 = bArr[i2 + 2];
                                int i69 = this.Q;
                                if (b21 != i69) {
                                    boolean z2 = this.R;
                                    if (z2 || u0.b.f17306a0 != 1) {
                                        if (z2) {
                                            this.R = false;
                                        }
                                    } else if (b21 > i69) {
                                        for (int i70 = 0; i70 < b21 - this.Q; i70++) {
                                            l0.b0.l0(7, 0);
                                        }
                                        l0.b0.l0(7, 1);
                                    } else if (b21 < i69) {
                                        for (int i71 = 0; i71 < this.Q - b21; i71++) {
                                            l0.b0.l0(8, 0);
                                        }
                                        l0.b0.l0(8, 1);
                                    }
                                    this.Q = b21;
                                }
                                break;
                            default:
                                switch (i13) {
                                    case 55:
                                        qt.y0(136, bArr[i2 + 2] & 255);
                                        qt.y0(137, bArr[i2 + 3] & 255);
                                        qt.y0(138, bArr[i2 + 4] & 255);
                                        qt.y0(139, bArr[i2 + 5] & 255);
                                        qt.y0(140, bArr[i2 + 6] & 255);
                                        qt.y0(141, bArr[i2 + 7] & 255);
                                        qt.y0(142, bArr[i2 + 8] & 3);
                                        qt.y0(143, bArr[i2 + 9] & 255);
                                        qt.y0(144, bArr[i2 + 10] & 255);
                                        qt.y0(145, bArr[i2 + 11] & 255);
                                        break;
                                    case 56:
                                        int i72 = i2 + 2;
                                        qt.y0(146, (bArr[i72] >> 6) & 3);
                                        qt.y0(147, (bArr[i72] >> 4) & 3);
                                        qt.y0(148, (bArr[i72] >> 0) & 15);
                                        qt.y0(149, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                        qt.y0(150, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                                        qt.y0(151, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                                        qt.y0(152, (bArr[i2 + 10] & 255) | ((bArr[i2 + 9] << 8) & 65280));
                                        break;
                                    case 57:
                                        int i73 = i2 + 1;
                                        if (bArr[i73] > 3) {
                                            try {
                                                str = new String(bArr, i2 + 5, bArr[i73] - 3, "UTF-8");
                                            } catch (UnsupportedEncodingException e2) {
                                                e2.printStackTrace();
                                                str = ProxyProperties.LOCAL_EXCL_LIST;
                                            }
                                            byte b22 = bArr[i2 + 2];
                                            if (b22 == 1) {
                                                qt.x0(153, str);
                                                break;
                                            } else if (b22 == 2) {
                                                qt.x0(154, str);
                                                break;
                                            } else if (b22 == 3) {
                                                qt.x0(155, str);
                                                break;
                                            }
                                        }
                                        break;
                                    default:
                                        switch (i13) {
                                            case 63:
                                                int i74 = i2 + 2;
                                                qt.y0(156, (bArr[i74] >> 0) & 1);
                                                qt.y0(157, (bArr[i74] >> 1) & 1);
                                                break;
                                            case 64:
                                                int i75 = bArr[i2 + 2] & 255;
                                                if (u0.b.f17347o == 0) {
                                                    if (i75 != 0) {
                                                        if (!o1.u.T(a.b.O)) {
                                                            qt.t();
                                                        }
                                                    } else if (o1.u.T(a.b.O)) {
                                                        qt.f();
                                                    }
                                                }
                                                break;
                                            case 65:
                                                int i76 = nt.f8637c;
                                                if (i76 != 20 && i76 != 21 && i76 != 26 && i76 != 36) {
                                                    if (bArr[i2 + 2] == 1) {
                                                        qt.a(1);
                                                    } else {
                                                        qt.a(0);
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
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f14565b.j();
        E3(this.f14565b.b(1, 0));
        qt.q0(this.U);
        qt.q0(this.T);
        z.c.f18184d.d(this.S);
        u0.c.f17386m.d(this.Z);
        qt.q0(this.L);
        h0.d.f2464c.d(this.O);
        h0.d.f2462a.d(this.O);
        l0.b0.p0(this.X);
        l0.b0.p0(this.W);
        u0.c.f17374a.d(this.K);
        u0.c.f17388o.d(this.H);
        u0.c.f17389p.d(this.I);
        u0.c.f17379f.d(this.f14566b0);
        o1.h.f16865a.d(this.F);
        qt.o0(this.B);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 186) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (nt.f8637c == 3) {
                z.k.s(227, 51, 5, iArr[0], this.f14590y[this.f14591z % 2], 37, 33, 170);
                z.k.s(227, 51, 5, iArr[0], this.f14590y[this.f14591z % 2], 37, 33, 170);
                z.k.s(227, 51, 5, iArr[0], this.f14590y[this.f14591z % 2], 37, 33, 170);
            } else {
                z.k.s(227, 51, 5, iArr[0], this.f14590y[this.f14591z % 2], 37, 32, 170);
                z.k.s(227, 51, 5, iArr[0], this.f14590y[this.f14591z % 2], 37, 32, 170);
                z.k.s(227, 51, 5, iArr[0], this.f14590y[this.f14591z % 2], 37, 32, 170);
            }
            int i3 = this.f14591z + 1;
            this.f14591z = i3;
            this.f14591z = i3 % 2;
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            this.f14580o = 6;
            z.k.s(227, -124, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            if (iArr[0] == 255) {
                F3(iArr[1]);
                return;
            } else {
                z.k.s(227, 131, 3, iArr[0], iArr[1], 0);
                return;
            }
        }
        if (i2 == 4) {
            J3(new byte[]{46, -57, 6, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2], (byte) iArr[3], (byte) iArr[4], (byte) iArr[5], 0});
            if (iArr[0] == 0 && iArr[1] == 0 && iArr[2] == 0 && iArr[3] == 0 && iArr[4] == 0 && iArr[5] == 0) {
                a.i.a0(100L);
                J3(new byte[]{46, -112, 1, 33, 0});
            }
            this.Y = 1;
            return;
        }
        if (i2 == 1003) {
            if (nt.f8637c == 24) {
                z.k.s(227, 131, 3, 26, 1, 0);
                a.i.a0(100L);
                z.k.s(227, 131, 3, 26, 0, 0);
                return;
            } else if (u0.b.f17347o == 1) {
                z.k.s(227, 131, 3, 1, 0, 0);
                return;
            } else {
                z.k.s(227, 131, 3, 1, 1, 0);
                return;
            }
        }
        if (i2 == 1005) {
            int i4 = nt.f8637c;
            if (i4 != 0 && i4 != 1 && i4 != 4 && i4 != 5 && i4 != 28) {
                if (iArr[0] == 10) {
                    z.k.s(227, 131, 3, 10, 5, 0);
                    return;
                } else {
                    z.k.s(227, 131, 3, 10, iArr[0] + 1, 0);
                    return;
                }
            }
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 2) {
                iArr[0] = 2;
            }
            iArr[0] = iArr[0] + 1;
            E3(iArr[0]);
            return;
        }
        if (i2 != 1029) {
            switch (i2) {
                case 6:
                    if (iArr != null && iArr.length >= 2) {
                        z.k.s(227, 224, 2, iArr[0], iArr[1]);
                        break;
                    }
                    break;
                case 7:
                    if (iArr != null && iArr.length >= 2) {
                        z.k.s(227, 136, 3, iArr[0], iArr[1], iArr[2]);
                        break;
                    }
                    break;
                case 8:
                    if (iArr != null && iArr.length >= 2) {
                        z.k.s(227, 134, 2, iArr[0], iArr[1]);
                        break;
                    }
                    break;
                case 9:
                    if (iArr != null && iArr.length >= 2) {
                        z.k.s(227, 144, 2, iArr[0], iArr[1]);
                        break;
                    }
                    break;
            }
            return;
        }
        if (T2(iArr, 2)) {
            a.f.p().t(LogType.CANBUS, "touch_x = " + iArr[1] + "\\\\\\touch_y = " + iArr[2] + "touch_state = " + iArr[0]);
            if (App.c().getResources().getConfiguration().orientation != 1) {
                int i5 = iArr[1];
                int i6 = iArr[2];
                if (iArr[0] == 0) {
                    if (i5 > a.f.w() - ((a.f.w() * 70) / 1024) && i6 < (a.f.i() * 70) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                        z.k.s(227, 131, 3, 10, 5, 0);
                        return;
                    }
                    if (i5 < (a.f.w() * MediaProperties.HEIGHT_360) / 1024 && i6 < (a.f.i() * 150) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                        z.k.s(227, 131, 3, 10, 1, 0);
                        return;
                    }
                    if (i5 < (a.f.w() * 100) / 1024 && i6 < (a.f.i() * 450) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR && i6 > (a.f.i() * 200) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                        z.k.s(227, 131, 3, 10, 3, 0);
                        return;
                    }
                    if (i5 < (a.f.w() * 420) / 1024 && i5 > (a.f.w() * 220) / 1024 && i6 < (a.f.i() * 450) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR && i6 > (a.f.i() * 200) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                        z.k.s(227, 131, 3, 10, 4, 0);
                    } else {
                        if (i5 >= (a.f.w() * 260) / 1024 || i6 <= (a.f.i() * 480) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                            return;
                        }
                        z.k.s(227, 131, 3, 10, 2, 0);
                    }
                }
            }
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f14561f0 = f14562g0[o0.a(i2, 0, 36)];
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00e4  */
    public final void a3() {
        b3();
        int i2 = 0;
        switch (u0.b.D) {
            case 0:
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
            case 11:
            case 12:
            case 13:
            case 14:
                break;
            case 1:
                int[] iArr = new int[6];
                int i3 = w0.d.f17798j;
                iArr[0] = 194;
                iArr[1] = 4;
                int i4 = w0.d.f17796h;
                if (i4 != 0 && i4 != 1) {
                    switch (i4) {
                        case 65536:
                            iArr[2] = 1;
                            if (i3 >= 65536) {
                                i3 -= 65536;
                            }
                            break;
                        case 65537:
                            iArr[2] = 2;
                            if (i3 >= 65536) {
                                i3 -= 65536;
                            }
                            break;
                        case 65538:
                            iArr[2] = 0;
                            if (i3 >= 65536) {
                                i3 -= 65536;
                            }
                            break;
                    }
                } else {
                    iArr[2] = 16;
                }
                int i5 = w0.d.f17797i;
                iArr[3] = i5 & 255;
                iArr[4] = (i5 >> 8) & 255;
                int i6 = i3 % 6;
                if (i6 != 0 || i3 == 0) {
                    iArr[5] = i6;
                } else {
                    iArr[5] = 6;
                }
                int[] iArr2 = new int[7];
                iArr2[0] = 227;
                while (i2 < 6) {
                    int i7 = i2 + 1;
                    iArr2[i7] = iArr[i2];
                    i2 = i7;
                }
                z.k.s(iArr2);
                break;
            case 4:
                int[] iArr3 = new int[8];
                iArr3[0] = 195;
                iArr3[1] = 6;
                if (o0.e.H == 1) {
                    iArr3[2] = o0.e.C;
                    iArr3[3] = o0.e.B;
                    int i8 = o0.e.f16794r;
                    iArr3[6] = (i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                    iArr3[7] = i8 % 60;
                } else {
                    int i9 = o0.e.C;
                    iArr3[2] = i9 & 255;
                    iArr3[3] = (i9 >> 8) & 255;
                    int i10 = o0.e.B;
                    iArr3[4] = i10 & 255;
                    iArr3[5] = (i10 >> 8) & 255;
                    int i11 = o0.e.f16794r;
                    iArr3[6] = (i11 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                    iArr3[7] = i11 % 60;
                }
                int[] iArr4 = new int[9];
                iArr4[0] = 227;
                while (i2 < 8) {
                    int i12 = i2 + 1;
                    iArr4[i12] = iArr3[i2];
                    i2 = i12;
                }
                z.k.s(iArr4);
                break;
            case 8:
            case 10:
                int i13 = u0.b.u3;
                int i14 = u0.b.t3;
                int[] iArr5 = {195, 6, u0.b.s3 & 255, u0.b.r3 & 255, (i13 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, (i13 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60, (i14 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, (i14 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60};
                int[] iArr6 = new int[9];
                iArr6[0] = 227;
                while (i2 < 8) {
                    int i15 = i2 + 1;
                    iArr6[i15] = iArr5[i2];
                    i2 = i15;
                }
                z.k.s(iArr6);
                break;
            case 9:
            default:
                z.k.s(227, 194, 4, 0, 0, 0, 0);
                z.k.s(227, 195, 6, 0, 0, 0, 0, 0, 0);
                break;
        }
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
        if (this.f14577l + bArr.length > 1024) {
            this.f14577l = 0;
            this.f14578m = 0;
            this.f14579n = 0;
        }
        System.arraycopy(bArr, 0, this.f14576k, this.f14577l, bArr.length);
        int length = this.f14577l + bArr.length;
        this.f14577l = length;
        int i5 = this.f14579n;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f14576k[1];
            int i6 = 2;
            while (true) {
                i4 = this.f14579n;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f14576k[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f14576k;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f14578m = this.f14579n + 1;
            } else {
                this.f14578m = 1;
            }
            this.f14579n = 0;
        }
        int i7 = this.f14577l - 2;
        while (true) {
            i2 = this.f14578m;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f14576k;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f14579n = i8;
                int i9 = i8 + i2 + 3;
                this.f14579n = i9;
                if (i9 >= this.f14577l) {
                    this.f14579n = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f14579n;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f14576k[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f14576k;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f14578m;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f14578m = this.f14579n;
                } else {
                    this.f14578m++;
                }
                this.f14579n = 0;
            }
            this.f14578m++;
        }
        if (i2 != 0) {
            int i12 = this.f14577l - i2;
            this.f14577l = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f14576k;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f14578m = 0;
        }
    }

    public final void c3(int i2) {
        int i3 = nt.f8637c;
        if (i3 == 2 || i3 == 3) {
            Z0(0, new int[]{i2}, null, null);
            return;
        }
        z.k.s(227, -124, 2, i2, 1);
        a.i.a0(200L);
        z.k.s(227, -124, 2, i2, 0);
    }

    public final void d3(int i2, int i3) {
        z.k.s(227, -121, 2, i2, i3);
    }

    public final void init() {
        f14563h0.f(1, new t(1, 100));
    }

    public final void z3(String str) {
        Intent intent = new Intent("com.syu.execute_tts");
        intent.putExtra("raw_text", str);
        intent.setPackage("com.syu.voice");
        App.c().startService(intent);
    }
}
