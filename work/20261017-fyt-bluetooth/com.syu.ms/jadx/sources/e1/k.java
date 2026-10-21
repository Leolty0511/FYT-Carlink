package e1;

/* JADX INFO: loaded from: classes2.dex */
public class k extends l {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f1722e = 32;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1725c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o1.n f1723a = new o1.n();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f1726d = new a();

    public class a implements Runnable {
        public a() {
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0032  */
        @Override // java.lang.Runnable
        public void run() {
            char c2;
            if (e1.a.f1658c) {
                k kVar = k.this;
                kVar.f1724b = kVar.f1725c;
                k kVar2 = k.this;
                kVar2.f1725c = kVar2.o(16);
                if (k.this.f1725c != k.this.f1724b) {
                    return;
                }
                if ((k.this.f1725c & 1) == 0) {
                    c2 = 0;
                } else if ((k.this.f1725c & 240) == 0 || (k.this.f1725c & 240) == 32) {
                    u0.d.n3(0);
                    c2 = 1;
                } else if ((k.this.f1725c & 240) == 64 || (k.this.f1725c & 240) == 80) {
                    c2 = 2;
                    u0.d.n3(1);
                } else {
                    c2 = 0;
                }
                u0.d.o3(c2 == 0 ? 0 : 1);
            }
        }
    }

    @Override // e1.l
    public void a() {
    }

    @Override // e1.l
    public void b() {
        if (g.e.a() == 4) {
            this.f1723a.f("/dev/i2c-4");
        }
        b.a(this.f1726d);
    }

    @Override // e1.l
    public void c(int i2) {
        int iO = o(0);
        if (g.e.e() == 9) {
            if (i2 != 1) {
                return;
            }
            p(0, (iO & 240) | 0);
        } else if (i2 == 1) {
            p(0, (iO & 240) | 3);
        } else {
            if (i2 != 2) {
                return;
            }
            p(0, (iO & 240) | 4);
        }
    }

    @Override // e1.l
    public void d() {
        b.d(this.f1726d);
        this.f1723a.close();
    }

    @Override // e1.l
    public void h(int i2, int i3, int i4, int i5) {
        p(10, i3);
        p(8, i5);
        p(11, i4);
    }

    @Override // e1.l
    public void i(int i2) {
    }

    public final int o(int i2) {
        return this.f1723a.g(f1722e, i2);
    }

    public final void p(int i2, int i3) {
        this.f1723a.h(f1722e, i2, i3);
    }
}
