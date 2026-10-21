package f1;

import android.net.ConnectivityManager;
import android.net.LinkQualityInfo;
import android.net.ProxyProperties;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TimedRemoteCaller;
import app.App;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import java.io.File;
import o1.l0;
import o1.s0;
import o1.x;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class a extends q {
    public static String G0 = "2815S";
    public static int H0 = 2130903145;
    public static int I0 = 2130903139;
    public static int J0 = 2130903138;
    public static int K0 = 2130903140;
    public static int L0 = 2130903135;
    public static int M0 = 2130903136;
    public static int N0 = 2130903144;
    public static int O0 = 2130903143;
    public static int P0 = 2130903141;
    public static int Q0 = 2130903142;
    public Runnable A0;
    public Runnable B0;
    public final Runnable C0;
    public final Runnable D0;
    public Runnable E0;
    public SparseArray<Object> F0;
    public Handler P;
    public final boolean Q;
    public final String R;
    public final String S;
    public final String T;
    public final int U;
    public final int V;
    public final int W;
    public boolean X;
    public final int Y;
    public final int Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f1884a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final int f1885b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final SparseIntArray f1886c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final SparseIntArray f1887d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final SparseIntArray f1888e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final SparseIntArray f1889f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final SparseIntArray f1890g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final SparseIntArray f1891h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f1892i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final int f1893j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public l0 f1894k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public l0 f1895l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public l0 f1896m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public l0 f1897n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public l0 f1898o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public l0 f1899p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f1900q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public int f1901r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public int f1902s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public boolean f1903t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public q1.b f1904u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public boolean f1905v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public final Runnable f1906w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public final Runnable f1907x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public boolean f1908y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public boolean f1909z0;

    /* JADX INFO: renamed from: f1.a$a, reason: collision with other inner class name */
    public class RunnableC0040a implements Runnable {
        public RunnableC0040a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            if (aVar.f2160x) {
                return;
            }
            aVar.R();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.D();
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1912a = -1;

        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = this.f1912a;
            int i3 = u0.b.f17306a0;
            if (i2 != i3) {
                this.f1912a = i3;
                boolean z2 = i3 == 1;
                a aVar = a.this;
                if (aVar.f1909z0 != z2) {
                    aVar.f1909z0 = z2;
                    aVar.f2155s.removeCallbacks(aVar.f1907x0);
                    a aVar2 = a.this;
                    if (!aVar2.f1909z0) {
                        aVar2.H(false);
                        return;
                    }
                    Handler handler = aVar2.f2155s;
                    if (handler != null) {
                        handler.postDelayed(aVar2.f1907x0, 600L);
                    }
                }
            }
        }
    }

    public class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1914a = -1;

        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = this.f1914a;
            int i3 = u0.b.f17323g;
            if (i2 != i3) {
                this.f1914a = i3;
                boolean z2 = i3 == 1;
                a aVar = a.this;
                if (aVar.f1909z0 != z2) {
                    aVar.f1909z0 = z2;
                    aVar.f2155s.removeCallbacks(aVar.f1907x0);
                    a aVar2 = a.this;
                    if (!aVar2.f1909z0) {
                        aVar2.H(false);
                        return;
                    }
                    Handler handler = aVar2.f2155s;
                    if (handler != null) {
                        handler.postDelayed(aVar2.f1907x0, 600L);
                    }
                }
            }
        }
    }

    public class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1916a = false;

        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.e(a.G0, "==============================>> 2815 DataMain.sAccOn : " + u0.b.f17306a0 + " chipid : " + a.this.f2144h);
            boolean z2 = u0.b.f17306a0 == 1 && u0.b.f17320f == 1;
            if (this.f1916a != z2) {
                this.f1916a = z2;
                if (!z2) {
                    a.this.H(false);
                    return;
                }
                a aVar = a.this;
                Handler handler = aVar.f2155s;
                if (handler != null) {
                    handler.postDelayed(aVar.f1907x0, 600L);
                }
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.e(a.G0, " ========>>  flushParams  success!! ");
            if (a.this.f2154r) {
                u0.d.I3(137, 1);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.P.removeCallbacks(this);
            a.this.P.postDelayed(this, 2000L);
            if (s0.l("img.read", false)) {
                s0.F("img.read", "false");
                int[] iArrA = s0.A(App.c(), R.raw.tp2815_mipi_4ch_720p4lane, 16);
                Log.e(a.G0, "==========>>> READ IIC DATA:");
                int length = iArrA.length / 2;
                for (int i2 = 0; i2 < length; i2++) {
                    int i3 = i2 * 2;
                    int i4 = iArrA[i3] & 255;
                    int iA = iArrA[i3 + 1];
                    if (i4 == 64) {
                        a.this.V(i4, iA);
                    } else if (i4 != 255) {
                        iA = a.this.A(i4);
                    }
                    Log.e(a.G0, String.format("[%02X - %02X]", Integer.valueOf(i4), Integer.valueOf(iA)));
                }
            }
        }
    }

    public a(int i2, p1.a aVar, int i3, Handler handler) {
        this(12, i2, aVar, i3, handler);
    }

    @Override // f1.q
    public int A(int i2) {
        return super.A(i2);
    }

    @Override // f1.q
    public boolean C(int i2, y.b bVar) {
        x xVarL2 = u0.i.l3().L2();
        if (!this.f1905v0 || i2 != 69) {
            return false;
        }
        Log.e("Signal", "   ==========>>>2815S register()  " + bVar + "  chipId : " + this.f2144h + " videoId: " + this.f2146j + " imageSignal: " + this.f2150n + " mSignalOn: " + this.f1902s0);
        if (xVarL2 != null) {
            xVarL2.G(bVar, i2, this.f1902s0, this.f2146j);
        }
        return true;
    }

    @Override // f1.q
    public void D() {
        super.D();
        this.f1902s0 = 0;
        if (this.f1905v0) {
            o.g().E(this.f2144h, this.f1902s0);
        }
        J(false);
        Log.e(G0, "==============================>> 2815 RESET Waiting onUEvent ");
        ToolsJni.cmd_33_reset_videoIc(this.f2144h);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    @Override // f1.q
    public void H(boolean z2) {
        ?? r5 = z2;
        if (!this.f1908y0 && !this.f1909z0) {
            r5 = z2;
            r5 = 0;
        }
        r5 = z2;
        Log.e(G0, " ========>>  setLoaded()  loaded: " + ((boolean) r5) + "  DataMain.sScreenOn = " + u0.b.f17323g);
        this.f2155s.removeCallbacks(this.D0);
        if (this.f2154r != r5) {
            this.f2154r = r5;
            s0.F("syu.imageic.inited", r5 != 0 ? "1" : "0");
            if (r5 == 0) {
                u0.d.I3(137, r5);
            }
        }
        if (r5 != 0) {
            this.f2155s.postDelayed(this.D0, 800L);
        }
    }

    @Override // f1.q
    public void I(boolean z2) {
        int i2;
        if (this.D) {
            Log.e(G0, "setReadyToReversing:  last readyToReversing  : " + this.f2160x + "    readyToReversing: " + z2);
        } else {
            Log.e(G0, this + " isSupportReversing:  " + this.D);
        }
        if (!this.D || this.f2160x == z2) {
            return;
        }
        R();
        this.f2160x = z2;
        boolean z3 = z2 && SystemProperties.getBoolean("persist.lesc.video.ignore", false);
        if (SystemClock.elapsedRealtime() > 50000) {
            i2 = z3 ? 0 : 2000;
        } else {
            i2 = ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT;
        }
        this.f2151o = i2;
        if (z2) {
            this.f2162z = SystemClock.elapsedRealtime();
            S();
            return;
        }
        Log.e(G0, "   ==========>>> 003    reversing    :   HandlerMain.backcar(0);  chipid : " + this.f2144h);
        u0.d.C(0);
        if (!m()) {
            a();
        }
        Log.e(G0, "EXIT setReadyToReversing:  last readyToReversing  : " + this.f2160x + "    readyToReversing: " + z2 + "   recersingBeforeChannel : " + this.f2161y + " chipid : " + this.f2144h);
        if (this.f2161y != 0) {
            s0.C(150L);
            if (this.f2143g.contains(Integer.valueOf(this.f2161y))) {
                c(this.f2161y);
            }
            Q();
            this.f2161y = 0;
            this.f2162z = 2147483647L;
        }
    }

    @Override // f1.q
    public boolean M() {
        if (!this.f2154r) {
            D();
        }
        if (n()) {
            return true;
        }
        return this.f2154r;
    }

    @Override // f1.q
    public void Q() {
        if (this.f2153q) {
            return;
        }
        super.Q();
    }

    @Override // f1.q
    public void R() {
        if (u0.b.n4 == 0) {
            super.R();
        }
    }

    @Override // f1.q
    public void S() {
        Log.e(G0, "   ==========>>>syncReservingk()    loaded : " + this.f2154r + " readyToReversing: " + this.f2160x + " chip id = " + this.f2144h + " type : " + this.G);
        if (this.D) {
            if (!this.f2154r) {
                p();
            }
            if (this.f2160x) {
                if (!m()) {
                    this.f2161y = this.f2145i;
                    Log.e(G0, "  closeVideo 000");
                    R();
                    a();
                    c(E());
                }
                Q();
            }
        }
    }

    @Override // f1.q
    public void T(int i2, int i3) {
        if (i2 == 0) {
            i2 = 10;
        }
        super.T(i2, i3);
    }

    @Override // f1.q
    public int W(int i2, int i3, int i4) {
        return super.W(i2, i3, i4);
    }

    public synchronized boolean X(int i2) {
        boolean zQ;
        q.b bVar;
        if (this.f2158v) {
            return false;
        }
        if (i2 != -1) {
            s0.F("persist.syu.camera360.format", ProxyProperties.LOCAL_EXCL_LIST + i2);
        }
        boolean z2 = s0.m("persist.syu.ahd360", 1) == 1;
        Log.e(G0, "flushNtscPal  ntcsPal: " + i2 + "   i2cInvalid: " + this.f2158v + " ahd : " + z2);
        if (i2 == 0) {
            Log.e(G0, "flushNtscPal  NOR_CVBS_NTSC");
            zQ = q(s0.A(App.c(), P0, 16));
        } else if (i2 == 1) {
            Log.e(G0, "flushNtscPal  NOR_CVBS_PAL");
            zQ = q(s0.A(App.c(), Q0, 16));
        } else if (i2 == 2) {
            String str = G0;
            StringBuilder sb = new StringBuilder();
            sb.append("flushNtscPal ");
            sb.append(z2 ? "AHD_720P_25FPS" : "TVI_720P_25FPS");
            Log.e(str, sb.toString());
            zQ = q(s0.A(App.c(), z2 ? H0 : I0, 16));
        } else if (i2 == 3) {
            String str2 = G0;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("flushNtscPal ");
            sb2.append(z2 ? "AHD_720P_30FPS" : "TVI_720P_30FPS");
            Log.e(str2, sb2.toString());
            zQ = q(s0.A(App.c(), z2 ? J0 : K0, 16));
        } else if (i2 == 6) {
            Log.e(G0, "flushNtscPal  TVI_1080P_25FPS");
            zQ = q(s0.A(App.c(), z2 ? N0 : O0, 16));
        } else if (i2 == 7) {
            Log.e(G0, "flushNtscPal  TVI_1080P_30FPS");
            zQ = q(s0.A(App.c(), z2 ? L0 : M0, 16));
        } else if (i2 != 13) {
            String str3 = G0;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("flushNtscPal ");
            sb3.append(z2 ? "AHD_720P_25FPS" : "TVI_720P_25FPS");
            Log.e(str3, sb3.toString());
            zQ = q(s0.A(App.c(), H0, 16));
        } else {
            Log.e(G0, "flushNtscPal  NOR_AHD_DVD_NTSC");
            zQ = q(s0.A(App.c(), H0, 16));
        }
        if (zQ && (bVar = this.J) != null) {
            bVar.a(this, i2);
        }
        if (zQ) {
            e0(i2);
            this.f1900q0 = 0;
            u0.c.P.c(Integer.valueOf(i2));
        }
        return zQ;
    }

    public int Y(int i2) {
        int i3;
        synchronized (this.f2157u) {
            if (n()) {
                return 1;
            }
            V(64, i2 & 255);
            int iA = A(1) & 255;
            int i4 = this.f1887d0.get(i2, 0);
            int iC = s0.c(i4, 1);
            int iC2 = s0.c(i4, 0);
            if ((iA & 112) == 112) {
                if (iC < 3) {
                    iC++;
                }
                if (iC2 > 0) {
                    iC2--;
                }
            } else if ((iA & 96) == 96) {
                if (iC2 < 3) {
                    iC2++;
                }
                if (iC > 0) {
                    iC--;
                }
            } else if (iC > 0 || iC2 > 0) {
                if (iC == 3) {
                    iC = 0;
                } else if (iC > 0) {
                    iC--;
                }
                if (iC2 == 3) {
                    iC2 = 0;
                } else if (iC2 > 0) {
                    iC2--;
                }
            }
            this.f1887d0.put(i2, s0.x(iC, iC2));
            if (iC < 3 || iC2 > 0) {
                i3 = (iC2 < 3 || iC > 0) ? 0 : -1;
            } else {
                i3 = 1;
            }
            l0 l0Var = null;
            if (i2 == 0) {
                l0Var = this.f1896m0;
            } else if (i2 == 1) {
                l0Var = this.f1897n0;
            } else if (i2 == 2) {
                l0Var = this.f1898o0;
            } else if (i2 == 3) {
                l0Var = this.f1899p0;
            }
            if (l0Var != null && l0Var.c(500)) {
                l0Var.a();
                Log.e(G0, "  hasSignalOfCameraAt()   index :" + i2 + " imagType :  " + this.f2145i + " last  imagFormat :  " + this.f2147k + " tmp signalOn : " + this.X + " colorCnt :  " + iC + " blackWhiteCnt : " + iC2 + String.format("    0x01 REG : %03X   0x03 REG : %03X", Integer.valueOf(iA), Integer.valueOf(A(3))) + " loaded:" + this.f2154r);
            }
            return i3;
        }
    }

    public final int Z() {
        int iM = s0.m("persist.syu.camera360.format", 2);
        this.f2147k = iM;
        if (iM != 2 && iM != 6 && iM != 7 && iM != 3) {
            this.f2147k = 2;
        }
        return this.f2147k;
    }

    @Override // f1.q, e1.l
    public void a() {
        super.a();
        this.f2145i = 10;
    }

    public void a0(boolean z2) {
        if (u0.b.n4 != 1) {
            this.f1900q0 = 0;
            this.f1901r0 = 0;
            return;
        }
        if (u0.b.f17320f != 1 || u0.b.f17306a0 != 1) {
            this.f1900q0 = 3;
            this.f1901r0 = 0;
            return;
        }
        if (this.f1894k0.c(1000)) {
            this.f1894k0.a();
            if (z2) {
                this.f1900q0 = 0;
                return;
            }
            int i2 = this.f1900q0 + 1;
            this.f1900q0 = i2;
            if (i2 >= 5) {
                D();
                int i3 = this.f1901r0;
                if (i3 < 2) {
                    this.f1901r0 = i3 + 1;
                }
                this.f1900q0 = 0;
            }
        }
    }

    @Override // f1.q, e1.l
    public void b() {
        super.b();
        this.f1900q0 = 0;
        this.f1901r0 = 0;
    }

    public int b0(int i2) {
        int iC0;
        if (n()) {
            return this.f2147k;
        }
        synchronized (this.f2157u) {
            V(64, i2 & 255);
            int i3 = 3;
            int iA = A(3);
            int i4 = iA & 7;
            switch (i4) {
                case 0:
                    i3 = 5;
                    break;
                case 1:
                    i3 = 4;
                    break;
                case 2:
                    i3 = 7;
                    break;
                case 3:
                    i3 = 6;
                    break;
                case 4:
                    break;
                case 5:
                    i3 = 2;
                    break;
                case 6:
                    i3 = ((A(1) >> 2) & 1) != 0 ? 1 : 0;
                    break;
                case 7:
                default:
                    i3 = -1;
                    break;
            }
            iC0 = c0(i2, i3);
            int i5 = this.f1889f0.get(i2, -1);
            if (this.f1895l0.c(500)) {
                Log.e(G0, String.format("index: %02X ntcsPal : %02X", Integer.valueOf(i2), Integer.valueOf(iA)) + "  flag = " + i4 + " format : " + iC0);
            }
            if (iC0 != i5) {
                this.f1889f0.put(i2, iC0);
            }
        }
        return iC0;
    }

    @Override // f1.q, e1.l
    public synchronized void c(int i2) {
        super.c(i2);
        Log.e(G0, "==============>>  openVideo  channel: " + i2);
        if (this.f2145i != i2) {
            this.f2145i = i2;
        }
        if (!this.f2154r) {
            p();
        }
    }

    public int c0(int i2, int i3) {
        int i4 = this.f1889f0.get(i2, -1);
        int i5 = this.f1891h0.get(i2, -1);
        int i6 = 0;
        int i7 = this.f1890g0.get(i2, 0);
        if (i4 != i3) {
            if (i3 != i5) {
                this.f1891h0.put(i2, i3);
                i3 = i4;
                i6 = 1;
            } else if (i7 < 3) {
                i6 = i7 + 1;
                i3 = this.f2147k;
            }
        }
        this.f1890g0.put(i2, i6);
        return i3;
    }

    @Override // f1.q, e1.l
    public void d() {
        Handler handler = this.f2155s;
        if (handler != null) {
            handler.removeCallbacks(this.f1907x0);
        }
        super.d();
    }

    public void d0(boolean z2) {
        this.f1905v0 = z2;
    }

    public final void e0(int i2) {
        q.c cVar = this.f2138b.get(i2);
        if (cVar == null || !cVar.a()) {
            return;
        }
        String strZ = z();
        if (g.f.n(12)) {
            strZ = this.f2144h == 0 ? "sys.fyt.main.vc_" : "sys.fyt.sub.vc_";
        }
        s0.F(strZ + "a.w", cVar.f2164a + ProxyProperties.LOCAL_EXCL_LIST);
        s0.F(strZ + "a.h", cVar.f2165b + ProxyProperties.LOCAL_EXCL_LIST);
        s0.F(strZ + "b.w", cVar.f2164a + ProxyProperties.LOCAL_EXCL_LIST);
        s0.F(strZ + "b.h", cVar.f2165b + ProxyProperties.LOCAL_EXCL_LIST);
        s0.F(strZ + "c.w", cVar.f2164a + ProxyProperties.LOCAL_EXCL_LIST);
        s0.F(strZ + "c.h", cVar.f2165b + ProxyProperties.LOCAL_EXCL_LIST);
        s0.F(strZ + "d.w", cVar.f2164a + ProxyProperties.LOCAL_EXCL_LIST);
        s0.F(strZ + "d.h", cVar.f2165b + ProxyProperties.LOCAL_EXCL_LIST);
    }

    public boolean f0(int i2) {
        boolean z2;
        synchronized (this.f2157u) {
            V(64, i2 & 255);
            z2 = true;
            if (((A(1) >> 7) & 1) != 0) {
                z2 = false;
            }
        }
        return z2;
    }

    @Override // e1.l
    public void h(int i2, int i3, int i4, int i5) {
        if (n() || this.f2158v || !this.f2154r) {
            return;
        }
        synchronized (this.f2157u) {
            V(64, i2 & 255);
            V(16, i3 & 255);
            V(17, i5 & 255);
            V(18, i4 & 255);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    @Override // f1.q
    public int k() {
        int iY;
        int iY2;
        if (!this.f2154r) {
            return 0;
        }
        if (u0.b.n4 == 0) {
            R();
            return 0;
        }
        boolean zL = s0.l("sys.syu.debug.camera", false);
        boolean zF0 = f0(2);
        int iY3 = Y(2);
        int i2 = iY3 == 1 ? 1 : 0;
        boolean zF1 = f0(3);
        int iY4 = Y(3);
        if (iY4 == 1) {
            i2 |= 2;
        }
        int i3 = zF1 ? (zF0 ? 1 : 0) + 1 : zF0 ? 1 : 0;
        if (this.f1892i0 > 2) {
            boolean zF2 = f0(1);
            iY = Y(1);
            if (iY == 1) {
                i2 |= 4;
            }
            if (zF2) {
                i3++;
            }
            boolean zF3 = f0(0);
            iY2 = Y(0);
            if (iY2 == 1) {
                i2 |= 8;
            }
            if (zF3) {
                i3++;
            }
        } else {
            iY = 0;
            iY2 = 0;
        }
        this.X = i3 >= this.f1892i0 / 2;
        if (zL) {
            this.X = zF0;
            i2 = 1;
        }
        if (this.X) {
            int iB0 = b0(2);
            int i4 = b0(3) == iB0 ? iB0 : -1;
            if (!zL) {
                iB0 = i4;
            }
            if (this.f1895l0.c(500)) {
                Log.e(G0, " checkSignal Signal signalOn :  " + this.X + " imagFormat :  " + this.f2147k + " format :  " + iB0);
            }
            if (iB0 != -1 && this.f2147k != iB0) {
                this.f2147k = iB0;
                this.f1901r0 = 0;
                Log.e(G0, " record  channel :  " + this.f2145i + " TO  imagFormat :  " + this.f2147k);
                Log.e(G0, "  CHECK SIGNAL  SURE : imagType :  " + this.f2145i + " last     imagFormat :  " + this.f2147k + "   imagFormat:" + iB0 + " signalOn : " + this.X + "     loaded  : " + this.f2154r);
                X(iB0);
            }
        }
        boolean z2 = iY3 == 1 && iY4 == 1 && (this.f1892i0 == 2 || (iY == 1 && iY2 == 1));
        this.f1902s0 = i2;
        ?? r3 = z2;
        if (zL) {
            r3 = iY3 == 1 ? 1 : 0;
        }
        if (r3 != 0) {
            q1.b bVar = this.f1904u0;
            if (bVar == null) {
                this.f1904u0 = new q1.b(1, 120);
            } else {
                bVar.b(1);
            }
        } else {
            q1.b bVar2 = this.f1904u0;
            if (bVar2 != null) {
                bVar2.g(0);
                if (this.f1901r0 >= 2 && this.f1904u0.e()) {
                    this.f1901r0 = 1;
                    Log.e(G0, "===============>> Fix Signal Error !! " + this.f1904u0);
                }
            }
        }
        if (this.f1903t0 || this.f1901r0 < 2) {
            a0(r3);
        }
        if (this.f1895l0.c(500)) {
            this.f1895l0.a();
            Log.e(G0, " checkSignal hasSignal front left right rear :  " + iY3 + "  " + iY + "  " + iY2 + "  " + iY4 + "   hasSignal: " + ((boolean) r3) + " fixCount : " + this.f1901r0 + " signalFlag: " + i2 + " imagFormat: " + this.f2147k);
        }
        return r3;
    }

    @Override // f1.q
    public boolean m() {
        Log.e(G0, "   ==========>>> reverseId() : " + E() + " videoId : " + this.f2146j + " chipid : " + this.f2144h);
        return E() == this.f2146j;
    }

    @Override // f1.q
    public void p() {
        int i2;
        if (n()) {
            return;
        }
        this.f2150n = true;
        Z();
        H(X(this.f2147k));
        if (!this.f2154r) {
            Log.e(G0, " ========>>  flushParams  error " + this.f2147k + " loaded:" + this.f2154r);
            this.f2147k = -1;
            return;
        }
        if (!m() && (i2 = this.f2145i) != 0) {
            a();
            c(i2);
        }
        S();
        if (this.f2154r && !this.f2160x && u0.b.n4 == 1) {
            Q();
            Log.e(G0, " ========>>  flushParams  check Start");
            this.f2155s.postDelayed(this.f1906w0, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }
    }

    @Override // f1.q
    public boolean q(int[] iArr) {
        boolean z2;
        if (iArr == null || iArr.length < 2) {
            throw new RuntimeException("flushParams  data is NULL  or  data  size < 2 !!!! ");
        }
        Log.e(G0, "flushParams =============>> i2cInvalid : " + this.f2158v);
        if (this.f2158v) {
            return false;
        }
        synchronized (this.f2157u) {
            int length = iArr.length / 2;
            Log.e(G0, "flushParams  START  data  length = " + iArr.length);
            int i2 = 0;
            z2 = true;
            while (i2 < length) {
                int i3 = i2 * 2;
                int i4 = iArr[i3];
                int i5 = iArr[i3 + 1];
                int iV = V(i4, i5);
                boolean z3 = iV >= 0;
                Log.e(G0, String.format("[ %02X,  %02X]", Integer.valueOf(i4), Integer.valueOf(i5)) + "  result : " + z3 + " ret : " + iV);
                if (!z3) {
                    z2 = z3;
                    break;
                }
                i2++;
                z2 = z3;
            }
            if (z2) {
                z2 = V(64, 3) >= 0;
            }
            Log.e(G0, "flushParams  END  data  length = " + iArr.length + " result:" + z2 + " imagFormat: " + this.f2147k);
        }
        return z2;
    }

    @Override // f1.q, java.lang.Runnable
    public void run() {
        if (this.f2155s == null || !this.f2153q) {
            return;
        }
        this.f2155s.removeCallbacks(this);
        int iK = k();
        int i2 = 0;
        boolean z2 = iK == 1;
        boolean z3 = n() || z2;
        this.f2150n = z3;
        if (z3 && this.D && this.f2160x && this.f2162z != LinkQualityInfo.UNKNOWN_LONG && z2) {
            Log.e(G0, "  001  ==========>>>    reversing    :   HandlerMain.backcar(1);  chipid : " + this.f2144h);
            u0.d.C(1);
            a.f.p().t(LogType.REVERSING, "ENTER REVERSING  ===  HAS SIGNAL");
            Log.e(G0, "ENTER REVERSING HAS SIGNAL setReadyToReversing:  last readyToReversing  : " + this.f2160x + "    readyToReversing: " + this.f2160x + "   recersingBeforeChannel : " + this.f2161y + " chipid : " + this.f2144h);
            this.f2162z = LinkQualityInfo.UNKNOWN_LONG;
        }
        if (this.D && this.f2160x && SystemClock.elapsedRealtime() - this.f2162z >= this.f2151o) {
            this.f2147k = -1;
            Log.e(G0, "  imagFormat 002");
            p();
            Q();
            Log.e(G0, "   ==========>>>002    reversing    :   HandlerMain.backcar(1);  chipid : " + this.f2144h);
            u0.d.C(1);
            a.f.p().t(LogType.REVERSING, "ENTER REVERSING  ===  CHECK TIMEOUT");
            Log.e(G0, "ENTER REVERSING CHECK TIMEOUT setReadyToReversing:  last readyToReversing  : " + this.f2160x + "    readyToReversing: " + this.f2160x + "   recersingBeforeChannel : " + this.f2161y + " chipid : " + this.f2144h);
            this.f2162z = LinkQualityInfo.UNKNOWN_LONG;
        }
        o.g().D(this.f2144h, this.f2153q ? this.f2147k : -1);
        if (this.f1905v0) {
            o.g().E(this.f2144h, this.f2153q ? this.f1902s0 : 0);
        } else {
            o oVarG = o.g();
            int i3 = this.f2144h;
            if (this.f2153q && iK != 0) {
                i2 = 1;
            }
            oVarG.E(i3, i2);
        }
        if (this.f2153q) {
            this.f2155s.postDelayed(this, this.f2139c);
        }
    }

    public a(int i2, int i3, p1.a aVar, int i4, Handler handler) {
        super(i2, i3, aVar, i4, handler);
        this.P = null;
        this.Q = true;
        this.R = "persist.syu.camera360.format";
        this.S = "persist.syu.ahd360";
        this.T = "sys.syu.debug.camera";
        this.U = 16;
        this.V = 18;
        this.W = 17;
        this.X = false;
        this.Y = 3;
        this.Z = 2;
        this.f1884a0 = 0;
        this.f1885b0 = 1;
        this.f1886c0 = new SparseIntArray();
        this.f1887d0 = new SparseIntArray();
        this.f1888e0 = new SparseIntArray();
        this.f1889f0 = new SparseIntArray();
        this.f1890g0 = new SparseIntArray();
        this.f1891h0 = new SparseIntArray();
        this.f1892i0 = 4;
        this.f1893j0 = 1000;
        this.f1894k0 = new l0();
        this.f1895l0 = new l0();
        this.f1896m0 = new l0();
        this.f1897n0 = new l0();
        this.f1898o0 = new l0();
        this.f1899p0 = new l0();
        this.f1900q0 = 0;
        this.f1901r0 = 0;
        this.f1902s0 = 0;
        this.f1903t0 = false;
        this.f1904u0 = null;
        this.f1905v0 = false;
        this.f1906w0 = new RunnableC0040a();
        this.f1907x0 = new b();
        this.f1908y0 = false;
        this.f1909z0 = false;
        this.A0 = new c();
        this.B0 = new d();
        this.C0 = new e();
        this.D0 = new f();
        this.E0 = new g();
        this.F0 = new SparseArray<>();
        int iM = s0.m("persist.syu.fourcamera2.truck", 4);
        this.f1908y0 = s0.l("persist.syu.360_power.independent", false);
        if (iM == 2) {
            this.f1892i0 = 2;
        }
        this.G = i2;
        this.f2146j = 10;
        this.f2148l = Z();
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.P = handler2;
        handler2.post(this.E0);
        if (!this.f1908y0) {
            u0.c.f17386m.a(this.A0, 1);
            u0.c.f17378e.a(this.B0, 1);
        }
        this.f1903t0 = new File("/sdcard/test_360").exists();
    }
}
