package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class e6 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4689c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4690d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{17, 66}, new int[]{18, 65}, new int[]{19, 26}, new int[]{20, 18}, new int[]{21, 34}, new int[]{22, 35}, new int[]{32, 0}, new int[]{33, 68}, new int[]{34, 67}, new int[]{37, 21}, new int[]{38, 55}, new int[]{39, 12}, new int[]{40, 2}, new int[]{43, 64}, new int[]{45, 38}, new int[]{46, 11}, new int[]{49, 40}, new int[]{50, 41}, new int[]{51, 42}, new int[]{52, 43}, new int[]{53, 44}, new int[]{54, 45}, new int[]{64, 26}, new int[]{65, 18}, new int[]{66, 54}, new int[]{67, 7}, new int[]{68, 8}, new int[]{69, 6}, new int[]{70, 1}, new int[]{71, 29}, new int[]{72, 5}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 1) {
            if (b2 != 2) {
                if (b2 != 127) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            qt.y0(10, (b3 >> 7) & 1);
            qt.y0(11, (b3 >> 6) & 1);
            qt.y0(12, (b3 >> 5) & 1);
            qt.y0(13, (b3 >> 3) & 1);
            qt.y0(65, (b3 >> 1) & 1);
            qt.y0(16, (b3 >> 0) & 1);
            qt.y0(18, (b4 >> 7) & 1);
            qt.y0(19, (b4 >> 6) & 1);
            qt.y0(20, (b4 >> 5) & 1);
            qt.y0(21, b4 & 31);
            int i4 = i2 + 4;
            byte b5 = bArr[i4];
            int i5 = i2 + 5;
            byte b6 = bArr[i5];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b5 = bArr[i5];
                b6 = bArr[i4];
            }
            int i6 = b5 & 255;
            if (i6 == 0) {
                qt.y0(27, -2);
            } else if (i6 != 255) {
                qt.y0(27, i6);
            } else {
                qt.y0(27, -3);
            }
            int i7 = b6 & 255;
            if (i7 == 0) {
                qt.y0(28, -2);
            } else if (i7 != 255) {
                qt.y0(28, i7);
            } else {
                qt.y0(28, -3);
            }
            int i8 = bArr[i2 + 7] & 255;
            if (i8 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3((i8 & 128) != 0 ? 1000 - ((i8 & 127) * 10) : (i8 * 10) + 1000);
                return;
            }
        }
        if (nt.a()) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            this.f4689c = b7 & 255;
            int i9 = 0;
            while (true) {
                iArr = this.f4690d;
                if (i9 >= iArr.length) {
                    break;
                }
                int i10 = this.f4689c;
                if (i10 == iArr[i9][0]) {
                    if (i10 == 0) {
                        break;
                    }
                    this.f4688b = i9;
                    break;
                }
                i9++;
            }
            switch (this.f4689c) {
                case 240:
                    for (int i11 = 0; i11 < (b8 & 255); i11++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                case i.a.Theme_actionModeShareDrawable /* 241 */:
                    for (int i12 = 0; i12 < (b8 & 255); i12++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                case i.a.Theme_actionModeFindDrawable /* 242 */:
                default:
                    int i13 = b8 & 255;
                    if (i13 == 1) {
                        if (i9 < iArr.length) {
                            l0.b0.l0(iArr[i9][1], 0);
                        }
                    } else if (i13 == 0) {
                        int i14 = this.f4688b;
                        if (i14 < iArr.length && i14 != 255) {
                            l0.b0.l0(iArr[i14][1], 1);
                        }
                        this.f4688b = 255;
                    }
                    break;
                case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                    for (int i15 = 0; i15 < (b8 & 255); i15++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                case i.a.Theme_actionModePopupWindowStyle /* 244 */:
                    for (int i16 = 0; i16 < (b8 & 255); i16++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
            }
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
        y.e.a(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
