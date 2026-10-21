package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class j8 extends lt {
    public static int[] A = {0, 0, 2, 3, 4, 5, 8, 9, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6724d;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public f f6733m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f6722b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6723c = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6725e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f6726f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{32, 64}, new int[]{33, 21}, new int[]{34, 39}, new int[]{35, 3}, new int[]{36, 4}, new int[]{43, 7}, new int[]{44, 8}, new int[]{45, 25}, new int[]{47, 38}, new int[]{48, 55}, new int[]{50, 1}, new int[]{51, 54}, new int[]{52, 6}, new int[]{53, 5}, new int[]{57, 25}, new int[]{129, 7}, new int[]{130, 8}, new int[]{134, 12}, new int[]{135, 2}, new int[]{136, 5}, new int[]{139, 3}, new int[]{140, 4}, new int[]{141, 13}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f6727g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 25}, new int[]{10, 18}, new int[]{32, 64}, new int[]{33, 21}, new int[]{34, 39}, new int[]{35, 3}, new int[]{36, 4}, new int[]{43, 7}, new int[]{44, 8}, new int[]{45, 25}, new int[]{47, 38}, new int[]{48, 55}, new int[]{50, 1}, new int[]{51, 54}, new int[]{52, 6}, new int[]{53, 5}, new int[]{54, 1}, new int[]{55, 1}, new int[]{56, 5}, new int[]{57, 25}, new int[]{129, 7}, new int[]{130, 8}, new int[]{134, 12}, new int[]{135, 2}, new int[]{136, 5}, new int[]{139, 3}, new int[]{140, 4}, new int[]{141, 13}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6728h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f6729i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f6730j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f6731k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f6732l = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f6734n = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f6735o = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f6736p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f6737q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f6738r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f6739s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f6740t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f6741u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f6742v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f6743w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f6744x = 255;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final Runnable f6745y = new d();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f6746z = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.I();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.A0();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 166, 6, time.year - 2020, time.month + 1, time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j8.this.b3(0);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 5) {
                return;
            }
            if (i2 == 10) {
                z.k.s(227, -123, 1, 2);
                return;
            }
            if (i2 == 9) {
                z.k.s(227, -123, 1, 1);
                return;
            }
            if (i2 == 13) {
                z.k.s(227, -123, 1, 3);
                return;
            }
            if (i2 == 14 || i2 == 15) {
                z.k.s(227, -123, 1, 4);
                return;
            }
            if (i2 == 16 || i2 == 17 || i2 == 20 || i2 == 21 || i2 == 32 || i2 == 32) {
                z.k.s(227, -123, 1, 5);
                return;
            }
            if (i2 == 25 || i2 == 27) {
                z.k.s(227, -123, 1, 8);
                return;
            }
            if (i2 == 26) {
                z.k.s(227, -123, 1, 9);
                return;
            }
            if (i2 == 0) {
                z.k.s(227, -123, 1, 0);
                return;
            }
            if (i2 == 33 || i2 == 35) {
                z.k.s(227, -18, 1, 0);
                return;
            }
            if (i2 == 34 || i2 == 36) {
                z.k.s(227, -18, 1, 1);
            } else if (i2 == 37) {
                z.k.s(227, -18, 1, 2);
            }
        }
    }

    public class f extends BroadcastReceiver {
        public f() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0042 A[Catch: Exception -> 0x00ed, TryCatch #0 {Exception -> 0x00ed, blocks: (B:5:0x0020, B:7:0x002a, B:11:0x0037, B:13:0x003b, B:14:0x0042, B:16:0x0049, B:18:0x0051, B:20:0x005b, B:21:0x0063, B:23:0x006d, B:24:0x008a, B:26:0x0094, B:27:0x009d, B:29:0x00a7, B:30:0x00b0, B:32:0x00ba, B:34:0x00c0, B:36:0x00cb), top: B:41:0x0020 }] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (!"AUTONAVI_STANDARD_BROADCAST_SEND".equals(action) || extras == null) {
                return;
            }
            try {
                boolean z2 = false;
                if (extras.getInt("KEY_TYPE") == 10019) {
                    int i2 = extras.getInt("EXTRA_STATE");
                    if (i2 != 2 && i2 != 39) {
                        switch (i2) {
                            case 8:
                            case 10:
                                j8 j8Var = j8.this;
                                j8Var.f6743w = 1;
                                j8Var.f6742v = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                j8 j8Var2 = j8.this;
                                j8Var2.f6743w = 0;
                                j8Var2.f6742v = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        j8 j8Var3 = j8.this;
                        j8Var3.f6743w = 0;
                        j8Var3.f6742v = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (j8.this.f6737q != extras.getInt("SEG_REMAIN_DIS")) {
                        j8.this.f6737q = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (j8.this.f6736p != extras.getInt("ROUTE_REMAIN_DIS")) {
                        j8.this.f6736p = extras.getInt("ROUTE_REMAIN_DIS");
                        j8.this.f6740t = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (j8.this.f6738r != extras.getInt("CAR_DIRECTION")) {
                        j8.this.f6738r = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (j8.this.f6739s != extras.getInt("ROUTE_ALL_TIME")) {
                        j8.this.f6739s = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (j8.this.f6741u != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        j8.this.f6741u = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                if (z2) {
                    j8.this.b3(1);
                    o1.j.e(o1.l.a(), j8.this.f6745y);
                    o1.j.b(o1.l.a(), j8.this.f6745y, 10000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ f(j8 j8Var, a aVar) {
            this();
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
        int i3 = 128;
        if (i2 == 59) {
            if (iArr[1] != 0) {
                int[] iArr2 = nt.f8645g;
                int i4 = ((iArr2[20] << 0) & 1) | ((iArr2[18] << 2) & 4) | ((iArr2[19] << 1) & 2);
                if (i4 != 1) {
                    if (i4 == 2) {
                        i3 = 64;
                    } else if (i4 == 3) {
                        i3 = 96;
                    } else if (i4 == 4) {
                        i3 = 192;
                    } else if (i4 == 5) {
                        i3 = 160;
                    } else if (i4 == 6) {
                        i3 = 32;
                    } else if (i4 == 7) {
                        i3 = 224;
                    }
                }
                a3((i3 << 5) & 224, 2);
                return;
            }
            return;
        }
        if (i2 == 68) {
            if (iArr[1] == 1) {
                z.k.s(227, 126, 2, 81, 0);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, 126, 2, 81, 1);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, 126, 2, 82, 0);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, 126, 2, 82, 1);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, 126, 2, 83, 0);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, 126, 2, 83, 1);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, 126, 2, 84, 0);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, 126, 2, 84, 1);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, 126, 2, 80, 0);
                return;
            }
            if (iArr[1] == 10) {
                z.k.s(227, 126, 2, 80, 1);
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, 126, 2, 85, 0);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, 126, 2, 85, 1);
                    return;
                }
                return;
            }
        }
        if (i2 == 70) {
            z.k.s(227, -13, 2, 17, iArr[1]);
            return;
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(128, 0);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(32, 0);
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
                if (iArr[1] == -1) {
                    a3(2, 1);
                } else if (iArr[1] != -2) {
                    a3(((iArr[1] < 7 ? iArr[1] : 7) << 4) & 240, 1);
                } else {
                    a3(1, 1);
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0075  */
    /* JADX WARN: Code duplicated, block: B:13:0x007a  */
    /* JADX WARN: Code duplicated, block: B:26:0x00ad  */
    @Override // k0.lt
    public void S2() {
        y0.g.f18094d.a(this.f6730j, 1);
        y0.g.f18095e.a(this.f6730j, 1);
        w0.e.f17815a.a(this.f6729i, 1);
        w0.e.f17819e.a(this.f6729i, 1);
        u0.c.f17393t.a(this.f6729i, 1);
        u0.c.f17392s.a(this.f6729i, 1);
        u0.c.f17374a.a(this.f6729i, 1);
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f6746z);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        int i2 = nt.f8637c;
        a aVar = null;
        if (i2 != 0) {
            if (i2 != 5) {
                switch (i2) {
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                        break;
                    case 13:
                    case 18:
                    case 19:
                        mtVar.f8306a = null;
                        mtVar.f8312g = 0;
                        this.f6733m = new f(this, aVar);
                        break;
                    case 14:
                    case 15:
                    case 22:
                        mtVar.f8314i = 1;
                        break;
                    case 16:
                    case 17:
                    case 20:
                    case 21:
                        mtVar.f8311f = 0;
                        mtVar.f8312g = 0;
                        break;
                    default:
                        switch (i2) {
                            case 24:
                                qt.z(this.f6732l);
                                break;
                            case 25:
                            case 26:
                            case 27:
                                mtVar.f8314i = 1;
                                break;
                            default:
                                switch (i2) {
                                    case 31:
                                    case 32:
                                        mtVar.f8311f = 0;
                                        mtVar.f8312g = 0;
                                        break;
                                    case 33:
                                    case 34:
                                    case 35:
                                    case 36:
                                    case 37:
                                        qt.z(this.f6732l);
                                        this.f7886a.f8314i = 1;
                                        break;
                                    default:
                                        mtVar.f8306a = null;
                                        break;
                                }
                                break;
                        }
                        break;
                }
            } else {
                this.f6722b.a();
                e3(this.f6722b.b(1, 0));
            }
        }
        int i3 = nt.f8637c;
        if (i3 != 16 && i3 != 17 && i3 != 20 && i3 != 21) {
            switch (i3) {
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                    this.f6733m = new f(this, aVar);
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                    App.c().registerReceiver(this.f6733m, intentFilter);
                    break;
            }
        } else {
            this.f6733m = new f(this, aVar);
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
            App.c().registerReceiver(this.f6733m, intentFilter2);
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56, 59, 70};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int i4;
        int i5;
        int i6;
        int i7 = bArr[i2] & 255;
        if (i7 == 32) {
            if (nt.a()) {
                byte b2 = bArr[i2 + 2];
                byte b3 = bArr[i2 + 3];
                this.f6725e = (b2 | 128) & 255;
                int i8 = 0;
                while (true) {
                    iArr = this.f6726f;
                    if (i8 >= iArr.length) {
                        break;
                    }
                    int i9 = this.f6725e;
                    if (i9 == iArr[i8][0]) {
                        if (i9 == 0) {
                            break;
                        }
                        this.f6724d = i8;
                        break;
                    }
                    i8++;
                }
                int i10 = this.f6725e;
                if (i10 == 139) {
                    if ((b3 & 255) == 1) {
                        if (h0.c.E != 4) {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                            return;
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                    }
                    return;
                }
                if (i10 == 140) {
                    if ((b3 & 255) == 1) {
                        int i11 = h0.c.E;
                        if (i11 == 3 || i11 == 4 || i11 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                            return;
                        } else {
                            l0.b0.l0(4, 0);
                            l0.b0.l0(4, 1);
                            return;
                        }
                    }
                    return;
                }
                int i12 = b3 & 255;
                if (i12 == 1) {
                    if (i8 < iArr.length) {
                        l0.b0.l0(iArr[i8][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i12 == 0) {
                        int i13 = this.f6724d;
                        if (i13 < iArr.length && i13 != 255) {
                            l0.b0.l0(iArr[i13][1], 1);
                        }
                        this.f6724d = 255;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i7 == 33) {
            if (nt.a()) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                int i14 = nt.f8633a;
                if (i14 == 655615 || i14 == 590079) {
                    this.f6725e = b4 & 255;
                    int i15 = 0;
                    while (true) {
                        iArr2 = this.f6727g;
                        if (i15 >= iArr2.length) {
                            break;
                        }
                        int i16 = this.f6725e;
                        if (i16 == iArr2[i15][0]) {
                            if (i16 == 0) {
                                break;
                            }
                            this.f6724d = i15;
                            break;
                        }
                        i15++;
                    }
                    int i17 = b5 & 255;
                    if (i17 == 1) {
                        if (i15 < iArr2.length) {
                            l0.b0.l0(iArr2[i15][1], 0);
                            return;
                        }
                        return;
                    } else {
                        if (i17 == 0) {
                            int i18 = this.f6724d;
                            if (i18 < iArr2.length && i18 != 255) {
                                l0.b0.l0(iArr2[i18][1], 1);
                            }
                            this.f6724d = 255;
                            return;
                        }
                        return;
                    }
                }
                this.f6725e = b4 & 255;
                int i19 = 0;
                while (true) {
                    iArr3 = this.f6726f;
                    if (i19 >= iArr3.length) {
                        break;
                    }
                    int i20 = this.f6725e;
                    if (i20 == iArr3[i19][0]) {
                        if (i20 == 0) {
                            break;
                        }
                        this.f6724d = i19;
                        break;
                    }
                    i19++;
                }
                int i21 = b5 & 255;
                if (i21 == 1) {
                    if (i19 < iArr3.length) {
                        l0.b0.l0(iArr3[i19][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i21 == 0) {
                        int i22 = this.f6724d;
                        if (i22 < iArr3.length && i22 != 255) {
                            l0.b0.l0(iArr3[i22][1], 1);
                        }
                        this.f6724d = 255;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i7 == 48) {
            if (this.f6731k) {
                return;
            }
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 5600);
            return;
        }
        if (i7 == 104) {
            qt.y0(1032, ((bArr[i2 + 3] & 255) * 256) + (bArr[i2 + 2] & 255));
            return;
        }
        if (i7 == 106) {
            qt.y0(1031, ((bArr[i2 + 3] & 255) * 256) + (bArr[i2 + 2] & 255));
            return;
        }
        if (i7 == 125) {
            int i23 = bArr[i2 + 2] & 255;
            if (i23 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i24 = i2 + 3;
                    l0.c0.b((bArr[i24] >> 3) & 1, (bArr[i24] >> 4) & 1, 0);
                    return;
                } else {
                    int i25 = i2 + 3;
                    l0.c0.a((bArr[i25] >> 3) & 1, (bArr[i25] >> 4) & 1, 0);
                    return;
                }
            }
            if (i23 == 3) {
                int i26 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i26);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i26}, null, null);
                return;
            } else if (i23 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f6731k = true;
                return;
            } else {
                if (i23 != 10) {
                    return;
                }
                qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                return;
            }
        }
        if (i7 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (i7 == 54) {
            if (nt.a()) {
                byte b6 = bArr[i2 + 2];
                u0.d.A3((b6 & 128) != 0 ? 1000 - ((b6 & 127) * 10) : ((b6 & 127) * 10) + 1000);
                return;
            }
            return;
        }
        if (i7 == 55) {
            int i27 = nt.f8633a;
            if (i27 == 983295 || i27 == 1114367) {
                int i28 = i2 + 2;
                this.f6728h = bArr[i28] & 255;
                if ((bArr[i28] & 255) != 0) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            return;
        }
        if (i7 == 64) {
            qt.y0(147, bArr[i2 + 2] & 255);
            qt.y0(148, bArr[i2 + 3] & 255);
            qt.y0(149, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(150, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(151, bArr[i2 + 8] & 255);
            qt.y0(152, bArr[i2 + 9] & 255);
            qt.y0(153, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280));
            return;
        }
        if (i7 == 65) {
            o1.x.C(nt.f8643f, 154, new int[]{bArr[i2 + 2], bArr[i2 + 3], bArr[i2 + 4], bArr[i2 + 5], bArr[i2 + 6], bArr[i2 + 7], bArr[i2 + 8], bArr[i2 + 9], bArr[i2 + 10], bArr[i2 + 11], bArr[i2 + 12]}, null, null);
            return;
        }
        switch (i7) {
            case 35:
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                byte b9 = bArr[i2 + 4];
                byte b10 = bArr[i2 + 5];
                qt.y0(10, (b7 >> 7) & 1);
                qt.y0(11, (b7 >> 6) & 1);
                qt.y0(12, (b7 >> 5) & 1);
                qt.y0(53, (b7 >> 4) & 1);
                qt.y0(13, (b7 >> 3) & 1);
                qt.y0(16, (b7 >> 1) & 1);
                qt.y0(65, (b7 >> 0) & 1);
                switch (b8) {
                    case 1:
                        i4 = 0;
                        i5 = 0;
                        i6 = 1;
                        break;
                    case 2:
                        i4 = 0;
                        i6 = 1;
                        i5 = i6;
                        break;
                    case 3:
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                        break;
                    case 4:
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                        break;
                    case 5:
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                        break;
                    case 6:
                        i4 = 1;
                        i6 = i4;
                        i5 = i6;
                        break;
                    case 7:
                        i5 = 0;
                        i4 = 1;
                        i6 = 1;
                        break;
                    default:
                        i4 = 0;
                        i6 = i4;
                        i5 = i6;
                        break;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(65, i4);
                qt.y0(21, b9 & DhcpPacket.DHCP_DOMAIN_NAME);
                if (b10 == 64) {
                    qt.y0(27, -2);
                } else if (b10 == 96) {
                    qt.y0(27, -3);
                } else if (b10 < 65 || b10 > 95) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, ((b10 - 64) * 5) + 160);
                }
                int i29 = i2 + 7;
                qt.y0(30, (bArr[i29] >> 6) & 3);
                qt.y0(29, (bArr[i29] >> 4) & 3);
                qt.y0(32, (bArr[i29] >> 2) & 3);
                qt.y0(31, (bArr[i29] >> 0) & 3);
                int i30 = i2 + 8;
                qt.y0(95, (bArr[i30] >> 2) & 3);
                qt.y0(93, (bArr[i30] >> 0) & 3);
                break;
            case 36:
                if (nt.a()) {
                    u0.d.R2(l0.c0.N0(bArr[i2 + 2] & 255));
                    int i31 = i2 + 3;
                    u0.d.S2(l0.c0.N0(bArr[i31] & 255));
                    u0.d.T2(l0.c0.N0(bArr[i31] & 255));
                    u0.d.U2(l0.c0.N0(bArr[i2 + 4] & 255));
                }
                break;
            case 37:
                if (nt.a()) {
                    u0.d.R2(l0.c0.N0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.N0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.N0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.N0(bArr[i2 + 5] & 255));
                }
                break;
            case 38:
                if (nt.a()) {
                    int i32 = i2 + 2;
                    int i33 = bArr[i32] & 255;
                    int i34 = i2 + 3;
                    int i35 = bArr[i34] & 255;
                    int i36 = i2 + 4;
                    int i37 = bArr[i36] & 255;
                    int i38 = i2 + 5;
                    int i39 = bArr[i38] & 255;
                    if (i33 == 0 && i35 == 0 && i37 == 0 && i39 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i33 || l0.c0.f13014h != i35 || l0.c0.f13015i != i37 || l0.c0.f13016j != i39) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i33;
                    l0.c0.f13014h = i35;
                    l0.c0.f13015i = i37;
                    l0.c0.f13016j = i39;
                    u0.d.D2(l0.c0.N0(bArr[i32] & 255));
                    u0.d.E2(l0.c0.N0(bArr[i34] & 255));
                    u0.d.F2(l0.c0.N0(bArr[i36] & 255));
                    u0.d.G2(l0.c0.N0(bArr[i38] & 255));
                }
                break;
            case 39:
                int i40 = i2 + 2;
                qt.y0(103, (bArr[i40] >> 1) & 1);
                qt.y0(104, (bArr[i40] >> 0) & 1);
                qt.y0(105, bArr[i40] & 3);
                break;
            case 40:
                int i41 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i41 >> 6) & 1);
                    qt.y0(1, (i41 >> 7) & 1);
                } else {
                    qt.y0(2, (i41 >> 7) & 1);
                    qt.y0(1, (i41 >> 6) & 1);
                }
                qt.y0(4, (i41 >> 5) & 1);
                qt.y0(3, (i41 >> 4) & 1);
                qt.y0(0, (i41 >> 2) & 1);
                qt.y0(5, (i41 >> 3) & 1);
                break;
            case 41:
                int i42 = i2 + 2;
                qt.y0(107, (bArr[i42] >> 6) & 3);
                qt.y0(108, (bArr[i42] >> 5) & 1);
                qt.y0(109, (bArr[i42] >> 4) & 1);
                qt.y0(110, (bArr[i42] >> 3) & 1);
                qt.y0(111, (bArr[i42] >> 2) & 1);
                qt.y0(112, (bArr[i42] >> 1) & 1);
                qt.y0(113, (bArr[i42] >> 0) & 1);
                int i43 = i2 + 3;
                qt.y0(114, (bArr[i43] >> 7) & 1);
                qt.y0(115, (bArr[i43] >> 6) & 1);
                qt.y0(116, (bArr[i43] >> 5) & 1);
                qt.y0(117, (bArr[i43] >> 4) & 1);
                qt.y0(118, (bArr[i43] >> 3) & 1);
                qt.y0(155, (bArr[i43] >> 2) & 1);
                qt.y0(156, (bArr[i43] >> 0) & 3);
                int i44 = i2 + 4;
                qt.y0(119, (bArr[i44] >> 7) & 1);
                qt.y0(120, (bArr[i44] >> 6) & 1);
                qt.y0(121, (bArr[i44] >> 5) & 1);
                qt.y0(122, (bArr[i44] >> 4) & 1);
                qt.y0(123, (bArr[i44] >> 3) & 1);
                qt.y0(124, (bArr[i44] >> 2) & 1);
                qt.y0(125, (bArr[i44] >> 1) & 1);
                int i45 = i2 + 5;
                qt.y0(126, (bArr[i45] >> 4) & 15);
                qt.y0(127, (bArr[i45] >> 0) & 15);
                int i46 = i2 + 6;
                qt.y0(128, (bArr[i46] >> 5) & 7);
                qt.y0(129, (bArr[i46] >> 4) & 1);
                qt.y0(130, (bArr[i46] >> 0) & 15);
                qt.y0(131, (bArr[i2 + 7] >> 4) & 15);
                int i47 = i2 + 8;
                qt.y0(132, (bArr[i47] >> 7) & 1);
                qt.y0(133, (bArr[i47] >> 6) & 1);
                qt.y0(134, (bArr[i47] >> 5) & 1);
                qt.y0(135, (bArr[i47] >> 2) & 7);
                qt.y0(146, (bArr[i47] >> 1) & 1);
                qt.y0(157, (bArr[i47] >> 0) & 1);
                int i48 = i2 + 9;
                qt.y0(136, (bArr[i48] >> 6) & 3);
                qt.y0(137, (bArr[i48] >> 5) & 1);
                qt.y0(138, (bArr[i48] >> 4) & 1);
                qt.y0(139, (bArr[i48] >> 3) & 1);
                qt.y0(158, (bArr[i48] >> 2) & 1);
                qt.y0(159, (bArr[i48] >> 1) & 1);
                qt.y0(160, (bArr[i48] >> 0) & 1);
                int i49 = i2 + 10;
                qt.y0(140, (bArr[i49] >> 5) & 7);
                qt.y0(141, (bArr[i49] >> 2) & 7);
                qt.y0(142, (bArr[i49] >> 0) & 3);
                int i50 = i2 + 11;
                qt.y0(143, (bArr[i50] >> 7) & 1);
                qt.y0(145, (bArr[i50] >> 5) & 1);
                switch (nt.f8637c) {
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                        qt.y0(144, (bArr[i50] >> 2) & 3);
                        qt.y0(162, (bArr[i50] >> 0) & 3);
                        qt.y0(161, (bArr[i50] >> 6) & 1);
                        int i51 = i2 + 12;
                        qt.y0(163, (bArr[i51] >> 5) & 1);
                        qt.y0(164, (bArr[i51] >> 4) & 1);
                        qt.y0(165, (bArr[i51] >> 3) & 1);
                        qt.y0(166, (bArr[i51] >> 2) & 1);
                        qt.y0(167, (bArr[i51] >> 1) & 1);
                        int i52 = i2 + 13;
                        qt.y0(168, (bArr[i52] >> 6) & 1);
                        qt.y0(169, (bArr[i52] >> 5) & 1);
                        qt.y0(170, (bArr[i52] >> 4) & 1);
                        qt.y0(171, (bArr[i52] >> 3) & 1);
                        qt.y0(172, (bArr[i52] >> 2) & 1);
                        qt.y0(173, (bArr[i52] >> 0) & 3);
                        qt.y0(174, (bArr[i2 + 14] >> 0) & 15);
                        break;
                    default:
                        qt.y0(144, (bArr[i50] >> 6) & 1);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f6722b.j();
        y0.g.f18094d.d(this.f6730j);
        y0.g.f18095e.d(this.f6730j);
        w0.e.f17815a.d(this.f6729i);
        w0.e.f17819e.d(this.f6729i);
        u0.c.f17393t.d(this.f6729i);
        u0.c.f17392s.d(this.f6729i);
        u0.c.f17374a.d(this.f6729i);
        qt.q0(this.f6746z);
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f6732l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 175) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -119, 2, iArr[0], iArr[1]);
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -57, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            l0.b0.l0(25, 0);
            l0.b0.l0(25, 1);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            e3(iArr[0]);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -121, 1, iArr[0]);
            return;
        }
        if (i2 == 1003) {
            a.f.p().t(LogType.CANBUS, "C_CHANGE_PANORAMA = " + iArr[0]);
            if (iArr.length > 0) {
                int i3 = nt.f8637c;
                if (i3 == 10) {
                    z.k.s(227, -122, 1, 1);
                    return;
                }
                if (i3 != 15 && i3 != 17 && i3 != 21 && i3 != 27 && i3 != 32) {
                    z.k.s(227, -116, 1, 1);
                    z.k.s(227, -116, 1, 0);
                    return;
                } else if (u0.b.f17347o == 0) {
                    qt.a(1);
                    z.k.s(227, -120, 1, 1);
                    return;
                } else {
                    qt.a(0);
                    z.k.s(227, -120, 1, 0);
                    return;
                }
            }
            return;
        }
        if (i2 != 1005) {
            return;
        }
        a.f.p().t(LogType.CANBUS, "C_CAMERA_MODE = " + iArr[0]);
        if (iArr.length > 0) {
            int i4 = nt.f8637c;
            if (i4 != 17 && i4 != 21 && i4 != 32) {
                int i5 = iArr[0];
                if (i5 == 0) {
                    z.k.s(227, -120, 1, 2);
                    return;
                }
                if (i5 == 1) {
                    z.k.s(227, -120, 1, 5);
                    return;
                } else if (i5 == 2) {
                    z.k.s(227, -120, 1, 3);
                    return;
                } else {
                    if (i5 != 3) {
                        return;
                    }
                    z.k.s(227, -120, 1, 4);
                    return;
                }
            }
            switch (iArr[0]) {
                case 1:
                    z.k.s(227, -120, 1, 2);
                    break;
                case 2:
                    z.k.s(227, -120, 1, 5);
                    break;
                case 3:
                    z.k.s(227, -120, 1, 3);
                    break;
                case 4:
                    z.k.s(227, -120, 1, 4);
                    break;
                case 5:
                    z.k.s(227, -120, 1, 17);
                    break;
                case 6:
                    z.k.s(227, -120, 1, 18);
                    break;
                case 7:
                    z.k.s(227, -120, 1, 19);
                    break;
                case 8:
                    z.k.s(227, -120, 1, 20);
                    break;
                case 9:
                    z.k.s(227, -120, 1, 21);
                    break;
                case 10:
                    z.k.s(227, -120, 1, 23);
                    break;
                case 11:
                    z.k.s(227, -120, 1, 22);
                    break;
                case 12:
                    z.k.s(227, -120, 1, 24);
                    break;
                case 13:
                    if (this.f6728h >= 17) {
                        z.k.s(227, -120, 1, 8);
                    }
                    break;
                case 14:
                    if (this.f6728h < 17) {
                        z.k.s(227, -120, 1, 8);
                    }
                    break;
            }
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

    public final void b3(int i2) {
        int i3 = this.f6741u;
        if (i3 > 0) {
            int[] iArr = A;
            if (i3 >= iArr.length) {
                return;
            }
            int i4 = this.f6737q;
            z.k.s(227, 148, 5, iArr[i3], (i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255, i2);
        }
    }

    public void e3(int i2) {
        z.k.s(227, -117, 1, i2);
        if (this.f6722b.b(1, 0) != i2) {
            this.f6722b.g(1, i2);
        }
        qt.y0(102, i2);
    }
}
