package k0;

import android.app.ActivityManager;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.ProxyProperties;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import app.App;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ok extends lt {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f8880u;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8882c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8885f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f8881b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8883d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f8884e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{16, 6}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8886g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f8887h = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{8, 54}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 16}, new int[]{22, 29}, new int[]{23, 30}, new int[]{24, 31}, new int[]{44, 2}, new int[]{47, 9}, new int[]{49, 14}, new int[]{55, 1}, new int[]{61, 54}, new int[]{71, 74}, new int[]{72, 75}, new int[]{75, 21}, new int[]{76, 18}, new int[]{97, 63}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8888i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8889j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f8890k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8891l = 255;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f8892m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f8893n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f8894o = new c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f8895p = new d();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public byte f8896q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f8897r = new e();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public o1.g0 f8898s = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f8899t = 1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ok okVar = ok.this;
            okVar.f8888i = 0;
            okVar.f8889j = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = ok.this.f8891l;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 == 13) {
                    z.k.s(227, 2, i.a.Theme_actionModeWebSearchDrawable, 1, 7);
                } else if (i2 == 13) {
                    z.k.s(227, 2, i.a.Theme_actionModeWebSearchDrawable, 1, 5);
                }
                ok.this.f8891l = u0.b.D;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ok.this.f8895p);
            ok okVar = ok.this;
            okVar.f8893n = 5;
            okVar.f8888i = 0;
            okVar.f8889j = 0;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ok okVar = ok.this;
            int i2 = okVar.f8893n - 1;
            okVar.f8893n = i2;
            if (i2 > 0) {
                return;
            }
            l0.b0.p0(okVar.f8895p);
            ok.this.f8893n = 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ok okVar = ok.this;
            byte b2 = (byte) (okVar.f8896q + 1);
            okVar.f8896q = b2;
            if (b2 > 5) {
                l0.b0.o0(okVar.f8897r);
                ok.this.f8896q = (byte) 0;
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
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        u0.c.f17386m.a(this.f8894o, 1);
        this.f8898s.a();
        d3(this.f8898s.b(1, 0));
        if (nt.f8637c == 108) {
            u0.c.f17374a.a(this.f8892m, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        String str;
        int[][] iArr;
        byte b2;
        int[][] iArr2;
        int i4;
        byte b3 = bArr[i2 + 1];
        if (b3 == -90) {
            qt.y0(134, bArr[i2 + 2] & 255);
            return;
        }
        if (b3 == -48) {
            int i5 = i2 + 3;
            qt.y0(118, (bArr[i5] >> 4) & 15);
            qt.y0(119, (bArr[i5] >> 1) & 7);
            qt.y0(120, (bArr[i5] >> 0) & 1);
            if (((bArr[i5] >> 1) & 7) == 1) {
                try {
                    str = new String(bArr, i2 + 4, 16, "UTF-16LE");
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                    str = ProxyProperties.LOCAL_EXCL_LIST;
                }
            } else {
                str = new String(bArr, i2 + 4, 16, Charset.forName("ascii"));
            }
            int i6 = (bArr[i5] >> 4) & 15;
            if (i6 == 1) {
                qt.x0(121, str);
            } else if (i6 == 2) {
                qt.x0(122, str);
            } else if (i6 == 3) {
                qt.x0(123, str);
            } else if (i6 == 4) {
                qt.x0(124, str);
            }
            int i7 = i2 + 20;
            qt.y0(125, (bArr[i7] >> 7) & 1);
            qt.y0(126, (bArr[i7] >> 6) & 1);
            qt.y0(127, (bArr[i7] >> 5) & 1);
            qt.y0(128, (bArr[i2 + 21] >> 0) & 15);
            int i8 = i2 + 22;
            qt.y0(129, (bArr[i8] >> 7) & 1);
            qt.y0(130, (bArr[i8] >> 0) & 15);
            int i9 = i2 + 23;
            qt.y0(131, (bArr[i9] >> 7) & 1);
            qt.y0(132, (bArr[i9] >> 3) & 7);
            qt.y0(133, (bArr[i9] >> 0) & 7);
            return;
        }
        if (b3 == -24) {
            qt.y0(Process.MEDIA_UID, (bArr[i2 + 3] & 255) - 1);
            return;
        }
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 65) {
            u0.d.R2(l0.h0.q(bArr[i2 + 2] & 255));
            u0.d.S2(l0.h0.q(bArr[i2 + 3] & 255));
            u0.d.T2(l0.h0.q(bArr[i2 + 4] & 255));
            u0.d.U2(l0.h0.q(bArr[i2 + 5] & 255));
            return;
        }
        if (b3 == 17) {
            this.f8883d = bArr[i2 + 4] & 255;
            int i10 = 0;
            while (true) {
                iArr = this.f8884e;
                if (i10 >= iArr.length) {
                    break;
                }
                int i11 = this.f8883d;
                if (i11 == iArr[i10][0]) {
                    if (i11 == 0) {
                        break;
                    }
                    this.f8882c = i10;
                    break;
                }
                i10++;
            }
            if (this.f8883d != 0 && (bArr[i2 + 5] & 255) != 0) {
                if (i10 >= iArr.length || (b2 = this.f8896q) != 0) {
                    return;
                }
                this.f8896q = (byte) (b2 + 1);
                l0.b0.l0(iArr[i10][1], 0);
                l0.b0.a(this.f8897r);
                return;
            }
            int i12 = this.f8882c;
            if (i12 != 255 && (bArr[i2 + 5] & 255) == 0) {
                l0.b0.l0(iArr[i12][1], 1);
                l0.b0.o0(this.f8897r);
                this.f8896q = (byte) 0;
            }
            this.f8882c = 255;
            return;
        }
        if (b3 == 18) {
            byte b4 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b4 >> 6) & 1);
                qt.y0(2, (b4 >> 7) & 1);
            } else {
                qt.y0(1, (b4 >> 7) & 1);
                qt.y0(2, (b4 >> 6) & 1);
            }
            qt.y0(3, (b4 >> 5) & 1);
            qt.y0(4, (b4 >> 4) & 1);
            qt.y0(5, (b4 >> 3) & 1);
            qt.y0(0, (b4 >> 2) & 1);
            return;
        }
        if (b3 == 22) {
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
            qt.y0(100, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
            qt.y0(101, ((bArr[i2 + 7] & 255) << 8) | (bArr[i2 + 8] & 255));
            qt.y0(102, ((bArr[i2 + 9] & 255) << 16) | ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
            qt.y0(103, ((bArr[i2 + 12] & 255) << 8) | (bArr[i2 + 13] & 255));
            byte b5 = bArr[i2 + 14];
            qt.y0(104, b5 & 3 & 255);
            qt.y0(105, (b5 >> 2) & 3 & 255);
            qt.y0(106, (b5 >> 4) & 3 & 255);
            qt.y0(107, (b5 >> 6) & 1 & 255);
            qt.y0(108, (b5 >> 7) & 1 & 255);
            int i13 = bArr[i2 + 15] & 255;
            if (i13 < 0) {
                i13 = 0;
            } else if (i13 > 10) {
                i13 = 10;
            }
            qt.y0(109, this.f8881b[i13]);
            return;
        }
        if (b3 == 23) {
            qt.y0(110, ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
            qt.y0(111, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
            qt.y0(112, ((bArr[i2 + 7] & 255) << 16) | ((bArr[i2 + 8] & 255) << 8) | (bArr[i2 + 9] & 255));
            qt.y0(113, ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
            qt.y0(114, ((bArr[i2 + 12] & 255) << 16) | ((bArr[i2 + 13] & 255) << 8) | (bArr[i2 + 14] & 255));
            qt.y0(115, (bArr[i2 + 16] & 255) | ((bArr[i2 + 15] & 255) << 8));
            return;
        }
        if (b3 == 33) {
            int i14 = bArr[i2 + 2] & 255;
            int i15 = bArr[i2 + 3] & 255;
            this.f8886g = i14 & 255;
            int i16 = 0;
            while (true) {
                iArr2 = this.f8887h;
                if (i16 >= iArr2.length) {
                    break;
                }
                int i17 = this.f8886g;
                if (i17 == iArr2[i16][0]) {
                    if (i17 == 0) {
                        break;
                    }
                    this.f8885f = i16;
                    break;
                }
                i16++;
            }
            if (this.f8886g == 97) {
                if ((i15 & 255) == 1) {
                    c3();
                    return;
                }
                return;
            }
            int i18 = i15 & 255;
            if (i18 == 1) {
                if (i16 < iArr2.length) {
                    l0.b0.l0(iArr2[i16][1], 0);
                    return;
                }
                return;
            } else {
                if (i18 == 0) {
                    int i19 = this.f8885f;
                    if (i19 < iArr2.length && i19 != 255) {
                        l0.b0.l0(iArr2[i19][1], 1);
                    }
                    this.f8885f = 255;
                    return;
                }
                return;
            }
        }
        if (b3 != 34) {
            return;
        }
        byte b6 = bArr[i2 + 2];
        byte b7 = bArr[i2 + 3];
        if (b6 != 1) {
            if (b6 == 2 && b7 != (i4 = this.f8889j)) {
                if (b7 > i4) {
                    for (int i20 = 0; i20 < b7 - this.f8889j; i20++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if (b7 < i4) {
                    for (int i21 = 0; i21 < this.f8889j - b7; i21++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                }
                this.f8889j = b7;
                return;
            }
            return;
        }
        int i22 = this.f8888i;
        if (b7 != i22) {
            if (b7 > i22) {
                for (int i23 = 0; i23 < b7 - this.f8888i; i23++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
            } else if (b7 < i22) {
                for (int i24 = 0; i24 < this.f8888i - b7; i24++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
            }
            this.f8888i = b7;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f8898s.j();
        u0.c.f17386m.d(this.f8894o);
        l0.b0.p0(this.f8895p);
        u0.c.f17374a.d(this.f8892m);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 135) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            if (iArr[0] <= 2) {
                iArr[0] = iArr[0] + 1;
            }
            if (iArr[0] < 1) {
                iArr[0] = 1;
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            d3(iArr[0]);
        }
    }

    public String b3() {
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

    public final void c3() {
        if (b3().equals("com.syu.carinfo.honda.Act_WC_CarCD_AoDeSai")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.honda.Act_WC_CarCD_AoDeSai");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void d3(int i2) {
        f8880u = i2;
        z.k.s(227, 2, -14, (byte) i2, -1);
        int iB = this.f8898s.b(1, 0);
        int i3 = f8880u;
        if (iB != i3) {
            this.f8898s.g(1, i3);
        }
    }
}
