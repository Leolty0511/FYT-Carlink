package o0;

import android.net.ProxyProperties;
import o1.k;
import o1.l;

/* JADX INFO: loaded from: classes2.dex */
public class a extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Runnable f16727a = new RunnableC0089a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f16728b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f16729c = new c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f16730d = new d();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f16731e = new e();

    /* JADX INFO: renamed from: o0.a$a, reason: collision with other inner class name */
    public class RunnableC0089a implements Runnable {
        public RunnableC0089a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = o0.e.f16783j0;
            if (i2 < 3) {
                int i3 = i2 + 1;
                o0.e.f16783j0 = i3;
                if (i3 == 3) {
                    o0.e.I = 1;
                }
            }
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f16733a;

        /* JADX INFO: renamed from: o0.a$b$a, reason: collision with other inner class name */
        public class RunnableC0090a implements Runnable {
            public RunnableC0090a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                g.T(20, o0.e.I);
            }
        }

        /* JADX INFO: renamed from: o0.a$b$b, reason: collision with other inner class name */
        public class RunnableC0091b implements Runnable {
            public RunnableC0091b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (u0.b.D == 4 || b.this.f16733a) {
                    return;
                }
                g.T(20, 1);
            }
        }

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if (u0.b.D == 4) {
                if (this.f16733a) {
                    this.f16733a = false;
                    a.this.o();
                } else if (o0.e.I == 2) {
                    g.T(20, 1);
                } else {
                    k.a().postDelayed(new RunnableC0090a(), 2000L);
                }
                u0.d.L0(o0.e.f16788m);
                u0.d.K0(o0.e.f16790n);
                u0.d.J0(o0.e.f16791o, ProxyProperties.LOCAL_EXCL_LIST);
                return;
            }
            if (h0.c.G != 0 || (u0.b.D == 2 && ((i2 = o0.e.A) == 1 || i2 == 4 || i2 == 5))) {
                this.f16733a = true;
                a.this.n();
            } else {
                k.a().postDelayed(new RunnableC0091b(), 1000L);
                z.k.n(2, 90);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17320f == 0 || u0.b.D != 4 || o0.e.f16778h == 0) {
                return;
            }
            g.z(1);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 0) {
                g.l();
                g.z(2);
                z.k.n(2, 90);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17326h == 1 && u0.b.D == 4) {
                g.l();
                g.z(1);
                z.k.n(2, 90);
            } else {
                if (u0.b.D != 4 || o0.e.f16778h == 0) {
                    return;
                }
                g.z(1);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.n(80, 5);
        }
    }

    @Override // o0.h
    public void A(int i2) {
        if (o0.e.E == i2) {
            return;
        }
        if (i2 == 1) {
            z.k.n(96, 1);
        } else if (i2 == 2) {
            z.k.n(96, 2);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.n(96, 3);
        }
    }

    @Override // o0.h
    public void B() {
        z.k.n(2, 46);
    }

    @Override // o0.h
    public void C(int i2, int i3) {
        byte b2 = (byte) (i2 / 100);
        byte b3 = (byte) (i2 % 100);
        byte b4 = (byte) (i3 / 100);
        byte b5 = (byte) (i3 % 100);
        z.a.f18152c.i(new byte[]{-1, 85, 1, b2, b3, b4, b5, (byte) ((((171 - b2) - b3) - b4) - b5)});
    }

    @Override // o0.h
    public void D(int i2) {
        o0.e.K = 0;
        g.S(0);
        int i3 = i2 + 1;
        z.k.n(((i3 >> 8) & 255) + 112, i3 & 255);
    }

    @Override // o0.h
    public void E() {
        z.k.n(2, 97);
    }

    @Override // o0.h
    public void a() {
    }

    @Override // o0.h
    public void b() {
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0039  */
    @Override // o0.h
    public void c(byte[] bArr, int i2, int i3) {
        int i4;
        byte b2;
        int i5;
        byte b3 = bArr[i2];
        if (b3 != 2) {
            if (b3 == 80 && ((b2 = bArr[(i4 = i2 + 1)]) == 5 || b2 == 6 || b2 == 7)) {
                byte b4 = bArr[i4];
                if (b4 != 5) {
                    if (b4 != 6) {
                        if (b4 == 7 && o0.e.f16780i != 0) {
                            i5 = 2;
                        } else {
                            i5 = -123;
                        }
                    } else if (o0.e.f16782j != 0) {
                        i5 = 3;
                    } else {
                        i5 = -123;
                    }
                } else if (o0.e.f16778h != 0) {
                    i5 = 1;
                } else {
                    i5 = -123;
                }
                if (i5 == -123) {
                    int i6 = o0.e.G;
                    if (i6 == 1) {
                        if (o0.e.f16778h != 0) {
                            z(o0.e.G);
                            return;
                        }
                        return;
                    } else if (i6 == 2) {
                        if (o0.e.f16780i != 0) {
                            z(o0.e.G);
                            return;
                        }
                        return;
                    } else {
                        if (i6 == 3 && o0.e.f16782j != 0) {
                            z(o0.e.G);
                            return;
                        }
                        return;
                    }
                }
                int i7 = o0.e.G;
                if (i7 != 0 && i7 != i5) {
                    return;
                }
            }
        } else if (bArr[i2 + 1] == 91 && o0.e.H == 1 && o0.e.f16778h != 0) {
            if (o0.e.I != 2) {
                g.z(2);
                try {
                    Thread.sleep(200L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            g.l();
        }
        z.k.n(bArr[i2], bArr[i2 + 1]);
    }

    @Override // o0.h
    public void d() {
        u0.c.f17374a.a(this.f16728b, 1);
        u0.c.f17376c.a(this.f16729c, 0);
        u0.c.f17386m.a(this.f16730d, 1);
        u0.c.f17384k.a(this.f16731e, 0);
        g.a(this.f16727a);
    }

    @Override // o0.h
    public void e() {
        u0.c.f17374a.d(this.f16728b);
        u0.c.f17376c.d(this.f16729c);
        u0.c.f17386m.d(this.f16730d);
        u0.c.f17384k.d(this.f16731e);
        g.L(this.f16727a);
    }

    @Override // o0.h
    public void f() {
        z.k.s(1, 1, 32);
    }

    @Override // o0.h
    public void i() {
        z.k.n(2, 34);
    }

    @Override // o0.h
    public void j() {
        z.k.n(2, 35);
    }

    @Override // o0.h
    public void k() {
        z.k.n(2, 46);
    }

    @Override // o0.h
    public void l() {
        z.k.n(2, 93);
    }

    @Override // o0.h
    public void n() {
        z.k.n(2, 36);
    }

    @Override // o0.h
    public void o() {
        z.k.n(2, 96);
    }

    @Override // o0.h
    public void p() {
        z.k.n(2, 40);
    }

    @Override // o0.h
    public void q(int i2) {
    }

    @Override // o0.h
    public void r() {
        z.k.n(2, 92);
    }

    @Override // o0.h
    public void s(int i2) {
        if (i2 == 0) {
            if (o0.e.P != 0) {
                s(2);
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            z.k.n(2, 29);
        } else if (o0.e.P == 0) {
            s(2);
        }
    }

    @Override // o0.h
    public void t() {
        z.k.n(2, 18);
    }

    @Override // o0.h
    public void v() {
    }

    @Override // o0.h
    public void w() {
        z.k.n(2, 47);
    }

    @Override // o0.h
    public void x() {
        z.k.n(2, 32);
    }

    @Override // o0.h
    public void y() {
        z.k.n(2, 48);
    }

    @Override // o0.h
    public void z(int i2) {
        if (i2 == 1) {
            if (o0.e.f16778h != 0) {
                o0.e.G = i2;
                z.k.n(80, 5);
                l.a().postDelayed(new f(), 1000L);
                if (o0.e.H != i2) {
                    g.z(1);
                    return;
                }
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (o0.e.f16780i != 0) {
                o0.e.G = i2;
                z.k.n(80, 7);
                if (o0.e.H != i2) {
                    g.z(1);
                    return;
                }
                return;
            }
            return;
        }
        if (i2 == 3 && o0.e.f16782j != 0) {
            o0.e.G = i2;
            z.k.n(80, 6);
            if (o0.e.H != i2) {
                g.z(1);
            }
        }
    }
}
