package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class kk extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7350b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7353e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7351c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7352d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7354f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7355g = {new int[]{1, 0}, new int[]{44, 2}, new int[]{69, 7}, new int[]{70, 8}, new int[]{87, 4}, new int[]{88, 3}, new int[]{89, 27}, new int[]{90, 28}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7356h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f7357i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f7358j = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(kk.this.f7358j);
            kk.this.f7356h = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            kk kkVar = kk.this;
            int i3 = kkVar.f7356h - 1;
            kkVar.f7356h = i3;
            if (i3 <= 0) {
                l0.b0.p0(kkVar.f7358j);
                kk.this.f7356h = 5;
            } else {
                if (u0.b.f17306a0 != 1 || (i2 = nt.f8637c) == 21) {
                    return;
                }
                if (i2 == 22) {
                    z.k.s(227, 2, 36, 142, 1);
                } else if (i2 == 24) {
                    z.k.s(227, 2, 36, 133, 1);
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
        int i2 = nt.f8637c;
        if (i2 == 21) {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        } else if (i2 == 22) {
            this.f7886a.f8306a = null;
            z.k.s(227, 2, 36, 142, 1);
        } else if (i2 == 24) {
            this.f7886a.f8306a = null;
            z.k.s(227, 2, 36, 133, 1);
        }
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f7357i, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2 + 1];
        if (b2 == -90) {
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, bArr[i2 + 3] & 255);
            qt.y0(100, bArr[i2 + 4] & 255);
            qt.y0(101, bArr[i2 + 5] & 255);
            qt.y0(102, bArr[i2 + 6] & 255);
            qt.y0(103, bArr[i2 + 7] & 255);
            qt.y0(104, (bArr[i2 + 8] >> 1) & 1);
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 17) {
            byte b3 = bArr[i2 + 4];
            byte b4 = bArr[i2 + 5];
            this.f7351c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f7352d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f7351c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f7350b = i7;
                    break;
                }
                i7++;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                }
            } else if (i9 == 0 && i7 <= iArr.length) {
                l0.b0.l0(iArr[this.f7350b][1], 1);
            }
            byte b5 = bArr[i2 + 6];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            } else {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            }
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
            return;
        }
        if (b2 == 33) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            this.f7353e = b6 & 255;
            int i10 = 0;
            while (true) {
                iArr2 = this.f7355g;
                if (i10 >= iArr2.length) {
                    break;
                }
                int i11 = this.f7353e;
                if (i11 == iArr2[i10][0]) {
                    if (i11 == 0) {
                        break;
                    }
                    this.f7354f = i10;
                    break;
                }
                i10++;
            }
            int i12 = b7 & 255;
            if (i12 == 1) {
                if (i10 < iArr2.length) {
                    l0.b0.l0(iArr2[i10][1], 0);
                    return;
                }
                return;
            } else {
                if (i12 != 0 || i10 > iArr2.length) {
                    return;
                }
                l0.b0.l0(iArr2[this.f7354f][1], 1);
                return;
            }
        }
        if (b2 != 49) {
            return;
        }
        byte b8 = bArr[i2 + 2];
        byte b9 = bArr[i2 + 3];
        byte b10 = bArr[i2 + 4];
        byte b11 = bArr[i2 + 6];
        byte b12 = bArr[i2 + 7];
        int i13 = i2 + 8;
        byte b13 = bArr[i13];
        int i14 = i2 + 9;
        byte b14 = bArr[i14];
        qt.y0(10, (b8 >> 6) & 1);
        qt.y0(13, (b8 >> 3) & 1);
        qt.y0(11, (b9 >> 6) & 1);
        qt.y0(12, (b9 >> 4) & 1);
        qt.y0(14, (b9 >> 2) & 1);
        qt.y0(16, (b10 >> 5) & 1);
        qt.y0(65, (b10 >> 4) & 1);
        if (b11 != 3) {
            if (b11 == 12) {
                i4 = 0;
                i6 = 1;
            } else if (b11 == 5) {
                i5 = 0;
                i4 = 1;
                i6 = 1;
            } else if (b11 != 6) {
                i4 = 0;
                i6 = 0;
            } else {
                i6 = 0;
                i5 = 0;
                i4 = 1;
            }
            i5 = i6;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 1;
        }
        qt.y0(19, i4);
        qt.y0(20, i6);
        qt.y0(18, i5);
        qt.y0(77, b11 & 255);
        qt.y0(21, b12 & 255);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b13 = bArr[i14];
            b14 = bArr[i13];
        }
        byte b15 = b14;
        int i15 = b13 & 255;
        if (i15 == 254) {
            qt.y0(27, -2);
        } else if (i15 == 255) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i15);
        }
        int i16 = b15 & 255;
        if (i16 == 254) {
            qt.y0(28, -2);
        } else if (i16 == 255) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i16);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f7357i);
        l0.b0.p0(this.f7358j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 105) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 2, 61, iArr[0], iArr[1]);
            }
        } else if (i2 == 1 && qt.l0(iArr, 2)) {
            z.k.s(227, 2, 173, iArr[0], iArr[1]);
        }
    }
}
