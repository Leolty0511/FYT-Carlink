package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class m4 extends lt {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f7959o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7960b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7963e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7961c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7962d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 33}, new int[]{4, 32}, new int[]{5, 0}, new int[]{6, 29}, new int[]{7, 12}, new int[]{8, 1}, new int[]{9, 21}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7964f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7965g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{36, 18}, new int[]{37, 26}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7966h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o1.g0 f7967i = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f7968j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte f7969k = 5;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7970l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f7971m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f7972n = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(m4.this.f7971m);
            m4.this.f7969k = (byte) 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m4 m4Var = m4.this;
            byte b2 = (byte) (m4Var.f7969k - 1);
            m4Var.f7969k = b2;
            if (b2 > 0) {
                z.k.s(227, 133, 2, 1, 1);
            } else {
                l0.b0.p0(m4Var.f7971m);
                m4.this.f7969k = (byte) 5;
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
            z.k.s(227, -124, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second, (byte) time.weekDay);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f7967i.a();
        c3(this.f7967i.b(1, 0));
        qt.z(this.f7972n);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        u0.c.f17386m.a(this.f7970l, 1);
    }

    /* JADX WARN: Code duplicated, block: B:121:0x031c  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2 + 0];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f7964f = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f7965g;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f7964f;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f7963e = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f7964f;
            if (i6 == 48) {
                if (qt.k0() && (b4 & 255) == 1) {
                    c.e.d().c(591);
                    return;
                }
                return;
            }
            if (i6 == 49) {
                if (qt.k0() && (b4 & 255) == 1) {
                    c.e.d().c(592);
                    return;
                }
                return;
            }
            switch (i6) {
                case 39:
                    if (qt.k0() && (b4 & 255) == 1) {
                        if (o1.u.S("com.syu.fourcamera2")) {
                            c.e.d().c(614);
                        } else {
                            c.e.d().c(590);
                        }
                        break;
                    }
                    break;
                case 40:
                    if (qt.k0() && (b4 & 255) == 1) {
                        c.e.d().c(595);
                        break;
                    }
                    break;
                case 41:
                    if (qt.k0() && (b4 & 255) == 1) {
                        c.e.d().c(596);
                        break;
                    }
                    break;
                default:
                    int i7 = b4 & 255;
                    if (i7 == 1) {
                        if (i4 < iArr.length) {
                            l0.b0.l0(iArr[i4][1], 0);
                        }
                    } else if (i7 == 0) {
                        int i8 = this.f7963e;
                        if (i8 < iArr.length && i8 != 255) {
                            l0.b0.l0(iArr[i8][1], 1);
                        }
                        this.f7963e = 255;
                    }
                    break;
            }
            return;
        }
        if (b2 == 2) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 5];
            byte b7 = bArr[i2 + 6];
            qt.y0(21, (b5 >> 0) & 15);
            switch ((b5 >> 4) & 15) {
                case 1:
                    qt.y0(18, 1);
                    qt.y0(20, 0);
                    qt.y0(65, 0);
                    break;
                case 2:
                    qt.y0(18, 1);
                    qt.y0(20, 1);
                    qt.y0(65, 0);
                    break;
                case 3:
                    qt.y0(18, 0);
                    qt.y0(20, 1);
                    qt.y0(65, 0);
                    break;
                case 4:
                    qt.y0(18, 0);
                    qt.y0(20, 1);
                    qt.y0(65, 1);
                    break;
                case 5:
                    qt.y0(18, 0);
                    qt.y0(20, 0);
                    qt.y0(65, 1);
                    break;
                case 6:
                    qt.y0(18, 0);
                    qt.y0(20, 1);
                    qt.y0(65, 2);
                    break;
                default:
                    qt.y0(18, 0);
                    qt.y0(20, 0);
                    qt.y0(65, 0);
                    break;
            }
            int i9 = i2 + 3;
            byte b8 = bArr[i9];
            int i10 = i2 + 4;
            byte b9 = bArr[i10];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b8 = bArr[i10];
                b9 = bArr[i9];
            }
            int i11 = (b8 >> 0) & 1;
            int i12 = ((b8 >> 1) & 63) * 10;
            if (i11 == 1) {
                i12 += 5;
            }
            qt.y0(27, i12);
            if (nt.f8633a == 458903) {
                qt.y0(28, i12);
            } else {
                int i13 = ((b9 >> 1) & 63) * 10;
                if (((b9 >> 0) & 1) == 1) {
                    i13 += 5;
                }
                qt.y0(28, i13);
            }
            int i14 = (b6 >> 0) & 3;
            if (i14 == 1) {
                qt.y0(11, 0);
            } else if (i14 == 2) {
                qt.y0(11, 1);
            } else if (i14 != 3) {
                qt.y0(11, 0);
            } else {
                qt.y0(11, 2);
            }
            int i15 = (b6 >> 2) & 3;
            if (i15 == 0) {
                qt.y0(12, 0);
            } else if (i15 == 1) {
                qt.y0(12, 1);
            } else if (i15 == 2) {
                qt.y0(12, 0);
            }
            if (((b6 >> 4) & 1) == 1) {
                qt.y0(65, 1);
            }
            qt.y0(14, (b6 >> 5) & 1);
            qt.y0(13, (b6 >> 6) & 1);
            qt.y0(16, (b6 >> 7) & 1);
            qt.y0(53, (b7 >> 0) & 1);
            qt.y0(99, (b7 >> 1) & 1);
            if (nt.a()) {
                byte b10 = bArr[i2 + 7];
                int i16 = b10 & 255;
                u0.d.A3((b10 & 128) != 0 ? 1000 - ((((~i16) + 1) & 127) * 10) : (i16 * 10) + 1000);
                return;
            }
            return;
        }
        if (b2 == 3) {
            if (nt.a()) {
                u0.d.D2(a3(bArr[i2 + 2]) & 255);
                u0.d.E2(a3(bArr[i2 + 3]) & 255);
                u0.d.F2(a3(bArr[i2 + 4]) & 255);
                u0.d.G2(a3(bArr[i2 + 5]) & 255);
                u0.d.R2(a3(bArr[i2 + 6]) & 255);
                u0.d.S2(a3(bArr[i2 + 7]) & 255);
                u0.d.T2(a3(bArr[i2 + 8]) & 255);
                u0.d.U2(a3(bArr[i2 + 9]) & 255);
                return;
            }
            return;
        }
        if (b2 == 4) {
            byte b11 = bArr[i2 + 3];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b11 >> 1) & 1);
                qt.y0(2, (b11 >> 0) & 1);
            } else {
                qt.y0(1, (b11 >> 0) & 1);
                qt.y0(2, (b11 >> 1) & 1);
            }
            qt.y0(3, (b11 >> 2) & 1);
            qt.y0(4, (b11 >> 3) & 1);
            qt.y0(5, (b11 >> 4) & 1);
            qt.y0(0, (b11 >> 5) & 1);
            if (f7959o == 1) {
                int i17 = i2 + 5;
                if (this.f7966h != bArr[i17]) {
                    byte b12 = bArr[i17];
                    this.f7966h = b12;
                    if (b12 == 16) {
                        if (o1.u.T(a.b.O)) {
                            return;
                        }
                        qt.t();
                        return;
                    } else {
                        if (o1.u.T(a.b.O)) {
                            qt.f();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (b2 != 6) {
            if (b2 == 38) {
                qt.m(bArr[i2 + 2], bArr[i2 + 3], 7575, false, 6440);
                return;
            }
            if (b2 == 59 && bArr[i2 + 2] == 6) {
                if (bArr[i2 + 3] == 1) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            return;
        }
        byte b13 = bArr[i2 + 2];
        byte b14 = bArr[i2 + 3];
        this.f7961c = b13 & 255;
        int i18 = 0;
        while (true) {
            iArr2 = this.f7962d;
            if (i18 >= iArr2.length) {
                break;
            }
            int i19 = this.f7961c;
            if (i19 == iArr2[i18][0]) {
                if (i19 == 0) {
                    break;
                }
                this.f7960b = i18;
                break;
            }
            i18++;
        }
        int i20 = this.f7961c;
        if (i20 == 1) {
            for (int i21 = 0; i21 < (b14 & 255); i21++) {
                l0.b0.l0(7, 0);
            }
            l0.b0.l0(7, 1);
            return;
        }
        if (i20 == 2) {
            for (int i22 = 0; i22 < (b14 & 255); i22++) {
                l0.b0.l0(8, 0);
            }
            l0.b0.l0(8, 1);
            return;
        }
        if (i20 == 3) {
            for (int i23 = 0; i23 < (b14 & 255); i23++) {
                l0.b0.l0(31, 0);
            }
            l0.b0.l0(31, 1);
            return;
        }
        if (i20 == 4) {
            for (int i24 = 0; i24 < (b14 & 255); i24++) {
                l0.b0.l0(30, 0);
            }
            l0.b0.l0(30, 1);
            return;
        }
        int i25 = b14 & 255;
        if (i25 == 1) {
            if (i18 < iArr2.length) {
                l0.b0.l0(iArr2[i18][1], 0);
            }
        } else if (i25 == 0) {
            int i26 = this.f7960b;
            if (i26 < iArr2.length && i26 != 255) {
                l0.b0.l0(iArr2[i26][1], 1);
            }
            this.f7960b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f7972n);
        u0.c.f17386m.d(this.f7970l);
        l0.b0.p0(this.f7971m);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 100) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -125, 2, iArr[0], iArr[1]);
        } else if (i2 == 1 && iArr != null && iArr.length > 0) {
            c3(iArr[0]);
        }
    }

    public final int a3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 3 ? 10 : 9;
        }
        return 5;
    }

    public final void c3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f7959o = i2;
        qt.y0(98, i2);
        int iB = this.f7967i.b(1, 0);
        int i3 = f7959o;
        if (iB != i3) {
            this.f7967i.g(1, i3);
        }
    }
}
