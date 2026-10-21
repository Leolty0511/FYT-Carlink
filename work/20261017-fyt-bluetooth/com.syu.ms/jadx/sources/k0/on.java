package k0;

import android.content.Intent;
import android.os.BatteryStats;
import android.os.SystemProperties;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class on extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8914b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8915c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8916d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 26}, new int[]{9, 0}, new int[]{10, 1}, new int[]{11, 6}, new int[]{12, 24}, new int[]{13, 54}, new int[]{14, 5}, new int[]{15, 55}, new int[]{16, 18}, new int[]{17, 2}, new int[]{18, -1}, new int[]{19, -1}, new int[]{20, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8917e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8918f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f8919g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f8920h = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            on.b3();
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f8922a;

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f8922a = time;
            time.setToNow();
            Time time2 = this.f8922a;
            int i2 = time2.year;
            z.k.s(227, -126, 6, (byte) (i2 & 255), (byte) (((byte) ((i2 >> 8) & 15)) | (((byte) (time2.month + 1)) << 4)), (byte) time2.monthDay, (byte) time2.hour, (byte) time2.minute, 0);
        }
    }

    public static void b3() {
        if (u0.b.f17306a0 == 0) {
            z.k.s(227, -64, 2, 0, 0);
            return;
        }
        int i2 = u0.b.D;
        if (i2 == 1) {
            int i3 = w0.d.f17796h;
            int i4 = (i3 == 0 || i3 == 1) ? 16 : 0;
            int i5 = w0.d.f17797i;
            z.k.s(227, -64, 5, 1, 1, i4, i5 & 255, (i5 >> 8) & 255);
            return;
        }
        if (i2 == 5) {
            z.k.s(227, -64, 2, 12, 0);
            return;
        }
        if (i2 != 10) {
            if (i2 == 12) {
                z.k.s(227, -64, 2, 5, 0);
                return;
            } else if (i2 == 7) {
                z.k.s(227, -64, 2, 6, 0);
                return;
            } else if (i2 != 8) {
                z.k.s(227, -64, 2, 13, 0);
                return;
            }
        }
        z.k.s(227, -64, 3, 8, 2, u0.b.r3);
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
        if (i2 == 41) {
            if (iArr[1] != 0) {
                a3(2, 3);
                return;
            }
            a3(1, 3);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(2, 4);
                return;
            } else {
                a3(1, 4);
                return;
            }
        }
        if (i2 == 59) {
            if (iArr[1] != 0) {
                a3(64, 0);
                return;
            }
            return;
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(128, 0);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(128, 0);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(2, 0);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(2, 0);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(32, 0);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(32, 0);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(16, 0);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(16, 0);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(4, 1);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(4, 1);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(8, 0);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(4, 0);
                }
                break;
            case 39:
                int i3 = iArr[1];
                if (i3 == -2) {
                    a3(1, 1);
                    break;
                } else if (i3 == -1) {
                    a3(2, 1);
                    break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        o1.y yVar = u0.c.f17386m;
        yVar.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8313h = 0;
        mtVar.f8314i = 0;
        mtVar.f8317l = 0;
        mtVar.f8314i = 1;
        qt.z(this.f8920h);
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        int i2 = nt.f8633a;
        if (i2 == 12386756 || i2 == 12452292) {
            w0.e.f17819e.a(this.f8919g, 1);
            w0.e.f17815a.a(this.f8919g, 1);
            u0.c.f17374a.a(this.f8919g, 1);
            u0.c.f17392s.a(this.f8919g, 1);
            yVar.a(this.f8919g, 1);
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 55, 56, 59, 60, 61, 68};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 39) {
            u0.d.A3(((bArr[i2 + 3] & 255) * 5) + 650);
        }
        if (b2 == 41) {
            qt.m(bArr[i2 + 2], bArr[i2 + 3], 32768, false, 8860);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i4 = i2 + 3;
            l0.c0.a((bArr[i4] >> 3) & 1, (bArr[i4] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i4] & 255}, null, null);
            return;
        }
        if (b2 == 56) {
            qt.y0(102, bArr[i2 + 2] & 255);
            qt.y0(103, bArr[i2 + 3] & 255);
            qt.y0(104, bArr[i2 + 4] & 255);
            qt.y0(105, bArr[i2 + 5] & 255);
            qt.y0(98, bArr[i2 + 6] & 255);
            qt.y0(99, bArr[i2 + 7] & 255);
            qt.y0(100, bArr[i2 + 8] & 255);
            qt.y0(101, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == 57) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            qt.y0(114, (b3 >> 7) & 1);
            qt.y0(115, (b3 >> 6) & 1);
            qt.y0(116, (b3 >> 5) & 1);
            qt.y0(117, (b3 >> 4) & 1);
            qt.y0(118, (b3 >> 3) & 1);
            qt.y0(119, (b3 >> 2) & 1);
            qt.y0(120, (b4 >> 7) & 1);
            qt.y0(121, (b4 >> 6) & 1);
            qt.y0(122, (b4 >> 5) & 1);
            qt.y0(123, (b4 >> 4) & 1);
            qt.y0(124, (b4 >> 3) & 1);
            qt.y0(125, (b4 >> 2) & 1);
            return;
        }
        if (b2 == 65) {
            int i5 = i2 + 2;
            qt.y0(106, (bArr[i5] >> 4) & 15);
            qt.y0(107, (bArr[i5] >> 3) & 1);
            qt.y0(108, (bArr[i5] >> 2) & 1);
            qt.y0(109, bArr[i2 + 3] & 255);
            qt.y0(126, bArr[i2 + 4] & 255);
            qt.y0(127, bArr[i2 + 5] & 255);
            qt.y0(128, bArr[i2 + 6] & 255);
            qt.y0(129, bArr[i2 + 7] & 255);
            qt.y0(130, bArr[i2 + 8] & 255);
            return;
        }
        if (b2 == 66) {
            qt.y0(110, ((bArr[i2 + 4] << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK) | (bArr[i2 + 3] & 255));
            qt.y0(111, ((bArr[i2 + 6] << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK) | (255 & bArr[i2 + 5]));
            int i6 = i2 + 7;
            qt.y0(112, (bArr[i6] >> 0) & 7);
            qt.y0(113, (bArr[i6] >> 3) & 7);
            return;
        }
        switch (b2) {
            case 32:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f8915c = b5 & 255;
                int i7 = 0;
                while (true) {
                    iArr = this.f8916d;
                    if (i7 < iArr.length) {
                        int i8 = this.f8915c;
                        if (i8 != iArr[i7][0]) {
                            i7++;
                        } else if (i8 != 0) {
                            this.f8914b = i7;
                        }
                    }
                }
                int i9 = this.f8915c;
                if (i9 == 18) {
                    if ((b6 & 255) == 1) {
                        c3();
                    }
                } else if (i9 != 19) {
                    int i10 = b6 & 255;
                    if (i10 != 1) {
                        if (i10 == 0) {
                            int i11 = this.f8914b;
                            if (i11 < iArr.length && i11 != 255) {
                                l0.b0.l0(iArr[i11][1], 1);
                            }
                            this.f8914b = 255;
                        }
                    } else if (i7 < iArr.length) {
                        l0.b0.l0(iArr[i7][1], 0);
                    }
                } else if ((b6 & 255) == 1) {
                    d3();
                }
                break;
            case 33:
                int i12 = i2 + 2;
                qt.y0(10, (bArr[i12] >> 7) & 1);
                qt.y0(11, (bArr[i12] >> 6) & 1);
                qt.y0(12, (bArr[i12] >> 5) & 1);
                qt.y0(13, (bArr[i12] >> 4) & 1);
                qt.y0(45, (bArr[i12] >> 3) & 1);
                qt.y0(14, (bArr[i12] >> 2) & 1);
                qt.y0(65, (bArr[i12] >> 1) & 1);
                qt.y0(16, (bArr[i12] >> 0) & 1);
                int i13 = i2 + 3;
                qt.y0(18, (bArr[i13] >> 7) & 1);
                qt.y0(19, (bArr[i13] >> 6) & 1);
                qt.y0(20, (bArr[i13] >> 5) & 1);
                qt.y0(21, (bArr[i13] >> 0) & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    int i14 = i2 + 4;
                    if ((bArr[i14] & 255) == 0) {
                        qt.y0(28, -2);
                    } else if ((bArr[i14] & 255) == 31) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, bArr[i14] & 255);
                    }
                    int i15 = i2 + 5;
                    if ((bArr[i15] & 255) == 0) {
                        qt.y0(27, -2);
                    } else if ((bArr[i15] & 255) == 31) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, bArr[i15] & 255);
                    }
                } else {
                    int i16 = i2 + 4;
                    if ((bArr[i16] & 255) == 0) {
                        qt.y0(27, -2);
                    } else if ((bArr[i16] & 255) == 31) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, bArr[i16] & 255);
                    }
                    int i17 = i2 + 5;
                    if ((bArr[i17] & 255) == 0) {
                        qt.y0(28, -2);
                    } else if ((bArr[i17] & 255) == 31) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, bArr[i17] & 255);
                    }
                }
                int i18 = i2 + 6;
                qt.y0(58, (bArr[i18] >> 4) & 1);
                qt.y0(53, (bArr[i18] >> 3) & 1);
                int i19 = i2 + 7;
                qt.y0(29, (bArr[i19] >> 4) & 15);
                qt.y0(30, (bArr[i19] >> 0) & 15);
                int i20 = i2 + 8;
                qt.y0(31, (bArr[i20] >> 4) & 15);
                qt.y0(32, (bArr[i20] >> 0) & 15);
                break;
            case 34:
                u0.d.R2(l0.c0.e1(bArr[i2 + 2]));
                u0.d.S2(l0.c0.e1(bArr[i2 + 3]));
                u0.d.T2(l0.c0.e1(bArr[i2 + 4]));
                u0.d.U2(l0.c0.e1(bArr[i2 + 5]));
                break;
            case 35:
                int i21 = i2 + 2;
                int i22 = bArr[i21] & 255;
                int i23 = i2 + 3;
                int i24 = bArr[i23] & 255;
                int i25 = i2 + 4;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 5;
                int i28 = 255 & bArr[i27];
                if (i22 == 0 && i24 == 0 && i26 == 0 && i28 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i22 || l0.c0.f13014h != i24 || l0.c0.f13015i != i26 || l0.c0.f13016j != i28) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i22;
                l0.c0.f13014h = i24;
                l0.c0.f13015i = i26;
                l0.c0.f13016j = i28;
                u0.d.D2(l0.c0.e1(bArr[i21]));
                u0.d.E2(l0.c0.e1(bArr[i23]));
                u0.d.F2(l0.c0.e1(bArr[i25]));
                u0.d.G2(l0.c0.e1(bArr[i27]));
                break;
            case 36:
                byte b7 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b7 >> 7) & 1);
                    qt.y0(2, (b7 >> 6) & 1);
                } else {
                    qt.y0(1, (b7 >> 6) & 1);
                    qt.y0(2, (b7 >> 7) & 1);
                }
                qt.y0(3, (b7 >> 4) & 1);
                qt.y0(4, (b7 >> 5) & 1);
                qt.y0(5, (b7 >> 3) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f8920h);
        o1.y yVar = u0.c.f17386m;
        yVar.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        w0.e.f17815a.d(this.f8919g);
        w0.e.f17819e.d(this.f8919g);
        u0.c.f17374a.d(this.f8919g);
        u0.c.f17392s.d(this.f8919g);
        yVar.d(this.f8919g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 131) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 199, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
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
        if (i2 == 3) {
            c3();
            return;
        }
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -125, 1, 5);
            return;
        }
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            z.k.s(227, -125, 1, iArr[0] + 1);
        }
    }

    public final void a3(int i2, int i3) {
        if (i3 == 0) {
            z.k.s(227, -57, 6, i2, 0, 0, 0, 0, 0);
        } else if (i3 == 1) {
            z.k.s(227, -57, 6, 0, i2, 0, 0, 0, 0);
        } else if (i3 == 2) {
            z.k.s(227, -57, 6, 0, 0, i2, 0, 0, 0);
        } else if (i3 == 3) {
            z.k.s(227, -57, 6, 0, 0, 0, i2, 0, 0);
        } else if (i3 == 4) {
            z.k.s(227, -57, 6, 0, 0, 0, 0, i2, 0);
        } else if (i3 == 5) {
            z.k.s(227, -57, 6, 0, 0, 0, 0, 0, i2);
        }
        a.i.a0(50L);
        z.k.s(227, -57, 6, 0, 0, 0, 0, 0, 0);
    }

    public final void c3() {
        try {
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.wc.ruijie15.ODZotyeT700FrontAirControlAct_SP");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void d3() {
        try {
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.od.dongnanv5.OD_Zotye_T700_Pm25");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
