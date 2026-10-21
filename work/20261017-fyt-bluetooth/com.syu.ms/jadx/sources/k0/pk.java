package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class pk extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9258b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9261e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9259c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9260d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{5, 18}, new int[]{12, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{23, 1}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9262f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f9263g = {new int[]{2, 3}, new int[]{3, 4}, new int[]{9, 12}, new int[]{16, 16}, new int[]{36, 54}, new int[]{43, 5}, new int[]{51, 24}, new int[]{91, 25}, new int[]{92, 64}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9264h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9265i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f9266j = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pk pkVar = pk.this;
            pkVar.f9264h = 0;
            pkVar.f9265i = 0;
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        z.k.s(227, 2, 38, 38, 9);
        z.k.s(227, 3, 106, 5, 1, 0);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f9266j, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        int[][] iArr2;
        int i7;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            byte b7 = bArr[i2 + 6];
            byte b8 = bArr[i2 + 7];
            byte b9 = bArr[i2 + 8];
            qt.y0(10, (b3 >> 6) & 1);
            qt.y0(42, (b3 >> 4) & 1);
            qt.y0(11, (b4 >> 6) & 1);
            qt.y0(12, (b4 >> 4) & 1);
            qt.y0(16, (b5 >> 5) & 1);
            qt.y0(65, (b5 >> 4) & 1);
            int i8 = b7 & 255;
            if (i8 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i8 != 12) {
                if (i8 == 5) {
                    i4 = 0;
                    i5 = 1;
                } else if (i8 != 6) {
                    i4 = 0;
                    i5 = 0;
                } else {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                }
                i6 = i5;
            } else {
                i5 = 0;
                i4 = 1;
                i6 = 1;
            }
            qt.y0(18, i4);
            qt.y0(19, i5);
            qt.y0(20, i6);
            qt.y0(21, b8 & 255);
            int i9 = b9 & 255;
            if (b9 == -2) {
                qt.y0(27, -2);
                return;
            } else if (b9 == -1) {
                qt.y0(27, -3);
                return;
            } else {
                qt.y0(27, i9);
                return;
            }
        }
        if (b2 == 65) {
            u0.d.R2(l0.h0.s(bArr[i2 + 2] & 255));
            u0.d.S2(l0.h0.s(bArr[i2 + 3] & 255));
            u0.d.T2(l0.h0.s(bArr[i2 + 4] & 255));
            u0.d.U2(l0.h0.s(bArr[i2 + 5] & 255));
            u0.d.D2(l0.h0.r(bArr[i2 + 6] & 255));
            u0.d.G2(l0.h0.r(bArr[i2 + 9] & 255));
            return;
        }
        if (b2 == 17) {
            this.f9259c = bArr[i2 + 4] & 255;
            int i10 = 0;
            while (true) {
                iArr = this.f9260d;
                if (i10 >= iArr.length) {
                    break;
                }
                int i11 = this.f9259c;
                if (i11 == iArr[i10][0]) {
                    if (i11 == 0) {
                        break;
                    }
                    this.f9258b = i10;
                    break;
                }
                i10++;
            }
            if (this.f9259c == 0 || (bArr[i2 + 5] & 255) == 0) {
                int i12 = this.f9258b;
                if (i12 != 255 && (bArr[i2 + 5] & 255) == 0) {
                    l0.b0.l0(iArr[i12][1], 1);
                }
                this.f9258b = 255;
            } else if (i10 < iArr.length) {
                l0.b0.l0(iArr[i10][1], 0);
            }
            qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
            return;
        }
        if (b2 == 18) {
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
        if (b2 == 33) {
            int i13 = bArr[i2 + 2] & 255;
            int i14 = bArr[i2 + 3] & 255;
            this.f9262f = i13 & 255;
            int i15 = 0;
            while (true) {
                iArr2 = this.f9263g;
                if (i15 >= iArr2.length) {
                    break;
                }
                int i16 = this.f9262f;
                if (i16 == iArr2[i15][0]) {
                    if (i16 == 0) {
                        break;
                    }
                    this.f9261e = i15;
                    break;
                }
                i15++;
            }
            int i17 = i14 & 255;
            if (i17 == 1) {
                if (i15 < iArr2.length) {
                    l0.b0.l0(iArr2[i15][1], 0);
                    return;
                }
                return;
            } else {
                if (i17 != 0 || i15 > iArr2.length) {
                    return;
                }
                l0.b0.l0(iArr2[this.f9261e][1], 1);
                return;
            }
        }
        if (b2 != 34) {
            return;
        }
        byte b11 = bArr[i2 + 2];
        byte b12 = bArr[i2 + 3];
        if (b11 != 1) {
            if (b11 == 2 && b12 != (i7 = this.f9265i)) {
                if (b12 > i7) {
                    for (int i18 = 0; i18 < b12 - this.f9265i; i18++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if (b12 < i7) {
                    for (int i19 = 0; i19 < this.f9265i - b12; i19++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                }
                this.f9265i = b12;
                return;
            }
            return;
        }
        int i20 = this.f9264h;
        if (b12 != i20) {
            if (b12 > i20) {
                for (int i21 = 0; i21 < b12 - this.f9264h; i21++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
            } else if (b12 < i20) {
                for (int i22 = 0; i22 < this.f9264h - b12; i22++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
            }
            this.f9264h = b12;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f9266j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 97) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
