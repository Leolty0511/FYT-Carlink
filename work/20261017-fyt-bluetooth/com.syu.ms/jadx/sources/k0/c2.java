package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class c2 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3888c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3889d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{23, 9}, new int[]{25, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3890e = false;

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
        if (nt.f8637c == 1) {
            mtVar.f8314i = 1;
        } else {
            mtVar.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 96) {
            if (this.f3890e) {
                return;
            }
            qt.l(bArr[i2 + 2], bArr[i2 + 3], true, 5400);
        }
        if (b2 == 125) {
            int i4 = bArr[i2 + 2] & 255;
            if (i4 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i5 = i2 + 3;
                    l0.c0.b((bArr[i5] >> 3) & 1, (bArr[i5] >> 4) & 1, 0);
                } else {
                    int i6 = i2 + 3;
                    l0.c0.a((bArr[i6] >> 3) & 1, (bArr[i6] >> 4) & 1, 0);
                }
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
                return;
            }
            if (i4 == 3) {
                int i7 = (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255)) / 100;
                qt.y0(1031, i7);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i7}, null, null);
                return;
            } else {
                if (i4 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f3890e = true;
                return;
            }
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b3 = bArr[i2 + 2];
                    byte b4 = bArr[i2 + 3];
                    this.f3888c = b3 & 255;
                    int i8 = 0;
                    while (true) {
                        iArr = this.f3889d;
                        if (i8 < iArr.length) {
                            int i9 = this.f3888c;
                            if (i9 != iArr[i8][0]) {
                                i8++;
                            } else if (i9 != 0) {
                                this.f3887b = i8;
                            }
                        }
                    }
                    if ((b4 & 255) == 0) {
                        int i10 = this.f3887b;
                        if (i10 < iArr.length && i10 != 255) {
                            l0.b0.l0(iArr[i10][1], 1);
                        }
                        this.f3887b = 255;
                    } else if (i8 < iArr.length) {
                        l0.b0.l0(iArr[i8][1], 0);
                    }
                }
                break;
            case 33:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                byte b7 = bArr[i2 + 6];
                byte b8 = bArr[i2 + 7];
                qt.y0(10, (b5 >> 7) & 1);
                qt.y0(11, (b5 >> 6) & 1);
                qt.y0(12, (b5 >> 5) & 1);
                qt.y0(13, (b5 >> 3) & 1);
                qt.y0(18, (b6 >> 7) & 1);
                qt.y0(19, (b6 >> 6) & 1);
                qt.y0(20, (b6 >> 5) & 1);
                qt.y0(21, b6 & 7);
                int i11 = i2 + 4;
                byte b9 = bArr[i11];
                int i12 = i2 + 5;
                byte b10 = bArr[i12];
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b9 = bArr[i12];
                    b10 = bArr[i11];
                }
                int i13 = b9 & 255;
                if (i13 == 0) {
                    qt.y0(27, -2);
                } else if (i13 == 28) {
                    qt.y0(27, -3);
                } else if (i13 >= 1 && i13 <= 27) {
                    qt.y0(27, ((i13 - 1) * 5) + 185);
                }
                int i14 = b10 & 255;
                if (i14 == 0) {
                    qt.y0(28, -2);
                } else if (i14 == 28) {
                    qt.y0(28, -3);
                } else if (i14 >= 1 && i14 <= 27) {
                    qt.y0(28, ((i14 - 1) * 5) + 185);
                }
                qt.y0(65, (b7 >> 7) & 1);
                qt.y0(16, (b7 >> 6) & 1);
                qt.y0(52, (b7 >> 4) & 1);
                qt.y0(30, (b8 >> 7) & 1);
                qt.y0(29, (b8 >> 6) & 1);
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(a3(bArr[i2 + 2] & 255));
                    u0.d.S2(a3(bArr[i2 + 3] & 255));
                    u0.d.T2(a3(bArr[i2 + 4] & 255));
                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    u0.d.D2(a3(bArr[i2 + 2] & 255));
                    u0.d.E2(a3(bArr[i2 + 3] & 255));
                    u0.d.F2(a3(bArr[i2 + 4] & 255));
                    u0.d.G2(a3(bArr[i2 + 5] & 255));
                }
                break;
            case 36:
                byte b11 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b11 >> 7) & 1);
                    qt.y0(2, (b11 >> 6) & 1);
                } else {
                    qt.y0(1, (b11 >> 6) & 1);
                    qt.y0(2, (b11 >> 7) & 1);
                }
                qt.y0(3, (b11 >> 4) & 1);
                qt.y0(4, (b11 >> 5) & 1);
                qt.y0(5, (b11 >> 3) & 1);
                qt.y0(0, (b11 >> 0) & 1);
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
        if (i2 == 1) {
            b3(iArr[0], iArr[1]);
        } else if (i2 == 2 && T2(iArr, 1)) {
            z.k.s(227, -122, 2, 7, (byte) iArr[0]);
        }
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 != 1) {
            return i2 != 4 ? 15 : 0;
        }
        return 7;
    }

    public final void b3(int i2, int i3) {
        z.k.s(227, -125, 2, (byte) i2, (byte) i3);
    }
}
