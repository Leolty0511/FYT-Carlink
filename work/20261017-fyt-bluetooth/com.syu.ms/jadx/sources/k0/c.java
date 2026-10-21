package k0;

/* JADX INFO: loaded from: classes2.dex */
public class c extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3854c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3856e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3853b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3855d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3857f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f3858g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 4}, new int[]{9, 3}, new int[]{11, 2}, new int[]{15, 29}, new int[]{17, 27}, new int[]{18, 28}, new int[]{19, 1}, new int[]{22, 5}, new int[]{23, 28}, new int[]{24, 27}, new int[]{25, 3}, new int[]{26, 4}, new int[]{36, 29}, new int[]{37, 6}, new int[]{38, 2}, new int[]{39, 25}, new int[]{40, 2}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3859h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f3860i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f3861j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3862k = new RunnableC0066c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            int i2 = cVar.f3853b;
            if (i2 > 0) {
                cVar.f3853b = i2 - 1;
            }
            if (cVar.f3853b == 0) {
                c.d3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.f3();
        }
    }

    /* JADX INFO: renamed from: k0.c$c, reason: collision with other inner class name */
    public class RunnableC0066c implements Runnable {
        public RunnableC0066c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            byte b2 = (byte) (cVar.f3861j + 1);
            cVar.f3861j = b2;
            if (b2 > 5) {
                l0.b0.o0(cVar.f3862k);
                c.this.f3861j = (byte) 0;
            }
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
            qt.z(this.f3859h);
            y0.g.f18094d.a(this.f3860i, 1);
            y0.g.f18095e.a(this.f3860i, 1);
            w0.e.f17815a.a(this.f3859h, 1);
            w0.e.f17819e.a(this.f3859h, 1);
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int[][] iArr2;
        int i4;
        byte b3 = bArr[i2 + 1];
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 17) {
            if (nt.a()) {
                byte b4 = bArr[i2 + 4];
                byte b5 = bArr[i2 + 5];
                this.f3855d = b4 & 255;
                int i5 = 0;
                while (true) {
                    iArr = this.f3858g;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f3855d;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f3854c = i5;
                        break;
                    }
                    i5++;
                }
                int i7 = b5 & 255;
                if (i7 == 1) {
                    if (i5 >= iArr.length || (b2 = this.f3861j) != 0) {
                        return;
                    }
                    this.f3861j = (byte) (b2 + 1);
                    l0.b0.l0(iArr[i5][1], 0);
                    l0.b0.a(this.f3862k);
                    return;
                }
                if (i7 == 0) {
                    int i8 = this.f3854c;
                    if (i8 < iArr.length && i8 != 255) {
                        l0.b0.l0(iArr[i8][1], 1);
                        l0.b0.o0(this.f3862k);
                        this.f3861j = (byte) 0;
                    }
                    this.f3854c = 255;
                    return;
                }
                return;
            }
            return;
        }
        if (b3 == 33) {
            if (nt.a()) {
                this.f3857f = bArr[i2 + 2] & 255;
                byte b6 = bArr[i2 + 3];
                int i9 = 0;
                while (true) {
                    iArr2 = this.f3858g;
                    if (i9 >= iArr2.length) {
                        break;
                    }
                    int i10 = this.f3857f;
                    if (i10 == iArr2[i9][0]) {
                        if (i10 == 0) {
                            break;
                        }
                        this.f3856e = i9;
                        break;
                    }
                    i9++;
                }
                if ((b6 & 255) != 0) {
                    if (i9 < iArr2.length) {
                        l0.b0.l0(iArr2[i9][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i11 = this.f3856e;
                    if (i11 < iArr2.length && i11 != 255) {
                        l0.b0.l0(iArr2[i11][1], 1);
                    }
                    this.f3856e = 255;
                    return;
                }
            }
            return;
        }
        if (b3 == 49) {
            if (nt.a()) {
                int i12 = bArr[i2 + 13] & 255;
                int i13 = (int) (((double) i12) * 0.5d);
                int i14 = i12 % 2;
                if (i12 < 40) {
                    i4 = (1000 - ((i14 > 0 ? (40 - i13) - 1 : 40 - i13) * 10)) - (i14 * 5);
                } else {
                    i4 = ((i13 - 40) * 10) + 1000 + (i14 * 5);
                }
                if (i4 > 600) {
                    u0.d.A3(i4);
                    return;
                }
                return;
            }
            return;
        }
        if (b3 != 65) {
            if (b3 == 19) {
                qt.y0(0, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(1, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(2, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(3, bArr[i2 + 10] & 255);
                return;
            }
            if (b3 != 20) {
                return;
            }
            qt.y0(4, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(5, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(6, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(7, bArr[i2 + 10] & 255);
            return;
        }
        if (nt.a()) {
            int i15 = i2 + 2;
            u0.d.R2(((bArr[i15] * 10) / 8) - 1 > 9 ? 15 : ((bArr[i15] * 10) / 8) - 1);
            int i16 = i2 + 3;
            u0.d.S2(((bArr[i16] * 10) / 8) - 1 > 9 ? 15 : ((bArr[i16] * 10) / 8) - 1);
            int i17 = i2 + 4;
            u0.d.T2(((bArr[i17] * 10) / 8) - 1 > 9 ? 15 : ((bArr[i17] * 10) / 8) - 1);
            int i18 = i2 + 5;
            u0.d.U2(((bArr[i18] * 10) / 8) - 1 > 9 ? 15 : ((bArr[i18] * 10) / 8) - 1);
            int i19 = i2 + 6;
            u0.d.D2(((bArr[i19] * 10) / 8) - 1 > 9 ? 15 : ((bArr[i19] * 10) / 8) - 1);
            int i20 = i2 + 7;
            u0.d.E2(((bArr[i20] * 10) / 8) - 1 > 9 ? 15 : ((bArr[i20] * 10) / 8) - 1);
            int i21 = i2 + 8;
            u0.d.F2(((bArr[i21] * 10) / 8) - 1 > 9 ? 15 : ((bArr[i21] * 10) / 8) - 1);
            int i22 = i2 + 9;
            u0.d.G2(((bArr[i22] * 10) / 8) - 1 <= 9 ? ((bArr[i22] * 10) / 8) - 1 : 15);
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f3859h);
        y0.g.f18094d.d(this.f3860i);
        y0.g.f18095e.d(this.f3860i);
        w0.e.f17815a.d(this.f3859h);
        w0.e.f17819e.d(this.f3859h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 8) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                i3(0);
                break;
            case 1:
                i3(22);
                break;
            case 2:
                i3(23);
                break;
            case 3:
                i3(24);
                break;
            case 4:
                i3(25);
                break;
            case 5:
                i3(26);
                break;
            case 6:
                i3(36);
                break;
            case 7:
                i3(37);
                break;
            case 8:
                i3(38);
                break;
            case 9:
                i3(39);
                break;
        }
    }

    public final void i3(int i2) {
        z.k.s(227, 2, 33, i2, 1);
        z.k.s(227, 2, 33, i2, 0);
    }
}
