package f1;

import android.app.backup.FullBackup;
import android.graphics.Paint;
import android.media.videoeditor.MediaProperties;
import android.net.ConnectivityManager;
import android.net.LinkQualityInfo;
import android.os.Handler;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import o1.s0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public abstract class q extends e1.l implements Runnable {
    public static int L = 0;
    public static int M = 1;
    public static int N = 2;
    public static int O = 3;
    public int A;
    public int B;
    public int C;
    public boolean D;
    public boolean E;
    public SparseArray<String> F;
    public int G;
    public int H;
    public volatile boolean I;
    public b J;
    public final Runnable K;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f2137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SparseArray<c> f2138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2139c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2140d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SparseArray<s.a> f2141e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SparseIntArray f2142f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ArrayList<Integer> f2143g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2144h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2145i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2146j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2147k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2148l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2149m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f2150n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2151o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2152p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile boolean f2153q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f2154r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Handler f2155s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f2156t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public p1.a f2157u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f2158v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2159w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f2160x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f2161y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f2162z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.e("ImageDevice2", "0 ========================>>  ImageDevice init setup loaded = " + q.this.f2154r + " " + q.this + " chipid : " + q.this.f2144h);
            if (!q.this.I) {
                q qVar = q.this;
                qVar.H(qVar.M());
            }
            Log.e("ImageDevice2", "1 ========================>>  ImageDevice init setup loaded = " + q.this.f2154r + " " + q.this + " chipid : " + q.this.f2144h);
            Handler handler = q.this.f2155s;
            if (handler != null) {
                handler.removeCallbacks(this);
                q qVar2 = q.this;
                if (qVar2.f2154r) {
                    return;
                }
                qVar2.f2155s.postDelayed(this, 1200L);
                Log.e("ImageDevice2", "3 ========================>>  ImageDevice init setup loaded = " + q.this.f2154r + " " + q.this + " chipid : " + q.this.f2144h);
            }
        }
    }

    public interface b {
        void a(q qVar, int i2);
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2164a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2165b;

        public c(int i2, int i3) {
            this.f2164a = i2;
            this.f2165b = i3;
        }

        public boolean a() {
            return this.f2164a > 0 && this.f2165b > 0;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof c)) {
                return super.equals(obj);
            }
            c cVar = (c) obj;
            return cVar.f2164a == this.f2164a && cVar.f2165b == this.f2165b;
        }

        public int hashCode() {
            int i2 = this.f2165b;
            int i3 = this.f2164a;
            return i2 ^ ((i3 >>> 16) | (i3 << 16));
        }

        public String toString() {
            return "Size : width : " + this.f2164a + " height : " + this.f2165b;
        }
    }

    public q(int i2, int i3, Handler handler) {
        this.f2137a = true;
        this.f2138b = null;
        this.f2139c = 60;
        this.f2140d = 200;
        this.f2141e = new SparseArray<>();
        this.f2142f = new SparseIntArray();
        this.f2143g = new ArrayList<>();
        this.f2145i = 0;
        this.f2146j = 0;
        this.f2147k = -1;
        this.f2148l = -1;
        this.f2149m = 0;
        this.f2150n = false;
        this.f2151o = 2000;
        this.f2152p = -1;
        this.f2153q = false;
        this.f2154r = false;
        this.f2156t = false;
        this.f2157u = null;
        this.f2158v = true;
        this.f2160x = false;
        this.f2161y = 0;
        this.f2162z = LinkQualityInfo.UNKNOWN_LONG;
        this.A = 0;
        this.B = 0;
        this.C = 3;
        this.D = false;
        this.E = false;
        this.F = null;
        this.G = 0;
        this.H = 1;
        this.I = false;
        this.J = null;
        this.K = new a();
        N();
        o();
        this.G = i2;
        this.f2155s = handler;
        this.f2144h = i3;
        this.f2156t = true;
    }

    public int A(int i2) {
        return B(this.f2159w, i2);
    }

    public int B(int i2, int i3) {
        if (n()) {
            return 1;
        }
        synchronized (this.f2157u) {
            p1.a aVar = this.f2157u;
            int i4 = -1;
            if (aVar != null && !this.f2158v) {
                int[] iArrE = aVar.e(1, i2, false, i3);
                if (iArrE != null && iArrE.length != 0) {
                    i4 = iArrE[0] & 255;
                }
                return i4;
            }
            return -1;
        }
    }

    public boolean C(int i2, y.b bVar) {
        return false;
    }

    public void D() {
        J(false);
    }

    public int E() {
        return this.H;
    }

    public void F(int i2, String str) {
        this.F.put(i2, str);
    }

    public void G(int i2, int i3) {
        this.f2142f.put(i2, i3);
    }

    public void H(boolean z2) {
        if (this.f2154r != z2) {
            this.f2154r = z2;
            s0.F("syu.imageic.inited_" + this.f2144h, z2 ? "1" : "0");
        }
    }

    public void I(boolean z2) {
        int i2;
        int i3;
        if (this.D) {
            Log.e("ImageDevice2", "setReadyToReversing:  last readyToReversing  : " + this.f2160x + "    readyToReversing: " + z2);
        } else {
            Log.e("ImageDevice2", this + " isSupportReversing:  " + this.D);
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
        Log.e("ImageDevice2", "   ==========>>> 003    reversing    :   HandlerMain.backcar(0);  chipid : " + this.f2144h);
        u0.d.C(0);
        a();
        if (this.f2161y == 0 && (i3 = this.f2146j) != 0) {
            this.f2161y = i3;
        }
        Log.e("ImageDevice2", "EXIT setReadyToReversing:  last readyToReversing  : " + this.f2160x + "    readyToReversing: " + z2 + "   recersingBeforeChannel : " + this.f2161y + " chipid : " + this.f2144h);
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

    public void J(boolean z2) {
        Log.e("ImageDevice2", " ========>>  setReseted()  isI2cInvalid() " + s() + "  isReseted: " + z2 + " chipid : " + this.f2144h);
        if (z2) {
            this.f2145i = 0;
            this.f2147k = -1;
            boolean z3 = this.f2153q;
            p();
            if (z3) {
                Q();
            }
        }
    }

    public void K(int i2) {
        this.H = i2;
    }

    public void L(b bVar) {
        this.J = bVar;
    }

    public abstract boolean M();

    public void N() {
    }

    public void O(int i2) {
        int i3 = this.f2146j;
        if (i3 == 0 || this.f2148l == i2) {
            return;
        }
        this.f2148l = i2;
        int[] iArrY = y(i2, i3);
        Log.e("Signal", "   ==========>> signalNtscPal   chipId : " + this.f2144h + " " + Arrays.toString(iArrY));
        u0.d.I3(70, iArrY);
    }

    public void P(int i2) {
        int i3 = this.f2146j;
        if (i3 == 0 || this.f2149m == i2) {
            return;
        }
        this.f2149m = i2;
        int[] iArrY = y(i2, i3);
        Log.e("Signal", "   ==========>> signalOn   chipId : " + this.f2144h + " " + Arrays.toString(iArrY));
        u0.d.I3(69, iArrY);
    }

    public void Q() {
        if (this.f2155s == null) {
            return;
        }
        this.f2153q = true;
        Log.e("ImageDevice2", "   ==========>>>    startCheck    device.startCheck()  chip id : " + this.f2144h);
        this.f2155s.removeCallbacks(this);
        this.f2155s.postDelayed(this, (long) this.f2139c);
    }

    public void R() {
        if (this.f2155s == null) {
            return;
        }
        this.f2153q = false;
        Log.e("ImageDevice2", "   ==========>>>    stopCheck    device.stopCheck()  chip id : " + this.f2144h);
        this.f2155s.removeCallbacks(this);
    }

    public void S() {
        Log.e("ImageDevice2", "   ==========>>>syncReservingk()    loaded : " + this.f2154r + " readyToReversing: " + this.f2160x + " chip id = " + this.f2144h + " type : " + this.G);
        if (this.D) {
            if (!this.f2154r) {
                p();
            }
            if (this.f2160x) {
                if (!m()) {
                    this.f2161y = this.f2145i;
                    Log.e("ImageDevice2", "  closeVideo 000");
                    R();
                    a();
                }
                c(E());
                Q();
            }
        }
    }

    public void T(int i2, int i3) {
        this.f2146j = i2;
        int[] iArrY = y(i2, i3);
        Log.e("Signal", "   ==========>> videoChannel   chipId : " + this.f2144h + " " + Arrays.toString(iArrY));
        u0.d.I3(68, iArrY);
    }

    public void U(y.b bVar) {
    }

    public int V(int i2, int i3) {
        return W(this.f2159w, i2, i3);
    }

    public int W(int i2, int i3, int i4) {
        if (n()) {
            return 1;
        }
        p1.a aVar = this.f2157u;
        if (aVar == null || this.f2158v) {
            return -1;
        }
        return aVar.d(i2, new int[]{i3}, i4);
    }

    @Override // e1.l
    public void a() {
        if (n()) {
            o.g().E(this.f2144h, 0);
            this.f2145i = 0;
            return;
        }
        this.f2150n = false;
        if (m()) {
            s0.F("sys.fyt.cvbs.mirror", "0");
        }
        Log.e("ImageDevice2", "========================>>002 closeVideo videoId: " + this.f2145i + " chipid : " + this.f2144h);
        this.f2145i = 0;
        o.g().D(this.f2144h, -1);
        o.g().E(this.f2144h, 0);
        o.g().G(this.f2144h, this.f2145i, 0);
    }

    @Override // e1.l
    public void b() {
        super.b();
        Log.e("ImageDevice2", "========================>>  in() 01 loaded : " + this.f2154r + " ignoreI2c: " + this.f2156t + " chipid : " + this.f2144h);
        if (!this.f2156t) {
            while (this.f2157u.a() < 0) {
                a.i.a0(80L);
            }
            if (this.f2157u.c() < 0) {
                Log.e("ImageDevice2", "========================>>  in()   i2c.open(i2cDev) : " + this.f2157u + " open failed！！！ chipid : " + this.f2144h);
                n1.c cVarK = a.f.k();
                StringBuilder sb = new StringBuilder();
                sb.append(getClass().getSimpleName());
                sb.append("I2C OPEN ERROR!!!");
                cVarK.l(0, "i2c error", sb.toString(), Paint.Align.CENTER, 50, -1, 60, 2147483392);
            }
            this.f2158v = this.f2157u.c() < 0;
            Log.e("ImageDevice2", "========================>>  in()  END i2cInvalid : " + this.f2158v + " chipid : " + this.f2144h);
        }
        Log.e("ImageDevice2", "========================>>  in() 02 loaded : " + this.f2154r + " ignoreI2c: " + this.f2156t + " chipid : " + this.f2144h);
        if (this.f2154r) {
            return;
        }
        Handler handler = this.f2155s;
        if (handler == null) {
            this.K.run();
        } else {
            handler.removeCallbacks(this.K);
            this.f2155s.post(this.K);
        }
    }

    @Override // e1.l
    public synchronized void c(int i2) {
        if (i2 == 0) {
            return;
        }
        super.c(i2);
        if (!this.f2154r) {
            Log.e(getClass().getSimpleName(), "==============>>  openVideo  init chipid : " + this.f2144h);
            p();
        }
        s0.F("sys.fyt.cvbs.mirror", (u0.b.f17356r == 0 || !v(i2)) ? "0" : "1");
        a.i.a0(20L);
        Log.e("ImageDevice2", "   ==========>>>   open videoChannel: " + i2 + " chipid : " + this.f2144h);
        T(i2, 1);
    }

    @Override // e1.l
    public void d() {
        this.f2155s.removeCallbacks(this.K);
        Log.e("ImageDevice2", "========================>>  out() 01 loaded: " + this.f2154r + " chipid : " + this.f2144h);
        if (this.f2154r) {
            H(false);
            this.f2145i = 0;
            if (!this.f2156t) {
                this.f2157u.close();
            }
            this.f2158v = true;
            Log.e("ImageDevice2", "========================>>  out() 02 loaded: " + this.f2154r + " chipid : " + this.f2144h);
            super.d();
        }
    }

    public void j(int i2) {
        this.f2143g.add(Integer.valueOf(i2));
    }

    public abstract int k();

    public void l(int i2, int i3, int i4) {
        this.f2138b.put(i2, new c(i3, i4));
    }

    public boolean m() {
        return E() == this.f2145i;
    }

    public boolean n() {
        return SystemProperties.getBoolean("sys.fyt.video.debug", false);
    }

    public void o() {
    }

    public abstract void p();

    public boolean q(int[] iArr) {
        return false;
    }

    public p1.a r() {
        return this.f2157u;
    }

    public void run() {
        if (this.f2155s == null || !this.f2153q) {
            return;
        }
        this.f2155s.removeCallbacks(this);
        int iK = k();
        int i2 = 0;
        boolean z2 = iK == 1;
        if (n() || this.f2150n != z2) {
            this.f2150n = z2;
            if (this.D && this.f2160x && this.f2162z != LinkQualityInfo.UNKNOWN_LONG && z2) {
                Log.e("ImageDevice2", "  001  ==========>>>    reversing    :   HandlerMain.backcar(1);  chipid : " + this.f2144h);
                u0.d.C(1);
                a.f.p().t(LogType.REVERSING, "ENTER REVERSING  ===  HAS SIGNAL");
                Log.e("ImageDevice2", "ENTER REVERSING HAS SIGNAL setReadyToReversing:  last readyToReversing  : " + this.f2160x + "    readyToReversing: " + this.f2160x + "   recersingBeforeChannel : " + this.f2161y + " chipid : " + this.f2144h);
                this.f2162z = LinkQualityInfo.UNKNOWN_LONG;
            }
        }
        if (this.D && this.f2160x && SystemClock.elapsedRealtime() - this.f2162z >= this.f2151o) {
            this.f2147k = -1;
            Log.e("ImageDevice2", "  imagFormat 002");
            p();
            Q();
            Log.e("ImageDevice2", "   ==========>>>002    reversing    :   HandlerMain.backcar(1);  chipid : " + this.f2144h);
            u0.d.C(1);
            a.f.p().t(LogType.REVERSING, "ENTER REVERSING  ===  CHECK TIMEOUT");
            Log.e("ImageDevice2", "ENTER REVERSING CHECK TIMEOUT setReadyToReversing:  last readyToReversing  : " + this.f2160x + "    readyToReversing: " + this.f2160x + "   recersingBeforeChannel : " + this.f2161y + " chipid : " + this.f2144h);
            this.f2162z = LinkQualityInfo.UNKNOWN_LONG;
        }
        o.g().D(this.f2144h, this.f2153q ? this.f2147k : -1);
        o oVarG = o.g();
        int i3 = this.f2144h;
        if (this.f2153q && iK != 0) {
            i2 = 1;
        }
        oVarG.E(i3, i2);
        if (this.f2153q) {
            this.f2155s.postDelayed(this, this.f2139c);
        }
    }

    public boolean s() {
        boolean z2 = this.f2156t;
        return z2 ? z2 : this.f2158v;
    }

    public boolean t() {
        return this.f2154r;
    }

    public boolean u() {
        return this.f2160x;
    }

    public boolean v(int i2) {
        return i2 == E();
    }

    public int w(int i2) {
        int i3 = this.f2147k;
        if (i3 == i2) {
            this.A = 0;
            return i2;
        }
        if (i2 == this.f2152p) {
            int i4 = this.A + 1;
            this.A = i4;
            if (i4 >= 3) {
                this.A = 0;
                return i2;
            }
        } else {
            this.A = 1;
            this.f2152p = i2;
        }
        return i3;
    }

    public boolean x(String str) {
        return false;
    }

    public int[] y(int i2, int i3) {
        int size = this.f2143g.size();
        int[] iArr = new int[size + 2];
        iArr[0] = i2;
        iArr[1] = i3;
        if (size > 0) {
            Iterator<Integer> it = this.f2143g.iterator();
            int i4 = 2;
            while (it.hasNext()) {
                iArr[i4] = it.next().intValue();
                i4++;
            }
        }
        return iArr;
    }

    public String z() {
        return o.g().h(this.f2144h);
    }

    public q(int i2, int i3, p1.a aVar, int i4, Handler handler) {
        this(i2, i3, handler);
        this.f2138b = new SparseArray<>();
        l(-1, -1, -1);
        l(0, MediaProperties.HEIGHT_720, 480);
        l(1, MediaProperties.HEIGHT_720, 576);
        l(2, 1280, MediaProperties.HEIGHT_720);
        l(3, 1280, MediaProperties.HEIGHT_720);
        l(6, 1920, 1080);
        l(7, 1920, 1080);
        SparseArray<String> sparseArray = new SparseArray<>();
        this.F = sparseArray;
        sparseArray.put(L, FullBackup.APK_TREE_TOKEN);
        this.F.put(M, "b");
        this.F.put(N, FullBackup.CACHE_TREE_TOKEN);
        this.F.put(O, "d");
        this.f2156t = false;
        this.f2157u = aVar;
        this.f2159w = i4;
    }
}
