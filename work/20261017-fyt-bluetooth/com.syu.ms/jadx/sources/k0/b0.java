package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class b0 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3498c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3499d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 27}, new int[]{9, 28}, new int[]{10, 9}, new int[]{11, 2}, new int[]{12, 2}, new int[]{13, 4}, new int[]{14, 3}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 32}, new int[]{18, 33}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f3500e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f3501f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f3502g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3503h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b0 b0Var = b0.this;
            byte b2 = (byte) (b0Var.f3500e + 1);
            b0Var.f3500e = b2;
            if (b2 > 5) {
                l0.b0.o0(b0Var.f3501f);
                b0.this.f3500e = (byte) 0;
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
            b0.this.a3(u0.b.K3);
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
        qt.z(this.f3502g);
        u0.c.f17397x.a(this.f3503h, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2 + 1];
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b3 == 49) {
            if (nt.a()) {
                int i4 = (bArr[i2 + 13] & 255) * 5;
                int i5 = i4 < 400 ? 1000 - (400 - i4) : 1400 - i4;
                if (i5 > 600) {
                    u0.d.A3(i5);
                    return;
                }
                return;
            }
            return;
        }
        if (b3 == 65) {
            if (nt.a()) {
                int i6 = i2 + 2;
                u0.d.R2(((bArr[i6] * 10) / 8) - 1 > 9 ? 15 : ((bArr[i6] * 10) / 8) - 1);
                int i7 = i2 + 3;
                u0.d.S2(((bArr[i7] * 10) / 8) - 1 > 9 ? 15 : ((bArr[i7] * 10) / 8) - 1);
                int i8 = i2 + 4;
                u0.d.T2(((bArr[i8] * 10) / 8) - 1 > 9 ? 15 : ((bArr[i8] * 10) / 8) - 1);
                int i9 = i2 + 5;
                u0.d.U2(((bArr[i9] * 10) / 8) - 1 > 9 ? 15 : ((bArr[i9] * 10) / 8) - 1);
                int i10 = i2 + 6;
                u0.d.D2(((bArr[i10] * 10) / 8) - 1 > 9 ? 15 : ((bArr[i10] * 10) / 8) - 1);
                int i11 = i2 + 7;
                u0.d.E2(((bArr[i11] * 10) / 8) - 1 > 9 ? 15 : ((bArr[i11] * 10) / 8) - 1);
                int i12 = i2 + 8;
                u0.d.F2(((bArr[i12] * 10) / 8) - 1 > 9 ? 15 : ((bArr[i12] * 10) / 8) - 1);
                int i13 = i2 + 9;
                u0.d.G2(((bArr[i13] * 10) / 8) - 1 <= 9 ? ((bArr[i13] * 10) / 8) - 1 : 15);
                return;
            }
            return;
        }
        if (b3 == 66) {
            qt.y0(114, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
            return;
        }
        switch (b3) {
            case 17:
                int i14 = i2 + 4;
                int i15 = bArr[i14] & 255;
                int i16 = i2 + 5;
                int i17 = bArr[i16] & 255;
                if (i15 == 20 && i17 == 1) {
                    nt.f8643f[115].s(115, new int[]{1}, null, null);
                } else if (i15 == 21 && i17 == 1) {
                    nt.f8643f[116].s(116, new int[]{1}, null, null);
                }
                if (nt.a()) {
                    byte b4 = bArr[i14];
                    byte b5 = bArr[i16];
                    this.f3498c = b4 & 255;
                    int i18 = 0;
                    while (true) {
                        iArr = this.f3499d;
                        if (i18 < iArr.length) {
                            int i19 = this.f3498c;
                            if (i19 != iArr[i18][0]) {
                                i18++;
                            } else if (i19 != 0) {
                                this.f3497b = i18;
                            }
                        }
                    }
                    int i20 = b5 & 255;
                    if (i20 != 1) {
                        if (i20 == 0) {
                            int i21 = this.f3497b;
                            if (i21 < iArr.length && i21 != 255) {
                                l0.b0.l0(iArr[i21][1], 1);
                                l0.b0.o0(this.f3501f);
                                this.f3500e = (byte) 0;
                            }
                            this.f3497b = 255;
                        }
                        break;
                    } else if (i18 < iArr.length && (b2 = this.f3500e) == 0) {
                        this.f3500e = (byte) (b2 + 1);
                        l0.b0.l0(iArr[i18][1], 0);
                        l0.b0.a(this.f3501f);
                        break;
                    }
                }
                break;
            case 18:
                byte b6 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b6 >> 6) & 1);
                    qt.y0(2, (b6 >> 7) & 1);
                } else {
                    qt.y0(1, (b6 >> 7) & 1);
                    qt.y0(2, (b6 >> 6) & 1);
                }
                qt.y0(3, (b6 >> 5) & 1);
                qt.y0(4, (b6 >> 4) & 1);
                qt.y0(5, (b6 >> 3) & 1);
                break;
            case 19:
                qt.y0(102, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(103, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(98, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
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
        qt.q0(this.f3502g);
        u0.c.f17397x.d(this.f3503h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 117) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 24) {
            if (i2 != 48) {
                return;
            }
            z.k.s(227, 2, -96, 1, -1);
        } else {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            d3(iArr[0]);
        }
    }

    public final void a3(int i2) {
        int[] iArr = new int[5];
        iArr[0] = 227;
        iArr[1] = 2;
        iArr[2] = -102;
        iArr[3] = 1;
        iArr[4] = i2 != 0 ? 2 : 1;
        z.k.s(iArr);
    }

    public final void d3(int i2) {
        byte b2 = (byte) i2;
        z.k.s(227, 4, 27, b2, b2, 1, -1);
    }
}
