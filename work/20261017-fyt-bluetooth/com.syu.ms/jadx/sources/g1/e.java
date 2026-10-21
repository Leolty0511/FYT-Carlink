package g1;

import android.app.ActivityManager;
import java.util.List;
import n0.j4;
import o1.n0;
import o1.o;
import o1.q0;
import o1.u;
import u0.i;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Runnable f2397a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Runnable f2398b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Runnable f2399c = new c();

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2;
            i.l3().y3();
            int i3 = u0.b.R;
            if (u0.b.f17347o != 0 || i3 < 30 || (i2 = u0.b.T) <= 0) {
                return;
            }
            int i4 = i2 - 1;
            u0.b.T = i4;
            if (i4 <= 0) {
                o oVar = u0.b.X2;
                if (oVar == null || !oVar.a(0, null, null, null, null)) {
                    if (!n0.a()) {
                        u0.b.T = i3;
                        return;
                    }
                    int i5 = u0.b.h4;
                    if (i5 != 0) {
                        if (i5 == 1) {
                            u0.d.u3(1);
                        }
                    } else if (j4.f16464b == 92) {
                        u0.d.j3(1);
                    } else {
                        u0.d.N(1);
                    }
                }
            }
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2400a = 0;

        @Override // java.lang.Runnable
        public void run() {
            int i2 = this.f2400a + 1;
            this.f2400a = i2;
            if (i2 > 2) {
                this.f2400a = 0;
                List<ActivityManager.RunningTaskInfo> listB0 = u.B0(100, 0);
                if (listB0 != null) {
                    for (int i3 = 0; i3 < listB0.size(); i3++) {
                        if (a.i.r(listB0.get(i3).topActivity.getPackageName())) {
                            a.e.e(1);
                            return;
                        }
                    }
                }
                a.e.e(0);
            }
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2401a = 300;

        @Override // java.lang.Runnable
        public void run() {
            this.f2401a--;
            if (o1.i.o().f16886b) {
                this.f2401a = 300;
            }
            if (this.f2401a == 0) {
                q0.D(1);
                this.f2401a = 300;
            }
        }
    }
}
