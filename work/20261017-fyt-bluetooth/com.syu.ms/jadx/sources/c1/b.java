package c1;

import o1.f0;
import o1.j0;
import o1.q;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            b.a(c1.a.f408c);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(p pVar) {
        if (pVar.K2() == 0 && (pVar instanceof q)) {
            z.a.f18165p.d(z.a.f18155f, (q) pVar);
        } else {
            f0 f0Var = z.a.f18165p;
            f0Var.c();
            f0Var.setName("NOT IN USE, TPMS SERIAL THREAD KEEP WAIT");
        }
    }

    public static void c(Runnable runnable) {
        j0.f16915j.c(runnable);
    }

    public static p d(int i2) {
        switch (i2) {
            case 1:
                return new d();
            case 2:
                return new e();
            case 3:
                return new f();
            case 4:
                return new g();
            case 5:
                return new h();
            case 6:
                return new i();
            case 7:
                return new j();
            case 8:
                return new k();
            case 9:
                return new l();
            case 10:
                return new m();
            case 11:
                return new n();
            case 12:
            default:
                return new p();
            case 13:
                return new o();
        }
    }

    public static void e(Runnable runnable) {
        j0.f16915j.d(runnable);
    }

    public static void f(int i2) {
        if (c1.a.f410e != i2) {
            c1.a.f410e = i2;
            i(500, i2);
        }
    }

    public static void g(int i2) {
        if (c1.a.f406a != i2) {
            p pVarP2 = c.O2().P2();
            if (pVarP2 != null) {
                pVarP2.N2();
            }
            p pVarD = d(i2);
            c.O2().Q2(pVarD);
            if (pVarD != null) {
                pVarD.L2();
            }
            z.a.f18165p.c();
            c1.a.f408c = pVarD;
            if (m1.a.f13514c) {
                a(c1.a.f408c);
            } else {
                z.a.F.add(new a());
            }
            c1.a.f407b = c1.a.f406a;
            c1.a.f406a = i2;
        }
    }

    public static void h(int i2, String str, int... iArr) {
        j(i2, iArr, null, new String[]{str});
    }

    public static void i(int i2, int... iArr) {
        j(i2, iArr, null, null);
    }

    public static void j(int i2, int[] iArr, float[] fArr, String[] strArr) {
        c cVarO2 = c.O2();
        if (cVarO2 != null) {
            cVarO2.H0(i2, iArr, fArr, strArr);
        }
    }
}
