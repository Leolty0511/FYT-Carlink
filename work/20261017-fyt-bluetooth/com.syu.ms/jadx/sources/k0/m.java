package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class m extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7888c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7887b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7889d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f7890e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{24, 18}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f7891f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f7892g = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m mVar = m.this;
            byte b2 = (byte) (mVar.f7891f + 1);
            mVar.f7891f = b2;
            if (b2 > 5) {
                l0.b0.o0(mVar.f7892g);
                m.this.f7891f = (byte) 0;
            }
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
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2 + 1];
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 49) {
            byte b4 = bArr[i2 + 2];
            qt.y0(10, (b4 >> 6) & 1);
            qt.y0(62, (b4 >> 2) & 1);
            qt.y0(53, (b4 >> 0) & 3);
            byte b5 = bArr[i2 + 3];
            int[] iArr2 = new int[1];
            iArr2[0] = ((b5 >> 4) & 1) == 0 ? 0 : 1;
            qt.y0(12, iArr2);
            if (((b5 >> 3) & 1) == 1) {
                qt.y0(13, 1);
            } else {
                qt.y0(13, (b4 >> 3) & 1);
            }
            byte b6 = bArr[i2 + 4];
            qt.y0(65, (b6 >> 6) & 1);
            qt.y0(16, (b6 >> 5) & 1);
            qt.y0(30, (b6 >> 2) & 3);
            qt.y0(29, (b6 >> 0) & 3);
            byte b7 = bArr[i2 + 5];
            qt.y0(32, (b7 >> 2) & 3);
            qt.y0(31, (b7 >> 0) & 3);
            qt.y0(77, bArr[i2 + 6] & 255);
            qt.y0(21, bArr[i2 + 7] & 255);
            int i4 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 8] : bArr[i2 + 9]) & 255;
            if (i4 == 254) {
                qt.y0(27, -2);
            } else if (i4 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i4 * 5);
            }
            int i5 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 9] : bArr[i2 + 8]) & 255;
            if (i5 == 254) {
                qt.y0(28, -2);
                return;
            } else if (i5 == 255) {
                qt.y0(28, -3);
                return;
            } else {
                qt.y0(28, i5 * 5);
                return;
            }
        }
        if (b3 == 65) {
            if (nt.a()) {
                int i6 = i2 + 2;
                u0.d.R2(((bArr[i6] & 255) > 100 ? 100 : bArr[i6] & 255) / 10);
                int i7 = i2 + 3;
                u0.d.S2(((bArr[i7] & 255) > 100 ? 100 : bArr[i7] & 255) / 10);
                int i8 = i2 + 4;
                u0.d.T2(((bArr[i8] & 255) > 100 ? 100 : bArr[i8] & 255) / 10);
                int i9 = i2 + 5;
                u0.d.U2(((bArr[i9] & 255) > 100 ? 100 : bArr[i9] & 255) / 10);
                int i10 = i2 + 6;
                u0.d.D2(((bArr[i10] & 255) > 100 ? 100 : bArr[i10] & 255) / 10);
                int i11 = i2 + 7;
                u0.d.E2(((bArr[i11] & 255) > 100 ? 100 : bArr[i11] & 255) / 10);
                int i12 = i2 + 8;
                u0.d.F2(((bArr[i12] & 255) > 100 ? 100 : bArr[i12] & 255) / 10);
                int i13 = i2 + 9;
                u0.d.G2(((bArr[i13] & 255) <= 100 ? bArr[i13] & 255 : 100) / 10);
                return;
            }
            return;
        }
        if (b3 != 17) {
            if (b3 != 18) {
                return;
            }
            byte b8 = bArr[i2 + 4];
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
            qt.y0(0, (b8 >> 2) & 1);
            return;
        }
        if (nt.a()) {
            byte b9 = bArr[i2 + 4];
            byte b10 = bArr[i2 + 5];
            this.f7889d = b9 & 255;
            int i14 = 0;
            while (true) {
                iArr = this.f7890e;
                if (i14 >= iArr.length) {
                    break;
                }
                int i15 = this.f7889d;
                if (i15 == iArr[i14][0]) {
                    if (i15 == 0) {
                        break;
                    }
                    this.f7888c = i14;
                    break;
                }
                i14++;
            }
            int i16 = b10 & 255;
            if (i16 == 1) {
                if (i14 < iArr.length && (b2 = this.f7891f) == 0) {
                    this.f7891f = (byte) (b2 + 1);
                    l0.b0.l0(iArr[i14][1], 0);
                    l0.b0.a(this.f7892g);
                }
            } else if (i16 == 0) {
                int i17 = this.f7888c;
                if (i17 < iArr.length && i17 != 255) {
                    l0.b0.l0(iArr[i17][1], 1);
                    l0.b0.o0(this.f7892g);
                    this.f7891f = (byte) 0;
                }
                this.f7888c = 255;
            }
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
        }
    }

    @Override // k0.lt
    public void W2() {
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
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 2) {
                return;
            }
            c3(iArr[0], iArr[1], iArr[2]);
            return;
        }
        if (i2 == 1 && iArr != null && iArr.length > 0) {
            b3(iArr[0]);
        }
    }

    public final void b3(int i2) {
        z.k.s(227, 3, -95, 0, (byte) (i2 & 255));
    }

    public final void c3(int i2, int i3, int i4) {
        z.k.s(227, 5, 44, (byte) i2, (byte) ((i3 >> 8) & 255), (byte) (i3 & 255), (byte) ((i4 >> 8) & 255), (byte) (i4 & 255));
    }
}
