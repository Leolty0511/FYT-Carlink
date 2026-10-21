package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class af extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3298b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3301e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3299c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3300d = {new int[]{3, 2}, new int[]{4, 7}, new int[]{5, 8}, new int[]{6, 12}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 21}, new int[]{11, 18}, new int[]{12, 26}, new int[]{13, 13}, new int[]{16, 34}, new int[]{17, 35}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3302f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f3303g = {new int[]{19, 12}, new int[]{20, 25}, new int[]{21, 6}, new int[]{22, 16}, new int[]{27, 0}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{49, 5}, new int[]{50, 1}, new int[]{51, 5}, new int[]{52, 1}, new int[]{53, 58}, new int[]{54, 18}, new int[]{55, 62}, new int[]{56, 6}, new int[]{57, 24}, new int[]{58, 54}, new int[]{59, 0}, new int[]{60, 67}, new int[]{61, 68}, new int[]{62, 21}, new int[]{63, 25}, new int[]{64, 38}, new int[]{65, 8}, new int[]{66, 7}, new int[]{67, 30}, new int[]{68, 31}, new int[]{69, 6}, new int[]{70, 5}, new int[]{71, 2}, new int[]{72, 16}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3304h = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            af.a3();
        }
    }

    public static void a3() {
        int[] iArr = new int[8];
        int i2 = 0;
        iArr[0] = 147;
        iArr[1] = 6;
        iArr[2] = b3();
        iArr[3] = c3();
        int i3 = u0.b.D;
        if (i3 == 4) {
            iArr[4] = o0.e.B % 255;
            iArr[5] = o0.e.A;
        } else if (i3 == 8 || i3 == 9) {
            iArr[4] = u0.b.r3 & 255;
            if (u0.b.m3 == 0) {
                iArr[5] = 2;
            } else {
                iArr[5] = 0;
            }
        } else {
            iArr[4] = 0;
            iArr[5] = 0;
        }
        if (u0.b.D == 1) {
            int i4 = w0.d.f17796h;
            if (i4 - 65536 == 0 || 1 == i4 - 65536 || 2 == i4 - 65536) {
                int i5 = w0.d.f17797i;
                iArr[6] = (i5 / 10) >> 8;
                iArr[7] = (i5 / 10) & 255;
            } else {
                int i6 = w0.d.f17797i;
                iArr[6] = i6 >> 8;
                iArr[7] = i6 & 255;
            }
        } else {
            iArr[6] = 0;
            iArr[7] = 0;
        }
        int[] iArr2 = new int[9];
        byte[] bArr = new byte[9];
        iArr2[0] = 227;
        while (i2 < 8) {
            int i7 = i2 + 1;
            iArr2[i7] = iArr[i2];
            bArr[i7] = (byte) iArr[i2];
            i2 = i7;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x002d, code lost:
    
        if (r0 == 3) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte b3() {
        /*
            int r0 = u0.b.D
            r1 = 2
            r2 = 3
            r3 = 0
            r4 = 5
            r5 = 4
            r6 = 1
            if (r0 == 0) goto L32
            if (r0 == r6) goto L30
            if (r0 == r5) goto L25
            if (r0 == r4) goto L23
            r1 = 8
            if (r0 == r1) goto L21
            r1 = 9
            if (r0 == r1) goto L21
            r1 = 13
            if (r0 == r1) goto L1f
            r1 = 15
            goto L33
        L1f:
            r1 = r4
            goto L33
        L21:
            r1 = r5
            goto L33
        L23:
            r1 = r2
            goto L33
        L25:
            int r0 = o0.e.H
            if (r0 != r6) goto L2a
            goto L33
        L2a:
            if (r0 != r1) goto L2d
            goto L21
        L2d:
            if (r0 != r2) goto L32
            goto L1f
        L30:
            r1 = r6
            goto L33
        L32:
            r1 = r3
        L33:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: k0.af.b3():byte");
    }

    public static byte c3() {
        int i2 = w0.d.f17796h;
        if (i2 - 65536 != 0) {
            if (1 == i2 - 65536) {
                return (byte) 1;
            }
            if (2 == i2 - 65536) {
                return (byte) 2;
            }
            if (i2 + 0 == 0 || 1 == i2 - 0) {
                return (byte) 6;
            }
        }
        return (byte) 0;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        qt.z(this.f3304h);
        w0.e.f17815a.a(this.f3304h, 1);
        w0.e.f17819e.a(this.f3304h, 1);
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 17) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f3299c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f3300d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f3299c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f3298b = i4;
                    break;
                }
                i4++;
            }
            int i6 = b4 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f3298b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f3298b = 255;
                }
                return;
            }
        }
        if (b2 == 18) {
            byte b5 = bArr[i2 + 2];
            qt.y0(7, (b5 >> 3) & 1);
            qt.y0(8, (b5 >> 2) & 1);
            qt.y0(9, b5 & 3);
            return;
        }
        if (b2 == 20) {
            byte b6 = bArr[i2 + 2];
            qt.y0(5, (b6 >> 3) & 1);
            qt.y0(4, (b6 >> 4) & 1);
            qt.y0(3, (b6 >> 5) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b6 >> 6) & 1);
                qt.y0(2, (b6 >> 7) & 1);
                return;
            } else {
                qt.y0(1, (b6 >> 7) & 1);
                qt.y0(2, (b6 >> 6) & 1);
                return;
            }
        }
        if (b2 != 32) {
            if (b2 == 113) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 != 22) {
                if (b2 != 23) {
                    return;
                }
                qt.y0(10, ((bArr[i2 + 2] & 255) * 60) + (bArr[i2 + 3] & 255));
                return;
            }
            int i8 = bArr[i2 + 2] & 255;
            int i9 = bArr[i2 + 3] & 255;
            int i10 = ((i8 - 79) * 5) + 1000;
            if (i9 == 0) {
                i10 |= 1073741824;
            }
            if (i9 == 1) {
                i10 = (((i10 * 9) / 5) + 32) | 32768;
            }
            u0.d.A3(i10);
            return;
        }
        if (nt.a()) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            this.f3302f = b7 & 255;
            int i11 = 0;
            while (true) {
                iArr2 = this.f3303g;
                if (i11 >= iArr2.length) {
                    break;
                }
                int i12 = this.f3302f;
                if (i12 == iArr2[i11][0]) {
                    if (i12 == 0) {
                        break;
                    }
                    this.f3301e = i11;
                    break;
                }
                i11++;
            }
            switch (this.f3302f) {
                case 65:
                    for (int i13 = 0; i13 < (b8 & 255); i13++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                case 66:
                    for (int i14 = 0; i14 < (b8 & 255); i14++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                case 67:
                    for (int i15 = 0; i15 < (b8 & 255); i15++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
                case 68:
                    for (int i16 = 0; i16 < (b8 & 255); i16++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                default:
                    int i17 = b8 & 255;
                    if (i17 == 1) {
                        if (i11 < iArr2.length) {
                            l0.b0.l0(iArr2[i11][1], 0);
                        }
                    } else if (i17 == 0) {
                        int i18 = this.f3301e;
                        if (i18 < iArr2.length && i18 != 255) {
                            l0.b0.l0(iArr2[i18][1], 1);
                        }
                        this.f3301e = 255;
                    }
                    break;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f3304h);
        w0.e.f17815a.d(this.f3304h);
        w0.e.f17819e.d(this.f3304h);
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 12) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 146, 1, iArr[0]);
        } else {
            if (i2 != 7) {
                return;
            }
            z.k.s(227, -54, 1, iArr[0]);
        }
    }
}
