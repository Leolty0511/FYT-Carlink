package d1;

import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class c implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Runnable f1562a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f1563b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f1564c = new RunnableC0035c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k.o(0, 205, 5);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 6) {
                c.this.g();
            }
        }
    }

    /* JADX INFO: renamed from: d1.c$c, reason: collision with other inner class name */
    public class RunnableC0035c implements Runnable {
        public RunnableC0035c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 6) {
                c.this.c();
            }
        }
    }

    @Override // d1.g
    public void a() {
        y0.g.f18111u.a(this.f1562a, 1);
        z.c.f18182b.a(this.f1563b, 0);
        z.c.f18181a.a(this.f1564c, 0);
    }

    @Override // d1.g
    public void b() {
        y0.g.f18111u.d(this.f1562a);
        z.c.f18182b.d(this.f1563b);
        z.c.f18181a.d(this.f1564c);
    }

    @Override // d1.g
    public void c() {
        e(128);
    }

    @Override // d1.g
    public void d() {
    }

    public final void e(int i2) {
        int[] iArr = new int[6];
        iArr[0] = 0;
        iArr[1] = 204;
        iArr[2] = 165;
        iArr[3] = i2;
        iArr[4] = 42;
        iArr[5] = (iArr[2] + iArr[3] + iArr[4]) & 255;
        k.o(iArr);
    }

    @Override // d1.g
    public void f(int i2) {
    }

    @Override // d1.g
    public void g() {
        e(129);
    }

    @Override // d1.g
    public void h(int i2) {
        switch (i2) {
            case 0:
                e(131);
                break;
            case 1:
                e(128);
                break;
            case 2:
                e(130);
                break;
            case 3:
                e(129);
                break;
            case 4:
                e(159);
                break;
            case 5:
                e(133);
                break;
            case 6:
                e(135);
                break;
            case 7:
                e(155);
                break;
            case 8:
                e(158);
                break;
            case 9:
                e(137);
                break;
            case 10:
                e(196);
                break;
            case 11:
                e(145);
                break;
            case 12:
                e(146);
                break;
            case 13:
                e(147);
                break;
            case 14:
                e(148);
                break;
            case 15:
                e(149);
                break;
            case 16:
                e(150);
                break;
            case 17:
                e(151);
                break;
            case 18:
                e(152);
                break;
            case 19:
                e(153);
                break;
            case 20:
                e(144);
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
        e(i2 + 144);
    }

    @Override // d1.g
    public void n() {
    }
}
