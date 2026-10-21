package k0;

import android.content.Intent;
import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import com.syu.jni.ToolsJni;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ak extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3348c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3349d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3350e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3351f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3352g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f3353h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{23, 1}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f3354i = {new int[]{1, 0}, new int[]{16, 29}, new int[]{43, 5}, new int[]{44, 2}, new int[]{47, 9}, new int[]{57, 25}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3355j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3356k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3357l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3358m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3359n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f3360o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3361p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f3362q = new a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f3363r = new b();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f3364s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f3365t = new c();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f3366u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f3367v = new d();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f3368w = new e();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f3369x = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f2;
            if (i2 == 0) {
                ak.this.a3(12);
                return;
            }
            if (i2 == 1) {
                ak.this.a3(11);
                return;
            }
            if (i2 != 9) {
                return;
            }
            if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.WCYuncheUINissanAirControlAct")) {
                if (nt.f8645g[10] == 1) {
                    l0.b0.l0(62, 0);
                    l0.b0.l0(62, 1);
                }
            } else if (nt.f8645g[10] == 0) {
                l0.b0.l0(62, 0);
                l0.b0.l0(62, 1);
            }
            ak.this.a3(1);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().t(LogType.CANBUS, "DataMain.sBspAirKey ---> " + u0.b.E0);
            switch (u0.b.E0) {
                case i.a.Theme_actionModePopupWindowStyle /* 244 */:
                    ak.this.a3(12);
                    break;
                case i.a.Theme_preferenceFragmentStyle /* 245 */:
                    ak.this.a3(5);
                    break;
                case i.a.Theme_preferencePanelStyle /* 246 */:
                    ak.this.a3(14);
                    break;
                case i.a.Theme_preferenceHeaderPanelStyle /* 247 */:
                    ak.this.a3(13);
                    break;
                case 248:
                    ak.this.a3(7);
                    break;
                case 249:
                    ak.this.a3(21);
                    break;
                case 250:
                    ak.this.a3(2);
                    break;
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
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            byte b3 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b4 = (byte) (time.month + 1);
            byte b5 = (byte) time.monthDay;
            byte b6 = (byte) time.hour;
            byte b7 = (byte) time.minute;
            z.k.s(227, 10, -53, 0, b6, b7, time.second, 0, b2, b3, b4, b5, 0);
            ak akVar = ak.this;
            if (akVar.f3364s != b7) {
                akVar.f3364s = b7;
                switch (nt.f8633a) {
                    case 197052:
                    case 721340:
                    case 852412:
                    case 1114556:
                    case 1180092:
                    case 1900988:
                    case 2818494:
                    case 3080636:
                    case 3277244:
                        z.k.s(227, 2, 36, 13, 38);
                        break;
                    case 262588:
                    case 917948:
                    case 983484:
                    case 1049020:
                        z.k.s(227, 2, 36, 16, 38);
                        break;
                    case 262590:
                        z.k.s(227, 2, 36, 18, 38);
                        break;
                    case 328126:
                        z.k.s(227, 2, 36, 19, 38);
                        break;
                    case 393662:
                    case 1245628:
                    case 1311164:
                    case 2752958:
                        z.k.s(227, 2, 36, 12, 38);
                        break;
                    case 655806:
                        z.k.s(227, 2, 36, 20, 38);
                        break;
                    case 917950:
                        z.k.s(227, 2, 36, 10, 38);
                        break;
                    case 1376702:
                    case 1704379:
                        z.k.s(227, 2, 36, 10, 38);
                        break;
                    case 1704382:
                    case 1769918:
                    case 1835454:
                        z.k.s(227, 2, 36, 21, 38);
                        break;
                    case 1835452:
                        z.k.s(227, 2, 36, 17, 38);
                        break;
                    case 3408318:
                    case 3473854:
                        z.k.s(227, 2, 36, 22, 38);
                        break;
                    case 7799227:
                        z.k.s(227, 2, 36, 11, 38);
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
            qt.x(ak.this.f3368w);
            ak akVar = ak.this;
            akVar.f3366u = 10;
            akVar.f3351f = 0;
            akVar.f3352g = 0;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ak akVar = ak.this;
            int i2 = akVar.f3366u - 1;
            akVar.f3366u = i2;
            if (i2 <= 0) {
                qt.o0(akVar.f3368w);
                ak.this.f3366u = 10;
            }
            if (u0.b.f17306a0 == 1) {
                if (i2 % 4 == 0) {
                    z.k.s(227, 3, 106, 5, 1, 49);
                }
                if (ak.this.f3366u % 4 == 1) {
                    z.k.s(227, 3, 106, 5, 1, 97);
                }
                if (ak.this.f3366u % 4 == 2) {
                    z.k.s(227, 3, 106, 5, 1, 26);
                }
                if (ak.this.f3366u % 4 == 3) {
                    z.k.s(227, 3, 106, 5, 1, 98);
                }
                switch (nt.f8633a) {
                    case 197052:
                    case 721340:
                    case 852412:
                    case 1114556:
                    case 1180092:
                    case 1900988:
                    case 2818494:
                    case 3080636:
                    case 3277244:
                        z.k.s(227, 2, 36, 13, 38);
                        break;
                    case 262588:
                    case 917948:
                    case 983484:
                    case 1049020:
                        z.k.s(227, 2, 36, 16, 38);
                        break;
                    case 262590:
                        z.k.s(227, 2, 36, 18, 38);
                        break;
                    case 328126:
                        z.k.s(227, 2, 36, 19, 38);
                        break;
                    case 393662:
                    case 1245628:
                    case 1311164:
                    case 2752958:
                        z.k.s(227, 2, 36, 12, 38);
                        break;
                    case 655806:
                        z.k.s(227, 2, 36, 20, 38);
                        break;
                    case 917950:
                        z.k.s(227, 2, 36, 10, 38);
                        break;
                    case 1376702:
                    case 1704379:
                        z.k.s(227, 2, 36, 10, 38);
                        break;
                    case 1704382:
                    case 1769918:
                    case 1835454:
                        z.k.s(227, 2, 36, 21, 38);
                        break;
                    case 1835452:
                        z.k.s(227, 2, 36, 17, 38);
                        break;
                    case 3408318:
                    case 3473854:
                        z.k.s(227, 2, 36, 22, 38);
                        break;
                    case 7799227:
                        z.k.s(227, 2, 36, 11, 38);
                        break;
                }
            }
        }
    }

    public static int c3(String str, int i2) {
        if (str != null && !ProxyProperties.LOCAL_EXCL_LIST.equals(str.trim())) {
            try {
                Intent intent = new Intent(str);
                intent.putExtra(str, i2);
                d3(intent);
                o1.b0.f("activityByIntentName " + str);
                App.c().startActivity(intent);
                return 2;
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public static void d3(Intent intent) {
        intent.addFlags(270532608);
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
            if (iArr[1] == 0) {
                int[] iArr2 = nt.f8645g;
                if (iArr2[27] == -3) {
                    z.k.s(227, 2, 61, 37, 62);
                    return;
                }
                if (iArr2[27] == -2) {
                    return;
                }
                int i3 = iArr2[27] - 2;
                if (i3 <= 36) {
                    z.k.s(227, 2, 61, 37, 254);
                    return;
                } else {
                    z.k.s(227, 2, 61, 37, i3);
                    return;
                }
            }
            if (iArr[1] == 1) {
                int[] iArr3 = nt.f8645g;
                if (iArr3[27] == -3) {
                    return;
                }
                if (iArr3[27] == -2) {
                    z.k.s(227, 2, 61, 37, 38);
                    return;
                }
                int i4 = iArr3[27] + 2;
                if (i4 >= 64) {
                    z.k.s(227, 2, 61, 37, 255);
                    return;
                }
                z.k.s(227, 2, 61, 37, i4);
            }
            return;
        }
        if (i2 == 55) {
            if (iArr[1] <= 32) {
                z.k.s(227, 2, 61, 37, 254);
                return;
            } else if (iArr[1] >= 64) {
                z.k.s(227, 2, 61, 37, 255);
                return;
            } else {
                z.k.s(227, 2, 61, 37, iArr[1]);
                return;
            }
        }
        if (i2 == 59) {
            int i5 = iArr[1];
            if (i5 == 1) {
                if (this.f3355j != 3) {
                    a3(29);
                    return;
                }
                return;
            } else if (i5 == 2) {
                if (this.f3355j != 1) {
                    a3(26);
                    return;
                }
                return;
            } else if (i5 == 3) {
                if (this.f3355j != 2) {
                    a3(27);
                    return;
                }
                return;
            } else {
                if (i5 == 5 && this.f3355j != 4) {
                    a3(28);
                    return;
                }
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] == 1) {
                z.k.s(227, 4, 111, 28, 0, 255, 255);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, 4, 111, 28, 1, 255, 255);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, 4, 111, 29, 0, 255, 255);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, 4, 111, 29, 1, 255, 255);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, 4, 111, 30, 0, 255, 255);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, 4, 111, 30, 1, 255, 255);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, 4, 111, 31, 0, 255, 255);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, 4, 111, 31, 1, 255, 255);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, 4, 111, 32, 0, 255, 255);
                return;
            }
            if (iArr[1] == 10) {
                z.k.s(227, 4, 111, 32, 1, 255, 255);
                return;
            }
            if (iArr[1] == 11) {
                z.k.s(227, 4, 111, 28, 0, 255, 255);
                z.k.s(227, 4, 111, 29, 0, 255, 255);
                z.k.s(227, 4, 111, 30, 0, 255, 255);
                z.k.s(227, 4, 111, 31, 0, 255, 255);
                z.k.s(227, 4, 111, 32, 0, 255, 255);
                return;
            }
            if (iArr[1] == 12) {
                z.k.s(227, 4, 111, 28, 1, 255, 255);
                z.k.s(227, 4, 111, 29, 1, 255, 255);
                z.k.s(227, 4, 111, 30, 1, 255, 255);
                z.k.s(227, 4, 111, 31, 1, 255, 255);
                z.k.s(227, 4, 111, 32, 1, 255, 255);
                return;
            }
            return;
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(2);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(2);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(4);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(4);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(5);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(5);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(42);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(42);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        a3(7);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    a3(7);
                    break;
                }
                break;
            case 39:
                if (iArr[1] == -1) {
                    a3(11);
                } else if (iArr[1] != -2) {
                    z.k.s(227, 2, 61, 39, iArr[1]);
                } else {
                    a3(12);
                }
                break;
            default:
                switch (i2) {
                    case 43:
                        a3(78);
                        break;
                    case 44:
                        a3(79);
                        break;
                    case 45:
                        z.k.s(227, 2, 61, 39, 7);
                        break;
                    case 46:
                        int[] iArr4 = nt.f8645g;
                        if (iArr4[27] != -3) {
                            if (iArr4[27] != -2) {
                                int i6 = iArr4[27] + 10;
                                if (i6 < 64) {
                                    z.k.s(227, 2, 61, 37, i6);
                                } else {
                                    z.k.s(227, 2, 61, 37, 255);
                                }
                            } else {
                                z.k.s(227, 2, 61, 37, 46);
                            }
                            break;
                        }
                        break;
                    case 47:
                        int[] iArr5 = nt.f8645g;
                        if (iArr5[27] == -3) {
                            z.k.s(227, 2, 61, 37, 54);
                            break;
                        } else if (iArr5[27] != -2) {
                            int i7 = iArr5[27] - 10;
                            if (i7 > 36) {
                                z.k.s(227, 2, 61, 37, i7);
                            } else {
                                z.k.s(227, 2, 61, 37, 254);
                            }
                            break;
                        }
                        break;
                    case 48:
                        z.k.s(227, 2, 61, 37, 255);
                        break;
                    case 49:
                        z.k.s(227, 2, 61, 37, 254);
                        break;
                    case 50:
                        if (iArr[1] == 0) {
                            if (nt.f8645g[17] == 1) {
                                a3(44);
                            }
                        } else if (nt.f8645g[17] == 0) {
                            a3(44);
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8312g = 1;
        mtVar.f8311f = 0;
        mtVar.f8320o = 1;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        int i2 = nt.f8633a;
        switch (i2) {
            case 197052:
            case 262588:
            case 328126:
            case 393662:
            case 721340:
            case 852412:
            case 917948:
            case 917950:
            case 983484:
            case 1049020:
            case 1114556:
            case 1180092:
            case 1245628:
            case 1311164:
            case 1704382:
            case 1769918:
            case 1900988:
            case 2752956:
            case 3080636:
            case 3277244:
            case 3408318:
            case 3473854:
                this.f7886a.f8314i = 0;
                break;
            case 1376702:
                this.f7886a.f8313h = 2;
                break;
        }
        if (i2 == 2752956) {
            e.e.f1624b.a(this.f3363r, 0);
            z.c.f18184d.a(this.f3362q, 0);
        }
        u0.c.f17386m.a(this.f3367v, 1);
        qt.z(this.f3365t);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 55, 56, 68};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int[][] iArr2;
        int i9;
        byte b2 = bArr[i2 + 1];
        if (b2 == -24) {
            if (qt.k0()) {
                return;
            }
            if (bArr[i2 + 5] == 1) {
                qt.y0(Process.MEDIA_UID, 2);
                qt.a(1);
                return;
            }
            qt.a(0);
        }
        if (b2 == -19) {
            qt.y0(106, (bArr[i2 + 4] & 255) + (bArr[i2 + 9] & 255));
            qt.y0(107, (bArr[i2 + 5] & 255) + (bArr[i2 + 10] & 255));
            qt.y0(108, (bArr[i2 + 6] & 255) + (bArr[i2 + 11] & 255));
            qt.y0(109, (bArr[i2 + 7] & 255) + (bArr[i2 + 12] & 255));
            qt.y0(110, bArr[i2 + 14] & 255);
            qt.y0(111, bArr[i2 + 15] & 255);
            qt.y0(112, bArr[i2 + 16] & 255);
            qt.y0(113, bArr[i2 + 17] & 255);
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 26) {
            int i10 = (((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255)) / 10;
            o1.x[] xVarArr = nt.f8643f;
            o1.x.C(xVarArr, 1031, new int[]{i10}, null, null);
            o1.x.C(xVarArr, 1049, new int[]{1, i10}, null, null);
            qt.i(bArr[i2 + 9] & 255, 255 & bArr[i2 + 8], true, 700);
            int i11 = i2 + 4;
            l0.c0.N1((bArr[i11] >> 0) & 1, (bArr[i11] >> 1) & 1, (bArr[i11] >> 2) & 1);
            byte b3 = bArr[i2 + 3];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b3 >> 7) & 1);
                qt.y0(1, (b3 >> 6) & 1);
            } else {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            }
            qt.y0(3, (b3 >> 5) & 1);
            qt.y0(4, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            return;
        }
        if (b2 == 65) {
            if (nt.f8633a != 1835452) {
                u0.d.R2(l0.c0.T0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.T0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.T0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.T0(bArr[i2 + 5] & 255));
            } else {
                u0.d.R2(l0.c0.U0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.U0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.U0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.U0(bArr[i2 + 5] & 255));
            }
            u0.d.D2(l0.c0.T0(bArr[i2 + 6] & 255));
            u0.d.E2(l0.c0.T0(bArr[i2 + 7] & 255));
            u0.d.F2(l0.c0.T0(bArr[i2 + 8] & 255));
            u0.d.G2(l0.c0.T0(bArr[i2 + 9] & 255));
            return;
        }
        if (b2 == 72) {
            qt.y0(110, bArr[i2 + 2] & 255);
            qt.y0(111, bArr[i2 + 3] & 255);
            qt.y0(112, bArr[i2 + 4] & 255);
            qt.y0(113, bArr[i2 + 5] & 255);
            qt.y0(106, bArr[i2 + 6] & 255);
            qt.y0(107, bArr[i2 + 7] & 255);
            qt.y0(108, bArr[i2 + 8] & 255);
            qt.y0(109, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == 118) {
            int i12 = i2 + 2;
            if (this.f3359n != ((bArr[i12] >> 4) & 15)) {
                if (((bArr[i12] >> 4) & 15) == 0) {
                    if (this.f3360o) {
                        y0.h.t0(this.f3361p);
                    }
                    this.f3360o = false;
                } else if (y0.f.f18037c <= 5 || y0.f.f18055i != 0) {
                    this.f3361p = y0.f.f18037c;
                } else {
                    this.f3360o = true;
                    this.f3361p = y0.f.f18037c;
                    y0.h.t0(5);
                }
                this.f3359n = (bArr[i12] >> 4) & 15;
            }
            o1.x.C(nt.f8643f, 1049, new int[]{24, (bArr[i2 + 3] >> 5) & 3}, null, null);
            return;
        }
        if (b2 == 33) {
            if (nt.a()) {
                this.f3349d = bArr[i2 + 2] & 255;
                byte b4 = bArr[i2 + 3];
                int i13 = 0;
                while (true) {
                    iArr = this.f3354i;
                    if (i13 >= iArr.length) {
                        break;
                    }
                    int i14 = this.f3349d;
                    if (i14 == iArr[i13][0]) {
                        if (i14 == 0) {
                            break;
                        }
                        this.f3350e = i13;
                        break;
                    }
                    i13++;
                }
                if ((b4 & 255) != 0) {
                    if (i13 < iArr.length) {
                        l0.b0.l0(iArr[i13][1], 0);
                        return;
                    }
                    return;
                }
                int i15 = this.f3350e;
                if (i15 < iArr.length) {
                    i4 = 255;
                    if (i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                    }
                } else {
                    i4 = 255;
                }
                this.f3350e = i4;
                return;
            }
            return;
        }
        if (b2 == 34) {
            if (nt.a()) {
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                if (b5 != 1) {
                    if (b5 == 2 && b6 != (i5 = this.f3352g)) {
                        if (b6 > i5) {
                            for (int i16 = 0; i16 < b6 - this.f3352g; i16++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                        } else if (b6 < i5) {
                            for (int i17 = 0; i17 < this.f3352g - b6; i17++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                        }
                        this.f3352g = b6;
                        return;
                    }
                    return;
                }
                int i18 = this.f3351f;
                if (b6 != i18) {
                    if (b6 > i18) {
                        for (int i19 = 0; i19 < b6 - this.f3351f; i19++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (b6 < i18) {
                        for (int i20 = 0; i20 < this.f3351f - b6; i20++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    this.f3351f = b6;
                    return;
                }
                return;
            }
            return;
        }
        if (b2 == 49) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            byte b9 = bArr[i2 + 4];
            byte b10 = bArr[i2 + 6];
            byte b11 = bArr[i2 + 7];
            byte b12 = bArr[i2 + 8];
            int i21 = (b7 >> 6) & 1;
            qt.y0(10, i21);
            o1.x[] xVarArr2 = nt.f8643f;
            o1.x.C(xVarArr2, 10, new int[]{i21}, null, null);
            qt.y0(68, (b7 >> 1) & 1);
            qt.y0(53, (b7 >> 2) & 1);
            int i22 = (b7 >> 0) & 1;
            qt.y0(11, i22);
            int i23 = (b8 >> 4) & 1;
            qt.y0(12, i23);
            qt.y0(13, (b8 >> 3) & 1);
            int i24 = (b9 >> 4) & 1;
            ToolsJni.cmd_16_set_led_colors(((i22 << 1) & 2) | (i24 & 1) | ((i23 << 2) & 4), 1);
            qt.y0(17, (b9 >> 7) & 1);
            qt.y0(16, (b9 >> 6) & 1);
            qt.y0(38, (b9 >> 5) & 1);
            qt.y0(65, i24);
            o1.x.C(xVarArr2, 65, new int[]{i24}, null, null);
            int i25 = b10 & 255;
            this.f3355j = i25;
            if (i25 != 1) {
                if (i25 == 2) {
                    i6 = 0;
                    i8 = 1;
                } else if (i25 == 3) {
                    i6 = 0;
                    i8 = 0;
                    i7 = 1;
                } else if (i25 != 4) {
                    i6 = 0;
                    i8 = 0;
                } else {
                    i8 = 0;
                    i6 = 1;
                    i7 = 1;
                }
                i7 = i8;
            } else {
                i6 = 0;
                i7 = 0;
                i8 = 1;
            }
            qt.y0(18, i6);
            qt.y0(19, i8);
            qt.y0(20, i7);
            qt.y0(77, i25);
            o1.x.C(xVarArr2, 77, new int[]{i25}, null, null);
            int i26 = b11 & 255;
            qt.y0(21, i26);
            o1.x.C(xVarArr2, 21, new int[]{i26}, null, null);
            int i27 = b12 & 255;
            if (nt.f8633a == 328126) {
                qt.y0(27, i27);
            } else {
                if (i27 == 254) {
                    qt.y0(27, -2);
                } else if (i27 != 255) {
                    qt.y0(27, i27);
                } else {
                    qt.y0(27, -3);
                }
                o1.x.C(xVarArr2, 27, new int[]{nt.f8645g[27]}, null, null);
            }
            if (((bArr[i2 + 5] >> 7) & 1) == 1) {
                switch (nt.f8633a) {
                    case 197052:
                    case 1180092:
                    case 1900988:
                    case 3080636:
                    case 3408318:
                    case 3473854:
                        if (App.c().getResources().getConfiguration().orientation == 1) {
                            if (!qt.i0().equals("com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct")) {
                                l0.b0.l0(62, 0);
                                l0.b0.l0(62, 1);
                            } else if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct")) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                            }
                        } else if (!qt.i0().equals("com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct_HP")) {
                            l0.b0.l0(62, 0);
                            l0.b0.l0(62, 1);
                        } else if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct_HP")) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        break;
                    case 262588:
                    case 721340:
                    case 852412:
                    case 917948:
                    case 983484:
                    case 1049020:
                    case 1114556:
                    case 3277244:
                        if (!qt.i0().equals("com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct")) {
                            l0.b0.l0(62, 0);
                            l0.b0.l0(62, 1);
                        } else if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct")) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        break;
                    case 393662:
                    case 917950:
                    case 1245628:
                    case 1311164:
                    case 1704382:
                    case 1769918:
                        if (!qt.i0().equals("com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct_HP")) {
                            l0.b0.l0(62, 0);
                            l0.b0.l0(62, 1);
                        } else if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct_HP")) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        break;
                    default:
                        if (!qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_NewAdd_HP")) {
                            l0.b0.l0(62, 0);
                            l0.b0.l0(62, 1);
                        } else if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_NewAdd_HP")) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        break;
                }
            }
            return;
        }
        if (b2 == 50) {
            qt.y0(102, bArr[i2 + 8] & 255);
            qt.y0(103, bArr[i2 + 9] & 255);
            qt.y0(104, bArr[i2 + 11] & 255);
            int i28 = bArr[i2 + 10] & 255;
            if (i28 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3((i28 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 97) {
            int i29 = i2 + 2;
            qt.y0(116, (bArr[i29] >> 7) & 1);
            qt.y0(117, (bArr[i29] >> 6) & 1);
            qt.y0(118, (bArr[i29] >> 5) & 1);
            qt.y0(119, (bArr[i29] >> 4) & 1);
            qt.y0(125, (bArr[i29] >> 3) & 1);
            qt.y0(159, (bArr[i29] >> 2) & 1);
            qt.y0(126, (bArr[i29] >> 0) & 3);
            int i30 = i2 + 3;
            qt.y0(160, (bArr[i30] >> 4) & 7);
            qt.y0(127, (bArr[i30] >> 2) & 3);
            int i31 = i2 + 4;
            qt.y0(161, (bArr[i31] >> 7) & 1);
            qt.y0(128, (bArr[i31] >> 3) & 7);
            int i32 = i2 + 5;
            qt.y0(124, (bArr[i32] >> 7) & 1);
            qt.y0(129, (bArr[i32] >> 5) & 3);
            qt.y0(130, (bArr[i32] >> 4) & 1);
            qt.y0(131, (bArr[i32] >> 3) & 1);
            qt.y0(132, (bArr[i32] >> 2) & 1);
            qt.y0(133, (bArr[i32] >> 1) & 1);
            qt.y0(134, (bArr[i32] >> 0) & 1);
            int i33 = i2 + 6;
            qt.y0(135, (bArr[i33] >> 7) & 1);
            qt.y0(136, (bArr[i33] >> 0) & 127);
            int i34 = i2 + 7;
            qt.y0(137, (bArr[i34] >> 7) & 1);
            qt.y0(138, (bArr[i34] >> 5) & 3);
            qt.y0(139, (bArr[i34] >> 4) & 1);
            qt.y0(140, (bArr[i34] >> 3) & 1);
            qt.y0(141, (bArr[i34] >> 0) & 7);
            int i35 = i2 + 8;
            qt.y0(142, 255 & bArr[i35]);
            int i36 = i2 + 9;
            qt.y0(143, (bArr[i36] >> 6) & 3);
            qt.y0(144, (bArr[i36] >> 4) & 3);
            qt.y0(145, (bArr[i36] >> 3) & 1);
            qt.y0(146, (bArr[i36] >> 1) & 3);
            if (((bArr[i30] >> 7) & 1) == 1 && !o1.u.Z()) {
                c3(a.b.E, 1);
            }
            if (this.f3357l != ((bArr[i33] >> 7) & 1)) {
                int i37 = (bArr[i33] >> 7) & 1;
                this.f3357l = i37;
                if (i37 == 1 && !o1.u.Z()) {
                    c3(a.b.E, 2);
                }
            }
            int i38 = (bArr[i31] >> 6) & 1;
            int i39 = this.f3358m;
            if (i39 != i38) {
                if (i38 != 0) {
                    if (y0.f.f18055i != 1) {
                        this.f3361p = y0.f.f18037c;
                        y0.h.t0(0);
                    }
                } else if (i39 == 1 && i38 == 0) {
                    y0.h.t0(this.f3361p);
                }
                this.f3358m = i38;
            }
            o1.x.C(nt.f8643f, 1049, new int[]{25, bArr[i29], bArr[i30], bArr[i31], bArr[i32], bArr[i33], bArr[i34], bArr[i35], bArr[i36]}, null, null);
            return;
        }
        if (b2 == 98) {
            int i40 = i2 + 2;
            qt.y0(147, (bArr[i40] >> 7) & 1);
            qt.y0(148, (bArr[i40] >> 4) & 7);
            qt.y0(149, (bArr[i40] >> 1) & 7);
            int i41 = i2 + 3;
            qt.y0(150, (bArr[i41] >> 7) & 1);
            qt.y0(151, (bArr[i41] >> 4) & 7);
            qt.y0(152, (bArr[i41] >> 0) & 15);
            int i42 = i2 + 4;
            qt.y0(153, (bArr[i42] >> 7) & 1);
            qt.y0(154, (bArr[i42] >> 6) & 1);
            qt.y0(155, (bArr[i42] >> 5) & 1);
            qt.y0(156, (bArr[i42] >> 4) & 1);
            qt.y0(157, (bArr[i42] >> 3) & 1);
            qt.y0(158, (bArr[i42] >> 2) & 1);
            o1.x.C(nt.f8643f, 1049, new int[]{36, bArr[i40], bArr[i41], bArr[i42], bArr[i2 + 5], bArr[i2 + 6]}, null, null);
            return;
        }
        switch (b2) {
            case 17:
                byte b13 = bArr[i2 + 4];
                byte b14 = bArr[i2 + 5];
                this.f3348c = b13 & 255;
                int i43 = 0;
                while (true) {
                    iArr2 = this.f3353h;
                    if (i43 < iArr2.length) {
                        int i44 = this.f3348c;
                        if (i44 != iArr2[i43][0]) {
                            i43++;
                        } else if (i44 != 0) {
                            this.f3347b = i43;
                        }
                    }
                }
                int i45 = this.f3348c;
                if (i45 == 4) {
                    if ((b14 & 255) == 1) {
                        if (nt.f8633a == 328126) {
                            int i46 = h0.c.E;
                            if (i46 == 3 || i46 == 4 || i46 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else if (u0.i.l3().r3()) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(13, 0);
                                l0.b0.l0(13, 1);
                            }
                        } else {
                            l0.b0.l0(13, 0);
                            l0.b0.l0(13, 1);
                        }
                    }
                    break;
                } else if (i45 == 6) {
                    if ((b14 & 255) == 1) {
                        int i47 = nt.f8633a;
                        if (i47 == 197052 || i47 == 262588 || i47 == 721340 || i47 == 852412 || i47 == 197052 || i47 == 262588 || i47 == 721340 || i47 == 3277244 || i47 == 917948 || i47 == 983484 || i47 == 1049020 || i47 == 3408318 || i47 == 3473854 || i47 == 1114556 || i47 == 3080636 || i47 == 1180092 || i47 == 1900988 || i47 == 1245628 || i47 == 1311164 || i47 == 393662 || i47 == 917950 || i47 == 1704382 || i47 == 1769918) {
                            int i48 = h0.c.E;
                            if (i48 == 3 || i48 == 4 || i48 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else if (u0.i.l3().r3()) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(12, 0);
                                l0.b0.l0(12, 1);
                            }
                        } else {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        }
                    }
                    break;
                } else if ((b14 & 255) == 1 && (i9 = this.f3347b) < iArr2.length && i9 != 255) {
                    l0.b0.l0(iArr2[i9][1], 0);
                    l0.b0.l0(this.f3353h[this.f3347b][1], 1);
                    break;
                }
                break;
            case 18:
                byte b15 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b15 >> 7) & 1);
                    qt.y0(1, (b15 >> 6) & 1);
                } else {
                    qt.y0(1, (b15 >> 7) & 1);
                    qt.y0(2, (b15 >> 6) & 1);
                }
                qt.y0(3, (b15 >> 5) & 1);
                qt.y0(4, (b15 >> 4) & 1);
                qt.y0(5, (b15 >> 3) & 1);
                break;
            case 19:
                qt.y0(99, (((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255)) & 65535);
                qt.y0(100, (((bArr[i2 + 4] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255)) & 16777215);
                qt.y0(101, ((bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280)) & 65535);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f3367v);
        l0.b0.p0(this.f3368w);
        qt.q0(this.f3365t);
        e.e.f1624b.d(this.f3363r);
        z.c.f18184d.d(this.f3362q);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 162) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int i3 = 6;
        if (i2 == 0) {
            z.k.s(227, 4, 111, (byte) iArr[0], (byte) iArr[1], 255, 255);
        }
        if (i2 == 1) {
            z.k.s(227, 2, 61, (byte) iArr[0], (byte) iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 3, 106, 5, 1, iArr[0]);
            return;
        }
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CHANGE_PANORAMA --- " + iArr[0]);
            if (iArr[0] == 0) {
                if (u0.b.f17347o == 0) {
                    z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 1, 1);
                    a.i.a0(100L);
                    z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 1, 0);
                    return;
                }
                return;
            }
            if (u0.b.f17347o == 1) {
                z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 1, 1);
                a.i.a0(100L);
                z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 1, 0);
                return;
            }
            return;
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CAMERA_MODE --- " + iArr[0]);
            int i4 = iArr[0];
            if (i4 != 1) {
                if (i4 == 2) {
                    i3 = 2;
                } else if (i4 == 3) {
                    i3 = 4;
                } else if (i4 != 4) {
                    i3 = i4 != 9 ? 0 : 3;
                } else {
                    i3 = 5;
                }
            }
            z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, i3, 1);
            a.i.a0(100L);
            z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, i3, 0);
            return;
        }
        if (i2 == 1040) {
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CMD_6606 --- " + o1.b0.e(iArr, 0, iArr.length));
            int i5 = iArr[0];
            if (i5 != 1) {
                if (i5 == 25) {
                    z.k.s(227, 4, 111, iArr[1], iArr[2], iArr[3], iArr[4]);
                    return;
                } else {
                    if (i5 != 26) {
                        return;
                    }
                    z.k.s(227, 3, 106, 5, 1, iArr[1]);
                    return;
                }
            }
            switch (nt.f8633a) {
                case 197052:
                case 262588:
                case 393662:
                case 721340:
                case 852412:
                case 917948:
                case 917950:
                case 983484:
                case 1049020:
                case 1114556:
                case 1180092:
                case 1245628:
                case 1311164:
                case 1704382:
                case 1769918:
                case 1900988:
                case 2752956:
                case 3080636:
                case 3277244:
                case 3408318:
                case 3473854:
                    if (!qt.i0().equals("com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct_HP")) {
                        l0.b0.l0(62, 0);
                        l0.b0.l0(62, 1);
                    } else if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct_HP")) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                    }
                    break;
            }
        }
        switch (i2) {
            case 5:
                if (!qt.i0().equals("com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct")) {
                    qt.y0(120, iArr[0]);
                } else {
                    qt.y0(120, 0);
                }
                break;
            case 6:
                if (!qt.i0().equals("com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct")) {
                    qt.y0(121, iArr[0]);
                } else {
                    qt.y0(121, 0);
                }
                break;
            case 7:
                qt.y0(122, iArr[0]);
                break;
            case 8:
                qt.y0(123, iArr[0]);
                break;
            case 9:
                int i6 = iArr[0];
                if (i6 == 1) {
                    o1.u.f("com.android.launcher14.ShowAllApp");
                    a.f.p().t(LogType.CANBUS, " Rcv cmd com.android.launcher14.ShowAllApp");
                    break;
                } else if (i6 == 2) {
                    if (!a.f.v().isShowing()) {
                        a.f.v().show();
                    } else {
                        a.f.v().hide();
                    }
                    break;
                } else if (i6 == 3) {
                    l0.b0.l0(55, 0);
                    l0.b0.l0(55, 1);
                    break;
                }
                break;
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 2, 61, i2, 1);
        a.i.a0(100L);
        z.k.s(227, 2, 61, i2, 0);
    }
}
