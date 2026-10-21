package k0;

import android.net.ProxyProperties;

/* JADX INFO: loaded from: classes2.dex */
public class u6 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10919c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10920d = {new int[]{18, 3}, new int[]{19, 4}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{23, 13}, new int[]{80, 18}, new int[]{81, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f10921e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f10922f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f10923g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f10924h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f10925i = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f10926j = new d();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10927k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f10928l = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.x();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.u0();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u6 u6Var = u6.this;
            byte b2 = (byte) (u6Var.f10923g + 1);
            u6Var.f10923g = b2;
            if (b2 > 5) {
                l0.b0.o0(u6Var.f10924h);
                u6.this.f10923g = (byte) 0;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (u6.this.f10925i.equals(h0.c.f2437h)) {
                z2 = false;
            } else {
                o1.b0.i("1str=" + h0.c.f2437h);
                u6.this.f10925i = h0.c.f2437h;
                if (u6.this.f10925i == null) {
                    u6.this.f10925i = ProxyProperties.LOCAL_EXCL_LIST;
                }
                z2 = true;
            }
            if (z2) {
                u6 u6Var = u6.this;
                u6Var.g3(u6Var.f10925i);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            boolean z2;
            int i3 = u0.b.D;
            int i4 = (i3 == 8 || i3 == 9 || i3 == 10) ? 1 : 0;
            int i5 = h0.c.E;
            if (i5 == 3) {
                i2 = 2;
            } else if (i5 != 4) {
                i2 = i5 != 5 ? 0 : 4;
            } else {
                i2 = 1;
            }
            int i6 = u6.this.f10927k;
            int i7 = h0.c.E;
            if (i6 != i7) {
                u6.this.f10927k = i7;
                z2 = true;
            } else {
                z2 = false;
            }
            if (!u6.this.f10925i.equals(h0.c.f2437h)) {
                u6.this.f10925i = h0.c.f2437h;
                if (u6.this.f10925i == null) {
                    u6.this.f10925i = ProxyProperties.LOCAL_EXCL_LIST;
                }
                z2 = true;
            }
            if (z2) {
                u6 u6Var = u6.this;
                u6Var.g3(u6Var.f10925i);
            }
            z.k.s(-29, -59, 2, 0, (byte) ((i4 << 6) | 0 | 0 | 0 | 0 | i2));
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            y0.g.f18094d.a(this.f10922f, 1);
            y0.g.f18095e.a(this.f10922f, 1);
            w0.e.f17815a.a(this.f10921e, 1);
            u0.c.f17374a.a(this.f10921e, 1);
            u0.c.f17393t.a(this.f10921e, 1);
            u0.c.f17392s.a(this.f10921e, 1);
            l0.b0.b(this.f10921e);
        }
        h0.d.f2464c.a(this.f10926j, 1);
        h0.d.f2462a.a(this.f10928l, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        if (bArr[i2] == 1 && nt.a()) {
            int i4 = bArr[i2 + 2] & 255;
            this.f10919c = i4;
            int i5 = 0;
            while (true) {
                iArr = this.f10920d;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f10919c;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f10918b = i5;
                    break;
                }
                i5++;
            }
            if (i4 != 0) {
                if (i5 >= iArr.length || (b2 = this.f10923g) != 0) {
                    return;
                }
                this.f10923g = (byte) (b2 + 1);
                l0.b0.l0(iArr[i5][1], 0);
                l0.b0.a(this.f10924h);
                return;
            }
            int i7 = this.f10918b;
            if (i7 < iArr.length && i7 != 255) {
                l0.b0.l0(iArr[i7][1], 1);
                l0.b0.o0(this.f10924h);
                this.f10923g = (byte) 0;
            }
            this.f10918b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        y0.g.f18094d.d(this.f10922f);
        y0.g.f18095e.d(this.f10922f);
        w0.e.f17815a.d(this.f10921e);
        u0.c.f17374a.d(this.f10921e);
        u0.c.f17393t.d(this.f10921e);
        u0.c.f17392s.d(this.f10921e);
        l0.b0.p0(this.f10921e);
        h0.d.f2464c.d(this.f10926j);
        h0.d.f2462a.d(this.f10928l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public final void g3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length() <= 13 ? str.length() : 13;
        int i2 = length + 4;
        int[] iArr = new int[i2];
        iArr[0] = -29;
        iArr[1] = -125;
        iArr[2] = (byte) (length + 1);
        iArr[3] = (byte) (length | 16);
        for (int i3 = 4; i3 < i2; i3++) {
            iArr[i3] = (byte) (str.charAt(i3 - 4) & 255);
        }
        z.k.s(iArr);
    }
}
