package i0;

import android.net.ProxyProperties;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import h0.e;
import h0.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import o1.m0;
import o1.s0;
import o1.x;
import plugins.ZLink;
import u0.d;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static final Pattern B = Pattern.compile("^\\+?\\d{3,15}$");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f2507c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2509e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2510f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2511g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f2512h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f2513i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f2514j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f2515k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f2516l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2518n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2519o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2520p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2521q;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public j0.a f2529y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2505a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f2506b = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2508d = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f2517m = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f2522r = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final LinkedHashMap<String, a> f2523s = new LinkedHashMap<>();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f2524t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f2525u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f2526v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f2527w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f2528x = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f2530z = 1;
    public int A = 1;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f2531a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f2532b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f2533c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f2534d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f2535e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2536f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f2537g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f2538h = 0;

        /* JADX INFO: renamed from: i0.c$a$a, reason: collision with other inner class name */
        public class RunnableC0051a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f2540a = SystemClock.elapsedRealtime();

            public RunnableC0051a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f2540a;
                a.this.h(jElapsedRealtime);
                int i2 = h0.c.A;
                if (i2 < 0) {
                    return;
                }
                if (i2 == 0) {
                    c.this.L();
                    return;
                }
                long jMax = Math.max((((long) i2) * 1000) - jElapsedRealtime, 0L);
                c.this.z0(21, (int) jMax);
                if (jMax <= 0) {
                    c.this.L();
                }
            }
        }

        public class b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f2542a = SystemClock.elapsedRealtime();

            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f2542a;
                if (a.this.f2537g) {
                    a aVar = a.this;
                    aVar.f2538h = jElapsedRealtime - aVar.f2535e;
                } else {
                    a aVar2 = a.this;
                    aVar2.j(jElapsedRealtime - aVar2.f2538h);
                }
            }
        }

        public a(String str) {
            this.f2531a = str;
        }

        public final void g() {
            j(-1L);
            h(-1L);
        }

        public final void h(long j2) {
            if (j2 < 0 && this.f2532b >= 0) {
                m0.b().a(this.f2532b);
                this.f2532b = -1L;
            }
            long jMax = Math.max(j2, 0L);
            if (this.f2533c != jMax) {
                this.f2533c = jMax;
                c.this.A0(11, new int[]{(int) (jMax >> 32), (int) jMax}, new String[]{this.f2531a});
            }
        }

        public void i(int i2) {
            if (i2 != this.f2536f) {
                this.f2536f = i2;
                if (i2 == 3) {
                    j(-1L);
                    h(-1L);
                } else if (i2 == 5) {
                    this.f2532b = m0.b().c(new RunnableC0051a(), 10L, 1000L, TimeUnit.MILLISECONDS);
                } else {
                    if (i2 != 6) {
                        return;
                    }
                    h(-1L);
                    this.f2534d = m0.b().c(new b(), 10L, 1000L, TimeUnit.MILLISECONDS);
                }
            }
        }

        public final void j(long j2) {
            if (j2 < 0 && this.f2534d >= 0) {
                m0.b().a(this.f2534d);
                this.f2534d = -1L;
            }
            long jMax = Math.max(j2, 0L);
            if (this.f2535e != jMax) {
                this.f2535e = jMax;
                c.this.A0(12, new int[]{(int) (jMax >> 32), (int) jMax}, new String[]{this.f2531a});
            }
            this.f2538h = 0L;
        }

        public void k(boolean z2) {
            this.f2537g = z2;
        }

        public void l(y.b bVar) {
            try {
                long j2 = this.f2533c;
                bVar.H0(11, new int[]{(int) (j2 >> 32), (int) j2}, null, new String[]{this.f2531a});
                long j3 = this.f2535e;
                bVar.H0(12, new int[]{(int) (j3 >> 32), (int) j3}, null, new String[]{this.f2531a});
            } catch (RemoteException unused) {
            }
        }

        public String toString() {
            return "CallTimer: " + this.f2531a + " state: " + c.this.f2530z + " isWaiting: " + this.f2537g;
        }
    }

    public c(String str) {
        this.f2507c = "000000000000";
        this.f2507c = str;
    }

    public static void T(String str) {
        e.X(6, null, null, new String[]{str, "000000000000"});
    }

    public boolean A(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            i();
            return true;
        }
        if (i2 == 1) {
            e();
            return true;
        }
        if (i2 == 2) {
            h();
            return true;
        }
        if (i2 == 3) {
            f();
            return true;
        }
        if (i2 == 4) {
            j();
            return true;
        }
        if (i2 == 26) {
            v();
            return true;
        }
        if (i2 == 27) {
            g();
            return true;
        }
        if (i2 == 49) {
            if (!s0.i(strArr, 0)) {
                return true;
            }
            U(strArr[0]);
            return true;
        }
        if (i2 == 56) {
            y0();
            return true;
        }
        if (i2 == 52 || i2 == 53) {
            return true;
        }
        switch (i2) {
            case 6:
                if (!s0.h(iArr, 0)) {
                    return true;
                }
                H(iArr[0]);
                return true;
            case 7:
                if (!s0.i(strArr, 0)) {
                    return true;
                }
                u(strArr[0]);
                return true;
            case 8:
                P();
                return true;
            case 9:
                L();
                return true;
            case 10:
                B();
                return true;
            case 11:
                R();
                return true;
            case 12:
                if (!s0.i(strArr, 0)) {
                    return true;
                }
                c0(strArr[0]);
                return true;
            case 13:
                if (!s0.h(iArr, 0)) {
                    return true;
                }
                J(iArr[0]);
                return true;
            case 14:
                if (!s0.h(iArr, 0)) {
                    return true;
                }
                int i3 = iArr[0];
                if (i3 == 0) {
                    if (!this.f2526v) {
                        return true;
                    }
                    C(iArr[0]);
                    return true;
                }
                if (i3 != 1) {
                    if (i3 != 2) {
                        return true;
                    }
                    C(iArr[0]);
                    return true;
                }
                if (this.f2526v) {
                    return true;
                }
                C(iArr[0]);
                return true;
            case 15:
                if (!s0.h(iArr, 0)) {
                    return true;
                }
                m(iArr[0]);
                return true;
            default:
                switch (i2) {
                    case 31:
                        if (!s0.h(iArr, 0)) {
                            return true;
                        }
                        a(iArr[0]);
                        return true;
                    case 32:
                        c();
                        return true;
                    case 33:
                        d();
                        return true;
                    case 34:
                        b();
                        return true;
                    case 35:
                        M();
                        return true;
                    case 36:
                        O();
                        return true;
                    case 37:
                        N();
                        return true;
                    default:
                        switch (i2) {
                            case 39:
                                r();
                                return true;
                            case 40:
                                if (!s0.i(strArr, 0)) {
                                    return true;
                                }
                                s(strArr[0]);
                                return true;
                            case 41:
                                t();
                                return true;
                            default:
                                return false;
                        }
                }
        }
    }

    public void A0(int i2, int[] iArr, String[] strArr) {
        boolean z2 = strArr == null || strArr.length == 0;
        String[] strArr2 = new String[(z2 ? 0 : strArr.length) + 1];
        strArr2[0] = this.f2506b;
        if (!z2) {
            System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        }
        Log.e("BT", "SlaveDevice update cmd:" + i2 + " ints:" + Arrays.toString(iArr) + " strs:" + Arrays.toString(strArr2));
        e.X(i2, iArr, null, strArr2);
    }

    public void B() {
        V("CG");
    }

    public void B0(int i2, String... strArr) {
        A0(i2, null, strArr);
    }

    public void C(int i2) {
        V("CO");
    }

    public void C0(y.b bVar, int i2, int... iArr) {
        D0(bVar, i2, iArr, null);
    }

    public boolean D() {
        int i2 = this.f2530z;
        return i2 == 5 || i2 == 4 || E();
    }

    public void D0(y.b bVar, int i2, int[] iArr, String[] strArr) {
        x xVarL2 = g.Y2().L2();
        if (xVarL2 == null) {
            return;
        }
        boolean z2 = strArr == null || strArr.length == 0;
        String[] strArr2 = new String[(z2 ? 0 : strArr.length) + 1];
        strArr2[0] = this.f2506b;
        if (!z2) {
            System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        }
        Log.e("BT", "SlaveDevice update callback cmd:" + i2 + " ints:" + Arrays.toString(iArr) + " strs:" + Arrays.toString(strArr2));
        xVarL2.H(bVar, i2, iArr, null, strArr2);
    }

    public boolean E() {
        return this.f2530z == 6;
    }

    public void E0(y.b bVar, int i2, String... strArr) {
        D0(bVar, i2, null, strArr);
    }

    public boolean F() {
        return (s0.t(this.f2512h) || s0.t(this.f2513i)) ? false : true;
    }

    public void F0(int i2) {
        boolean z2 = this.f2527w;
        if (z2 && i2 == 0) {
            V("CJ");
        } else {
            if (z2 || i2 != 1) {
                return;
            }
            V("CI");
        }
    }

    public boolean G() {
        return this.f2527w;
    }

    public void H(int i2) {
        switch (i2) {
            case 0:
                int i3 = this.f2530z;
                if (i3 != 3) {
                    if (i3 == 5) {
                        L();
                    }
                } else if (!s0.t(this.f2512h)) {
                    u(this.f2512h);
                } else {
                    P();
                }
                break;
            case 1:
                if (this.f2530z != 5) {
                    B();
                } else {
                    R();
                }
                break;
            case 2:
                I("0");
                break;
            case 3:
                I("1");
                break;
            case 4:
                I("2");
                break;
            case 5:
                I("3");
                break;
            case 6:
                I("4");
                break;
            case 7:
                I("5");
                break;
            case 8:
                I("6");
                break;
            case 9:
                I("7");
                break;
            case 10:
                I("8");
                break;
            case 11:
                I("9");
                break;
            case 12:
                I("+");
                break;
            case 13:
                I("*");
                break;
            case 14:
                I("#");
                break;
        }
    }

    public final void I(String str) {
        if (this.f2512h == null) {
            this.f2512h = ProxyProperties.LOCAL_EXCL_LIST;
        }
        if (this.f2512h.length() == 1024) {
            this.f2512h = ProxyProperties.LOCAL_EXCL_LIST;
        }
        c0(this.f2512h + str);
        if (this.f2530z != 6 || "+".equals(str)) {
            return;
        }
        W("CX", str);
    }

    public void J(int i2) {
        if (i2 == 0 && this.f2530z == 1) {
            V("CC");
            return;
        }
        if (1 == i2 && this.f2530z != 1) {
            V("CD");
        } else if (2 == i2) {
            if (this.f2530z == 1) {
                J(0);
            } else {
                J(1);
            }
        }
    }

    public void K(String str) {
        synchronized (this.f2523s) {
            a aVar = this.f2523s.get(str);
            Log.e("BT", "pauseCallTimer() " + aVar);
            if (aVar != null) {
                aVar.k(true);
            }
        }
    }

    public void L() {
        V("CE");
    }

    public void M() {
        V("PH");
    }

    public void N() {
        V("PJ");
    }

    public void O() {
        V("PI");
    }

    public void P() {
        V("CH");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean Q(y.b bVar, int i2) {
        if (g.Y2().L2() == null) {
            return false;
        }
        if (i2 == 0) {
            E0(bVar, i2, this.f2514j);
        } else if (i2 == 1) {
            E0(bVar, i2, this.f2515k);
        } else if (i2 == 2) {
            C0(bVar, i2, this.f2519o);
        } else if (i2 == 6) {
            E0(bVar, i2, this.f2507c);
        } else if (i2 == 7) {
            E0(bVar, i2, this.f2508d);
        } else if (i2 == 8) {
            E0(bVar, i2, this.f2512h);
        } else if (i2 == 11) {
            synchronized (this.f2523s) {
                Iterator<a> it = this.f2523s.values().iterator();
                while (it.hasNext()) {
                    it.next().l(bVar);
                }
            }
        } else if (i2 == 13) {
            C0(bVar, i2, this.f2528x ? 1 : 0);
        } else if (i2 == 18) {
            C0(bVar, i2, this.f2526v ? 1 : 0);
        } else if (i2 == 23) {
            C0(bVar, i2, this.f2505a);
        } else if (i2 == 26) {
            E0(bVar, i2, this.f2516l);
        } else if (i2 == 51) {
            E0(bVar, i2, this.f2517m);
        } else if (i2 == 28) {
            C0(bVar, i2, this.f2518n);
        } else if (i2 != 29) {
            switch (i2) {
                case 43:
                    if (!ZLink.Y().d0() && !h1.a.d().j()) {
                        C0(bVar, i2, this.f2527w ? 1 : 0);
                    }
                    break;
                case 44:
                    C0(bVar, i2, this.f2511g);
                    break;
                case 45:
                    C0(bVar, i2, this.f2510f);
                    break;
                case 46:
                    E0(bVar, i2, this.f2509e);
                    break;
                default:
                    switch (i2) {
                        case 61:
                            C0(bVar, i2, this.f2530z);
                            break;
                        case 62:
                            C0(bVar, i2, this.A);
                            break;
                        case 63:
                            E0(bVar, i2, this.f2513i);
                            break;
                    }
                    break;
            }
        } else {
            int[] iArr = new int[1];
            iArr[0] = this.f2524t ? 2 : 1;
            C0(bVar, i2, iArr);
        }
        return true;
    }

    public void R() {
        V("CF");
    }

    public void S() {
        Log.e("BT", " == release Slave: index = " + this.f2506b + " mac: " + this.f2507c);
        f0("000000000000");
        this.f2508d = ProxyProperties.LOCAL_EXCL_LIST;
        this.f2507c = ProxyProperties.LOCAL_EXCL_LIST;
        this.f2506b = ProxyProperties.LOCAL_EXCL_LIST;
    }

    public void U(String str) {
        W("YG", str);
    }

    public void V(String str) {
        W(str, ProxyProperties.LOCAL_EXCL_LIST);
    }

    public void W(String str, String str2) {
        if (s0.t(str2)) {
            str2 = ProxyProperties.LOCAL_EXCL_LIST;
        }
        j0.a aVar = this.f2529y;
        if (aVar != null) {
            aVar.a(str + this.f2507c + str2);
        }
    }

    public void X(String str) {
        j0.a aVar = this.f2529y;
        if (aVar != null) {
            aVar.b(str);
        }
    }

    public void Y(int i2) {
        if (i2 != this.A) {
            this.A = i2;
            z0(62, i2);
        }
    }

    public void Z(String str) {
        if (s0.j(str, this.f2517m)) {
            return;
        }
        this.f2517m = str;
        B0(51, str);
    }

    public void a(int i2) {
        if (i2 == 1 && this.A == 1) {
            V("CU");
        }
    }

    public void a0(int i2) {
        if (i2 != this.f2511g) {
            this.f2511g = i2;
            z0(44, i2);
        }
    }

    public void b() {
        V("CR");
    }

    public void b0(boolean z2) {
        if (z2 != this.f2524t) {
            this.f2524t = z2;
            int[] iArr = new int[1];
            iArr[0] = z2 ? 2 : 1;
            z0(29, iArr);
        }
    }

    public void c() {
        V("CS");
    }

    public void c0(String str) {
        if (s0.j(str, this.f2512h)) {
            return;
        }
        this.f2512h = str;
        B0(8, str);
    }

    public void d() {
        V("CQ");
    }

    public void d0(int i2) {
        if (i2 != this.f2530z) {
            this.f2530z = i2;
            z0(61, i2);
            this.f2529y.c();
        }
    }

    public void e() {
        X("MD");
    }

    public void e0(String str) {
        if (s0.j(str, this.f2506b)) {
            return;
        }
        this.f2506b = str;
        B0(6, this.f2507c);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return super.equals(obj);
        }
        c cVar = (c) obj;
        return s0.j(this.f2507c, cVar.f2507c) && s0.j(this.f2506b, cVar.f2506b);
    }

    public void f() {
        X("MB");
    }

    public void f0(String str) {
        if (s0.j(this.f2507c, str)) {
            return;
        }
        this.f2507c = str;
        B0(6, str);
    }

    public void g() {
        X("MS");
    }

    public void g0(String str) {
        if (s0.j(str, this.f2522r)) {
            return;
        }
        this.f2522r = str;
        B0(49, str);
    }

    public void h() {
        X("MA");
    }

    public void h0(String str) {
        if (s0.j(str, this.f2516l)) {
            return;
        }
        this.f2516l = str;
        B0(26, str);
        if (u0.b.D == 3) {
            d.J0(str, ProxyProperties.LOCAL_EXCL_LIST);
        }
    }

    public int hashCode() {
        int iHashCode = super.hashCode();
        String str = this.f2507c;
        if (str != null) {
            iHashCode += str.hashCode() * 31;
        }
        String str2 = this.f2506b;
        return str2 != null ? iHashCode + (str2.hashCode() * 31) : iHashCode;
    }

    public void i() {
        X("ME");
    }

    public void i0(String str) {
        if (s0.j(str, this.f2515k)) {
            return;
        }
        this.f2515k = str;
        B0(1, str);
        if (u0.b.D == 3) {
            d.K0(str);
        }
    }

    public void j() {
        X("MC");
    }

    public void j0(String str) {
        if (s0.j(str, this.f2514j)) {
            return;
        }
        this.f2514j = str;
        B0(0, str);
        if (u0.b.D == 3) {
            d.L0(str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0051 A[Catch: all -> 0x0059, TryCatch #0 {, blocks: (B:15:0x0017, B:17:0x001f, B:18:0x0029, B:20:0x0051, B:21:0x0057), top: B:26:0x0017 }] */
    public void k(String str, int i2) {
        a aVar;
        if (s0.t(str)) {
            return;
        }
        synchronized (this.f2523s) {
            if (i2 == 5 || i2 == 6) {
                if (!this.f2523s.containsKey(str)) {
                    this.f2523s.put(str, new a(str));
                }
                aVar = this.f2523s.get(str);
                Log.e("BT", "callTime() ==> hfpState : " + i2 + " " + aVar);
                if (aVar != null) {
                    aVar.k(false);
                    aVar.i(i2);
                }
            } else {
                aVar = this.f2523s.get(str);
                Log.e("BT", "callTime() ==> hfpState : " + i2 + " " + aVar);
                if (aVar != null) {
                    aVar.k(false);
                    aVar.i(i2);
                }
            }
            throw th;
        }
    }

    public void k0(String str) {
        Log.e("BT", " last name: " + this.f2508d + "  to :" + str);
        if (s0.j(str, this.f2508d)) {
            return;
        }
        this.f2508d = str;
        B0(7, str);
    }

    public void l() {
        synchronized (this.f2523s) {
            Iterator<a> it = this.f2523s.values().iterator();
            while (it.hasNext()) {
                it.next().g();
            }
            this.f2523s.clear();
        }
    }

    public void l0(boolean z2) {
        if (z2 != this.f2526v) {
            this.f2526v = z2;
            z0(18, z2 ? 1 : 0);
        }
    }

    public void m(int i2) {
        String str;
        if (i2 == 0 && (str = this.f2512h) != null && !str.isEmpty()) {
            String str2 = this.f2512h;
            c0(str2.substring(0, str2.length() - 1));
        } else if (i2 == 1) {
            c0(ProxyProperties.LOCAL_EXCL_LIST);
        }
    }

    public void m0(String str) {
        if (s0.j(str, this.f2509e)) {
            return;
        }
        this.f2509e = str;
        B0(46, str);
    }

    public void n() {
        Y(1);
        i0(ProxyProperties.LOCAL_EXCL_LIST);
        j0(ProxyProperties.LOCAL_EXCL_LIST);
        h0(ProxyProperties.LOCAL_EXCL_LIST);
        Z(ProxyProperties.LOCAL_EXCL_LIST);
        o0(0);
        n0(0);
        p0(0);
        t0(0);
    }

    public void n0(int i2) {
        int i3;
        if (i2 != this.f2518n) {
            this.f2518n = i2;
            z0(28, i2);
            if (u0.b.D != 3 || i2 < 0 || (i3 = this.f2519o) < i2) {
                return;
            }
            d.A2(i2, i3);
        }
    }

    public void o(String str) {
        synchronized (this.f2523s) {
            a aVarRemove = this.f2523s.remove(str);
            Log.e("BT", "clearCallTimer() " + aVarRemove);
            if (aVarRemove != null) {
                aVarRemove.g();
            }
        }
    }

    public void o0(int i2) {
        if (i2 != this.f2519o) {
            this.f2519o = i2;
            z0(2, i2);
        }
    }

    public void p() {
        l();
        k0(ProxyProperties.LOCAL_EXCL_LIST);
        m0(ProxyProperties.LOCAL_EXCL_LIST);
        l0(false);
        r0(false);
        c0(ProxyProperties.LOCAL_EXCL_LIST);
        x0(ProxyProperties.LOCAL_EXCL_LIST);
        d0(1);
        s0(0);
        a0(0);
        v0(0);
        w0(false);
    }

    public void p0(int i2) {
        if (i2 != this.f2520p) {
            this.f2520p = i2;
            z0(3, i2);
        }
    }

    public void q() {
        synchronized (this.f2523s) {
            ArrayList arrayList = new ArrayList();
            for (String str : this.f2523s.keySet()) {
                if (!s0.j(str, this.f2512h)) {
                    arrayList.add(str);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                a aVarRemove = this.f2523s.remove((String) it.next());
                Log.e("BT", "clearInvalidCallTimer() clear()" + aVarRemove);
                if (aVarRemove != null) {
                    aVarRemove.g();
                }
            }
        }
    }

    public void q0(boolean z2) {
        if (this.f2528x != z2) {
            this.f2528x = z2;
            z0(13, z2 ? 1 : 0);
            e.l(this.f2528x ? 1 : 0);
        }
    }

    public void r() {
    }

    public void r0(boolean z2) {
        if (z2 != this.f2525u) {
            this.f2525u = z2;
            int[] iArr = new int[1];
            iArr[0] = z2 ? 4 : 3;
            z0(29, iArr);
        }
    }

    public void s(String str) {
        W("CV", str);
    }

    public void s0(int i2) {
        if (i2 != this.f2510f) {
            this.f2510f = i2;
            z0(45, i2);
        }
    }

    public void t() {
        V("CV0");
    }

    public void t0(int i2) {
        if (i2 != this.f2521q) {
            this.f2521q = i2;
            z0(4, i2);
        }
    }

    public String toString() {
        return "SlaveDevice: [ name:" + this.f2508d + " mac:" + this.f2507c + " index:" + this.f2506b + " hfpState:" + this.f2530z + " a2dpState:" + this.A + " callingNumber:" + this.f2512h + " waitingNumber:" + this.f2513i + " battery:" + this.f2511g + " signalLevel" + this.f2510f + "]";
    }

    public void u(String str) {
        W("CW", str);
    }

    public void u0(j0.a aVar) {
        this.f2529y = aVar;
    }

    public void v() {
        V("PK");
    }

    public void v0(int i2) {
        this.f2505a = i2;
    }

    public String w() {
        return this.f2512h;
    }

    public void w0(boolean z2) {
        if (z2 != this.f2527w) {
            this.f2527w = z2;
            z0(43, z2 ? 1 : 0);
        }
    }

    public int x() {
        return this.f2530z;
    }

    public void x0(String str) {
        if (s0.j(str, this.f2513i)) {
            return;
        }
        this.f2513i = str;
        B0(63, str);
        if (s0.t(str)) {
            return;
        }
        K(str);
    }

    public String y() {
        return this.f2507c;
    }

    public void y0() {
        V("PS");
    }

    public String z() {
        return this.f2513i;
    }

    public void z0(int i2, int... iArr) {
        A0(i2, iArr, null);
    }
}
