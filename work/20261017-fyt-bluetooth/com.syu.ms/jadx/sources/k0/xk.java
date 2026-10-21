package k0;

import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class xk extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12173c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12174d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f12175e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12176f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f12177g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f12178h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, 0, 0, 0, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(xk.this.f12178h);
            xk.this.f12176f = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xk xkVar = xk.this;
            int i2 = xkVar.f12176f - 1;
            xkVar.f12176f = i2;
            if (i2 <= 0) {
                l0.b0.p0(xkVar.f12178h);
                xk.this.f12176f = 5;
            } else if (u0.b.f17306a0 == 1) {
                z.k.s(227, 3, 106, 5, 1, 98);
                int i3 = nt.f8633a;
                if (i3 == 3604924) {
                    z.k.s(227, 2, 36, 1, 50);
                } else {
                    if (i3 != 5702076) {
                        return;
                    }
                    z.k.s(227, 2, 36, 2, 50);
                }
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
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8322q = 0;
        mtVar.f8314i = 1;
        u0.c.f17386m.a(this.f12177g, 1);
        qt.z(this.f12175e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int i4;
        int i5;
        int i6;
        byte b3 = bArr[i2 + 1];
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 17) {
            byte b4 = bArr[i2 + 4];
            byte b5 = bArr[i2 + 5];
            this.f12173c = b4 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f12174d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f12173c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f12172b = i7;
                    break;
                }
                i7++;
            }
            int i9 = b5 & 255;
            if (i9 != 1) {
                if (i9 == 0) {
                    int i10 = this.f12172b;
                    if (i10 < iArr.length) {
                        b2 = 255;
                        if (i10 != 255) {
                            l0.b0.l0(iArr[i10][1], 1);
                        }
                    } else {
                        b2 = 255;
                    }
                    this.f12172b = b2;
                }
                qt.i(bArr[i2 + 9] & b2, bArr[i2 + 8] & b2, true, 540);
                return;
            }
            if (i7 < iArr.length) {
                l0.b0.l0(iArr[i7][1], 0);
            }
            b2 = 255;
            qt.i(bArr[i2 + 9] & b2, bArr[i2 + 8] & b2, true, 540);
            return;
        }
        if (b3 == 49) {
            int i11 = bArr[i2 + 2] & 255;
            int i12 = bArr[i2 + 3] & 255;
            int i13 = bArr[i2 + 4] & 255;
            int i14 = bArr[i2 + 5] & 255;
            int i15 = bArr[i2 + 6] & 255;
            int i16 = bArr[i2 + 7] & 255;
            qt.y0(10, (i11 >> 6) & 1);
            qt.y0(13, (i11 >> 3) & 1);
            qt.y0(62, (i11 >> 2) & 1);
            qt.y0(80, (i12 >> 7) & 1);
            qt.y0(11, (i12 >> 6) & 1);
            qt.y0(35, (i12 >> 5) & 1);
            qt.y0(12, (i12 >> 4) & 1);
            qt.y0(15, (i13 >> 4) & 1);
            qt.y0(16, (i13 >> 5) & 1);
            qt.y0(29, (i13 >> 0) & 3);
            qt.y0(30, (i13 >> 2) & 3);
            qt.y0(31, (i14 >> 4) & 3);
            qt.y0(32, (i14 >> 6) & 3);
            if (i15 != 3) {
                if (i15 == 5) {
                    i4 = 0;
                    i5 = 1;
                } else if (i15 == 6) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i15 == 11) {
                    i5 = 0;
                    i6 = 0;
                    i4 = 1;
                } else if (i15 != 12) {
                    i4 = 0;
                    i5 = 0;
                } else {
                    i5 = 0;
                    i4 = 1;
                    i6 = 1;
                }
                i6 = i5;
            } else {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            }
            qt.y0(18, i4);
            qt.y0(19, i5);
            qt.y0(20, i6);
            qt.y0(21, i16 & 255);
            int i17 = i2 + 8;
            int i18 = bArr[i17] & 255;
            int i19 = i2 + 9;
            int i20 = bArr[i19] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i18 = bArr[i19] & 255;
                i20 = bArr[i17] & 255;
            }
            if (i18 == 254) {
                qt.y0(27, -2);
            } else if (i18 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i18 * 5);
            }
            if (i20 == 254) {
                qt.y0(28, -2);
                return;
            } else if (i20 == 255) {
                qt.y0(28, -3);
                return;
            } else {
                qt.y0(28, i20 * 5);
                return;
            }
        }
        if (b3 == 65) {
            u0.d.R2(l0.c0.b1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.b1(bArr[i2 + 5] & 255));
            int i21 = i2 + 6;
            int i22 = bArr[i21] & 255;
            int i23 = i2 + 7;
            int i24 = bArr[i23] & 255;
            int i25 = i2 + 8;
            int i26 = bArr[i25] & 255;
            int i27 = i2 + 9;
            int i28 = bArr[i27] & 255;
            if (i22 == 255 && i24 == 255 && i26 == 255 && i28 == 255) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i22 || l0.c0.f13014h != i24 || l0.c0.f13015i != i26 || l0.c0.f13016j != i28) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i22;
            l0.c0.f13014h = i24;
            l0.c0.f13015i = i26;
            l0.c0.f13016j = i28;
            u0.d.D2(l0.c0.b1(bArr[i21] & 255));
            u0.d.E2(l0.c0.E0(bArr[i23] & 255));
            u0.d.F2(l0.c0.E0(bArr[i25] & 255));
            u0.d.G2(l0.c0.b1(bArr[i27] & 255));
            return;
        }
        if (b3 == 72) {
            qt.y0(108, bArr[i2 + 4] & 255);
            qt.y0(109, bArr[i2 + 5] & 255);
            qt.y0(110, bArr[i2 + 6] & 255);
            qt.y0(111, bArr[i2 + 7] & 255);
            qt.y0(112, bArr[i2 + 8] & 255);
            qt.y0(113, bArr[i2 + 9] & 255);
            qt.y0(114, bArr[i2 + 10] & 255);
            qt.y0(115, bArr[i2 + 11] & 255);
            return;
        }
        if (b3 != 97) {
            if (b3 != 98) {
                return;
            }
            int i29 = i2 + 2;
            qt.y0(129, (bArr[i29] >> 4) & 1);
            qt.y0(128, 15 & (bArr[i29] >> 0));
            qt.y0(130, (bArr[i29] >> 7) & 1);
            qt.y0(131, (bArr[i29] >> 5) & 3);
            int i30 = i2 + 3;
            qt.y0(132, (bArr[i30] >> 5) & 1);
            qt.y0(133, (bArr[i30] >> 4) & 1);
            qt.y0(134, (bArr[i30] >> 3) & 1);
            qt.y0(135, (bArr[i30] >> 2) & 1);
            qt.y0(136, (bArr[i30] >> 0) & 3);
            return;
        }
        int i31 = i2 + 2;
        qt.y0(98, (bArr[i31] >> 2) & 3);
        qt.y0(99, (bArr[i31] >> 1) & 1);
        qt.y0(100, (bArr[i31] >> 0) & 1);
        int i32 = i2 + 3;
        qt.y0(116, (bArr[i32] >> 4) & 1);
        qt.y0(101, (bArr[i32] >> 3) & 1);
        qt.y0(102, (bArr[i32] >> 2) & 1);
        qt.y0(103, (bArr[i32] >> 1) & 1);
        qt.y0(104, (bArr[i32] >> 0) & 1);
        qt.y0(105, (bArr[i2 + 4] >> 0) & 255);
        qt.y0(106, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
        qt.y0(107, (255 & bArr[i2 + 8]) | ((bArr[i2 + 7] << 8) & 65280));
        qt.y0(117, (bArr[i31] >> 7) & 1);
        qt.y0(118, (bArr[i31] >> 4) & 7);
        qt.y0(119, (bArr[i32] >> 7) & 1);
        qt.y0(120, (bArr[i32] >> 5) & 3);
        int i33 = i2 + 9;
        qt.y0(121, (bArr[i33] >> 7) & 1);
        qt.y0(122, (bArr[i33] >> 6) & 1);
        qt.y0(123, (bArr[i33] >> 4) & 3);
        qt.y0(124, (bArr[i33] >> 3) & 1);
        qt.y0(125, (bArr[i33] >> 2) & 1);
        qt.y0(126, (bArr[i33] >> 1) & 1);
        qt.y0(127, (bArr[i33] >> 0) & 1);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f12177g);
        l0.b0.p0(this.f12178h);
        qt.q0(this.f12175e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 137) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 3, 106, 5, 1, iArr[0]);
        } else if (i2 == 2) {
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 2, 154, iArr[0], iArr[1]);
        }
    }
}
