package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class l extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7448c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7449d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7450e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7447b = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7451f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7452g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 5}, new int[]{11, 2}, new int[]{12, 2}, new int[]{13, 32}, new int[]{14, 33}, new int[]{15, 29}, new int[]{16, -1}, new int[]{17, 3}, new int[]{18, 4}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, 25}, new int[]{129, 40}, new int[]{130, 41}, new int[]{131, 42}, new int[]{132, 43}, new int[]{133, 44}, new int[]{134, 45}, new int[]{135, -1}, new int[]{136, 12}, new int[]{137, 2}, new int[]{138, 54}, new int[]{139, 1}, new int[]{140, 3}, new int[]{141, 4}, new int[]{142, 28}, new int[]{143, 27}, new int[]{144, -1}, new int[]{145, 21}, new int[]{146, 5}, new int[]{147, 18}, new int[]{148, 29}, new int[]{149, 11}, new int[]{150, -1}, new int[]{151, 25}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7453h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7454i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f7455j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f7456k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7457l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte f7458m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f7459n = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l lVar = l.this;
            lVar.f7453h = 0;
            lVar.f7454i = 0;
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
            l.this.a3(u0.b.K3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l lVar = l.this;
            byte b2 = (byte) (lVar.f7458m + 1);
            lVar.f7458m = b2;
            if (b2 > 5) {
                l0.b0.o0(lVar.f7459n);
                l.this.f7458m = (byte) 0;
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
        qt.z(this.f7456k);
        u0.c.f17397x.a(this.f7457l, 1);
        u0.c.f17386m.a(this.f7455j, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        byte b2;
        byte b3 = bArr[i2 + 1];
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b3 == 49) {
            if (nt.a()) {
                l0.h0.u(bArr[i2 + 13] & 255);
                return;
            }
            return;
        }
        if (b3 == 104) {
            int i5 = bArr[i2 + 3] & 255;
            qt.y0(108, (i5 >> 6) & 1);
            qt.y0(112, (i5 >> 2) & 1);
            qt.y0(113, (i5 >> 0) & 3);
            return;
        }
        if (b3 == 33) {
            if (nt.a()) {
                this.f7450e = (bArr[i2 + 2] & 255) | 128;
                byte b4 = bArr[i2 + 3];
                int i6 = 0;
                while (true) {
                    iArr = this.f7452g;
                    if (i6 >= iArr.length) {
                        break;
                    }
                    int i7 = this.f7450e;
                    if (i7 == iArr[i6][0]) {
                        if (i7 == 0) {
                            break;
                        }
                        this.f7451f = i6;
                        break;
                    }
                    i6++;
                }
                if ((b4 & 255) == 0) {
                    int i8 = this.f7451f;
                    if (i8 < iArr.length && i8 != 255) {
                        l0.b0.l0(iArr[i8][1], 1);
                    }
                    this.f7451f = 255;
                } else if (i6 < iArr.length) {
                    l0.b0.l0(iArr[i6][1], 0);
                }
            }
            int i9 = bArr[i2 + 2] & 255;
            int i10 = bArr[i2 + 3] & 255;
            if (i9 == 22 && i10 == 1) {
                o1.u.y();
                return;
            } else {
                if (i9 == 16 && i10 == 1) {
                    a.i.A();
                    return;
                }
                return;
            }
        }
        if (b3 == 34) {
            if (nt.a()) {
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                if (b5 != 1) {
                    if (b5 == 2 && b6 != (i4 = this.f7454i)) {
                        if (b6 > i4) {
                            for (int i11 = 0; i11 < b6 - this.f7454i; i11++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                        } else if (b6 < i4) {
                            for (int i12 = 0; i12 < this.f7454i - b6; i12++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                        }
                        this.f7454i = b6;
                        return;
                    }
                    return;
                }
                int i13 = this.f7453h;
                if (b6 != i13) {
                    if (b6 > i13) {
                        for (int i14 = 0; i14 < b6 - this.f7453h; i14++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (b6 < i13) {
                        for (int i15 = 0; i15 < this.f7453h - b6; i15++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    this.f7453h = b6;
                    return;
                }
                return;
            }
            return;
        }
        if (b3 == 65) {
            if (nt.a()) {
                u0.d.R2(((bArr[i2 + 2] & 255) * 10) / 7);
                u0.d.S2(((bArr[i2 + 3] & 255) * 10) / 7);
                u0.d.T2(((bArr[i2 + 4] & 255) * 10) / 7);
                u0.d.U2(((bArr[i2 + 5] & 255) * 10) / 7);
                int i16 = i2 + 6;
                if ((bArr[i16] & 255) == 0) {
                    u0.d.D2(15);
                } else {
                    u0.d.D2(((bArr[i16] & 255) * 10) / 7);
                }
                int i17 = i2 + 7;
                if ((bArr[i17] & 255) == 0) {
                    u0.d.E2(15);
                } else {
                    u0.d.E2(((bArr[i17] & 255) * 10) / 7);
                }
                int i18 = i2 + 8;
                if ((bArr[i18] & 255) == 0) {
                    u0.d.F2(15);
                } else {
                    u0.d.F2(((bArr[i18] & 255) * 10) / 7);
                }
                int i19 = i2 + 9;
                if ((bArr[i19] & 255) == 0) {
                    u0.d.G2(15);
                    return;
                } else {
                    u0.d.G2(((bArr[i19] & 255) * 10) / 7);
                    return;
                }
            }
            return;
        }
        if (b3 == 66) {
            qt.y0(114, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
            return;
        }
        switch (b3) {
            case 17:
                int i20 = i2 + 4;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 5;
                int i23 = bArr[i22] & 255;
                if (i21 == 20 && i23 == 1) {
                    nt.f8643f[115].s(115, new int[]{1}, null, null);
                } else if (i21 == 21 && i23 == 1) {
                    nt.f8643f[116].s(116, new int[]{1}, null, null);
                } else if (i21 == 16 && i23 == 1) {
                    a.i.A();
                }
                if (nt.a()) {
                    byte b7 = bArr[i20];
                    byte b8 = bArr[i22];
                    this.f7449d = b7 & 255;
                    int i24 = 0;
                    while (true) {
                        iArr2 = this.f7452g;
                        if (i24 < iArr2.length) {
                            int i25 = this.f7449d;
                            if (i25 != iArr2[i24][0]) {
                                i24++;
                            } else if (i25 != 0) {
                                this.f7448c = i24;
                            }
                        }
                    }
                    int i26 = b8 & 255;
                    if (i26 != 1) {
                        if (i26 == 0) {
                            int i27 = this.f7448c;
                            if (i27 < iArr2.length && i27 != 255) {
                                l0.b0.l0(iArr2[i27][1], 1);
                                l0.b0.o0(this.f7459n);
                                this.f7458m = (byte) 0;
                            }
                            this.f7448c = 255;
                        }
                        break;
                    } else if (i24 < iArr2.length && (b2 = this.f7458m) == 0) {
                        this.f7458m = (byte) (b2 + 1);
                        l0.b0.l0(iArr2[i24][1], 0);
                        l0.b0.a(this.f7459n);
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
        qt.q0(this.f7456k);
        u0.c.f17397x.d(this.f7457l);
        u0.c.f17386m.d(this.f7455j);
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
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            d3(2, iArr[0]);
            return;
        }
        if (i2 == 24) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            e3(iArr[0]);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            d3(5, iArr[0]);
            return;
        }
        if (i2 == 5 && iArr != null && iArr.length > 0) {
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            d3(6, iArr[0]);
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

    public final void d3(int i2, int i3) {
        z.k.s(227, 2, 109, (byte) i2, (byte) i3);
    }

    public final void e3(int i2) {
        byte b2 = (byte) i2;
        z.k.s(227, 4, 27, b2, b2, 1, -1);
    }
}
