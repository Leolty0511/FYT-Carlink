package k0;

import android.net.ProxyProperties;
import android.os.Process;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class h5 extends lt {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f5766v;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5769d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f5770e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, -1}, new int[]{4, 12}, new int[]{5, 18}, new int[]{6, 6}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 58}, new int[]{11, 2}, new int[]{12, -1}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f5771f = 10;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5772g = 10;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public o1.g0 f5773h = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f5774i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f5775j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f5776k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f5777l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f5778m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f5779n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f5780o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f5781p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f5782q = new g();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f5783r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f5784s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f5785t = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f5786u = new h();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h5 h5Var = h5.this;
            byte b2 = (byte) (h5Var.f5775j + 1);
            h5Var.f5775j = b2;
            if (b2 > 5) {
                l0.b0.o0(h5Var.f5776k);
                h5.this.f5775j = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h5.this.j3((byte) -30, u0.b.i3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h5.this.j3((byte) -28, u0.b.j3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h5.this.j3((byte) -29, u0.b.k3);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h5.this.j3((byte) -27, u0.b.l3);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 8 || i2 == 9 || i2 == 10) {
                String str = u0.b.i3;
                if (str != null) {
                    h5.this.j3((byte) -30, str);
                }
                String str2 = u0.b.j3;
                if (str2 != null) {
                    h5.this.j3((byte) -28, str2);
                }
                String str3 = u0.b.k3;
                if (str3 != null) {
                    h5.this.j3((byte) -29, str3);
                }
                String str4 = u0.b.l3;
                if (str4 != null) {
                    h5.this.j3((byte) -27, str4);
                }
            }
            o1.l.a().removeCallbacks(this);
            h5 h5Var = h5.this;
            int i3 = h5Var.f5772g;
            h5Var.f5772g = i3 - 1;
            if (i3 > 0) {
                o1.l.a().postDelayed(this, 10000L);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            int i3 = (i2 == 8 || i2 == 9 || i2 == 10) ? 1 : 0;
            int i4 = h0.c.E != 0 ? 1 : 0;
            int i5 = y0.f.f18055i;
            if (y0.f.C0 == 0) {
                i5 = 1;
            }
            z.k.s(227, 10, -26, (byte) ((i3 << 7) | (i4 << 6) | (i5 << 5) | (((u0.b.n3 != 3 || u0.b.o3 == 1) ? 0 : 1) << 4) | ((u0.b.o3 == 1 ? 1 : 0) << 3) | (((u0.b.n3 != 0 || u0.b.o3 == 1) ? 0 : 1) << 2) | 0), 0, 0, 0, y0.f.f18055i == 1 ? (byte) 0 : (byte) y0.f.C0, 0, 0, 0, 0, 0);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:10:0x0014  */
        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            int i2 = h0.c.E;
            int i3 = 4;
            boolean z3 = true;
            boolean z4 = i2 == 5 || i2 == 3 || i2 == 4;
            switch (i2) {
                case 0:
                case 1:
                case 2:
                case 6:
                    if (z4 == h5.this.f5784s) {
                        i3 = 0;
                    }
                    break;
                case 3:
                    i3 = 2;
                    break;
                case 4:
                    i3 = 1;
                    break;
                case 5:
                    i3 = 3;
                    break;
                default:
                    i3 = 0;
                    break;
            }
            if (h5.this.f5783r != i3) {
                h5.this.f5783r = i3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (h5.this.f5785t.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                h5.this.f5785t = h0.c.f2437h;
                if (h5.this.f5785t == null) {
                    h5.this.f5785t = ProxyProperties.LOCAL_EXCL_LIST;
                }
            }
            if (z3) {
                if (h5.this.f5783r != 0) {
                    h5 h5Var = h5.this;
                    h5Var.l3(h5Var.f5783r, h5.this.f5785t);
                }
                if (h5.this.f5784s != z4) {
                    h5.this.f5784s = z4;
                    h5.this.f5783r = 0;
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f5773h.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        z.k.s(227, 2, 45, 2, 7);
        k3(this.f5773h.b(1, 0));
        u0.c.f17388o.a(this.f5777l, 1);
        u0.c.f17389p.a(this.f5778m, 1);
        u0.c.f17390q.a(this.f5779n, 1);
        h0.d.f2464c.a(this.f5786u, 1);
        o1.y yVar = h0.d.f2462a;
        yVar.a(this.f5786u, 1);
        yVar.a(this.f5782q, 1);
        u0.c.f17396w.a(this.f5780o, 1);
        u0.c.f17394u.a(this.f5782q, 1);
        u0.c.f17395v.a(this.f5782q, 1);
        u0.c.f17374a.a(this.f5782q, 1);
        y0.g.f18094d.a(this.f5782q, 1);
        u0.c.f17376c.a(this.f5782q, 1);
        y0.g.f18095e.a(this.f5782q, 1);
        if (nt.a()) {
            qt.z(l0.h0.f13060f);
            w0.e.f17815a.a(l0.h0.f13060f, 1);
            w0.e.f17819e.a(l0.h0.f13060f, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2 + 1];
        if (b3 == -24) {
            qt.y0(Process.MEDIA_UID, (bArr[i2 + 3] & 255) - 1);
            return;
        }
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 65) {
            if (nt.a()) {
                u0.d.R2(l0.h0.p(bArr[i2 + 2] & 255));
                u0.d.S2(l0.h0.p(bArr[i2 + 3] & 255));
                u0.d.T2(l0.h0.p(bArr[i2 + 4] & 255));
                u0.d.U2(l0.h0.p(bArr[i2 + 5] & 255));
                int i4 = i2 + 6;
                u0.d.D2(l0.h0.p(bArr[i4] & 255));
                u0.d.E2(l0.h0.p(bArr[i4] & 255));
                int i5 = i2 + 9;
                u0.d.F2(l0.h0.p(bArr[i5] & 255));
                u0.d.G2(l0.h0.p(bArr[i5] & 255));
                return;
            }
            return;
        }
        if (b3 != 17) {
            if (b3 != 18) {
                return;
            }
            byte b4 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b4 >> 6) & 1);
                qt.y0(2, (b4 >> 7) & 1);
            } else {
                qt.y0(1, (b4 >> 7) & 1);
                qt.y0(2, (b4 >> 6) & 1);
            }
            qt.y0(3, (b4 >> 5) & 1);
            qt.y0(4, (b4 >> 4) & 1);
            qt.y0(5, (b4 >> 3) & 1);
            qt.y0(0, (b4 >> 2) & 1);
            return;
        }
        if (nt.a()) {
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            this.f5768c = b5 & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f5770e;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f5768c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f5767b = i6;
                    break;
                }
                i6++;
            }
            int i8 = b6 & 255;
            if (i8 == 1) {
                if (i6 < iArr.length && (b2 = this.f5775j) == 0) {
                    this.f5775j = (byte) (b2 + 1);
                    l0.b0.l0(iArr[i6][1], 0);
                    l0.b0.a(this.f5776k);
                }
            } else if (i8 == 0) {
                int i9 = this.f5767b;
                if (i9 < iArr.length && i9 != 255) {
                    l0.b0.l0(iArr[i9][1], 1);
                    l0.b0.o0(this.f5776k);
                    this.f5775j = (byte) 0;
                }
                this.f5767b = 255;
            }
            qt.l(bArr[i2 + 9], bArr[i2 + 8], true, 5000);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f5773h.j();
        u0.c.f17388o.d(this.f5777l);
        u0.c.f17389p.d(this.f5778m);
        u0.c.f17390q.d(this.f5779n);
        h0.d.f2464c.d(this.f5786u);
        o1.y yVar = h0.d.f2462a;
        yVar.d(this.f5786u);
        yVar.d(this.f5782q);
        u0.c.f17396w.d(this.f5780o);
        u0.c.f17394u.d(this.f5782q);
        u0.c.f17395v.d(this.f5782q);
        u0.c.f17374a.d(this.f5782q);
        y0.g.f18094d.d(this.f5782q);
        u0.c.f17376c.d(this.f5782q);
        y0.g.f18095e.d(this.f5782q);
        qt.q0(l0.h0.f13060f);
        w0.e.f17815a.d(l0.h0.f13060f);
        w0.e.f17819e.d(l0.h0.f13060f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            iArr[0] = iArr[0] + 1;
            if (iArr[0] < 1) {
                iArr[0] = 1;
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            k3(iArr[0]);
        }
    }

    public final void j3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void k3(int i2) {
        f5766v = i2;
        z.k.s(227, 2, -14, (byte) i2, -1);
        int iB = this.f5773h.b(1, 0);
        int i3 = f5766v;
        if (iB != i3) {
            this.f5773h.g(1, i3);
        }
    }

    public final void l3(int i2, String str) {
        if (str == null) {
            return;
        }
        int length = str.length() <= 31 ? str.length() : 31;
        byte[] bArr = new byte[32];
        char[] charArray = str.toCharArray();
        for (int i3 = 0; i3 < length; i3++) {
            bArr[i3] = (byte) charArray[i3];
        }
        for (int i4 = length; i4 < 32; i4++) {
            bArr[i4] = 32;
        }
        int[] iArr = new int[35];
        iArr[0] = -29;
        iArr[1] = 32;
        iArr[2] = -25;
        iArr[3] = (byte) i2;
        for (int i5 = 0; i5 < length; i5++) {
            iArr[4 + i5] = bArr[i5];
        }
        for (int i6 = 4 + length; i6 < 35; i6++) {
            iArr[i6] = 0;
        }
        z.k.s(iArr);
    }
}
