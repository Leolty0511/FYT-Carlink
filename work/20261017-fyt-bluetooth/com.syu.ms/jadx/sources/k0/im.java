package k0;

import android.content.Intent;
import android.os.SystemProperties;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class im extends lt {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f6515m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f6516n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f6517o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f6518p;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6520c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6523f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6519b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6521d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f6522e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 1}, new int[]{22, 1}, new int[]{23, 54}, new int[]{24, 5}, new int[]{135, 12}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o1.g0 f6524g = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f6525h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f6526i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f6527j = 3;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f6528k = 4;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f6529l = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -58, 6, 0, 0, 0, (byte) time.hour, (byte) time.minute, 0);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f6523f = (nt.f8633a >> 16) & 65535;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8313h = 0;
        mtVar.f8314i = 0;
        mtVar.f8317l = 0;
        qt.z(this.f6529l);
        this.f6524g.a();
        d3(this.f6524g.b(1, 0));
        e3(this.f6524g.b(2, 0));
        c3(this.f6524g.b(3, 0));
        f3(this.f6524g.b(4, 0));
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 29) {
            int i4 = i2 + 2;
            int i5 = bArr[i4] & 255;
            int i6 = i2 + 3;
            int i7 = bArr[i6] & 255;
            int i8 = i2 + 4;
            int i9 = bArr[i8] & 255;
            int i10 = i2 + 5;
            int i11 = 255 & bArr[i10];
            if (i5 == 0 && i7 == 0 && i9 == 0 && i11 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i5 || l0.c0.f13014h != i7 || l0.c0.f13015i != i9 || l0.c0.f13016j != i11) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i5;
            l0.c0.f13014h = i7;
            l0.c0.f13015i = i9;
            l0.c0.f13016j = i11;
            u0.d.D2(l0.c0.e1(bArr[i4]));
            u0.d.E2(l0.c0.e1(bArr[i6]));
            u0.d.F2(l0.c0.e1(bArr[i8]));
            u0.d.G2(l0.c0.e1(bArr[i10]));
            return;
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.e1(bArr[i2 + 2]));
            u0.d.S2(l0.c0.e1(bArr[i2 + 3]));
            u0.d.T2(l0.c0.e1(bArr[i2 + 4]));
            u0.d.U2(l0.c0.e1(bArr[i2 + 5]));
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f6521d = b3 & 255;
            int i12 = 0;
            while (true) {
                iArr = this.f6522e;
                if (i12 >= iArr.length) {
                    break;
                }
                int i13 = this.f6521d;
                if (i13 == iArr[i12][0]) {
                    if (i13 == 0) {
                        break;
                    }
                    this.f6520c = i12;
                    break;
                }
                i12++;
            }
            int i14 = b4 & 255;
            if (i14 == 1) {
                if (i12 < iArr.length) {
                    l0.b0.l0(iArr[i12][1], 0);
                    return;
                }
                return;
            } else {
                if (i14 == 0) {
                    int i15 = this.f6520c;
                    if (i15 < iArr.length && i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                    }
                    this.f6520c = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            } else {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            }
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            return;
        }
        if (b2 == 53) {
            qt.y0(104, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(105, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(106, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(107, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(108, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(109, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(110, bArr[i2 + 15] & 255);
            int i16 = bArr[i2 + 14] & 255;
            u0.d.A3((i16 & 128) != 0 ? 1000 - ((i16 & 127) * 10) : (i16 * 10) + 1000);
            return;
        }
        if (b2 == 56) {
            int i17 = i2 + 2;
            qt.y0(111, (bArr[i17] >> 7) & 1);
            qt.y0(112, (bArr[i17] >> 4) & 7);
            qt.y0(113, (bArr[i17] >> 3) & 1);
            qt.y0(114, (bArr[i17] >> 2) & 1);
            qt.y0(115, (bArr[i17] >> 0) & 3);
            int i18 = i2 + 3;
            qt.y0(116, (bArr[i18] >> 7) & 1);
            qt.y0(117, (bArr[i18] >> 6) & 1);
            return;
        }
        if (b2 == 98) {
            int i19 = i2 + 2;
            qt.y0(118, bArr[i19] & 255);
            if (this.f6519b != (bArr[i19] & 255)) {
                int i20 = bArr[i19] & 255;
                this.f6519b = i20;
                if (i20 == 3 && u0.b.D == 13) {
                    l0.b0.l0(5, 0);
                    l0.b0.l0(5, 1);
                    u0.b.f17311c.c(0);
                } else if (i20 == 1) {
                    b3();
                } else if (i20 == 2) {
                    a3();
                }
            }
            int i21 = bArr[i19] & 255;
            if (i21 != 1) {
                if (i21 != 2) {
                    return;
                }
                qt.y0(130, (bArr[i2 + 4] >> 0) & 15);
                int i22 = i2 + 5;
                qt.y0(131, (bArr[i22] >> 4) & 15);
                qt.y0(132, (bArr[i22] >> 0) & 15);
                qt.y0(133, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(134, bArr[i2 + 8] & 255);
                qt.y0(135, bArr[i2 + 9] & 255);
                return;
            }
            int i23 = i2 + 3;
            if ((bArr[i23] & 255) == 0) {
                qt.y0(119, bArr[i2 + 4] & 255);
                int i24 = i2 + 5;
                qt.y0(128, (bArr[i24] >> 7) & 1);
                qt.y0(129, (bArr[i24] >> 5) & 1);
                qt.y0(127, (bArr[i24] >> 0) & 15);
                qt.y0(120, (bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280));
                return;
            }
            if ((bArr[i23] & 255) == 1) {
                qt.y0(121, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(122, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(123, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 9] & 255));
                qt.y0(124, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 11] & 255));
                qt.y0(125, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 13] & 255));
                qt.y0(126, (bArr[i2 + 15] & 255) | ((bArr[i2 + 16] << 8) & 65280));
                return;
            }
            return;
        }
        if (b2 != 40) {
            if (b2 == 41) {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 480);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 != 49) {
                return;
            }
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, bArr[i2 + 3] & 255);
            qt.y0(100, bArr[i2 + 4] & 255);
            qt.y0(101, bArr[i2 + 5] & 255);
            qt.y0(102, bArr[i2 + 6] & 255);
            qt.y0(103, bArr[i2 + 7] & 255);
            qt.y0(136, bArr[i2 + 8] & 255);
            return;
        }
        int i25 = i2 + 2;
        qt.y0(10, (bArr[i25] >> 7) & 1);
        qt.y0(11, (bArr[i25] >> 6) & 1);
        qt.y0(12, (bArr[i25] >> 5) & 1);
        qt.y0(13, (bArr[i25] >> 3) & 1);
        qt.y0(65, (bArr[i25] >> 1) & 1);
        qt.y0(16, (bArr[i25] >> 0) & 1);
        int i26 = i2 + 3;
        qt.y0(77, (bArr[i26] >> 5) & 7);
        qt.y0(18, (bArr[i26] >> 7) & 1);
        qt.y0(19, (bArr[i26] >> 6) & 1);
        qt.y0(20, (bArr[i26] >> 5) & 1);
        qt.y0(21, (bArr[i26] >> 0) & 15);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            int i27 = i2 + 4;
            if ((bArr[i27] & 255) == 0) {
                qt.y0(28, -2);
            } else if ((bArr[i27] & 255) == 255) {
                qt.y0(28, -3);
            } else if ((bArr[i27] & 255) == 127) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, bArr[i27] & 255);
            }
            int i28 = i2 + 5;
            if ((bArr[i28] & 255) == 0) {
                qt.y0(27, -2);
                return;
            }
            if ((bArr[i28] & 255) == 255) {
                qt.y0(27, -3);
                return;
            } else if ((bArr[i28] & 255) == 127) {
                qt.y0(27, -1);
                return;
            } else {
                qt.y0(27, bArr[i28] & 255);
                return;
            }
        }
        int i29 = i2 + 4;
        if ((bArr[i29] & 255) == 0) {
            qt.y0(27, -2);
        } else if ((bArr[i29] & 255) == 255) {
            qt.y0(27, -3);
        } else if ((bArr[i29] & 255) == 127) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, bArr[i29] & 255);
        }
        int i30 = i2 + 5;
        if ((bArr[i30] & 255) == 0) {
            qt.y0(28, -2);
            return;
        }
        if ((bArr[i30] & 255) == 255) {
            qt.y0(28, -3);
        } else if ((bArr[i30] & 255) == 127) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, bArr[i30] & 255);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f6529l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 141) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 132, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 3) {
            return;
        }
        int i3 = iArr[0];
        if (i3 == 1) {
            d3(iArr[1]);
            return;
        }
        if (i3 == 2) {
            e3(iArr[1]);
        } else if (i3 == 3) {
            c3(iArr[1]);
        } else {
            if (i3 != 4) {
                return;
            }
            f3(iArr[1]);
        }
    }

    public final void a3() {
        try {
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.ford.LZSubaruCarCd");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void b3() {
        try {
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.ford.LZSubaruCarRadioAct");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void c3(int i2) {
        f6517o = i2;
        qt.y0(139, i2);
        int iB = this.f6524g.b(3, 0);
        int i3 = f6517o;
        if (iB != i3) {
            this.f6524g.g(3, i3);
        }
    }

    public final void d3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f6515m = i2;
        qt.y0(137, i2);
        int iB = this.f6524g.b(1, 0);
        int i3 = f6515m;
        if (iB != i3) {
            this.f6524g.g(1, i3);
        }
    }

    public final void e3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 2) {
            i2 = 2;
        }
        f6516n = i2;
        qt.y0(138, i2);
        int iB = this.f6524g.b(2, 0);
        int i3 = f6516n;
        if (iB != i3) {
            this.f6524g.g(2, i3);
        }
    }

    public final void f3(int i2) {
        f6518p = i2;
        qt.y0(140, i2);
        int iB = this.f6524g.b(4, 0);
        int i3 = f6518p;
        if (iB != i3) {
            this.f6524g.g(4, i3);
        }
    }
}
