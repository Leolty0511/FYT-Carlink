package e1;

import chip.Chip;
import o1.j0;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static void a(Runnable runnable) {
        j0.f16912g.c(runnable);
    }

    public static void b(Runnable runnable) {
        j0.f16914i.c(runnable);
    }

    public static synchronized void c(int i2) {
        if (a.f1656a == i2) {
            return;
        }
        g.g gVar = g.e.f2254a;
        boolean z2 = gVar != null && (gVar instanceof Chip);
        a.f1657b.d();
        a.f1656a = i2;
        switch (i2) {
            case 1:
                a.f1657b = new k();
                break;
            case 2:
                break;
            case 3:
                a.f1657b = new n();
                break;
            case 4:
                a.f1657b = new j();
                break;
            case 5:
                if (!z2) {
                    a.f1657b = new q();
                } else {
                    a.f1657b = new h(((Chip) g.e.f2254a).K);
                }
                break;
            case 6:
                a.f1657b = new p();
                break;
            case 7:
                a.f1657b = new m();
                break;
            case 8:
                if (!z2) {
                    a.f1657b = new o();
                } else {
                    Chip chip2 = (Chip) g.e.f2254a;
                    a.f1657b = new e(chip2.w(), chip2.z(), ((Chip) g.e.f2254a).K);
                }
                break;
            case 9:
                if (z2) {
                    Chip chip3 = (Chip) g.e.f2254a;
                    a.f1657b = new h(chip3.w(), chip3.z(), ((Chip) g.e.f2254a).K);
                }
                break;
            case 10:
                if (z2) {
                    Chip chip4 = (Chip) g.e.f2254a;
                    a.f1657b = new f(chip4.w(), chip4.z(), ((Chip) g.e.f2254a).K);
                }
                break;
            case 11:
                if (z2) {
                    g.g gVar2 = g.e.f2254a;
                    a.f1657b = new i("/dev/i2c-5", 188, ((Chip) gVar2).K);
                }
                break;
            case 12:
                if (z2) {
                    Chip chip5 = (Chip) g.e.f2254a;
                    a.f1657b = new d(chip5.w(), chip5.z(), ((Chip) g.e.f2254a).K);
                }
                break;
            case 13:
                if (z2) {
                    Chip chip6 = (Chip) g.e.f2254a;
                    a.f1657b = new g(chip6.w(), chip6.z(), ((Chip) g.e.f2254a).K);
                }
                break;
            default:
                a.f1657b = new l();
                break;
        }
        if (!z2) {
            a.f1657b.b();
        }
    }

    public static void d(Runnable runnable) {
        j0.f16912g.d(runnable);
    }

    public static void e(Runnable runnable) {
        j0.f16914i.d(runnable);
    }
}
