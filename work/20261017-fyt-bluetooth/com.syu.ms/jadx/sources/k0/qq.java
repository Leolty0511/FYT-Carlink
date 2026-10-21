package k0;

import android.media.videoeditor.MediaProperties;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class qq extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9681c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9682d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{8, 13}, new int[]{9, 18}, new int[]{22, 29}, new int[]{136, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9683e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f9684f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9685g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f9686h = {34, 204};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9687i = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(qq.this.f9685g);
            qq.this.f9683e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qq qqVar = qq.this;
            int i2 = qqVar.f9683e - 1;
            qqVar.f9683e = i2;
            if (i2 <= 0) {
                l0.b0.p0(qqVar.f9685g);
                qq.this.f9683e = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8633a;
                if (i3 == 13631942) {
                    z.k.s(227, 226, 2, 1, 0);
                } else {
                    if (i3 != 13697478) {
                        return;
                    }
                    z.k.s(227, 226, 2, 0, 0);
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f9684f, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8317l = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2];
        if (b2 == 29) {
            int i8 = i2 + 2;
            int i9 = bArr[i8] & 255;
            int i10 = i2 + 3;
            int i11 = bArr[i10] & 255;
            int i12 = bArr[i2 + 4] & 255;
            int i13 = bArr[i2 + 5] & 255;
            if (i9 == 0 && i11 == 0 && i12 == 0 && i13 == 0) {
                u0.d.C2(0);
            } else if (l0.c0.f13013g != i9 || l0.c0.f13014h != i11 || l0.c0.f13015i != i12 || l0.c0.f13016j != i13) {
                u0.d.C2(1);
                l0.c0.f13017k = 5;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i9;
            l0.c0.f13014h = i11;
            l0.c0.f13015i = i12;
            l0.c0.f13016j = i13;
            u0.d.D2(l0.c0.E0(bArr[i8] & 255));
            u0.d.E2(l0.c0.E0(bArr[i2 + 7] & 255));
            u0.d.F2(l0.c0.E0(bArr[i2 + 8] & 255));
            u0.d.G2(l0.c0.E0(bArr[i10] & 255));
            return;
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f9681c = b3 & 255;
            int i14 = 0;
            while (true) {
                iArr = this.f9682d;
                if (i14 >= iArr.length) {
                    break;
                }
                int i15 = this.f9681c;
                if (i15 == iArr[i14][0]) {
                    if (i15 == 0) {
                        break;
                    }
                    this.f9680b = i14;
                    break;
                }
                i14++;
            }
            if (this.f9681c == 9) {
                if ((b4 & 255) == 1) {
                    int i16 = h0.c.E;
                    if (i16 == 3 || i16 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                        return;
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    }
                }
                return;
            }
            int i17 = b4 & 255;
            if (i17 == 1) {
                if (i14 < iArr.length) {
                    l0.b0.l0(iArr[i14][1], 0);
                    return;
                }
                return;
            } else {
                if (i17 == 0) {
                    int i18 = this.f9680b;
                    if (i18 < iArr.length) {
                        i4 = 255;
                        if (i18 != 255) {
                            l0.b0.l0(iArr[i18][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f9680b = i4;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b5 >> 6) & 1);
                qt.y0(1, (b5 >> 7) & 1);
            } else {
                qt.y0(2, (b5 >> 7) & 1);
                qt.y0(1, (b5 >> 6) & 1);
            }
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 0) & 1);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, MediaProperties.HEIGHT_360);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 53) {
            qt.y0(1031, bArr[i2 + 4] & 255);
            qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
            return;
        }
        if (b2 != 85) {
            return;
        }
        int i19 = i2 + 2;
        int i20 = bArr[i19] & 255;
        int i21 = i2 + 3;
        int i22 = bArr[i21] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i20 = bArr[i21] & 255;
            i22 = bArr[i19] & 255;
        }
        if (i20 == 16) {
            qt.y0(27, -2);
        } else if (i20 != 80) {
            qt.y0(27, i20);
        } else {
            qt.y0(27, -3);
        }
        if (i22 == 16) {
            qt.y0(28, -2);
        } else if (i22 != 80) {
            qt.y0(28, i22);
        } else {
            qt.y0(28, -3);
        }
        int i23 = i2 + 4;
        switch ((bArr[i23] >> 4) & 15) {
            case 1:
                i5 = 0;
                i6 = 0;
                i7 = 1;
                break;
            case 2:
                i5 = 0;
                i7 = 1;
                i6 = i7;
                break;
            case 3:
                i5 = 0;
                i7 = 0;
                i6 = 1;
                break;
            case 4:
                i7 = 0;
                i5 = 1;
                i6 = 1;
                break;
            case 5:
                i6 = 0;
                i5 = 1;
                i7 = 1;
                break;
            case 6:
                i7 = 0;
                i6 = 0;
                i5 = 1;
                break;
            case 7:
                i5 = 1;
                i7 = i5;
                i6 = i7;
                break;
            default:
                i5 = 0;
                i7 = i5;
                i6 = i7;
                break;
        }
        qt.y0(18, i5);
        qt.y0(19, i7);
        qt.y0(20, i6);
        qt.y0(21, (bArr[i23] >> 0) & 15);
        int i24 = i2 + 5;
        if (((bArr[i24] >> 6) & 1) == 1) {
            if (!qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_NewAdd_HP")) {
                l0.b0.l0(62, 0);
                l0.b0.l0(62, 1);
            } else if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_NewAdd_HP")) {
                l0.b0.l0(6, 0);
                l0.b0.l0(6, 1);
            }
        }
        qt.y0(37, (bArr[i24] >> 7) & 1);
        int i25 = i2 + 6;
        qt.y0(13, (bArr[i25] >> 0) & 1);
        qt.y0(11, (bArr[i25] >> 1) & 1);
        qt.y0(62, (bArr[i25] >> 2) & 1);
        qt.y0(12, (bArr[i25] >> 3) & 1);
        qt.y0(53, (bArr[i25] >> 4) & 1);
        qt.y0(16, (bArr[i25] >> 6) & 1);
        qt.y0(15, (bArr[i25] >> 7) & 1);
        int i26 = bArr[i19] & 255;
        if (i26 == 0 || i26 == 255) {
            u0.d.A3(0);
        } else {
            u0.d.A3((i26 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f9684f);
        l0.b0.p0(this.f9685g);
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
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 51, 4, iArr[0], this.f9686h[this.f9687i % 2], 0, 0);
        int i3 = this.f9687i + 1;
        this.f9687i = i3;
        this.f9687i = i3 % 2;
    }
}
