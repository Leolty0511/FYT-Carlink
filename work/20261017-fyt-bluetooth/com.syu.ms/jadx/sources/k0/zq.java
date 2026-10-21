package k0;

import android.content.Intent;
import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class zq extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12956b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12957c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12958d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 62}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f12959e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 130, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, 0);
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
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(168, 1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(168, 1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(164, 0);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(164, 1);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(169, 0);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(169, 1);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[15] == 1) {
                        a3(164, 1);
                    }
                } else if (nt.f8645g[15] == 0) {
                    a3(163, 4);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(167, 0);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(167, 1);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(165, 1);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(165, 0);
                }
                break;
            case 39:
                int i2 = iArr[1];
                if (i2 == -2) {
                    a3(160, 0);
                    break;
                } else if (i2 == -1) {
                    a3(160, 1);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(161, 0);
                } else {
                    a3(161, 1);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(162, 0);
                } else {
                    a3(162, 1);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f12959e);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2];
        if (b2 == 40) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b3 >> 6) & 1);
                qt.y0(1, (b3 >> 7) & 1);
            } else {
                qt.y0(2, (b3 >> 7) & 1);
                qt.y0(1, (b3 >> 6) & 1);
            }
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 1700);
            return;
        }
        if (b2 == 48) {
            qt.m(bArr[i2 + 3], bArr[i2 + 2], 7680, false, 5800);
            return;
        }
        if (b2 == 56) {
            qt.y0(107, bArr[i2 + 6] & 255);
            qt.y0(108, bArr[i2 + 7] & 255);
            qt.y0(109, bArr[i2 + 8] & 255);
            qt.y0(110, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == 65) {
            int i8 = i2 + 2;
            qt.y0(98, (bArr[i8] >> 7) & 1);
            qt.y0(99, (bArr[i8] >> 6) & 1);
            qt.y0(100, (bArr[i8] >> 5) & 1);
            qt.y0(101, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(102, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(103, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
            int i9 = i2 + 9;
            int i10 = i2 + 10;
            qt.y0(104, ((bArr[i9] << 8) & 65280) | (bArr[i10] & 255));
            int i11 = ((bArr[i9] << 8) & 65280) | (bArr[i10] & 255);
            u0.d.B3((32768 & i11) != 0 ? 1000 - (65536 - i11) : i11 + 1000);
            qt.y0(105, ((bArr[i2 + 11] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(106, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            qt.y0(111, bArr[i2 + 16] & 255);
            qt.y0(112, bArr[i2 + 17] & 255);
            qt.y0(113, bArr[i2 + 19] & 255);
            int i12 = i2 + 18;
            l0.c0.a((bArr[i12] >> 4) & 1, (bArr[i12] >> 5) & 1, 0);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i13 = i2 + 3;
            l0.c0.a((bArr[i13] >> 3) & 1, (bArr[i13] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i13] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 33:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f12957c = b4 & 255;
                int i14 = 0;
                while (true) {
                    iArr = this.f12958d;
                    if (i14 < iArr.length) {
                        int i15 = this.f12957c;
                        if (i15 != iArr[i14][0]) {
                            i14++;
                        } else if (i15 != 0) {
                            this.f12956b = i14;
                        }
                    }
                }
                if (this.f12957c == 10) {
                    if ((b5 & 255) == 1) {
                        if (App.c().getResources().getConfiguration().orientation != 1) {
                            if (!qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_NewAdd_HP")) {
                                l0.b0.l0(62, 0);
                                l0.b0.l0(62, 1);
                            } else if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_NewAdd_HP")) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                            }
                        } else if (!qt.i0().equals("com.syu.carinfo.air.ActivityNewAir")) {
                            b3();
                        } else if (qt.i0().equals("com.syu.carinfo.air.ActivityNewAir")) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                    }
                } else if ((b5 & 255) == 0) {
                    int i16 = this.f12956b;
                    if (i16 < iArr.length) {
                        i4 = 255;
                        if (i16 != 255) {
                            l0.b0.l0(iArr[i16][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f12956b = i4;
                } else if (i14 < iArr.length) {
                    l0.b0.l0(iArr[i14][1], 0);
                }
                break;
            case 34:
            case 36:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i17 = bArr[i2 + 2] & 255;
                int i18 = bArr[i2 + 3] & 255;
                int i19 = bArr[i2 + 4] & 255;
                int i20 = i2 + 5;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 6;
                int i23 = bArr[i22] & 255;
                byte b6 = bArr[i2 + 7];
                qt.y0(10, (i17 >> 7) & 1);
                qt.y0(11, (i17 >> 6) & 1);
                qt.y0(12, (i17 >> 5) & 1);
                qt.y0(53, (i17 >> 4) & 1);
                qt.y0(13, (i17 >> 3) & 1);
                qt.y0(62, (i17 >> 2) & 1);
                qt.y0(16, (i17 >> 1) & 1);
                qt.y0(15, (i17 >> 0) & 1);
                int i24 = 15 & i18;
                if (i24 == 0) {
                    i5 = 0;
                    i6 = 0;
                    i7 = 1;
                } else if (i24 == 1) {
                    i6 = 0;
                    i7 = 1;
                    i5 = 1;
                } else if (i24 != 2) {
                    if (i24 != 3) {
                        i7 = 0;
                        i5 = 0;
                    } else {
                        i7 = 0;
                        i5 = 1;
                    }
                    i6 = i5;
                } else {
                    i7 = 0;
                    i6 = 0;
                    i5 = 1;
                }
                qt.y0(19, i7);
                qt.y0(20, i5);
                qt.y0(18, i6);
                qt.y0(77, i24);
                qt.y0(21, i19 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i21 = bArr[i22] & 255;
                    i23 = bArr[i20] & 255;
                }
                if (i21 == 0) {
                    qt.y0(27, -2);
                } else if (i21 == 254) {
                    qt.y0(27, -1);
                } else if (i21 != 255) {
                    qt.y0(27, i21);
                } else {
                    qt.y0(27, -3);
                }
                if (i23 == 0) {
                    qt.y0(28, -2);
                } else if (i23 == 254) {
                    qt.y0(28, -1);
                } else if (i23 == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i23);
                }
                break;
            case 37:
                int i25 = i2 + 2;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 3;
                int i28 = bArr[i27] & 255;
                int i29 = i2 + 4;
                int i30 = bArr[i29] & 255;
                int i31 = i2 + 5;
                int i32 = bArr[i31] & 255;
                if (i26 == 0 && i28 == 0 && i30 == 0 && i32 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i26 || l0.c0.f13014h != i28 || l0.c0.f13015i != i30 || l0.c0.f13016j != i32) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i26;
                l0.c0.f13014h = i28;
                l0.c0.f13015i = i30;
                l0.c0.f13016j = i32;
                u0.d.D2(l0.c0.E0(bArr[i25] & 255));
                u0.d.E2(l0.c0.E0(bArr[i27] & 255));
                u0.d.F2(l0.c0.E0(bArr[i29] & 255));
                u0.d.G2(l0.c0.E0(bArr[i31] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        qt.q0(this.f12959e);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 114) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2, int i3) {
        z.k.s(227, -125, 2, i2, i3);
    }

    public final void b3() {
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
