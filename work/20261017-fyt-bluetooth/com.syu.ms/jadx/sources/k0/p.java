package k0;

/* JADX INFO: loaded from: classes2.dex */
public class p extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9024c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9023b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9025d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f9026e = {new int[]{0, -1}, new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 18}, new int[]{4, 12}, new int[]{5, 3}, new int[]{6, 4}, new int[]{7, 2}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 16}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f9027f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9028g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f9029h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f9030i = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p pVar = p.this;
            byte b2 = (byte) (pVar.f9027f + 1);
            pVar.f9027f = b2;
            if (b2 > 5) {
                l0.b0.o0(pVar.f9028g);
                p.this.f9027f = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p pVar = p.this;
            int i2 = pVar.f9023b;
            if (i2 > 0) {
                pVar.f9023b = i2 - 1;
            }
            if (pVar.f9023b == 0) {
                pVar.a3();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.c3();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        if (nt.f8637c == 1) {
            mtVar.f8306a = null;
        }
        if (nt.a()) {
            qt.z(this.f9029h);
            y0.g.f18094d.a(this.f9030i, 1);
            y0.g.f18095e.a(this.f9030i, 1);
            w0.e.f17815a.a(this.f9029h, 1);
            w0.e.f17819e.a(this.f9029h, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2 + 1];
        if (b3 != 0) {
            if (b3 != 48) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (nt.a()) {
            this.f9025d = bArr[i2 + 4] & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f9026e;
                if (i4 >= iArr.length) {
                    i4 = 0;
                    break;
                }
                int i5 = this.f9025d;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f9024c = i4;
                    break;
                }
                i4++;
            }
            if (this.f9025d == 0 || (b2 = this.f9027f) != 0) {
                return;
            }
            this.f9027f = (byte) (b2 + 1);
            l0.b0.l0(iArr[i4][1], 0);
            l0.b0.l0(this.f9026e[i4][1], 1);
            l0.b0.a(this.f9028g);
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f9029h);
        y0.g.f18094d.d(this.f9030i);
        y0.g.f18095e.d(this.f9030i);
        w0.e.f17815a.d(this.f9029h);
        w0.e.f17819e.d(this.f9029h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            e3(22);
            return;
        }
        if (i2 == 1) {
            e3(21);
            return;
        }
        if (i2 == 3) {
            e3(0);
        } else if (i2 == 4 && iArr != null && iArr.length > 0) {
            int i3 = iArr[0];
            f3(i3 == 0 ? i3 : 1);
        }
    }

    public void a3() {
        int[] iArr = new int[10];
        for (int i2 = 0; i2 < 10; i2++) {
            iArr[i2] = 32;
        }
        iArr[0] = 12;
        iArr[1] = 0;
        switch (u0.b.D) {
            case 0:
                iArr[2] = 87;
                iArr[3] = 69;
                iArr[4] = 76;
                iArr[5] = 67;
                iArr[6] = 79;
                iArr[7] = 77;
                iArr[8] = 69;
                break;
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 < 65536 || i3 > 65538) {
                    int i4 = w0.d.f17797i;
                    iArr[2] = i4 / 10000 == 0 ? (i4 / 10000) + 32 : (i4 / 10000) + 48;
                    iArr[3] = (i4 % 10000) / 1000 == 0 ? ((i4 % 10000) / 1000) + 32 : ((i4 % 10000) / 1000) + 48;
                    iArr[4] = ((i4 % 1000) / 100) + 48;
                    iArr[5] = ((i4 % 100) / 10) + 48;
                    iArr[6] = (i4 % 10) + 48;
                    iArr[7] = 75;
                } else {
                    int i5 = w0.d.f17797i;
                    iArr[2] = i5 / 10000 == 0 ? (i5 / 10000) + 32 : (i5 / 10000) + 48;
                    iArr[3] = ((i5 % 10000) / 1000) + 48;
                    iArr[4] = ((i5 % 1000) / 100) + 48;
                    iArr[5] = 46;
                    iArr[6] = ((i5 % 100) / 10) + 48;
                    iArr[7] = (i5 % 10) + 48;
                    iArr[8] = 77;
                }
                break;
            case 2:
                iArr[5] = 80;
                iArr[6] = 72;
                iArr[7] = 79;
                iArr[8] = 78;
                iArr[9] = 69;
                break;
            case 3:
            case 11:
            case 12:
            case 13:
                break;
            case 4:
                if (o0.e.C != 0) {
                    int iB3 = b3();
                    if (iB3 == 7) {
                        iArr[2] = 68;
                        iArr[3] = 86;
                        iArr[4] = 68;
                    } else if (iB3 == 14) {
                        iArr[2] = 83;
                        iArr[3] = 68;
                        iArr[4] = 32;
                    } else if (iB3 == 13) {
                        iArr[2] = 85;
                        iArr[3] = 83;
                        iArr[4] = 66;
                    }
                    int i6 = o0.e.B % 10000;
                    iArr[6] = (i6 / 1000) + 48;
                    int i7 = (i6 % 100) / 10;
                    int i8 = i6 % 1000;
                    if (i7 != 0) {
                        i8 /= 10;
                    }
                    iArr[7] = i8 + 48;
                    iArr[8] = i7 + 48;
                    iArr[9] = (i6 % 10) + 48;
                }
                break;
            case 5:
                iArr[6] = 65;
                iArr[7] = 85;
                iArr[8] = 88;
                break;
            case 6:
                if (d1.d.f1570c == 1) {
                    int i9 = d1.d.f1572e;
                    if (i9 / 10 > 0) {
                        iArr[2] = (i9 / 10) + 48;
                    }
                    iArr[3] = (i9 % 10) + 48;
                    iArr[4] = 45;
                    int i10 = d1.d.f1571d / 100;
                    iArr[5] = ((i10 % 10000) / 1000) + 48;
                    iArr[6] = ((i10 % 1000) / 100) + 48;
                    iArr[7] = 46;
                    iArr[8] = ((i10 % 100) / 10) + 48;
                    iArr[9] = ((i10 % 10) / 1) + 48;
                }
                break;
            case 7:
                iArr[6] = 73;
                iArr[7] = 80;
                iArr[8] = 79;
                iArr[9] = 68;
                break;
            case 8:
            case 9:
                if (u0.b.s3 != 0) {
                    iArr[2] = 77;
                    iArr[3] = 80;
                    iArr[4] = 51;
                    int i11 = u0.b.r3 % 10000;
                    iArr[6] = (i11 / 1000) + 48;
                    int i12 = (i11 % 100) / 10;
                    int i13 = i11 % 1000;
                    if (i12 != 0) {
                        i13 /= 10;
                    }
                    iArr[7] = i13 + 48;
                    iArr[8] = i12 + 48;
                    iArr[9] = (i11 % 10) + 48;
                }
                break;
            case 10:
            default:
                iArr[2] = 87;
                iArr[3] = 69;
                iArr[4] = 76;
                iArr[5] = 67;
                iArr[6] = 79;
                iArr[7] = 77;
                iArr[8] = 69;
                break;
            case 14:
                iArr[7] = 77;
                iArr[8] = 80;
                iArr[9] = 53;
                break;
        }
        int[] iArr2 = new int[11];
        int i14 = 0;
        iArr2[0] = 227;
        while (i14 < 10) {
            int i15 = i14 + 1;
            iArr2[i15] = (byte) iArr[i14];
            i14 = i15;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:5:0x000e  */
    public int b3() {
        int i2 = 3;
        switch (u0.b.D) {
            case 0:
            case 9:
            default:
                i2 = 0;
                break;
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 == 65536) {
                    i2 = 1;
                } else if (i3 == 65537) {
                    i2 = 2;
                } else if (i3 != 65538) {
                    if (i3 != 0) {
                        i2 = i3 != 1 ? 0 : 5;
                    } else {
                        i2 = 4;
                    }
                }
                break;
            case 2:
            case 3:
                i2 = 10;
                break;
            case 4:
                int i4 = o0.e.H;
                if (i4 == 1) {
                    i2 = 7;
                } else if (i4 == 2) {
                    i2 = 14;
                } else if (i4 != 3) {
                    i2 = 0;
                } else {
                    i2 = 13;
                }
                break;
            case 5:
                i2 = 12;
                break;
            case 6:
                i2 = 8;
                break;
            case 7:
                i2 = 11;
                break;
            case 8:
            case 10:
                i2 = 13;
                break;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        return i2;
    }

    public void c3() {
        int i2;
        int[] iArr = new int[10];
        int i3 = 0;
        for (int i4 = 0; i4 < 8; i4++) {
            iArr[i4] = 32;
        }
        iArr[0] = 12;
        iArr[1] = 0;
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[3] = 77;
            iArr[4] = 85;
            iArr[5] = 84;
            iArr[6] = 69;
        } else {
            iArr[3] = 86;
            iArr[4] = 79;
            iArr[5] = 76;
            if (i2 >= 10) {
                iArr[7] = (i2 / 10) + 48;
            }
            iArr[8] = (i2 % 10) + 48;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i3 < 10) {
            int i5 = i3 + 1;
            iArr2[i5] = (byte) iArr[i3];
            i3 = i5;
        }
        z.k.s(iArr2);
    }

    public final void e3(int i2) {
        z.k.s(227, 5, 6, (byte) i2);
    }

    public void f3(int i2) {
        z.k.s(1, 124, (byte) i2);
    }
}
