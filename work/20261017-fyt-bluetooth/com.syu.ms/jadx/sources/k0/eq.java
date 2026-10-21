package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class eq extends lt {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int[] f4921y = {9, 9, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4922b;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public d f4929i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4923c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4924d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}, new int[]{13, 13}, new int[]{14, 18}, new int[]{15, 26}, new int[]{32, 0}, new int[]{33, 7}, new int[]{34, 8}, new int[]{35, 29}, new int[]{36, 31}, new int[]{37, 30}, new int[]{38, 24}, new int[]{39, -1}, new int[]{40, 54}, new int[]{41, 18}, new int[]{42, 25}, new int[]{43, 63}, new int[]{44, 9}, new int[]{45, 5}, new int[]{46, 3}, new int[]{47, 4}, new int[]{48, 1}, new int[]{49, 6}, new int[]{50, 64}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4925e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4926f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4927g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4928h = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f4930j = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f4931k = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4932l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4933m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4934n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f4935o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f4936p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4937q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f4938r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f4939s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f4940t = 255;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f4941u = 11;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f4942v = new a();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f4943w = new b();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f4944x = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            eq.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 200, 7, l0.c0.L1(time.hour), l0.c0.L1(time.minute), l0.c0.L1(time.second), l0.c0.L1(time.year % 100), l0.c0.L1(time.month + 1), l0.c0.L1(time.monthDay), !DateFormat.is24HourFormat(App.c()) ? 1 : 0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 26) {
                z.k.s(227, 238, 2, 23, 2);
            } else if (i2 == 138) {
                z.k.s(227, 238, 2, 23, 3);
            } else {
                if (i2 != 139) {
                    return;
                }
                z.k.s(227, 238, 2, 23, 1);
            }
        }
    }

    public class d extends BroadcastReceiver {
        public d() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0042 A[Catch: Exception -> 0x00d5, TryCatch #0 {Exception -> 0x00d5, blocks: (B:5:0x0020, B:7:0x002a, B:11:0x0037, B:13:0x003b, B:14:0x0042, B:16:0x0049, B:18:0x0051, B:20:0x005b, B:21:0x0063, B:23:0x006d, B:24:0x008a, B:26:0x0094, B:27:0x009d, B:29:0x00a7, B:30:0x00b0, B:32:0x00ba, B:34:0x00c0, B:35:0x00c9, B:37:0x00d1), top: B:42:0x0020 }] */
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
                                eq eqVar = eq.this;
                                eqVar.f4939s = 1;
                                eqVar.f4938r = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                eq eqVar2 = eq.this;
                                eqVar2.f4939s = 0;
                                eqVar2.f4938r = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        eq eqVar3 = eq.this;
                        eqVar3.f4939s = 0;
                        eqVar3.f4938r = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (eq.this.f4933m != extras.getInt("SEG_REMAIN_DIS")) {
                        eq.this.f4933m = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (eq.this.f4932l != extras.getInt("ROUTE_REMAIN_DIS")) {
                        eq.this.f4932l = extras.getInt("ROUTE_REMAIN_DIS");
                        eq.this.f4936p = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (eq.this.f4934n != extras.getInt("CAR_DIRECTION")) {
                        eq.this.f4934n = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (eq.this.f4935o != extras.getInt("ROUTE_ALL_TIME")) {
                        eq.this.f4935o = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (eq.this.f4937q != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        eq.this.f4937q = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                eq eqVar4 = eq.this;
                eqVar4.f4941u = 11;
                if (z2) {
                    eqVar4.b3();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ d(eq eqVar, a aVar) {
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
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    z.k.s(227, -90, 2, 0, 0);
                } else {
                    z.k.s(227, -90, 2, 0, 1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    z.k.s(227, -90, 2, 1, 0);
                } else {
                    z.k.s(227, -90, 2, 1, 1);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    z.k.s(227, -90, 2, 2, 0);
                } else {
                    z.k.s(227, -90, 2, 2, 1);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    z.k.s(227, -90, 2, 6, 0);
                } else {
                    z.k.s(227, -90, 2, 6, 1);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    z.k.s(227, -90, 2, 5, 0);
                } else {
                    z.k.s(227, -90, 2, 5, 1);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    z.k.s(227, -90, 2, 4, 1);
                } else if (iArr[1] == 0) {
                    z.k.s(227, -90, 2, 4, 0);
                }
                break;
            case 39:
                if (iArr[1] >= 1) {
                    z.k.s(227, -90, 2, 8, iArr[1]);
                }
                break;
            default:
                switch (i2) {
                    case 51:
                        if (iArr[1] != 0) {
                            z.k.s(227, -90, 2, 11, iArr[1]);
                        }
                        break;
                    case 52:
                        if (iArr[1] != 0) {
                            z.k.s(227, -90, 2, 12, iArr[1]);
                        }
                        break;
                    case 53:
                        if (iArr[1] != 0) {
                            z.k.s(227, -90, 2, 14, iArr[1]);
                        }
                        break;
                    case 54:
                        if (iArr[1] != 0) {
                            z.k.s(227, -90, 2, 13, iArr[1]);
                        }
                        break;
                    case 55:
                        if (iArr[1] <= 18) {
                            z.k.s(227, -90, 2, 9, 0);
                        } else if (iArr[1] > 18 && iArr[1] < 32) {
                            z.k.s(227, -90, 2, 9, (iArr[1] - 18) * 2);
                        } else if (iArr[1] >= 32) {
                            z.k.s(227, -90, 2, 9, 31);
                        }
                        break;
                    case 56:
                        if (iArr[1] <= 18) {
                            z.k.s(227, -90, 2, 10, 0);
                        } else if (iArr[1] > 18 && iArr[1] < 32) {
                            z.k.s(227, -90, 2, 10, (iArr[1] - 18) * 2);
                        } else if (iArr[1] >= 32) {
                            z.k.s(227, -90, 2, 10, 31);
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
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f4944x);
        qt.z(this.f4943w);
        u0.c.f17374a.a(this.f4942v, 1);
        w0.e.f17815a.a(this.f4942v, 1);
        w0.e.f17819e.a(this.f4942v, 1);
        u0.c.f17388o.a(this.f4942v, 1);
        h0.d.f2473l.a(this.f4942v, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 55, 56, 51, 52, 53, 54};
        this.f4929i = new d(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
        App.c().registerReceiver(this.f4929i, intentFilter);
        b3();
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 82) {
            int i4 = i2 + 2;
            if ((bArr[i4] & 255) == 1) {
                qt.y0(7, bArr[i2 + 3] & 255);
                return;
            }
            if ((bArr[i4] & 255) == 2) {
                qt.y0(8, bArr[i2 + 3] & 255);
                return;
            }
            if ((bArr[i4] & 255) == 3) {
                qt.y0(9, bArr[i2 + 3] & 255);
                return;
            }
            if ((bArr[i4] & 255) == 4) {
                qt.y0(10, bArr[i2 + 3] & 255);
                return;
            }
            if ((bArr[i4] & 255) == 5) {
                qt.y0(11, bArr[i2 + 3] & 255);
                return;
            }
            if ((bArr[i4] & 255) == 6) {
                qt.y0(12, bArr[i2 + 3] & 255);
                return;
            } else if ((bArr[i4] & 255) == 7) {
                qt.y0(13, bArr[i2 + 3] & 255);
                return;
            } else {
                if ((bArr[i4] & 255) == 8) {
                    qt.y0(14, bArr[i2 + 3] & 255);
                }
                return;
            }
        }
        if (b2 == 125) {
            int i5 = bArr[i2 + 2] & 255;
            if (i5 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i6 = i2 + 3;
                    l0.c0.b((bArr[i6] >> 3) & 1, (bArr[i6] >> 4) & 1, 0);
                    return;
                } else {
                    int i7 = i2 + 3;
                    l0.c0.a((bArr[i7] >> 3) & 1, (bArr[i7] >> 4) & 1, 0);
                    return;
                }
            }
            if (i5 == 3) {
                int i8 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i8);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i8}, null, null);
                return;
            }
            if (i5 != 5) {
                if (i5 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                return;
            }
            int i9 = bArr[i2 + 3] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i9 >> 6) & 1);
                qt.y0(1, (i9 >> 7) & 1);
            } else {
                qt.y0(2, (i9 >> 7) & 1);
                qt.y0(1, (i9 >> 6) & 1);
            }
            qt.y0(4, (i9 >> 5) & 1);
            qt.y0(3, (i9 >> 4) & 1);
            qt.y0(5, (i9 >> 3) & 1);
            qt.y0(0, (i9 >> 2) & 1);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 33:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f4923c = b3 & 255;
                int i10 = 0;
                while (true) {
                    iArr = this.f4924d;
                    if (i10 < iArr.length) {
                        int i11 = this.f4923c;
                        if (i11 != iArr[i10][0]) {
                            i10++;
                        } else if (i11 != 0) {
                            this.f4922b = i10;
                        }
                    }
                }
                int i12 = this.f4923c;
                if (i12 == 14) {
                    if ((b4 & 255) == 1) {
                        int i13 = h0.c.E;
                        if (i13 == 3 || i13 == 4 || i13 == 5) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else {
                            l0.b0.l0(13, 0);
                            l0.b0.l0(13, 1);
                        }
                    }
                    break;
                } else if (i12 == 15) {
                    if ((b4 & 255) == 1) {
                        int i14 = h0.c.E;
                        if (i14 == 3 || i14 == 4 || i14 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                    break;
                } else if (i12 == 33) {
                    for (int i15 = 0; i15 < (b4 & 255); i15++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                } else if (i12 == 34) {
                    for (int i16 = 0; i16 < (b4 & 255); i16++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                } else if (i12 == 36) {
                    for (int i17 = 0; i17 < (b4 & 255); i17++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                } else if (i12 == 37) {
                    for (int i18 = 0; i18 < (b4 & 255); i18++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
                } else if (i12 != 39) {
                    if ((b4 & 255) == 0) {
                        int i19 = this.f4922b;
                        if (i19 < iArr.length && i19 != 255) {
                            l0.b0.l0(iArr[i19][1], 1);
                        }
                        this.f4922b = 255;
                    } else if (i10 < iArr.length) {
                        l0.b0.l0(iArr[i10][1], 0);
                    }
                    break;
                } else if ((b4 & 255) == 1 && !o1.u.S("com.syu.carlink")) {
                    o1.u.g("com.syu.carlink");
                    break;
                }
                break;
            case 34:
                int i20 = i2 + 2;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 3;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 4;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 5;
                int i27 = bArr[i26] & 255;
                if (i21 == 0 && i23 == 0 && i25 == 0 && i27 == 0 && l0.c0.f13013g == 0 && l0.c0.f13014h == 0 && l0.c0.f13015i == 0 && l0.c0.f13016j == 0) {
                    u0.d.C2(0);
                } else if ((this.f4925e != i21 || this.f4926f != i23 || this.f4927g != i25 || this.f4928h != i27) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                this.f4925e = i21;
                this.f4926f = i23;
                this.f4927g = i25;
                this.f4928h = i27;
                u0.d.R2(l0.c0.E0(bArr[i20] & 255));
                u0.d.S2(l0.c0.E0(bArr[i22] & 255));
                u0.d.T2(l0.c0.E0(bArr[i24] & 255));
                u0.d.U2(l0.c0.E0(bArr[i26] & 255));
                break;
            case 35:
                int i28 = i2 + 2;
                int i29 = bArr[i28] & 255;
                int i30 = i2 + 3;
                int i31 = bArr[i30] & 255;
                int i32 = i2 + 4;
                int i33 = bArr[i32] & 255;
                int i34 = i2 + 5;
                int i35 = bArr[i34] & 255;
                if (i29 == 0 && i31 == 0 && i33 == 0 && i35 == 0 && this.f4925e == 0 && this.f4926f == 0 && this.f4927g == 0 && this.f4928h == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i29 || l0.c0.f13014h != i31 || l0.c0.f13015i != i33 || l0.c0.f13016j != i35) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i29;
                l0.c0.f13014h = i31;
                l0.c0.f13015i = i33;
                l0.c0.f13016j = i35;
                u0.d.D2(l0.c0.E0(bArr[i28] & 255));
                u0.d.E2(l0.c0.E0(bArr[i30] & 255));
                u0.d.F2(l0.c0.E0(bArr[i32] & 255));
                u0.d.G2(l0.c0.E0(bArr[i34] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f4944x);
        qt.q0(this.f4943w);
        u0.c.f17374a.d(this.f4942v);
        w0.e.f17815a.d(this.f4942v);
        w0.e.f17819e.d(this.f4942v);
        u0.c.f17388o.d(this.f4942v);
        h0.d.f2473l.d(this.f4942v);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 15) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            z.k.s(227, -125, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3() {
        int i2 = u0.b.D;
        if (i2 != 1) {
            if (i2 == 2) {
                e3(11, u0.b.i3);
                return;
            }
            if (i2 == 3) {
                e3(5, h0.c.f2437h);
                return;
            }
            if (i2 == 5) {
                z.k.s(227, 192, 1, 7);
                return;
            }
            if (i2 == 8 || i2 == 10) {
                e3(8, u0.b.i3);
                return;
            } else {
                if (u0.b.f17306a0 == 0) {
                    z.k.s(227, 192, 1, 0);
                    return;
                }
                return;
            }
        }
        int[] iArr = new int[7];
        int i3 = 0;
        iArr[0] = 192;
        iArr[1] = 5;
        iArr[2] = 1;
        iArr[3] = 1;
        int i4 = w0.d.f17796h;
        if (i4 == 65536 || i4 == 65537 || i4 == 65538) {
            iArr[4] = 0;
        } else if (i4 == 0 || i4 == 1) {
            iArr[4] = 16;
        }
        int i5 = w0.d.f17797i;
        iArr[5] = i5 & 255;
        iArr[6] = (i5 >> 8) & 255;
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        while (i3 < 7) {
            int i6 = i3 + 1;
            iArr2[i6] = iArr[i3];
            i3 = i6;
        }
        z.k.s(iArr2);
    }

    public final void b3() {
        int i2 = this.f4937q;
        if (i2 > 0) {
            int[] iArr = f4921y;
            if (i2 >= iArr.length) {
                return;
            }
            int i3 = this.f4932l;
            z.k.s(227, i.a.Theme_actionModeFindDrawable, 4, i3 & 255, (i3 >> 8) & 255, (i3 >> 16) & 255, (this.f4939s == 0 && this.f4938r == 0) ? 0 : iArr[i2]);
        }
    }

    public final void e3(int i2, String str) {
        if (str == null) {
            str = "Unkown";
        }
        try {
            byte[] bytes = str.getBytes("GB2312");
            int length = 31;
            if (bytes.length <= 31) {
                length = bytes.length;
            }
            int[] iArr = new int[length + 7];
            iArr[0] = 227;
            iArr[1] = 192;
            iArr[2] = length + 4;
            iArr[3] = i2;
            iArr[4] = 2;
            iArr[5] = 1;
            iArr[6] = length;
            for (int i3 = 0; i3 < length; i3++) {
                iArr[i3 + 7] = bytes[i3];
            }
            z.k.s(iArr);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
