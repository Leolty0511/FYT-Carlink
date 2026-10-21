package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class og extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8827c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8828d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 13}, new int[]{6, 5}, new int[]{7, 29}, new int[]{8, 31}, new int[]{9, 30}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8317l = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4 = bArr[i2] & 255;
        if (i4 == 40) {
            byte b2 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b2 >> 6) & 1);
                qt.y0(1, (b2 >> 7) & 1);
            } else {
                qt.y0(2, (b2 >> 7) & 1);
                qt.y0(1, (b2 >> 6) & 1);
            }
            qt.y0(4, (b2 >> 5) & 1);
            qt.y0(3, (b2 >> 4) & 1);
            qt.y0(0, (b2 >> 2) & 1);
            qt.y0(5, (b2 >> 3) & 1);
        }
        if (i4 == 48) {
            qt.l(bArr[i2 + 2], bArr[i2 + 3], false, 540);
            return;
        }
        if (i4 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            z.k.s(227, 143, 2, 1, 0);
            return;
        }
        switch (i4) {
            case 33:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f8827c = b3 & 255;
                int i5 = 0;
                while (true) {
                    iArr = this.f8828d;
                    if (i5 < iArr.length) {
                        int i6 = this.f8827c;
                        if (i6 != iArr[i5][0]) {
                            i5++;
                        } else if (i6 != 0) {
                            this.f8826b = i5;
                        }
                    }
                }
                int i7 = b4 & 255;
                if (i7 != 1) {
                    if (i7 == 0) {
                        int i8 = this.f8826b;
                        if (i8 < iArr.length && i8 != 255) {
                            l0.b0.l0(iArr[i8][1], 1);
                        }
                        this.f8826b = 255;
                    }
                } else if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.Q0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.Q0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.Q0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.Q0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i9 = i2 + 2;
                int i10 = bArr[i9] & 255;
                int i11 = i2 + 3;
                int i12 = bArr[i11] & 255;
                int i13 = i2 + 4;
                int i14 = bArr[i13] & 255;
                int i15 = i2 + 5;
                int i16 = bArr[i15] & 255;
                if (i10 == 0 && i12 == 0 && i14 == 0 && i16 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i10 || l0.c0.f13014h != i12 || l0.c0.f13015i != i14 || l0.c0.f13016j != i16) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i10;
                l0.c0.f13014h = i12;
                l0.c0.f13015i = i14;
                l0.c0.f13016j = i16;
                u0.d.D2(l0.c0.Q0(bArr[i9] & 255));
                u0.d.E2(l0.c0.Q0(bArr[i11] & 255));
                u0.d.F2(l0.c0.Q0(bArr[i13] & 255));
                u0.d.G2(l0.c0.Q0(bArr[i15] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 7) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
