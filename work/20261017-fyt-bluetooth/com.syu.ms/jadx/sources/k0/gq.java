package k0;

import android.content.Intent;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class gq extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5635c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5636d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 13}, new int[]{11, 6}, new int[]{12, 55}, new int[]{22, 62}, new int[]{48, 54}, new int[]{50, 1}, new int[]{52, 24}, new int[]{55, 9}, new int[]{57, 18}, new int[]{90, 12}, new int[]{128, 0}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5637e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f5638f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5639g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f5640h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5641i = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f5642j = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8633a;
            if (i2 == 721351) {
                z.k.s(227, 238, 1, 0);
            } else {
                if (i2 != 4915653) {
                    return;
                }
                z.k.s(227, 238, 1, 1);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(gq.this.f5641i);
            gq.this.f5639g = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gq gqVar = gq.this;
            int i2 = gqVar.f5639g - 1;
            gqVar.f5639g = i2;
            if (i2 <= 0) {
                l0.b0.p0(gqVar.f5641i);
                gq.this.f5639g = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 2, 48, 0);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 130, 7, (byte) (time.year - 1970), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second, ((DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0) << 5) | 128);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f5640h, 1);
        qt.z(this.f5642j);
        qt.z(this.f5638f);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
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
        byte b2 = bArr[i2];
        if (b2 == 41) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            if (this.f5637e) {
                return;
            }
            qt.i(b4, b3, true, 540);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 64) {
            int i4 = bArr[i2 + 2] & 255;
            if (i4 == 1) {
                qt.y0(99, bArr[i2 + 3] & 255);
                return;
            }
            if (i4 == 2) {
                qt.y0(100, bArr[i2 + 3] & 255);
                return;
            }
            if (i4 == 3) {
                qt.y0(101, bArr[i2 + 3] & 255);
                return;
            }
            if (i4 == 4) {
                qt.y0(102, bArr[i2 + 3] & 255);
                return;
            }
            switch (i4) {
                case 6:
                    qt.y0(103, bArr[i2 + 3] & 255);
                    break;
                case 7:
                    qt.y0(104, bArr[i2 + 3] & 255);
                    break;
                case 8:
                    qt.y0(105, bArr[i2 + 3] & 255);
                    break;
                case 9:
                    qt.y0(106, bArr[i2 + 3] & 255);
                    break;
                case 10:
                    qt.y0(107, bArr[i2 + 3] & 255);
                    break;
                case 11:
                    qt.y0(108, bArr[i2 + 3] & 255);
                    break;
                case 12:
                    qt.y0(109, bArr[i2 + 3] & 255);
                    break;
                default:
                    switch (i4) {
                        case 14:
                            qt.y0(110, bArr[i2 + 3] & 255);
                            break;
                        case 15:
                            qt.y0(111, bArr[i2 + 3] & 255);
                            break;
                        case 16:
                            qt.y0(112, bArr[i2 + 3] & 255);
                            break;
                        default:
                            switch (i4) {
                                case 32:
                                    qt.y0(113, bArr[i2 + 3] & 255);
                                    break;
                                case 33:
                                    qt.y0(114, bArr[i2 + 3] & 255);
                                    break;
                                case 34:
                                    qt.y0(115, bArr[i2 + 3] & 255);
                                    break;
                                case 35:
                                    qt.y0(116, bArr[i2 + 3] & 255);
                                    break;
                                case 36:
                                    qt.y0(117, bArr[i2 + 3] & 255);
                                    break;
                                case 37:
                                    qt.y0(118, bArr[i2 + 3] & 255);
                                    break;
                                case 38:
                                    qt.y0(119, bArr[i2 + 3] & 255);
                                    int i5 = i2 + 4;
                                    qt.y0(135, (bArr[i5] >> 4) & 15);
                                    qt.y0(136, (bArr[i5] >> 0) & 15);
                                    break;
                                case 39:
                                    qt.y0(120, bArr[i2 + 3] & 255);
                                    break;
                                case 40:
                                    qt.y0(121, bArr[i2 + 3] & 255);
                                    break;
                                default:
                                    switch (i4) {
                                        case 48:
                                            qt.y0(122, bArr[i2 + 3] & 255);
                                            break;
                                        case 49:
                                            qt.y0(123, bArr[i2 + 3] & 255);
                                            break;
                                        case 50:
                                            qt.y0(124, bArr[i2 + 3] & 255);
                                            break;
                                        case 51:
                                            qt.y0(125, bArr[i2 + 3] & 255);
                                            break;
                                        case 52:
                                            qt.y0(126, bArr[i2 + 3] & 255);
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        if (b2 == 98) {
            qt.y0(127, bArr[i2 + 2] & 255);
            qt.y0(128, bArr[i2 + 3] & 255);
            qt.y0(129, bArr[i2 + 4] & 255);
            qt.y0(130, bArr[i2 + 5] & 255);
            qt.y0(131, bArr[i2 + 6] & 255);
            int i6 = i2 + 7;
            qt.y0(132, (bArr[i6] >> 4) & 15);
            qt.y0(133, (bArr[i6] >> 0) & 15);
            qt.y0(134, bArr[i2 + 8] & 255);
            return;
        }
        if (b2 == 125) {
            int i7 = bArr[i2 + 2] & 255;
            if (i7 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i8 = i2 + 3;
                    l0.c0.b((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
                    return;
                } else {
                    int i9 = i2 + 3;
                    l0.c0.a((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
                    return;
                }
            }
            if (i7 == 3) {
                int i10 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i10);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i10}, null, null);
                return;
            } else {
                if (i7 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f5637e = true;
                return;
            }
        }
        switch (b2) {
            case 32:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f5635c = b5 & 255;
                int i11 = 0;
                while (true) {
                    iArr = this.f5636d;
                    if (i11 < iArr.length) {
                        int i12 = this.f5635c;
                        if (i12 != iArr[i11][0]) {
                            i11++;
                        } else if (i12 != 0) {
                            this.f5634b = i11;
                        }
                    }
                }
                if (this.f5635c != 22) {
                    int i13 = b6 & 255;
                    if (i13 != 1) {
                        if (i13 == 0) {
                            int i14 = this.f5634b;
                            if (i14 < iArr.length && i14 != 255) {
                                l0.b0.l0(iArr[i14][1], 1);
                            }
                            this.f5634b = 255;
                        }
                    } else if (i11 < iArr.length) {
                        l0.b0.l0(iArr[i11][1], 0);
                    }
                } else if ((b6 & 255) == 1) {
                    if (!qt.i0().equals("com.syu.carinfo.air.ActivityNewAir")) {
                        a3();
                    } else {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                    }
                }
                break;
            case 33:
                int i15 = bArr[i2 + 2] & 255;
                int i16 = bArr[i2 + 3] & 255;
                int i17 = i2 + 4;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 5;
                int i20 = bArr[i19] & 255;
                int i21 = bArr[i2 + 6] & 255;
                int i22 = bArr[i2 + 7] & 255;
                qt.y0(10, (i15 >> 7) & 1);
                qt.y0(11, (i15 >> 6) & 1);
                qt.y0(12, (i15 >> 5) & 1);
                qt.y0(13, (i15 >> 3) & 3);
                qt.y0(62, (i15 >> 2) & 1);
                qt.y0(65, (i15 >> 1) & 1);
                qt.y0(16, (i15 >> 0) & 1);
                qt.y0(18, (i16 >> 7) & 1);
                qt.y0(19, (i16 >> 6) & 1);
                qt.y0(20, (i16 >> 5) & 1);
                qt.y0(21, (i16 >> 0) & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i18 = bArr[i19] & 255;
                    i20 = bArr[i17] & 255;
                }
                int i23 = i18 & 255;
                if (i23 == 0) {
                    qt.y0(27, -2);
                } else if (i23 == 127) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i23);
                }
                int i24 = i20 & 255;
                if (i24 == 0) {
                    qt.y0(28, -2);
                } else if (i24 == 127) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i24);
                }
                qt.y0(29, (i21 >> 0) & 15);
                qt.y0(30, (i21 >> 4) & 15);
                qt.y0(85, (i22 >> 7) & 1);
                qt.y0(63, (i22 >> 6) & 1);
                break;
            case 34:
                u0.d.R2(l0.c0.i1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.i1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.i1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.i1(bArr[i2 + 5] & 255));
                break;
            case 35:
                u0.d.D2(l0.c0.i1(bArr[i2 + 2] & 255));
                u0.d.E2(l0.c0.i1(bArr[i2 + 3] & 255));
                u0.d.F2(l0.c0.i1(bArr[i2 + 4] & 255));
                u0.d.G2(l0.c0.i1(bArr[i2 + 5] & 255));
                break;
            case 36:
                byte b7 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b7 >> 6) & 1);
                    qt.y0(1, (b7 >> 7) & 1);
                } else {
                    qt.y0(2, (b7 >> 7) & 1);
                    qt.y0(1, (b7 >> 6) & 1);
                }
                if ((bArr[i2 + 3] & 1) != 1) {
                    u0.d.C2(0);
                } else {
                    u0.d.C2(1);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f5640h);
        qt.q0(this.f5642j);
        l0.b0.p0(this.f5641i);
        qt.q0(this.f5638f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 137) {
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
            z.k.s(227, -58, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -112, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -55, 3, iArr[0], iArr[1], iArr[2]);
            return;
        }
        if (i2 == 3 && iArr != null && iArr.length > 0) {
            z.k.s(227, -57, 7, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6]);
        }
    }

    public final void a3() {
        if (qt.i0().equals("com.syu.carinfo.air.ActivityNewAir")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.air.ActivityNewAir");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }
}
