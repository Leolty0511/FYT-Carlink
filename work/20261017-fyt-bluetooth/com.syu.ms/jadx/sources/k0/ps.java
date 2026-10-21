package k0;

import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class ps extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9351c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9352d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 18}, new int[]{8, 13}, new int[]{18, 29}, new int[]{20, 2}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{42, 50}, new int[]{43, 51}, new int[]{49, 9}, new int[]{50, 1}, new int[]{51, 13}, new int[]{52, 1}, new int[]{53, 58}, new int[]{54, 18}, new int[]{55, 62}, new int[]{56, 11}, new int[]{57, 24}, new int[]{58, 54}, new int[]{59, 0}, new int[]{60, 67}, new int[]{61, 68}, new int[]{62, 65}, new int[]{63, 25}, new int[]{64, 29}, new int[]{65, 8}, new int[]{66, 7}, new int[]{67, 30}, new int[]{68, 31}, new int[]{69, 6}, new int[]{70, 5}, new int[]{71, 2}, new int[]{72, 16}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9353e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f9354f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9355g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f9356h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ps.this.f9355g);
            ps.this.f9353e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ps psVar = ps.this;
            int i2 = psVar.f9353e - 1;
            psVar.f9353e = i2;
            if (i2 <= 0) {
                l0.b0.p0(psVar.f9355g);
                ps.this.f9353e = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 1, 48);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17366w;
            if (i2 == 0) {
                z.k.s(227, 198, 2, 162, 0);
            } else {
                if (i2 != 1) {
                    return;
                }
                z.k.s(227, 198, 2, 162, 2);
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
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        mtVar.f8314i = 1;
        u0.c.f17399z.a(this.f9356h, 1);
        u0.c.f17386m.a(this.f9354f, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2];
        if (b2 == 20) {
            u0.d.Q(((bArr[i2 + 2] & 255) * 100) / 255);
        }
        if (b2 == 23) {
            int i5 = i2 + 2;
            qt.y0(100, (bArr[i5] >> 7) & 1);
            qt.y0(101, (bArr[i5] >> 0) & 15);
            qt.y0(102, bArr[i2 + 4] & 255);
            qt.y0(103, bArr[i2 + 5] & 255);
            qt.y0(104, bArr[i2 + 6] & 255);
            qt.y0(105, bArr[i2 + 7] & 255);
            return;
        }
        if (b2 == 36) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            int i6 = i2 + 3;
            l0.c0.N1((bArr[i6] >> 7) & 1, (bArr[i6] >> 6) & 1, 0);
            qt.y0(99, (bArr[i6] >> 5) & 1);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 32) {
            if (b2 != 33) {
                return;
            }
            int i7 = bArr[i2 + 2] & 255;
            int i8 = bArr[i2 + 3] & 255;
            int i9 = i2 + 4;
            int i10 = bArr[i9] & 255;
            int i11 = i2 + 5;
            int i12 = bArr[i11] & 255;
            int i13 = bArr[i2 + 6] & 255;
            qt.y0(10, (i7 >> 7) & 1);
            qt.y0(11, (i7 >> 6) & 1);
            qt.y0(12, (i7 >> 5) & 1);
            qt.y0(13, (i7 >> 3) & 1);
            qt.y0(14, (i7 >> 2) & 1);
            qt.y0(18, (i8 >> 7) & 1);
            qt.y0(19, (i8 >> 6) & 1);
            qt.y0(20, (i8 >> 5) & 1);
            qt.y0(21, i8 & 15);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i10 = bArr[i11] & 255;
                i12 = bArr[i9] & 255;
            }
            int i14 = (i13 >> 0) & 1;
            if (i10 == 0) {
                qt.y0(27, -2);
            } else if (i10 == 255) {
                qt.y0(27, -3);
            } else if (i14 != 0) {
                qt.y0(27, i10 * 10);
            } else {
                qt.y0(27, i10 * 5);
            }
            if (i12 == 0) {
                qt.y0(28, -2);
            } else if (i12 == 255) {
                qt.y0(28, -3);
            } else if (i14 != 0) {
                qt.y0(28, i12 * 10);
            } else {
                qt.y0(28, i12 * 5);
            }
            qt.y0(15, (i13 >> 7) & 1);
            qt.y0(16, (i13 >> 6) & 1);
            qt.y0(53, (i13 >> 3) & 1);
            qt.y0(37, i14);
            int i15 = i2 + 8;
            qt.y0(29, (bArr[i15] >> 0) & 3);
            qt.y0(30, (bArr[i15] >> 2) & 3);
            qt.y0(31, (bArr[i15] >> 4) & 3);
            qt.y0(32, (bArr[i15] >> 6) & 3);
            int i16 = bArr[i2 + 7] & 255;
            if (i16 == 255 || i16 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.B3((nt.f8645g[37] == 1 || SystemProperties.getInt("persist.fyt.temperature", 0) == 1) ? (((i16 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i16 * 5) + 605);
                return;
            }
        }
        int i17 = i2 + 3;
        byte b4 = bArr[i17];
        int i18 = i2 + 2;
        byte b5 = bArr[i18];
        switch (b5) {
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
                if (b4 == 1) {
                    a3((bArr[i18] & 255) - 32);
                }
                break;
            case 42:
                if (b4 == 1) {
                    int i19 = u0.b.D;
                    if (i19 == 2) {
                        h0.c.f2425b.h(13);
                    } else if (i19 == 12 || i19 == 13) {
                        b3(198, 161, 23);
                    }
                }
                break;
            case 43:
                if (b4 == 1) {
                    int i20 = u0.b.D;
                    if (i20 == 2) {
                        h0.c.f2425b.h(14);
                    } else if (i20 == 12 || i20 == 13) {
                        b3(198, 161, 24);
                    }
                }
                break;
            default:
                switch (b5) {
                    case 65:
                        for (int i21 = 0; i21 < (b4 & 255); i21++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        break;
                    case 66:
                        for (int i22 = 0; i22 < (b4 & 255); i22++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        break;
                    case 67:
                        for (int i23 = 0; i23 < (b4 & 255); i23++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                        break;
                    case 68:
                        for (int i24 = 0; i24 < (b4 & 255); i24++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                        break;
                    default:
                        byte b6 = bArr[i18];
                        byte b7 = bArr[i17];
                        this.f9351c = b6 & 255;
                        int i25 = 0;
                        while (true) {
                            iArr = this.f9352d;
                            if (i25 < iArr.length) {
                                int i26 = this.f9351c;
                                if (i26 != iArr[i25][0]) {
                                    i25++;
                                } else if (i26 != 0) {
                                    this.f9350b = i25;
                                }
                            }
                        }
                        int i27 = b7 & 255;
                        if (i27 == 1) {
                            if (i25 < iArr.length) {
                                l0.b0.l0(iArr[i25][1], 0);
                            }
                        } else if (i27 == 0) {
                            int i28 = this.f9350b;
                            if (i28 < iArr.length) {
                                i4 = 255;
                                if (i28 != 255) {
                                    l0.b0.l0(iArr[i28][1], 1);
                                }
                            } else {
                                i4 = 255;
                            }
                            this.f9350b = i4;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17399z.d(this.f9356h);
        u0.c.f17386m.d(this.f9354f);
        l0.b0.p0(this.f9355g);
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
        if (T2(iArr, 2)) {
            if (i2 == 0) {
                z.k.s(227, 198, 2, iArr[0], iArr[1]);
            } else {
                if (i2 != 1) {
                    return;
                }
                z.k.s(227, 144, 1, iArr[0]);
            }
        }
    }

    public void a3(int i2) {
        int i3 = u0.b.D;
        if (i3 == 8 || i3 == 9) {
            u0.d.I3(37, i3, 8, i2);
        }
        if (i3 == 4 && i2 > 0) {
            o0.e.f16766b.D(i2 - 1);
            return;
        }
        if (i3 == 1 && i2 > 0 && i2 < 7) {
            w0.f.f(i2);
            return;
        }
        if (i3 == 2) {
            switch (i2) {
                case 0:
                    h0.c.f2425b.h(2);
                    break;
                case 1:
                    h0.c.f2425b.h(3);
                    break;
                case 2:
                    h0.c.f2425b.h(4);
                    break;
                case 3:
                    h0.c.f2425b.h(5);
                    break;
                case 4:
                    h0.c.f2425b.h(6);
                    break;
                case 5:
                    h0.c.f2425b.h(7);
                    break;
                case 6:
                    h0.c.f2425b.h(8);
                    break;
                case 7:
                    h0.c.f2425b.h(9);
                    break;
                case 8:
                    h0.c.f2425b.h(10);
                    break;
                case 9:
                    h0.c.f2425b.h(11);
                    break;
            }
        }
        if (i3 == 12 || i3 == 13) {
            switch (i2) {
                case 0:
                    b3(198, 161, 13);
                    break;
                case 1:
                    b3(198, 161, 14);
                    break;
                case 2:
                    b3(198, 161, 15);
                    break;
                case 3:
                    b3(198, 161, 16);
                    break;
                case 4:
                    b3(198, 161, 17);
                    break;
                case 5:
                    b3(198, 161, 18);
                    break;
                case 6:
                    b3(198, 161, 19);
                    break;
                case 7:
                    b3(198, 161, 20);
                    break;
                case 8:
                    b3(198, 161, 21);
                    break;
                case 9:
                    b3(198, 161, 22);
                    break;
            }
        }
    }

    public final void b3(int i2, int i3, int i4) {
        z.k.s(227, (byte) i2, 2, (byte) i3, (byte) i4);
    }
}
