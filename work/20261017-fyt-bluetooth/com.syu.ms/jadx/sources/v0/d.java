package v0;

import android.os.IInterface;
import o1.f0;
import o1.q;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            IInterface iInterface = b.f17728c;
            if (iInterface instanceof q) {
                z.a.f18166q.d(z.a.f18156g, (q) iInterface);
            } else {
                f0 f0Var = z.a.f18166q;
                f0Var.c();
                f0Var.setName("NOT IN USE, OBD SERIAL THREAD KEEP WAIT");
            }
        }
    }

    public static m a(int i2) {
        if (i2 == 1) {
            return new i();
        }
        if (i2 == 2) {
            return new j();
        }
        if (i2 != 3) {
            return i2 != 4 ? new m() : new l();
        }
        return new k();
    }

    public static void b(int i2) {
        if (b.f17726a != i2) {
            m mVarN2 = h.M2().N2();
            if (mVarN2 != null) {
                mVarN2.L2();
            }
            m mVarA = a(i2);
            h.M2().O2(mVarA);
            if (mVarA != null) {
                mVarA.K2();
            }
            f0 f0Var = z.a.f18166q;
            f0Var.c();
            b.f17728c = mVarA;
            if (m1.a.f13514c) {
                IInterface iInterface = b.f17728c;
                if (iInterface instanceof q) {
                    f0Var.d(z.a.f18156g, (q) iInterface);
                } else {
                    f0Var.c();
                    f0Var.setName("NOT IN USE, OBD SERIAL THREAD KEEP WAIT");
                }
            } else {
                z.a.F.add(new a());
            }
            b.f17727b = b.f17726a;
            b.f17726a = i2;
        }
    }

    public static void c(int i2, int i3) {
        x.D(b.f17729d, b.f17731f, i2, i3);
    }

    public static void d(int i2, int i3) {
        x.x(b.f17729d, i2, i3);
    }

    public static void e(int i2, int i3, int i4) {
        x.y(b.f17729d, i2, i3, i4);
    }

    public static void f(int i2, int i3, String str) {
        x.z(b.f17729d, i2, i3, str);
    }

    public static void g(int i2, int[] iArr) {
        x.B(b.f17729d, i2, iArr);
    }

    public static void h(int i2, int[] iArr, String[] strArr) {
        x.C(b.f17729d, i2, iArr, null, strArr);
    }
}
