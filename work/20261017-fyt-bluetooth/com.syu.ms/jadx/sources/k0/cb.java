package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class cb extends lt {
    public static int F = 1;
    public static int[] G = {1, 1, 2, 3, 4, 5, 8, 9, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3966c;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public g f3973j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3965b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3967d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f3968e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 18}, new int[]{12, 26}, new int[]{33, 21}, new int[]{34, 54}, new int[]{35, 1}, new int[]{36, 5}, new int[]{37, 0}, new int[]{38, 55}, new int[]{129, 5}, new int[]{130, 1}, new int[]{131, 54}, new int[]{132, 1}, new int[]{133, 6}, new int[]{134, 58}, new int[]{135, 29}, new int[]{136, 8}, new int[]{137, 7}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 40}, new int[]{143, 41}, new int[]{144, 42}, new int[]{145, 43}, new int[]{146, 44}, new int[]{147, 3}, new int[]{148, 4}, new int[]{149, 0}, new int[]{150, 7}, new int[]{151, 8}, new int[]{152, 13}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3969f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3970g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public o1.g0 f3971h = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3972i = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f3974k = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f3975l = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3976m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3977n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3978o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3979p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3980q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3981r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f3982s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f3983t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f3984u = 255;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f3985v = 255;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f3986w = new a();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f3987x = new b();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public byte f3988y = 5;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f3989z = new c();
    public Runnable A = new d();
    public Runnable B = new e();
    public int C = -1;
    public int D = -1;
    public Runnable E = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cb cbVar = cb.this;
            cbVar.f3985v = cbVar.c3(u0.b.f17359s0);
            if (cb.this.f3985v != cb.this.f3984u) {
                cb cbVar2 = cb.this;
                int i2 = cbVar2.f3983t;
                if (i2 == 0) {
                    z.k.s(227, -55, 6, i2, cbVar2.f3985v, 0, 0, 0, 0);
                }
                cb cbVar3 = cb.this;
                cbVar3.f3984u = cbVar3.f3985v;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.S("com.syu.fourcamera2") || u0.b.f17347o == 1 || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(cb.this.A);
            cb cbVar = cb.this;
            cbVar.f3988y = (byte) 5;
            cbVar.f3983t = 0;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cb cbVar = cb.this;
            byte b2 = (byte) (cbVar.f3988y - 1);
            cbVar.f3988y = b2;
            if (b2 <= 0) {
                l0.b0.p0(cbVar.A);
                cb.this.f3988y = (byte) 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            cb.this.t3();
            if (u0.b.f17306a0 == 1) {
                cb cbVar2 = cb.this;
                cbVar2.u3(cbVar2.f3971h.b(1, 1));
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cb.this.e3(u0.b.K3);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) time.hour;
            byte b3 = (byte) time.minute;
            cb cbVar = cb.this;
            if (cbVar.D == b3 && cbVar.C == b2) {
                return;
            }
            cbVar.D = b3;
            cbVar.C = b2;
            z.k.s(227, -126, 3, b2, b3, (byte) cbVar.b3());
        }
    }

    public class g extends BroadcastReceiver {
        public g() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0044 A[Catch: Exception -> 0x00ef, TryCatch #0 {Exception -> 0x00ef, blocks: (B:5:0x0022, B:7:0x002c, B:11:0x0039, B:13:0x003d, B:14:0x0044, B:16:0x004b, B:18:0x0053, B:20:0x0061, B:22:0x0067, B:23:0x006f, B:25:0x0079, B:26:0x0081, B:28:0x008b, B:29:0x00a8, B:31:0x00b2, B:32:0x00bb, B:34:0x00c5, B:35:0x00ce, B:37:0x00d8, B:39:0x00de, B:41:0x00e9), top: B:46:0x0022 }] */
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
                                cb cbVar = cb.this;
                                cbVar.f3983t = 1;
                                cbVar.f3982s = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                cb cbVar2 = cb.this;
                                cbVar2.f3983t = 0;
                                cbVar2.f3982s = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        cb cbVar3 = cb.this;
                        cbVar3.f3983t = 0;
                        cbVar3.f3982s = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!cb.this.f3974k.equals(extras.getString("CUR_ROAD_NAME")) && extras.getString("CUR_ROAD_NAME") != null) {
                        cb.this.f3974k = extras.getString("CUR_ROAD_NAME");
                    }
                    if (cb.this.f3977n != extras.getInt("SEG_REMAIN_DIS")) {
                        cb.this.f3977n = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (cb.this.f3976m != extras.getInt("ROUTE_REMAIN_DIS")) {
                        cb.this.f3976m = extras.getInt("ROUTE_REMAIN_DIS");
                        cb.this.f3980q = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (cb.this.f3978o != extras.getInt("CAR_DIRECTION")) {
                        cb.this.f3978o = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (cb.this.f3979p != extras.getInt("ROUTE_ALL_TIME")) {
                        cb.this.f3979p = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (cb.this.f3981r != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        cb.this.f3981r = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                if (z2) {
                    cb.this.f3();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ g(cb cbVar, a aVar) {
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
        if (i2 == 33) {
            if (iArr[1] != 0) {
                if (nt.f8645g[21] == 0 && d3()) {
                    z.k.s(227, -54, 2, 32, 1);
                    return;
                }
                return;
            }
            if (nt.f8645g[21] == 0 || !d3()) {
                return;
            }
            z.k.s(227, -54, 2, 32, 0);
            return;
        }
        if (i2 == 34) {
            if (iArr[1] != 0) {
                if (nt.f8645g[11] == 0 && d3()) {
                    z.k.s(227, -54, 2, 34, 1);
                    return;
                }
                return;
            }
            if (nt.f8645g[11] == 1 && d3()) {
                z.k.s(227, -54, 2, 34, 0);
                return;
            }
            return;
        }
        if (i2 == 36) {
            if (iArr[1] != 0) {
                if (d3() && nt.f8645g[65] == 0) {
                    z.k.s(227, -54, 2, 33, 1);
                    return;
                }
                return;
            }
            if (d3() && nt.f8645g[65] == 1) {
                z.k.s(227, -54, 2, 33, 0);
                return;
            }
            return;
        }
        if (i2 == 59) {
            if (iArr[1] == 1) {
                z.k.s(227, -54, 2, 38, 1);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, -54, 2, 36, 1);
                return;
            } else if (iArr[1] == 3) {
                z.k.s(227, -54, 2, 37, 1);
                return;
            } else {
                if (iArr[1] == 5) {
                    z.k.s(227, -54, 2, 39, 1);
                    return;
                }
                return;
            }
        }
        if (i2 != 68) {
            if (i2 == 38) {
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0 && d3()) {
                        z.k.s(227, -54, 2, 40, 1);
                        return;
                    }
                    return;
                }
                if (iArr[1] == 0 && nt.f8645g[12] == 1 && d3()) {
                    z.k.s(227, -54, 2, 40, 0);
                    return;
                }
                return;
            }
            if (i2 == 39) {
                if (iArr[1] == -1) {
                    if (d3()) {
                        z.k.s(227, -54, 2, 35, 1);
                        return;
                    }
                    return;
                } else {
                    if (iArr[1] == -2 && d3()) {
                        z.k.s(227, -54, 2, 35, 0);
                        return;
                    }
                    return;
                }
            }
            if (i2 == 41 || i2 == 42) {
                if (iArr[1] != 0) {
                    if (d3()) {
                        z.k.s(227, -54, 2, 41, 1);
                        return;
                    }
                    return;
                } else {
                    if (d3()) {
                        z.k.s(227, -54, 2, 41, 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (iArr[1] == 1) {
            z.k.s(227, -54, 2, 12, 0);
            return;
        }
        if (iArr[1] == 2) {
            z.k.s(227, -54, 2, 12, 1);
            return;
        }
        if (iArr[1] == 3) {
            z.k.s(227, -54, 2, 13, 0);
            return;
        }
        if (iArr[1] == 4) {
            z.k.s(227, -54, 2, 13, 1);
            return;
        }
        if (iArr[1] == 5) {
            z.k.s(227, -54, 2, 14, 0);
            return;
        }
        if (iArr[1] == 6) {
            z.k.s(227, -54, 2, 14, 1);
            return;
        }
        if (iArr[1] == 7) {
            z.k.s(227, -54, 2, 15, 0);
            return;
        }
        if (iArr[1] == 8) {
            z.k.s(227, -54, 2, 15, 1);
            return;
        }
        if (iArr[1] == 9) {
            z.k.s(227, -54, 2, 11, 0);
            return;
        }
        if (iArr[1] == 10) {
            z.k.s(227, -54, 2, 11, 1);
        } else if (iArr[1] == 11) {
            z.k.s(227, -54, 2, 16, 0);
        } else if (iArr[1] == 12) {
            z.k.s(227, -54, 2, 16, 1);
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f3971h.a();
        u0.c.f17386m.a(this.f3989z, 1);
        qt.z(this.E);
        u0.c.f17397x.a(this.B, 1);
        qt.x(this.f3987x);
        mt mtVar = this.f7886a;
        a aVar = null;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        switch (nt.f8637c) {
            case 0:
            case 4:
            case 7:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                break;
            case 2:
            case 3:
            case 5:
            case 6:
            case 11:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8311f = 1;
                break;
            case 9:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8311f = 1;
                mtVar.f8314i = 1;
                break;
            case 10:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8311f = 1;
                o1.h.f16865a.a(this.f3986w, 1);
                this.f3973j = new g(this, aVar);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                App.c().registerReceiver(this.f3973j, intentFilter);
                f3();
                this.f7886a.f8314i = 1;
                break;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 59, 68, 67, 55, 56};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 16) {
            byte b3 = bArr[i2 + 3];
            byte b4 = bArr[i2 + 4];
            int i9 = i2 + 5;
            byte b5 = bArr[i9];
            int i10 = i2 + 6;
            byte b6 = bArr[i10];
            qt.y0(12, (b3 >> 7) & 1);
            qt.y0(65, (b3 >> 6) & 1);
            qt.y0(16, (b3 >> 5) & 1);
            qt.y0(20, (b3 >> 4) & 1);
            qt.y0(19, (b3 >> 3) & 1);
            qt.y0(13, (b3 >> 2) & 1);
            qt.y0(11, (b3 >> 0) & 1);
            qt.y0(14, (b4 >> 6) & 1);
            qt.y0(21, (b4 >> 0) & 15);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b5 = bArr[i10];
                b6 = bArr[i9];
            }
            int i11 = b5 & 255;
            if (b5 == 1) {
                qt.y0(27, -2);
            } else if (b5 == 57) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i11);
            }
            int i12 = b6 & 255;
            if (b6 == 1) {
                qt.y0(28, -2);
                return;
            } else {
                if (b6 == 57) {
                    qt.y0(28, -3);
                    return;
                }
                qt.y0(28, i12);
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            this.f3988y = (byte) 0;
            return;
        }
        if (b2 == 85) {
            if (!nt.a() || (i4 = nt.f8633a) == 406 || i4 == 65942 || i4 == 131478 || (i5 = bArr[i2 + 7] & 255) == 255) {
                return;
            }
            u0.d.A3(i5 > 40 ? ((i5 > 90 ? 50 : i5 - 40) * 10) + 1000 : 1000 - ((40 - i5) * 10));
            return;
        }
        if (b2 == 125) {
            int i13 = bArr[i2 + 2] & 255;
            if (i13 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i14 = i2 + 3;
                    l0.c0.b((bArr[i14] >> 3) & 1, (bArr[i14] >> 4) & 1, 0);
                    return;
                } else {
                    int i15 = i2 + 3;
                    l0.c0.a((bArr[i15] >> 3) & 1, (bArr[i15] >> 4) & 1, 0);
                    return;
                }
            }
            if (i13 == 3) {
                int i16 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i16);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i16}, null, null);
                return;
            } else {
                if (i13 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f3970g = true;
                return;
            }
        }
        if (b2 == 40) {
            int i17 = i2 + 2;
            qt.y0(14, (bArr[i17] >> 6) & 1);
            qt.y0(53, (bArr[i17] >> 5) & 1);
            qt.y0(13, (bArr[i17] >> 4) & 1);
            qt.y0(11, (bArr[i17] >> 3) & 1);
            qt.y0(12, (bArr[i17] >> 2) & 1);
            qt.y0(65, (bArr[i17] >> 1) & 1);
            qt.y0(16, (bArr[i17] >> 0) & 1);
            qt.y0(21, bArr[i2 + 3] & 255);
            int i18 = bArr[i2 + 4] & 255;
            if (i18 != 0) {
                if (i18 == 1) {
                    i6 = 0;
                    i8 = 1;
                } else if (i18 == 2) {
                    i6 = 0;
                    i8 = 0;
                    i7 = 1;
                } else if (i18 != 3) {
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
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i19 = bArr[i2 + 6] & 255;
                if (i19 == 0) {
                    qt.y0(27, -2);
                } else if (i19 == 31) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i19);
                }
                int i20 = bArr[i2 + 5] & 255;
                if (i20 == 0) {
                    qt.y0(28, -2);
                    return;
                } else if (i20 == 31) {
                    qt.y0(28, -3);
                    return;
                } else {
                    qt.y0(28, i20);
                    return;
                }
            }
            int i21 = bArr[i2 + 5] & 255;
            if (i21 == 0) {
                qt.y0(27, -2);
            } else if (i21 == 31) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i21);
            }
            int i22 = bArr[i2 + 6] & 255;
            if (i22 == 0) {
                qt.y0(28, -2);
                return;
            } else if (i22 == 31) {
                qt.y0(28, -3);
                return;
            } else {
                qt.y0(28, i22);
                return;
            }
        }
        if (b2 == 41) {
            if (this.f3970g) {
                return;
            }
            qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 550);
            return;
        }
        if (b2 == 64) {
            byte b7 = bArr[i2 + 2];
            qt.y0(106, (b7 >> 7) & 1);
            qt.y0(107, (b7 >> 6) & 1);
            qt.y0(108, (b7 >> 5) & 1);
            qt.y0(109, (b7 >> 4) & 1);
            qt.y0(112, (b7 >> 3) & 1);
            byte b8 = bArr[i2 + 3];
            qt.y0(110, b8 & 3);
            if (nt.f8637c != 7) {
                if (b8 == 0) {
                    if (o1.u.T(a.b.O)) {
                        qt.f();
                        return;
                    }
                    return;
                } else {
                    if ((b8 == 2 || b8 == 1) && !o1.u.T(a.b.O)) {
                        qt.t();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 65) {
            qt.y0(111, bArr[i2 + 2]);
            return;
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b9 = bArr[i2 + 2];
                    byte b10 = bArr[i2 + 3];
                    this.f3967d = b9 & 255;
                    int i23 = 0;
                    while (true) {
                        iArr = this.f3968e;
                        if (i23 < iArr.length) {
                            int i24 = this.f3967d;
                            if (i24 != iArr[i23][0]) {
                                i23++;
                            } else if (i24 != 0) {
                                this.f3966c = i23;
                            }
                        }
                    }
                    if (this.f3967d == 49) {
                        int i25 = b10 & 255;
                        if (this.f3969f != i25) {
                            this.f3969f = i25;
                            if (i25 == 1) {
                                if (u0.b.f17347o == 0) {
                                    qt.a(1);
                                    z.k.s(227, 138, 1, 1);
                                } else {
                                    qt.a(0);
                                }
                            }
                        }
                        break;
                    } else if ((b10 & 255) == 1 && i23 < iArr.length) {
                        l0.b0.l0(iArr[this.f3966c][1], 0);
                        l0.b0.l0(this.f3968e[this.f3966c][1], 1);
                        break;
                    }
                }
                break;
            case 33:
                if (nt.a()) {
                    byte b11 = bArr[i2 + 2];
                    byte b12 = bArr[i2 + 3];
                    this.f3967d = (b11 | 128) & 255;
                    int i26 = 0;
                    while (true) {
                        iArr2 = this.f3968e;
                        if (i26 < iArr2.length) {
                            int i27 = this.f3967d;
                            if (i27 != iArr2[i26][0]) {
                                i26++;
                            } else if (i27 != 0) {
                                this.f3966c = i26;
                            }
                        }
                    }
                    int i28 = this.f3967d;
                    if (i28 == 136) {
                        for (int i29 = 0; i29 < (b12 & 255); i29++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    } else if (i28 == 137) {
                        for (int i30 = 0; i30 < (b12 & 255); i30++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (i28 == 150) {
                        for (int i31 = 0; i31 < (b12 & 255); i31++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    } else if (i28 != 151) {
                        int i32 = b12 & 255;
                        if (i32 == 1) {
                            if (i26 < iArr2.length) {
                                l0.b0.l0(iArr2[i26][1], 0);
                            }
                        } else if (i32 == 0) {
                            int i33 = this.f3966c;
                            if (i33 < iArr2.length && i33 != 255) {
                                l0.b0.l0(iArr2[i33][1], 1);
                            }
                            this.f3966c = 255;
                        }
                    } else {
                        for (int i34 = 0; i34 < (b12 & 255); i34++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    }
                }
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(l0.c0.T0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.T0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.T0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.T0(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i35 = i2 + 2;
                    int i36 = bArr[i35] & 255;
                    int i37 = i2 + 3;
                    int i38 = bArr[i37] & 255;
                    int i39 = i2 + 4;
                    int i40 = bArr[i39] & 255;
                    int i41 = i2 + 5;
                    int i42 = bArr[i41] & 255;
                    if (i36 == 0 && i38 == 0 && i40 == 0 && i42 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i36 || l0.c0.f13014h != i38 || l0.c0.f13015i != i40 || l0.c0.f13016j != i42) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i36;
                    l0.c0.f13014h = i38;
                    l0.c0.f13015i = i40;
                    l0.c0.f13016j = i42;
                    u0.d.D2(l0.c0.T0(bArr[i35] & 255));
                    u0.d.E2(l0.c0.T0(bArr[i37] & 255));
                    u0.d.F2(l0.c0.T0(bArr[i39] & 255));
                    u0.d.G2(l0.c0.T0(bArr[i41] & 255));
                }
                break;
            case 36:
                byte b13 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b13 >> 7) & 1);
                    qt.y0(2, (b13 >> 6) & 1);
                } else {
                    qt.y0(1, (b13 >> 6) & 1);
                    qt.y0(2, (b13 >> 7) & 1);
                }
                qt.y0(3, (b13 >> 4) & 1);
                qt.y0(4, (b13 >> 5) & 1);
                qt.y0(5, (b13 >> 3) & 1);
                qt.y0(0, (b13 >> 2) & 1);
                if (F == 1 && ((bArr[i2 + 3] >> 4) & 1) == 1) {
                    s3("ÇëºÃ°²È«´ø");
                    break;
                }
                break;
            case 37:
                qt.y0(98, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(99, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(100, ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
                qt.y0(101, (bArr[i2 + 9] & 255) | ((bArr[i2 + 8] & 255) << 8));
                break;
            default:
                switch (b2) {
                    case 50:
                        qt.y0(121, bArr[i2 + 4] & 255);
                        break;
                    case 51:
                        int i43 = nt.f8637c;
                        if (i43 == 5 || i43 == 6 || i43 == 8 || i43 == 9 || i43 == 10 || i43 == 11) {
                            qt.y0(102, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                            qt.y0(103, ((bArr[i2 + 4] & 255) << 16) | ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
                            qt.y0(104, ((bArr[i2 + 7] & 255) << 8) | (bArr[i2 + 8] & 255));
                            qt.y0(105, bArr[i2 + 9] & 255);
                            qt.y0(127, ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
                            qt.y0(122, ((bArr[i2 + 12] & 255) << 8) | (bArr[i2 + 13] & 255));
                            qt.y0(123, bArr[i2 + 14] & 255);
                            qt.y0(124, bArr[i2 + 15] & 255);
                        } else {
                            qt.y0(102, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] & 255) << 8));
                            qt.y0(105, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                            qt.y0(104, ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
                            qt.y0(103, (bArr[i2 + 10] & 255) | ((bArr[i2 + 8] & 255) << 16) | ((bArr[i2 + 9] & 255) << 8));
                        }
                        break;
                    case 52:
                        int i44 = i2 + 2;
                        qt.y0(113, (bArr[i44] >> 7) & 1);
                        qt.y0(114, (bArr[i44] >> 6) & 1);
                        qt.y0(115, (bArr[i44] >> 5) & 1);
                        qt.y0(116, (bArr[i44] >> 4) & 1);
                        qt.y0(117, (bArr[i44] >> 3) & 1);
                        qt.y0(118, (bArr[i44] >> 2) & 1);
                        qt.y0(119, (bArr[i44] >> 1) & 1);
                        qt.y0(120, (bArr[i44] >> 0) & 1);
                        qt.y0(125, bArr[i2 + 3] & 255);
                        qt.y0(126, bArr[i2 + 4] & 255);
                        break;
                    case 53:
                        int i45 = nt.f8637c;
                        if (i45 == 5 || i45 == 9 || i45 == 10 || i45 == 11) {
                            if (i45 == 10 || i45 == 11) {
                                byte b14 = bArr[i2 + 2];
                                this.f3965b = b14;
                                if (b14 == 5) {
                                    qt.y0(Process.MEDIA_UID, 0);
                                } else if (b14 == 6) {
                                    qt.y0(Process.MEDIA_UID, 1);
                                }
                            }
                            if (bArr[i2 + 2] != 0) {
                                qt.a(1);
                            } else {
                                qt.a(0);
                            }
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f3971h.j();
        qt.q0(this.E);
        u0.c.f17397x.d(this.B);
        u0.c.f17386m.d(this.f3989z);
        l0.b0.p0(this.A);
        qt.o0(this.f3987x);
        o1.h.f16865a.d(this.f3986w);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 129) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                z.k.s(227, -118, 1, 1);
            } else {
                z.k.s(227, -118, 1, 1);
                qt.a(1);
                return;
            }
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CAMERA_MODE == ints[0] == " + iArr[0]);
            int i3 = nt.f8637c;
            if (i3 != 10 && i3 != 11) {
                z.k.s(227, -118, 1, iArr[0] + 2);
                return;
            }
            int i4 = iArr[0];
            if (i4 == 0) {
                z.k.s(227, -117, 1, 5);
                return;
            }
            if (i4 == 1) {
                z.k.s(227, -117, 1, 6);
                return;
            }
            if (i4 == 4) {
                z.k.s(227, -117, 1, 1);
                return;
            }
            if (i4 == 5) {
                z.k.s(227, -117, 1, 2);
                return;
            } else if (i4 == 6) {
                z.k.s(227, -117, 1, 3);
                return;
            } else {
                if (i4 != 7) {
                    return;
                }
                z.k.s(227, -117, 1, 4);
                return;
            }
        }
        switch (i2) {
            case 0:
                a3(iArr[0]);
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    v3(1, iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    v3(2, iArr[0]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    v3(3, iArr[0]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    v3(4, iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    v3(5, iArr[0]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 131, 2, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 138, 2, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 8:
                if (iArr != null && iArr.length > 0) {
                    u3(iArr[0]);
                    break;
                }
                break;
        }
    }

    public final void a3(int i2) {
        z.k.s(227, -112, 2, (byte) i2, 0);
    }

    public final int b3() {
        int i2 = u0.b.K3;
        if (i2 == 1) {
            return 0;
        }
        return i2 == 2 ? 1 : 2;
    }

    public final int c3(int i2) {
        if (i2 > 360) {
            i2 %= MediaProperties.HEIGHT_360;
        }
        if (i2 < 0) {
            i2 = 360 - Math.abs(i2 % MediaProperties.HEIGHT_360);
        }
        double d2 = i2;
        if ((d2 <= 22.5d && i2 >= 0) || (d2 >= 337.5d && i2 <= 360)) {
            return 1;
        }
        if (d2 > 22.5d && d2 < 67.5d) {
            return 2;
        }
        if (d2 >= 67.5d && d2 <= 112.5d) {
            return 3;
        }
        if (d2 > 112.5d && d2 < 157.5d) {
            return 4;
        }
        if (d2 >= 157.5d && d2 <= 202.5d) {
            return 5;
        }
        if (d2 > 202.5d && d2 < 247.5d) {
            return 6;
        }
        if (d2 < 247.5d || d2 > 292.5d) {
            return (d2 <= 292.5d || d2 >= 337.5d) ? 15 : 8;
        }
        return 7;
    }

    public final boolean d3() {
        switch (nt.f8637c) {
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
                return true;
            case 7:
            default:
                return false;
        }
    }

    public final void e3(int i2) {
        z.k.s(227, -126, 3, this.C, this.D, (byte) b3());
    }

    public final void f3() {
        int i2 = this.f3981r;
        if (i2 > 0) {
            int[] iArr = G;
            if (i2 >= iArr.length) {
                return;
            }
            int i3 = this.f3977n;
            z.k.s(227, 201, 6, this.f3983t, this.f3985v, i3 & 255, (i3 >> 8) & 255, (i3 >> 16) & 255, iArr[i2]);
        }
    }

    public final void s3(String str) {
        Intent intent = new Intent("com.syu.execute_tts");
        intent.putExtra("raw_text", str);
        intent.setPackage("com.syu.voice");
        App.c().startService(intent);
    }

    public final void t3() {
        a3(37);
        a3(48);
        a3(51);
    }

    public final void u3(int i2) {
        F = i2;
        qt.y0(128, i2);
        int iB = this.f3971h.b(1, 1);
        int i3 = F;
        if (iB != i3) {
            this.f3971h.g(1, i3);
        }
    }

    public final void v3(int i2, int i3) {
        z.k.s(227, 131, 2, i2, i3);
    }
}
