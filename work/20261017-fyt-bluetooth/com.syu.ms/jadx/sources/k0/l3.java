package k0;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioFormat;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemProperties;
import app.App;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class l3 extends lt {
    public static int F;
    public static int G;
    public static int[] H = {0, 0, 19, 15, 20, 14, 18, 16, 23, 1, 49, 21, 24, 49, 48, 13, 8, 22, 26, 17, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7498c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7499d;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public d f7506k;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7500e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f7501f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 27}, new int[]{9, 28}, new int[]{12, 2}, new int[]{13, 4}, new int[]{14, 3}, new int[]{15, 29}, new int[]{16, 6}, new int[]{24, 1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7502g = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{9, 12}, new int[]{43, 5}, new int[]{45, 54}, new int[]{51, 24}, new int[]{69, 7}, new int[]{70, 8}, new int[]{95, 1}, new int[]{96, -1}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public o1.g0 f7503h = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f7504i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f7505j = 2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f7507l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f7508m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f7509n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f7510o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f7511p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f7512q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f7513r = new a();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f7514s = new b();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f7515t = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f7516u = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f7517v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f7518w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f7519x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f7520y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f7521z = 0;
    public int A = 0;
    public int B = 0;
    public int C = 1;
    public int D = 255;
    public Runnable E = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(l3.this.f7514s);
            l3 l3Var = l3.this;
            l3Var.f7512q = 5;
            l3Var.f7511p = false;
            l3Var.f7507l = 0;
            l3Var.f7508m = 0;
            l3Var.f7509n = 0;
            l3Var.f7510o = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l3 l3Var = l3.this;
            int i2 = l3Var.f7512q - 1;
            l3Var.f7512q = i2;
            if (i2 <= 0) {
                l0.b0.p0(l3Var.f7514s);
                l3.this.f7512q = 5;
                return;
            }
            switch (nt.f8637c) {
                case 0:
                case 2:
                    z.k.s(227, 2, 36, 1, 19);
                    break;
                case 1:
                    z.k.s(227, 2, 36, 3, 19);
                    break;
                case 3:
                    z.k.s(227, 2, 36, 7, 19);
                    break;
                case 4:
                    z.k.s(227, 2, 36, 9, 19);
                    break;
                case 5:
                    z.k.s(227, 2, 36, 10, 19);
                    break;
                case 6:
                    z.k.s(227, 2, 36, 4, 19);
                    break;
                case 7:
                    z.k.s(227, 2, 36, 11, 19);
                    break;
                case 8:
                    z.k.s(227, 2, 36, 12, 19);
                    break;
                case 9:
                    z.k.s(227, 2, 36, 13, 19);
                    break;
                case 10:
                    z.k.s(227, 2, 36, 14, 19);
                    break;
                case 11:
                    z.k.s(227, 2, 36, 15, 19);
                    break;
                case 12:
                    z.k.s(227, 2, 36, 25, 19);
                    break;
                case 13:
                    z.k.s(227, 2, 36, 17, 19);
                    break;
                case 14:
                    z.k.s(227, 2, 36, 18, 19);
                    break;
                case 15:
                    z.k.s(227, 2, 36, 19, 19);
                    break;
            }
            if (nt.f8637c == 0) {
                l3 l3Var2 = l3.this;
                l3Var2.j3(l3Var2.f7503h.b(1, 0));
            }
            l3 l3Var3 = l3.this;
            l3Var3.k3(l3Var3.f7503h.b(2, 0));
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 3, 106, 5, 1, 50);
        }
    }

    public class d extends BroadcastReceiver {
        public d() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0044 A[Catch: Exception -> 0x0105, TryCatch #0 {Exception -> 0x0105, blocks: (B:5:0x0022, B:7:0x002d, B:11:0x0039, B:13:0x003d, B:14:0x0044, B:16:0x004b, B:18:0x0053, B:20:0x0061, B:22:0x0067, B:23:0x006f, B:25:0x0079, B:26:0x0082, B:28:0x008c, B:30:0x009c, B:32:0x00a0, B:34:0x00a4, B:35:0x00a8, B:36:0x00ba, B:38:0x00c4, B:39:0x00cd, B:41:0x00d7, B:42:0x00e0, B:44:0x00ea, B:46:0x00f8, B:49:0x00ff), top: B:54:0x0022 }] */
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
                                l3 l3Var = l3.this;
                                l3Var.C = 1;
                                l3Var.B = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                l3 l3Var2 = l3.this;
                                l3Var2.C = 1;
                                l3Var2.B = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        l3 l3Var3 = l3.this;
                        l3Var3.C = 1;
                        l3Var3.B = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!l3.this.f7516u.equals(extras.getString("NEXT_ROAD_NAME")) && extras.getString("NEXT_ROAD_NAME") != null) {
                        l3.this.f7516u = extras.getString("NEXT_ROAD_NAME");
                    }
                    if (l3.this.f7518w != extras.getInt("SEG_REMAIN_DIS")) {
                        l3.this.f7518w = extras.getInt("SEG_REMAIN_DIS");
                        z2 = true;
                    }
                    if (l3.this.f7517v != extras.getInt("ROUTE_REMAIN_DIS")) {
                        l3.this.f7517v = extras.getInt("ROUTE_REMAIN_DIS");
                        l3 l3Var4 = l3.this;
                        if (l3Var4.C == 0 && l3Var4.f7517v > 100 && u0.b.f17306a0 == 1) {
                            l3Var4.C = 1;
                            l3Var4.B = 1;
                        }
                        l3Var4.f7521z = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (l3.this.f7519x != extras.getInt("CAR_DIRECTION")) {
                        l3.this.f7519x = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (l3.this.f7520y != extras.getInt("ROUTE_REMAIN_TIME")) {
                        l3.this.f7520y = extras.getInt("ROUTE_REMAIN_TIME");
                        z2 = true;
                    }
                    if (l3.this.A != extras.getInt("ICON")) {
                        l3.this.A = extras.getInt("ICON");
                        l3 l3Var5 = l3.this;
                        if (l3Var5.A >= 2) {
                            l3Var5.C = 1;
                            l3Var5.B = 1;
                        }
                        z2 = true;
                    }
                }
                if (z2) {
                    l3.this.c3();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ d(l3 l3Var, a aVar) {
            this();
        }
    }

    public static int a3(int i2) {
        if (i2 != 1) {
            return i2 != 2 ? 15 : 5;
        }
        return 0;
    }

    public static int b3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 9;
        }
        return 5;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f7503h.a();
        if (nt.f8637c == 0) {
            j3(this.f7503h.b(1, 0));
        }
        k3(this.f7503h.b(2, 0));
        mt mtVar = this.f7886a;
        a aVar = null;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        int i2 = nt.f8633a;
        if (i2 == 131200 || i2 == 393344 || i2 == 262272 || i2 == 65664 || i2 == 327808 || i2 == 524416 || i2 == 458880 || i2 == 196736 || i2 == 589952 || i2 == 655488 || i2 == 721024 || i2 == 786560 || i2 == 852096 || i2 == 917632 || i2 == 983168) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
        }
        mtVar.f8314i = 0;
        int i3 = nt.f8637c;
        if ((i3 == 4 || i3 == 5 || i3 == 6 || i3 == 7 || i3 == 10 || i3 == 11) && App.c().getResources().getConfiguration().orientation != 1) {
            this.f7886a.f8314i = 1;
        }
        int i4 = nt.f8637c;
        if (i4 == 4 || i4 == 11) {
            this.f7506k = new d(this, aVar);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
            App.c().registerReceiver(this.f7506k, intentFilter);
            c3();
        }
        u0.c.f17386m.a(this.f7513r, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2 + 1];
        if (b2 == -121) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            byte b7 = bArr[i2 + 6];
            byte b8 = bArr[i2 + 7];
            byte b9 = bArr[i2 + 8];
            byte b10 = bArr[i2 + 9];
            if (nt.f8633a == 393344) {
                qt.y0(101, (((b3 >> 7) & 1) << 8) | ((b7 >> 2) & 1));
                qt.y0(103, (((b3 >> 5) & 1) << 8) | ((b7 >> 0) & 1));
                qt.y0(104, (((b3 >> 4) & 1) << 8) | ((b6 >> 6) & 3));
                qt.y0(105, (((b3 >> 3) & 1) << 8) | ((b6 >> 3) & 7));
                qt.y0(106, (((b3 >> 2) & 1) << 8) | ((b6 >> 2) & 1));
                qt.y0(107, (((b3 >> 1) & 1) << 8) | ((b6 >> 1) & 1));
                qt.y0(111, (((b4 >> 6) & 1) << 8) | ((b8 >> 6) & 3));
                qt.y0(140, (((b4 >> 5) & 1) << 8) | ((b8 >> 5) & 1));
                qt.y0(112, (((b4 >> 4) & 1) << 8) | ((b8 >> 2) & 7));
                qt.y0(141, (((b4 >> 3) & 1) << 8) | ((b8 >> 0) & 3));
                qt.y0(113, (((b4 >> 2) & 1) << 8) | ((b9 >> 1) & 1));
                qt.y0(114, (((b4 >> 1) & 1) << 8) | ((b9 >> 0) & 1));
                qt.y0(109, (((b4 >> 0) & 1) << 8) | ((b7 >> 3) & 1));
                return;
            }
            qt.y0(101, (((b3 >> 7) & 1) << 8) | ((b7 >> 2) & 1));
            qt.y0(102, (((b3 >> 6) & 1) << 8) | ((b7 >> 1) & 1));
            qt.y0(103, (((b3 >> 5) & 1) << 8) | ((b7 >> 0) & 1));
            qt.y0(104, (((b3 >> 4) & 1) << 8) | ((b6 >> 6) & 3));
            qt.y0(105, (((b3 >> 3) & 1) << 8) | ((b6 >> 3) & 7));
            qt.y0(106, (((b3 >> 2) & 1) << 8) | ((b6 >> 2) & 1));
            qt.y0(107, (((b3 >> 1) & 1) << 8) | ((b6 >> 1) & 1));
            qt.y0(108, (((b3 >> 0) & 1) << 8) | ((b6 >> 0) & 1));
            qt.y0(110, (((b4 >> 7) & 1) << 8) | ((b7 >> 4) & 1));
            qt.y0(111, (((b4 >> 6) & 1) << 8) | ((b8 >> 6) & 3));
            qt.y0(112, ((b8 >> 2) & 7) | (((b4 >> 4) & 1) << 8));
            qt.y0(113, (((b4 >> 2) & 1) << 8) | ((b9 >> 1) & 1));
            qt.y0(114, (((b4 >> 1) & 1) << 8) | ((b9 >> 0) & 1));
            qt.y0(109, (((b4 >> 0) & 1) << 8) | ((b7 >> 3) & 1));
            qt.y0(115, (((b5 >> 6) & 1) << 8) | ((b9 >> 6) & 1));
            qt.y0(116, (((b5 >> 5) & 1) << 8) | ((b9 >> 5) & 1));
            qt.y0(117, (((b5 >> 4) & 1) << 8) | ((b9 >> 4) & 1));
            qt.y0(118, (((b5 >> 3) & 1) << 8) | ((b10 >> 4) & 15));
            qt.y0(119, ((b10 >> 0) & 15) | (((b5 >> 2) & 1) << 8));
            qt.y0(120, (((b5 >> 1) & 1) << 8) | ((b9 >> 3) & 1));
            qt.y0(121, (((b5 >> 0) & 1) << 8) | ((b9 >> 2) & 1));
            return;
        }
        if (b2 == -24) {
            if (F == 1) {
                int i8 = bArr[i2 + 2] & 255;
                if (u0.b.f17347o == 0) {
                    if (i8 != 0) {
                        if (!o1.u.T(a.b.O)) {
                            qt.t();
                        }
                    } else if (o1.u.T(a.b.O)) {
                        qt.f();
                    }
                }
            }
            int i9 = bArr[i2 + 3] & 255;
            if (i9 == 2) {
                qt.y0(AudioFormat.CHANNEL_OUT_7POINT1, 0);
                return;
            } else {
                if (i9 == 3) {
                    qt.y0(AudioFormat.CHANNEL_OUT_7POINT1, 1);
                    return;
                }
                return;
            }
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 33) {
            byte b11 = bArr[i2 + 2];
            byte b12 = bArr[i2 + 3];
            this.f7499d = b11 & 255;
            int i10 = 0;
            while (true) {
                iArr = this.f7502g;
                if (i10 >= iArr.length) {
                    break;
                }
                int i11 = this.f7499d;
                if (i11 == iArr[i10][0]) {
                    if (i11 == 0) {
                        break;
                    }
                    this.f7500e = i10;
                    break;
                }
                i10++;
            }
            if (this.f7499d != 96) {
                if ((b12 & 255) != 0) {
                    if (i10 < iArr.length) {
                        l0.b0.l0(iArr[i10][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i12 = this.f7500e;
                    if (i12 < iArr.length && i12 != 255) {
                        l0.b0.l0(iArr[i12][1], 1);
                    }
                    this.f7500e = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 65) {
            int i13 = nt.f8633a;
            if (i13 == 131200 || i13 == 196736) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(b3(bArr[i2 + 3] & 255));
                u0.d.T2(b3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                int i14 = i2 + 6;
                u0.d.D2(a3(bArr[i14] & 255));
                u0.d.E2(a3(bArr[i14] & 255));
                int i15 = i2 + 9;
                u0.d.F2(a3(bArr[i15] & 255));
                u0.d.G2(a3(bArr[i15] & 255));
                return;
            }
            u0.d.R2(b3(bArr[i2 + 2] & 255));
            u0.d.S2(b3(bArr[i2 + 3] & 255));
            u0.d.T2(b3(bArr[i2 + 4] & 255));
            u0.d.U2(b3(bArr[i2 + 5] & 255));
            int i16 = i2 + 6;
            u0.d.D2(b3(bArr[i16] & 255));
            u0.d.E2(b3(bArr[i16] & 255));
            int i17 = i2 + 9;
            u0.d.F2(b3(bArr[i17] & 255));
            u0.d.G2(b3(bArr[i17] & 255));
            return;
        }
        if (b2 == 69) {
            qt.y0(Process.MEDIA_UID, bArr[i2 + 3] & 3);
            return;
        }
        if (b2 == 72) {
            qt.y0(128, bArr[i2 + 9] & 255);
            qt.y0(129, bArr[i2 + 10] & 255);
            qt.y0(130, bArr[i2 + 11] & 255);
            qt.y0(131, bArr[i2 + 12] & 255);
            qt.y0(124, bArr[i2 + 4] & 255);
            qt.y0(125, bArr[i2 + 5] & 255);
            qt.y0(126, bArr[i2 + 6] & 255);
            qt.y0(127, bArr[i2 + 7] & 255);
            int i18 = i2 + 3;
            qt.y0(142, (bArr[i18] >> 7) & 1);
            qt.y0(143, (bArr[i18] >> 6) & 1);
            qt.y0(144, (bArr[i18] >> 5) & 1);
            qt.y0(145, (bArr[i18] >> 4) & 1);
            if (nt.f8633a == 393344 && !this.f7511p && (this.f7507l != ((bArr[i18] >> 7) & 1) || this.f7508m != ((bArr[i18] >> 6) & 1) || this.f7509n != ((bArr[i18] >> 5) & 1) || this.f7510o != ((bArr[i18] >> 4) & 1))) {
                int i19 = (bArr[i18] >> 7) & 1;
                this.f7507l = i19;
                int i20 = (bArr[i18] >> 6) & 1;
                this.f7508m = i20;
                int i21 = (bArr[i18] >> 5) & 1;
                this.f7509n = i21;
                int i22 = (bArr[i18] >> 4) & 1;
                this.f7510o = i22;
                if (i19 == 1 || i20 == 1 || i21 == 1 || i22 == 1) {
                    i3();
                    this.f7511p = true;
                }
            }
            qt.y0(146, bArr[i2 + 14] & 255);
            qt.y0(147, bArr[i2 + 15] & 255);
            qt.y0(148, bArr[i2 + 16] & 255);
            qt.y0(149, bArr[i2 + 17] & 255);
            return;
        }
        if (b2 == 120) {
            byte b13 = bArr[i2 + 2];
            byte b14 = bArr[i2 + 5];
            byte b15 = bArr[i2 + 6];
            qt.y0(132, (((b13 >> 7) & 1) << 8) | ((b14 >> 7) & 1));
            qt.y0(133, (((b13 >> 6) & 1) << 8) | ((b14 >> 5) & 3));
            qt.y0(134, ((b14 >> 3) & 3) | (((b13 >> 5) & 1) << 8));
            qt.y0(135, (((b13 >> 4) & 1) << 8) | ((b15 >> 7) & 1));
            qt.y0(136, (((b13 >> 3) & 1) << 8) | ((b15 >> 6) & 1));
            qt.y0(137, (((b13 >> 2) & 1) << 8) | ((b15 >> 4) & 3));
            qt.y0(138, ((b15 >> 2) & 3) | (((b13 >> 1) & 1) << 8));
            return;
        }
        if (b2 != 17) {
            if (b2 == 18) {
                byte b16 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b16 >> 6) & 1);
                    qt.y0(2, (b16 >> 7) & 1);
                } else {
                    qt.y0(1, (b16 >> 7) & 1);
                    qt.y0(2, (b16 >> 6) & 1);
                }
                qt.y0(3, (b16 >> 5) & 1);
                qt.y0(4, (b16 >> 4) & 1);
                qt.y0(5, (b16 >> 3) & 1);
                qt.y0(0, (b16 >> 2) & 1);
                return;
            }
            if (b2 != 49) {
                if (b2 != 50) {
                    return;
                }
                int i23 = i2 + 4;
                int i24 = i2 + 5;
                qt.y0(100, ((bArr[i23] << 8) & 65280) | (bArr[i24] & 255));
                qt.y0(1032, ((bArr[i23] << 8) & 65280) | (bArr[i24] & 255));
                qt.y0(99, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                return;
            }
            byte b17 = bArr[i2 + 2];
            qt.y0(10, (b17 >> 6) & 1);
            qt.y0(53, (b17 >> 5) & 1);
            qt.y0(38, (b17 >> 4) & 1);
            qt.y0(13, (b17 >> 3) & 1);
            qt.y0(62, (b17 >> 2) & 1);
            int[] iArr3 = new int[1];
            iArr3[0] = (b17 & 3) == 0 ? 0 : 1;
            qt.y0(11, iArr3);
            byte b18 = bArr[i2 + 3];
            qt.y0(68, (b18 >> 5) & 1);
            int[] iArr4 = new int[1];
            iArr4[0] = (b18 & 16) == 0 ? 0 : 1;
            qt.y0(12, iArr4);
            byte b19 = bArr[i2 + 4];
            qt.y0(16, (b19 >> 5) & 1);
            qt.y0(65, (b19 >> 4) & 1);
            byte b20 = bArr[i2 + 6];
            if (b20 == 2) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (b20 != 3) {
                if (b20 == 5) {
                    i6 = 0;
                    i4 = 1;
                } else if (b20 == 6) {
                    i6 = 0;
                    i5 = 0;
                    i4 = 1;
                } else if (b20 != 12) {
                    i6 = 0;
                    i4 = 0;
                } else {
                    i4 = 0;
                    i6 = 1;
                    i5 = 1;
                }
                i5 = i4;
            } else {
                i6 = 0;
                i4 = 0;
                i5 = 1;
            }
            qt.y0(18, i6);
            qt.y0(19, i4);
            qt.y0(20, i5);
            qt.y0(77, b20);
            int i25 = bArr[i2 + 7] & 255;
            if (i25 < 0) {
                i7 = 0;
            } else {
                i7 = i25 > 8 ? 8 : i25;
            }
            qt.y0(21, i7);
            int i26 = bArr[i2 + 8] & 255;
            int i27 = nt.f8633a;
            if (i27 == 131200 || i27 == 262272 || i27 == 655488 || i27 == 721024 || i27 == 786560 || i27 == 852096 || i27 == 917632 || i27 == 983168) {
                if (i26 == 254) {
                    qt.y0(27, -2);
                    return;
                } else if (i26 != 255) {
                    qt.y0(27, i26);
                    return;
                } else {
                    qt.y0(27, -3);
                    return;
                }
            }
            if (i26 == 0) {
                qt.y0(27, -1);
                return;
            }
            if (i26 == 1) {
                qt.y0(27, -2);
                return;
            }
            if (i26 == 16) {
                qt.y0(27, -3);
                return;
            } else {
                if (i26 <= 1 || i26 >= 16) {
                    return;
                }
                qt.y0(27, (i26 + 14) * 2);
                return;
            }
        }
        byte b21 = bArr[i2 + 4];
        byte b22 = bArr[i2 + 5];
        this.f7498c = b21 & 255;
        int i28 = 0;
        while (true) {
            iArr2 = this.f7501f;
            if (i28 >= iArr2.length) {
                break;
            }
            int i29 = this.f7498c;
            if (i29 == iArr2[i28][0]) {
                if (i29 == 0) {
                    break;
                }
                this.f7497b = i28;
                break;
            }
            i28++;
        }
        int i30 = nt.f8633a;
        if (i30 == 262272 || i30 == 327808 || i30 == 524416) {
            int i31 = this.f7498c;
            if (i31 != 8) {
                if (i31 != 9) {
                    if ((b22 & 255) == 0) {
                        int i32 = this.f7497b;
                        if (i32 < iArr2.length && i32 != 255) {
                            l0.b0.l0(iArr2[i32][1], 1);
                        }
                        this.f7497b = 255;
                    } else if (i28 < iArr2.length) {
                        l0.b0.l0(iArr2[i28][1], 0);
                    }
                } else if ((b22 & 255) != 0) {
                    int i33 = h0.c.E;
                    if (i33 == 3 || i33 == 4 || i33 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(4, 0);
                        l0.b0.l0(4, 1);
                    }
                }
            } else if ((b22 & 255) == 1) {
                if (h0.c.E != 4) {
                    l0.b0.l0(3, 0);
                    l0.b0.l0(3, 1);
                } else {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                }
            }
        } else if (i30 == 589952 || i30 == 655488 || i30 == 721024) {
            int i34 = this.f7498c;
            if (i34 != 8) {
                if (i34 != 9) {
                    if ((b22 & 255) == 0) {
                        int i35 = this.f7497b;
                        if (i35 < iArr2.length && i35 != 255) {
                            l0.b0.l0(iArr2[i35][1], 1);
                        }
                        this.f7497b = 255;
                    } else if (i28 < iArr2.length) {
                        l0.b0.l0(iArr2[i28][1], 0);
                    }
                } else if ((b22 & 255) != 0) {
                    if (h0.c.E != 4) {
                        l0.b0.l0(4, 0);
                        l0.b0.l0(4, 1);
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    }
                }
            } else if ((b22 & 255) == 1) {
                int i36 = h0.c.E;
                if (i36 == 3 || i36 == 4 || i36 == 5) {
                    l0.b0.l0(26, 0);
                    l0.b0.l0(26, 1);
                } else {
                    l0.b0.l0(3, 0);
                    l0.b0.l0(3, 1);
                }
            }
        } else if (i30 == 458880 || i30 == 786560 || i30 == 852096 || i30 == 917632 || i30 == 983168) {
            if (this.f7498c != 5) {
                if ((b22 & 255) == 0) {
                    int i37 = this.f7497b;
                    if (i37 < iArr2.length && i37 != 255) {
                        l0.b0.l0(iArr2[i37][1], 1);
                    }
                    this.f7497b = 255;
                } else if (i28 < iArr2.length) {
                    l0.b0.l0(iArr2[i28][1], 0);
                }
            } else if ((b22 & 255) == 1) {
                if (h0.c.E != 4) {
                    l0.b0.l0(13, 0);
                    l0.b0.l0(13, 1);
                } else {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                }
            }
        } else if (i30 == 393344) {
            int i38 = this.f7498c;
            if (i38 != 3) {
                if (i38 != 12) {
                    if ((b22 & 255) == 0) {
                        int i39 = this.f7497b;
                        if (i39 < iArr2.length && i39 != 255) {
                            l0.b0.l0(iArr2[i39][1], 1);
                        }
                        this.f7497b = 255;
                    } else if (i28 < iArr2.length) {
                        l0.b0.l0(iArr2[i28][1], 0);
                    }
                } else if ((b22 & 255) == 1) {
                    if (h0.c.E != 4) {
                        l0.b0.l0(2, 0);
                        l0.b0.l0(2, 1);
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    }
                }
            } else if ((b22 & 255) == 1) {
                int i40 = h0.c.E;
                if (i40 == 3 || i40 == 4 || i40 == 5) {
                    l0.b0.l0(26, 0);
                    l0.b0.l0(26, 1);
                } else {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                }
            }
        } else if ((b22 & 255) == 0) {
            int i41 = this.f7497b;
            if (i41 < iArr2.length && i41 != 255) {
                l0.b0.l0(iArr2[i41][1], 1);
            }
            this.f7497b = 255;
        } else if (i28 < iArr2.length) {
            l0.b0.l0(iArr2[i28][1], 0);
        }
        qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
    }

    @Override // k0.lt
    public void W2() {
        this.f7503h.j();
        qt.p0(this.E);
        u0.c.f17386m.d(this.f7513r);
        l0.b0.p0(this.f7514s);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 150) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 == 1) {
                if (T2(iArr, 2)) {
                    if (iArr[0] == 240) {
                        k3(iArr[1]);
                        return;
                    } else {
                        z.k.s(227, 2, 140, iArr[0], iArr[1]);
                        return;
                    }
                }
                return;
            }
            if (i2 == 2) {
                if (T2(iArr, 2)) {
                    z.k.s(227, 2, 77, iArr[0], iArr[1]);
                    return;
                }
                return;
            } else {
                if (i2 != 1005) {
                    return;
                }
                if (T2(iArr, 1)) {
                    j3(iArr[0]);
                }
            }
        }
        if (T2(iArr, 2)) {
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
        }
    }

    public final void c3() {
        int i2 = this.A;
        if (i2 < 0 || i2 >= H.length) {
            return;
        }
        if (this.B == 0 && this.f7519x == 0) {
            return;
        }
        int i3 = this.f7518w;
        z.k.s(227, 4, 122, 1, (i3 >> 16) & 255, (i3 >> 8) & 255, i3 & 255);
        z.k.s(227, 4, 122, 2, H[this.A], 0, 0);
    }

    public String h3() {
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

    public final void i3() {
        if (h3().equals("com.syu.carinfo.wc.changan.WCChanganOushangX70ATireAct")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.wc.changan.WCChanganOushangX70ATireAct");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void j3(int i2) {
        G = i2;
        if (i2 == 0) {
            z.k.s(227, 2, 74, 1, 0);
        } else if (i2 == 1) {
            z.k.s(227, 2, 74, 1, 1);
        } else if (i2 == 2) {
            z.k.s(227, 2, 74, 1, 2);
        }
        int iB = this.f7503h.b(1, 0);
        int i3 = G;
        if (iB != i3) {
            this.f7503h.g(1, i3);
        }
    }

    public final void k3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        F = i2;
        qt.y0(139, i2 | 256);
        int iB = this.f7503h.b(2, 0);
        int i3 = F;
        if (iB != i3) {
            this.f7503h.g(2, i3);
        }
    }
}
