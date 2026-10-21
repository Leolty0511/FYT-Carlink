package c0;

import android.util.Log;
import h0.c;
import h0.e;
import o1.k;
import o1.s;
import o1.u;
import u0.h;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s f402a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final s f403b = new C0015b();

    public class a implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f404a = -1;

        /* JADX INFO: renamed from: c0.b$a$a, reason: collision with other inner class name */
        public class RunnableC0014a implements Runnable {
            public RunnableC0014a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (c0.a.f401a || !u.Y0().equals("com.tima.carnet.vt")) {
                    return;
                }
                u0.b.f17311c.c(10);
                h hVar = u0.b.f17311c;
                if (hVar instanceof u0.a) {
                    ((u0.a) hVar).i("com.tima.carnet.vt");
                }
            }
        }

        @Override // o1.s
        public void R(boolean z2) {
            if (z2) {
                if (this.f404a == -1) {
                    this.f404a = u0.b.D;
                }
                Log.e("C7729", "=======================>>>>>   mAppId: " + this.f404a + "  DataMisc.sEasyconnA2dpRequire: " + c0.a.f401a);
                if (c0.a.f401a) {
                    u0.b.f17311c.c(3);
                } else {
                    k.a().postDelayed(new RunnableC0014a(), 1000L);
                }
            }
        }
    }

    /* JADX INFO: renamed from: c0.b$b, reason: collision with other inner class name */
    public class C0015b implements s {
        @Override // o1.s
        public void R(boolean z2) {
            if (z2) {
                return;
            }
            if (u0.b.f17347o != 0) {
                u.f("com.syu.back");
                return;
            }
            if (c.G == 0 || c.f2446l0) {
                return;
            }
            if (e.K()) {
                u.t();
            } else {
                u.s();
            }
        }
    }
}
