package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class w extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11551c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11552d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 28}, new int[]{9, 27}, new int[]{10, 5}, new int[]{11, 2}, new int[]{12, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 32}, new int[]{18, 33}, new int[]{19, -1}, new int[]{20, -1}, new int[]{21, -1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f11553e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f11554f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11555g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f11556h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f11557i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f11558j = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (w.this.f11554f == millis && w.this.f11555g == zIs24HourFormat) {
                return;
            }
            w.this.f11554f = millis;
            w.this.f11555g = zIs24HourFormat ? 1 : 0;
            z.k.s(227, 10, -53, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, zIs24HourFormat ? 1 : 0, 0, 0, 0, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w.this.a3(u0.b.K3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w wVar = w.this;
            byte b2 = (byte) (wVar.f11557i + 1);
            wVar.f11557i = b2;
            if (b2 > 5) {
                l0.b0.o0(wVar.f11558j);
                w.this.f11557i = (byte) 0;
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
        qt.z(this.f11553e);
        u0.c.f17397x.a(this.f11556h, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2 + 1];
        if (b3 == 49) {
            if (nt.a()) {
                l0.h0.u(bArr[i2 + 13] & 255);
            }
            return;
        }
        if (b3 == 104) {
            int i4 = bArr[i2 + 3] & 255;
            qt.y0(107, (i4 >> 7) & 1);
            qt.y0(108, (i4 >> 6) & 1);
            qt.y0(109, (i4 >> 5) & 1);
            qt.y0(110, (i4 >> 4) & 1);
            qt.y0(111, (i4 >> 3) & 1);
            qt.y0(112, (i4 >> 2) & 1);
            qt.y0(113, (i4 >> 0) & 3);
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
        if (b3 == 66) {
            qt.y0(114, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
            return;
        }
        switch (b3) {
            case 17:
                int i5 = i2 + 4;
                int i6 = bArr[i5] & 255;
                int i7 = i2 + 5;
                int i8 = bArr[i7] & 255;
                if (i6 == 20 && i8 == 1) {
                    nt.f8643f[115].s(115, new int[]{1}, null, null);
                }
                if (n0.j4.f16464b == 53 && i6 == 19 && i8 == 1) {
                    if (o1.u.Y0().equals("com.syu.canbus")) {
                        o1.u.k();
                    } else {
                        o1.u.v();
                    }
                }
                if (i6 == 21 && i8 == 1) {
                    nt.f8643f[116].s(116, new int[]{1}, null, null);
                }
                if (nt.a()) {
                    byte b4 = bArr[i5];
                    byte b5 = bArr[i7];
                    this.f11551c = b4 & 255;
                    int i9 = 0;
                    while (true) {
                        iArr = this.f11552d;
                        if (i9 < iArr.length) {
                            int i10 = this.f11551c;
                            if (i10 != iArr[i9][0]) {
                                i9++;
                            } else if (i10 != 0) {
                                this.f11550b = i9;
                            }
                        }
                    }
                    int i11 = b5 & 255;
                    if (i11 != 1) {
                        if (i11 == 0) {
                            int i12 = this.f11550b;
                            if (i12 < iArr.length && i12 != 255) {
                                l0.b0.l0(iArr[i12][1], 1);
                                l0.b0.o0(this.f11558j);
                                this.f11557i = (byte) 0;
                            }
                            this.f11550b = 255;
                        }
                        break;
                    } else if (i9 < iArr.length && (b2 = this.f11557i) == 0) {
                        this.f11557i = (byte) (b2 + 1);
                        l0.b0.l0(iArr[i9][1], 0);
                        l0.b0.a(this.f11558j);
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
        qt.q0(this.f11553e);
        u0.c.f17397x.d(this.f11556h);
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
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            h3(1, iArr[0]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                h3(2, 0);
                return;
            } else {
                h3(2, 1);
                return;
            }
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            h3(3, 0);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            h3(4, iArr[0]);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            h3(5, iArr[0]);
            return;
        }
        if (i2 == 5) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            h3(6, iArr[0]);
            return;
        }
        if (i2 == 9) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            h3(12, iArr[0]);
            return;
        }
        if (i2 != 10) {
            if (i2 == 24 && iArr != null && iArr.length > 0) {
                i3(iArr[0]);
                return;
            }
            return;
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        if (iArr[0] != 0) {
            iArr[0] = 1;
        }
        h3(13, iArr[0]);
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

    public final void h3(int i2, int i3) {
        z.k.s(227, 2, 109, (byte) i2, (byte) i3);
    }

    public final void i3(int i2) {
        byte b2 = (byte) i2;
        z.k.s(227, 4, 27, b2, b2, 1, -1);
    }
}
