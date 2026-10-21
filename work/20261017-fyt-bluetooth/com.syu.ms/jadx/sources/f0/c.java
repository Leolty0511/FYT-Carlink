package f0;

import base.Configure;
import o1.h0;
import o1.s0;
import o1.x;
import y.f;

/* JADX INFO: loaded from: classes.dex */
public class c extends base.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static c f1882h;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public a f1883g = null;

    public c() {
        P2("amp");
        this.f331f.n("Amp-TRAN");
        this.f331f.f17001d = Configure.Property.MODULE_DEBUG_PREFIX.c("amp", false);
    }

    public static synchronized c X2() {
        if (f1882h == null) {
            f1882h = new c();
        }
        return f1882h;
    }

    @Override // y.c
    public f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // base.b
    public void N2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        a aVar = this.f1883g;
        if (aVar != null) {
            aVar.c(i2, iArr, fArr, strArr);
        }
    }

    @Override // base.b
    public void O2(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // y.c
    public void P0(y.b bVar, int i2) {
    }

    @Override // base.b
    public void Q2(h0 h0Var) {
    }

    @Override // base.b, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        super.Y1(bVar, i2, i3);
        if (bVar == null) {
            return;
        }
        super.Y1(bVar, i2, i3);
        this.f331f.m(bVar, i2);
        if (i3 == 0) {
            return;
        }
        a aVar = this.f1883g;
        if ((aVar == null || !aVar.h(bVar, i2)) && i2 == 0) {
            x xVar = this.f331f;
            int[] iArr = new int[1];
            a aVar2 = this.f1883g;
            iArr[0] = aVar2 == null ? -1 : aVar2.f1853e;
            xVar.G(bVar, i2, iArr);
        }
    }

    public a Y2() {
        return this.f1883g;
    }

    public void Z2() {
        if (this.f1883g != null) {
            return;
        }
        if (s0.m("sys.lsec.ext_dsp", 0) == 1) {
            this.f1883g = new b(z.a.f18171v);
        } else if (s0.m("sys.lsec.ext_dsp1", 0) == 1) {
            this.f1883g = new g0.b(z.a.f18171v);
        }
    }

    public void a3(int i2, int... iArr) {
        H0(i2, iArr, null, null);
    }
}
