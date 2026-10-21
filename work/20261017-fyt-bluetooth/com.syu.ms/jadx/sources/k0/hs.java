package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class hs extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6145b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6148e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6146c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6147d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 62}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6149f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f6150g = {new int[]{1, 25}, new int[]{2, 1}, new int[]{3, 12}, new int[]{4, 18}, new int[]{5, 2}, new int[]{6, 5}, new int[]{7, 6}, new int[]{8, 21}, new int[]{9, 54}, new int[]{10, 29}, new int[]{11, 3}, new int[]{12, 4}, new int[]{13, 38}, new int[]{14, 8}, new int[]{15, 7}, new int[]{16, 55}, new int[]{17, 3}, new int[]{18, 4}, new int[]{19, 1}, new int[]{20, 18}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6151h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f6152i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f6153j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f6154k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f6155l = new d();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f6156m = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(hs.this.f6153j);
            hs.this.f6151h = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hs hsVar = hs.this;
            int i2 = hsVar.f6151h - 1;
            hsVar.f6151h = i2;
            if (i2 <= 0) {
                l0.b0.p0(hsVar.f6153j);
                hs.this.f6151h = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 1, 127);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 1, 48);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hs.this.a3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 130, 6, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay, (byte) time.hour, (byte) time.minute, 0);
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
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        z.k.s(227, 131, 2, 168, 1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    z.k.s(227, 131, 2, 160, 1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        z.k.s(227, 131, 2, 164, 0);
                    }
                } else if (nt.f8645g[11] == 0) {
                    z.k.s(227, 131, 2, 164, 1);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        z.k.s(227, 131, 2, 169, 0);
                    }
                } else if (nt.f8645g[13] == 0) {
                    z.k.s(227, 131, 2, 169, 1);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        z.k.s(227, 131, 2, 165, 1);
                    }
                } else if (nt.f8645g[12] == 0) {
                    z.k.s(227, 131, 2, 165, 0);
                }
                break;
            case 39:
                int i3 = iArr[1];
                if (i3 == -2) {
                    z.k.s(227, 131, 2, 160, 0);
                    break;
                } else if (i3 == -1) {
                    z.k.s(227, 131, 2, 160, 1);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    z.k.s(227, 131, 2, 161, 0);
                } else {
                    z.k.s(227, 131, 2, 161, 1);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    z.k.s(227, 131, 2, 162, 0);
                } else {
                    z.k.s(227, 131, 2, 162, 1);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8319n = 0;
        mtVar.f8323r = 0;
        mtVar.f8322q = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        qt.z(this.f6156m);
        w0.e.f17815a.a(this.f6155l, 1);
        l0.b0.b(this.f6155l);
        qt.x(this.f6154k);
        u0.c.f17386m.a(this.f6152i, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 39, 41, 42, 55, 56, 67};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        int i7 = bArr[i2] & 255;
        if (i7 == 40) {
            int i8 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i8 >> 6) & 1);
                qt.y0(1, (i8 >> 7) & 1);
            } else {
                qt.y0(2, (i8 >> 7) & 1);
                qt.y0(1, (i8 >> 6) & 1);
            }
            qt.y0(4, (i8 >> 5) & 1);
            qt.y0(3, (i8 >> 4) & 1);
            qt.y0(0, (i8 >> 2) & 1);
            qt.y0(5, (i8 >> 3) & 1);
        }
        if (i7 == 48) {
            qt.m(bArr[i2 + 3], bArr[i2 + 2], 7680, false, 5800);
            return;
        }
        if (i7 == 54) {
            int i9 = bArr[i2 + 2] & 255;
            if (i9 == 0 || i9 == 255) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3((i9 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (i7 == 64) {
            int i10 = i2 + 2;
            byte b2 = bArr[i10];
            int i11 = i2 + 3;
            byte b3 = bArr[i11];
            int i12 = i2 + 4;
            byte b4 = bArr[i12];
            int i13 = i2 + 5;
            byte b5 = bArr[i13];
            int i14 = i2 + 6;
            byte b6 = bArr[i14];
            qt.y0(98, (bArr[i10] >> 6) & 3);
            qt.y0(99, (bArr[i10] >> 5) & 1);
            qt.y0(100, (bArr[i10] >> 4) & 1);
            qt.y0(101, (bArr[i10] >> 3) & 1);
            qt.y0(102, (bArr[i10] >> 2) & 1);
            qt.y0(103, bArr[i11] & 255);
            qt.y0(104, bArr[i12] & 255);
            qt.y0(105, (bArr[i13] >> 7) & 1);
            qt.y0(106, (bArr[i13] >> 5) & 3);
            qt.y0(107, (bArr[i13] >> 3) & 3);
            qt.y0(108, (bArr[i13] >> 2) & 1);
            qt.y0(109, bArr[i14] & 255);
            return;
        }
        if (i7 == 125) {
            int i15 = bArr[i2 + 2] & 255;
            if (i15 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i16 = i2 + 3;
                    l0.c0.b((bArr[i16] >> 3) & 1, (bArr[i16] >> 4) & 1, 0);
                    return;
                } else {
                    int i17 = i2 + 3;
                    l0.c0.a((bArr[i17] >> 3) & 1, (bArr[i17] >> 4) & 1, 0);
                    return;
                }
            }
            if (i15 != 3) {
                if (i15 != 4) {
                    return;
                }
                o1.x.C(nt.f8643f, 1049, new int[]{5, ((bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280)) / 10}, null, null);
                return;
            } else {
                int i18 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i18);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i18}, null, null);
                return;
            }
        }
        if (i7 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (i7) {
            case 33:
                if (nt.a()) {
                    byte b7 = bArr[i2 + 2];
                    byte b8 = bArr[i2 + 3];
                    this.f6146c = b7 & 255;
                    int i19 = 0;
                    while (true) {
                        iArr = this.f6147d;
                        if (i19 < iArr.length) {
                            int i20 = this.f6146c;
                            if (i20 != iArr[i19][0]) {
                                i19++;
                            } else if (i20 != 0) {
                                this.f6145b = i19;
                            }
                        }
                    }
                    int i21 = b8 & 255;
                    if (i21 != 1) {
                        if (i21 == 0) {
                            int i22 = this.f6145b;
                            if (i22 < iArr.length && i22 != 255) {
                                l0.b0.l0(iArr[i22][1], 1);
                            }
                            this.f6145b = 255;
                        }
                    } else if (i19 < iArr.length) {
                        l0.b0.l0(iArr[i19][1], 0);
                    }
                }
                break;
            case 34:
                byte b9 = bArr[i2 + 2];
                byte b10 = bArr[i2 + 3];
                this.f6149f = b9 & 255;
                int i23 = 0;
                while (true) {
                    iArr2 = this.f6150g;
                    if (i23 < iArr2.length) {
                        int i24 = this.f6149f;
                        if (i24 != iArr2[i23][0]) {
                            i23++;
                        } else if (i24 != 0) {
                            this.f6148e = i23;
                        }
                    }
                }
                int i25 = b10 & 255;
                if (i25 != 1) {
                    if (i25 == 0) {
                        int i26 = this.f6148e;
                        if (i26 < iArr2.length && i26 != 255) {
                            l0.b0.l0(iArr2[i26][1], 1);
                        }
                        this.f6148e = 255;
                    }
                } else if (i23 < iArr2.length) {
                    l0.b0.l0(iArr2[i23][1], 0);
                }
                break;
            case 35:
                int i27 = bArr[i2 + 2] & 255;
                int i28 = bArr[i2 + 3] & 255;
                int i29 = bArr[i2 + 4] & 255;
                int i30 = i2 + 5;
                int i31 = bArr[i30] & 255;
                int i32 = i2 + 6;
                int i33 = bArr[i32] & 255;
                int i34 = i2 + 7;
                byte b11 = bArr[i34];
                qt.y0(10, (i27 >> 7) & 1);
                qt.y0(11, (i27 >> 6) & 1);
                qt.y0(12, (i27 >> 5) & 1);
                qt.y0(53, (i27 >> 4) & 1);
                qt.y0(13, (i27 >> 3) & 1);
                qt.y0(62, (i27 >> 2) & 1);
                qt.y0(16, (i27 >> 1) & 1);
                qt.y0(15, (i27 >> 0) & 1);
                if (i28 == 0) {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                } else if (i28 == 1) {
                    i5 = 0;
                    i6 = 1;
                    i4 = 1;
                } else if (i28 != 2) {
                    if (i28 != 3) {
                        i6 = 0;
                        i4 = 0;
                    } else {
                        i6 = 0;
                        i4 = 1;
                    }
                    i5 = i4;
                } else {
                    i6 = 0;
                    i5 = 0;
                    i4 = 1;
                }
                qt.y0(19, i6);
                qt.y0(20, i4);
                qt.y0(18, i5);
                qt.y0(21, i29 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i31 = bArr[i32] & 255;
                    i33 = bArr[i30] & 255;
                }
                if (i31 == 0) {
                    qt.y0(27, -2);
                } else if (i31 == 254) {
                    qt.y0(27, -1);
                } else if (i31 != 255) {
                    qt.y0(27, i31 * 10);
                } else {
                    qt.y0(27, -3);
                }
                if (i33 == 0) {
                    qt.y0(28, -2);
                } else if (i33 == 254) {
                    qt.y0(28, -1);
                } else if (i33 != 255) {
                    qt.y0(28, i33 * 10);
                } else {
                    qt.y0(28, -3);
                }
                qt.y0(29, (bArr[i34] >> 4) & 15);
                qt.y0(30, 15 & (bArr[i34] >> 0));
                int i35 = i2 + 8;
                qt.y0(54, (bArr[i35] >> 1) & 1);
                qt.y0(58, (bArr[i35] >> 0) & 1);
                break;
            case 36:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 37:
                int i36 = i2 + 2;
                int i37 = bArr[i36] & 255;
                int i38 = i2 + 3;
                int i39 = bArr[i38] & 255;
                int i40 = i2 + 4;
                int i41 = bArr[i40] & 255;
                int i42 = i2 + 5;
                int i43 = bArr[i42] & 255;
                if (i37 == 0 && i39 == 0 && i41 == 0 && i43 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i37 || l0.c0.f13014h != i39 || l0.c0.f13015i != i41 || l0.c0.f13016j != i43) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i37;
                l0.c0.f13014h = i39;
                l0.c0.f13015i = i41;
                l0.c0.f13016j = i43;
                u0.d.D2(l0.c0.E0(bArr[i36] & 255));
                u0.d.E2(l0.c0.E0(bArr[i38] & 255));
                u0.d.F2(l0.c0.E0(bArr[i40] & 255));
                u0.d.G2(l0.c0.E0(bArr[i42] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f6156m);
        w0.e.f17815a.d(this.f6155l);
        l0.b0.p0(this.f6155l);
        qt.o0(this.f6154k);
        u0.c.f17386m.d(this.f6152i);
        l0.b0.p0(this.f6153j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 110) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 128, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length < 1) {
                return;
            }
            z.k.s(227, 144, 1, iArr[0]);
            return;
        }
        if (i2 != 1029) {
            return;
        }
        int iW = (iArr[1] * 1024) / a.f.w();
        int i3 = (iArr[2] * 1000) / a.f.i();
        if (iArr[0] == 1) {
            z.k.s(227, 152, 6, 1, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
        }
    }

    public final void a3() {
        if (u0.b.D != 1) {
            if (u0.b.f17306a0 == 0) {
                z.k.s(227, 192, 2, 0, 0);
                return;
            } else {
                z.k.s(227, 192, 2, 255, 0);
                return;
            }
        }
        int i2 = w0.d.f17796h;
        int i3 = (i2 == 0 || i2 == 1) ? 16 : 0;
        int i4 = w0.d.f17797i;
        z.k.s(227, 192, 5, 1, 1, i3, i4 & 255, (i4 >> 8) & 255);
    }
}
