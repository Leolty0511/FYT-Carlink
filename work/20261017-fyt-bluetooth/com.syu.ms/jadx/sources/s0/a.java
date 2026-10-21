package s0;

import o1.g0;
import o1.o0;
import o1.x;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class a implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public g0 f17166a = new g0(getClass().getName(), 6);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f17167b = new RunnableC0110a();

    /* JADX INFO: renamed from: s0.a$a, reason: collision with other inner class name */
    public class RunnableC0110a implements Runnable {
        public RunnableC0110a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17320f != 0) {
                a aVar = a.this;
                aVar.f(aVar.f17166a.d(0, c.f17189g));
                a aVar2 = a.this;
                aVar2.c(aVar2.f17166a.d(1, c.f17191i));
                a aVar3 = a.this;
                aVar3.g(aVar3.f17166a.d(2, c.f17193k));
                a aVar4 = a.this;
                aVar4.e(aVar4.f17166a.d(3, c.f17195m));
                a aVar5 = a.this;
                aVar5.h(aVar5.f17166a.d(4, c.f17197o));
                a aVar6 = a.this;
                aVar6.d(aVar6.f17166a.d(5, c.f17199q));
            }
        }
    }

    @Override // s0.e
    public void a() {
        this.f17166a.a();
        u0.c.f17376c.a(this.f17167b, 1);
    }

    @Override // s0.e
    public void b() {
        this.f17166a.j();
        u0.c.f17376c.d(this.f17167b);
    }

    @Override // s0.e
    public void c(int i2) {
        int iA = o0.a(i2, 0, 4);
        k.s(176, iA + 8);
        if (c.f17190h != iA) {
            c.f17190h = iA;
            x.x(c.f17185c, 4, iA);
            this.f17166a.g(1, iA);
        }
    }

    @Override // s0.e
    public void d(int i2) {
        if (i2 == 0) {
            k.s(179, 3, 0);
            k(0);
        } else if (i2 == 1) {
            k.s(179, 3, 1);
            k(1);
        } else {
            if (i2 != 2) {
                return;
            }
            d(c.f17198p == 0 ? 1 : 0);
        }
    }

    @Override // s0.e
    public void e(int i2) {
        int iA = o0.a(i2, 0, 3);
        if (c.f17194l != iA) {
            c.f17194l = iA;
            x.x(c.f17185c, 6, iA);
            this.f17166a.g(3, iA);
        }
        int i3 = (iA + 1) * 30;
        k.s(178, (i3 >> 8) & 255, i3 & 255);
    }

    @Override // s0.e
    public void f(int i2) {
        if (i2 == 0) {
            k.s(179, 1, 0);
            j(0);
        } else if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            f(c.f17188f == 0 ? 1 : 0);
            return;
        }
        k.s(179, 1, 1);
        j(1);
    }

    @Override // s0.e
    public void g(int i2) {
        int iA = o0.a(i2, 0, 4);
        k.s(177, iA + 8);
        if (c.f17192j != iA) {
            c.f17192j = iA;
            x.x(c.f17185c, 5, iA);
            this.f17166a.g(2, iA);
        }
    }

    @Override // s0.e
    public void h(int i2) {
        if (i2 == 0) {
            k.s(179, 2, 0);
            l(0);
        } else if (i2 == 1) {
            k.s(179, 2, 1);
            l(1);
        } else {
            if (i2 != 2) {
                return;
            }
            h(c.f17196n == 0 ? 1 : 0);
        }
    }

    public final void j(int i2) {
        if (c.f17188f != i2) {
            c.f17188f = i2;
            x.x(c.f17185c, 3, i2);
            this.f17166a.g(0, i2);
        }
    }

    public final void k(int i2) {
        if (c.f17198p != i2) {
            c.f17198p = i2;
            x.x(c.f17185c, 8, i2);
            this.f17166a.g(5, i2);
        }
    }

    public final void l(int i2) {
        if (c.f17196n != i2) {
            c.f17196n = i2;
            x.x(c.f17185c, 7, i2);
            this.f17166a.g(4, i2);
        }
    }
}
