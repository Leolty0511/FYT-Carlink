package k0;

import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class c0 extends lt {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f3866m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f3867n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f3868o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f3869p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3871c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3872d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3873e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f3874f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{11, 2}, new int[]{15, 29}, new int[]{17, 32}, new int[]{18, 33}, new int[]{19, 1}, new int[]{20, 63}, new int[]{22, 5}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 54}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{145, 12}, new int[]{150, 21}, new int[]{151, 3}, new int[]{152, 4}, new int[]{153, 27}, new int[]{154, 28}, new int[]{164, 29}, new int[]{165, 6}, new int[]{167, 55}, new int[]{168, 39}, new int[]{169, 1}, new int[]{170, 24}, new int[]{171, 18}, new int[]{172, 26}, new int[]{173, 5}, new int[]{174, 5}, new int[]{175, 18}, new int[]{177, 54}, new int[]{178, 0}, new int[]{179, 1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f3875g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{11, 2}, new int[]{15, 29}, new int[]{17, 32}, new int[]{18, 33}, new int[]{19, 1}, new int[]{20, 63}, new int[]{22, 5}, new int[]{135, 21}, new int[]{136, 2}, new int[]{137, 54}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{145, 12}, new int[]{150, 5}, new int[]{151, 3}, new int[]{152, 4}, new int[]{153, 27}, new int[]{154, 28}, new int[]{164, 29}, new int[]{165, 6}, new int[]{167, 55}, new int[]{168, 39}, new int[]{169, 1}, new int[]{170, -1}, new int[]{171, -1}, new int[]{172, -1}, new int[]{173, -1}, new int[]{174, -1}, new int[]{175, -1}, new int[]{177, -1}, new int[]{178, -1}, new int[]{179, -1}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f3876h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{11, 2}, new int[]{15, 29}, new int[]{17, 32}, new int[]{18, 33}, new int[]{19, 1}, new int[]{20, 63}, new int[]{22, 5}, new int[]{135, 21}, new int[]{136, 12}, new int[]{137, 71}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{145, 12}, new int[]{150, 5}, new int[]{151, 3}, new int[]{152, 4}, new int[]{153, 27}, new int[]{154, 28}, new int[]{164, 29}, new int[]{165, 6}, new int[]{167, 2}, new int[]{168, 1}, new int[]{169, 72}, new int[]{170, -1}, new int[]{171, -1}, new int[]{172, -1}, new int[]{173, -1}, new int[]{174, -1}, new int[]{175, -1}, new int[]{177, -1}, new int[]{178, -1}, new int[]{179, -1}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f3877i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f3878j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3879k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f3880l = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0 c0Var = c0.this;
            byte b2 = (byte) (c0Var.f3877i + 1);
            c0Var.f3877i = b2;
            if (b2 > 5) {
                l0.b0.o0(c0Var.f3878j);
                c0.this.f3877i = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.this.d3(u0.b.K3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, DateFormat.is24HourFormat(App.c()) ? 1 : 0, 0, 0, 0, 0);
        }
    }

    public static void a3(int i2, int i3) {
        int i4 = f3866m;
        if (i2 == i4 && i3 == f3868o) {
            return;
        }
        if (i2 == i4) {
            int i5 = f3868o;
            if (i3 != i5) {
                if (i5 >= 128 && i5 <= 255 && i3 >= 0 && i3 < 128) {
                    f3868o = i3;
                    if (u0.b.D == 1) {
                        u0.d.x1();
                        return;
                    } else {
                        u0.d.B1();
                        return;
                    }
                }
                if (i3 >= 128 && i3 <= 255 && i5 >= 0 && i5 < 128) {
                    f3868o = i3;
                    if (u0.b.D == 1) {
                        u0.d.L1();
                        return;
                    } else {
                        u0.d.I1();
                        return;
                    }
                }
            }
        } else if (i4 >= 128 && i4 <= 255 && i2 >= 0 && i2 < 128) {
            f3866m = i2;
            u0.d.O1();
            return;
        } else if (i2 >= 128 && i2 <= 255 && i4 >= 0 && i4 < 128) {
            f3866m = i2;
            u0.d.M1();
            return;
        }
        if (i2 > i4) {
            f3866m = i2;
            u0.d.O1();
        }
        if (i2 < f3866m) {
            f3866m = i2;
            u0.d.M1();
        }
        if (i3 > f3868o) {
            f3868o = i3;
            if (u0.b.D == 1) {
                u0.d.x1();
            } else {
                u0.d.B1();
            }
        }
        if (i3 < f3868o) {
            f3868o = i3;
            if (u0.b.D == 1) {
                u0.d.L1();
            } else {
                u0.d.I1();
            }
        }
    }

    public static void b3(int i2) {
        int i3 = f3869p;
        if (i2 != i3) {
            if (i3 >= 128 && i3 <= 255 && i2 >= 0 && i2 < 128) {
                f3869p = i2;
                u0.d.I1();
                return;
            }
            if (i2 >= 128 && i2 <= 255 && i3 >= 0 && i3 < 128) {
                f3869p = i2;
                u0.d.B1();
                return;
            }
            if (i2 > i3) {
                f3869p = i2;
                u0.d.I1();
            }
            if (i2 < f3869p) {
                f3869p = i2;
                u0.d.B1();
            }
        }
    }

    public static void c3(int i2) {
        int i3 = f3867n;
        if (i2 != i3) {
            if (i2 != i3) {
                if (i3 >= 128 && i3 <= 255 && i2 >= 0 && i2 < 128) {
                    f3867n = i2;
                    if (u0.b.D == 1) {
                        u0.d.x1();
                        return;
                    } else {
                        u0.d.B1();
                        return;
                    }
                }
                if (i2 >= 128 && i2 <= 255 && i3 >= 0 && i3 < 128) {
                    f3867n = i2;
                    if (u0.b.D == 1) {
                        u0.d.L1();
                        return;
                    } else {
                        u0.d.I1();
                        return;
                    }
                }
            }
            if (i2 > i3) {
                f3867n = i2;
                if (u0.b.D == 1) {
                    u0.d.x1();
                } else {
                    u0.d.B1();
                }
            }
            if (i2 < f3867n) {
                f3867n = i2;
                if (u0.b.D == 1) {
                    u0.d.L1();
                } else {
                    u0.d.I1();
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
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        qt.z(this.f3880l);
        u0.c.f17397x.a(this.f3879k, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        byte b2;
        int[][] iArr;
        byte b3 = bArr[i2 + 1];
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 49) {
            if (nt.a()) {
                l0.h0.u(bArr[i2 + 13] & 255);
                return;
            }
            return;
        }
        if (b3 == 65) {
            if (nt.a()) {
                u0.d.R2(l0.h0.o(bArr[i2 + 2] & 255));
                u0.d.S2(l0.h0.o(bArr[i2 + 3] & 255));
                u0.d.T2(l0.h0.o(bArr[i2 + 4] & 255));
                u0.d.U2(l0.h0.o(bArr[i2 + 5] & 255));
                u0.d.D2(l0.h0.o(bArr[i2 + 6] & 255));
                u0.d.E2(l0.h0.o(bArr[i2 + 7] & 255));
                u0.d.F2(l0.h0.o(bArr[i2 + 8] & 255));
                u0.d.G2(l0.h0.o(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b3 != 17) {
            if (b3 == 18) {
                byte b4 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b4 >> 6) & 1);
                    qt.y0(2, (b4 >> 7) & 1);
                } else {
                    qt.y0(1, (b4 >> 7) & 1);
                    qt.y0(2, (b4 >> 6) & 1);
                }
                qt.y0(3, (b4 >> 5) & 1);
                qt.y0(4, (b4 >> 4) & 1);
                qt.y0(5, (b4 >> 3) & 1);
                return;
            }
            if (b3 != 33) {
                if (b3 == 34 && nt.a()) {
                    c3(bArr[i2 + 2] & 255);
                    a3(bArr[i2 + 3] & 255, bArr[i2 + 5] & 255);
                    b3(bArr[i2 + 6] & 255);
                    return;
                }
                return;
            }
            if (nt.a()) {
                this.f3872d = (bArr[i2 + 2] & 255) | 128;
                byte b5 = bArr[i2 + 3];
                int i5 = 0;
                while (true) {
                    iArr = this.f3874f;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f3872d;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f3873e = i5;
                        break;
                    }
                    i5++;
                }
                if ((b5 & 255) != 0) {
                    if (i5 < iArr.length) {
                        int i7 = nt.f8633a;
                        if (i7 == 65566) {
                            l0.b0.l0(iArr[i5][1], 0);
                            return;
                        } else if (i7 == 196638) {
                            l0.b0.l0(this.f3876h[i5][1], 0);
                            return;
                        } else {
                            l0.b0.l0(this.f3875g[i5][1], 0);
                            return;
                        }
                    }
                    return;
                }
                if (i5 <= iArr.length) {
                    int i8 = nt.f8633a;
                    if (i8 == 65566) {
                        l0.b0.l0(iArr[this.f3873e][1], 1);
                        return;
                    } else if (i8 == 196638) {
                        l0.b0.l0(this.f3876h[this.f3873e][1], 1);
                        return;
                    } else {
                        l0.b0.l0(this.f3875g[this.f3873e][1], 1);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (nt.a()) {
            byte b6 = bArr[i2 + 4];
            byte b7 = bArr[i2 + 5];
            this.f3871c = b6 & 255;
            int i9 = nt.f8633a;
            if (i9 == 65566) {
                i4 = 0;
                while (true) {
                    int[][] iArr2 = this.f3874f;
                    if (i4 >= iArr2.length) {
                        break;
                    }
                    int i10 = this.f3871c;
                    if (i10 == iArr2[i4][0]) {
                        if (i10 == 0) {
                            break;
                        }
                        this.f3870b = i4;
                        break;
                    }
                    i4++;
                }
            } else if (i9 == 196638) {
                i4 = 0;
                while (true) {
                    int[][] iArr3 = this.f3876h;
                    if (i4 >= iArr3.length) {
                        break;
                    }
                    int i11 = this.f3871c;
                    if (i11 == iArr3[i4][0]) {
                        if (i11 == 0) {
                            break;
                        }
                        this.f3870b = i4;
                        break;
                    }
                    i4++;
                }
            } else {
                i4 = 0;
                while (true) {
                    int[][] iArr4 = this.f3875g;
                    if (i4 >= iArr4.length) {
                        break;
                    }
                    int i12 = this.f3871c;
                    if (i12 == iArr4[i4][0]) {
                        if (i12 == 0) {
                            break;
                        }
                        this.f3870b = i4;
                        break;
                    }
                    i4++;
                }
            }
            if ((b7 & 255) != 0) {
                int[][] iArr5 = this.f3874f;
                if (i4 >= iArr5.length || (b2 = this.f3877i) != 0) {
                    return;
                }
                this.f3877i = (byte) (b2 + 1);
                int i13 = nt.f8633a;
                if (i13 == 65566) {
                    l0.b0.l0(iArr5[i4][1], 0);
                } else if (i13 == 196638) {
                    l0.b0.l0(this.f3876h[i4][1], 0);
                } else {
                    l0.b0.l0(this.f3875g[i4][1], 0);
                }
                l0.b0.a(this.f3878j);
                return;
            }
            int i14 = this.f3870b;
            int[][] iArr6 = this.f3874f;
            if (i14 < iArr6.length && i14 != 255) {
                int i15 = nt.f8633a;
                if (i15 == 65566) {
                    l0.b0.l0(iArr6[i14][1], 1);
                } else if (i15 == 196638) {
                    l0.b0.l0(this.f3876h[i14][1], 1);
                } else {
                    l0.b0.l0(this.f3875g[i14][1], 1);
                }
                l0.b0.o0(this.f3878j);
                this.f3877i = (byte) 0;
            }
            this.f3870b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f3880l);
        u0.c.f17397x.d(this.f3879k);
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

    public final void d3(int i2) {
        if (u0.b.K3 == 0) {
            z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, 1, 1);
        } else {
            z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, 1, 2);
        }
    }
}
