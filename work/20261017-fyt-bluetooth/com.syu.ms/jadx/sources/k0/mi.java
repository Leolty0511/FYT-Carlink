package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class mi extends lt {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int[] f8170z = {0, 0, 2, 3, 4, 5, 0, 0, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8171b;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public e f8180k;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8172c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8173d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 12}, new int[]{12, 24}, new int[]{129, 8}, new int[]{130, 7}, new int[]{131, 30}, new int[]{132, 31}, new int[]{133, 6}, new int[]{134, 5}, new int[]{135, 0}, new int[]{136, 34}, new int[]{137, 35}, new int[]{138, 32}, new int[]{139, 33}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f8174e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8175f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8176g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8177h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f8178i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f8179j = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f8181l = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f8182m = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f8183n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f8184o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f8185p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f8186q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f8187r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f8188s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f8189t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f8190u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f8191v = 255;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final Runnable f8192w = new b();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f8193x = new c();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f8194y = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mi.this.c3(u0.b.K3);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mi.this.d3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mi.this.b3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 166, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0);
            int i2 = nt.f8633a;
            if (i2 == 4784581) {
                z.k.s(227, 238, 1, 2);
            } else {
                if (i2 != 15729079) {
                    return;
                }
                z.k.s(227, 238, 1, 1);
            }
        }
    }

    public class e extends BroadcastReceiver {
        public e() {
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
                                mi miVar = mi.this;
                                miVar.f8190u = 1;
                                miVar.f8189t = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                mi miVar2 = mi.this;
                                miVar2.f8190u = 0;
                                miVar2.f8189t = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        mi miVar3 = mi.this;
                        miVar3.f8190u = 0;
                        miVar3.f8189t = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (mi.this.f8184o != extras.getInt("SEG_REMAIN_DIS")) {
                        mi.this.f8184o = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (mi.this.f8183n != extras.getInt("ROUTE_REMAIN_DIS")) {
                        mi.this.f8183n = extras.getInt("ROUTE_REMAIN_DIS");
                        mi.this.f8187r = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (mi.this.f8185p != extras.getInt("CAR_DIRECTION")) {
                        mi.this.f8185p = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (mi.this.f8186q != extras.getInt("ROUTE_ALL_TIME")) {
                        mi.this.f8186q = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (mi.this.f8188s != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        mi.this.f8188s = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                if (z2) {
                    mi.this.d3();
                    o1.j.e(o1.l.a(), mi.this.f8192w);
                    o1.j.b(o1.l.a(), mi.this.f8192w, 20000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ e(mi miVar, a aVar) {
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
        if (i2 == 68) {
            if (iArr[1] == 10) {
                z.k.s(227, -88, 2, 4, 1);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, -88, 2, 4, 0);
                return;
            }
            if (iArr[1] == 1) {
                z.k.s(227, -88, 2, 3, 2);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, -88, 2, 3, 3);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, -88, 2, 3, 4);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, -88, 2, 3, 5);
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, -88, 2, 3, 0);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, -88, 2, 3, 1);
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
                    a3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(3);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(2);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(0);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(4);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(12);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(11);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(15);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(13);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(6);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(5);
                }
                break;
            case 39:
                int i3 = iArr[1];
                if (i3 == -2) {
                    a3(79);
                    break;
                } else if (i3 == -1) {
                    a3(78);
                    break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f8194y);
        u0.c.f17374a.a(this.f8193x, 1);
        u0.c.f17397x.a(this.f8179j, 1);
        mt mtVar = this.f7886a;
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68};
        mtVar.f8314i = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
        int i2 = nt.f8633a;
        if (i2 == 5964229) {
            mtVar.f8314i = 0;
        }
        a aVar = null;
        switch (i2) {
            case 4784581:
            case 5964229:
            case 11338180:
            case 13894071:
            case 15729079:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8310e = 0;
                mtVar.f8311f = 1;
                mtVar.f8312g = 1;
                this.f8180k = new e(this, aVar);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                App.c().registerReceiver(this.f8180k, intentFilter);
                d3();
                break;
            case 15794615:
                mtVar.f8306a = null;
                mtVar.f8310e = 1;
                mtVar.f8311f = 1;
                mtVar.f8312g = 0;
                break;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        int i7 = 0;
        if (b2 == 37) {
            int i8 = i2 + 2;
            byte b3 = bArr[i8];
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
            qt.y0(0, (b3 >> 2) & 1);
            int i9 = (bArr[i8] >> 0) & 1;
            int i10 = (bArr[i8] >> 1) & 1;
            if (u0.b.f17347o == 0) {
                if (!o1.u.T(a.b.O) && i9 == 1) {
                    qt.t();
                } else if (i9 == 0 && o1.u.T(a.b.O)) {
                    qt.f();
                }
                if (!o1.u.T(a.b.V) && i10 == 1) {
                    o1.u.f(a.b.W);
                    return;
                } else {
                    if (i10 == 0 && o1.u.T(a.b.V)) {
                        o1.u.k();
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 39) {
            int i11 = bArr[i2 + 2] & 255;
            u0.d.A3((i11 & 128) != 0 ? 1000 - ((256 - i11) * 10) : (i11 * 10) + 1000);
            return;
        }
        if (b2 == 41) {
            if (this.f8178i) {
                return;
            }
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 540);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 125) {
            int i12 = bArr[i2 + 2] & 255;
            if (i12 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i13 = i2 + 3;
                    l0.c0.b((bArr[i13] >> 3) & 1, (bArr[i13] >> 4) & 1, 0);
                    return;
                } else {
                    int i14 = i2 + 3;
                    l0.c0.a((bArr[i14] >> 3) & 1, (bArr[i14] >> 4) & 1, 0);
                    return;
                }
            }
            if (i12 == 3) {
                int i15 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i15);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i15}, null, null);
                return;
            }
            if (i12 != 5) {
                if (i12 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f8178i = true;
                return;
            }
            int i16 = bArr[i2 + 3] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i16 >> 6) & 1);
                qt.y0(1, (i16 >> 7) & 1);
            } else {
                qt.y0(2, (i16 >> 7) & 1);
                qt.y0(1, (i16 >> 6) & 1);
            }
            qt.y0(4, (i16 >> 5) & 1);
            qt.y0(3, (i16 >> 4) & 1);
            qt.y0(5, (i16 >> 3) & 1);
            qt.y0(0, (i16 >> 2) & 1);
            return;
        }
        if (b2 == 65) {
            int i17 = i2 + 2;
            qt.y0(99, (bArr[i17] >> 5) & 7);
            qt.y0(100, (bArr[i17] >> 4) & 1);
            qt.y0(101, (bArr[i17] >> 3) & 1);
            qt.y0(102, (bArr[i17] >> 2) & 1);
            qt.y0(103, (bArr[i17] >> 0) & 3);
            int i18 = i2 + 3;
            qt.y0(104, (bArr[i18] >> 7) & 1);
            qt.y0(105, (bArr[i18] >> 5) & 3);
            qt.y0(106, (bArr[i18] >> 3) & 3);
            qt.y0(107, (bArr[i18] >> 2) & 1);
            qt.y0(108, (bArr[i18] >> 1) & 1);
            qt.y0(109, (bArr[i18] >> 0) & 1);
            int i19 = i2 + 4;
            qt.y0(110, (bArr[i19] >> 7) & 1);
            qt.y0(111, (bArr[i19] >> 6) & 1);
            qt.y0(112, (bArr[i19] >> 5) & 1);
            qt.y0(113, (bArr[i19] >> 4) & 1);
            qt.y0(114, (bArr[i19] >> 3) & 1);
            qt.y0(115, (bArr[i19] >> 1) & 1);
            qt.y0(116, (bArr[i19] >> 0) & 1);
            return;
        }
        if (b2 == 66) {
            int i20 = bArr[i2 + 2] & 255;
            this.f8177h = i20;
            if (i20 == 1) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        switch (b2) {
            case 32:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f8172c = b4 & 255;
                int i21 = 0;
                while (true) {
                    iArr = this.f8173d;
                    if (i21 < iArr.length) {
                        int i22 = this.f8172c;
                        if (i22 != iArr[i21][0]) {
                            i21++;
                        } else if (i22 != 0) {
                            this.f8171b = i21;
                        }
                    }
                }
                int i23 = this.f8172c;
                if (i23 == 10) {
                    if ((b5 & 255) == 1) {
                        int i24 = h0.c.E;
                        if (i24 == 3 || i24 == 4 || i24 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                    break;
                } else {
                    switch (i23) {
                        case 129:
                            for (int i25 = 0; i25 < (b5 & 255); i25++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        case 130:
                            for (int i26 = 0; i26 < (b5 & 255); i26++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case 131:
                            if (u0.b.D == 1) {
                                while (i7 < (b5 & 255)) {
                                    u0.d.L1();
                                    i7++;
                                }
                            } else {
                                for (int i27 = 0; i27 < (b5 & 255); i27++) {
                                    l0.b0.l0(30, 0);
                                }
                                l0.b0.l0(30, 1);
                            }
                            break;
                        case 132:
                            if (u0.b.D == 1) {
                                while (i7 < (b5 & 255)) {
                                    u0.d.x1();
                                    i7++;
                                }
                            } else {
                                for (int i28 = 0; i28 < (b5 & 255); i28++) {
                                    l0.b0.l0(31, 0);
                                }
                                l0.b0.l0(31, 1);
                            }
                            break;
                        default:
                            switch (i23) {
                                case 135:
                                    if (this.f8175f != b5) {
                                        this.f8175f = b5;
                                        if (b5 == 1) {
                                            this.f8174e = false;
                                        } else if (b5 == 2) {
                                            this.f8174e = true;
                                            l0.b0.l0(25, 0);
                                            l0.b0.l0(25, 1);
                                        } else if (b5 == 0) {
                                            if (this.f8174e) {
                                                this.f8174e = false;
                                            } else if (u0.b.f17332j == 1) {
                                                l0.b0.l0(25, 0);
                                                l0.b0.l0(25, 1);
                                            } else {
                                                l0.b0.l0(29, 0);
                                                l0.b0.l0(29, 1);
                                            }
                                        }
                                    }
                                    break;
                                case 136:
                                    if ((b5 & 255) == 1) {
                                        if (u0.b.D == 1) {
                                            l0.b0.l0(67, 0);
                                            l0.b0.l0(67, 1);
                                        } else {
                                            l0.b0.l0(34, 0);
                                            l0.b0.l0(34, 1);
                                        }
                                    }
                                    break;
                                case 137:
                                    if ((b5 & 255) == 1) {
                                        if (u0.b.D == 1) {
                                            l0.b0.l0(68, 0);
                                            l0.b0.l0(68, 1);
                                        } else {
                                            l0.b0.l0(35, 0);
                                            l0.b0.l0(35, 1);
                                        }
                                    }
                                    break;
                                default:
                                    if ((b5 & 255) == 0) {
                                        int i29 = this.f8171b;
                                        if (i29 < iArr.length && i29 != 255) {
                                            l0.b0.l0(iArr[i29][1], 1);
                                        }
                                        this.f8171b = 255;
                                    } else if (i21 < iArr.length) {
                                        l0.b0.l0(iArr[i21][1], 0);
                                    }
                                    break;
                            }
                            break;
                    }
                }
                break;
            case 33:
                int i30 = bArr[i2 + 2] & 255;
                int i31 = i2 + 3;
                int i32 = bArr[i31] & 255;
                int i33 = i2 + 4;
                int i34 = bArr[i33] & 255;
                int i35 = bArr[i2 + 5] & 255;
                int i36 = bArr[i2 + 6] & 255;
                int i37 = bArr[i2 + 7] & 255;
                qt.y0(21, i30 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i32 = bArr[i33] & 255;
                    i34 = bArr[i31] & 255;
                }
                if (nt.f8633a != 11338180) {
                    if (i32 == 1) {
                        qt.y0(27, -2);
                    } else if (i32 != 255) {
                        qt.y0(27, i32);
                    } else {
                        qt.y0(27, -3);
                    }
                    if (i34 == 1) {
                        qt.y0(28, -2);
                    } else if (i34 != 255) {
                        qt.y0(28, i34);
                    } else {
                        qt.y0(28, -3);
                    }
                } else {
                    if (i32 == 36) {
                        qt.y0(27, -2);
                    } else if (i32 != 50) {
                        qt.y0(27, i32);
                    } else {
                        qt.y0(27, -3);
                    }
                    if (i34 == 36) {
                        qt.y0(28, -2);
                    } else if (i34 != 50) {
                        qt.y0(28, i34);
                    } else {
                        qt.y0(28, -3);
                    }
                }
                if (i35 != 1) {
                    if (i35 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i35 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i35 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i35 != 5) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                    }
                    i5 = i6;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(77, i35);
                qt.y0(10, (i36 >> 7) & 1);
                qt.y0(11, (i36 >> 6) & 1);
                qt.y0(12, (i36 >> 5) & 1);
                qt.y0(13, (i36 >> 3) & 1);
                qt.y0(16, (i36 >> 1) & 1);
                qt.y0(65, (i36 >> 0) & 1);
                qt.y0(29, (i37 >> 4) & 3);
                qt.y0(31, (i37 >> 6) & 3);
                break;
            case 34:
                byte b6 = bArr[i2 + 3];
                u0.d.R2(l0.c0.D1(bArr[i2 + 4] & 255, b6));
                u0.d.S2(l0.c0.D1(bArr[i2 + 5] & 255, b6));
                u0.d.T2(l0.c0.D1(bArr[i2 + 6] & 255, b6));
                u0.d.U2(l0.c0.D1(bArr[i2 + 7] & 255, b6));
                break;
            case 35:
                int i38 = i2 + 4;
                int i39 = bArr[i38] & 255;
                int i40 = i2 + 5;
                int i41 = bArr[i40] & 255;
                int i42 = i2 + 6;
                int i43 = bArr[i42] & 255;
                int i44 = i2 + 7;
                int i45 = bArr[i44] & 255;
                if (i39 == 0 && i41 == 0 && i43 == 0 && i45 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i39 || l0.c0.f13014h != i41 || l0.c0.f13015i != i43 || l0.c0.f13016j != i45) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i39;
                l0.c0.f13014h = i41;
                l0.c0.f13015i = i43;
                l0.c0.f13016j = i45;
                byte b7 = bArr[i2 + 3];
                u0.d.D2(l0.c0.D1(bArr[i38] & 255, b7));
                u0.d.E2(l0.c0.D1(bArr[i40] & 255, b7));
                u0.d.F2(l0.c0.D1(bArr[i42] & 255, b7));
                u0.d.G2(l0.c0.D1(bArr[i44] & 255, b7));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        qt.q0(this.f8194y);
        u0.c.f17397x.d(this.f8179j);
        u0.c.f17374a.d(this.f8193x);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 117) {
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
            z.k.s(227, 199, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 167, 1, iArr[0]);
            return;
        }
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 1) {
                z.k.s(227, -89, 1, 0);
                return;
            } else {
                z.k.s(227, -89, 1, 1);
                return;
            }
        }
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            if (this.f8177h == 1) {
                z.k.s(227, -89, 1, iArr[0] + 8);
            } else {
                z.k.s(227, -89, 1, iArr[0] + 4);
            }
        }
    }

    public final void a3(int i2) {
        z.k.s(227, -88, 2, 1, i2);
    }

    public final void b3() {
        int[] iArr = new int[5];
        int i2 = 0;
        iArr[0] = 165;
        iArr[1] = 3;
        switch (u0.b.D) {
            case 1:
                int i3 = w0.d.f17797i;
                int i4 = w0.d.f17796h;
                if (i4 == 65536 || i4 == 65537 || i4 == 65538) {
                    iArr[2] = 1;
                } else if (i4 == 0 || i4 == 1) {
                    iArr[2] = 2;
                }
                iArr[3] = i3 & 255;
                iArr[4] = (i3 >> 8) & 255;
                break;
            case 2:
                int i5 = h0.c.E;
                if (i5 == 3) {
                    iArr[2] = 32;
                } else if (i5 == 4) {
                    iArr[2] = 34;
                } else if (i5 == 5) {
                    iArr[2] = 33;
                } else {
                    iArr[2] = 35;
                }
                break;
            case 3:
                iArr[2] = 5;
                break;
            case 4:
                iArr[2] = 3;
                break;
            case 5:
                iArr[2] = 8;
                break;
            case 6:
            case 7:
            default:
                iArr[2] = 8;
                break;
            case 8:
            case 9:
            case 10:
                iArr[2] = 4;
                break;
        }
        if (u0.b.f17306a0 == 0) {
            iArr[2] = 0;
        }
        int[] iArr2 = new int[6];
        iArr2[0] = 227;
        while (i2 < 5) {
            int i6 = i2 + 1;
            iArr2[i6] = iArr[i2];
            i2 = i6;
        }
        z.k.s(iArr2);
    }

    public final void c3(int i2) {
        if (i2 == 1 || i2 == 2) {
            z.k.s(227, -58, 2, 9, 0);
        } else {
            z.k.s(227, -58, 2, 9, 1);
        }
    }

    public final void d3() {
        int i2 = this.f8188s;
        if (i2 > 0) {
            int[] iArr = f8170z;
            if (i2 >= iArr.length) {
                return;
            }
            int i3 = this.f8184o;
            z.k.s(227, 148, 4, iArr[i2], (i3 >> 16) & 255, (i3 >> 8) & 255, i3 & 255);
        }
    }
}
