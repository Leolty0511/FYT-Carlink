package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class zm extends lt {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int[] f12852w = {0, 0, 2, 3, 4, 5, 8, 9, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12853b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public e f12856e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12854c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12855d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 18}, new int[]{8, 26}, new int[]{9, 13}, new int[]{10, 29}, new int[]{11, 34}, new int[]{12, 35}, new int[]{16, 5}, new int[]{17, 54}, new int[]{18, 0}, new int[]{19, 24}, new int[]{20, 18}, new int[]{21, 7}, new int[]{22, 8}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f12857f = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f12858g = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12859h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12860i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12861j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f12862k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f12863l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f12864m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f12865n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f12866o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f12867p = 255;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Runnable f12868q = new a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f12869r = new b();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f12870s = new c();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f12871t = new d();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f12872u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String[] f12873v = new String[5];

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zm.this.c3(0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = h0.c.E;
            if (i3 == 3) {
                i2 = 2;
            } else if (i3 != 4) {
                i2 = i3 != 5 ? 0 : 4;
            } else {
                i2 = 1;
            }
            z.k.s(227, 136, 2, 0, i2);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 133, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, 0, 0);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i2 = 0; i2 < 5; i2++) {
                zm.this.f12873v[i2] = null;
            }
            int i3 = 0;
            while (i3 < 5) {
                String[] strArr = h0.c.f2443k;
                if (strArr[i3] != null) {
                    zm.this.f12873v[i3] = strArr[i3].substring(4).substring(0, h0.c.f2443k[i3].substring(4).indexOf("*-*"));
                }
                zm zmVar = zm.this;
                int i4 = i3 + 1;
                zmVar.a3(i4, zmVar.f12873v[i3]);
                i3 = i4;
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
                                zm zmVar = zm.this;
                                zmVar.f12866o = 1;
                                zmVar.f12865n = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                zm zmVar2 = zm.this;
                                zmVar2.f12866o = 0;
                                zmVar2.f12865n = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        zm zmVar3 = zm.this;
                        zmVar3.f12866o = 0;
                        zmVar3.f12865n = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (zm.this.f12860i != extras.getInt("SEG_REMAIN_DIS")) {
                        zm.this.f12860i = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (zm.this.f12859h != extras.getInt("ROUTE_REMAIN_DIS")) {
                        zm.this.f12859h = extras.getInt("ROUTE_REMAIN_DIS");
                        zm.this.f12863l = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (zm.this.f12861j != extras.getInt("CAR_DIRECTION")) {
                        zm.this.f12861j = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (zm.this.f12862k != extras.getInt("ROUTE_ALL_TIME")) {
                        zm.this.f12862k = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (zm.this.f12864m != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        zm.this.f12864m = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                if (z2) {
                    zm.this.c3(1);
                    o1.j.e(o1.l.a(), zm.this.f12868q);
                    o1.j.b(o1.l.a(), zm.this.f12868q, 10000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ e(zm zmVar, a aVar) {
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
        if (i2 == 41) {
            if (iArr[1] == 0) {
                b3(2);
                return;
            }
            b3(3);
        }
        if (i2 == 42) {
            if (iArr[1] == 0) {
                b3(2);
                return;
            } else {
                b3(3);
                return;
            }
        }
        if (i2 == 67) {
            int i3 = iArr[1];
            if (i3 == 0) {
                z.k.s(227, 198, 2, 1, 0);
                return;
            }
            if (i3 == 1) {
                z.k.s(227, 198, 2, 0, 0);
                return;
            }
            if (i3 == 2) {
                z.k.s(227, 198, 2, 2, 0);
                return;
            }
            if (i3 == 3) {
                z.k.s(227, 198, 2, 3, 0);
                return;
            } else if (i3 == 4) {
                z.k.s(227, 198, 2, 4, 0);
                return;
            } else {
                if (i3 != 5) {
                    return;
                }
                z.k.s(227, 198, 2, 5, 0);
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        b3(1);
                    }
                } else if (nt.f8645g[11] == 0) {
                    b3(11);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        b3(11);
                    }
                } else if (nt.f8645g[11] == 0) {
                    b3(11);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        b3(17);
                    }
                } else if (nt.f8645g[13] == 0) {
                    b3(17);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        b3(8);
                    }
                } else if (nt.f8645g[65] == 0) {
                    b3(8);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        b3(9);
                    }
                } else if (nt.f8645g[16] == 0) {
                    b3(9);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        b3(12);
                    }
                } else if (nt.f8645g[12] == 0) {
                    b3(12);
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    b3(6);
                } else {
                    b3(7);
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
        mtVar.f8317l = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        h0.d.f2472k.a(this.f12871t, 1);
        qt.y(this.f12870s);
        h0.d.f2462a.a(this.f12869r, 1);
        this.f12856e = new e(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
        App.c().registerReceiver(this.f12856e, intentFilter);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 67};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12854c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f12855d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f12854c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f12853b = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f12854c;
            if (i6 == 21) {
                for (int i7 = 0; i7 < (b4 & 255); i7++) {
                    l0.b0.l0(7, 0);
                    l0.b0.l0(7, 1);
                }
                return;
            }
            if (i6 == 22) {
                for (int i8 = 0; i8 < (b4 & 255); i8++) {
                    l0.b0.l0(8, 0);
                    l0.b0.l0(8, 1);
                }
                return;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f12853b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f12853b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 3) {
            int i11 = i2 + 2;
            qt.y0(10, (bArr[i11] >> 7) & 1);
            qt.y0(11, (bArr[i11] >> 6) & 1);
            qt.y0(12, (bArr[i11] >> 5) & 1);
            qt.y0(13, (bArr[i11] >> 4) & 1);
            qt.y0(53, (bArr[i11] >> 2) & 1);
            qt.y0(65, (bArr[i11] >> 1) & 1);
            qt.y0(16, (bArr[i11] >> 0) & 1);
            int i12 = i2 + 3;
            qt.y0(18, (bArr[i12] >> 7) & 1);
            qt.y0(19, (bArr[i12] >> 6) & 1);
            qt.y0(20, (bArr[i12] >> 5) & 1);
            qt.y0(21, bArr[i12] & DhcpPacket.DHCP_DOMAIN_NAME);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i13 = i2 + 4;
                if ((bArr[i13] & 255) == 0) {
                    qt.y0(28, -2);
                } else if ((bArr[i13] & 255) == 32) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i13] & 255);
                }
                int i14 = i2 + 5;
                if ((bArr[i14] & 255) == 0) {
                    qt.y0(27, -2);
                } else if ((bArr[i14] & 255) == 32) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i14] & 255);
                }
            } else {
                int i15 = i2 + 4;
                if ((bArr[i15] & 255) == 0) {
                    qt.y0(27, -2);
                } else if ((bArr[i15] & 255) == 32) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i15] & 255);
                }
                int i16 = i2 + 5;
                if ((bArr[i16] & 255) == 0) {
                    qt.y0(28, -2);
                } else if ((bArr[i16] & 255) == 32) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i16] & 255);
                }
            }
            int i17 = bArr[i2 + 7] & 255;
            if (i17 == 0) {
                u0.d.B3(0);
                return;
            } else {
                u0.d.B3((i17 * 5) + 650);
                return;
            }
        }
        if (b2 == 4) {
            int i18 = i2 + 2;
            if (this.f12872u != ((bArr[i18] >> 7) & 1)) {
                int i19 = (bArr[i18] >> 7) & 1;
                this.f12872u = i19;
                if (i19 == 1) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
            }
            int i20 = i2 + 3;
            l0.c0.N1((bArr[i20] >> 1) & 1, (bArr[i20] >> 0) & 1, 0);
            qt.y0(98, (bArr[i18] >> 6) & 1);
            qt.y0(99, (bArr[i18] >> 5) & 1);
            qt.y0(100, (bArr[i18] >> 4) & 1);
            qt.y0(101, bArr[i2 + 4] & 255);
            qt.y0(102, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(103, ((bArr[i2 + 8] << 8) & 65280) | ((bArr[i2 + 7] << 16) & Spanned.SPAN_PRIORITY) | (bArr[i2 + 9] & 255));
            qt.y0(104, bArr[i2 + 10] & 255);
            int i21 = i2 + 11;
            qt.y0(105, (bArr[i21] >> 7) & 1);
            qt.y0(106, (bArr[i21] >> 6) & 1);
            qt.y0(107, (bArr[i21] >> 0) & 15);
            int i22 = i2 + 12;
            qt.y0(108, (bArr[i22] >> 5) & 1);
            qt.y0(109, (bArr[i22] >> 4) & 1);
            qt.y0(110, (bArr[i22] >> 2) & 1);
            qt.y0(111, (bArr[i22] >> 1) & 1);
            qt.y0(112, (bArr[i22] >> 0) & 1);
            qt.y0(113, bArr[i2 + 13] & 255);
            qt.y0(114, bArr[i2 + 14] & 255);
            qt.y0(115, bArr[i2 + 15] & 255);
            return;
        }
        if (b2 == 5) {
            byte b5 = bArr[i2 + 3];
            if (b5 == 1) {
                String[] strArr = this.f12873v;
                if (strArr[0] != null) {
                    h0.c.f2425b.c(strArr[0]);
                    return;
                }
                return;
            }
            if (b5 == 2) {
                String[] strArr2 = this.f12873v;
                if (strArr2[1] != null) {
                    h0.c.f2425b.c(strArr2[1]);
                    return;
                }
                return;
            }
            if (b5 == 3) {
                String[] strArr3 = this.f12873v;
                if (strArr3[2] != null) {
                    h0.c.f2425b.c(strArr3[2]);
                    return;
                }
                return;
            }
            if (b5 == 4) {
                String[] strArr4 = this.f12873v;
                if (strArr4[3] != null) {
                    h0.c.f2425b.c(strArr4[3]);
                    return;
                }
                return;
            }
            if (b5 != 5) {
                return;
            }
            String[] strArr5 = this.f12873v;
            if (strArr5[4] != null) {
                h0.c.f2425b.c(strArr5[4]);
                return;
            }
            return;
        }
        if (b2 == 6) {
            byte b6 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b6 >> 7) & 1);
                qt.y0(2, (b6 >> 6) & 1);
            } else {
                qt.y0(1, (b6 >> 6) & 1);
                qt.y0(2, (b6 >> 7) & 1);
            }
            qt.y0(3, (b6 >> 4) & 1);
            qt.y0(4, (b6 >> 5) & 1);
            qt.y0(5, (b6 >> 3) & 1);
            return;
        }
        if (b2 == 10) {
            int i23 = i2 + 2;
            if ((bArr[i23] & 1) == 1) {
                qt.j(bArr[i2 + 3] & 255, bArr[i2 + 4] & 255, 0, 540);
                return;
            } else {
                if ((bArr[i23] & 1) == 0) {
                    qt.j(bArr[i2 + 3] & 255, bArr[i2 + 4] & 255, 1, 540);
                    return;
                }
                return;
            }
        }
        if (b2 == 64) {
            qt.y0(116, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
            qt.y0(117, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(118, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(119, bArr[i2 + 8] & 255);
            qt.y0(120, bArr[i2 + 9] & 255);
            qt.y0(121, bArr[i2 + 10] & 255);
            qt.y0(122, bArr[i2 + 11] & 255);
            qt.y0(123, bArr[i2 + 12] & 255);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i24 = i2 + 3;
            l0.c0.a((bArr[i24] >> 3) & 1, (bArr[i24] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i24] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 34) {
            u0.d.R2(l0.c0.M0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.M0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.M0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.M0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 != 35) {
            return;
        }
        int i25 = i2 + 2;
        int i26 = bArr[i25] & 255;
        int i27 = i2 + 3;
        int i28 = bArr[i27] & 255;
        int i29 = i2 + 4;
        int i30 = bArr[i29] & 255;
        int i31 = i2 + 5;
        int i32 = bArr[i31] & 255;
        if (i26 == 0 && i28 == 0 && i30 == 0 && i32 == 0) {
            u0.d.C2(0);
        } else if ((l0.c0.f13013g != i26 || l0.c0.f13014h != i28 || l0.c0.f13015i != i30 || l0.c0.f13016j != i32) && u0.b.f17347o == 0) {
            u0.d.C2(1);
            l0.c0.f13017k = 4;
            l0.b0.b(l0.c0.f13018l);
        }
        l0.c0.f13013g = i26;
        l0.c0.f13014h = i28;
        l0.c0.f13015i = i30;
        l0.c0.f13016j = i32;
        u0.d.D2(l0.c0.M0(bArr[i25] & 255));
        u0.d.E2(l0.c0.M0(bArr[i27] & 255));
        u0.d.F2(l0.c0.M0(bArr[i29] & 255));
        u0.d.G2(l0.c0.M0(bArr[i31] & 255));
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        h0.d.f2472k.d(this.f12871t);
        qt.p0(this.f12870s);
        h0.d.f2462a.d(this.f12869r);
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
            z.k.s(227, -58, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, -112, 1, iArr[0]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, -117, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 1003) {
            if (i2 == 1005 && iArr != null && iArr.length > 0) {
                z.k.s(227, -58, 2, iArr[0] + 2, 0);
                return;
            }
            return;
        }
        a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CHANGE_PANORAMA =   " + iArr[0]);
        if (iArr.length > 0) {
            if (u0.b.f17347o == 1) {
                z.k.s(227, -58, 2, 0, 0);
            } else {
                z.k.s(227, -58, 2, 1, 0);
            }
        }
    }

    public final void a3(int i2, String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length <= 11 ? charArray.length : 11;
        int[] iArr = new int[length + 5];
        iArr[0] = 227;
        iArr[1] = 130;
        iArr[2] = length + 2;
        iArr[3] = 5;
        iArr[4] = i2;
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3 + 5] = charArray[i3];
        }
        z.k.s(iArr);
    }

    public final void b3(int i2) {
        z.k.s(227, -117, 2, i2, 1);
        a.i.a0(50L);
        z.k.s(227, -117, 2, i2, 0);
    }

    public final void c3(int i2) {
        int i3 = this.f12864m;
        if (i3 > 0) {
            int[] iArr = f12852w;
            if (i3 >= iArr.length) {
                return;
            }
            int i4 = this.f12860i;
            z.k.s(227, 148, 5, iArr[i3], (i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255, i2);
        }
    }
}
