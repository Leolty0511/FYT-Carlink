package d1;

import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class b implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Runnable f1558a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f1559b = new RunnableC0034b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 6) {
                b.this.g();
            }
        }
    }

    /* JADX INFO: renamed from: d1.b$b, reason: collision with other inner class name */
    public class RunnableC0034b implements Runnable {
        public RunnableC0034b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 6) {
                b.this.c();
            }
        }
    }

    @Override // d1.g
    public void a() {
        z.c.f18182b.a(this.f1558a, 0);
        z.c.f18181a.a(this.f1559b, 0);
    }

    @Override // d1.g
    public void b() {
        z.c.f18182b.d(this.f1558a);
        z.c.f18181a.d(this.f1559b);
    }

    @Override // d1.g
    public void c() {
        k.u(128);
    }

    @Override // d1.g
    public void d() {
    }

    @Override // d1.g
    public void f(int i2) {
    }

    @Override // d1.g
    public void g() {
        k.u(129);
    }

    @Override // d1.g
    public void h(int i2) {
        switch (i2) {
            case 0:
                k.u(131);
                break;
            case 1:
                k.u(128);
                break;
            case 2:
                k.u(130);
                break;
            case 3:
                k.u(129);
                break;
            case 4:
                k.u(159);
                break;
            case 5:
                k.u(133);
                break;
            case 6:
                k.u(135);
                break;
            case 7:
                k.u(155);
                break;
            case 8:
                k.u(158);
                break;
            case 9:
                k.u(137);
                break;
            case 10:
                k.u(196);
                break;
            case 11:
                k.u(145);
                break;
            case 12:
                k.u(146);
                break;
            case 13:
                k.u(147);
                break;
            case 14:
                k.u(148);
                break;
            case 15:
                k.u(149);
                break;
            case 16:
                k.u(150);
                break;
            case 17:
                k.u(151);
                break;
            case 18:
                k.u(152);
                break;
            case 19:
                k.u(153);
                break;
            case 20:
                k.u(144);
                break;
        }
    }

    @Override // d1.g
    public void i() {
    }

    @Override // d1.g
    public void j(int i2, int i3, int i4) {
    }

    @Override // d1.g
    public void k(int i2) {
        if (i2 == 0) {
            k.s(1, 2, 160);
            return;
        }
        if (i2 == 1) {
            k.s(1, 2, 161);
        } else if (i2 == 2) {
            k.s(1, 2, 162);
        } else {
            if (i2 != 3) {
                return;
            }
            k.s(1, 2, 163);
        }
    }

    @Override // d1.g
    public void l() {
    }

    @Override // d1.g
    public void m(int i2) {
        k.u(i2 + 144);
    }

    @Override // d1.g
    public void n() {
    }
}
