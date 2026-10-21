package k0;

import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class ir extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6580c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6581d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 12}, new int[]{6, 18}, new int[]{7, 2}, new int[]{8, 26}, new int[]{9, 0}, new int[]{10, 1}, new int[]{11, 6}, new int[]{12, 24}, new int[]{13, 54}, new int[]{14, 5}, new int[]{15, 63}, new int[]{16, 18}, new int[]{17, 2}, new int[]{18, 62}, new int[]{20, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f6582e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) time.year;
            z.k.s(227, 130, 6, b2 & 255, ((b2 >> 8) & 15) | ((((byte) (time.month + 1)) << 4) & 240), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, 0);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(128, 0);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(128, 0);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(2, 0);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(2, 0);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(16, 0);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(16, 0);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(1, 0);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(1, 0);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(8, 0);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(8, 0);
                }
                break;
            case 39:
                int i2 = iArr[1];
                if (i2 == -2) {
                    a3(1, 1);
                    break;
                } else if (i2 == -1) {
                    a3(2, 1);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(1, 3);
                } else {
                    a3(2, 3);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(1, 4);
                } else {
                    a3(2, 4);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
        qt.z(this.f6582e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4 = bArr[i2] & 255;
        if (i4 == 41) {
            qt.m(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, 32768, false, 8874);
        }
        if (i4 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (i4 == 65) {
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, bArr[i2 + 3] & 255);
            qt.y0(100, bArr[i2 + 4] & 255);
            qt.y0(101, bArr[i2 + 5] & 255);
            qt.y0(102, bArr[i2 + 6] & 255);
            qt.y0(103, bArr[i2 + 7] & 255);
            qt.y0(104, bArr[i2 + 8] & 255);
            qt.y0(105, bArr[i2 + 9] & 255);
            return;
        }
        if (i4 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i5 = i2 + 3;
            l0.c0.a((bArr[i5] >> 3) & 1, (bArr[i5] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i5] & 255}, null, null);
            return;
        }
        switch (i4) {
            case 32:
                byte b2 = bArr[i2 + 2];
                byte b3 = bArr[i2 + 3];
                this.f6580c = b2 & 255;
                int i6 = 0;
                while (true) {
                    iArr = this.f6581d;
                    if (i6 < iArr.length) {
                        int i7 = this.f6580c;
                        if (i7 != iArr[i6][0]) {
                            i6++;
                        } else if (i7 != 0) {
                            this.f6579b = i6;
                        }
                    }
                }
                if (this.f6580c != 5) {
                    int i8 = b3 & 255;
                    if (i8 != 1) {
                        if (i8 == 0) {
                            int i9 = this.f6579b;
                            if (i9 < iArr.length && i9 != 255) {
                                l0.b0.l0(iArr[i9][1], 1);
                            }
                            this.f6579b = 255;
                        }
                    } else if (i6 < iArr.length) {
                        l0.b0.l0(iArr[i6][1], 0);
                    }
                } else if ((b3 & 255) == 1) {
                    int i10 = h0.c.E;
                    if (i10 == 3 || i10 == 4 || i10 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                }
                break;
            case 33:
                int i11 = bArr[i2 + 2] & 255;
                int i12 = bArr[i2 + 3] & 255;
                int i13 = bArr[i2 + 4] & 255;
                int i14 = bArr[i2 + 5] & 255;
                qt.y0(10, (i11 >> 7) & 1);
                qt.y0(11, (i11 >> 6) & 1);
                qt.y0(12, (i11 >> 5) & 1);
                qt.y0(68, (i11 >> 4) & 1);
                qt.y0(65, (i11 >> 1) & 1);
                qt.y0(16, (i11 >> 0) & 1);
                qt.y0(18, (i12 >> 7) & 1);
                qt.y0(19, (i12 >> 6) & 1);
                qt.y0(20, (i12 >> 5) & 1);
                qt.y0(21, i12 & 15);
                qt.y0(27, i13);
                qt.y0(28, i14);
                break;
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2]));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3]));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4]));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5]));
                break;
            case 35:
                int i15 = i2 + 2;
                int i16 = bArr[i15] & 255;
                int i17 = i2 + 3;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 4;
                int i20 = bArr[i19] & 255;
                int i21 = i2 + 5;
                int i22 = 255 & bArr[i21];
                if (i16 == 0 && i18 == 0 && i20 == 0 && i22 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i16 || l0.c0.f13014h != i18 || l0.c0.f13015i != i20 || l0.c0.f13016j != i22) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i16;
                l0.c0.f13014h = i18;
                l0.c0.f13015i = i20;
                l0.c0.f13016j = i22;
                u0.d.D2(l0.c0.E0(bArr[i15]));
                u0.d.E2(l0.c0.E0(bArr[i17]));
                u0.d.F2(l0.c0.E0(bArr[i19]));
                u0.d.G2(l0.c0.E0(bArr[i21]));
                break;
            case 36:
                int i23 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i23 >> 6) & 1);
                    qt.y0(1, (i23 >> 7) & 1);
                } else {
                    qt.y0(2, (i23 >> 7) & 1);
                    qt.y0(1, (i23 >> 6) & 1);
                }
                qt.y0(4, (i23 >> 5) & 1);
                qt.y0(3, (i23 >> 4) & 1);
                qt.y0(0, (i23 >> 2) & 1);
                qt.y0(5, (i23 >> 3) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f6582e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 106) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 198, 3, iArr[0], iArr[1], iArr[2]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2 && iArr != null && iArr.length >= 2) {
            z.k.s(227, 199, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
        }
    }

    public final void a3(int i2, int i3) {
        if (i3 == 0) {
            z.k.s(227, -57, 6, i2, 0, 0, 0, 0, 0);
        } else if (i3 == 1) {
            z.k.s(227, -57, 6, 0, i2, 0, 0, 0, 0);
        } else if (i3 == 2) {
            z.k.s(227, -57, 6, 0, 0, i2, 0, 0, 0);
        } else if (i3 == 3) {
            z.k.s(227, -57, 6, 0, 0, 0, i2, 0, 0);
        } else if (i3 == 4) {
            z.k.s(227, -57, 6, 0, 0, 0, 0, i2, 0);
        } else if (i3 == 5) {
            z.k.s(227, -57, 6, 0, 0, 0, 0, 0, i2);
        }
        a.i.a0(50L);
        z.k.s(227, -57, 6, 0, 0, 0, 0, 0, 0);
    }
}
