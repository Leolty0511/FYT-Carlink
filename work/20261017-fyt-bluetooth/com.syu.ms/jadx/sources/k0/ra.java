package k0;

import android.net.ProxyProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ra extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f9824b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f9825c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f9826d = new c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f9827e = new d();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f9828f = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.i();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.D0();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ra.this.b3((byte) 1, u0.b.i3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ra.this.b3((byte) 2, u0.b.k3);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ra.this.b3((byte) 3, u0.b.j3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        u0.c.f17388o.a(this.f9826d, 1);
        u0.c.f17389p.a(this.f9828f, 1);
        u0.c.f17390q.a(this.f9827e, 1);
        y0.g.f18094d.a(this.f9825c, 1);
        y0.g.f18095e.a(this.f9825c, 1);
        w0.e.f17815a.a(this.f9824b, 1);
        u0.c.f17374a.a(this.f9824b, 1);
        u0.c.f17392s.a(this.f9824b, 1);
        u0.c.f17393t.a(this.f9824b, 1);
        l0.b0.b(this.f9824b);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        y0.g.f18094d.d(this.f9825c);
        y0.g.f18095e.d(this.f9825c);
        w0.e.f17815a.d(this.f9824b);
        u0.c.f17374a.d(this.f9824b);
        u0.c.f17392s.d(this.f9824b);
        u0.c.f17393t.d(this.f9824b);
        l0.b0.p0(this.f9824b);
        u0.c.f17388o.d(this.f9826d);
        u0.c.f17389p.d(this.f9828f);
        u0.c.f17390q.d(this.f9827e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public final void b3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int length = str.length() <= 21 ? str.length() : 21;
        int i2 = length * 2;
        int[] iArr = new int[i2 + 4 + 1];
        iArr[0] = -29;
        iArr[1] = -63;
        iArr[2] = (byte) (i2 + 2);
        iArr[3] = 1;
        iArr[4] = b2;
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = i3 << 1;
            iArr[i4 + 5] = (byte) ((str.charAt(i3) >> '\b') & 255);
            iArr[i4 + 6] = (byte) (str.charAt(i3) & 255);
        }
        z.k.s(iArr);
    }
}
