package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class f0 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5032c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5033d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f5034e = {new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 2}, new int[]{5, 21}, new int[]{6, 38}, new int[]{7, 64}, new int[]{8, 5}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 1}, new int[]{17, 11}, new int[]{18, 7}, new int[]{19, 8}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f5035f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f0.a3();
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 0;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        switch (u0.b.D) {
            case 0:
                iArr[2] = 9;
                break;
            case 1:
                int i4 = w0.d.f17796h;
                if (i4 - 65536 == 0) {
                    iArr[2] = 1;
                } else if (1 == i4 - 65536) {
                    iArr[2] = 2;
                } else if (2 == i4 - 65536) {
                    iArr[2] = 3;
                } else if (i4 + 0 == 0) {
                    iArr[2] = 4;
                } else if (1 == i4 - 0) {
                    iArr[2] = 5;
                }
                break;
            case 2:
                iArr[2] = 10;
                break;
            case 3:
                iArr[2] = 10;
                break;
            case 4:
                int i5 = o0.e.H;
                if (i5 == 1) {
                    iArr[2] = 7;
                } else if (i5 == 2) {
                    iArr[2] = 14;
                } else if (i5 == 3) {
                    iArr[2] = 13;
                }
                break;
            case 5:
                iArr[2] = 12;
                break;
            case 6:
                iArr[2] = 8;
                break;
            case 7:
                iArr[2] = 11;
                break;
            case 8:
            case 10:
                iArr[2] = 13;
                break;
        }
        if (u0.b.f17347o == 1) {
            iArr[2] = 16;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i6 = i2 + 1;
            iArr2[i6] = (byte) iArr[i2];
            i2 = i6;
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
            qt.z(this.f5035f);
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        switch (b2) {
            case 114:
                if (nt.a()) {
                    if (nt.f8633a == 131106) {
                        qt.i(bArr[i2 + 7] & 255, bArr[i2 + 6] & 255, true, 550);
                    }
                    if (nt.f8633a != 131106) {
                        u0.d.R2(b3(bArr[i2 + 8] & 255));
                        u0.d.U2(b3(bArr[i2 + 11] & 255));
                    } else {
                        u0.d.R2(b3(bArr[i2 + 8] & 255));
                        u0.d.S2(b3(bArr[i2 + 9] & 255));
                        u0.d.T2(b3(bArr[i2 + 10] & 255));
                        u0.d.U2(b3(bArr[i2 + 11] & 255));
                        u0.d.D2(b3(bArr[i2 + 12] & 255));
                        u0.d.G2(b3(bArr[i2 + 15] & 255));
                    }
                }
                break;
            case 115:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                byte b5 = bArr[i2 + 4];
                byte b6 = bArr[i2 + 6];
                byte b7 = bArr[i2 + 7];
                byte b8 = bArr[i2 + 8];
                qt.y0(10, (b3 >> 6) & 1);
                qt.y0(12, (b3 >> 5) & 1);
                qt.y0(11, (b4 >> 6) & 1);
                qt.y0(27, b5 & 255);
                if (b6 == 0) {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                } else if (b6 == 1) {
                    i5 = 0;
                    i6 = 1;
                    i4 = 1;
                } else if (b6 != 2) {
                    if (b6 == 3) {
                        i6 = 0;
                        i4 = 1;
                    } else if (b6 != 4) {
                        i6 = 0;
                        i4 = 0;
                    } else {
                        i6 = 0;
                        i4 = 0;
                        i5 = 1;
                    }
                    i5 = i4;
                } else {
                    i6 = 0;
                    i5 = 0;
                    i4 = 1;
                }
                qt.y0(19, i6);
                qt.y0(20, i4);
                qt.y0(18, i5);
                qt.y0(21, 255 & b7);
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b8 >> 6) & 1);
                    qt.y0(2, (b8 >> 7) & 1);
                } else {
                    qt.y0(1, (b8 >> 7) & 1);
                    qt.y0(2, (b8 >> 6) & 1);
                }
                qt.y0(3, (b8 >> 5) & 1);
                qt.y0(4, (b8 >> 4) & 1);
                qt.y0(5, (b8 >> 3) & 1);
                break;
            case 116:
                if (nt.a()) {
                    this.f5033d = bArr[i2 + 2] & 255;
                    int i7 = 0;
                    while (true) {
                        iArr = this.f5034e;
                        if (i7 < iArr.length) {
                            int i8 = this.f5033d;
                            if (i8 != iArr[i7][0]) {
                                i7++;
                            } else if (i8 != 0) {
                                this.f5031b = i7;
                            }
                        }
                    }
                    if (this.f5033d == 0) {
                        int i9 = this.f5031b;
                        if (i9 < iArr.length && i9 != 255) {
                            l0.b0.l0(iArr[i9][1], 1);
                        }
                        this.f5031b = 255;
                    } else if (i7 < iArr.length) {
                        l0.b0.l0(iArr[i7][1], 0);
                    }
                    if (this.f5033d == 0) {
                        int i10 = ((bArr[i2 + 3] & 255) >> 6) & 255;
                        this.f5033d = i10;
                        if (i10 != 0) {
                            this.f5033d = (i10 & 255) + 17;
                        }
                        int i11 = 0;
                        while (true) {
                            iArr2 = this.f5034e;
                            if (i11 < iArr2.length) {
                                int i12 = this.f5033d;
                                if (i12 != iArr2[i11][0]) {
                                    i11++;
                                } else if (i12 != 0) {
                                    this.f5032c = i11;
                                }
                            }
                        }
                        if (i11 < iArr2.length) {
                            l0.b0.l0(iArr2[i11][1], 0);
                            l0.b0.l0(this.f5034e[i11][1], 1);
                        }
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f5035f);
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
    }

    public int b3(int i2) {
        return (i2 * 5) / 8;
    }
}
