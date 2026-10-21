package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class hg extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5969c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5970d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 18}, new int[]{7, 26}, new int[]{14, 3}, new int[]{15, 4}, new int[]{32, 12}, new int[]{48, 29}, new int[]{49, 30}, new int[]{50, 31}, new int[]{51, 34}, new int[]{52, 35}, new int[]{53, 32}, new int[]{54, 33}, new int[]{55, 34}, new int[]{56, 35}, new int[]{57, 34}, new int[]{58, 35}, new int[]{59, 6}, new int[]{60, 5}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f5971e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 0) {
                z.k.s(227, 144, 2, 0, 0);
                return;
            }
            if (!h0.c.f2437h.isEmpty() && u0.b.D == 2) {
                hg.this.b3(h0.c.f2437h);
                return;
            }
            int i2 = u0.b.D;
            if (i2 == 1) {
                z.k.s(227, 144, 2, 1, 0);
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0 || 1 == i3 - 65536 || 2 == i3 - 65536) {
                    int i4 = w0.d.f17797i;
                    z.k.s(227, 131, 4, 0, w0.d.f17798j, (i4 >> 8) & 255, i4 & 255);
                } else {
                    int i5 = w0.d.f17797i;
                    z.k.s(227, 131, 4, 1, w0.d.f17798j, (i5 >> 8) & 255, i5 & 255);
                    return;
                }
            }
            if (i2 == 4) {
                z.k.s(227, 144, 2, 3, 0);
                if (o0.e.C == 0) {
                    return;
                }
                int i6 = o0.e.B;
                z.k.s(227, 132, 2, (i6 >> 8) & 255, i6 & 255);
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    z.k.s(227, 144, 2, 3, 0);
                    if (u0.b.s3 != 0) {
                        int i7 = u0.b.r3;
                        z.k.s(227, 132, 2, (i7 >> 8) & 255, i7 & 255);
                        break;
                    }
                    break;
                default:
                    z.k.s(227, 144, 2, 7, 0);
                    break;
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
        mtVar.f8314i = 0;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        qt.z(this.f5971e);
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            this.f5969c = bArr[i2 + 2] & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f5970d;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f5969c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f5968b = i6;
                    break;
                }
                i6++;
            }
            if (this.f5969c == 0 || (i4 = this.f5968b) >= iArr.length) {
                return;
            }
            l0.b0.l0(iArr[i4][1], 0);
            l0.b0.l0(this.f5970d[this.f5968b][1], 1);
            return;
        }
        if (b2 == 9) {
            int i8 = i2 + 2;
            if (((bArr[i8] >> 7) & 1) == 1) {
                qt.m(bArr[i8], 0, 128, true, 127);
                return;
            } else {
                qt.j(bArr[i8], 0, (bArr[i8] >> 7) & 1, 127);
                return;
            }
        }
        if (b2 == 42) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            u0.d.D2(l0.c0.Q0(b3 & 255));
            u0.d.E2(l0.c0.Q0(b4 & 255));
            u0.d.F2(l0.c0.Q0(b5 & 255));
            u0.d.G2(l0.c0.Q0(b6 & 255));
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 4) {
            byte b7 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b7 >> 6) & 1);
                qt.y0(2, (b7 >> 7) & 1);
            } else {
                qt.y0(1, (b7 >> 7) & 1);
                qt.y0(2, (b7 >> 6) & 1);
            }
            qt.y0(3, (b7 >> 5) & 1);
            qt.y0(4, (b7 >> 4) & 1);
            qt.y0(5, (b7 >> 3) & 1);
            return;
        }
        if (b2 != 5) {
            return;
        }
        int i9 = bArr[i2 + 2] & 255;
        int i10 = bArr[i2 + 3] & 255;
        int i11 = bArr[i2 + 4] & 255;
        int i12 = i2 + 5;
        int i13 = bArr[i12] & 255;
        int i14 = i2 + 6;
        int i15 = bArr[i14] & 255;
        qt.y0(10, (i9 >> 7) & 1);
        qt.y0(11, (i9 >> 6) & 1);
        qt.y0(14, (i9 >> 5) & 1);
        qt.y0(13, (i9 >> 4) & 1);
        qt.y0(12, 3 & (i9 >> 2));
        qt.y0(65, (i9 >> 1) & 1);
        qt.y0(16, (i9 >> 0) & 1);
        qt.y0(15, (i10 >> 7) & 1);
        qt.y0(49, (i10 >> 4) & 1);
        qt.y0(21, 15 & i10);
        qt.y0(49, (i11 >> 7) & 1);
        qt.y0(18, (i11 >> 6) & 1);
        qt.y0(20, (i11 >> 5) & 1);
        qt.y0(19, (i11 >> 4) & 1);
        qt.y0(37, (i11 >> 0) & 1);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i13 = bArr[i14] & 255;
            i15 = bArr[i12] & 255;
        }
        int i16 = -3;
        if (i13 != 0) {
            switch (i13) {
                case i.a.Theme_dialogTitleDecorLayout /* 253 */:
                    i5 = -3;
                    break;
                case 254:
                case 255:
                    i5 = -1;
                    break;
                default:
                    i5 = 0;
                    break;
            }
        } else {
            i5 = -2;
        }
        qt.y0(27, i5);
        if (i15 != 0) {
            switch (i15) {
                case i.a.Theme_dialogTitleDecorLayout /* 253 */:
                    break;
                case 254:
                case 255:
                    i16 = -1;
                    break;
                default:
                    i16 = 0;
                    break;
            }
        } else {
            i16 = -2;
        }
        qt.y0(28, i16);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        qt.q0(this.f5971e);
        l0.b0.p0(l0.c0.f13021o);
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

    public final void b3(String str) {
        byte[] bytes = str.getBytes();
        int length = bytes.length <= 15 ? bytes.length : 15;
        int[] iArr = new int[length + 5];
        iArr[0] = -29;
        iArr[1] = -123;
        iArr[2] = ((byte) length) + 2;
        iArr[3] = 1;
        iArr[4] = length;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 5] = bytes[i2];
        }
        z.k.s(iArr);
    }
}
