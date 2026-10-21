package m0;

import base.Configure;
import k0.rt;
import n0.c4;
import n0.j4;
import o1.h0;

/* JADX INFO: loaded from: classes2.dex */
public class e extends base.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static e f13186h;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public a f13187g;

    public e() {
        this.f331f.n("CanUp-TRAN");
        this.f331f.f17001d = Configure.Property.MODULE_DEBUG_PREFIX.c("can", false);
        P2("CanUp-TRAN");
    }

    public static synchronized e Z2() {
        if (f13186h == null) {
            f13186h = new e();
        }
        return f13186h;
    }

    @Override // y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        a aVar = this.f13187g;
        if (aVar != null) {
            return aVar.M1(i2, iArr, fArr, strArr);
        }
        return null;
    }

    @Override // base.b
    public void N2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 >= 0 && i2 < 1000) {
            try {
                X2(i2, iArr, fArr, strArr);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        if (i2 != 1000) {
            return;
        }
        int iD = d.d();
        if (iD == 0) {
            iD = 12;
        }
        if (iD == 12) {
            l0.v vVar = new l0.v();
            l0.z.f13137a = vVar;
            l0.z.f13140d = true;
            if (rt.a3().g3()) {
                c4 c4Var = j4.f16466d;
                if (c4Var != null) {
                    c4Var.J3(vVar, 38400);
                }
            } else {
                z.k.s(103, 0, 150, 0);
            }
        }
        d.c(iD);
        if (iD == 0) {
            this.f331f.r(101, 0);
        } else {
            o1.u.w();
        }
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

    public final void X2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        a aVar = this.f13187g;
        if (aVar != null) {
            aVar.Z0(i2, iArr, fArr, strArr);
        }
    }

    @Override // base.b, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (bVar == null) {
            return;
        }
        this.f331f.m(bVar, i2);
        if (i3 == 0) {
            return;
        }
        if (i2 >= 100) {
            if (i2 != 100) {
                return;
            }
            this.f331f.G(bVar, i2, b.f13168a);
        } else {
            a aVar = this.f13187g;
            if (aVar != null) {
                aVar.Y1(bVar, i2, i3);
            }
        }
    }

    public a Y2() {
        return this.f13187g;
    }

    public void a3(a aVar) {
        this.f13187g = aVar;
    }
}
