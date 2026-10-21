package k0;

import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class lo extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7808c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7809d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 18}, new int[]{18, 13}, new int[]{21, 6}, new int[]{22, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7810e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f7811f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f7812g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f7813h = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(lo.this.f7813h);
            lo.this.f7811f = (byte) 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            lo loVar = lo.this;
            byte b2 = (byte) (loVar.f7811f - 1);
            loVar.f7811f = b2;
            if (b2 <= 0) {
                l0.b0.p0(loVar.f7813h);
                lo.this.f7811f = (byte) 5;
                return;
            }
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8637c) {
                    case 34:
                        z.k.s(227, 137, 2, 6, 0);
                        break;
                    case 35:
                        z.k.s(227, 137, 2, 0, 0);
                        break;
                    case 36:
                        z.k.s(227, 137, 2, 2, 0);
                        break;
                }
            }
            z.k.s(227, 144, 2, 33, 0);
            z.k.s(227, 144, 2, 129, 0);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f7812g, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2];
        if (b2 == -127) {
            qt.y0(99, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(101, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(100, (bArr[i2 + 7] & 255) | ((bArr[i2 + 8] << 16) & 65536) | ((bArr[i2 + 6] << 8) & 65280));
        }
        if (b2 == 40) {
            int i5 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i5 >> 7) & 1);
                qt.y0(2, (i5 >> 6) & 1);
            } else {
                qt.y0(1, (i5 >> 6) & 1);
                qt.y0(2, (i5 >> 7) & 1);
            }
            qt.y0(4, (i5 >> 5) & 1);
            qt.y0(3, (i5 >> 4) & 1);
            qt.y0(5, (i5 >> 3) & 1);
            qt.y0(0, (i5 >> 2) & 1);
            int i6 = bArr[i2 + 3] & 255;
            if (i6 == 255 || i6 == 254) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3((i6 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 48) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 5360);
            return;
        }
        if (b2 == 65) {
            int i7 = i2 + 2;
            byte b3 = bArr[i7];
            if (b3 == 2) {
                qt.y0(1031, ((bArr[i2 + 15] & 255) | ((bArr[i2 + 14] << 8) & 65280)) / 100);
                return;
            } else {
                if (b3 != 3) {
                    return;
                }
                qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i7] << 8) & 65280));
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 32:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f7808c = b4 & 255;
                int i8 = 0;
                while (true) {
                    iArr = this.f7809d;
                    if (i8 < iArr.length) {
                        int i9 = this.f7808c;
                        if (i9 != iArr[i8][0]) {
                            i8++;
                        } else if (i9 != 0) {
                            this.f7807b = i8;
                        }
                    }
                }
                int i10 = this.f7808c;
                if (i10 == 3) {
                    if ((b5 & 255) == 1) {
                        if (u0.b.D == 1) {
                            l0.b0.l0(67, 0);
                            l0.b0.l0(67, 1);
                        } else {
                            l0.b0.l0(35, 0);
                            l0.b0.l0(35, 1);
                        }
                    }
                } else if (i10 == 4) {
                    if ((b5 & 255) == 1) {
                        if (u0.b.D == 1) {
                            l0.b0.l0(68, 0);
                            l0.b0.l0(68, 1);
                        } else {
                            l0.b0.l0(34, 0);
                            l0.b0.l0(34, 1);
                        }
                    }
                } else if (i10 != 9 && i10 != 10) {
                    int i11 = b5 & 255;
                    if (i11 != 1) {
                        if (i11 == 0) {
                            int i12 = this.f7807b;
                            if (i12 < iArr.length) {
                                i4 = 255;
                                if (i12 != 255) {
                                    l0.b0.l0(iArr[i12][1], 1);
                                }
                            } else {
                                i4 = 255;
                            }
                            this.f7807b = i4;
                        }
                    } else if (i8 < iArr.length) {
                        l0.b0.l0(iArr[i8][1], 0);
                    }
                } else if ((b5 & 255) == 1) {
                    int i13 = h0.c.E;
                    if (i13 == 3 || i13 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    }
                }
                break;
            case 33:
                int i14 = bArr[i2 + 2] & 255;
                int i15 = bArr[i2 + 3] & 255;
                int i16 = bArr[i2 + 4] & 255;
                int i17 = i2 + 5;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 6;
                int i20 = bArr[i19] & 255;
                qt.y0(11, (i14 >> 6) & 1);
                qt.y0(12, (i14 >> 4) & 3);
                qt.y0(13, (i14 >> 3) & 1);
                qt.y0(14, (i14 >> 2) & 1);
                qt.y0(16, (i14 >> 1) & 1);
                qt.y0(65, (i14 >> 0) & 1);
                qt.y0(18, (i15 >> 0) & 1);
                qt.y0(19, (i15 >> 1) & 1);
                qt.y0(20, (i15 >> 2) & 1);
                qt.y0(21, i16 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i18 = bArr[i19] & 255;
                    i20 = bArr[i17] & 255;
                }
                int i21 = i18 & 255;
                if (i21 == 0) {
                    qt.y0(27, -1);
                } else if (i21 == 254) {
                    qt.y0(27, -2);
                } else if (i21 != 255) {
                    qt.y0(27, i21);
                } else {
                    qt.y0(27, -3);
                }
                int i22 = i20 & 255;
                if (i22 == 0) {
                    qt.y0(28, -1);
                } else if (i22 == 254) {
                    qt.y0(28, -2);
                } else if (i22 != 255) {
                    qt.y0(28, i22);
                } else {
                    qt.y0(28, -3);
                }
                qt.y0(55, (bArr[i2 + 7] >> 6) & 3);
                break;
            case 34:
                u0.d.R2(l0.c0.l1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.l1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.l1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.l1(bArr[i2 + 5] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f7812g);
        l0.b0.p0(this.f7813h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 103) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && qt.l0(iArr, 2)) {
            z.k.s(227, 149, 2, iArr[0], iArr[1]);
        }
    }
}
