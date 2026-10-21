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
import android.text.Spanned;
import android.util.Log;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class u extends lt {
    public static int E;
    public static int[] F = {0, 0, 7, 3, 8, 2, 6, 4, 9, 1, 9, 9, 9, 9, 9, 9, 9};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10855d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10856e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10857f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public h f10860i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10853b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10854c = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f10858g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f10859h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 3}, new int[]{6, 4}, new int[]{7, -1}, new int[]{8, 33}, new int[]{9, 32}, new int[]{10, 18}, new int[]{11, 26}, new int[]{12, 2}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{23, 54}, new int[]{40, 13}, new int[]{48, 1}, new int[]{49, 5}, new int[]{129, 0}, new int[]{130, 3}, new int[]{131, 4}, new int[]{133, 38}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{144, 36}, new int[]{145, 11}, new int[]{151, 34}, new int[]{152, 35}, new int[]{153, 32}, new int[]{154, 33}, new int[]{168, 18}, new int[]{170, 29}, new int[]{172, 2}, new int[]{173, 24}, new int[]{176, 46}, new int[]{177, 47}, new int[]{178, 48}, new int[]{179, 49}, new int[]{180, 50}, new int[]{181, 51}, new int[]{182, 3}, new int[]{183, 4}, new int[]{184, 32}, new int[]{185, 33}, new int[]{186, 22}, new int[]{188, 27}, new int[]{189, 28}, new int[]{191, 5}, new int[]{192, 25}, new int[]{193, 56}, new int[]{195, 12}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10861j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f10862k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f10863l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f10864m = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f10865n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f10866o = new c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f10867p = new d();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f10868q = new e();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f10869r = new f();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f10870s = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f10871t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f10872u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f10873v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f10874w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f10875x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f10876y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f10877z = 0;
    public int A = 0;
    public int B = 255;
    public final Runnable C = new g();
    public int D = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(u.this.f10863l);
            u uVar = u.this;
            uVar.f10861j = 5;
            uVar.f10853b = 0;
            uVar.f10854c = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u uVar = u.this;
            int i2 = uVar.f10861j - 1;
            uVar.f10861j = i2;
            if (i2 <= 0) {
                l0.b0.p0(uVar.f10863l);
                u.this.f10861j = 5;
                return;
            }
            if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8637c;
                if (i3 == 0 || i3 == 1 || i3 == 2 || i3 == 3 || i3 == 6 || i3 == 7 || i3 == 8 || i3 == 9) {
                    z.k.s(227, 2, 36, 19, 3);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            boolean z3 = true;
            if (u.this.f10864m.equals(h0.c.f2437h)) {
                z2 = false;
            } else {
                u.this.f10864m = h0.c.f2437h;
                if (u.this.f10864m == null) {
                    u.this.f10864m = ProxyProperties.LOCAL_EXCL_LIST;
                    z2 = false;
                } else {
                    z2 = true;
                }
            }
            if (h0.c.E != u.this.f10865n) {
                u.this.f10865n = h0.c.E;
            } else {
                z3 = z2;
            }
            if (z3) {
                u uVar = u.this;
                uVar.p3(uVar.f10864m);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.this.n3((byte) -110, u0.b.i3);
            if (u0.b.D == 9) {
                u.this.n3((byte) -110, ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.this.n3((byte) -109, u0.b.k3);
            if (u0.b.D == 9) {
                u.this.n3((byte) -109, ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.this.n3((byte) -108, u0.b.j3);
            if (u0.b.D == 9) {
                u.this.n3((byte) -108, ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u uVar = u.this;
            uVar.A = 0;
            uVar.f10877z = 0;
            uVar.d3();
        }
    }

    public class h extends BroadcastReceiver {
        public h() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z2;
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (!"AUTONAVI_STANDARD_BROADCAST_SEND".equals(action) || extras == null) {
                return;
            }
            try {
                if (!u.this.f10870s.equals(extras.getString("CUR_ROAD_NAME")) && extras.getString("CUR_ROAD_NAME") != null) {
                    Log.d("LG", "CUR_ROAD_NAME = " + u.this.f10870s);
                    u.this.f10870s = extras.getString("CUR_ROAD_NAME");
                    u uVar = u.this;
                    uVar.c3(229, uVar.f10870s);
                }
                if (u.this.f10872u != extras.getInt("SEG_REMAIN_DIS")) {
                    u.this.f10872u = extras.getInt("SEG_REMAIN_DIS");
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (u.this.f10871t != extras.getInt("ROUTE_REMAIN_DIS")) {
                    u.this.f10871t = extras.getInt("ROUTE_REMAIN_DIS");
                    u uVar2 = u.this;
                    if (uVar2.f10871t == 0) {
                        uVar2.A = 0;
                        uVar2.f10877z = 0;
                    } else {
                        uVar2.A = 1;
                        uVar2.f10877z = 1;
                    }
                    uVar2.f10875x = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                    z2 = true;
                }
                if (u.this.f10873v != extras.getInt("CAR_DIRECTION")) {
                    u.this.f10873v = extras.getInt("CAR_DIRECTION");
                    z2 = true;
                }
                if (u.this.f10874w != extras.getInt("ROUTE_ALL_TIME")) {
                    u.this.f10874w = extras.getInt("ROUTE_ALL_TIME");
                    z2 = true;
                }
                if (u.this.f10876y != extras.getInt("ICON")) {
                    u.this.f10876y = extras.getInt("ICON");
                    z2 = true;
                }
                if (z2) {
                    u.this.d3();
                    o1.j.e(o1.l.a(), u.this.C);
                    o1.j.b(o1.l.a(), u.this.C, 20000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ h(u uVar, a aVar) {
            this();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:96:0x014b  */
    /* JADX WARN: Code duplicated, block: B:97:0x014e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:98:0x0150  */
    @Override // k0.lt
    public void O2(int[] iArr) {
        int i2;
        int i3;
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    a3(1, 0);
                } else {
                    a3(1, 1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    a3(2, 0);
                } else {
                    a3(2, 1);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    a3(4, 0);
                } else {
                    a3(4, 1);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    a3(5, 0);
                } else {
                    a3(5, 1);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    a3(6, 0);
                } else {
                    a3(6, 1);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    a3(7, 0);
                } else if (iArr[1] == 0) {
                    a3(7, 1);
                }
                break;
            case 39:
                int i4 = nt.f8637c;
                if (i4 < 3 || i4 == 9) {
                    if (iArr[1] == -2) {
                        E--;
                    } else if (iArr[1] != -1) {
                        if (iArr[1] >= 0) {
                            i2 = 7;
                            if (iArr[1] <= 7) {
                                E = iArr[1];
                            }
                        }
                        i3 = E;
                        if (i3 < 0) {
                            E = 0;
                        } else if (i3 > i2) {
                            E = i2;
                        }
                        a3(11, E);
                    } else {
                        E++;
                    }
                    i2 = 7;
                    i3 = E;
                    if (i3 < 0) {
                        E = 0;
                    } else if (i3 > i2) {
                        E = i2;
                    }
                    a3(11, E);
                    break;
                } else if (iArr[1] != -1) {
                    a3(12, 0);
                } else {
                    a3(11, 0);
                }
                break;
            case 41:
                int i5 = nt.f8645g[27];
                this.D = i5;
                int i6 = nt.f8637c;
                if (i6 < 3 || i6 == 9) {
                    if (iArr[1] == 0) {
                        if (i5 == -2) {
                            this.D = 30;
                        } else if (i5 == -3) {
                            this.D = 59;
                        } else {
                            this.D = i5 - 1;
                        }
                    } else if (i5 == -2) {
                        this.D = 31;
                    } else if (i5 == -3) {
                        this.D = 60;
                    } else {
                        this.D = i5 + 1;
                    }
                    if (i6 != 0) {
                        int i7 = this.D;
                        if (i7 <= 30) {
                            a3(12, 254);
                        } else if (i7 < 60) {
                            a3(12, i7);
                        } else {
                            a3(12, 255);
                        }
                    } else {
                        int i8 = this.D;
                        if (i8 <= 30) {
                            a3(12, 255);
                        } else if (i8 < 60) {
                            a3(12, 90 - i8);
                        } else {
                            a3(12, 254);
                        }
                    }
                } else if (iArr[1] == 0) {
                    a3(14, 0);
                } else {
                    a3(13, 0);
                }
                break;
            case 42:
                int i9 = nt.f8645g[28];
                this.D = i9;
                int i10 = nt.f8637c;
                if (i10 < 3 || i10 == 9) {
                    if (iArr[1] == 0) {
                        if (i9 == -2) {
                            this.D = 30;
                        } else if (i9 == -3) {
                            this.D = 59;
                        } else {
                            this.D = i9 - 1;
                        }
                    } else if (i9 == -2) {
                        this.D = 31;
                    } else if (i9 == -3) {
                        this.D = 60;
                    } else {
                        this.D = i9 + 1;
                    }
                    if (i10 != 0) {
                        int i11 = this.D;
                        if (i11 <= 30) {
                            a3(13, 254);
                        } else if (i11 < 60) {
                            a3(13, i11);
                        } else {
                            a3(13, 255);
                        }
                    } else {
                        int i12 = this.D;
                        if (i12 <= 30) {
                            a3(13, 255);
                        } else if (i12 < 60) {
                            a3(13, 90 - i12);
                        } else {
                            a3(13, 254);
                        }
                    }
                } else if (iArr[1] == 0) {
                    a3(16, 0);
                } else {
                    a3(15, 0);
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
        mtVar.f8320o = 1;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        int i2 = nt.f8637c;
        if (i2 == 3 || i2 == 4 || i2 == 5) {
            this.f7886a.f8322q = 1;
        } else {
            this.f7886a.f8322q = 0;
        }
        if (nt.a()) {
            qt.z(l0.h0.f13059e);
            w0.e.f17815a.a(l0.h0.f13059e, 1);
            w0.e.f17819e.a(l0.h0.f13059e, 1);
        }
        u0.c.f17386m.a(this.f10862k, 1);
        int i3 = nt.f8637c;
        if (i3 == 6 || i3 == 7 || i3 == 8) {
            h0.d.f2462a.a(this.f10866o, 1);
            h0.d.f2464c.a(this.f10866o, 1);
            u0.c.f17388o.a(this.f10867p, 1);
            u0.c.f17390q.a(this.f10868q, 1);
            u0.c.f17389p.a(this.f10869r, 1);
            this.f10860i = new h(this, null);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
            App.c().registerReceiver(this.f10860i, intentFilter);
            d3();
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
    }

    /* JADX WARN: Code duplicated, block: B:55:0x01df  */
    /* JADX WARN: Code duplicated, block: B:70:0x022b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x022d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x022f  */
    /* JADX WARN: Code duplicated, block: B:73:0x023a  */
    /* JADX WARN: Code duplicated, block: B:74:0x0242  */
    /* JADX WARN: Code duplicated, block: B:76:0x024b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:77:0x024d  */
    /* JADX WARN: Code duplicated, block: B:78:0x0259  */
    /* JADX WARN: Code duplicated, block: B:79:0x0261  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        byte b2;
        int i9;
        byte b3;
        int i10;
        byte b4 = bArr[i2 + 1];
        if (b4 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b4 == 41) {
            if (nt.f8637c == 9) {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 19918);
                return;
            }
            return;
        }
        if (b4 == 52) {
            qt.y0(105, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(106, (bArr[i2 + 8] & 255) | ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280));
            return;
        }
        if (b4 == 63) {
            int i11 = i2 + 2;
            qt.y0(103, (bArr[i11] >> 5) & 1);
            qt.y0(104, (bArr[i11] >> 4) & 1);
            return;
        }
        if (b4 == 65) {
            if (nt.a() || nt.f8637c == 6) {
                u0.d.R2(l0.h0.o(bArr[i2 + 2] & 255));
                u0.d.S2(l0.h0.o(bArr[i2 + 3] & 255));
                u0.d.T2(l0.h0.o(bArr[i2 + 4] & 255));
                u0.d.U2(l0.h0.o(bArr[i2 + 5] & 255));
                int i12 = i2 + 6;
                int i13 = bArr[i12] & 255;
                int i14 = i2 + 7;
                int i15 = bArr[i14] & 255;
                int i16 = i2 + 8;
                int i17 = bArr[i16] & 255;
                int i18 = i2 + 9;
                int i19 = bArr[i18] & 255;
                if (i13 > 7 && i15 > 7 && i17 > 7 && i19 > 7) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i13 || l0.c0.f13014h != i15 || l0.c0.f13015i != i17 || l0.c0.f13016j != i19) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i13;
                l0.c0.f13014h = i15;
                l0.c0.f13015i = i17;
                l0.c0.f13016j = i19;
                u0.d.D2(l0.h0.o(bArr[i12] & 255));
                u0.d.E2(l0.h0.o(bArr[i14] & 255));
                u0.d.F2(l0.h0.o(bArr[i16] & 255));
                u0.d.G2(l0.h0.o(bArr[i18] & 255));
                return;
            }
            return;
        }
        if (b4 == 72) {
            qt.y0(107, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(108, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(109, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(110, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280));
            return;
        }
        if (b4 == 97) {
            qt.y0(111, bArr[i2 + 4] & 255);
            int i20 = i2 + 3;
            qt.y0(112, (bArr[i20] >> 4) & 15);
            qt.y0(113, (bArr[i20] >> 0) & 15);
            int i21 = i2 + 6;
            qt.y0(114, (bArr[i21] >> 4) & 15);
            qt.y0(115, (bArr[i21] >> 0) & 15);
            int i22 = i2 + 7;
            qt.y0(116, (bArr[i22] >> 4) & 15);
            qt.y0(117, (bArr[i22] >> 0) & 15);
            int i23 = i2 + 8;
            qt.y0(118, (bArr[i23] >> 4) & 15);
            qt.y0(119, (bArr[i23] >> 2) & 3);
            qt.y0(120, (bArr[i23] >> 0) & 3);
            int i24 = i2 + 9;
            qt.y0(121, (bArr[i24] >> 4) & 15);
            qt.y0(122, (bArr[i24] >> 0) & 15);
            int i25 = i2 + 10;
            qt.y0(123, (bArr[i25] >> 4) & 15);
            qt.y0(124, (bArr[i25] >> 2) & 3);
            qt.y0(125, (bArr[i25] >> 0) & 3);
            return;
        }
        if (b4 == 104) {
            int i26 = i2 + 3;
            qt.y0(100, (bArr[i26] >> 7) & 1);
            qt.y0(101, (bArr[i26] >> 4) & 1);
            qt.y0(37, (bArr[i26] >> 4) & 1);
            qt.y0(102, (bArr[i26] >> 3) & 1);
            return;
        }
        if (b4 == 17) {
            if (nt.a() || nt.f8637c == 6) {
                if ((bArr[i2 + 2] & 2) != 0) {
                    qt.b(1);
                } else {
                    qt.b(0);
                }
                byte b5 = bArr[i2 + 4];
                byte b6 = bArr[i2 + 5];
                this.f10856e = b5 & 255;
                int i27 = 0;
                while (true) {
                    iArr = this.f10859h;
                    if (i27 >= iArr.length) {
                        break;
                    }
                    int i28 = this.f10856e;
                    if (i28 == iArr[i27][0]) {
                        if (i28 == 0) {
                            break;
                        }
                        this.f10855d = i27;
                        break;
                    }
                    i27++;
                }
                int i29 = b6 & 255;
                if (i29 == 1) {
                    if (i27 < iArr.length) {
                        l0.b0.l0(iArr[i27][1], 0);
                    }
                } else if (i29 == 0) {
                    int i30 = this.f10855d;
                    if (i30 < iArr.length && i30 != 255) {
                        l0.b0.l0(iArr[i30][1], 1);
                    }
                    this.f10855d = 255;
                }
            }
            if (nt.f8637c != 9) {
                qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                return;
            }
            return;
        }
        if (b4 == 18) {
            byte b7 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b7 >> 6) & 1);
                qt.y0(2, (b7 >> 7) & 1);
            } else {
                qt.y0(1, (b7 >> 7) & 1);
                qt.y0(2, (b7 >> 6) & 1);
            }
            qt.y0(3, (b7 >> 5) & 1);
            qt.y0(4, (b7 >> 4) & 1);
            qt.y0(5, (b7 >> 3) & 1);
            return;
        }
        if (b4 == 33) {
            if (nt.a()) {
                byte b8 = bArr[i2 + 3];
                this.f10857f = (bArr[i2 + 2] & 255) | 128;
                int i31 = 0;
                while (true) {
                    iArr2 = this.f10859h;
                    if (i31 >= iArr2.length) {
                        break;
                    }
                    int i32 = this.f10857f;
                    if (i32 == iArr2[i31][0]) {
                        if (i32 == 0) {
                            break;
                        }
                        this.f10858g = i31;
                        break;
                    }
                    i31++;
                }
                if ((b8 & 255) != 0) {
                    if (i31 < iArr2.length) {
                        l0.b0.l0(iArr2[i31][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i33 = this.f10858g;
                    if (i33 < iArr2.length && i33 != 255) {
                        l0.b0.l0(iArr2[i33][1], 1);
                    }
                    this.f10858g = 255;
                    return;
                }
            }
            return;
        }
        if (b4 == 34) {
            if (nt.a()) {
                byte b9 = bArr[i2 + 2];
                byte b10 = bArr[i2 + 3];
                if (b9 != 1) {
                    if (b9 == 2 && b10 != (i4 = this.f10854c)) {
                        if (b10 > i4) {
                            for (int i34 = 0; i34 < b10 - this.f10854c; i34++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                        } else if (b10 < i4) {
                            for (int i35 = 0; i35 < this.f10854c - b10; i35++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                        }
                        this.f10854c = b10;
                        return;
                    }
                    return;
                }
                int i36 = this.f10853b;
                if (b10 != i36) {
                    if (b10 > i36) {
                        for (int i37 = 0; i37 < b10 - this.f10853b; i37++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (b10 < i36) {
                        for (int i38 = 0; i38 < this.f10853b - b10; i38++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    this.f10853b = b10;
                    return;
                }
                return;
            }
            return;
        }
        if (b4 != 49) {
            if (b4 != 50) {
                return;
            }
            int i39 = i2 + 4;
            int i40 = i2 + 5;
            qt.y0(99, ((bArr[i39] << 8) & 65280) | (bArr[i40] & 255));
            qt.y0(1032, ((bArr[i39] << 8) & 65280) | (bArr[i40] & 255));
            qt.y0(98, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
            return;
        }
        byte b11 = bArr[i2 + 2];
        qt.y0(10, (b11 >> 6) & 1);
        qt.y0(14, (b11 >> 2) & 1);
        int i41 = b11 & 3;
        if (i41 == 0) {
            qt.y0(11, 0);
            qt.y0(53, 0);
        } else if (i41 == 1) {
            qt.y0(11, 1);
            qt.y0(53, 0);
        } else if (i41 == 3) {
            qt.y0(11, 1);
            qt.y0(53, 1);
        }
        byte b12 = bArr[i2 + 3];
        qt.y0(17, (b12 >> 7) & 1);
        qt.y0(65, (b12 >> 6) & 1);
        qt.y0(66, (b12 >> 5) & 1);
        qt.y0(12, (b12 >> 4) & 1);
        qt.y0(13, (b12 >> 3) & 1);
        byte b13 = bArr[i2 + 4];
        qt.y0(69, (b13 >> 6) & 3);
        qt.y0(16, (b13 >> 5) & 1);
        qt.y0(30, (b13 >> 2) & 3);
        qt.y0(29, (b13 >> 0) & 3);
        int i42 = i2 + 5;
        qt.y0(32, (bArr[i42] >> 2) & 3);
        qt.y0(31, (bArr[i42] >> 0) & 3);
        byte b14 = bArr[i2 + 6];
        qt.y0(77, b14 & 255);
        if (b14 != 10) {
            switch (b14) {
                case 2:
                    i5 = 1;
                    i7 = 0;
                    i6 = i7;
                    break;
                case 3:
                    i6 = 1;
                    i5 = 0;
                    i7 = 0;
                    break;
                case 4:
                    i5 = 1;
                    i6 = 1;
                    i7 = 0;
                    break;
                case 5:
                    i7 = 1;
                    i6 = 1;
                    i5 = 0;
                    break;
                case 6:
                    i7 = 1;
                    i5 = 0;
                    i6 = 0;
                    break;
                case 7:
                    i5 = 1;
                    i7 = 1;
                    i6 = 0;
                    break;
                default:
                    i5 = 0;
                    break;
            }
            qt.y0(18, i5);
            qt.y0(19, i7);
            qt.y0(20, i6);
            byte b15 = bArr[i2 + 7];
            qt.y0(21, b15);
            E = b15 & 255;
            i8 = i2 + 8;
            b2 = bArr[i8];
            i9 = i2 + 9;
            b3 = bArr[i9];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b2 = bArr[i9];
                b3 = bArr[i8];
            }
            i10 = nt.f8637c;
            if (i10 != 0 || i10 == 3) {
                if (b2 == -2) {
                    qt.y0(27, -3);
                } else if (b2 != -1) {
                    qt.y0(27, 90 - (b2 & 255));
                } else {
                    qt.y0(27, -2);
                }
                if (b3 == -2) {
                    qt.y0(28, -3);
                } else if (b3 != -1) {
                    qt.y0(28, 90 - (b3 & 255));
                } else {
                    qt.y0(28, -2);
                }
            } else {
                if (b2 == -2) {
                    qt.y0(27, -2);
                } else if (b2 != -1) {
                    qt.y0(27, b2 & 255);
                } else {
                    qt.y0(27, -3);
                }
                if (b3 == -2) {
                    qt.y0(28, -2);
                } else if (b3 != -1) {
                    qt.y0(28, b3 & 255);
                } else {
                    qt.y0(28, -3);
                }
            }
            if (!nt.a() || nt.f8637c == 6) {
                l0.h0.u(bArr[i2 + 13] & 255);
            }
            return;
        }
        i5 = 1;
        i7 = i5;
        i6 = i7;
        qt.y0(18, i5);
        qt.y0(19, i7);
        qt.y0(20, i6);
        byte b16 = bArr[i2 + 7];
        qt.y0(21, b16);
        E = b16 & 255;
        i8 = i2 + 8;
        b2 = bArr[i8];
        i9 = i2 + 9;
        b3 = bArr[i9];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b2 = bArr[i9];
            b3 = bArr[i8];
        }
        i10 = nt.f8637c;
        if (i10 != 0) {
            if (b2 == -2) {
                qt.y0(27, -3);
            } else if (b2 != -1) {
                qt.y0(27, 90 - (b2 & 255));
            } else {
                qt.y0(27, -2);
            }
            if (b3 == -2) {
                qt.y0(28, -3);
            } else if (b3 != -1) {
                qt.y0(28, 90 - (b3 & 255));
            } else {
                qt.y0(28, -2);
            }
        } else {
            if (b2 == -2) {
                qt.y0(27, -3);
            } else if (b2 != -1) {
                qt.y0(27, 90 - (b2 & 255));
            } else {
                qt.y0(27, -2);
            }
            if (b3 == -2) {
                qt.y0(28, -3);
            } else if (b3 != -1) {
                qt.y0(28, 90 - (b3 & 255));
            } else {
                qt.y0(28, -2);
            }
        }
        if (nt.a()) {
        }
        l0.h0.u(bArr[i2 + 13] & 255);
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(l0.h0.f13059e);
        y0.g.f18094d.d(l0.h0.f13062h);
        y0.g.f18095e.d(l0.h0.f13062h);
        w0.e.f17815a.d(l0.h0.f13059e);
        w0.e.f17819e.d(l0.h0.f13059e);
        h0.d.f2462a.d(this.f10866o);
        h0.d.f2464c.d(this.f10866o);
        u0.c.f17388o.d(this.f10867p);
        u0.c.f17390q.d(this.f10868q);
        u0.c.f17389p.d(this.f10869r);
        if (this.f10860i != null) {
            App.c().unregisterReceiver(this.f10860i);
        }
        u0.c.f17386m.d(this.f10862k);
        l0.b0.p0(this.f10863l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 126) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:47:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:49:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:50:0x00e9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:75:0x0142  */
    /* JADX WARN: Code duplicated, block: B:77:0x0146  */
    /* JADX WARN: Code duplicated, block: B:78:0x014d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x014f  */
    /* JADX WARN: Code duplicated, block: B:80:0x0156  */
    /* JADX WARN: Code duplicated, block: B:81:0x015d  */
    /* JADX WARN: Code duplicated, block: B:83:0x0163  */
    /* JADX WARN: Code duplicated, block: B:84:0x0168 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x016a  */
    /* JADX WARN: Code duplicated, block: B:86:0x0171  */
    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, 61, (byte) iArr[0], iArr[1]);
                    break;
                } else if (iArr != null && iArr.length > 0) {
                    a3(iArr[0], 0);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    a3(1, iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    a3(2, iArr[0]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    int i9 = nt.f8637c;
                    if (i9 >= 3 && i9 != 9) {
                        a3(26, iArr[0]);
                    } else {
                        a3(3, iArr[0]);
                    }
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    a3(4, iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    a3(5, iArr[0]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    a3(6, iArr[0]);
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length > 0) {
                    a3(7, iArr[0]);
                    break;
                }
                break;
            case 8:
                if (iArr != null && iArr.length > 0) {
                    a3(8, iArr[0]);
                    break;
                }
                break;
            case 9:
                if (iArr != null && iArr.length > 0) {
                    a3(9, iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    a3(10, iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0 && iArr[0] != 0) {
                    a3(11, iArr[0]);
                    break;
                }
                break;
            case 12:
                int i10 = nt.f8645g[27];
                this.D = i10;
                int i11 = nt.f8637c;
                if (i11 < 3 || i11 == 9) {
                    if (iArr[0] != 0) {
                        if (i10 == -2) {
                            this.D = 31;
                        } else if (i10 == -3) {
                            i3 = 60;
                            this.D = 60;
                        } else {
                            i3 = 60;
                            this.D = i10 + 1;
                        }
                        if (i11 == 0) {
                            i4 = this.D;
                            if (i4 <= 30) {
                                a3(12, 254);
                            } else if (i4 >= i3) {
                                a3(12, i4);
                            } else {
                                a3(12, 255);
                            }
                        } else {
                            i5 = this.D;
                            if (i5 <= 30) {
                                a3(12, 255);
                            } else if (i5 >= i3) {
                                a3(12, 90 - i5);
                            } else {
                                a3(12, 254);
                            }
                        }
                        break;
                    } else if (i10 == -2) {
                        this.D = 30;
                    } else if (i10 == -3) {
                        this.D = 59;
                    } else {
                        this.D = i10 - 1;
                    }
                    i3 = 60;
                    if (i11 == 0) {
                        i4 = this.D;
                        if (i4 <= 30) {
                            a3(12, 254);
                        } else if (i4 >= i3) {
                            a3(12, i4);
                        } else {
                            a3(12, 255);
                        }
                    } else {
                        i5 = this.D;
                        if (i5 <= 30) {
                            a3(12, 255);
                        } else if (i5 >= i3) {
                            a3(12, 90 - i5);
                        } else {
                            a3(12, 254);
                        }
                    }
                } else if (iArr[0] != 0) {
                    a3(13, 0);
                } else {
                    a3(14, 0);
                }
                break;
            case 13:
                int i12 = nt.f8645g[28];
                this.D = i12;
                int i13 = nt.f8637c;
                if (i13 < 3 || i13 == 9) {
                    if (iArr[0] != 0) {
                        if (i12 == -2) {
                            this.D = 31;
                        } else if (i12 == -3) {
                            i6 = 60;
                            this.D = 60;
                        } else {
                            i6 = 60;
                            this.D = i12 + 1;
                        }
                        if (i13 == 0) {
                            i7 = this.D;
                            if (i7 <= 30) {
                                a3(13, 254);
                            } else if (i7 >= i6) {
                                a3(13, i7);
                            } else {
                                a3(13, 255);
                            }
                        } else {
                            i8 = this.D;
                            if (i8 <= 30) {
                                a3(13, 255);
                            } else if (i8 >= i6) {
                                a3(13, 90 - i8);
                            } else {
                                a3(13, 254);
                            }
                        }
                        break;
                    } else if (i12 == -2) {
                        this.D = 30;
                    } else if (i12 == -3) {
                        this.D = 59;
                    } else {
                        this.D = i12 - 1;
                    }
                    i6 = 60;
                    if (i13 == 0) {
                        i7 = this.D;
                        if (i7 <= 30) {
                            a3(13, 254);
                        } else if (i7 >= i6) {
                            a3(13, i7);
                        } else {
                            a3(13, 255);
                        }
                    } else {
                        i8 = this.D;
                        if (i8 <= 30) {
                            a3(13, 255);
                        } else if (i8 >= i6) {
                            a3(13, 90 - i8);
                        } else {
                            a3(13, 254);
                        }
                    }
                } else if (iArr[0] != 0) {
                    a3(15, 0);
                } else {
                    a3(16, 0);
                }
                break;
            case 14:
                if (iArr != null && iArr.length > 0) {
                    int i14 = nt.f8637c;
                    if (i14 >= 3 && i14 != 9) {
                        a3(3, iArr[0]);
                    } else {
                        a3(14, iArr[0]);
                    }
                    break;
                }
                break;
            case 16:
                if (T2(iArr, 2)) {
                    z.k.s(227, 2, 109, iArr[0], iArr[1]);
                }
                break;
            case 17:
                if (T2(iArr, 2)) {
                    z.k.s(227, 4, 111, iArr[0], iArr[1], 0, 0);
                }
                break;
        }
    }

    public final void a3(int i2, int i3) {
        byte b2 = (byte) i2;
        z.k.s(227, 2, 61, b2, 1);
        a.i.a0(100L);
        z.k.s(227, 2, 61, b2, 0);
    }

    public final int b3(int i2) {
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

    public final void c3(int i2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[34];
        byte[] bytes = str.getBytes();
        iArr[0] = 227;
        iArr[1] = 31;
        iArr[2] = i2;
        int length = bytes.length <= 30 ? bytes.length : 30;
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3 + 4] = bytes[i3];
        }
        z.k.s(iArr);
    }

    public final void d3() {
        int i2 = this.f10876y;
        if (i2 < 0 || i2 >= F.length) {
            return;
        }
        int i3 = this.f10872u * 10;
        int i4 = this.f10871t * 10;
        int i5 = this.f10874w;
        z.k.s(227, 19, 228, this.A, this.f10877z, (i3 >> 24) & 255, (i3 >> 16) & 255, (i3 >> 8) & 255, i3 & 255, this.f10875x, (i4 >> 24) & 255, (i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255, b3(this.f10873v), 0, 0, i5 / BatchedScanSettings.MAX_INTERVAL_SEC, (i5 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, F[this.f10876y], 0, 0);
    }

    public final void n3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public boolean o3(int i2) {
        return i2 == 3 || i2 == 4 || i2 == 5;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003b  */
    public final void p3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length() > 12 ? 12 : str.length();
        byte[] bArr = new byte[12];
        byte[] bytes = str.getBytes();
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = bytes[i2];
        }
        int i3 = h0.c.E;
        int i4 = 4;
        if (i3 == 0) {
            i4 = 6;
        } else if (i3 == 2) {
            i4 = 0;
        } else if (i3 == 3) {
            i4 = 2;
        } else if (i3 == 4) {
            i4 = 1;
        } else if (i3 != 5) {
            i4 = 6;
        }
        int i5 = (!o3(h0.c.F) || o3(h0.c.E)) ? i4 : 5;
        int[] iArr = new int[30];
        for (int i6 = 0; i6 < 30; i6++) {
            iArr[i6] = 0;
        }
        iArr[0] = -29;
        iArr[1] = 27;
        iArr[2] = -51;
        iArr[3] = i5;
        for (int i7 = 0; i7 < length; i7++) {
            int iCodePointAt = str.codePointAt(i7);
            int i8 = (i7 << 1) + 6;
            iArr[i8] = (iCodePointAt >> 8) & 255;
            iArr[i8 + 1] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }
}
