package k0;

import android.app.ActivityManager;
import android.content.Intent;
import android.os.SystemProperties;
import app.App;
import java.io.UnsupportedEncodingException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class le extends lt {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f7606l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7608c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7609d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7610e;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public o1.o f7615j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7611f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7612g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{134, 6}, new int[]{137, 12}, new int[]{150, 29}, new int[]{151, 34}, new int[]{152, 35}, new int[]{153, 32}, new int[]{154, 33}, new int[]{160, 1}, new int[]{171, 5}, new int[]{173, 54}, new int[]{212, 2}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7613h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7614i = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f7616k = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            le leVar = le.this;
            leVar.f7613h = 0;
            leVar.f7614i = 0;
        }
    }

    public class b implements o1.o {
        public b() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            le.this.f3();
            return true;
        }
    }

    public static int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }

    public static void b3(int i2) {
        if (i2 == 3) {
            if (f7606l == 1) {
                c3(7, 1);
                return;
            }
            return;
        }
        if (i2 == 4) {
            if (f7606l == 1) {
                c3(7, 0);
                return;
            }
            return;
        }
        if (i2 != 32) {
            if (i2 != 33) {
                if (i2 != 36) {
                    switch (i2) {
                    }
                    return;
                }
                if (f7606l == 5) {
                    c3(1, 0);
                    return;
                } else {
                    c3(2, 0);
                    return;
                }
            }
            if (f7606l == 1) {
                c3(8, 0);
                return;
            }
            return;
        }
        if (f7606l == 1) {
            c3(8, 1);
        }
    }

    public static void c3(int i2, int i3) {
        z.k.s(227, 2, i.a.Theme_actionModeFindDrawable, i2, i3);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f7616k, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        if (nt.f8637c == 1) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
            mtVar.f8314i = 0;
        }
        this.f7615j = o1.u.f16984b;
        o1.u.f16984b = new b();
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        byte b2 = bArr[i2 + 1];
        if (b2 == -91) {
            try {
                qt.z0(57, new int[]{bArr[i2 + 2]}, new String(bArr, i2 + 5, i3 - 5, "GB2312"));
                return;
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                return;
            }
        }
        if (b2 == -82) {
            byte b3 = bArr[i2 + 5];
            f7606l = b3;
            int i5 = ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255);
            int i6 = ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255);
            int i7 = ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255);
            int i8 = ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255);
            int i9 = (255 & bArr[i2 + 16]) | ((bArr[i2 + 15] << 8) & 65280);
            qt.y0(51, b3);
            int i10 = i2 + 6;
            qt.y0(52, (bArr[i10] >> 5) & 7);
            qt.y0(53, (bArr[i10] >> 2) & 7);
            qt.y0(54, (i5 << 16) | i6);
            qt.y0(56, (i7 << 16) | i8);
            qt.y0(55, i9);
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.C2(bArr[i2 + 12] & 1);
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                u0.d.D2(a3(bArr[i2 + 6] & 255));
                u0.d.E2(a3(bArr[i2 + 7] & 255));
                u0.d.F2(a3(bArr[i2 + 8] & 255));
                u0.d.G2(a3(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 == 120) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            byte b6 = bArr[i2 + 4];
            byte b7 = bArr[i2 + 5];
            byte b8 = bArr[i2 + 9];
            byte b9 = bArr[i2 + 10];
            byte b10 = bArr[i2 + 11];
            qt.y0(59, (((b6 >> 7) & 1) << 8) | ((b8 >> 5) & 7));
            qt.y0(60, (((b6 >> 6) & 1) << 8) | ((b8 >> 3) & 3));
            qt.y0(61, (((b6 >> 5) & 1) << 8) | ((b8 >> 2) & 1));
            qt.y0(62, (b8 & 3) | (((b6 >> 4) & 1) << 8));
            qt.y0(63, (((b6 >> 3) & 1) << 8) | ((b9 >> 6) & 3));
            qt.y0(64, (((b6 >> 2) & 1) << 8) | ((b9 >> 5) & 1));
            qt.y0(65, (((b6 >> 1) & 1) << 8) | ((b9 >> 4) & 1));
            qt.y0(66, ((b6 & 1) << 8) | ((b9 >> 3) & 1));
            qt.y0(67, (((b7 >> 7) & 1) << 8) | ((b9 >> 2) & 1));
            qt.y0(68, (((b7 >> 6) & 1) << 8) | (b9 & 3));
            qt.y0(69, (((b7 >> 5) & 1) << 8) | ((b10 >> 5) & 7));
            qt.y0(70, (((b7 >> 4) & 1) << 8) | (7 & (b10 >> 2)));
            qt.y0(71, ((b10 >> 1) & 1) | (((b7 >> 3) & 1) << 8));
            return;
        }
        if (b2 == 17) {
            if (nt.a()) {
                this.f7608c = bArr[i2 + 4] & 255;
                int i11 = 0;
                while (true) {
                    iArr = this.f7612g;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    int i12 = this.f7608c;
                    if (i12 == iArr[i11][0]) {
                        if (i12 == 0) {
                            break;
                        }
                        this.f7607b = i11;
                        break;
                    }
                    i11++;
                }
                if ((bArr[i2 + 5] & 255) == 0) {
                    int i13 = this.f7607b;
                    if (i13 < iArr.length && i13 != 255) {
                        l0.b0.l0(iArr[i13][1], 1);
                    }
                    this.f7607b = 255;
                } else if (i11 < iArr.length) {
                    if ((iArr[i11][1] == 3 || iArr[i11][1] == 4 || iArr[i11][1] == 29 || iArr[i11][1] == 32 || iArr[i11][1] == 33) && u0.b.D == 13) {
                        b3(iArr[i11][1]);
                    } else {
                        l0.b0.l0(iArr[i11][1], 0);
                    }
                }
                qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                return;
            }
            return;
        }
        if (b2 == 18) {
            byte b11 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b11 >> 6) & 1);
                qt.y0(2, (b11 >> 7) & 1);
            } else {
                qt.y0(1, (b11 >> 7) & 1);
                qt.y0(2, (b11 >> 6) & 1);
            }
            qt.y0(3, (b11 >> 5) & 1);
            qt.y0(4, (b11 >> 4) & 1);
            qt.y0(5, (b11 >> 3) & 1);
            qt.y0(0, (b11 >> 2) & 1);
            return;
        }
        if (b2 == 33) {
            if (nt.a()) {
                this.f7609d = (bArr[i2 + 2] & 255) | 128;
                int i14 = 0;
                while (true) {
                    iArr2 = this.f7612g;
                    if (i14 >= iArr2.length) {
                        break;
                    }
                    int i15 = this.f7609d;
                    if (i15 == iArr2[i14][0]) {
                        if (i15 == 0) {
                            break;
                        }
                        this.f7610e = i14;
                        break;
                    }
                    i14++;
                }
                if ((bArr[i2 + 3] & 255) == 0) {
                    int i16 = this.f7610e;
                    if (i16 < iArr2.length && i16 != 255) {
                        l0.b0.l0(iArr2[i16][1], 1);
                    }
                    this.f7610e = 255;
                    return;
                }
                if (i14 < iArr2.length) {
                    if ((iArr2[i14][1] == 3 || iArr2[i14][1] == 4 || iArr2[i14][1] == 29 || iArr2[i14][1] == 32 || iArr2[i14][1] == 33) && u0.b.D == 13) {
                        b3(iArr2[i14][1]);
                        return;
                    } else {
                        l0.b0.l0(iArr2[i14][1], 0);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (b2 != 34) {
            return;
        }
        byte b12 = bArr[i2 + 2];
        byte b13 = bArr[i2 + 3];
        if (b12 != 1) {
            if (b12 == 2 && b13 != (i4 = this.f7614i)) {
                if (b13 > i4) {
                    for (int i17 = 0; i17 < b13 - this.f7614i; i17++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if (b13 < i4) {
                    for (int i18 = 0; i18 < this.f7614i - b13; i18++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                }
                this.f7614i = b13;
                return;
            }
            return;
        }
        int i19 = this.f7613h;
        if (b13 != i19) {
            if (b13 > i19) {
                for (int i20 = 0; i20 < b13 - this.f7613h; i20++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
            } else if (b13 < i19) {
                for (int i21 = 0; i21 < this.f7613h - b13; i21++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
            }
            this.f7613h = b13;
        }
    }

    @Override // k0.lt
    public void W2() {
        o1.u.f16984b = this.f7615j;
        u0.c.f17386m.d(this.f7616k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 72) {
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
            z.k.s(227, 2, i.a.Theme_actionModeFindDrawable, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1 && iArr != null && iArr.length >= 2) {
            z.k.s(227, 4, 126, 10, 0, iArr[0], iArr[1]);
        }
    }

    public String e3() {
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

    public final void f3() {
        if (e3().equals("com.syu.carinfo.wc.axela.ActivityAxelaCD")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.wc.axela.ActivityAxelaCD");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }
}
