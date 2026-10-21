package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ce extends lt implements o1.q {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f3997l = 255;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f3998m = 255;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f3999n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4001c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4004f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4005g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4002d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f4003e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f4006h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f4007i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f4008j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f4009k = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.e2 == 1) {
                o1.u.z();
                u0.b.e2 = 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ce.f3998m != 3) {
                if (u0.b.j4 == 1) {
                    if (ce.f3997l == 0) {
                        ce.this.a3();
                    }
                } else if (ce.f3997l == 1) {
                    ce.this.a3();
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 2, 10, 1, 50);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17357r0 == 0) {
                if (ce.f3999n == 0) {
                    if (u0.b.C == 13 || !o1.u.S(a.b.Q) || ce.this.f4004f) {
                        return;
                    }
                    o1.u.k();
                    return;
                }
                if (!o1.u.S(a.b.Q)) {
                    ce.this.f4005g = false;
                    ce.this.f4004f = false;
                    o1.u.f(a.b.R);
                } else if (ce.this.f4005g) {
                    ce.this.f4004f = true;
                }
                o1.l.a().postDelayed(this, 1000L);
            }
        }
    }

    public static byte[] i3(int... iArr) {
        if (iArr == null) {
            return null;
        }
        int length = iArr.length;
        byte[] bArr = new byte[length + 5];
        bArr[0] = -120;
        bArr[1] = 85;
        bArr[2] = (byte) (length >> 8);
        bArr[3] = (byte) (length & 255);
        int i2 = bArr[2] ^ bArr[3];
        for (int i3 = 0; i3 < length; i3++) {
            bArr[i3 + 4] = (byte) iArr[i3];
            i2 ^= iArr[i3];
        }
        bArr[length + 4] = (byte) i2;
        return bArr;
    }

    public static void j3(int... iArr) {
        byte[] bArrI3 = i3(iArr);
        if (bArrI3 != null) {
            z.k.q(bArrI3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        y0.f.C0 = 36;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.f8637c == 1) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = null;
            mtVar.f8310e = 1;
            mtVar.f8317l = 0;
            mtVar.f8311f = 1;
            mtVar.f8312g = 0;
            mtVar.f8320o = 1;
            mtVar.f8307b = 0;
            return;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8306a = new String[]{"com.syu.canbus"};
        mtVar2.f8310e = 1;
        mtVar2.f8317l = 1;
        mtVar2.f8311f = 1;
        mtVar2.f8312g = 0;
        mtVar2.f8320o = 1;
        mtVar2.f8307b = 0;
        if (o1.q0.v()) {
            qt.y(this.f4008j);
        }
        u0.c.G.a(this.f4007i, 1);
        u0.b.Y3 = true;
        z.c.f18183c.a(this.f4006h, 1);
    }

    /* JADX WARN: Code duplicated, block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x016e  */
    /* JADX WARN: Code duplicated, block: B:45:0x017e  */
    /* JADX WARN: Code duplicated, block: B:46:0x0186 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x0188  */
    /* JADX WARN: Code duplicated, block: B:48:0x0191  */
    /* JADX WARN: Code duplicated, block: B:51:0x019e  */
    /* JADX WARN: Code duplicated, block: B:52:0x01a6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:54:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:57:0x01be  */
    /* JADX WARN: Code duplicated, block: B:62:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:65:0x01de  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b3;
        byte b4;
        int i8;
        int i9;
        int i10;
        int i11;
        byte b5 = bArr[i2 + 1];
        if (b5 == -81) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            f3997l = (b6 >> 6) & 1;
            f3998m = b7 & 255;
            return;
        }
        if (b5 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b5 == 65) {
            if (nt.a()) {
                u0.d.R2(l0.c0.L0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.L0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.L0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.L0(bArr[i2 + 5] & 255));
                u0.d.D2(l0.c0.L0(bArr[i2 + 6] & 255));
                u0.d.E2(l0.c0.L0(bArr[i2 + 7] & 255));
                u0.d.F2(l0.c0.L0(bArr[i2 + 8] & 255));
                u0.d.G2(l0.c0.L0(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b5 == 97) {
            qt.y0(100, bArr[i2 + 2] & 31);
            return;
        }
        if (b5 == 17) {
            int i12 = bArr[i2 + 2] & 4;
            if (f3999n != i12) {
                this.f4005g = true;
                f3999n = i12;
                o1.l.a().post(this.f4009k);
            }
            if (nt.a()) {
                byte b8 = bArr[i2 + 4];
                byte b9 = bArr[i2 + 5];
                this.f4001c = b8 & 255;
                int i13 = 0;
                while (true) {
                    iArr = this.f4003e;
                    if (i13 >= iArr.length) {
                        break;
                    }
                    int i14 = this.f4001c;
                    if (i14 == iArr[i13][0]) {
                        if (i14 == 0) {
                            break;
                        }
                        this.f4000b = i13;
                        break;
                    }
                    i13++;
                }
                if ((b9 & 255) != 0) {
                    if (i13 < iArr.length) {
                        l0.b0.l0(iArr[i13][1], 0);
                    }
                    b2 = 255;
                } else {
                    int i15 = this.f4000b;
                    if (i15 < iArr.length) {
                        b2 = 255;
                        if (i15 != 255) {
                            l0.b0.l0(iArr[i15][1], 1);
                        }
                    } else {
                        b2 = 255;
                    }
                    this.f4000b = b2;
                }
                qt.i(bArr[i2 + 9] & b2, bArr[i2 + 8] & b2, true, 4800);
                return;
            }
            return;
        }
        if (b5 == 18) {
            byte b10 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b10 >> 6) & 1);
                qt.y0(2, (b10 >> 7) & 1);
            } else {
                qt.y0(1, (b10 >> 7) & 1);
                qt.y0(2, (b10 >> 6) & 1);
            }
            qt.y0(3, (b10 >> 5) & 1);
            qt.y0(4, (b10 >> 4) & 1);
            qt.y0(5, (b10 >> 3) & 1);
            qt.y0(0, (b10 >> 2) & 1);
            return;
        }
        if (b5 != 49) {
            if (b5 != 50) {
                return;
            }
            int i16 = i2 + 4;
            int i17 = i2 + 5;
            qt.y0(98, ((bArr[i16] << 8) & 65280) | (bArr[i17] & 255));
            qt.y0(1032, ((bArr[i16] << 8) & 65280) | (bArr[i17] & 255));
            qt.y0(99, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
            return;
        }
        byte b11 = bArr[i2 + 2];
        byte b12 = bArr[i2 + 3];
        byte b13 = bArr[i2 + 4];
        byte b14 = bArr[i2 + 6];
        byte b15 = bArr[i2 + 7];
        int i18 = i2 + 8;
        byte b16 = bArr[i18];
        int i19 = i2 + 9;
        byte b17 = bArr[i19];
        qt.y0(10, (b11 >> 6) & 1);
        qt.y0(53, (b11 >> 5) & 1);
        qt.y0(14, (b11 >> 2) & 1);
        qt.y0(11, (b11 >> 0) & 3);
        qt.y0(12, (b12 >> 4) & 3);
        qt.y0(13, (b12 >> 3) & 1);
        if (((b13 >> 7) & 1) == 1) {
            o1.u.f("com.syu.canbus.landrover");
        }
        qt.y0(16, (b13 >> 5) & 1);
        qt.y0(65, (b13 >> 4) & 1);
        int i20 = b14 & 255;
        if (i20 != 1) {
            if (i20 == 3) {
                i6 = 1;
                i4 = 0;
                i5 = 0;
                i7 = 0;
            } else if (i20 == 5) {
                i7 = 1;
                i6 = 1;
                i4 = 0;
                i5 = 0;
            } else if (i20 != 6) {
                switch (i20) {
                    case 11:
                        i5 = 1;
                        i4 = 0;
                        i7 = 0;
                        i6 = i7;
                        break;
                    case 12:
                        i5 = 1;
                        i6 = 1;
                        i4 = 0;
                        i7 = 0;
                        break;
                    case 13:
                        i5 = 1;
                        i7 = 1;
                        i4 = 0;
                        i6 = 0;
                        break;
                    case 14:
                        i5 = 1;
                        i7 = 1;
                        i6 = 1;
                        i4 = 0;
                        break;
                    default:
                        i4 = 0;
                        i5 = 0;
                        break;
                }
            } else {
                i7 = 1;
                i4 = 0;
                i5 = 0;
                i6 = 0;
            }
            qt.y0(49, i4);
            qt.y0(18, i5);
            qt.y0(19, i7);
            qt.y0(20, i6);
            qt.y0(77, b14);
            qt.y0(21, b15);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b16 = bArr[i19];
                b17 = bArr[i18];
            }
            b3 = b16;
            b4 = b17;
            i8 = b3 & 255;
            if (b3 == -2) {
                qt.y0(27, -2);
            } else if (b3 == -1) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i8);
            }
            i9 = b4 & 255;
            if (b4 == -2) {
                qt.y0(28, -2);
            } else if (b4 == -1) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i9);
            }
            if (nt.a()) {
                i10 = (((bArr[i2 + 13] & 255) & 255) * 10) / 2;
                if (i10 >= 400 || i10 > 1250) {
                    i11 = 1000 - (400 - i10);
                } else {
                    i11 = (i10 + 1000) - 400;
                }
                if (i11 > 600) {
                    u0.d.A3(i11);
                }
            }
        }
        i4 = 1;
        i5 = 0;
        i7 = i5;
        i6 = i7;
        qt.y0(49, i4);
        qt.y0(18, i5);
        qt.y0(19, i7);
        qt.y0(20, i6);
        qt.y0(77, b14);
        qt.y0(21, b15);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b16 = bArr[i19];
            b17 = bArr[i18];
        }
        b3 = b16;
        b4 = b17;
        i8 = b3 & 255;
        if (b3 == -2) {
            qt.y0(27, -2);
        } else if (b3 == -1) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i8);
        }
        i9 = b4 & 255;
        if (b4 == -2) {
            qt.y0(28, -2);
        } else if (b4 == -1) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i9);
        }
        if (nt.a()) {
            i10 = (((bArr[i2 + 13] & 255) & 255) * 10) / 2;
            if (i10 >= 400) {
                i11 = 1000 - (400 - i10);
            } else {
                i11 = 1000 - (400 - i10);
            }
            if (i11 > 600) {
                u0.d.A3(i11);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        if (o1.q0.v()) {
            qt.p0(this.f4008j);
        }
        u0.c.G.d(this.f4007i);
        u0.b.Y3 = false;
        this.f7886a.f8307b = 0;
        z.c.f18183c.d(this.f4006h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 101) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (h3(iArr, 2)) {
                g3(iArr[0], iArr[1]);
            }
        } else {
            if (i2 != 1) {
                if (i2 == 2 && h3(iArr, 2)) {
                    z.k.s(227, 2, 59, (byte) iArr[0], (byte) iArr[1]);
                    return;
                }
                return;
            }
            if (iArr == null || iArr.length <= 2) {
                return;
            }
            int i3 = iArr[0];
            int i4 = iArr[1];
            j3(181, (i3 >> 8) & 255, i3 & 255, (i4 >> 8) & 255, i4 & 255, iArr[2]);
        }
    }

    public final void a3() {
        z.k.s(227, 2, 42, 1, 1);
        z.k.s(227, 2, 42, 1, 0);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
    }

    public final void g3(int i2, int i3) {
        z.k.s(227, 2, 42, (byte) i3, (byte) i2);
    }

    public final boolean h3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }
}
