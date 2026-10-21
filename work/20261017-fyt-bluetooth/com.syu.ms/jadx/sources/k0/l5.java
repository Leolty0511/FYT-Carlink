package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class l5 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7543c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7544d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{13, 4}, new int[]{14, 3}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        if (nt.a()) {
            u0.c.f17386m.a(l0.c0.f13020n, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 33) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f7543c = b3 & 255;
                int i7 = 0;
                while (true) {
                    iArr = this.f7544d;
                    if (i7 >= iArr.length) {
                        break;
                    }
                    int i8 = this.f7543c;
                    if (i8 == iArr[i7][0]) {
                        if (i8 == 0) {
                            break;
                        }
                        this.f7542b = i7;
                        break;
                    }
                    i7++;
                }
                int i9 = b4 & 255;
                if (i9 == 1) {
                    if (i7 < iArr.length) {
                        l0.b0.l0(iArr[i7][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i9 == 0) {
                        int i10 = this.f7542b;
                        if (i10 < iArr.length && i10 != 255) {
                            l0.b0.l0(iArr[i10][1], 1);
                        }
                        this.f7542b = 255;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 != 35) {
            return;
        }
        byte b5 = bArr[i2 + 2];
        qt.y0(10, (b5 >> 7) & 1);
        qt.y0(11, (b5 >> 6) & 1);
        qt.y0(12, (b5 >> 5) & 1);
        qt.y0(13, (b5 >> 3) & 1);
        qt.y0(65, b5 & 1);
        switch (bArr[i2 + 3] & 255) {
            case 1:
                i4 = 0;
                i5 = 0;
                i6 = 1;
                break;
            case 2:
                i4 = 0;
                i6 = 1;
                i5 = 1;
                break;
            case 3:
                i6 = 0;
                i4 = 0;
                i5 = 1;
                break;
            case 4:
                i6 = 0;
                i4 = 1;
                i5 = i4;
                break;
            case 5:
                i6 = 0;
                i5 = 0;
                i4 = 1;
                break;
            case 6:
                i5 = 0;
                i6 = 1;
                i4 = 1;
                break;
            case 7:
                i6 = 1;
                i4 = i6;
                i5 = i4;
                break;
            default:
                i6 = 0;
                i4 = i6;
                i5 = i4;
                break;
        }
        qt.y0(19, i6);
        qt.y0(18, i4);
        qt.y0(20, i5);
        qt.y0(21, bArr[i2 + 4] & 255);
        int i11 = i2 + 5;
        int i12 = bArr[i11] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i12 = bArr[i2 + 6] & 255;
        }
        if (i12 == 0) {
            qt.y0(27, -2);
        } else if (i12 != 31) {
            qt.y0(27, i12 + 17);
        } else {
            qt.y0(27, -3);
        }
        int i13 = bArr[i2 + 6] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i13 = bArr[i11] & 255;
        }
        if (i13 == 0) {
            qt.y0(28, -2);
        } else if (i13 != 31) {
            qt.y0(28, i13 + 17);
        } else {
            qt.y0(28, -3);
        }
        if (nt.a()) {
            int i14 = bArr[i2 + 7] & 255;
            u0.d.A3((i14 & 128) != 0 ? 1000 - ((i14 & 127) * 10) : ((i14 & 127) * 10) + 1000);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
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
}
