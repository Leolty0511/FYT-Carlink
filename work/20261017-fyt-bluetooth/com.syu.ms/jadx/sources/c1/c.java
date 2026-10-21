package c1;

import android.util.Log;
import base.Configure;
import i1.s;
import java.util.Arrays;
import o1.s0;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class c extends p {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static c f412d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public x f413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p f414c;

    public c() {
        x xVar = new x();
        this.f413b = xVar;
        xVar.n("Tpms-TRAN");
        this.f413b.f17001d = Configure.Property.MODULE_DEBUG_PREFIX.c("tpms", false);
    }

    public static synchronized c O2() {
        if (f412d == null) {
            f412d = new c();
        }
        return f412d;
    }

    public void H0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        x xVar = this.f413b;
        if (xVar.f17001d) {
            Log.e(xVar.g(), "     updateCode :  " + i2 + "  ints :" + Arrays.toString(iArr) + "  flts :" + Arrays.toString(fArr) + "  strs :" + Arrays.toString(strArr));
        }
        this.f413b.s(i2, iArr, fArr, strArr);
    }

    @Override // c1.p, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        p pVar = this.f414c;
        if (pVar != null) {
            return pVar.M1(i2, iArr, fArr, strArr);
        }
        return null;
    }

    @Override // c1.p, y.c
    public void P0(y.b bVar, int i2) {
        x xVar;
        if (bVar == null || (xVar = this.f413b) == null) {
            return;
        }
        xVar.p(bVar, i2);
    }

    public p P2() {
        return this.f414c;
    }

    public void Q2(p pVar) {
        this.f414c = pVar;
    }

    public void R2(y.b bVar, int i2, int... iArr) {
        S2(bVar, i2, iArr, null, null);
    }

    public void S2(y.b bVar, int i2, int[] iArr, float[] fArr, String[] strArr) {
        x xVar = this.f413b;
        if (xVar.f17001d) {
            Log.e(xVar.g(), "     updateCode :  " + i2 + "  ints :" + Arrays.toString(iArr) + "  flts :" + Arrays.toString(fArr) + "  strs :" + Arrays.toString(strArr));
        }
        this.f413b.H(bVar, i2, iArr, fArr, strArr);
    }

    @Override // c1.p, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (bVar == null) {
            return;
        }
        x xVar = this.f413b;
        if (xVar != null) {
            xVar.m(bVar, i2);
        }
        if (s.n(bVar, i2, i3) || i3 == 0) {
            return;
        }
        if (i2 >= 500) {
            if (i2 != 500) {
                return;
            }
            R2(bVar, i2, a.f410e);
        } else {
            p pVar = this.f414c;
            if (pVar != null) {
                pVar.Y1(bVar, i2, i3);
            }
        }
    }

    @Override // c1.p, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        p pVar;
        if (i2 == 502 && s0.h(iArr, 0)) {
            z.k.s(iArr);
            return;
        }
        if (i2 == 503 && s0.h(iArr, 0)) {
            z.k.s(iArr);
        } else {
            if (s.m(i2, iArr, fArr, strArr) || (pVar = this.f414c) == null) {
                return;
            }
            pVar.Z0(i2, iArr, fArr, strArr);
        }
    }
}
