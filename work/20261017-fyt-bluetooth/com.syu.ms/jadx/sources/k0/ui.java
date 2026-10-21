package k0;

import android.content.pm.PackageManager;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ui extends lt {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f11050o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f11051p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f11052q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f11053r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f11054s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f11055t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f11056u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f11057v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f11058w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11059b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11062e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11060c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11061d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 21}, new int[]{7, 13}, new int[]{8, 18}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11063f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f11064g = {new int[]{1, 25}, new int[]{4, 29}, new int[]{5, 8}, new int[]{6, 7}, new int[]{7, 30}, new int[]{8, 31}, new int[]{9, 11}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11065h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f11066i = 0.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11067j = 255;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11068k = 255;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f11069l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f11070m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f11071n = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ui.this.f11066i = u0.b.f17359s0;
            if ((ui.this.f11066i <= 22.5d && ui.this.f11066i >= 0.0f) || (ui.this.f11066i >= 337.5d && ui.this.f11066i <= 360.0f)) {
                ui.this.f11068k = 0;
            } else if (ui.this.f11066i > 22.5d && ui.this.f11066i < 67.5d) {
                ui.this.f11068k = 1;
            } else if (ui.this.f11066i >= 67.5d && ui.this.f11066i <= 112.5d) {
                ui.this.f11068k = 2;
            } else if (ui.this.f11066i > 112.5d && ui.this.f11066i < 157.5d) {
                ui.this.f11068k = 3;
            } else if (ui.this.f11066i >= 157.5d && ui.this.f11066i <= 202.5d) {
                ui.this.f11068k = 4;
            } else if (ui.this.f11066i > 202.5d && ui.this.f11066i < 247.5d) {
                ui.this.f11068k = 5;
            } else if (ui.this.f11066i >= 247.5d && ui.this.f11066i <= 292.5d) {
                ui.this.f11068k = 6;
            } else if (ui.this.f11066i <= 292.5d || ui.this.f11066i >= 337.5d) {
                ui.this.f11068k = 0;
            } else {
                ui.this.f11068k = 7;
            }
            if (ui.this.f11068k == ui.this.f11067j || !o1.i.o().f16886b) {
                return;
            }
            z.k.s(227, 153, 1, ui.this.f11068k);
            ui uiVar = ui.this;
            uiVar.f11067j = uiVar.f11068k;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 152, 4, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, (byte) time.hour, (byte) time.minute, (byte) time.second);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            String str2;
            String str3;
            if (u0.b.f17306a0 != 1) {
                ui.this.b3((byte) 0, "   AUDIO OFF   ");
                return;
            }
            int i2 = u0.b.D;
            if (i2 != 1) {
                switch (i2) {
                    case 8:
                    case 9:
                    case 10:
                        ui.this.b3((byte) 4, "Track : " + u0.b.r3);
                        break;
                    default:
                        ui.this.b3((byte) 7, "      AUX      ");
                        break;
                }
                return;
            }
            byte[] bArr = new byte[15];
            int i3 = w0.d.f17796h;
            if (i3 - 65536 == 0 || 1 == i3 - 65536 || 2 == i3 - 65536) {
                if (w0.d.f17797i / 10000 == 0) {
                    str = ProxyProperties.LOCAL_EXCL_LIST + " ";
                } else {
                    str = ProxyProperties.LOCAL_EXCL_LIST + (w0.d.f17797i / 10000);
                }
                bArr[1] = (byte) ((w0.d.f17797i % 10000) / 1000);
                String str4 = str + ((int) bArr[1]);
                bArr[2] = (byte) ((w0.d.f17797i % 1000) / 100);
                String str5 = (str4 + ((int) bArr[2])) + ".";
                bArr[4] = (byte) ((w0.d.f17797i % 100) / 10);
                String str6 = str5 + ((int) bArr[4]);
                bArr[5] = (byte) (w0.d.f17797i % 10);
                ui.this.b3((byte) 1, (str6 + ((int) bArr[5])) + "Mhz");
                return;
            }
            if (w0.d.f17797i / 10000 == 0) {
                str2 = ProxyProperties.LOCAL_EXCL_LIST + " ";
            } else {
                str2 = ProxyProperties.LOCAL_EXCL_LIST + (w0.d.f17797i / 10000);
            }
            if ((w0.d.f17797i % 10000) / 1000 == 0) {
                str3 = str2 + " ";
            } else {
                str3 = str2 + ((w0.d.f17797i % 10000) / 1000);
            }
            bArr[2] = (byte) ((w0.d.f17797i % 1000) / 100);
            String str7 = str3 + ((int) bArr[2]);
            bArr[3] = (byte) ((w0.d.f17797i % 100) / 10);
            String str8 = str7 + ((int) bArr[3]);
            bArr[4] = (byte) (w0.d.f17797i % 10);
            ui.this.b3((byte) 2, (str8 + ((int) bArr[4])) + "Khz");
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
        if (i2 == 41) {
            if (iArr[1] == 0) {
                a3(15);
                return;
            } else {
                if (iArr[1] == 1) {
                    a3(14);
                }
                return;
            }
        }
        if (i2 == 42) {
            if (iArr[1] == 0) {
                a3(17);
                return;
            } else {
                if (iArr[1] == 1) {
                    a3(16);
                    return;
                }
                return;
            }
        }
        if (i2 == 59) {
            int i3 = iArr[1];
            if (i3 == 1) {
                if (this.f11065h != 2) {
                    a3(10);
                    return;
                }
                return;
            } else if (i3 == 2) {
                if (this.f11065h != 1) {
                    a3(8);
                    return;
                }
                return;
            } else if (i3 == 3) {
                if (this.f11065h != 3) {
                    a3(9);
                    return;
                }
                return;
            } else {
                if (i3 == 5 && this.f11065h != 6) {
                    a3(11);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(0);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(4);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(1);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(1);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(4);
                    }
                } else if (nt.f8645g[11] == 0) {
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
                        a3(6);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(6);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 1) {
                        a3(3);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 0) {
                    a3(3);
                    break;
                }
                break;
            case 39:
                if (iArr[1] == -1) {
                    a3(13);
                } else if (iArr[1] == -2) {
                    a3(12);
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
        mtVar.f8321p = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8314i = 0;
            mtVar2.f8322q = 1;
        }
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f11071n);
        qt.z(this.f11070m);
        o1.h.f16865a.a(this.f11069l, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 55, 56};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f11060c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f11061d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f11060c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f11059b = i4;
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
                    int i7 = this.f11059b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f11059b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 4) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f11063f = b5 & 255;
            int i8 = 0;
            while (true) {
                iArr2 = this.f11064g;
                if (i8 >= iArr2.length) {
                    break;
                }
                int i9 = this.f11063f;
                if (i9 == iArr2[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f11062e = i8;
                    break;
                }
                i8++;
            }
            int i10 = this.f11063f;
            if (i10 == 5) {
                for (int i11 = 0; i11 < (b6 & 255); i11++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (i10 == 6) {
                for (int i12 = 0; i12 < (b6 & 255); i12++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i10 == 7) {
                for (int i13 = 0; i13 < (b6 & 255); i13++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            if (i10 == 8) {
                for (int i14 = 0; i14 < (b6 & 255); i14++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            if ((b6 & 255) != 0) {
                if (i8 < iArr2.length) {
                    l0.b0.l0(iArr2[i8][1], 0);
                    return;
                }
                return;
            } else {
                int i15 = this.f11062e;
                if (i15 < iArr2.length && i15 != 255) {
                    l0.b0.l0(iArr2[i15][1], 1);
                }
                this.f11062e = 255;
                return;
            }
        }
        if (b2 == 5) {
            int i16 = i2 + 2;
            qt.y0(10, (bArr[i16] >> 7) & 1);
            qt.y0(11, (bArr[i16] >> 6) & 1);
            qt.y0(53, (bArr[i16] >> 5) & 1);
            qt.y0(13, (bArr[i16] >> 4) & 1);
            qt.y0(12, (bArr[i16] >> 2) & 3);
            qt.y0(16, (bArr[i16] >> 1) & 1);
            qt.y0(65, (bArr[i16] >> 0) & 1);
            int i17 = i2 + 3;
            qt.y0(62, (bArr[i17] >> 6) & 3);
            qt.y0(21, (bArr[i17] >> 0) & 15);
            int i18 = i2 + 4;
            qt.y0(18, (bArr[i18] >> 6) & 1);
            qt.y0(19, (bArr[i18] >> 4) & 1);
            qt.y0(20, (bArr[i18] >> 5) & 1);
            this.f11065h = (bArr[i18] >> 4) & 15;
            int i19 = i2 + 5;
            int i20 = bArr[i19] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i20 = bArr[i2 + 6] & 255;
            }
            if (i20 == 0) {
                qt.y0(27, -2);
            } else if (i20 == 127) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i20);
            }
            int i21 = bArr[i2 + 6] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i21 = bArr[i19] & 255;
            }
            if (i21 == 0) {
                qt.y0(28, -2);
            } else if (i21 == 127) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i21);
            }
            int i22 = i2 + 7;
            qt.y0(29, (bArr[i22] >> 6) & 3);
            qt.y0(31, (bArr[i22] >> 4) & 3);
            qt.y0(30, (bArr[i22] >> 2) & 3);
            qt.y0(32, 3 & (bArr[i22] >> 0));
            qt.y0(66, 1 & (bArr[i2 + 8] >> 7));
            int i23 = bArr[i2 + 9] & 255;
            if (i23 > 125) {
                u0.d.B3(0);
                return;
            } else {
                u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 0 ? (i23 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR : (((i23 * 18) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1));
                return;
            }
        }
        if (b2 == 6) {
            int i24 = i2 + 2;
            qt.y0(42, (bArr[i24] >> 7) & 1);
            qt.y0(43, (bArr[i24] >> 6) & 1);
            qt.y0(67, (bArr[i24] >> 5) & 1);
            qt.y0(44, bArr[i24] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i25 = i2 + 3;
            qt.y0(47, (bArr[i25] >> 7) & 1);
            qt.y0(46, (bArr[i25] >> 6) & 1);
            int i26 = bArr[i2 + 4] & 255;
            if (i26 == 0) {
                qt.y0(40, -2);
                return;
            } else if (i26 == 127) {
                qt.y0(40, -3);
                return;
            } else {
                qt.y0(40, i26);
                return;
            }
        }
        if (b2 == 7) {
            qt.y0(99, (bArr[i2 + 2] >> 6) & 3);
            qt.y0(100, (bArr[i2 + 3] >> 0) & 1);
            int i27 = i2 + 4;
            qt.y0(101, (bArr[i27] >> 6) & 3);
            qt.y0(102, (bArr[i27] >> 4) & 3);
            qt.y0(103, (bArr[i27] >> 3) & 1);
            qt.y0(104, (bArr[i27] >> 1) & 1);
            int i28 = i2 + 5;
            qt.y0(105, (bArr[i28] >> 6) & 1);
            qt.y0(106, (bArr[i28] >> 3) & 1);
            qt.y0(107, (bArr[i28] >> 2) & 1);
            qt.y0(108, (bArr[i2 + 6] >> 5) & 3);
            return;
        }
        if (b2 == 9) {
            qt.m(bArr[i2 + 2], 0, 128, true, 127);
            return;
        }
        if (b2 == 10) {
            int i29 = bArr[i2 + 3] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i29 >> 7) & 1);
                qt.y0(1, (i29 >> 6) & 1);
            } else {
                qt.y0(2, (i29 >> 6) & 1);
                qt.y0(1, (i29 >> 7) & 1);
            }
            qt.y0(4, (i29 >> 4) & 1);
            qt.y0(3, (i29 >> 5) & 1);
            qt.y0(5, (i29 >> 3) & 1);
            return;
        }
        if (b2 != 112) {
            if (b2 != 113) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        qt.y0(110, bArr[i2 + 2] & 255);
        qt.y0(111, bArr[i2 + 3] & 255);
        qt.y0(112, bArr[i2 + 4] & 255);
        qt.y0(113, bArr[i2 + 5] & 255);
        qt.y0(114, bArr[i2 + 6] & 255);
        qt.y0(115, bArr[i2 + 7] & 255);
        qt.y0(116, 3 & (bArr[i2 + 8] >> 1));
        qt.y0(117, bArr[i2 + 9] & 255);
        qt.y0(118, bArr[i2 + 10] & 255);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f11071n);
        qt.q0(this.f11070m);
        o1.h.f16865a.d(this.f11069l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 119) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            l3(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6]);
            return;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                z.k.s(227, 149, 2, iArr[0], iArr[1]);
                return;
            } else {
                if (i2 != 3) {
                    return;
                }
                z.k.s(227, 150, 2, iArr[0], iArr[1]);
                return;
            }
        }
        if (iArr[0] == 82) {
            k3(iArr[1]);
        } else if (iArr[0] == 83) {
            j3(iArr[1]);
        } else {
            z.k.s(227, 151, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID, 2, i2, 1);
        a.i.a0(100L);
        z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID, 2, i2, 1);
    }

    public final void b3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[34];
        for (int i2 = 0; i2 < 34; i2++) {
            iArr[i2] = 0;
        }
        iArr[0] = 227;
        iArr[1] = 144;
        iArr[2] = 31;
        iArr[3] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 4] = (iCodePointAt >> 8) & 255;
            iArr[i4 + 5] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void j3(int i2) {
        f11058w = i2;
        z.k.s(227, 151, 2, 83, i2);
        qt.y0(118, f11058w);
    }

    public final void k3(int i2) {
        f11057v = i2;
        z.k.s(227, 151, 2, 82, i2);
        qt.y0(117, f11057v);
    }

    public final void l3(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        f11050o = i2;
        f11051p = i3;
        f11052q = i4;
        f11053r = i5;
        f11054s = i6;
        f11055t = i7;
        f11056u = (i8 >> 1) & 3;
        z.k.s(227, 147, 7, i2, i3, i4, i5, i6, i7, i8);
        qt.y0(110, f11050o);
        qt.y0(111, f11051p);
        qt.y0(112, f11052q);
        qt.y0(113, f11053r);
        qt.y0(114, f11054s);
        qt.y0(115, f11055t);
        qt.y0(116, f11056u);
    }
}
