package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class mj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8200b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8203e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8201c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8202d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{4, 13}, new int[]{5, 18}, new int[]{8, 3}, new int[]{9, 4}, new int[]{11, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8204f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f8205g = {new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 21}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{31, 53}, new int[]{39, 9}, new int[]{67, 64}, new int[]{86, 22}, new int[]{95, 54}, new int[]{96, 39}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8206h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8207i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f8208j = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mj mjVar = mj.this;
            mjVar.f8206h = 0;
            mjVar.f8207i = 0;
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
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        z.k.s(227, 2, 36, 10, 4);
        u0.c.f17386m.a(this.f8208j, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int[][] iArr2;
        int i7;
        byte b2 = bArr[i2 + 1];
        if (b2 == -90) {
            qt.y0(99, bArr[i2 + 2]);
            qt.y0(100, bArr[i2 + 3]);
            qt.y0(101, bArr[i2 + 4]);
            qt.y0(103, bArr[i2 + 5]);
            qt.y0(102, bArr[i2 + 7]);
            int i8 = i2 + 8;
            qt.y0(104, (bArr[i8] >> 3) & 1);
            qt.y0(105, 7 & (bArr[i8] >> 0));
            qt.y0(106, bArr[i2 + 9]);
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 17) {
            this.f8201c = bArr[i2 + 4] & 255;
            int i9 = 0;
            while (true) {
                iArr = this.f8202d;
                if (i9 >= iArr.length) {
                    break;
                }
                int i10 = this.f8201c;
                if (i10 == iArr[i9][0]) {
                    if (i10 == 0) {
                        break;
                    }
                    this.f8200b = i9;
                    break;
                }
                i9++;
            }
            int i11 = this.f8201c;
            if (i11 != 5) {
                if (i11 != 0 && (bArr[i2 + 5] & 255) != 0) {
                    if (i9 < iArr.length) {
                        l0.b0.l0(iArr[i9][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i12 = this.f8200b;
                    if (i12 != 255 && (bArr[i2 + 5] & 255) == 0) {
                        l0.b0.l0(iArr[i12][1], 1);
                    }
                    this.f8200b = 255;
                    return;
                }
            }
            if ((bArr[i2 + 5] & 255) == 1) {
                int i13 = h0.c.E;
                if (i13 != 3) {
                    if (i13 == 4) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    } else if (i13 != 5) {
                        return;
                    }
                }
                l0.b0.l0(26, 0);
                l0.b0.l0(26, 1);
                return;
            }
            return;
        }
        if (b2 == 26) {
            int i14 = bArr[i2 + 3] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i14 >> 7) & 1);
                qt.y0(1, (i14 >> 6) & 1);
            } else {
                qt.y0(1, (i14 >> 7) & 1);
                qt.y0(2, (i14 >> 6) & 1);
            }
            qt.y0(3, (i14 >> 5) & 1);
            qt.y0(4, (i14 >> 4) & 1);
            qt.y0(5, (i14 >> 3) & 1);
            qt.y0(0, (i14 >> 2) & 1);
            qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
            return;
        }
        if (b2 == 49) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 6];
            byte b7 = bArr[i2 + 7];
            int i15 = i2 + 8;
            byte b8 = bArr[i15];
            int i16 = i2 + 9;
            byte b9 = bArr[i16];
            qt.y0(10, (b3 >> 6) & 1);
            qt.y0(13, (b3 >> 3) & 1);
            qt.y0(11, (b4 >> 6) & 1);
            qt.y0(12, (b4 >> 4) & 1);
            qt.y0(14, (b4 >> 2) & 1);
            qt.y0(16, (b5 >> 5) & 1);
            qt.y0(65, (b5 >> 4) & 1);
            int i17 = b6 & 255;
            if (i17 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i17 != 12) {
                if (i17 == 5) {
                    i4 = 0;
                    i5 = 1;
                } else if (i17 != 6) {
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
            qt.y0(77, i17);
            qt.y0(21, b7 & 255);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b8 = bArr[i16];
                b9 = bArr[i15];
            }
            byte b10 = b9;
            int i18 = b8 & 255;
            if (i18 == 254) {
                qt.y0(27, -2);
            } else if (i18 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i18);
            }
            int i19 = b10 & 255;
            if (i19 == 254) {
                qt.y0(28, -2);
                return;
            } else if (i19 == 255) {
                qt.y0(28, -3);
                return;
            } else {
                qt.y0(28, i19);
                return;
            }
        }
        if (b2 == 97) {
            int i20 = i2 + 3;
            qt.y0(109, (bArr[i20] >> 7) & 1);
            qt.y0(110, (bArr[i20] >> 4) & 7);
            qt.y0(111, (bArr[i20] >> 1) & 7);
            qt.y0(112, (bArr[i20] >> 0) & 1);
            qt.y0(113, (bArr[i2 + 4] >> 7) & 1);
            return;
        }
        if (b2 == 33) {
            this.f8204f = bArr[i2 + 2] & 255;
            int i21 = 0;
            while (true) {
                iArr2 = this.f8205g;
                if (i21 >= iArr2.length) {
                    break;
                }
                int i22 = this.f8204f;
                if (i22 == iArr2[i21][0]) {
                    if (i22 == 0) {
                        break;
                    }
                    this.f8203e = i21;
                    break;
                }
                i21++;
            }
            if (this.f8204f != 0 && (bArr[i2 + 3] & 255) != 0) {
                if (i21 < iArr2.length) {
                    l0.b0.l0(iArr2[i21][1], 0);
                    return;
                }
                return;
            } else {
                int i23 = this.f8203e;
                if (i23 != 255 && (bArr[i2 + 3] & 255) == 0) {
                    l0.b0.l0(iArr2[i23][1], 1);
                }
                this.f8203e = 255;
                return;
            }
        }
        if (b2 != 34) {
            return;
        }
        byte b11 = bArr[i2 + 2];
        byte b12 = bArr[i2 + 3];
        if (b11 != 1) {
            if (b11 == 2 && b12 != (i7 = this.f8207i)) {
                if (b12 > i7) {
                    for (int i24 = 0; i24 < b12 - this.f8207i; i24++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if (b12 < i7) {
                    for (int i25 = 0; i25 < this.f8207i - b12; i25++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                }
                this.f8207i = b12;
                return;
            }
            return;
        }
        int i26 = this.f8206h;
        if (b12 != i26) {
            if (b12 > i26) {
                for (int i27 = 0; i27 < b12 - this.f8206h; i27++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
            } else if (b12 < i26) {
                for (int i28 = 0; i28 < this.f8206h - b12; i28++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
            }
            this.f8206h = b12;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f8208j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 114) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 4, 111, iArr[0], iArr[1], 255, 255);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 2, 173, iArr[0], iArr[1]);
        }
    }
}
