package e1;

import android.graphics.Paint;
import android.net.LinkQualityInfo;
import android.os.Handler;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Log;
import o1.s0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c extends l implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1661c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1662d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1663e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1664f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1665g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile boolean f1666h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1667i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Handler f1668j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1669k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1670l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public o1.n f1671m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f1672n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1673o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1674p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1675q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1676r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1677s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f1678t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1679u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1680v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final Runnable f1681w;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.e("chip", "========================>>  ImageDevice init setup ");
            c cVar = c.this;
            cVar.w(cVar.z());
            Handler handler = c.this.f1668j;
            if (handler != null) {
                handler.removeCallbacks(this);
                c cVar2 = c.this;
                if (cVar2.f1667i) {
                    return;
                }
                cVar2.f1668j.postDelayed(this, 1200L);
            }
        }
    }

    public c(Handler handler) {
        this.f1659a = true;
        this.f1660b = 40;
        this.f1661c = 200;
        this.f1662d = 1;
        this.f1663e = 0;
        this.f1664f = -1;
        this.f1665g = -1;
        this.f1666h = false;
        this.f1667i = false;
        this.f1669k = 2000;
        this.f1670l = false;
        this.f1673o = true;
        this.f1675q = false;
        this.f1676r = false;
        this.f1677s = 0;
        this.f1678t = LinkQualityInfo.UNKNOWN_LONG;
        this.f1679u = 0;
        this.f1680v = 0;
        this.f1681w = new a();
        l();
        this.f1668j = handler;
        this.f1670l = true;
    }

    public static c n() {
        l lVar = e1.a.f1657b;
        if (lVar == null || !(lVar instanceof c)) {
            return null;
        }
        return (c) lVar;
    }

    public void A() {
        if (this.f1668j == null) {
            return;
        }
        this.f1666h = true;
        Log.e("chip", "   ==========>>>    startCheck    device.startCheck() ");
        this.f1668j.removeCallbacks(this);
        this.f1668j.postDelayed(this, this.f1660b);
    }

    public void B() {
        if (this.f1668j == null) {
            return;
        }
        this.f1666h = false;
        Log.e("chip", "   ==========>>>    stopCheck    device.stopCheck() ");
        this.f1668j.removeCallbacks(this);
    }

    public void C() {
        Log.e("chip", "   ==========>>>syncReservingk()    loaded : " + this.f1667i + " readyToReversing: " + this.f1675q);
        if (!this.f1667i) {
            m();
        }
        if (this.f1675q) {
            if (this.f1663e != u()) {
                this.f1677s = this.f1663e;
                Log.e("V2850", "  closeVideo 000");
                B();
                a();
            }
            s0.C(100L);
            c(u());
            A();
        }
    }

    public int D(int i2, int i3) {
        return E(this.f1674p, i2, i3);
    }

    public int E(int i2, int i3, int i4) {
        if (k()) {
            return 1;
        }
        o1.n nVar = this.f1671m;
        if (nVar == null || this.f1673o) {
            return -1;
        }
        return nVar.d(i2, new int[]{i3}, i4);
    }

    @Override // e1.l
    public void a() {
        if (k()) {
            this.f1663e = 0;
            return;
        }
        this.f1676r = false;
        if (this.f1663e == u()) {
            s0.F("sys.fyt.cvbs.mirror", "0");
            s0.F("persist.lsec.cvbs.mirror", "0");
        }
        this.f1663e = 0;
        u0.d.n3(-1);
        u0.d.o3(0);
        u0.d.S3(0, 0);
    }

    @Override // e1.l
    public void b() {
        super.b();
        Log.e("chip", "========================>>  in()   loaded : " + this.f1667i + " ignoreI2c: " + this.f1670l);
        if (!this.f1670l) {
            while (this.f1671m.f(this.f1672n) < 0) {
                a.i.a0(80L);
            }
            if (this.f1671m.c() < 0) {
                Log.e("chip", "========================>>  in()   i2c.open(i2cDev) : " + this.f1671m + " open failed！！！");
                a.f.k().l(0, "i2c error", getClass().getSimpleName() + "I2C OPEN ERROR!!!", Paint.Align.CENTER, 50, -1, 60, 2147483392);
            }
            this.f1673o = this.f1671m.c() < 0;
            Log.e("chip", "========================>>  in()  END i2cInvalid : " + this.f1673o);
        }
        if (this.f1667i) {
            return;
        }
        Handler handler = this.f1668j;
        if (handler == null) {
            this.f1681w.run();
        } else {
            handler.removeCallbacks(this.f1681w);
            this.f1668j.post(this.f1681w);
        }
    }

    @Override // e1.l
    public synchronized void c(int i2) {
        if (i2 == 0) {
            return;
        }
        super.c(i2);
        if (!this.f1667i) {
            Log.e(getClass().getSimpleName(), "==============>>  openVideo  init");
            m();
        }
        String str = (u0.b.f17356r == 0 || i2 != u()) ? "0" : "1";
        s0.F("sys.fyt.cvbs.mirror", str);
        s0.F("persist.lsec.cvbs.mirror", str);
        a.i.a0(20L);
        Log.e("chip", "   ==========>>>   open videoChannel: " + i2);
        u0.d.S3(i2, 1);
    }

    @Override // e1.l
    public void d() {
        this.f1668j.removeCallbacks(this.f1681w);
        if (this.f1667i) {
            w(false);
            this.f1663e = 0;
            if (!this.f1670l) {
                this.f1671m.close();
            }
            this.f1673o = true;
            Log.e("chip", "========================>>  out()  loaded: " + this.f1667i);
            super.d();
        }
    }

    public abstract int j();

    public boolean k() {
        return SystemProperties.getBoolean("sys.fyt.video.debug", false);
    }

    public void l() {
    }

    public abstract void m();

    public boolean o() {
        return this.f1675q;
    }

    public int p(int i2) {
        int i3 = this.f1664f;
        if (i3 == i2) {
            this.f1679u = 0;
            return i2;
        }
        if (i2 == this.f1665g) {
            int i4 = this.f1679u + 1;
            this.f1679u = i4;
            if (i4 >= 3) {
                this.f1679u = 0;
                return i2;
            }
        } else {
            this.f1679u = 1;
            this.f1665g = i2;
        }
        return i3;
    }

    public void q() {
    }

    public void r() {
        t();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f1668j == null || !this.f1666h) {
            return;
        }
        this.f1668j.removeCallbacks(this);
        int iJ = j();
        int i2 = 0;
        boolean z2 = iJ == 1;
        if (k() || this.f1676r != z2) {
            this.f1676r = z2;
            if (this.f1675q && this.f1678t != LinkQualityInfo.UNKNOWN_LONG && z2) {
                Log.e("chip", "  001  ==========>>>    reversing    :   HandlerMain.backcar(1); ");
                u0.d.C(1);
                a.f.p().t(LogType.REVERSING, "ENTER REVERSING  ===  HAS SIGNAL");
                Log.e("chip", "ENTER REVERSING HAS SIGNAL setReadyToReversing:  last readyToReversing  : " + this.f1675q + "    readyToReversing: " + this.f1675q + "   recersingBeforeChannel : " + this.f1677s);
                this.f1678t = LinkQualityInfo.UNKNOWN_LONG;
            }
        }
        if (this.f1675q && SystemClock.elapsedRealtime() - this.f1678t >= this.f1669k) {
            this.f1664f = -1;
            Log.e("V2850", "  imagFormat 002");
            m();
            Log.e("chip", "   ==========>>>002    reversing    :   HandlerMain.backcar(1); ");
            u0.d.C(1);
            a.f.p().t(LogType.REVERSING, "ENTER REVERSING  ===  CHECK TIMEOUT");
            Log.e("chip", "ENTER REVERSING CHECK TIMEOUT setReadyToReversing:  last readyToReversing  : " + this.f1675q + "    readyToReversing: " + this.f1675q + "   recersingBeforeChannel : " + this.f1677s);
            this.f1678t = LinkQualityInfo.UNKNOWN_LONG;
        }
        u0.d.n3(this.f1666h ? this.f1664f : -1);
        if (this.f1666h && iJ != 0) {
            i2 = 1;
        }
        u0.d.o3(i2);
        if (this.f1666h) {
            this.f1668j.postDelayed(this, this.f1660b);
        }
    }

    public int s(int i2) {
        if (k()) {
            return 1;
        }
        synchronized (this.f1671m) {
            o1.n nVar = this.f1671m;
            int i3 = -1;
            if (nVar != null && !this.f1673o) {
                int[] iArrE = nVar.e(1, this.f1674p, false, i2);
                if (iArrE != null && iArrE.length != 0) {
                    i3 = iArrE[0] & 255;
                }
                return i3;
            }
            return -1;
        }
    }

    public void t() {
        y(false);
    }

    public int u() {
        return this.f1662d;
    }

    public void v(int i2, int i3) {
        u0.b.t4[i2] = i3;
    }

    public void w(boolean z2) {
        if (this.f1667i != z2) {
            this.f1667i = z2;
            s0.F("syu.imageic.inited", z2 ? "1" : "0");
        }
    }

    public void x(boolean z2) {
        int i2;
        Log.e("chip", "setReadyToReversing:  last readyToReversing  : " + this.f1675q + "    readyToReversing: " + z2);
        if (this.f1675q != z2) {
            B();
            this.f1675q = z2;
            this.f1669k = z2 && SystemProperties.getBoolean("persist.lesc.video.ignore", false) ? 0 : 2000;
            if (z2) {
                this.f1678t = SystemClock.elapsedRealtime();
                C();
                return;
            }
            Log.e("chip", "   ==========>>> 003    reversing    :   HandlerMain.backcar(0); ");
            u0.d.C(0);
            a();
            if (this.f1677s == 0 && (i2 = u0.b.o4) != 0) {
                this.f1677s = i2;
            }
            Log.e("chip", "EXIT setReadyToReversing:  last readyToReversing  : " + this.f1675q + "    readyToReversing: " + z2 + "   recersingBeforeChannel : " + this.f1677s);
            if (this.f1677s != 0) {
                s0.C(150L);
                c(this.f1677s);
                A();
                this.f1677s = 0;
                this.f1678t = 2147483647L;
            }
        }
    }

    public void y(boolean z2) {
        if (z2) {
            this.f1663e = 0;
            this.f1664f = -1;
            m();
        }
    }

    public abstract boolean z();

    public c(String str, int i2, Handler handler) {
        this(handler);
        this.f1670l = false;
        this.f1671m = new o1.n();
        this.f1672n = str;
        this.f1674p = i2;
    }
}
