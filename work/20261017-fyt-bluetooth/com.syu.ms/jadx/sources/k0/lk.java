package k0;

import android.content.Intent;
import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class lk extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7713b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7716e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7714c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7715d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7717f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7718g = {new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{9, 12}, new int[]{40, 18}, new int[]{43, 5}, new int[]{55, 55}, new int[]{84, 2}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7719h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7720i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7721j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7722k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7723l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f7724m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f7725n = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            lk lkVar = lk.this;
            lkVar.f7720i = 0;
            lkVar.f7721j = 0;
            l0.b0.b(lkVar.f7724m);
            lk.this.f7722k = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            lk lkVar = lk.this;
            int i2 = lkVar.f7722k - 1;
            lkVar.f7722k = i2;
            if (i2 > 0) {
                int i3 = u0.b.f17306a0;
            } else {
                l0.b0.p0(lkVar.f7724m);
                lk.this.f7722k = 5;
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
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 0);
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
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        qt.z(this.f7725n);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        int[][] iArr2;
        int i7;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            int i8 = i2 + 2;
            qt.y0(10, (bArr[i8] >> 6) & 1);
            qt.y0(13, (bArr[i8] >> 3) & 1);
            int i9 = i2 + 3;
            qt.y0(52, (bArr[i9] >> 7) & 1);
            qt.y0(11, (bArr[i9] >> 6) & 1);
            qt.y0(12, (bArr[i9] >> 3) & 3);
            int i10 = i2 + 4;
            qt.y0(16, (bArr[i10] >> 5) & 1);
            qt.y0(65, (bArr[i10] >> 4) & 1);
            int i11 = bArr[i2 + 6] & 255;
            if (i11 == 3) {
                i4 = 1;
                i5 = 0;
                i6 = 0;
            } else if (i11 == 5) {
                i6 = 1;
                i4 = 1;
                i5 = 0;
            } else if (i11 != 6) {
                if (i11 == 11) {
                    i5 = 1;
                    i6 = 0;
                } else if (i11 != 12) {
                    i5 = 0;
                    i6 = 0;
                } else {
                    i5 = 1;
                    i4 = 1;
                    i6 = 0;
                }
                i4 = i6;
            } else {
                i6 = 1;
                i5 = 0;
                i4 = 0;
            }
            qt.y0(18, i5);
            qt.y0(19, i6);
            qt.y0(20, i4);
            qt.y0(21, bArr[i2 + 7] & 255);
            qt.y0(27, bArr[i2 + 8] & 255);
            u0.d.A3(((bArr[i2 + 13] & 255) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            return;
        }
        if (b2 == 65) {
            u0.d.R2(l0.c0.U0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.U0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.U0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.U0(bArr[i2 + 5] & 255));
            int i12 = i2 + 6;
            int i13 = bArr[i12] & 255;
            int i14 = i2 + 7;
            int i15 = bArr[i14] & 255;
            int i16 = i2 + 8;
            int i17 = bArr[i16] & 255;
            int i18 = i2 + 9;
            int i19 = bArr[i18] & 255;
            if (i13 == 255 && i15 == 255 && i17 == 255 && i19 == 255) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i13 || l0.c0.f13014h != i15 || l0.c0.f13015i != i17 || l0.c0.f13016j != i19) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i13;
            l0.c0.f13014h = i15;
            l0.c0.f13015i = i17;
            l0.c0.f13016j = i19;
            u0.d.D2(l0.c0.h1(bArr[i12] & 255));
            u0.d.E2(l0.c0.C1(bArr[i14] & 255));
            u0.d.F2(l0.c0.C1(bArr[i16] & 255));
            u0.d.G2(l0.c0.h1(bArr[i18] & 255));
            return;
        }
        if (b2 == 97) {
            int i20 = i2 + 8;
            qt.y0(101, ((bArr[i20] >> 4) & 1) + 1);
            qt.y0(98, (bArr[i20] >> 5) & 7);
            int i21 = i2 + 9;
            qt.y0(99, (bArr[i21] >> 0) & 1);
            qt.y0(100, (bArr[i21] >> 1) & 1);
            return;
        }
        if (b2 == 17) {
            int i22 = (bArr[i2 + 2] >> 7) & 1;
            if (this.f7719h != i22) {
                if (i22 == 1) {
                    if (!qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                        a3();
                        if (y0.f.f18055i != 1) {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                } else if (i22 == 0 && qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                    if (y0.f.f18055i == 1) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                }
                this.f7719h = i22;
            }
            byte b3 = bArr[i2 + 4];
            byte b4 = bArr[i2 + 5];
            this.f7714c = b3 & 255;
            int i23 = 0;
            while (true) {
                iArr = this.f7715d;
                if (i23 >= iArr.length) {
                    break;
                }
                int i24 = this.f7714c;
                if (i24 == iArr[i23][0]) {
                    if (i24 == 0) {
                        break;
                    }
                    this.f7713b = i23;
                    break;
                }
                i23++;
            }
            int i25 = this.f7714c;
            if (i25 != 3) {
                if (i25 != 4) {
                    if (i25 != 5) {
                        if ((b4 & 255) == 0) {
                            int i26 = this.f7713b;
                            if (i26 < iArr.length && i26 != 255) {
                                l0.b0.l0(iArr[i26][1], 1);
                            }
                            this.f7713b = 255;
                        } else if (i23 < iArr.length) {
                            l0.b0.l0(iArr[i23][1], 0);
                        }
                    } else if ((b4 & 255) == 1) {
                        int i27 = h0.c.E;
                        if (i27 == 3 || i27 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                    }
                } else if ((b4 & 255) == 1) {
                    if (h0.c.E != 4) {
                        l0.b0.l0(13, 0);
                        l0.b0.l0(13, 1);
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    }
                }
            } else if ((b4 & 255) == 1) {
                int i28 = h0.c.E;
                if (i28 == 3 || i28 == 4 || i28 == 5) {
                    l0.b0.l0(26, 0);
                    l0.b0.l0(26, 1);
                } else {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                }
            }
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            return;
        }
        if (b2 == 18) {
            byte b5 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            } else {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            }
            qt.y0(3, (b5 >> 5) & 1);
            qt.y0(4, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            return;
        }
        if (b2 == 33) {
            this.f7716e = bArr[i2 + 2] & 255;
            byte b6 = bArr[i2 + 3];
            int i29 = 0;
            while (true) {
                iArr2 = this.f7718g;
                if (i29 >= iArr2.length) {
                    break;
                }
                int i30 = this.f7716e;
                if (i30 == iArr2[i29][0]) {
                    if (i30 == 0) {
                        break;
                    }
                    this.f7717f = i29;
                    break;
                }
                i29++;
            }
            if ((b6 & 255) != 0) {
                if (i29 < iArr2.length) {
                    l0.b0.l0(iArr2[i29][1], 0);
                    return;
                }
                int i31 = this.f7717f;
                if (i31 < iArr2.length && i31 != 255) {
                    l0.b0.l0(iArr2[i31][1], 1);
                }
                this.f7717f = 255;
                return;
            }
            return;
        }
        if (b2 == 34 && nt.a()) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            if (b7 == 1) {
                int i32 = this.f7720i;
                if (b8 != i32) {
                    if (b8 > i32) {
                        for (int i33 = 0; i33 < b8 - this.f7720i; i33++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (b8 < i32) {
                        for (int i34 = 0; i34 < this.f7720i - b8; i34++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    this.f7720i = b8;
                    return;
                }
                return;
            }
            if ((b7 == 2 || b7 == 3 || b7 == 4 || b7 == 5) && b8 != (i7 = this.f7721j)) {
                if (b8 > i7) {
                    for (int i35 = 0; i35 < b8 - this.f7721j; i35++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if (b8 < i7) {
                    for (int i36 = 0; i36 < this.f7721j - b8; i36++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                }
                this.f7721j = b8;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f7725n);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 102) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
    }

    public final void a3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.xiandai.XiandaiSosPage");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
