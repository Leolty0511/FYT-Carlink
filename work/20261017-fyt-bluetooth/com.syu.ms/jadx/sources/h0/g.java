package h0;

import android.util.Log;
import base.Configure;
import java.util.ArrayList;
import java.util.List;
import module.bt.CmdBtSG9832;
import o1.b0;
import o1.h0;
import o1.p0;
import o1.s0;
import o1.x;
import plugins.ZLink;
import util.log.LogType;

/* JADX INFO: loaded from: classes.dex */
public class g extends base.b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static g f2481k;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<String> f2482g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2483h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public j0.b f2484i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2485j = false;

    public g() {
        P2("BT");
        this.f331f.n("Bt-TRAN");
        this.f331f.f17001d = Configure.Property.MODULE_DEBUG_PREFIX.c("bt", false);
    }

    public static synchronized g Y2() {
        if (f2481k == null) {
            f2481k = new g();
        }
        return f2481k;
    }

    @Override // y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // base.b
    public void N2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        Log.e("BT", "------- BT CMD = " + b0.c(i2, iArr, fArr, strArr) + " mRdaParser : " + this.f2484i);
        j0.b bVar = this.f2484i;
        if (bVar == null || !bVar.F(i2, iArr, fArr, strArr)) {
            if (i2 == 49) {
                if (s0.i(strArr, 0)) {
                    c.f2425b.o(strArr[0]);
                    return;
                }
                return;
            }
            if (i2 == 50) {
                c.f2425b.m();
                return;
            }
            if (i2 == 52) {
                e.b(strArr);
                return;
            }
            if (i2 == 53) {
                if (e3(strArr, 1)) {
                    a.f.p().t(LogType.CANBUS, "C_BT_NUMBER_NAME = " + strArr[0]);
                    e.a(strArr[0]);
                    return;
                }
                return;
            }
            if (i2 == 59) {
                if (s0.i(strArr, 0)) {
                    f fVar = c.f2425b;
                    if (fVar instanceof b) {
                        ((b) fVar).b0(strArr[0]);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i2 == 68) {
                if (s0.h(iArr, 0)) {
                    c.f2425b.J(iArr[0]);
                    return;
                }
                return;
            }
            if (i2 == 69) {
                if (s0.h(iArr, 0)) {
                    c.f2425b.q(iArr[0]);
                    return;
                }
                return;
            }
            switch (i2) {
                case 0:
                    c.f2425b.i();
                    break;
                case 1:
                    c.f2425b.V();
                    break;
                case 2:
                    c.f2425b.p();
                    break;
                case 3:
                    c.f2425b.E();
                    break;
                case 4:
                    c.f2425b.k();
                    break;
                case 5:
                    c.f2425b.l();
                    break;
                case 6:
                    if (b3(iArr, 1)) {
                        c.f2425b.h(iArr[0]);
                    }
                    break;
                case 7:
                    if (e3(strArr, 1)) {
                        c.f2425b.c(strArr[0]);
                    }
                    break;
                case 8:
                    c.f2425b.T();
                    break;
                case 9:
                    c.f2425b.n();
                    break;
                case 10:
                    c.f2425b.e();
                    break;
                case 11:
                    c.f2425b.z();
                    break;
                case 12:
                    if (e3(strArr, 1)) {
                        e.q(strArr[0]);
                    }
                    break;
                case 13:
                    if (b3(iArr, 1)) {
                        c.f2425b.P(iArr[0]);
                    }
                    break;
                case 14:
                    if (b3(iArr, 1)) {
                        c.f2425b.I(iArr[0]);
                    }
                    break;
                case 15:
                    if (b3(iArr, 1)) {
                        c.f2425b.C(iArr[0]);
                    }
                    break;
                case 16:
                    if (b3(iArr, 1)) {
                        e.A(iArr[0]);
                    }
                    break;
                case 17:
                    c.f2425b.reset();
                    break;
                case 18:
                    if (e3(strArr, 1)) {
                        c.f2425b.U(strArr[0]);
                    }
                    break;
                case 19:
                    if (e3(strArr, 1)) {
                        c.f2425b.g(strArr[0]);
                    }
                    break;
                case 20:
                    if (b3(iArr, 1)) {
                        c.f2425b.L(iArr[0]);
                    }
                    break;
                case 21:
                    if (e3(strArr, 1)) {
                        c.f2425b.D(strArr[0]);
                    }
                    break;
                case 22:
                    if (e3(strArr, 1)) {
                        c.f2425b.K(strArr[0]);
                    }
                    break;
                case 23:
                    if (e3(strArr, 1)) {
                        c.f2425b.A(strArr[0]);
                    }
                    break;
                case 24:
                    if (e3(strArr, 1)) {
                        c.f2425b.u(strArr[0]);
                    }
                    break;
                case 25:
                    if (e3(strArr, 1)) {
                        c.f2425b.N(strArr[0]);
                    }
                    break;
                case 26:
                    c.f2425b.j();
                    break;
                case 27:
                    c.f2425b.w();
                    break;
                case 28:
                    if (b3(iArr, 1)) {
                        e.f(iArr[0]);
                    }
                    break;
                case 29:
                    if (b3(iArr, 1)) {
                        c.f2425b.x(iArr[0]);
                    }
                    break;
                case 30:
                    if (b3(iArr, 1)) {
                        e.u(iArr[0]);
                    }
                    break;
                case 31:
                    if (b3(iArr, 1)) {
                        c.f2425b.H(iArr[0]);
                    }
                    break;
                case 32:
                    c.f2425b.S();
                    break;
                case 33:
                    c.f2425b.s();
                    break;
                case 34:
                    c.f2425b.G();
                    break;
                case 35:
                    c.f2425b.r();
                    break;
                case 36:
                    c.f2425b.d();
                    break;
                case 37:
                    c.f2425b.F();
                    break;
                case 38:
                    if (e3(strArr, 1)) {
                        c.f2425b.v(strArr[0]);
                    }
                    break;
                case 39:
                    c.f2425b.f();
                    break;
                case 40:
                    if (e3(strArr, 1)) {
                        c.f2425b.y(strArr[0]);
                    }
                    break;
                case 41:
                    c.f2425b.B();
                    break;
                case 42:
                    c.f2425b.M();
                    break;
                case 43:
                    c.e.d().c(576);
                    break;
                default:
                    switch (i2) {
                        case 55:
                            if (s0.h(iArr, 0)) {
                                X2(iArr[0] == 1);
                            }
                            break;
                        case 56:
                            c.f2425b.Q();
                            break;
                        case 57:
                            if (s0.i(strArr, 0)) {
                                c.f2425b.t(strArr[0]);
                            }
                            break;
                    }
                    break;
            }
        }
    }

    @Override // base.b
    public void O2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (p0.h(strArr, 1)) {
                e.k(strArr[0]);
            }
            return;
        }
        if (i2 == 1) {
            if (p0.h(strArr, 1)) {
                e.j(strArr[0]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (p0.b(iArr, 1)) {
                e.o(iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 18) {
            if (p0.b(iArr, 1)) {
                e.B(iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 19) {
            e.X(i2, iArr, fArr, strArr);
            return;
        }
        if (i2 == 22) {
            e.X(i2, iArr, fArr, strArr);
            return;
        }
        if (i2 == 24) {
            e.X(i2, iArr, null, strArr);
            return;
        }
        if (i2 == 26) {
            if (p0.h(strArr, 1)) {
                e.i(strArr[0]);
                return;
            }
            return;
        }
        if (i2 == 34) {
            if (p0.b(iArr, 1)) {
                e.c(iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 28) {
            if (p0.b(iArr, 1)) {
                e.m(iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 29) {
            if (p0.b(iArr, 1)) {
                e.L(iArr[0]);
                return;
            }
            return;
        }
        switch (i2) {
            case 5:
                e.X(i2, iArr, fArr, strArr);
                break;
            case 6:
                if (p0.h(strArr, 1)) {
                    e.N(strArr[0]);
                }
                break;
            case 7:
                if (p0.h(strArr, 1)) {
                    e.O(strArr[0]);
                }
                break;
            case 8:
                if (p0.h(strArr, 1)) {
                    e.q(strArr[0]);
                }
                break;
            case 9:
                if (p0.b(iArr, 1)) {
                    e.s(iArr[0]);
                    f fVar = c.f2425b;
                    if (fVar != null && (fVar instanceof CmdBtSG9832) && CmdBtSG9832.f13522v == 1) {
                        ((CmdBtSG9832) c.f2425b).k0();
                        break;
                    }
                }
                break;
            default:
                switch (i2) {
                    case 13:
                        if (p0.b(iArr, 1)) {
                            e.l(iArr[0]);
                        }
                        break;
                    case 14:
                        if (p0.h(strArr, 1)) {
                            e.E(strArr[0]);
                        }
                        break;
                    case 15:
                        if (p0.h(strArr, 1)) {
                            e.F(strArr[0]);
                        }
                        break;
                    case 16:
                        if (p0.h(strArr, 1)) {
                            e.S(strArr[0]);
                        }
                        break;
                }
                break;
        }
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

    public void X2(boolean z2) {
        if (c.f2433f != z2) {
            c.f2433f = z2;
            e.W(55, z2 ? 1 : 0);
            m1.c.e(214, z2 ? 1 : 0);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // base.b, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (bVar == null) {
        }
        super.Y1(bVar, i2, i3);
        this.f331f.m(bVar, i2);
        if (i3 == 0) {
            return;
        }
        j0.b bVar2 = this.f2484i;
        if (bVar2 == null || !bVar2.R(bVar, i2, i3)) {
            if (i2 == 0) {
                this.f331f.F(bVar, i2, c.f2445l);
                return;
            }
            if (i2 == 1) {
                this.f331f.F(bVar, i2, c.f2447m);
                return;
            }
            if (i2 == 2) {
                this.f331f.G(bVar, i2, c.I);
                return;
            }
            if (i2 == 3) {
                this.f331f.G(bVar, i2, c.J);
                return;
            }
            if (i2 == 4) {
                this.f331f.G(bVar, i2, c.K);
                return;
            }
            if (i2 == 20) {
                this.f331f.G(bVar, i2, c.A);
                return;
            }
            if (i2 == 23) {
                this.f331f.F(bVar, i2, c.f2459x);
                return;
            }
            if (i2 == 51) {
                this.f331f.F(bVar, i2, c.f2460y);
                return;
            }
            if (i2 == 55) {
                this.f331f.G(bVar, i2, c.f2433f ? 1 : 0);
                return;
            }
            if (i2 == 58) {
                x xVar = this.f331f;
                int[] iArr = new int[1];
                iArr[0] = c.W != 1 ? 0 : 1;
                xVar.G(bVar, i2, iArr);
                return;
            }
            if (i2 == 64) {
                this.f331f.G(bVar, i2, this.f2485j ? 1 : 0);
                return;
            }
            if (i2 == 68) {
                this.f331f.G(bVar, i2, c.D);
                return;
            }
            switch (i2) {
                case 6:
                    this.f331f.F(bVar, i2, c.f2451p);
                    break;
                case 7:
                    this.f331f.F(bVar, i2, c.f2452q);
                    break;
                case 8:
                    this.f331f.F(bVar, i2, c.f2437h);
                    break;
                case 9:
                    this.f331f.G(bVar, i2, c.E);
                    break;
                case 10:
                    this.f331f.G(bVar, i2, c.M);
                    break;
                case 11:
                    long j2 = c.f2432e0;
                    this.f331f.G(bVar, i2, (int) (j2 >> 32), (int) j2);
                    break;
                default:
                    switch (i2) {
                        case 13:
                            this.f331f.G(bVar, i2, c.N);
                            break;
                        case 14:
                            this.f331f.F(bVar, i2, c.f2453r);
                            break;
                        case 15:
                            this.f331f.F(bVar, i2, c.f2456u);
                            break;
                        case 16:
                            this.f331f.F(bVar, i2, c.f2457v);
                            break;
                        case 17:
                            this.f331f.F(bVar, i2, c.f2458w);
                            break;
                        case 18:
                            this.f331f.G(bVar, i2, c.f2461z);
                            break;
                        default:
                            switch (i2) {
                                case 26:
                                    this.f331f.F(bVar, i2, c.f2449n);
                                    break;
                                case 27:
                                    this.f331f.F(bVar, i2, c.f2450o);
                                    break;
                                case 28:
                                    this.f331f.G(bVar, i2, c.H);
                                    break;
                                case 29:
                                    this.f331f.G(bVar, i2, c.O);
                                    break;
                                default:
                                    switch (i2) {
                                        case 31:
                                            this.f331f.G(bVar, i2, c.Q);
                                            break;
                                        case 32:
                                            this.f331f.G(bVar, i2, c.S);
                                            break;
                                        case 33:
                                            this.f331f.G(bVar, i2, c.f2424a0);
                                            break;
                                        case 34:
                                            this.f331f.G(bVar, i2, c.T);
                                            break;
                                        default:
                                            switch (i2) {
                                                case 42:
                                                    this.f331f.G(bVar, i2, this.f2483h);
                                                    break;
                                                case 43:
                                                    if (!ZLink.Y().d0() && !h1.a.d().j()) {
                                                        this.f331f.G(bVar, i2, c.U);
                                                        break;
                                                    }
                                                    break;
                                                case 44:
                                                    this.f331f.F(bVar, i2, c.f2454s);
                                                    break;
                                                case 45:
                                                    this.f331f.G(bVar, i2, c.C);
                                                    break;
                                                case 46:
                                                    this.f331f.F(bVar, i2, c.f2455t);
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
    }

    public synchronized j0.b Z2(z.e eVar) {
        j0.b bVar = this.f2484i;
        if (bVar == null || !eVar.equals(bVar.C())) {
            this.f2484i = new j0.b(eVar);
            d3(true);
        }
        return this.f2484i;
    }

    public j0.b a3() {
        return this.f2484i;
    }

    public final boolean b3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public void c3(int i2) {
        if (this.f2483h != i2) {
            this.f2483h = i2;
            e.W(42, i2);
        }
    }

    public final void d3(boolean z2) {
        if (z2 != this.f2485j) {
            this.f2485j = z2;
            e.W(64, z2 ? 1 : 0);
        }
    }

    public final boolean e3(String[] strArr, int i2) {
        return strArr != null && strArr.length >= i2;
    }
}
