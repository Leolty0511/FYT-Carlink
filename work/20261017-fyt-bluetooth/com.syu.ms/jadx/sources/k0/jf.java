package k0;

import android.drm.DrmManagerClient;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class jf extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6861c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6862d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f6863e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f6864f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f6865g = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jf.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jf.this.c3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 198, 7, 80, (byte) time.hour, (byte) time.minute, (byte) time.second, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay);
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
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f6865g);
        qt.z(this.f6863e);
        y0.g.f18094d.a(this.f6864f, 1);
        y0.g.f18095e.a(this.f6864f, 1);
        w0.e.f17815a.a(this.f6863e, 1);
        w0.e.f17819e.a(this.f6863e, 1);
        u0.c.f17393t.d(this.f6863e);
        u0.c.f17392s.d(this.f6863e);
        u0.c.f17374a.d(this.f6863e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7 = bArr[i2] & 255;
        if (i7 == 36) {
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
        if (i7 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_AMBIENT);
            return;
        }
        if (i7 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (i7 == 50) {
            int i8 = i2 + 2;
            qt.y0(99, (bArr[i8] >> 7) & 1);
            qt.y0(100, (bArr[i8] >> 6) & 1);
            qt.y0(101, (bArr[i8] >> 0) & 15);
            qt.y0(102, (bArr[i2 + 3] >> 4) & 15);
            int i9 = i2 + 4;
            qt.y0(103, (bArr[i9] >> 6) & 3);
            qt.y0(104, (bArr[i9] >> 5) & 1);
            qt.y0(105, (bArr[i9] >> 4) & 1);
            qt.y0(106, (bArr[i9] >> 2) & 3);
            qt.y0(107, (bArr[i9] >> 1) & 1);
            qt.y0(108, bArr[i2 + 5] & 255);
            qt.y0(109, bArr[i2 + 6] & 255);
            return;
        }
        if (i7 == 65) {
            byte b3 = bArr[i2 + 2];
            int i10 = b3 & 127;
            u0.d.A3((b3 & 128) != 0 ? 1000 - (i10 * 10) : (i10 * 10) + 1000);
            qt.y0(118, bArr[i2 + 3] & 255);
            qt.y0(119, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(120, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(121, (bArr[i2 + 10] & 255) | ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | (65280 & (bArr[i2 + 9] << 8)));
            return;
        }
        if (i7 == 210) {
            qt.y0(110, bArr[i2 + 2] & 255);
            qt.y0(111, bArr[i2 + 3] & 255);
            qt.y0(112, bArr[i2 + 4] & 255);
            qt.y0(113, 255 & bArr[i2 + 5]);
            int i11 = i2 + 6;
            qt.y0(114, (bArr[i11] >> 6) & 3);
            qt.y0(115, (bArr[i11] >> 4) & 3);
            qt.y0(116, (bArr[i11] >> 2) & 3);
            qt.y0(117, (bArr[i11] >> 0) & 3);
            return;
        }
        switch (i7) {
            case 32:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f6861c = b4 & 255;
                int i12 = 0;
                while (true) {
                    iArr = this.f6862d;
                    if (i12 < iArr.length) {
                        int i13 = this.f6861c;
                        if (i13 != iArr[i12][0]) {
                            i12++;
                        } else if (i13 != 0) {
                            this.f6860b = i12;
                        }
                    }
                }
                int i14 = this.f6861c;
                if (i14 == 3) {
                    if ((b5 & 255) == 1) {
                        int i15 = h0.c.E;
                        if (i15 == 4 || i15 == 5 || i15 == 3) {
                            h0.c.f2425b.e();
                        } else {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                        }
                    }
                } else if (i14 != 4) {
                    int i16 = b5 & 255;
                    if (i16 != 1) {
                        if (i16 == 0) {
                            int i17 = this.f6860b;
                            if (i17 < iArr.length && i17 != 255) {
                                l0.b0.l0(iArr[i17][1], 1);
                            }
                            this.f6860b = 255;
                        }
                    } else if (i12 < iArr.length) {
                        l0.b0.l0(iArr[i12][1], 0);
                    }
                } else if ((b5 & 255) == 1) {
                    if (h0.c.E != 4) {
                        l0.b0.l0(4, 0);
                        l0.b0.l0(4, 1);
                    } else {
                        h0.c.f2425b.n();
                    }
                }
                break;
            case 33:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                byte b8 = bArr[i2 + 4];
                int i18 = i2 + 5;
                byte b9 = bArr[i18];
                int i19 = i2 + 6;
                byte b10 = bArr[i19];
                qt.y0(11, (b6 >> 6) & 1);
                qt.y0(12, (b6 >> 5) & 1);
                qt.y0(13, (b6 >> 3) & 1);
                qt.y0(14, (b6 >> 2) & 1);
                qt.y0(16, (b6 >> 1) & 1);
                qt.y0(15, (b6 >> 0) & 1);
                int i20 = b7 & 255;
                if (i20 != 1) {
                    if (i20 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i20 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i20 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i20 != 5) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
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
                qt.y0(21, b8 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b9 = bArr[i19];
                    b10 = bArr[i18];
                }
                byte b11 = b10;
                int i21 = b9 & 255;
                if (i21 == 0) {
                    qt.y0(27, -2);
                } else if (i21 == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i21);
                }
                int i22 = b11 & 255;
                if (i22 == 0) {
                    qt.y0(28, -2);
                } else if (i22 == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i22);
                }
                int i23 = i2 + 7;
                qt.y0(29, (bArr[i23] >> 4) & 15);
                qt.y0(30, (bArr[i23] >> 0) & 15);
                break;
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f6863e);
        qt.q0(this.f6865g);
        y0.g.f18094d.d(this.f6864f);
        y0.g.f18095e.d(this.f6864f);
        w0.e.f17815a.d(this.f6863e);
        w0.e.f17819e.d(this.f6863e);
        u0.c.f17393t.d(this.f6863e);
        u0.c.f17392s.d(this.f6863e);
        u0.c.f17374a.d(this.f6863e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 122) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 198, 2, iArr[0], iArr[1]);
    }

    public void a3() {
        b3();
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 == 1) {
            int[] iArr = new int[6];
            iArr[0] = 194;
            iArr[1] = 4;
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17798j & 255;
            int i6 = w0.d.f17796h;
            if (i6 == 65536) {
                iArr[2] = 1;
            } else if (i6 == 65537) {
                iArr[2] = 2;
            } else if (i6 == 65538) {
                iArr[2] = 3;
            } else if (i6 == 0) {
                iArr[2] = 17;
            } else if (i6 == 1) {
                iArr[2] = 18;
            }
            iArr[3] = i4 & 255;
            iArr[4] = (i4 >> 8) & 255;
            iArr[5] = (i5 % 6) + 1;
            int[] iArr2 = new int[7];
            iArr2[0] = 227;
            while (i3 < 6) {
                int i7 = i3 + 1;
                iArr2[i7] = iArr[i3];
                i3 = i7;
            }
            z.k.s(iArr2);
            return;
        }
        if (i2 == 4) {
            int[] iArr3 = new int[8];
            iArr3[0] = 195;
            iArr3[1] = 6;
            if (n0.j4.f16464b == 8) {
                iArr3[3] = o0.e.C;
                iArr3[2] = o0.e.B;
            } else {
                iArr3[2] = o0.e.C;
                iArr3[3] = o0.e.B;
            }
            iArr3[4] = 0;
            iArr3[5] = 0;
            int i8 = o0.e.f16794r;
            iArr3[6] = i8 / 60;
            iArr3[7] = i8 % 60;
            int[] iArr4 = new int[9];
            iArr4[0] = 227;
            while (i3 < 8) {
                int i9 = i3 + 1;
                iArr4[i9] = iArr3[i3];
                i3 = i9;
            }
            z.k.s(iArr4);
            return;
        }
        if (i2 != 6) {
            if (i2 != 8 && i2 != 9) {
                int[] iArr5 = {195, 6, 0, 0, 0, 0, 0, 0};
                int[] iArr6 = new int[9];
                iArr6[0] = 227;
                while (i3 < 8) {
                    int i10 = i3 + 1;
                    iArr6[i10] = iArr5[i3];
                    i3 = i10;
                }
                z.k.s(iArr6);
                return;
            }
            int i11 = u0.b.s3;
            int i12 = u0.b.r3;
            int i13 = u0.b.t3;
            int[] iArr7 = {195, 6, i11 & 255, (i11 >> 8) & 255, i12 & 255, (i12 >> 8) & 255, i13 / 60, i13 % 60};
            int[] iArr8 = new int[9];
            iArr8[0] = 227;
            while (i3 < 8) {
                int i14 = i3 + 1;
                iArr8[i14] = iArr7[i3];
                i3 = i14;
            }
            z.k.s(iArr8);
        }
    }

    public void b3() {
        int i2;
        int i3 = 8;
        int i4 = 48;
        switch (u0.b.D) {
            case 0:
                i3 = 0;
                break;
            case 1:
                i3 = 1;
                i4 = 1;
                break;
            case 2:
                i4 = 64;
                i3 = 5;
                break;
            case 3:
                i3 = 11;
                break;
            case 4:
                int i5 = o0.e.H;
                if (i5 == 1) {
                    i2 = 2;
                } else if (i5 == 2) {
                    i2 = 9;
                } else {
                    i2 = i5 == 3 ? 8 : 0;
                }
                i4 = n0.j4.f16464b == 8 ? 33 : 16;
                i3 = i2;
                break;
            case 5:
                i3 = 7;
                break;
            case 6:
                i3 = 3;
                break;
            case 7:
                i3 = 6;
                i4 = 18;
                break;
            case 8:
            case 10:
                i4 = 19;
                break;
            case 9:
            default:
                i3 = 12;
                break;
        }
        z.k.s(227, 192, 2, i3, i4);
    }

    public void c3() {
        int i2 = 0;
        int[] iArr = {196, 1, y0.f.C0};
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = iArr[2] | 128;
        }
        if (y0.f.C0 > 30) {
            iArr[2] = 30;
        }
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i2 < 3) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }
}
