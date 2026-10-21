package k0;

import android.app.ActivityManager;
import android.content.Intent;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import app.App;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class lp extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7816b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7817c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7818d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 13}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 1}, new int[]{11, 12}, new int[]{12, 2}, new int[]{13, 63}, new int[]{14, 3}, new int[]{15, 28}, new int[]{16, 66}, new int[]{17, 4}, new int[]{18, 27}, new int[]{19, 65}, new int[]{20, 63}, new int[]{21, 7}, new int[]{22, 8}, new int[]{23, 0}, new int[]{24, 31}, new int[]{25, 30}, new int[]{26, 29}, new int[]{27, -1}, new int[]{28, -1}, new int[]{29, 74}, new int[]{30, 75}, new int[]{31, -1}, new int[]{32, -1}, new int[]{33, 21}, new int[]{34, 22}, new int[]{35, 53}, new int[]{36, 40}, new int[]{37, 41}, new int[]{38, 42}, new int[]{39, 43}, new int[]{40, 44}, new int[]{41, 45}, new int[]{42, 64}, new int[]{43, 6}, new int[]{44, 9}, new int[]{45, -1}, new int[]{46, 25}, new int[]{47, 58}, new int[]{48, 49}, new int[]{49, 40}, new int[]{50, 41}, new int[]{51, 42}, new int[]{52, 43}, new int[]{53, 44}, new int[]{54, 45}, new int[]{55, 46}, new int[]{56, 47}, new int[]{57, 48}, new int[]{58, 50}, new int[]{59, 51}, new int[]{60, -1}, new int[]{61, 38}, new int[]{62, 38}, new int[]{63, 38}, new int[]{64, 11}, new int[]{65, 56}, new int[]{66, 56}, new int[]{67, 56}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f7819e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7820f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f7821g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f7822h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D != 13) {
                z.k.s(227, 192, 1, 0);
            } else {
                z.k.s(227, 192, 1, 1);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(lp.this.f7822h);
            lp.this.f7820f = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            lp lpVar = lp.this;
            int i2 = lpVar.f7820f - 1;
            lpVar.f7820f = i2;
            if (i2 <= 0) {
                l0.b0.p0(lpVar.f7822h);
                lp.this.f7820f = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8637c;
                if (i3 == 41) {
                    z.k.s(227, 198, 2, 14, 0);
                } else {
                    if (i3 != 42) {
                        return;
                    }
                    z.k.s(227, 198, 2, 14, 1);
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        u0.c.f17386m.a(this.f7821g, 1);
        qt.z(this.f7819e);
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 == 36) {
                byte b3 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b3 >> 7) & 1);
                    qt.y0(2, (b3 >> 6) & 1);
                } else {
                    qt.y0(1, (b3 >> 6) & 1);
                    qt.y0(2, (b3 >> 7) & 1);
                }
                qt.y0(3, (b3 >> 4) & 1);
                qt.y0(4, (b3 >> 5) & 1);
                qt.y0(5, (b3 >> 3) & 1);
                qt.y0(0, (b3 >> 2) & 1);
                return;
            }
            if (b2 == 39) {
                int i4 = bArr[i2 + 2] & 255;
                int i5 = bArr[i2 + 3] & 255;
                qt.y0(10, (i4 >> 7) & 1);
                qt.y0(11, (i4 >> 6) & 1);
                qt.y0(12, (i4 >> 5) & 1);
                qt.y0(13, (i4 >> 3) & 1);
                qt.y0(14, (i4 >> 2) & 1);
                qt.y0(18, (i5 >> 7) & 1);
                qt.y0(19, (i5 >> 6) & 1);
                qt.y0(20, (i5 >> 5) & 1);
                int i6 = i2 + 4;
                int i7 = bArr[i6] & 255;
                int i8 = i2 + 5;
                int i9 = bArr[i8] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i7 = bArr[i8] & 255;
                    i9 = bArr[i6] & 255;
                }
                if (i7 == 0) {
                    qt.y0(27, -2);
                } else if (i7 == 32) {
                    qt.y0(27, -3);
                } else if (i7 == 255) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i7);
                }
                if (i9 == 0) {
                    qt.y0(28, -2);
                } else if (i9 == 32) {
                    qt.y0(28, -3);
                } else if (i9 == 255) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, i9);
                }
                int i10 = i2 + 6;
                qt.y0(15, (bArr[i10] >> 7) & 1);
                qt.y0(16, (bArr[i10] >> 6) & 1);
                qt.y0(37, (bArr[i10] >> 0) & 1);
                qt.y0(21, bArr[i2 + 8] & 255);
                return;
            }
            if (b2 == 41) {
                qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, GLES10.GL_AMBIENT);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 57) {
                int i11 = i2 + 2;
                qt.y0(111, (bArr[i11] >> 5) & 1);
                qt.y0(112, (bArr[i11] >> 4) & 1);
                qt.y0(113, (bArr[i11] >> 3) & 1);
                qt.y0(114, (bArr[i11] >> 2) & 1);
                qt.y0(115, (bArr[i11] >> 1) & 1);
                qt.y0(116, (bArr[i11] >> 0) & 1);
                int i12 = i2 + 3;
                qt.y0(117, (bArr[i12] >> 4) & 15);
                qt.y0(118, (bArr[i12] >> 0) & 15);
                int i13 = i2 + 4;
                qt.y0(119, (bArr[i13] >> 4) & 15);
                qt.y0(120, (bArr[i13] >> 0) & 15);
                qt.y0(121, (bArr[i2 + 5] >> 0) & 255);
                qt.y0(122, (bArr[i2 + 6] >> 0) & 255);
                qt.y0(123, (bArr[i2 + 7] >> 0) & 255);
                return;
            }
            switch (b2) {
                case 53:
                    qt.y0(102, bArr[i2 + 3] & 255);
                    qt.y0(103, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(104, ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | (65280 & (bArr[i2 + 10] << 8)) | (bArr[i2 + 11] & 255));
                    int i14 = i2 + 12;
                    qt.y0(105, (bArr[i14] >> 7) & 1);
                    qt.y0(106, (bArr[i14] >> 6) & 1);
                    int i15 = (bArr[i14] >> 7) & 1;
                    int i16 = bArr[i2 + 8] & 255;
                    if (i16 == 0) {
                        u0.d.B3(0);
                    } else {
                        u0.d.B3(i15 == 1 ? (((i16 * 18) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i16 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    }
                    break;
                case 54:
                    int i17 = i2 + 6;
                    qt.y0(108, ((bArr[i17] >> 7) & 32768) | ((bArr[i17] >> 3) & 256) | (bArr[i2 + 2] & 255));
                    qt.y0(107, ((bArr[i17] >> 6) & 32768) | ((bArr[i17] >> 2) & 256) | (bArr[i2 + 3] & 255));
                    qt.y0(110, ((bArr[i17] >> 5) & 32768) | ((bArr[i17] >> 1) & 256) | (bArr[i2 + 4] & 255));
                    qt.y0(109, (bArr[i2 + 5] & 255) | ((bArr[i17] >> 0) & 256) | ((bArr[i17] >> 4) & 32768));
                    break;
                case 55:
                    qt.y0(98, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                    qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(100, ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                    qt.y0(101, (bArr[i2 + 10] & 255) | (65280 & (bArr[i2 + 9] << 8)));
                    break;
            }
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        this.f7817c = b4 & 255;
        int i18 = 0;
        while (true) {
            iArr = this.f7818d;
            if (i18 >= iArr.length) {
                break;
            }
            int i19 = this.f7817c;
            if (i19 == iArr[i18][0]) {
                if (i19 == 0) {
                    break;
                }
                this.f7816b = i18;
                break;
            }
            i18++;
        }
        int i20 = this.f7817c;
        if (i20 != 3) {
            if (i20 != 4) {
                if (i20 == 24) {
                    for (int i21 = 0; i21 < (b5 & 255); i21++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    return;
                }
                if (i20 == 25) {
                    for (int i22 = 0; i22 < (b5 & 255); i22++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    return;
                }
                if (i20 == 27) {
                    if ((b5 & 255) == 1 && u0.b.D == 13) {
                        z.k.s(227, 200, 2, 8, 0);
                        return;
                    }
                    return;
                }
                if (i20 == 28) {
                    if ((b5 & 255) == 1 && u0.b.D == 13) {
                        z.k.s(227, 200, 2, 9, 0);
                        return;
                    }
                    return;
                }
                if (i20 == 31 || i20 == 34) {
                    if ((b5 & 255) != 1 || a3().equals("com.syu.carinfo.rzc.andra.LzNissan03TeanaCd")) {
                        return;
                    }
                    Intent intent = new Intent();
                    intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.andra.LzNissan03TeanaCd");
                    intent.addCategory(Intent.CATEGORY_DEFAULT);
                    intent.setFlags(268435456);
                    App.c().startActivity(intent);
                    return;
                }
                switch (i20) {
                    case 13:
                    case 20:
                        if ((b5 & 255) == 1) {
                            if (a3().equals("com.syu.carinfo.rzc.andra.LzNissan03TeanaCarSet")) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                            } else {
                                Intent intent2 = new Intent();
                                intent2.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.andra.LzNissan03TeanaCarSet");
                                intent2.addCategory(Intent.CATEGORY_DEFAULT);
                                intent2.setFlags(268435456);
                                App.c().startActivity(intent2);
                            }
                        }
                        break;
                    case 14:
                        break;
                    case 15:
                        int i23 = b5 & 255;
                        if (i23 == 1) {
                            if (u0.b.D == 13) {
                                z.k.s(227, 200, 2, 5, 1);
                            }
                            break;
                        } else if (i23 == 0 && u0.b.D == 13) {
                            z.k.s(227, 200, 2, 5, 0);
                            break;
                        }
                        break;
                    case 16:
                        if ((b5 & 255) == 1 && u0.b.D == 13) {
                            int[] iArr2 = nt.f8645g;
                            if (iArr2[118] == 0) {
                                z.k.s(227, 200, 2, 8, 1);
                            } else if (iArr2[118] == 1) {
                                z.k.s(227, 200, 2, 8, 0);
                            } else {
                                z.k.s(227, 200, 2, 8, 0);
                            }
                            break;
                        }
                        break;
                    case 17:
                        break;
                    case 18:
                        int i24 = b5 & 255;
                        if (i24 == 1) {
                            if (u0.b.D == 13) {
                                z.k.s(227, 200, 2, 4, 1);
                            }
                            break;
                        } else if (i24 == 0 && u0.b.D == 13) {
                            z.k.s(227, 200, 2, 4, 0);
                            break;
                        }
                        break;
                    case 19:
                        if ((b5 & 255) == 1 && u0.b.D == 13) {
                            int[] iArr3 = nt.f8645g;
                            if (iArr3[117] == 0) {
                                z.k.s(227, 200, 2, 7, 2);
                            } else if (iArr3[117] == 1) {
                                z.k.s(227, 200, 2, 8, 1);
                            } else if (iArr3[117] == 2) {
                                z.k.s(227, 200, 2, 8, 0);
                            } else {
                                z.k.s(227, 200, 2, 8, 2);
                            }
                            break;
                        }
                        break;
                    case 21:
                        for (int i25 = 0; i25 < (b5 & 255); i25++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        break;
                    case 22:
                        for (int i26 = 0; i26 < (b5 & 255); i26++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        break;
                    default:
                        int i27 = b5 & 255;
                        if (i27 == 1) {
                            if (i18 < iArr.length) {
                                l0.b0.l0(iArr[i18][1], 0);
                            }
                        } else if (i27 == 0) {
                            int i28 = this.f7816b;
                            if (i28 < iArr.length && i28 != 255) {
                                l0.b0.l0(iArr[i28][1], 1);
                            }
                            this.f7816b = 255;
                        }
                        break;
                }
            }
            if ((b5 & 255) == 1) {
                if (u0.b.D == 13) {
                    z.k.s(227, 200, 2, 3, 0);
                    return;
                } else {
                    l0.b0.l0(3, 0);
                    l0.b0.l0(3, 1);
                    return;
                }
            }
            return;
        }
        if ((b5 & 255) == 1) {
            if (u0.b.D == 13) {
                z.k.s(227, 200, 2, 2, 0);
            } else {
                l0.b0.l0(4, 0);
                l0.b0.l0(4, 1);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f7821g);
        l0.b0.p0(this.f7822h);
        qt.q0(this.f7819e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 124) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 198, 3, iArr[0], iArr[1], iArr[2]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 197, 2, iArr[0], iArr[1]);
        } else if (i2 == 3) {
            z.k.s(227, 192, 1, iArr[0]);
        } else {
            if (i2 != 4) {
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
}
