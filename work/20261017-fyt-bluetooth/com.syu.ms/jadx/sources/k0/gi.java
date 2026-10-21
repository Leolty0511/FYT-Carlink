package k0;

import android.bluetooth.BluetoothHealth;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class gi extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5571c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5572d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, -1}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{50, 1}, new int[]{128, 21}, new int[]{129, 0}, new int[]{130, 5}, new int[]{131, 1}, new int[]{132, 64}, new int[]{133, 21}, new int[]{134, 54}, new int[]{135, 3}, new int[]{136, 16}, new int[]{137, 4}, new int[]{i.a.Theme_actionModeShareDrawable, 8}, new int[]{i.a.Theme_actionModeFindDrawable, 7}, new int[]{i.a.Theme_actionModeWebSearchDrawable, 30}, new int[]{i.a.Theme_actionModePopupWindowStyle, 31}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5573e = false;

    public static int a3(int i2) {
        return (i2 * 2) / 3;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8307b = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2];
        if (b2 == 48) {
            if (this.f5573e) {
                return;
            }
            qt.m(bArr[i2 + 3], bArr[i2 + 2], 7818, false, BluetoothHealth.HEALTH_OPERATION_SUCCESS);
        }
        if (b2 == 125) {
            int i8 = bArr[i2 + 2] & 255;
            if (i8 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i9 = i2 + 3;
                    l0.c0.b((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
                    return;
                } else {
                    int i10 = i2 + 3;
                    l0.c0.a((bArr[i10] >> 3) & 1, (bArr[i10] >> 4) & 1, 0);
                    return;
                }
            }
            if (i8 == 3) {
                int i11 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i11);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i11}, null, null);
                return;
            } else {
                if (i8 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f5573e = true;
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 33:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f5571c = b3 & 255;
                int i12 = 0;
                while (true) {
                    iArr = this.f5572d;
                    if (i12 < iArr.length) {
                        int i13 = this.f5571c;
                        if (i13 != iArr[i12][0]) {
                            i12++;
                        } else if (i13 != 0) {
                            this.f5570b = i12;
                        }
                    }
                }
                int i14 = this.f5571c;
                if (i14 == 5) {
                    if ((b4 & 255) == 1) {
                        int i15 = h0.c.E;
                        if (i15 != 3) {
                            if (i15 == 4) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            } else if (i15 != 5) {
                                l0.b0.l0(13, 0);
                                l0.b0.l0(13, 1);
                            }
                        }
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    }
                    break;
                } else {
                    switch (i14) {
                        case i.a.Theme_actionModeShareDrawable /* 241 */:
                            for (int i16 = 0; i16 < (b4 & 255); i16++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        case i.a.Theme_actionModeFindDrawable /* 242 */:
                            for (int i17 = 0; i17 < (b4 & 255); i17++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                            for (int i18 = 0; i18 < (b4 & 255); i18++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        case i.a.Theme_actionModePopupWindowStyle /* 244 */:
                            for (int i19 = 0; i19 < (b4 & 255); i19++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        default:
                            int i20 = b4 & 255;
                            if (i20 == 1) {
                                if (i12 < iArr.length) {
                                    l0.b0.l0(iArr[i12][1], 0);
                                }
                            } else if (i20 == 0) {
                                int i21 = this.f5570b;
                                if (i21 < iArr.length && i21 != 255) {
                                    l0.b0.l0(iArr[i21][1], 1);
                                }
                                this.f5570b = 255;
                            }
                            break;
                    }
                }
                break;
            case 34:
                int i22 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i22 >> 7) & 1);
                    qt.y0(1, (i22 >> 6) & 1);
                } else {
                    qt.y0(2, (i22 >> 6) & 1);
                    qt.y0(1, (i22 >> 7) & 1);
                }
                qt.y0(4, (i22 >> 4) & 1);
                qt.y0(3, (i22 >> 5) & 1);
                qt.y0(5, (i22 >> 3) & 1);
                break;
            case 35:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                byte b7 = bArr[i2 + 4];
                byte b8 = bArr[i2 + 5];
                qt.y0(10, (b5 >> 7) & 1);
                qt.y0(11, (b5 >> 6) & 1);
                qt.y0(12, (b5 >> 5) & 1);
                switch (b6) {
                    case 1:
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 1;
                        break;
                    case 2:
                        i4 = 0;
                        i6 = 0;
                        i7 = 1;
                        i5 = 1;
                        break;
                    case 3:
                        i4 = 0;
                        i7 = 0;
                        i6 = 0;
                        i5 = 1;
                        break;
                    case 4:
                        i7 = 0;
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                        break;
                    case 5:
                        i7 = 0;
                        i5 = 0;
                        i6 = 0;
                        i4 = 1;
                        break;
                    case 6:
                        i4 = 0;
                        i7 = 0;
                        i5 = 0;
                        i6 = 1;
                        break;
                    default:
                        i4 = 0;
                        i7 = 0;
                        i5 = 0;
                        i6 = 0;
                        break;
                }
                qt.y0(18, i4);
                qt.y0(19, i7);
                qt.y0(20, i5);
                qt.y0(65, i4);
                qt.y0(16, i6);
                qt.y0(21, b7 & 255);
                qt.y0(27, b8 & 255);
                break;
            case 36:
                int i23 = i2 + 2;
                u0.d.D2(a3((bArr[i23] >> 4) & 15));
                u0.d.G2(a3((bArr[i23] >> 0) & 15));
                int i24 = i2 + 3;
                u0.d.R2(a3((bArr[i24] >> 4) & 15));
                int i25 = i2 + 4;
                u0.d.S2(a3((bArr[i25] >> 4) & 15));
                u0.d.T2(a3((bArr[i25] >> 4) & 15));
                u0.d.U2(a3((bArr[i24] >> 0) & 15));
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
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 1005) {
            return;
        }
        z.k.s(227, 132, 1, iArr[0] - 1);
    }
}
