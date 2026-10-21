package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class m1 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7931c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7932d = {new int[]{0, -1}, new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f7933e = false;

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
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == -1) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 36) {
            byte b3 = bArr[i2 + 3];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 1) & 1);
                qt.y0(2, (b3 >> 0) & 1);
            } else {
                qt.y0(1, (b3 >> 0) & 1);
                qt.y0(2, (b3 >> 1) & 1);
            }
            qt.y0(3, (b3 >> 2) & 1);
            qt.y0(4, (b3 >> 3) & 1);
            qt.y0(5, (b3 >> 4) & 1);
            return;
        }
        if (b2 == 125) {
            int i7 = bArr[i2 + 2] & 255;
            if (i7 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i8 = i2 + 3;
                    l0.c0.b((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
                } else {
                    int i9 = i2 + 3;
                    l0.c0.a((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
                }
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
                return;
            }
            if (i7 == 3) {
                int i10 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i10);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i10}, null, null);
                return;
            } else {
                if (i7 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f7933e = true;
                return;
            }
        }
        if (b2 == 38) {
            if (this.f7933e) {
                return;
            }
            qt.l(bArr[i2 + 3], bArr[i2 + 2], false, 540);
            return;
        }
        if (b2 == 39) {
            if (nt.a()) {
                byte b4 = bArr[i2 + 2];
                u0.d.A3((b4 & 128) != 0 ? 1000 - ((b4 & 127) * 10) : ((b4 & 255) * 10) + 1000);
                return;
            }
            return;
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b5 = bArr[i2 + 2];
                    byte b6 = bArr[i2 + 3];
                    this.f7931c = b5 & 255;
                    int i11 = 0;
                    while (true) {
                        iArr = this.f7932d;
                        if (i11 < iArr.length) {
                            int i12 = this.f7931c;
                            if (i12 != iArr[i11][0]) {
                                i11++;
                            } else if (i12 != 0) {
                                this.f7930b = i11;
                            }
                        }
                    }
                    int i13 = b6 & 255;
                    if (i13 != 1) {
                        if (i13 == 0) {
                            int i14 = this.f7930b;
                            if (i14 < iArr.length && i14 != 255) {
                                l0.b0.l0(iArr[i14][1], 1);
                            }
                            this.f7930b = 255;
                        }
                    } else if (i11 < iArr.length) {
                        l0.b0.l0(iArr[i11][1], 0);
                    }
                }
                break;
            case 33:
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                qt.y0(10, (b7 >> 7) & 1);
                qt.y0(11, (b7 >> 6) & 1);
                qt.y0(12, (b7 >> 5) & 1);
                qt.y0(13, (b7 >> 4) & 1);
                qt.y0(55, (b7 >> 3) & 1);
                qt.y0(14, (b7 >> 2) & 1);
                qt.y0(65, (b7 >> 1) & 1);
                qt.y0(16, (b7 >> 0) & 1);
                int i15 = (b8 >> 4) & 255;
                if (i15 != 1) {
                    if (i15 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i15 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i15 != 4) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    }
                    i5 = i6;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(21, b8 & 7);
                int i16 = i2 + 4;
                byte b9 = bArr[i16];
                int i17 = i2 + 5;
                byte b10 = bArr[i17];
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b9 = bArr[i17];
                    b10 = bArr[i16];
                }
                int i18 = b9 & 255;
                if (i18 == 0) {
                    qt.y0(27, -2);
                } else if (i18 != 31) {
                    qt.y0(27, b9 + 35);
                } else {
                    qt.y0(27, -3);
                }
                int i19 = b10 & 255;
                if (i19 == 0) {
                    qt.y0(28, -2);
                } else if (i19 == 31) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, b10 + 35);
                }
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(a3(bArr[i2 + 2] & 255));
                    u0.d.S2(a3(bArr[i2 + 3] & 255));
                    u0.d.T2(a3(bArr[i2 + 4] & 255));
                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                }
                break;
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
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 8;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 0;
        }
        return 5;
    }
}
