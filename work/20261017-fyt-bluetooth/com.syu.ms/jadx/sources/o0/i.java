package o0;

import base.Configure;
import o1.h0;
import o1.p0;

/* JADX INFO: loaded from: classes2.dex */
public class i extends base.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static i f16809g;

    public i() {
        this.f331f.n("Dvd-TRAN");
        this.f331f.f17001d = Configure.Property.MODULE_DEBUG_PREFIX.c("dvd", false);
        P2("DVD");
    }

    public static synchronized i X2() {
        if (f16809g == null) {
            f16809g = new i();
        }
        return f16809g;
    }

    @Override // y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                if (!Y2(iArr, 1) || iArr[0] < 0 || iArr[0] >= 10240) {
                    return null;
                }
                return new y.f(e.U[iArr[0]]);
            case 1:
                if (!Y2(iArr, 1) || iArr[0] < 0 || iArr[0] >= 10240) {
                    return null;
                }
                return new y.f(e.V[iArr[0]]);
            case 2:
                if (!Y2(iArr, 1) || iArr[0] < 0 || iArr[0] >= 10240) {
                    return null;
                }
                return new y.f(e.W[iArr[0]]);
            case 3:
                if (!Y2(iArr, 1) || iArr[0] < 0 || iArr[0] >= 2048) {
                    return null;
                }
                return new y.f(e.f16765a0[iArr[0]], e.X[iArr[0]]);
            case 4:
                if (!Y2(iArr, 1) || iArr[0] < 0 || iArr[0] >= 2048) {
                    return null;
                }
                return new y.f(e.f16767b0[iArr[0]], e.Y[iArr[0]]);
            case 5:
                if (!Y2(iArr, 1) || iArr[0] < 0 || iArr[0] >= 2048) {
                    return null;
                }
                return new y.f(e.f16769c0[iArr[0]], e.Z[iArr[0]]);
            case 6:
                return new y.f(e.f16784k);
            case 7:
                return new y.f(e.I);
            case 8:
                return new y.f(e.f16778h);
            case 9:
                return new y.f(e.f16780i);
            case 10:
                return new y.f(e.f16782j);
            default:
                return null;
        }
    }

    @Override // base.b
    public void N2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                if (e.f16772e) {
                    return;
                }
                e.f16766b.f();
                return;
            case 1:
                if (Y2(iArr, 1)) {
                    g.T(17, e.E);
                    e.f16766b.D(iArr[0]);
                    return;
                }
                return;
            case 2:
                if (Y2(iArr, 1)) {
                    e.f16766b.A(iArr[0]);
                    return;
                }
                return;
            case 3:
                if (Y2(iArr, 2)) {
                    e.f16766b.C(iArr[0], iArr[1]);
                    return;
                }
                return;
            case 4:
                if (Y2(iArr, 1)) {
                    e.f16766b.q(iArr[0]);
                    return;
                }
                return;
            case 5:
                e.f16766b.p();
                return;
            case 6:
                e.f16766b.r();
                return;
            case 7:
                e.f16766b.l();
                return;
            case 8:
                e.f16766b.i();
                return;
            case 9:
                e.f16766b.j();
                return;
            case 10:
                e.f16766b.o();
                return;
            case 11:
                e.f16766b.n();
                return;
            case 12:
                e.f16766b.E();
                return;
            case 13:
                e.f16766b.w();
                return;
            case 14:
                e.f16766b.k();
                return;
            case 15:
                e.f16766b.B();
                return;
            case 16:
                e.f16766b.y();
                return;
            case 17:
                e.f16766b.x();
                return;
            case 18:
                e.f16766b.b();
                return;
            case 19:
                e.f16766b.t();
                return;
            case 20:
                if (Y2(iArr, 1)) {
                    e.f16766b.s(iArr[0]);
                    return;
                }
                return;
            case 21:
                if (Y2(iArr, 1)) {
                    g.h(iArr[0]);
                    return;
                }
                return;
            case 22:
                if (p0.h(strArr, 1)) {
                    g.X(strArr[0]);
                    return;
                }
                return;
            case 23:
                e.f16766b.a();
                return;
            case 24:
                if (Y2(iArr, 1)) {
                    e.f16766b.z(iArr[0]);
                }
                break;
            case 25:
                break;
            default:
                return;
        }
        e.f16766b.v();
    }

    @Override // base.b
    public void O2(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // y.c
    public void P0(y.b bVar, int i2) {
        if (bVar == null) {
            return;
        }
        this.f331f.p(bVar, i2);
    }

    @Override // base.b
    public void Q2(h0 h0Var) {
    }

    @Override // base.b, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (bVar == null) {
        }
        this.f331f.m(bVar, i2);
        if (i3 == 0) {
            return;
        }
        switch (i2) {
            case 0:
                this.f331f.F(bVar, i2, e.f16788m);
                break;
            case 1:
                this.f331f.F(bVar, i2, e.f16790n);
                break;
            case 2:
                this.f331f.F(bVar, i2, e.f16791o);
                break;
            case 3:
                this.f331f.G(bVar, i2, e.f16796t);
                break;
            case 4:
                this.f331f.G(bVar, i2, e.f16797u);
                break;
            case 5:
                this.f331f.G(bVar, i2, e.f16798v);
                break;
            case 6:
                this.f331f.G(bVar, i2, e.f16799w);
                break;
            case 7:
                this.f331f.G(bVar, i2, e.f16800x);
                break;
            case 8:
                this.f331f.G(bVar, i2, e.f16801y);
                break;
            case 12:
                this.f331f.G(bVar, i2, e.f16794r);
                break;
            case 13:
                this.f331f.G(bVar, i2, e.f16795s);
                break;
            case 14:
                this.f331f.G(bVar, i2, e.B);
                break;
            case 15:
                this.f331f.G(bVar, i2, e.C);
                break;
            case 16:
                this.f331f.F(bVar, i2, e.f16792p);
                break;
            case 17:
                this.f331f.G(bVar, i2, e.E);
                break;
            case 18:
                this.f331f.G(bVar, i2, e.F);
                break;
            case 19:
                this.f331f.G(bVar, i2, e.D);
                break;
            case 20:
                this.f331f.G(bVar, i2, e.I);
                break;
            case 21:
                this.f331f.G(bVar, i2, e.J);
                break;
            case 22:
                this.f331f.G(bVar, i2, e.M);
                break;
            case 23:
                this.f331f.G(bVar, i2, e.N);
                break;
            case 24:
                this.f331f.G(bVar, i2, e.f16764a);
                break;
            case 25:
                this.f331f.G(bVar, i2, e.f16774f);
                break;
            case 26:
                this.f331f.G(bVar, i2, e.f16778h);
                break;
            case 27:
                this.f331f.G(bVar, i2, e.f16780i);
                break;
            case 28:
                this.f331f.G(bVar, i2, e.f16782j);
                break;
            case 29:
                this.f331f.G(bVar, i2, e.f16784k);
                break;
            case 30:
                this.f331f.F(bVar, i2, e.f16793q);
                break;
            case 31:
                this.f331f.G(bVar, i2, e.A);
                break;
            case 32:
                this.f331f.G(bVar, i2, e.O);
                break;
            case 34:
                this.f331f.G(bVar, i2, e.P);
                break;
            case 35:
                this.f331f.G(bVar, i2, e.Q);
                break;
            case 36:
                this.f331f.G(bVar, i2, e.R);
                break;
            case 37:
                int i4 = e.f16777g0;
                if (i4 != 4) {
                    this.f331f.G(bVar, i2, i4);
                }
                break;
            case 38:
                this.f331f.G(bVar, i2, e.S);
                break;
        }
    }

    public final boolean Y2(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }
}
