package a;

import android.app.Application;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static base.a f39a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static base.a f40b = new base.a.C0011a(3);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static base.a f41c = new base.a.C0011a(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static base.a f42d = new base.a.C0011a(4);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static base.a f43e = new base.a.C0011a(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static base.a f44f = new base.a.C0011a(5);

    public static void a(Application application) {
    }

    public static boolean b() {
        base.a aVar = f40b;
        if (aVar == null) {
            return true;
        }
        return aVar.d();
    }

    public static String c() {
        if (g.f.f(5)) {
            return "volBt = " + e() + " ;volPlayer = " + o() + " ;volNavi = " + k() + " ;volVa = " + u() + " ;volFm = " + h() + " ;volNotify = " + r();
        }
        return "volBt = " + e() + " ;volPlayer = " + o() + " ;volNavi = " + k() + " ;volVa = " + u() + " ;volPhone = " + n() + " ;volNotify = " + r();
    }

    public static int d() {
        base.a aVar = f44f;
        if (aVar == null) {
            return -1;
        }
        return aVar.b();
    }

    public static int e() {
        base.a aVar = f42d;
        if (aVar == null) {
            return 0;
        }
        return aVar.c();
    }

    public static void f(int i2) {
        base.a aVar = f42d;
        if (aVar != null) {
            aVar.f(i2);
        }
    }

    public static int g() {
        StringBuilder sb = new StringBuilder();
        sb.append("======>>  volBtMax ");
        base.a aVar = f42d;
        sb.append(aVar == null ? 0 : aVar.e());
        sb.append("  bt: ");
        sb.append(f42d);
        Log.e("sound", sb.toString());
        base.a aVar2 = f42d;
        if (aVar2 == null) {
            return 0;
        }
        return aVar2.e();
    }

    public static int h() {
        base.a aVar = f39a;
        if (aVar == null) {
            return 0;
        }
        return aVar.c();
    }

    public static void i(int i2) {
        Log.e("sound", " set Radio volume vol : " + f39a);
        base.a aVar = f39a;
        if (aVar != null) {
            aVar.f(i2);
        }
    }

    public static int j() {
        base.a aVar = f39a;
        if (aVar == null) {
            return 0;
        }
        return aVar.e();
    }

    public static int k() {
        base.a aVar = f41c;
        if (aVar == null) {
            return 0;
        }
        return aVar.c();
    }

    public static void l(int i2) {
        base.a aVar = f41c;
        if (aVar != null) {
            aVar.f(i2);
        }
    }

    public static int m() {
        base.a aVar = f41c;
        if (aVar == null) {
            return 0;
        }
        return aVar.e();
    }

    public static int n() {
        base.a aVar = f42d;
        if (aVar == null) {
            return 0;
        }
        return aVar.c();
    }

    public static int o() {
        base.a aVar = f40b;
        if (aVar == null) {
            return 0;
        }
        return aVar.c();
    }

    public static void p(int i2) {
        y0.f.f18071q = i2;
        base.a aVar = f40b;
        if (aVar != null) {
            aVar.f(i2);
        }
    }

    public static int q() {
        base.a aVar = f40b;
        if (aVar == null) {
            return 0;
        }
        return aVar.e();
    }

    public static int r() {
        base.a aVar = f44f;
        if (aVar == null) {
            return 0;
        }
        return aVar.c();
    }

    public static void s(int i2) {
        base.a aVar = f44f;
        if (aVar != null) {
            aVar.f(i2);
        }
    }

    public static int t() {
        base.a aVar = f44f;
        if (aVar == null) {
            return 0;
        }
        return aVar.e();
    }

    public static int u() {
        base.a aVar = f43e;
        if (aVar == null) {
            return 0;
        }
        return aVar.c();
    }

    public static void v(int i2) {
        base.a aVar = f43e;
        if (aVar != null) {
            aVar.f(i2);
        }
    }

    public static int w() {
        base.a aVar = f43e;
        if (aVar == null) {
            return 0;
        }
        return aVar.e();
    }
}
