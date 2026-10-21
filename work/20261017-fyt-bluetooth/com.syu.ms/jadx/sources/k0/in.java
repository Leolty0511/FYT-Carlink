package k0;

import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class in extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6532c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6533d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f6534e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f6535f = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i2 = time.year;
            z.k.s(227, 200, 6, i2 & 255, ((i2 >> 8) & 15) | ((((byte) (time.month + 1)) << 4) & 240), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.I();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f6534e);
        qt.z(this.f6535f);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8312g = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 41) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, 5400);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i4 = i2 + 3;
            l0.c0.a((bArr[i4] >> 3) & 1, (bArr[i4] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i4] & 255}, null, null);
            return;
        }
        if (b2 == 64) {
            int i5 = i2 + 2;
            qt.y0(98, (bArr[i5] >> 7) & 1);
            qt.y0(99, (bArr[i5] >> 6) & 1);
            qt.y0(100, (bArr[i5] >> 5) & 1);
            qt.y0(101, (bArr[i5] >> 3) & 3);
            qt.y0(102, (bArr[i5] >> 0) & 7);
            qt.y0(103, bArr[i2 + 3] & 255);
            int i6 = i2 + 4;
            qt.y0(104, (bArr[i6] >> 7) & 1);
            qt.y0(105, (bArr[i6] >> 6) & 1);
            qt.y0(106, (bArr[i6] >> 5) & 1);
            qt.y0(107, (bArr[i6] >> 0) & 3);
            return;
        }
        if (b2 == 65) {
            qt.y0(108, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f6532c = b3 & 255;
                int i7 = 0;
                while (true) {
                    iArr = this.f6533d;
                    if (i7 < iArr.length) {
                        int i8 = this.f6532c;
                        if (i8 != iArr[i7][0]) {
                            i7++;
                        } else if (i8 != 0) {
                            this.f6531b = i7;
                        }
                    }
                }
                int i9 = b4 & 255;
                if (i9 != 1) {
                    if (i9 == 0) {
                        int i10 = this.f6531b;
                        if (i10 < iArr.length && i10 != 255) {
                            l0.b0.l0(iArr[i10][1], 1);
                        }
                        this.f6531b = 255;
                    }
                } else if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                }
                break;
            case 33:
                byte b5 = bArr[i2 + 2];
                qt.y0(10, (b5 >> 7) & 1);
                qt.y0(11, (b5 >> 6) & 1);
                qt.y0(12, (b5 >> 5) & 1);
                qt.y0(53, (b5 >> 4) & 1);
                qt.y0(13, (b5 >> 3) & 1);
                qt.y0(14, (b5 >> 2) & 1);
                qt.y0(15, (b5 >> 1) & 1);
                qt.y0(16, (b5 >> 0) & 1);
                byte b6 = bArr[i2 + 3];
                qt.y0(18, (b6 >> 7) & 1);
                qt.y0(19, (b6 >> 6) & 1);
                qt.y0(20, (b6 >> 5) & 1);
                qt.y0(21, (b6 >> 0) & 15);
                int i11 = i2 + 5;
                int i12 = bArr[i11] & 255;
                int i13 = i2 + 6;
                int i14 = bArr[i13] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i12 = bArr[i13] & 255;
                    i14 = bArr[i11] & 255;
                }
                if (i12 == 0) {
                    qt.y0(27, -2);
                } else if (i12 == 31) {
                    qt.y0(27, -3);
                } else if (i12 < 1 || i12 > 30) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i12);
                }
                if (i14 == 0) {
                    qt.y0(28, -2);
                } else if (i14 == 31) {
                    qt.y0(28, -3);
                } else if (i14 < 1 || i14 > 30) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, i14);
                }
                int i15 = i2 + 7;
                qt.y0(29, (bArr[i15] >> 4) & 7);
                qt.y0(30, (bArr[i15] >> 0) & 7);
                break;
            case 34:
                u0.d.R2(l0.c0.e1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.e1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.e1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.e1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i16 = i2 + 2;
                int i17 = bArr[i16] & 255;
                int i18 = i2 + 3;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 4;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 5;
                int i23 = bArr[i22] & 255;
                if (i17 == 0 && i19 == 0 && i21 == 0 && i23 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i17 || l0.c0.f13014h != i19 || l0.c0.f13015i != i21 || l0.c0.f13016j != i23) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i17;
                l0.c0.f13014h = i19;
                l0.c0.f13015i = i21;
                l0.c0.f13016j = i23;
                u0.d.D2(l0.c0.e1(bArr[i16] & 255));
                u0.d.E2(l0.c0.e1(bArr[i18] & 255));
                u0.d.F2(l0.c0.e1(bArr[i20] & 255));
                u0.d.G2(l0.c0.e1(bArr[i22] & 255));
                break;
            case 36:
                byte b7 = bArr[i2 + 2];
                if ((b7 & 1) == 1) {
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b7 >> 7) & 1);
                        qt.y0(2, (b7 >> 6) & 1);
                    } else {
                        qt.y0(1, (b7 >> 6) & 1);
                        qt.y0(2, (b7 >> 7) & 1);
                    }
                    qt.y0(4, (b7 >> 5) & 1);
                    qt.y0(3, (b7 >> 4) & 1);
                    qt.y0(5, (b7 >> 3) & 1);
                    qt.y0(0, (b7 >> 2) & 1);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f6534e);
        qt.q0(this.f6535f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 109) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 192, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 138, 2, iArr[0], iArr[1]);
        }
    }
}
