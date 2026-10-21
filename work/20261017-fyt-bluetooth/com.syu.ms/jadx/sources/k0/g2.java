package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class g2 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5363c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5364d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5365e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f5366f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, -1}, new int[]{6, -1}, new int[]{7, -1}, new int[]{8, -1}, new int[]{9, -1}, new int[]{10, -1}, new int[]{11, 2}, new int[]{12, -1}, new int[]{13, -1}, new int[]{14, -1}, new int[]{15, 29}, new int[]{16, -1}, new int[]{17, 3}, new int[]{18, 4}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{64, 18}, new int[]{129, 25}, new int[]{130, -1}, new int[]{131, -1}, new int[]{132, -1}, new int[]{133, -1}, new int[]{134, 72}, new int[]{135, 25}, new int[]{136, -1}, new int[]{137, 12}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{144, -1}, new int[]{145, 11}, new int[]{146, -1}, new int[]{147, -1}, new int[]{148, -1}, new int[]{149, -1}, new int[]{150, -1}, new int[]{151, 67}, new int[]{152, 68}, new int[]{153, 3}, new int[]{154, 4}, new int[]{170, 2}, new int[]{172, 12}, new int[]{173, 58}, new int[]{174, 21}, new int[]{175, 71}, new int[]{192, 18}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f5367g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, -1}, new int[]{6, -1}, new int[]{7, -1}, new int[]{8, -1}, new int[]{9, -1}, new int[]{10, -1}, new int[]{11, 2}, new int[]{12, -1}, new int[]{13, -1}, new int[]{14, -1}, new int[]{15, 29}, new int[]{16, -1}, new int[]{17, 3}, new int[]{18, 4}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{64, 18}, new int[]{129, 25}, new int[]{130, -1}, new int[]{131, -1}, new int[]{132, -1}, new int[]{133, -1}, new int[]{134, 6}, new int[]{135, 5}, new int[]{136, -1}, new int[]{137, 12}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{144, -1}, new int[]{145, 11}, new int[]{146, -1}, new int[]{147, -1}, new int[]{148, -1}, new int[]{149, -1}, new int[]{150, -1}, new int[]{151, 3}, new int[]{152, 4}, new int[]{153, 68}, new int[]{154, 67}, new int[]{170, 29}, new int[]{172, 2}, new int[]{173, 22}, new int[]{174, 1}, new int[]{175, 21}, new int[]{192, 18}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f5368h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5369i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f5370j = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 2, 123, 11, -128);
            } else {
                z.k.s(227, 2, 123, 11, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, DateFormat.is24HourFormat(App.c()) ? 1 : 0, 0, 0, 0, 0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.this.b3(u0.b.K3);
        }
    }

    public static int a3(int i2) {
        if (i2 > 7) {
            return 15;
        }
        return (i2 * 10) / 7;
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
        qt.z(this.f5369i);
        u0.c.f17397x.a(this.f5370j, 1);
        if (nt.a()) {
            u0.c.f17379f.a(this.f5368h, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2 + 1];
        if (b2 == -63) {
            int i5 = i2 + 2;
            int i6 = i2 + 3;
            qt.y0(117, ((bArr[i5] & 32) << 2) | ((bArr[i6] & 32) >> 5));
            qt.y0(118, ((bArr[i6] & 6) >> 1) | ((bArr[i5] & 8) << 4));
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                u0.d.D2(a3(bArr[i2 + 6] & 255));
                u0.d.E2(a3(bArr[i2 + 7] & 255));
                u0.d.F2(a3(bArr[i2 + 8] & 255));
                u0.d.G2(a3(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 == 118) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            qt.y0(109, (b3 >> 7) & 1);
            qt.y0(108, (b4 >> 6) & 1);
            qt.y0(112, (b4 >> 2) & 1);
            return;
        }
        if (b2 == 33) {
            if (nt.a()) {
                this.f5364d = (bArr[i2 + 2] & 255) | 128;
                byte b5 = bArr[i2 + 3];
                int i7 = 0;
                while (true) {
                    iArr = this.f5366f;
                    if (i7 >= iArr.length) {
                        break;
                    }
                    int i8 = this.f5364d;
                    if (i8 == iArr[i7][0]) {
                        if (i8 == 0) {
                            break;
                        }
                        this.f5365e = i7;
                        break;
                    }
                    i7++;
                }
                if ((b5 & 255) != 0) {
                    if (i7 < iArr.length) {
                        if (nt.f8633a == 65628) {
                            l0.b0.l0(iArr[i7][1], 0);
                            return;
                        } else {
                            l0.b0.l0(this.f5367g[i7][1], 0);
                            return;
                        }
                    }
                    return;
                }
                int i9 = this.f5365e;
                if (i9 < iArr.length && i9 != 255) {
                    if (nt.f8633a == 65628) {
                        l0.b0.l0(iArr[i9][1], 1);
                    } else {
                        l0.b0.l0(this.f5367g[i9][1], 1);
                    }
                }
                this.f5365e = 255;
                return;
            }
            return;
        }
        if (b2 == 34) {
            if (nt.a()) {
                int i10 = i2 + 2;
                if (bArr[i10] == 1) {
                    int i11 = i2 + 3;
                    if (bArr[i11] != 0) {
                        if ((bArr[i11] & 255) < 128) {
                            u0.d.O1();
                            return;
                        } else {
                            u0.d.M1();
                            return;
                        }
                    }
                }
                if (bArr[i10] == 2 || bArr[i10] == 3) {
                    int i12 = i2 + 3;
                    if (bArr[i12] != 0) {
                        if ((bArr[i12] & 255) < 128) {
                            u0.d.I1();
                            return;
                        } else {
                            u0.d.B1();
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        switch (b2) {
            case 17:
                int i13 = i2 + 4;
                int i14 = bArr[i13] & 255;
                int i15 = i2 + 5;
                int i16 = bArr[i15] & 255;
                if (i14 == 20 && i16 == 1) {
                    nt.f8643f[115].s(115, new int[]{1}, null, null);
                }
                if (nt.a()) {
                    if ((bArr[i2 + 2] & 255 & 32) == 32) {
                        u0.d.C2(1);
                    } else {
                        u0.d.C2(0);
                    }
                    byte b6 = bArr[i13];
                    byte b7 = bArr[i15];
                    this.f5363c = b6 & 255;
                    if (nt.f8633a == 65626) {
                        i4 = 0;
                        while (true) {
                            int[][] iArr2 = this.f5366f;
                            if (i4 < iArr2.length) {
                                int i17 = this.f5363c;
                                if (i17 != iArr2[i4][0]) {
                                    i4++;
                                } else if (i17 != 0) {
                                    this.f5362b = i4;
                                }
                            }
                        }
                    } else {
                        i4 = 0;
                        while (true) {
                            int[][] iArr3 = this.f5367g;
                            if (i4 < iArr3.length) {
                                int i18 = this.f5363c;
                                if (i18 != iArr3[i4][0]) {
                                    i4++;
                                } else if (i18 != 0) {
                                    this.f5362b = i4;
                                }
                            }
                        }
                    }
                    if ((b7 & 255) != 0) {
                        int[][] iArr4 = this.f5366f;
                        if (i4 >= iArr4.length) {
                            int i19 = this.f5362b;
                            if (i19 < iArr4.length && i19 != 255) {
                                if (nt.f8633a == 65628) {
                                    l0.b0.l0(iArr4[i19][1], 1);
                                } else {
                                    l0.b0.l0(this.f5367g[i19][1], 1);
                                }
                            }
                            this.f5362b = 255;
                        } else if (nt.f8633a == 65628) {
                            l0.b0.l0(iArr4[i4][1], 0);
                        } else {
                            l0.b0.l0(this.f5367g[i4][1], 0);
                        }
                        qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                    }
                }
                break;
            case 18:
                byte b8 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b8 >> 6) & 1);
                    qt.y0(2, (b8 >> 7) & 1);
                } else {
                    qt.y0(1, (b8 >> 7) & 1);
                    qt.y0(2, (b8 >> 6) & 1);
                }
                qt.y0(3, (b8 >> 5) & 1);
                qt.y0(4, (b8 >> 4) & 1);
                qt.y0(5, (b8 >> 3) & 1);
                break;
            case 19:
                qt.y0(102, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(103, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] & 255) << 8));
                break;
            case 20:
                qt.y0(104, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(99, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(100, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
            case 21:
                qt.y0(101, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(105, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(106, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f5369i);
        u0.c.f17397x.d(this.f5370j);
        u0.c.f17379f.d(this.f5368h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 119) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 20) {
            z.k.s(227, 2, -116, 1, -1);
        }
        if (i2 == 24) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            f3(iArr[0]);
            return;
        }
        if (i2 == 51) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            iArr[0] = iArr[0] + 1;
            if (iArr[0] < 1) {
                iArr[0] = 1;
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            z.k.s(227, 2, -54, 5, (byte) iArr[0]);
            return;
        }
        if (i2 == 53) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 0;
            }
            iArr[0] = iArr[0] + 1;
            z.k.s(227, 2, -54, 3, (byte) iArr[0]);
            return;
        }
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    d3(1, iArr[0]);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    d3(2, iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    d3(11, 0);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    d3(4, iArr[0]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    d3(5, iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    d3(6, iArr[0]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    d3(8, iArr[0]);
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    d3(9, iArr[0]);
                    break;
                }
                break;
            case 8:
                if (iArr != null && iArr.length > 0) {
                    d3(10, iArr[0]);
                    break;
                }
                break;
            case 9:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    d3(12, iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    d3(13, iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    e3(1, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    e3(2, iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    e3(3, iArr[0]);
                    break;
                }
                break;
            case 14:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    e3(4, iArr[0]);
                    break;
                }
                break;
            case 15:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    e3(5, iArr[0]);
                    break;
                }
                break;
        }
    }

    public final void b3(int i2) {
        int[] iArr = new int[5];
        iArr[0] = 227;
        iArr[1] = 2;
        iArr[2] = -102;
        iArr[3] = 1;
        iArr[4] = i2 != 0 ? 2 : 1;
        z.k.s(iArr);
    }

    public final void d3(int i2, int i3) {
        z.k.s(227, 2, 123, (byte) i2, (byte) i3);
    }

    public final void e3(int i2, int i3) {
        z.k.s(227, 2, 125, (byte) i2, (byte) i3);
    }

    public final void f3(int i2) {
        byte b2 = (byte) i2;
        z.k.s(227, 4, 27, b2, b2, 1, -1);
    }
}
