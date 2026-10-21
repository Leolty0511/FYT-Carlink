package k0;

/* JADX INFO: loaded from: classes2.dex */
public class b8 extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3570c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3571d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3572e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3569b = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3573f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f3574g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 5}, new int[]{11, 2}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 4}, new int[]{18, 3}, new int[]{19, 1}, new int[]{20, -1}, new int[]{64, 18}, new int[]{129, 0}, new int[]{145, 11}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3575h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3576i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f3577j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3578k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f3579l = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b8 b8Var = b8.this;
            int i2 = b8Var.f3569b;
            if (i2 > 0) {
                b8Var.f3569b = i2 - 1;
            }
            if (b8Var.f3569b == 0) {
                b8.d3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b8.this.f3569b = 4;
            b8.f3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b8 b8Var = b8.this;
            b8Var.f3575h = 0;
            b8Var.f3576i = 0;
        }
    }

    public static void a3() {
        int[] iArr = new int[13];
        int i2 = 0;
        for (int i3 = 0; i3 < 13; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 11;
        iArr[1] = 164;
        iArr[2] = 15;
        if (o0.e.f16778h != 0) {
            iArr[3] = 64;
        } else {
            iArr[3] = 0;
        }
        iArr[4] = 64;
        iArr[5] = u0.b.r3 & 255;
        iArr[6] = 0;
        int i4 = u0.b.t3;
        iArr[7] = i4 / 60;
        iArr[8] = i4 % 60;
        iArr[9] = 32;
        iArr[10] = 32;
        iArr[11] = u0.b.r3 & 255;
        iArr[12] = 0;
        int[] iArr2 = new int[14];
        iArr2[0] = 227;
        while (i2 < 13) {
            int i5 = i2 + 1;
            iArr2[i5] = (byte) iArr[i2];
            i2 = i5;
        }
        z.k.s(iArr2);
    }

    public static void b3() {
        int[] iArr = new int[8];
        int i2 = 0;
        for (int i3 = 0; i3 < 8; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 6;
        iArr[1] = 162;
        int i4 = w0.d.f17796h;
        if (i4 - 65536 == 0) {
            iArr[2] = 1;
        } else if (1 == i4 - 65536 || 2 == i4 - 65536) {
            iArr[2] = 2;
        } else {
            iArr[2] = 4;
        }
        int i5 = w0.d.f17797i;
        iArr[3] = i5 & 255;
        iArr[4] = (i5 >> 8) & 255;
        int i6 = w0.d.f17798j;
        if ((i6 & 255) % 6 != 0 || (i6 & 255) == 0) {
            iArr[5] = (i6 & 255) % 6;
        } else {
            iArr[5] = 6;
        }
        iArr[6] = 0;
        iArr[7] = 0;
        int[] iArr2 = new int[9];
        iArr2[0] = 227;
        while (i2 < 8) {
            int i7 = i2 + 1;
            iArr2[i7] = (byte) iArr[i2];
            i2 = i7;
        }
        z.k.s(iArr2);
    }

    public static int c3() {
        return u0.b.f17320f == 1 ? 128 : 0;
    }

    public static void d3() {
        g3();
        int i2 = u0.b.D;
        if (i2 == 1) {
            b3();
        } else {
            if (i2 != 4) {
                return;
            }
            a3();
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002c  */
    /* JADX WARN: Code duplicated, block: B:27:0x003c  */
    /* JADX WARN: Code duplicated, block: B:28:0x003e  */
    public static int e3() {
        int i2 = 3;
        switch (u0.b.D) {
            case 0:
            case 3:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
                i2 = 5;
                break;
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0) {
                    i2 = 1;
                } else if (1 == i3 - 65536) {
                    i2 = 2;
                } else if (2 != i3 - 65536) {
                    if (i3 + 0 == 0) {
                        i2 = 4;
                    } else if (1 != i3 - 0) {
                        i2 = 0;
                    } else {
                        i2 = 5;
                    }
                }
                break;
            case 2:
                i2 = 10;
                break;
            case 4:
                int i4 = o0.e.H;
                if (i4 == 1) {
                    i2 = 7;
                } else if (i4 == 2) {
                    i2 = 14;
                } else if (i4 != 3) {
                    i2 = 2;
                } else {
                    i2 = 13;
                }
                break;
            case 9:
            default:
                i2 = 0;
                break;
        }
        if (u0.b.f17347o == 1) {
            return 5;
        }
        return i2;
    }

    public static void f3() {
        int[] iArr = new int[5];
        int i2 = 0;
        for (int i3 = 0; i3 < 5; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 3;
        iArr[1] = 161;
        iArr[2] = 32 | c3();
        iArr[3] = e3();
        int i4 = y0.f.C0;
        iArr[4] = i4;
        if (i4 > 30) {
            iArr[4] = 30;
        }
        int[] iArr2 = new int[6];
        iArr2[0] = 227;
        while (i2 < 5) {
            int i5 = i2 + 1;
            iArr2[i5] = (byte) iArr[i2];
            i2 = i5;
        }
        z.k.s(iArr2);
    }

    public static void g3() {
        int[] iArr = new int[5];
        int i2 = 0;
        for (int i3 = 0; i3 < 5; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 3;
        iArr[1] = 161;
        iArr[2] = c3() | 64;
        iArr[3] = e3();
        int i4 = y0.f.C0;
        iArr[4] = i4;
        if (i4 > 30) {
            iArr[4] = 30;
        }
        int[] iArr2 = new int[6];
        iArr2[0] = 227;
        while (i2 < 5) {
            int i5 = i2 + 1;
            iArr2[i5] = (byte) iArr[i2];
            i2 = i5;
        }
        z.k.s(iArr2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            qt.z(this.f3577j);
            y0.g.f18094d.a(this.f3578k, 1);
            y0.g.f18095e.a(this.f3578k, 1);
            w0.e.f17815a.a(this.f3577j, 1);
            w0.e.f17819e.a(this.f3577j, 1);
            u0.c.f17386m.a(this.f3579l, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        byte b2 = bArr[i2 + 1];
        if (b2 == -125) {
            if (nt.a()) {
                if ((bArr[i2 + 2] & 255 & 1) == 1) {
                    qt.y0(1015, 1);
                    return;
                } else {
                    qt.y0(1015, 0);
                    return;
                }
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 17) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 4];
                byte b4 = bArr[i2 + 5];
                this.f3571d = b3 & 255;
                int i5 = 0;
                while (true) {
                    iArr = this.f3574g;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f3571d;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f3570c = i5;
                        break;
                    }
                    i5++;
                }
                if ((b4 & 255) == 0) {
                    int i7 = this.f3570c;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f3570c = 255;
                } else if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                }
                qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                return;
            }
            return;
        }
        if (b2 == 49) {
            if (nt.a()) {
                l0.h0.u(bArr[i2 + 13] & 255);
                return;
            }
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(l0.h0.o(bArr[i2 + 2] & 255));
                u0.d.S2(l0.h0.o(bArr[i2 + 3] & 255));
                u0.d.T2(l0.h0.o(bArr[i2 + 4] & 255));
                u0.d.U2(l0.h0.o(bArr[i2 + 5] & 255));
                u0.d.D2(l0.h0.o(bArr[i2 + 6] & 255));
                u0.d.E2(l0.h0.o(bArr[i2 + 7] & 255));
                u0.d.F2(l0.h0.o(bArr[i2 + 8] & 255));
                u0.d.G2(l0.h0.o(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 == 33) {
            if (nt.a()) {
                byte b5 = bArr[i2 + 3];
                this.f3572e = (bArr[i2 + 2] & 255) | 128;
                int i8 = 0;
                while (true) {
                    iArr2 = this.f3574g;
                    if (i8 >= iArr2.length) {
                        break;
                    }
                    int i9 = this.f3572e;
                    if (i9 == iArr2[i8][0]) {
                        if (i9 == 0) {
                            break;
                        }
                        this.f3573f = i8;
                        break;
                    }
                    i8++;
                }
                if ((b5 & 255) != 0) {
                    if (i8 < iArr2.length) {
                        l0.b0.l0(iArr2[i8][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i10 = this.f3570c;
                    if (i10 < iArr2.length && i10 != 255) {
                        l0.b0.l0(iArr2[i10][1], 1);
                    }
                    this.f3570c = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 34 && nt.a()) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            if (b6 != 1) {
                if (b6 == 2 && b7 != (i4 = this.f3576i)) {
                    if (b7 > i4) {
                        for (int i11 = 0; i11 < b7 - this.f3576i; i11++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b7 < i4) {
                        for (int i12 = 0; i12 < this.f3576i - b7; i12++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f3576i = b7;
                    return;
                }
                return;
            }
            int i13 = this.f3575h;
            if (b7 != i13) {
                if (b7 > i13) {
                    for (int i14 = 0; i14 < b7 - this.f3575h; i14++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b7 < i13) {
                    for (int i15 = 0; i15 < this.f3575h - b7; i15++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f3575h = b7;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            qt.q0(this.f3577j);
            y0.g.f18094d.d(this.f3578k);
            y0.g.f18095e.d(this.f3578k);
            w0.e.f17815a.d(this.f3577j);
            w0.e.f17819e.d(this.f3577j);
            u0.c.f17386m.d(this.f3579l);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
