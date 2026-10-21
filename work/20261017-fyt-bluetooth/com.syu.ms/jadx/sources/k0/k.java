package k0;

import android.bluetooth.BluetoothClass;
import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class k extends lt {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7120e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7117b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7118c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7119d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7121f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7122g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 55}, new int[]{11, 18}, new int[]{12, 5}, new int[]{13, 32}, new int[]{14, 33}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 27}, new int[]{18, 28}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, 25}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f7123h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f7124i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f7125j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f7126k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7127l = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17306a0;
            if (i2 == 0) {
                k.this.f7123h = false;
            } else if (i2 == 1) {
                k kVar = k.this;
                if (!kVar.f7123h) {
                    kVar.f7123h = true;
                }
            }
            k kVar2 = k.this;
            kVar2.f7117b = 0;
            kVar2.f7118c = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k kVar = k.this;
            byte b2 = (byte) (kVar.f7125j + 1);
            kVar.f7125j = b2;
            if (b2 > 5) {
                l0.b0.o0(kVar.f7126k);
                k.this.f7125j = (byte) 0;
            }
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

    public static int a3(int i2) {
        int i3 = (((i2 + 1) * 10) / 8) - 1;
        if (i3 > 9) {
            return 15;
        }
        return i3;
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
        qt.z(this.f7127l);
        u0.c.f17386m.a(this.f7124i, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2 + 1];
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b3 == 34) {
            if (nt.a()) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                if (b4 != 1) {
                    if (b4 == 2 && b5 != (i4 = this.f7118c)) {
                        if (b5 > i4) {
                            for (int i5 = 0; i5 < b5 - this.f7118c; i5++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                        } else if (b5 < i4) {
                            for (int i6 = 0; i6 < this.f7118c - b5; i6++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                        }
                        this.f7118c = b5;
                        return;
                    }
                    return;
                }
                int i7 = this.f7117b;
                if (b5 != i7) {
                    if (b5 > i7) {
                        for (int i8 = 0; i8 < b5 - this.f7117b; i8++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (b5 < i7) {
                        for (int i9 = 0; i9 < this.f7117b - b5; i9++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    this.f7117b = b5;
                    return;
                }
                return;
            }
            return;
        }
        if (b3 == 49) {
            if (nt.a()) {
                int i10 = bArr[i2 + 13] & 255;
                int i11 = i10 >= 80 ? ((i10 * 5) + 1000) - 400 : 1000 - (400 - (i10 * 5));
                if (i11 > 600) {
                    u0.d.A3(i11);
                    return;
                }
                return;
            }
            return;
        }
        if (b3 == 118) {
            qt.y0(108, (bArr[i2 + 3] >> 6) & 1);
            return;
        }
        if (b3 == 65) {
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
        if (b3 == 66) {
            qt.y0(114, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
            return;
        }
        switch (b3) {
            case 17:
                int i12 = i2 + 4;
                byte b6 = bArr[i12];
                int i13 = i2 + 5;
                if (bArr[i13] == 1) {
                    if (b6 == 11) {
                        int i14 = h0.c.E;
                        if (i14 == 4) {
                            h0.c.f2425b.n();
                        } else if (i14 != 5) {
                            c.e.d().c(BluetoothClass.Device.PHONE_ISDN);
                        } else {
                            h0.c.f2425b.e();
                        }
                    } else if (b6 == 20) {
                        nt.f8643f[115].s(115, new int[]{1}, null, null);
                    } else if (b6 == 21) {
                        nt.f8643f[116].s(116, new int[]{1}, null, null);
                    }
                }
                if (nt.a()) {
                    byte b7 = bArr[i12];
                    byte b8 = bArr[i13];
                    this.f7121f = b7 & 255;
                    int i15 = 0;
                    while (true) {
                        iArr = this.f7122g;
                        if (i15 < iArr.length) {
                            int i16 = this.f7121f;
                            if (i16 != iArr[i15][0]) {
                                i15++;
                            } else if (i16 != 0) {
                                this.f7120e = i15;
                            }
                        }
                    }
                    int i17 = b8 & 255;
                    if (i17 != 1) {
                        if (i17 == 0) {
                            int i18 = this.f7120e;
                            if (i18 < iArr.length && i18 != 255) {
                                l0.b0.l0(iArr[i18][1], 1);
                                l0.b0.o0(this.f7126k);
                                this.f7125j = (byte) 0;
                            }
                            this.f7120e = 255;
                        }
                        break;
                    } else if (i15 < iArr.length && (b2 = this.f7125j) == 0) {
                        this.f7125j = (byte) (b2 + 1);
                        l0.b0.l0(iArr[i15][1], 0);
                        l0.b0.a(this.f7126k);
                        break;
                    }
                }
                break;
            case 18:
                byte b9 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b9 >> 6) & 1);
                    qt.y0(2, (b9 >> 7) & 1);
                } else {
                    qt.y0(1, (b9 >> 7) & 1);
                    qt.y0(2, (b9 >> 6) & 1);
                }
                qt.y0(3, (b9 >> 5) & 1);
                qt.y0(4, (b9 >> 4) & 1);
                qt.y0(5, (b9 >> 3) & 1);
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
        qt.q0(this.f7127l);
        u0.c.f17386m.d(this.f7124i);
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
        if (i2 != 1) {
            if (i2 == 24 && iArr != null && iArr.length > 0) {
                d3(iArr[0]);
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
        c3(2, iArr[0]);
    }

    public final void c3(int i2, int i3) {
        z.k.s(227, 2, 123, (byte) i2, (byte) i3);
    }

    public final void d3(int i2) {
        byte b2 = (byte) i2;
        z.k.s(227, 4, 27, b2, b2, 1, -1);
    }
}
