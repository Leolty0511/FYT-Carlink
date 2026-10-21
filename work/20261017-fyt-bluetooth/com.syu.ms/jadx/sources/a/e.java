package a;

import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import n0.c4;
import n0.j4;
import o1.j0;
import z.k;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ArrayList<Object> f46a = new ArrayList<>();

    public static void a(Runnable runnable) {
        j0.f16915j.c(runnable);
    }

    public static void b(Object obj) {
        if (obj != null) {
            ArrayList<Object> arrayList = f46a;
            if (!arrayList.contains(obj)) {
                arrayList.add(obj);
            }
        }
        Log.e("VOL", "====================>>> addRootView");
        View viewS = f.s();
        if (viewS.getParent() == null) {
            f.y().addView(viewS, f.t());
        }
    }

    public static void c(int i2) {
        c4 c4Var;
        if (b.f16e0 != i2) {
            if (i2 != 1) {
                y0.h.Y(1, u0.b.n4 != 1);
            }
            b.f16e0 = i2;
            if (i2 == 1 && (c4Var = j4.f16466d) != null) {
                c4Var.M2();
            }
            d.f45a.c();
        }
    }

    public static void d() {
        if (f.s().getParent() != null) {
            f.y().removeView(f.s());
        }
        f46a.clear();
    }

    public static void e(int i2) {
        if (b.f18f0 != i2) {
            b.f18f0 = i2;
            y0.h.M();
        }
    }

    public static void f(Object obj) {
        if (obj != null) {
            f46a.remove(obj);
        }
        View viewS = f.s();
        Log.e("VOL", "====================>>> removeRootView");
        if (viewS.getParent() == null || !f46a.isEmpty()) {
            return;
        }
        f.y().removeView(viewS);
    }

    public static void g() {
        u0.d.v(1);
        if (u0.b.f17308b == 1) {
            k.s(1, 170, 96);
        }
        u0.b.T = u0.b.R;
        i.V();
        if (g.e.a() == 1) {
            Bundle bundle = new Bundle();
            bundle.putString("command", "send_hot_start_cmd");
            f.m().sendExtraCommand(LocationManager.GPS_PROVIDER, "io_ctrl_command", bundle);
        }
        y0.h.P();
        h0.c.f2425b.O();
        c4 c4Var = j4.f16466d;
        if (c4Var != null) {
            c4Var.M2();
        }
    }
}
