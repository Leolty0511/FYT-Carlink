package o0;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.util.Log;
import app.App;
import o1.k;
import o1.p0;
import o1.s;

/* JADX INFO: loaded from: classes2.dex */
public class c extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d0.a f16753a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f16754b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f16755c = new RunnableC0093c();

    public class a implements s {
        public a() {
        }

        @Override // o1.s
        public void R(boolean z2) {
            if (z2) {
                u0.d.T3(3, 3);
            } else {
                u0.d.T3(3, 0);
            }
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f16757a = false;

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17320f == 0) {
                if (e.I == 6) {
                    this.f16757a = true;
                }
                c.this.M();
                return;
            }
            if (this.f16757a) {
                this.f16757a = false;
                c.this.L();
            }
            if ("com.syu.dvd".equals(g1.c.b().f())) {
                u0.d.T3(3, 3);
            } else {
                u0.d.T3(3, 0);
            }
        }
    }

    /* JADX INFO: renamed from: o0.c$c, reason: collision with other inner class name */
    public class RunnableC0093c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f16759a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f16760b;

        /* JADX INFO: renamed from: o0.c$c$a */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (u0.b.D == 4 || RunnableC0093c.this.f16759a) {
                    return;
                }
                g.T(20, 1);
            }
        }

        public RunnableC0093c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.d("dvd", "appId = " + u0.b.D);
            if (u0.b.D == 4) {
                this.f16760b = false;
                if (this.f16759a) {
                    this.f16759a = false;
                    c.this.o();
                    return;
                }
                int i2 = e.I;
                if (i2 == 2) {
                    g.T(20, 1);
                    return;
                } else {
                    g.T(20, i2);
                    return;
                }
            }
            if (e.I != 6) {
                if (h0.c.G != 0) {
                    if (u0.b.C == 4) {
                        this.f16759a = true;
                        c.this.n();
                        c.this.O();
                        return;
                    }
                    return;
                }
                if (this.f16760b) {
                    return;
                }
                this.f16760b = true;
                c.this.N();
                k.a().postDelayed(new a(), 1000L);
            }
        }
    }

    public class d extends y.b.a implements d0.a {
        public d() {
        }

        @Override // y.b
        public void H0(int i2, int[] iArr, float[] fArr, String[] strArr) {
            if (i2 == 17) {
                if (K2(iArr, 1)) {
                    g.D(iArr[0]);
                    c.this.P();
                    c.this.Q();
                }
                return;
            }
            if (i2 == 20) {
                if (K2(iArr, 1)) {
                    if (iArr[0] != 1 || e.I == 2) {
                        g.z(iArr[0]);
                        return;
                    } else {
                        g.z(iArr[0]);
                        return;
                    }
                }
                return;
            }
            if (i2 == 38) {
                if (p0.b(iArr, 1)) {
                    g.f(iArr[0]);
                    return;
                }
                return;
            }
            if (i2 == 35) {
                if (p0.b(iArr, 1)) {
                    g.Q(iArr[0]);
                    return;
                }
                return;
            }
            if (i2 == 36) {
                if (p0.b(iArr, 1)) {
                    g.N(iArr[0]);
                    return;
                }
                return;
            }
            switch (i2) {
                case 12:
                    if (K2(iArr, 1)) {
                        g.G(iArr[0]);
                    }
                    break;
                case 13:
                    if (K2(iArr, 1)) {
                        g.O(iArr[0]);
                    }
                    break;
                case 14:
                    if (p0.b(iArr, 1)) {
                        g.I(iArr[0]);
                        c.this.Q();
                    }
                    break;
                case 15:
                    if (p0.b(iArr, 1)) {
                        g.P(iArr[0]);
                        c.this.P();
                        c.this.Q();
                    }
                    break;
                default:
                    switch (i2) {
                        case 31:
                            if (p0.b(iArr, 1)) {
                                g.E(iArr[0]);
                            }
                            break;
                        case 32:
                            if (p0.b(iArr, 1)) {
                                g.M(iArr[0]);
                            }
                            break;
                        case 33:
                            g.T(33, iArr);
                            break;
                    }
                    break;
            }
        }

        public final boolean K2(int[] iArr, int i2) {
            return iArr != null && iArr.length >= i2;
        }

        @Override // d0.a
        public void O(y.d dVar) {
            try {
                y.g gVar = e.f16768c;
                gVar.O2(dVar.p2(3));
                gVar.Y1(this, 12, 1);
                gVar.Y1(this, 13, 1);
                gVar.Y1(this, 17, 1);
                gVar.Y1(this, 20, 1);
                gVar.Y1(this, 33, 0);
                gVar.Y1(this, 14, 1);
                gVar.Y1(this, 15, 1);
                gVar.Y1(this, 32, 1);
                gVar.Y1(this, 35, 1);
                gVar.Y1(this, 31, 1);
                gVar.Y1(this, 36, 1);
                gVar.Y1(this, 38, 1);
                if (u0.b.D == 4) {
                    c.this.L();
                }
                if ("com.syu.dvd".equals(g1.c.b().f())) {
                    gVar.L2(21, 1);
                } else {
                    gVar.L2(21, 0);
                }
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }

        @Override // d0.a
        public void m1() {
            if (d0.b.h().i() == null) {
                e.f16768c.O2(null);
                return;
            }
            y.g gVar = e.f16768c;
            gVar.P0(this, 12);
            gVar.P0(this, 13);
            gVar.P0(this, 17);
            gVar.P0(this, 20);
            gVar.P0(this, 33);
            gVar.P0(this, 14);
            gVar.P0(this, 15);
            gVar.P0(this, 32);
            gVar.P0(this, 35);
            gVar.P0(this, 31);
            gVar.P0(this, 36);
            gVar.P0(this, 38);
            gVar.O2(null);
        }
    }

    @Override // o0.h
    public void A(int i2) {
    }

    @Override // o0.h
    public void B() {
        e.f16768c.K2(15);
    }

    @Override // o0.h
    public void C(int i2, int i3) {
        e.f16768c.M2(3, i2, i3);
    }

    @Override // o0.h
    public void D(int i2) {
        e.f16768c.L2(1, i2);
    }

    @Override // o0.h
    public void E() {
        e.f16768c.K2(12);
    }

    public final void L() {
        e.f16768c.L2(0, 0);
    }

    public final void M() {
        e.f16768c.L2(0, 2);
    }

    public final void N() {
        e.f16768c.L2(0, 1);
    }

    public final void O() {
        e.f16768c.L2(0, 3);
    }

    public final void P() {
        int i2;
        if (e.E == 1 && (i2 = e.C) > 0) {
            g.w(1);
            if (e.f16799w != 1) {
                e.X[0] = "1.\\";
                e.f16765a0[0] = i2;
                g.c(1);
            }
            if (e.f16796t != i2) {
                int i3 = 0;
                while (i3 < i2) {
                    int i4 = i3 + 1;
                    e.U[i3] = String.format("CD Track %d ", Integer.valueOf(i4));
                    i3 = i4;
                }
                g.b(i2);
            }
        }
    }

    public final void Q() {
        if (e.E == 1) {
            g.R(String.format("%d/%d CD Track %d ", Integer.valueOf(e.B + 1), Integer.valueOf(e.C), Integer.valueOf(e.B + 1)));
        }
    }

    @Override // o0.h
    public void a() {
        e.f16768c.K2(23);
    }

    @Override // o0.h
    public void b() {
        e.f16768c.K2(18);
    }

    @Override // o0.h
    public void c(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 != 2) {
            if (b2 == 80 && bArr[i2 + 1] == 5) {
                L();
                return;
            }
            return;
        }
        byte b3 = bArr[i2 + 1];
        if (b3 == 34) {
            i();
        }
        if (b3 == 35) {
            j();
            return;
        }
        if (b3 == 40) {
            p();
            return;
        }
        switch (b3) {
            case 91:
                g.z(2);
                M();
                g.l();
                break;
            case 92:
                r();
                break;
            case 93:
                l();
                break;
        }
    }

    @Override // o0.h
    public void d() {
        g.i(1);
        d0.b.h().e(this.f16753a);
        d0.b.h().f(App.c());
        u0.c.f17376c.a(this.f16754b, 0);
        u0.c.f17374a.a(this.f16755c, 1);
        try {
            PackageInfo packageInfo = a.f.q().getPackageInfo("com.example.discdaemondemoserver", 0);
            g.j(packageInfo.versionName + "-" + packageInfo.versionCode);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        a.b.f13d.h("com.syu.dvd", new a());
    }

    @Override // o0.h
    public void e() {
        d0.b.h().j(this.f16753a);
        u0.c.f17376c.d(this.f16754b);
        u0.c.f17374a.d(this.f16755c);
        a.b.f13d.i("com.syu.dvd");
    }

    @Override // o0.h
    public void f() {
        z.k.s(1, 1, 32);
    }

    @Override // o0.h
    public void i() {
        e.f16768c.K2(8);
    }

    @Override // o0.h
    public void j() {
        e.f16768c.K2(9);
    }

    @Override // o0.h
    public void k() {
        e.f16768c.K2(14);
    }

    @Override // o0.h
    public void l() {
        e.f16768c.K2(7);
    }

    @Override // o0.h
    public void n() {
        e.f16768c.K2(11);
    }

    @Override // o0.h
    public void o() {
        e.f16768c.K2(10);
    }

    @Override // o0.h
    public void p() {
        e.f16768c.K2(5);
    }

    @Override // o0.h
    public void q(int i2) {
        e.f16768c.L2(4, i2);
    }

    @Override // o0.h
    public void r() {
        e.f16768c.K2(6);
    }

    @Override // o0.h
    public void s(int i2) {
        e.f16768c.L2(20, i2);
    }

    @Override // o0.h
    public void t() {
        e.f16768c.K2(19);
    }

    @Override // o0.h
    public void v() {
    }

    @Override // o0.h
    public void w() {
        e.f16768c.K2(13);
    }

    @Override // o0.h
    public void x() {
        e.f16768c.K2(17);
    }

    @Override // o0.h
    public void y() {
        e.f16768c.K2(16);
    }

    @Override // o0.h
    public void z(int i2) {
    }
}
