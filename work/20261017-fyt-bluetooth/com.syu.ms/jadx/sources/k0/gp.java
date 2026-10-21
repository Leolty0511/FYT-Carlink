package k0;

import android.app.ActivityManager;
import android.content.Intent;
import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class gp extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5620b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5621c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5622d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 18}, new int[]{7, 12}, new int[]{33, 40}, new int[]{34, 54}, new int[]{35, 1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5623e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5624f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f5625g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5626h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5627i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f5628j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f5629k = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.H();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(gp.this.f5628j);
            gp.this.f5626h = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gp gpVar = gp.this;
            int i2 = gpVar.f5626h - 1;
            gpVar.f5626h = i2;
            if (i2 <= 0) {
                l0.b0.p0(gpVar.f5628j);
                gp.this.f5626h = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 2163141:
                        z.k.s(227, 198, 2, 40, 2);
                        break;
                    case 2294213:
                        z.k.s(227, 198, 2, 40, 0);
                        break;
                    case 6947270:
                        z.k.s(227, 198, 2, 40, 3);
                        break;
                    case 7012806:
                        z.k.s(227, 198, 2, 40, 1);
                        break;
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
            z.k.s(227, -58, 6, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay, time.hour, time.minute, (!DateFormat.is24HourFormat(App.c()) ? 1 : 0) << 6);
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
        mtVar.f8314i = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        w0.e.f17815a.a(this.f5625g, 1);
        w0.e.f17819e.a(this.f5625g, 1);
        u0.c.f17393t.a(this.f5625g, 1);
        u0.c.f17392s.a(this.f5625g, 1);
        u0.c.f17374a.a(this.f5625g, 1);
        u0.c.f17386m.a(this.f5627i, 1);
        qt.z(this.f5629k);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f5621c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f5622d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f5621c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f5620b = i4;
                    break;
                }
                i4++;
            }
            int i6 = b4 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f5620b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f5620b = 255;
                }
                return;
            }
        }
        if (b2 == 39) {
            int i8 = i2 + 2;
            qt.y0(10, (bArr[i8] >> 7) & 1);
            qt.y0(11, (bArr[i8] >> 6) & 1);
            qt.y0(12, (bArr[i8] >> 5) & 1);
            qt.y0(13, (bArr[i8] >> 4) & 1);
            qt.y0(14, (bArr[i8] >> 2) & 1);
            qt.y0(15, (bArr[i8] >> 1) & 1);
            qt.y0(16, (bArr[i8] >> 0) & 1);
            int i9 = i2 + 3;
            qt.y0(18, (bArr[i9] >> 7) & 1);
            qt.y0(19, (bArr[i9] >> 6) & 1);
            qt.y0(20, (bArr[i9] >> 5) & 1);
            qt.y0(49, (bArr[i9] >> 5) & 1);
            qt.y0(21, (bArr[i9] >> 0) & 15);
            int i10 = i2 + 4;
            int i11 = bArr[i10] & 255;
            int i12 = i2 + 5;
            int i13 = bArr[i12] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i11 = bArr[i12] & 255;
                i13 = bArr[i10] & 255;
            }
            if (i11 == 0) {
                qt.y0(27, -2);
            } else if (i11 == 127) {
                qt.y0(27, -1);
            } else if (i11 != 255) {
                qt.y0(27, i11);
            } else {
                qt.y0(27, -3);
            }
            if (i13 == 0) {
                qt.y0(28, -2);
            } else if (i13 == 127) {
                qt.y0(28, -1);
            } else if (i13 != 255) {
                qt.y0(28, i13);
            } else {
                qt.y0(28, -3);
            }
            int i14 = i2 + 6;
            qt.y0(54, (bArr[i14] >> 7) & 1);
            qt.y0(52, (bArr[i14] >> 6) & 1);
            qt.y0(74, (bArr[i14] >> 5) & 1);
            qt.y0(33, (bArr[i14] >> 4) & 1);
            qt.y0(37, (bArr[i14] >> 3) & 1);
            int i15 = i2 + 7;
            qt.y0(29, (bArr[i15] >> 4) & 15);
            qt.y0(30, (bArr[i15] >> 0) & 15);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 7800);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 53) {
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i16 = i2 + 2;
                l0.c0.b((bArr[i16] >> 5) & 1, (bArr[i16] >> 4) & 1, 0);
            } else {
                int i17 = i2 + 2;
                l0.c0.a((bArr[i17] >> 5) & 1, (bArr[i17] >> 4) & 1, 0);
            }
            qt.y0(121, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(122, ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(123, bArr[i2 + 12] & 255);
            int i18 = i2 + 13;
            qt.y0(124, (bArr[i18] >> 7) & 1);
            qt.y0(125, (bArr[i18] >> 6) & 1);
            int i19 = bArr[i2 + 8] & 255;
            int i20 = SystemProperties.getInt("persist.fyt.temperature", 0);
            if (i19 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.B3(i20 == 1 ? (((i19 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i19 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 54) {
            qt.y0(126, ((bArr[i2 + 2] << 8) & 65280) | (255 & bArr[i2 + 3]));
            qt.y0(127, bArr[i2 + 4]);
            qt.y0(128, bArr[i2 + 5]);
            qt.y0(129, bArr[i2 + 6]);
            return;
        }
        if (b2 == 56) {
            int i21 = i2 + 2;
            qt.y0(98, (bArr[i21] >> 0) & 1);
            qt.y0(99, (bArr[i21] >> 1) & 1);
            qt.y0(100, (bArr[i21] >> 2) & 3);
            qt.y0(101, (bArr[i21] >> 4) & 3);
            qt.y0(102, (bArr[i21] >> 6) & 3);
            int i22 = i2 + 3;
            qt.y0(103, (bArr[i22] >> 0) & 3);
            qt.y0(104, (bArr[i22] >> 3) & 1);
            int i23 = i2 + 4;
            qt.y0(105, (bArr[i23] >> 0) & 1);
            qt.y0(106, (bArr[i23] >> 1) & 3);
            qt.y0(107, (bArr[i23] >> 3) & 1);
            qt.y0(108, (bArr[i23] >> 4) & 1);
            qt.y0(109, (bArr[i23] >> 5) & 3);
            qt.y0(110, (bArr[i23] >> 7) & 1);
            int i24 = i2 + 5;
            qt.y0(111, (bArr[i24] >> 0) & 1);
            qt.y0(112, (bArr[i24] >> 1) & 1);
            qt.y0(113, (bArr[i24] >> 2) & 1);
            qt.y0(114, (bArr[i24] >> 3) & 1);
            qt.y0(115, (bArr[i24] >> 4) & 1);
            qt.y0(116, 3 & (bArr[i24] >> 5));
            qt.y0(117, (bArr[i24] >> 7) & 1);
            qt.y0(118, (bArr[i2 + 6] >> 0) & 255);
            qt.y0(119, (bArr[i2 + 7] >> 0) & 255);
            return;
        }
        if (b2 == 57) {
            int i25 = i2 + 2;
            qt.y0(120, 255 & bArr[i25]);
            if (this.f5623e != bArr[i25]) {
                byte b5 = bArr[i25];
                this.f5623e = b5;
                if (b5 != 0) {
                    if (a3().equals("com.syu.carinfo.rzc.sanlin.LZGmAllOnstar")) {
                        return;
                    }
                    b3();
                    this.f5624f = true;
                    return;
                }
                if (a3().equals("com.syu.carinfo.rzc.sanlin.LZGmAllOnstar") && this.f5624f) {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                    return;
                }
                return;
            }
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i26 = i2 + 2;
                int i27 = bArr[i26] & 255;
                int i28 = i2 + 3;
                int i29 = bArr[i28] & 255;
                int i30 = i2 + 4;
                int i31 = bArr[i30] & 255;
                int i32 = i2 + 5;
                int i33 = bArr[i32] & 255;
                if (i27 == 0 && i29 == 0 && i31 == 0 && i33 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i27 || l0.c0.f13014h != i29 || l0.c0.f13015i != i31 || l0.c0.f13016j != i33) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i27;
                l0.c0.f13014h = i29;
                l0.c0.f13015i = i31;
                l0.c0.f13016j = i33;
                u0.d.D2(l0.c0.E0(bArr[i26] & 255));
                u0.d.E2(l0.c0.E0(bArr[i28] & 255));
                u0.d.F2(l0.c0.E0(bArr[i30] & 255));
                u0.d.G2(l0.c0.E0(bArr[i32] & 255));
                break;
            case 36:
                byte b6 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b6 >> 7) & 1);
                    qt.y0(2, (b6 >> 6) & 1);
                } else {
                    qt.y0(1, (b6 >> 6) & 1);
                    qt.y0(2, (b6 >> 7) & 1);
                }
                qt.y0(4, (b6 >> 5) & 1);
                qt.y0(3, (b6 >> 4) & 1);
                qt.y0(5, (b6 >> 3) & 1);
                qt.y0(0, (b6 >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f5627i);
        l0.b0.p0(this.f5628j);
        qt.q0(this.f5629k);
        w0.e.f17815a.d(this.f5625g);
        w0.e.f17819e.d(this.f5625g);
        u0.c.f17393t.d(this.f5625g);
        u0.c.f17392s.d(this.f5625g);
        u0.c.f17374a.d(this.f5625g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 130) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 200, 2, iArr[0], iArr[1]);
        }
    }

    public String a3() {
        List<ActivityManager.RunningTaskInfo> runningTasks = a.f.d().getRunningTasks(2);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        try {
            return runningTasks.get(0).topActivity.getClassName();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final void b3() {
        if (a3().equals("com.syu.carinfo.rzc.sanlin.LZGmAllOnstar")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.sanlin.LZGmAllOnstar");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }
}
