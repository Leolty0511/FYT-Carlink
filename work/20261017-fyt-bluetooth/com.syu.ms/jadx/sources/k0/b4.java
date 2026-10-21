package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.wifi.BatchedScanSettings;
import android.os.Bundle;
import android.os.SystemProperties;
import android.util.Log;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class b4 extends lt {
    public static int[] E = {0, 0, 7, 3, 8, 2, 6, 4, 5, 1, 9, 9, 9, 9, 9, 9, 9, 9, 9, 5, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3512b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public g f3516f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3513c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3514d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f3515e = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3517g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3518h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f3519i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f3520j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f3521k = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f3522l = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3523m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3524n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3525o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3526p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3527q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3528r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f3529s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f3530t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f3531u = 255;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Runnable f3532v = new d();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public float f3533w = 0.0f;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f3534x = 255;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f3535y = 255;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f3536z = new e();
    public Runnable A = new f();
    public int B = -1;
    public boolean C = false;
    public String D = ProxyProperties.LOCAL_EXCL_LIST;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.B();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(b4.this.f3520j);
            b4.this.f3518h = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b4 b4Var = b4.this;
            int i2 = b4Var.f3518h - 1;
            b4Var.f3518h = i2;
            if (i2 <= 0) {
                l0.b0.p0(b4Var.f3520j);
                b4.this.f3518h = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            int i3 = nt.f8633a;
            if (i3 == 65678 || i3 == 196750) {
                z.k.s(227, 144, 2, 127, 0);
                z.k.s(227, 144, 2, 40, 0);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b4.this.c3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b4 b4Var = b4.this;
            if (b4Var.f3529s == 0) {
                b4Var.f3533w = u0.b.f17359s0;
                if ((b4.this.f3533w <= 22.5d && b4.this.f3533w >= 0.0f) || (b4.this.f3533w >= 337.5d && b4.this.f3533w <= 360.0f)) {
                    b4.this.f3535y = 7;
                } else if (b4.this.f3533w > 22.5d && b4.this.f3533w < 67.5d) {
                    b4.this.f3535y = 8;
                } else if (b4.this.f3533w >= 67.5d && b4.this.f3533w <= 112.5d) {
                    b4.this.f3535y = 1;
                } else if (b4.this.f3533w > 112.5d && b4.this.f3533w < 157.5d) {
                    b4.this.f3535y = 2;
                } else if (b4.this.f3533w >= 157.5d && b4.this.f3533w <= 202.5d) {
                    b4.this.f3535y = 3;
                } else if (b4.this.f3533w > 202.5d && b4.this.f3533w < 247.5d) {
                    b4.this.f3535y = 4;
                } else if (b4.this.f3533w >= 247.5d && b4.this.f3533w <= 292.5d) {
                    b4.this.f3535y = 5;
                } else if (b4.this.f3533w <= 292.5d || b4.this.f3533w >= 337.5d) {
                    b4.this.f3535y = 3;
                } else {
                    b4.this.f3535y = 6;
                }
                if (b4.this.f3535y != b4.this.f3534x) {
                    b4 b4Var2 = b4.this;
                    int i2 = b4Var2.f3524n * 10;
                    int i3 = b4Var2.f3523m * 10;
                    b4 b4Var3 = b4.this;
                    int i4 = b4Var3.f3526p;
                    z.k.s(227, -89, 17, b4Var2.f3535y, b4Var3.f3530t, b4Var3.f3529s, (i2 >> 24) & 255, (i2 >> 16) & 255, (i2 >> 8) & 255, i2 & 255, b4Var3.f3527q, (i3 >> 24) & 255, (i3 >> 16) & 255, (i3 >> 8) & 255, i3 & 255, 0, 0, i4 / BatchedScanSettings.MAX_INTERVAL_SEC, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, b4.E[b4.this.f3528r]);
                    b4 b4Var4 = b4.this;
                    b4Var4.f3534x = b4Var4.f3535y;
                }
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            int i2 = h0.c.E;
            int i3 = 3;
            boolean z3 = true;
            boolean z4 = i2 == 5 || i2 == 3 || i2 == 4;
            switch (i2) {
                case 0:
                default:
                    i3 = 128;
                    break;
                case 1:
                case 2:
                case 6:
                    i3 = 129;
                    break;
                case 3:
                    break;
                case 4:
                    i3 = 1;
                    break;
                case 5:
                    i3 = 2;
                    break;
            }
            if (b4.this.B != i3) {
                b4.this.B = i3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (b4.this.D.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                b4.this.D = h0.c.f2437h;
                if (b4.this.D == null) {
                    b4.this.D = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                if (b4.this.B != 0) {
                    b4 b4Var = b4.this;
                    b4Var.u3(b4Var.B, b4.this.D);
                }
                if (b4.this.C != z4) {
                    b4.this.C = z4;
                    b4.this.B = 0;
                }
            }
        }
    }

    public class g extends BroadcastReceiver {
        public g() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0044 A[Catch: Exception -> 0x012e, TryCatch #0 {Exception -> 0x012e, blocks: (B:5:0x0022, B:7:0x002c, B:11:0x0039, B:13:0x003d, B:14:0x0044, B:16:0x004b, B:18:0x0053, B:20:0x0061, B:22:0x0067, B:23:0x0092, B:25:0x009c, B:26:0x00a4, B:28:0x00ae, B:29:0x00cb, B:31:0x00d5, B:32:0x00de, B:34:0x00e8, B:35:0x00f1, B:37:0x00fb, B:39:0x0101, B:41:0x010c), top: B:46:0x0022 }] */
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
                                b4 b4Var = b4.this;
                                b4Var.f3530t = 1;
                                b4Var.f3529s = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                b4 b4Var2 = b4.this;
                                b4Var2.f3530t = 0;
                                b4Var2.f3529s = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        b4 b4Var3 = b4.this;
                        b4Var3.f3530t = 0;
                        b4Var3.f3529s = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!b4.this.f3522l.equals(extras.getString("NEXT_ROAD_NAME")) && extras.getString("NEXT_ROAD_NAME") != null) {
                        Log.d("LG", "NEXT_ROAD_NAME = " + b4.this.f3522l);
                        b4.this.f3522l = extras.getString("NEXT_ROAD_NAME");
                        b4 b4Var4 = b4.this;
                        b4Var4.b3(168, b4Var4.f3522l);
                    }
                    if (b4.this.f3524n != extras.getInt("SEG_REMAIN_DIS")) {
                        b4.this.f3524n = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (b4.this.f3523m != extras.getInt("ROUTE_REMAIN_DIS")) {
                        b4.this.f3523m = extras.getInt("ROUTE_REMAIN_DIS");
                        b4.this.f3527q = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (b4.this.f3525o != extras.getInt("CAR_DIRECTION")) {
                        b4.this.f3525o = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (b4.this.f3526p != extras.getInt("ROUTE_ALL_TIME")) {
                        b4.this.f3526p = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (b4.this.f3528r != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        b4.this.f3528r = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                if (z2) {
                    b4.this.c3();
                    o1.j.e(o1.l.a(), b4.this.f3532v);
                    o1.j.b(o1.l.a(), b4.this.f3532v, 20000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ g(b4 b4Var, a aVar) {
            this();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        if (nt.f8637c == 5) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            o1.h.f16865a.a(this.f3536z, 1);
            this.f3516f = new g(this, null);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
            App.c().registerReceiver(this.f3516f, intentFilter);
            c3();
        } else {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
        }
        if (nt.a()) {
            l0.b0.b(this.f3515e);
            w0.e.f17815a.a(this.f3515e, 1);
            u0.c.f17374a.a(this.f3515e, 1);
            u0.c.f17392s.a(this.f3515e, 1);
            u0.c.f17393t.a(this.f3515e, 1);
        }
        h0.d.f2464c.a(this.A, 1);
        h0.d.f2462a.a(this.A, 1);
        u0.c.f17386m.a(this.f3519i, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 33) {
            if (nt.a() || (i4 = nt.f8633a) == 65678 || i4 == 196750) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f3513c = b3 & 255;
                int i7 = 0;
                while (true) {
                    iArr = this.f3514d;
                    if (i7 >= iArr.length) {
                        break;
                    }
                    int i8 = this.f3513c;
                    if (i8 == iArr[i7][0]) {
                        if (i8 == 0) {
                            break;
                        }
                        this.f3512b = i7;
                        break;
                    }
                    i7++;
                }
                int i9 = b4 & 255;
                if (i9 == 1) {
                    if (i7 < iArr.length) {
                        l0.b0.l0(iArr[i7][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i9 == 0) {
                        int i10 = this.f3512b;
                        if (i10 < iArr.length && i10 != 255) {
                            l0.b0.l0(iArr[i10][1], 1);
                        }
                        this.f3512b = 255;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 48) {
            int i11 = nt.f8633a;
            if (i11 == 196750) {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 9232);
                return;
            } else if (i11 == 65678) {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 9829);
                return;
            } else {
                if (this.f3517g) {
                    return;
                }
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 8600);
                return;
            }
        }
        if (b2 == 82) {
            if (nt.f8633a == 131214) {
                int i12 = bArr[i2 + 2] & 255;
                int i13 = bArr[i2 + 3] & 255;
                if (i12 == 1 && i13 == 2) {
                    i13 = 0;
                }
                qt.y0(99, i13);
                return;
            }
            return;
        }
        if (b2 == 104) {
            if (nt.f8633a == 65678) {
                int i14 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 2] & 255);
                qt.y0(1032, i14);
                qt.y0(1032, i14);
                return;
            }
            return;
        }
        if (b2 == 106) {
            if (nt.f8633a == 65678) {
                qt.y0(1031, ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 2] & 255));
                return;
            }
            return;
        }
        if (b2 == 125) {
            int i15 = bArr[i2 + 2] & 255;
            if (i15 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i16 = i2 + 3;
                    l0.c0.b((bArr[i16] >> 3) & 1, (bArr[i16] >> 4) & 1, 0);
                    return;
                } else {
                    int i17 = i2 + 3;
                    l0.c0.a((bArr[i17] >> 3) & 1, (bArr[i17] >> 4) & 1, 0);
                    return;
                }
            }
            if (i15 == 3) {
                int i18 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i18);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i18}, null, null);
                return;
            } else {
                if (i15 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f3517g = true;
                return;
            }
        }
        if (b2 == 127) {
            if (nt.f8633a == 65678) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            return;
        }
        switch (b2) {
            case 38:
                if (nt.a() || (i5 = nt.f8633a) == 196750 || i5 == 65678) {
                    u0.d.R2(l0.c0.F0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.F0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.F0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.F0(bArr[i2 + 5] & 255));
                }
                break;
            case 39:
                if (nt.a() || (i6 = nt.f8633a) == 196750 || i6 == 65678) {
                    int i19 = i2 + 2;
                    int i20 = bArr[i19] & 255;
                    int i21 = i2 + 3;
                    int i22 = bArr[i21] & 255;
                    int i23 = i2 + 4;
                    int i24 = bArr[i23] & 255;
                    int i25 = i2 + 5;
                    int i26 = bArr[i25] & 255;
                    if (i20 == 0 && i22 == 0 && i24 == 0 && i26 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i20 || l0.c0.f13014h != i22 || l0.c0.f13015i != i24 || l0.c0.f13016j != i26) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i20;
                    l0.c0.f13014h = i22;
                    l0.c0.f13015i = i24;
                    l0.c0.f13016j = i26;
                    u0.d.D2(l0.c0.F0(bArr[i19] & 255));
                    u0.d.E2(l0.c0.F0(bArr[i21] & 255));
                    u0.d.F2(l0.c0.F0(bArr[i23] & 255));
                    u0.d.G2(l0.c0.F0(bArr[i25] & 255));
                }
                break;
            case 40:
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 7) & 1);
                    qt.y0(2, (b5 >> 6) & 1);
                } else {
                    qt.y0(1, (b5 >> 6) & 1);
                    qt.y0(2, (b5 >> 7) & 1);
                }
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                qt.y0(0, (b5 >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f3519i);
        o1.y yVar = o1.h.f16865a;
        yVar.d(this.f3536z);
        l0.b0.p0(this.f3515e);
        w0.e.f17815a.d(this.f3515e);
        u0.c.f17374a.d(this.f3515e);
        u0.c.f17392s.d(this.f3515e);
        u0.c.f17393t.d(this.f3515e);
        yVar.d(this.f3536z);
        h0.d.f2464c.d(this.A);
        h0.d.f2462a.d(this.A);
        l0.b0.p0(this.f3520j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 100) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && qt.l0(iArr, 1)) {
            if (iArr[0] == 0) {
                iArr[0] = 2;
            }
            z.k.s(227, 131, 2, 1, iArr[0]);
        }
    }

    public final int a3(int i2) {
        if (i2 > 360) {
            i2 %= MediaProperties.HEIGHT_360;
        }
        if (i2 < 0) {
            i2 = 360 - Math.abs(i2 % MediaProperties.HEIGHT_360);
        }
        double d2 = i2;
        if ((d2 <= 22.5d && i2 >= 0) || (d2 >= 337.5d && i2 <= 360)) {
            return 7;
        }
        if (d2 > 22.5d && d2 < 67.5d) {
            return 8;
        }
        if (d2 >= 67.5d && d2 <= 112.5d) {
            return 1;
        }
        if (d2 > 112.5d && d2 < 157.5d) {
            return 2;
        }
        if (d2 >= 157.5d && d2 <= 202.5d) {
            return 3;
        }
        if (d2 > 202.5d && d2 < 247.5d) {
            return 4;
        }
        if (d2 < 247.5d || d2 > 292.5d) {
            return (d2 <= 292.5d || d2 >= 337.5d) ? 15 : 6;
        }
        return 5;
    }

    public final void b3(int i2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[34];
        byte[] bytes = str.getBytes();
        iArr[0] = 227;
        iArr[1] = i2;
        iArr[2] = 31;
        int length = bytes.length <= 30 ? bytes.length : 30;
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3 + 4] = bytes[i3];
        }
        z.k.s(iArr);
    }

    public final void c3() {
        int i2 = this.f3528r;
        if (i2 <= 0 || i2 >= E.length) {
            return;
        }
        int i3 = this.f3524n * 10;
        int i4 = this.f3523m * 10;
        int i5 = this.f3526p;
        z.k.s(227, 167, 17, a3(this.f3525o), this.f3530t, this.f3529s, (i3 >> 24) & 255, (i3 >> 16) & 255, (i3 >> 8) & 255, i3 & 255, this.f3527q, (i4 >> 24) & 255, (i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255, 0, 0, i5 / BatchedScanSettings.MAX_INTERVAL_SEC, (i5 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, E[this.f3528r]);
    }

    public final void u3(int i2, String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = (i2 == 129 || i2 == 128) ? new int[8] : new int[charArray.length + 8];
        iArr[0] = -29;
        iArr[1] = -64;
        iArr[2] = 5;
        iArr[3] = 5;
        iArr[4] = (byte) i2;
        iArr[5] = 18;
        if (charArray.length > 0) {
            iArr[6] = 0;
            iArr[7] = 0;
            if (i2 != 129 && i2 != 128) {
                iArr[6] = 2;
                iArr[7] = charArray.length;
                iArr[2] = charArray.length + 5;
                for (int i3 = 0; i3 < str.length(); i3++) {
                    iArr[8 + i3] = charArray[i3];
                }
            }
        }
        z.k.s(iArr);
    }
}
