package f1;

import android.net.ConnectivityManager;
import android.net.LinkQualityInfo;
import android.net.ProxyProperties;
import android.os.Handler;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import o1.l0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class s extends q {
    public final int P;
    public SparseIntArray Q;
    public l0 R;
    public final Object S;

    public abstract class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2169b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2171d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2168a = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2170c = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ArrayList<Integer> f2172e = new ArrayList<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f2173f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f2174g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f2175h = -1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public q1.b f2176i = new q1.b(-1, 3);

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public q1.b f2177j = new q1.b(-1, 3);

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f2178k = false;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f2179l = false;

        public a() {
        }

        public void a() {
        }

        public void b() {
            int i2 = this.f2171d;
            if (i2 == 0) {
                return;
            }
            u0.d.I3(68, h(i2, 0));
            Log.e("Signal", "===>> clearVideoId  chipId : " + s.this.f2144h + " channel : " + this.f2169b + " videoId: " + this.f2171d + " open: 0");
            this.f2171d = 0;
            k(false);
        }

        public abstract boolean c();

        public int d(int i2) {
            this.f2176i.g(i2);
            return this.f2176i.d();
        }

        public q.c e() {
            return s.this.f2138b.get(this.f2175h, new q.c(-1, -1));
        }

        public abstract boolean f();

        public void g(int i2, int i3, int i4) {
        }

        public int[] h(int i2, int i3) {
            int size = this.f2172e.size();
            int[] iArr = new int[size + 2];
            iArr[0] = i2;
            iArr[1] = i3;
            if (size > 0) {
                Iterator<Integer> it = this.f2172e.iterator();
                int i4 = 2;
                while (it.hasNext()) {
                    iArr[i4] = it.next().intValue();
                    i4++;
                }
            }
            return iArr;
        }

        public void i(int i2, y.b bVar) {
            int i3 = 1;
            try {
                switch (i2) {
                    case 68:
                        int i4 = this.f2171d;
                        if (!s.this.f2154r || i4 <= 0) {
                            i3 = 0;
                        }
                        int[] iArrH = h(i4, i3);
                        bVar.H0(i2, iArrH, null, null);
                        Log.e("ImageDevice2", "===>>>Multi register  chip id : " + s.this.f2144h + " channel : " + this.f2169b + " " + i2 + " data: " + Arrays.toString(iArrH));
                        break;
                    case 69:
                        if (!s.this.f2154r || !this.f2179l) {
                            i3 = 0;
                        }
                        int[] iArrH2 = h(i3, this.f2171d);
                        bVar.H0(i2, iArrH2, null, null);
                        Log.e("ImageDevice2", "===>>>Multi register  chip id : " + s.this.f2144h + " channel : " + this.f2169b + " " + i2 + " data: " + Arrays.toString(iArrH2));
                        break;
                    case 70:
                        int[] iArrH3 = h(s.this.f2154r ? this.f2175h : -1, this.f2171d);
                        bVar.H0(i2, iArrH3, null, null);
                        Log.e("ImageDevice2", "===>>>Multi register  chip id : " + s.this.f2144h + " channel : " + this.f2169b + " " + i2 + " data: " + Arrays.toString(iArrH3));
                        break;
                }
            } catch (Exception unused) {
            }
        }

        public void j() {
            int i2 = this.f2175h;
            boolean z2 = true;
            if (i2 != 0 && i2 != 1) {
                z2 = false;
            }
            String str = s.this.F.get(this.f2170c, null);
            q.c cVarE = e();
            if (str == null || !cVarE.a()) {
                return;
            }
            s0.F(s.this.z() + str + ".di", ProxyProperties.LOCAL_EXCL_LIST + z2);
        }

        public void k(boolean z2) {
            this.f2168a = z2;
        }

        public void l() {
            String str = s.this.F.get(this.f2170c, null);
            q.c cVarE = e();
            if (str == null || !e().a()) {
                return;
            }
            String strZ = s.this.z();
            String str2 = strZ + str + ".w";
            String str3 = strZ + str + ".h";
            Log.e("Signal", " setProperty  index : " + this.f2169b + " Properties: " + str2 + " And " + str3);
            StringBuilder sb = new StringBuilder();
            sb.append(cVarE.f2164a);
            sb.append(ProxyProperties.LOCAL_EXCL_LIST);
            s0.F(str2, sb.toString());
            s0.F(str3, cVarE.f2165b + ProxyProperties.LOCAL_EXCL_LIST);
            Log.e("Signal", " setProperty  index : " + this.f2169b + " set :" + cVarE + " Get " + str2 + ": " + s0.m(str2, 0) + " " + str3 + " : " + s0.m(str3, 0));
            j();
        }

        public void m(int i2) {
            this.f2171d = i2;
            int[] iArrH = h(i2, i2 > 0 ? 1 : 0);
            u0.d.I3(68, iArrH);
            Log.e("Signal", "===>>Multi setVideoId  chipId : " + s.this.f2144h + " channel : " + this.f2169b + " data: " + Arrays.toString(iArrH));
        }

        public void n() {
            int[] iArrH = h(this.f2175h, this.f2171d);
            u0.d.I3(70, iArrH);
            Log.e("Signal", "===>>Multi updateFormatFlag  chipId : " + s.this.f2144h + " channel : " + this.f2169b + " data: " + Arrays.toString(iArrH));
        }

        public void o() {
            int[] iArrH = h(this.f2179l ? 1 : 0, this.f2171d);
            u0.d.I3(69, iArrH);
            Log.e("Signal", "===>>Multi updateSignalFlag  chipId : " + s.this.f2144h + " channel : " + this.f2169b + " data: " + Arrays.toString(iArrH));
        }
    }

    public s(int i2, int i3, p1.a aVar, int i4, Handler handler) {
        super(i2, i3, aVar, i4, handler);
        this.P = 1000;
        this.Q = new SparseIntArray();
        this.R = new l0();
        this.S = new Object();
    }

    @Override // f1.q
    public boolean C(int i2, y.b bVar) {
        int size = this.f2141e.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.f2141e.valueAt(i3).i(i2, bVar);
        }
        return true;
    }

    @Override // f1.q
    public void G(int i2, int i3) {
        super.G(i2, i3);
        a aVar = this.f2141e.get(i3);
        if (aVar != null) {
            aVar.f2172e.add(Integer.valueOf(i2));
        }
    }

    @Override // f1.q
    public void H(boolean z2) {
        super.H(z2);
        if (n() || z2) {
            e0();
        }
    }

    @Override // f1.q
    public void I(boolean z2) {
        int i2;
        if (this.D) {
            Log.e("ImageDevice2", "setReadyToReversing:  last readyToReversing  : " + this.f2160x + "    readyToReversing: " + z2);
        } else {
            Log.e("ImageDevice2", this + " isSupportReversing:  " + this.D);
        }
        if (!this.D || this.f2160x == z2) {
            return;
        }
        if (z2) {
            this.f2160x = true;
        }
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
        a aVarD0 = d0();
        Log.e("ImageDevice2", "EXIT last readyToReversing  : " + this.f2160x + "    readyToReversing: " + z2 + "   recersingBeforeChannel : " + aVarD0.f2174g + " chipid : " + this.f2144h);
        if (aVarD0.f2174g != 0) {
            s0.C(150L);
            if (this.f2143g.contains(Integer.valueOf(aVarD0.f2174g))) {
                c(aVarD0.f2174g);
            }
            aVarD0.f2174g = 0;
            this.f2162z = 2147483647L;
        } else {
            aVarD0.b();
        }
        this.f2160x = false;
    }

    @Override // f1.q
    public boolean M() {
        if (!this.f2154r) {
            D();
        }
        return this.f2154r;
    }

    @Override // f1.q
    public void Q() {
    }

    @Override // f1.q
    public void R() {
    }

    @Override // f1.q
    public void S() {
        Log.e("ImageDevice2", "   ==========>>>syncReservingk()    loaded : " + this.f2154r + " readyToReversing: " + this.f2160x + " chip id = " + this.f2144h + " type : " + this.G);
        if (this.D) {
            if (!this.f2154r) {
                p();
            }
            if (this.f2160x) {
                a aVarD0 = d0();
                if (m()) {
                    aVarD0.f2174g = aVarD0.f2171d;
                } else {
                    aVarD0.f2174g = aVarD0.f2171d;
                    Log.e("ImageDevice2", "  closeVideo 000");
                    aVarD0.b();
                    s0.C(150L);
                }
                aVarD0.m(E());
                aVarD0.k(true);
            }
        }
    }

    public void X() {
    }

    public void Y() {
        if (this.f2155s == null) {
            return;
        }
        this.f2153q = false;
        Log.e("ImageDevice2", "   ==========>>> endDetection  chip id : " + this.f2144h);
        this.f2155s.removeCallbacks(this);
    }

    public boolean Z(int... iArr) {
        return iArr.length >= 2 && q(iArr);
    }

    @Override // f1.q, e1.l
    public void a() {
    }

    public int a0(int i2) {
        return this.f2142f.get(i2, -1);
    }

    @Override // f1.q, e1.l
    public void b() {
        super.b();
    }

    public void b0(int i2, int i3) {
        a aVar = this.f2141e.get(a0(i2), null);
        if (aVar == null) {
            return;
        }
        if (aVar.f2173f && this.f2160x) {
            if (i3 == 0) {
                return;
            }
            if (i3 != E()) {
                i3 = E();
            }
        }
        if (i3 == 0) {
            aVar.b();
            if (this.Q.indexOfKey(aVar.f2169b) >= 0) {
                this.Q.delete(aVar.f2169b);
                return;
            }
            return;
        }
        aVar.m(i3);
        if (this.Q.indexOfKey(aVar.f2169b) < 0) {
            this.Q.put(aVar.f2169b, i3);
        }
    }

    @Override // f1.q, e1.l
    public synchronized void c(int i2) {
        if (i2 == 0) {
            return;
        }
        if (!this.f2154r) {
            Log.e(getClass().getSimpleName(), "==============>>  openVideo  init chipid : " + this.f2144h);
            p();
        }
        a aVar = this.f2141e.get(a0(i2), null);
        if (aVar != null) {
            aVar.m(i2);
            aVar.k(i2 != 0);
        }
    }

    public void c0(int i2, int i3) {
        if (!this.f2154r) {
            Log.e(getClass().getSimpleName(), "==============>>  openVideo  init chipid : " + this.f2144h);
            p();
        }
        b0(i2, i3);
    }

    @Override // f1.q, e1.l
    public void d() {
        Y();
        super.d();
    }

    public a d0() {
        a aVar = this.f2141e.get(a0(E()));
        if (aVar != null && !aVar.f2173f) {
            aVar.f2173f = true;
        }
        return aVar;
    }

    public void e0() {
        if (this.f2155s == null) {
            return;
        }
        this.f2153q = true;
        Log.e("ImageDevice2", "   ==========>>> startDetection  chip id : " + this.f2144h);
        this.f2155s.removeCallbacks(this);
        this.f2155s.postDelayed(this, (long) this.f2139c);
    }

    public void f0() {
        int size = this.Q.size();
        for (int i2 = 0; i2 < size; i2++) {
            int iKeyAt = this.Q.keyAt(i2);
            int iE = this.Q.get(iKeyAt);
            a aVar = this.f2141e.get(iKeyAt, null);
            if (aVar.f2173f && this.f2160x) {
                iE = E();
            }
            Log.e("Signal", aVar + " sync VideoId: " + iE + " readyToReversing :" + this.f2160x);
            aVar.m(iE);
            aVar.k(iE != 0);
        }
    }

    public abstract void g0();

    @Override // e1.l
    public void h(int i2, int i3, int i4, int i5) {
        int iA0 = a0(i2);
        if (iA0 >= 0) {
            synchronized (this.S) {
                a aVar = this.f2141e.get(iA0, null);
                if (aVar != null) {
                    aVar.g(i3, i4, i5);
                }
            }
        }
    }

    @Override // f1.q
    public void j(int i2) {
        super.j(i2);
        if (v(i2)) {
            d0();
        }
    }

    @Override // f1.q
    public int k() {
        int i2;
        boolean z2;
        if (n()) {
            return 1;
        }
        SparseArray<a> sparseArray = this.f2141e;
        if (sparseArray == null || sparseArray.size() == 0) {
            return 0;
        }
        int size = this.f2141e.size();
        synchronized (this.S) {
            i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                a aVarValueAt = this.f2141e.valueAt(i3);
                if (aVarValueAt != null) {
                    X();
                    if (aVarValueAt.f()) {
                        i2 |= 1 << aVarValueAt.f2169b;
                    }
                }
            }
        }
        if (i2 > 0) {
            z2 = false;
            for (int i4 = 0; i4 < size; i4++) {
                z2 = z2 || this.f2141e.valueAt(i4).f2178k;
                if (z2) {
                    break;
                }
            }
        } else {
            z2 = false;
        }
        if (z2) {
            g0();
        }
        return i2 > 0 ? 1 : 0;
    }

    @Override // f1.q
    public boolean m() {
        return d0().f2171d == E();
    }

    @Override // f1.q
    public boolean q(int[] iArr) {
        boolean z2;
        if (iArr == null || iArr.length < 2) {
            throw new RuntimeException("flushParams  data is NULL  or  data  size < 2 !!!! ");
        }
        if (this.f2158v) {
            return false;
        }
        synchronized (this.f2157u) {
            int length = iArr.length / 2;
            int i2 = 0;
            z2 = true;
            while (i2 < length) {
                int i3 = i2 * 2;
                int i4 = iArr[i3];
                int i5 = iArr[i3 + 1];
                int iV = V(i4, i5);
                boolean z3 = iV >= 0;
                Log.e("ImageDevice2", String.format("[ %02X,  %02X]", Integer.valueOf(i4), Integer.valueOf(i5)) + " ret : " + iV);
                if (!z3) {
                    z2 = z3;
                    break;
                }
                i2++;
                z2 = z3;
            }
            Log.e("ImageDevice2", "flushParams  END  data  length = " + iArr.length + " result:" + z2);
        }
        return z2;
    }

    @Override // f1.q, java.lang.Runnable
    public void run() {
        if (this.f2155s == null || !this.f2153q) {
            return;
        }
        this.f2155s.removeCallbacks(this);
        k();
        a aVarD0 = d0();
        if ((n() || (aVarD0 != null && aVarD0.f2179l)) && this.D && this.f2160x && this.f2162z != LinkQualityInfo.UNKNOWN_LONG) {
            Log.e("ImageDevice2", "  001  ==========>>>    reversing    :   HandlerMain.backcar(1);  chipid : " + this.f2144h);
            u0.d.C(1);
            Log.e("ImageDevice2", "ENTER REVERSING HAS SIGNAL setReadyToReversing:  last readyToReversing  : " + this.f2160x + "    readyToReversing: " + this.f2160x + "   recersingBeforeChannel : " + this.f2161y + " chipid : " + this.f2144h);
            this.f2162z = LinkQualityInfo.UNKNOWN_LONG;
        }
        if (this.D && this.f2160x && SystemClock.elapsedRealtime() - this.f2162z >= this.f2151o) {
            Log.e("ImageDevice2", "   ==========>>>002    reversing    :   HandlerMain.backcar(1);  chipid : " + this.f2144h);
            u0.d.C(1);
            Log.e("ImageDevice2", "ENTER REVERSING CHECK TIMEOUT setReadyToReversing:  last readyToReversing  : " + this.f2160x + "    readyToReversing: " + this.f2160x + "   recersingBeforeChannel : " + this.f2161y + " chipid : " + this.f2144h);
            this.f2162z = LinkQualityInfo.UNKNOWN_LONG;
        }
        if (this.f2153q) {
            this.f2155s.postDelayed(this, this.f2139c);
        }
        if (this.R.c(1000)) {
            this.R.a();
        }
    }

    @Override // f1.q
    public boolean v(int i2) {
        return super.v(i2);
    }
}
