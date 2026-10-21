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
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class tj extends lt {
    public static int[] I = {0, 0, 7, 3, 8, 2, 6, 4, 6, 1, 9, 10, 12, 9, 9, 14, 9, 11, 13, 5, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10663b;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public k f10675n;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10664c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10665d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f10666e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f10667f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f10668g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10669h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f10670i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{15, 29}, new int[]{16, 6}, new int[]{43, 5}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f10671j = 0.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10672k = 255;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f10673l = 255;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f10674m = new c();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f10676o = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f10677p = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f10678q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f10679r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f10680s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f10681t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f10682u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f10683v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f10684w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f10685x = 1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f10686y = 255;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final Runnable f10687z = new d();
    public Runnable A = new e();
    public Runnable B = new f();
    public Runnable C = new g();
    public Runnable D = new h();
    public Runnable E = new i();
    public int F = 0;
    public Runnable G = new j();
    public Runnable H = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tj tjVar = tj.this;
            int i2 = tjVar.F - 1;
            tjVar.F = i2;
            if (i2 <= 0) {
                l0.b0.p0(tjVar.H);
                tj.this.F = 5;
            }
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8637c) {
                    case 208:
                        z.k.s(227, 2, 36, 16, 16);
                        break;
                    case 209:
                        z.k.s(227, 2, 36, 16, 16);
                        break;
                    case 210:
                        z.k.s(227, 2, 36, 18, 16);
                        break;
                    case 211:
                        z.k.s(227, 2, 36, 19, 16);
                        break;
                    case 212:
                        z.k.s(227, 2, 36, 20, 16);
                        break;
                    case 213:
                        z.k.s(227, 2, 36, 21, 16);
                        break;
                    case 214:
                        z.k.s(227, 2, 36, 240, 16);
                        break;
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tj tjVar = tj.this;
            byte b2 = (byte) (tjVar.f10667f + 1);
            tjVar.f10667f = b2;
            if (b2 == 20) {
                tjVar.f10666e = true;
                if (tjVar.f10664c == 12) {
                    l0.b0.l0(13, 0);
                    l0.b0.l0(13, 1);
                }
                l0.b0.o0(tj.this.f10668g);
                tj.this.f10667f = (byte) 0;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tj tjVar = tj.this;
            if (tjVar.f10684w == 0) {
                tjVar.f10671j = u0.b.f17359s0;
                if ((tj.this.f10671j <= 22.5d && tj.this.f10671j >= 0.0f) || (tj.this.f10671j >= 337.5d && tj.this.f10671j <= 360.0f)) {
                    tj.this.f10673l = 7;
                } else if (tj.this.f10671j > 22.5d && tj.this.f10671j < 67.5d) {
                    tj.this.f10673l = 8;
                } else if (tj.this.f10671j >= 67.5d && tj.this.f10671j <= 112.5d) {
                    tj.this.f10673l = 1;
                } else if (tj.this.f10671j > 112.5d && tj.this.f10671j < 157.5d) {
                    tj.this.f10673l = 2;
                } else if (tj.this.f10671j >= 157.5d && tj.this.f10671j <= 202.5d) {
                    tj.this.f10673l = 3;
                } else if (tj.this.f10671j > 202.5d && tj.this.f10671j < 247.5d) {
                    tj.this.f10673l = 4;
                } else if (tj.this.f10671j >= 247.5d && tj.this.f10671j <= 292.5d) {
                    tj.this.f10673l = 5;
                } else if (tj.this.f10671j <= 292.5d || tj.this.f10671j >= 337.5d) {
                    tj.this.f10673l = 3;
                } else {
                    tj.this.f10673l = 6;
                }
                if (tj.this.f10673l != tj.this.f10672k) {
                    tj tjVar2 = tj.this;
                    int i2 = tjVar2.f10679r * 10;
                    int i3 = tjVar2.f10678q * 10;
                    int i4 = tj.this.f10681t;
                    z.k.s(227, 19, 228, (byte) (tjVar2.f10685x << 7), (byte) (tjVar2.f10684w << 7), (i2 >> 24) & 255, (i2 >> 16) & 255, (i2 >> 8) & 255, i2 & 255, tjVar2.f10682u, (i3 >> 24) & 255, (i3 >> 16) & 255, (i3 >> 8) & 255, i3 & 255, tjVar2.f10673l, i4 / BatchedScanSettings.MAX_INTERVAL_SEC, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i4 / BatchedScanSettings.MAX_INTERVAL_SEC, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, tj.I[tj.this.f10683v], 0, 0);
                    tj tjVar3 = tj.this;
                    tjVar3.f10672k = tjVar3.f10673l;
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tj tjVar = tj.this;
            tjVar.f10685x = 0;
            tjVar.f10684w = 0;
            tjVar.g3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tj.this.v3((byte) -110, u0.b.i3);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tj.this.v3((byte) -108, u0.b.j3);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tj.this.v3((byte) -109, u0.b.k3);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tj.b3();
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            DateFormat.is24HourFormat(App.c());
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(tj.this.H);
            tj.this.F = 5;
        }
    }

    public class k extends BroadcastReceiver {
        public k() {
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0046 A[Catch: Exception -> 0x0155, TryCatch #0 {Exception -> 0x0155, blocks: (B:5:0x0023, B:7:0x002e, B:11:0x003a, B:13:0x003e, B:15:0x0046, B:17:0x0050, B:18:0x0065, B:20:0x006d, B:22:0x007b, B:24:0x0081, B:25:0x008b, B:27:0x008f, B:28:0x0099, B:29:0x00a2, B:31:0x00ac, B:32:0x00b5, B:34:0x00bf, B:36:0x00cf, B:38:0x00d3, B:40:0x00d7, B:41:0x00db, B:42:0x00ed, B:44:0x00f7, B:45:0x0100, B:47:0x010a, B:48:0x0113, B:50:0x011d, B:52:0x012c, B:55:0x0133), top: B:60:0x0023 }] */
        /* JADX WARN: Code duplicated, block: B:17:0x0050 A[Catch: Exception -> 0x0155, TryCatch #0 {Exception -> 0x0155, blocks: (B:5:0x0023, B:7:0x002e, B:11:0x003a, B:13:0x003e, B:15:0x0046, B:17:0x0050, B:18:0x0065, B:20:0x006d, B:22:0x007b, B:24:0x0081, B:25:0x008b, B:27:0x008f, B:28:0x0099, B:29:0x00a2, B:31:0x00ac, B:32:0x00b5, B:34:0x00bf, B:36:0x00cf, B:38:0x00d3, B:40:0x00d7, B:41:0x00db, B:42:0x00ed, B:44:0x00f7, B:45:0x0100, B:47:0x010a, B:48:0x0113, B:50:0x011d, B:52:0x012c, B:55:0x0133), top: B:60:0x0023 }] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            tj tjVar;
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
                                tj tjVar2 = tj.this;
                                tjVar2.f10685x = 1;
                                tjVar2.f10684w = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                tjVar = tj.this;
                                tjVar.f10685x = 1;
                                tjVar.f10684w = 0;
                                if (u0.b.f17306a0 == 1) {
                                    tjVar.f10672k = 255;
                                    o1.j.b(o1.l.a(), tj.this.f10674m, 1000L);
                                }
                                z2 = true;
                                break;
                        }
                    } else {
                        tjVar = tj.this;
                        tjVar.f10685x = 1;
                        tjVar.f10684w = 0;
                        if (u0.b.f17306a0 == 1) {
                            tjVar.f10672k = 255;
                            o1.j.b(o1.l.a(), tj.this.f10674m, 1000L);
                        }
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!tj.this.f10676o.equals(extras.getString("CUR_ROAD_NAME")) && extras.getString("CUR_ROAD_NAME") != null) {
                        tj.this.f10676o = extras.getString("CUR_ROAD_NAME");
                        switch (nt.f8637c) {
                            case 211:
                                tj tjVar3 = tj.this;
                                tjVar3.f3(230, tjVar3.f10676o);
                                break;
                            case 212:
                            case 213:
                                tj tjVar4 = tj.this;
                                tjVar4.e3(231, tjVar4.f10676o);
                                break;
                        }
                    }
                    if (tj.this.f10679r != extras.getInt("SEG_REMAIN_DIS")) {
                        tj.this.f10679r = extras.getInt("SEG_REMAIN_DIS");
                        z2 = true;
                    }
                    if (tj.this.f10678q != extras.getInt("ROUTE_REMAIN_DIS")) {
                        tj.this.f10678q = extras.getInt("ROUTE_REMAIN_DIS");
                        tj tjVar5 = tj.this;
                        if (tjVar5.f10685x == 0 && tjVar5.f10678q > 100 && u0.b.f17306a0 == 1) {
                            tjVar5.f10685x = 1;
                            tjVar5.f10684w = 1;
                        }
                        tjVar5.f10682u = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (tj.this.f10680s != extras.getInt("CAR_DIRECTION")) {
                        tj.this.f10680s = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (tj.this.f10681t != extras.getInt("ROUTE_REMAIN_TIME")) {
                        tj.this.f10681t = extras.getInt("ROUTE_REMAIN_TIME");
                        z2 = true;
                    }
                    if (tj.this.f10683v != extras.getInt("ICON")) {
                        tj.this.f10683v = extras.getInt("ICON");
                        tj tjVar6 = tj.this;
                        if (tjVar6.f10683v >= 2) {
                            tjVar6.f10685x = 1;
                            tjVar6.f10684w = 1;
                        }
                        z2 = true;
                    }
                }
                if (z2) {
                    tj.this.g3();
                    o1.j.e(o1.l.a(), tj.this.f10687z);
                    o1.j.b(o1.l.a(), tj.this.f10687z, 20000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ k(tj tjVar, b bVar) {
            this();
        }
    }

    public static void b3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 145;
        iArr[2] = c3();
        if (u0.b.D == 1) {
            int i4 = w0.d.f17796h;
            if (i4 - 65536 == 0 || 1 == i4 - 65536 || 2 == i4 - 65536) {
                int i5 = w0.d.f17798j & 255;
                iArr[3] = (i5 / 10) + 48;
                iArr[4] = (i5 % 10) + 48;
                int i6 = w0.d.f17797i;
                if ((i6 % 100000) / 10000 == 0) {
                    iArr[6] = 32;
                } else {
                    iArr[6] = ((i6 % 100000) / 10000) + 48;
                }
                iArr[7] = ((i6 % 10000) / 1000) + 48;
                iArr[8] = ((i6 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i6 % 100) / 10) + 48;
            } else {
                int i7 = w0.d.f17798j;
                iArr[3] = (i7 / 10) + 1 + 48;
                iArr[4] = (i7 % 10) + 1 + 48;
                int i8 = w0.d.f17797i;
                if (i8 / 10000 == 0) {
                    iArr[6] = ((i8 % 10000) / 1000) + 48;
                    iArr[7] = ((i8 % 1000) / 100) + 48;
                    iArr[8] = ((i8 % 100) / 10) + 48;
                    iArr[9] = (i8 % 10) + 48;
                } else {
                    iArr[6] = (i8 / 10000) + 48;
                    iArr[7] = ((i8 % 10000) / 1000) + 48;
                    iArr[8] = ((i8 % 1000) / 100) + 48;
                    iArr[9] = ((i8 % 100) / 10) + 48;
                    iArr[10] = (i8 % 10) + 48;
                }
            }
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i9 = i2 + 1;
            iArr2[i9] = (byte) iArr[i2];
            i2 = i9;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:31:0x0048  */
    /* JADX WARN: Code duplicated, block: B:7:0x0011  */
    public static int c3() {
        int i2 = 2;
        switch (u0.b.D) {
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0) {
                    i2 = 1;
                } else if (1 != i3 - 65536) {
                    if (2 == i3 - 65536) {
                        i2 = 3;
                    } else if (i3 + 0 == 0) {
                        i2 = 4;
                    } else if (1 != i3 - 0) {
                        i2 = 0;
                    } else {
                        i2 = 5;
                    }
                }
                break;
            case 2:
                i2 = 10;
                break;
            case 3:
                i2 = 133;
                break;
            case 4:
                if (o0.e.H != 1) {
                    i2 = 13;
                } else {
                    i2 = 6;
                }
                break;
            case 5:
                i2 = 12;
                break;
            case 6:
                i2 = 8;
                break;
            case 7:
                i2 = 11;
                break;
            case 8:
            case 10:
                i2 = 13;
                break;
            case 9:
            case 11:
            default:
                i2 = 0;
                break;
            case 12:
                i2 = 254;
                break;
            case 13:
                i2 = 255;
                break;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        return i2;
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
                a3(13);
                return;
            }
            a3(14);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(15);
                return;
            } else {
                a3(16);
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] == 1) {
                z.k.s(227, 4, 111, 16, 0, 255, 255);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, 4, 111, 16, 1, 255, 255);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, 4, 111, 17, 0, 255, 255);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, 4, 111, 17, 1, 255, 255);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, 4, 111, 18, 0, 255, 255);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, 4, 111, 18, 1, 255, 255);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, 4, 111, 19, 0, 255, 255);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, 4, 111, 19, 1, 255, 255);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, 4, 111, 20, 0, 255, 255);
                return;
            }
            if (iArr[1] == 10) {
                z.k.s(227, 4, 111, 20, 1, 255, 255);
                return;
            }
            if (iArr[1] == 11) {
                z.k.s(227, 4, 111, 16, 0, 255, 255);
                z.k.s(227, 4, 111, 17, 0, 255, 255);
                z.k.s(227, 4, 111, 18, 0, 255, 255);
                z.k.s(227, 4, 111, 19, 0, 255, 255);
                z.k.s(227, 4, 111, 20, 0, 255, 255);
                return;
            }
            if (iArr[1] == 12) {
                z.k.s(227, 4, 111, 16, 1, 255, 255);
                z.k.s(227, 4, 111, 17, 1, 255, 255);
                z.k.s(227, 4, 111, 18, 1, 255, 255);
                z.k.s(227, 4, 111, 19, 1, 255, 255);
                z.k.s(227, 4, 111, 20, 1, 255, 255);
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
                    a3(4);
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
                        a3(6);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(6);
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
                if (iArr[1] != -1) {
                    a3(12);
                } else {
                    a3(11);
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
        mtVar.f8320o = 1;
        mtVar.f8322q = 0;
        mtVar.f8314i = 1;
        o1.y yVar = u0.c.f17386m;
        yVar.a(this.G, 1);
        qt.z(this.E);
        yVar.a(this.D, 1);
        u0.c.f17374a.a(this.D, 1);
        w0.e.f17815a.a(this.D, 1);
        w0.e.f17819e.a(this.D, 1);
        u0.c.f17388o.a(this.A, 1);
        u0.c.f17389p.a(this.B, 1);
        u0.c.f17390q.a(this.C, 1);
        o1.h.f16865a.a(this.f10674m, 1);
        this.f10675n = new k(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
        App.c().registerReceiver(this.f10675n, intentFilter);
        g3();
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2 + 1];
        if (b2 == -24) {
            if ((bArr[i2 + 5] & 255) != 0) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 26) {
            byte b3 = bArr[i2 + 3];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            }
            qt.y0(3, (b3 >> 5) & 1);
            qt.y0(4, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i8 = i2 + 4;
                l0.c0.b((bArr[i8] >> 1) & 1, (bArr[i8] >> 0) & 1, (bArr[i8] >> 2) & 1);
            } else {
                int i9 = i2 + 4;
                l0.c0.a((bArr[i9] >> 1) & 1, (bArr[i9] >> 0) & 1, (bArr[i9] >> 2) & 1);
            }
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            return;
        }
        if (b2 == 53) {
            qt.y0(149, (bArr[i2 + 4] >> 6) & 3);
            int i10 = i2 + 6;
            qt.y0(150, (bArr[i10] >> 3) & 1);
            qt.y0(151, (bArr[i10] >> 2) & 1);
            qt.y0(152, (bArr[i10] >> 1) & 1);
            return;
        }
        if (b2 == 65) {
            u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
            int i11 = i2 + 6;
            int i12 = bArr[i11] & 255;
            int i13 = i2 + 7;
            int i14 = bArr[i13] & 255;
            int i15 = i2 + 8;
            int i16 = bArr[i15] & 255;
            int i17 = i2 + 9;
            int i18 = bArr[i17] & 255;
            if (i12 == 255 && i14 == 255 && i16 == 255 && i18 == 255) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i12 || l0.c0.f13014h != i14 || l0.c0.f13015i != i16 || l0.c0.f13016j != i18) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i12;
            l0.c0.f13014h = i14;
            l0.c0.f13015i = i16;
            l0.c0.f13016j = i18;
            u0.d.D2(l0.c0.E0(bArr[i11] & 255));
            u0.d.E2(l0.c0.E0(bArr[i13] & 255));
            u0.d.F2(l0.c0.E0(bArr[i15] & 255));
            u0.d.G2(l0.c0.E0(bArr[i17] & 255));
            return;
        }
        if (b2 == 97) {
            int i19 = i2 + 2;
            qt.y0(101, (bArr[i19] >> 7) & 1);
            qt.y0(102, (bArr[i19] >> 6) & 1);
            qt.y0(103, (bArr[i19] >> 5) & 1);
            qt.y0(104, (bArr[i19] >> 4) & 1);
            qt.y0(105, (bArr[i19] >> 2) & 3);
            qt.y0(106, (bArr[i19] >> 1) & 1);
            qt.y0(107, (bArr[i19] >> 0) & 1);
            int i20 = i2 + 3;
            qt.y0(108, (bArr[i20] >> 7) & 1);
            qt.y0(109, (bArr[i20] >> 6) & 1);
            qt.y0(110, (bArr[i20] >> 5) & 1);
            qt.y0(111, (bArr[i20] >> 4) & 1);
            qt.y0(112, (bArr[i20] >> 3) & 1);
            qt.y0(113, (bArr[i20] >> 2) & 1);
            qt.y0(114, (bArr[i20] >> 1) & 1);
            qt.y0(115, (bArr[i20] >> 0) & 1);
            int i21 = i2 + 4;
            qt.y0(116, (bArr[i21] >> 7) & 1);
            qt.y0(117, (bArr[i21] >> 6) & 1);
            qt.y0(118, (bArr[i21] >> 4) & 3);
            qt.y0(119, (bArr[i21] >> 3) & 1);
            qt.y0(120, (bArr[i21] >> 2) & 1);
            qt.y0(121, (bArr[i21] >> 1) & 1);
            qt.y0(122, (bArr[i21] >> 0) & 1);
            int i22 = i2 + 5;
            qt.y0(123, (bArr[i22] >> 7) & 1);
            qt.y0(124, (bArr[i22] >> 6) & 1);
            qt.y0(125, (bArr[i22] >> 5) & 1);
            qt.y0(126, (bArr[i22] >> 4) & 1);
            qt.y0(127, (bArr[i22] >> 2) & 3);
            qt.y0(128, (bArr[i22] >> 0) & 3);
            int i23 = i2 + 6;
            qt.y0(129, (bArr[i23] >> 5) & 1);
            qt.y0(130, (bArr[i23] >> 4) & 1);
            qt.y0(131, (bArr[i23] >> 3) & 1);
            qt.y0(132, (bArr[i23] >> 1) & 3);
            qt.y0(133, (bArr[i23] >> 0) & 1);
            int i24 = i2 + 7;
            qt.y0(134, (bArr[i24] >> 7) & 1);
            qt.y0(135, (bArr[i24] >> 5) & 3);
            qt.y0(136, (bArr[i24] >> 3) & 1);
            qt.y0(137, (bArr[i24] >> 2) & 1);
            qt.y0(138, (bArr[i24] >> 1) & 1);
            qt.y0(139, (bArr[i24] >> 0) & 1);
            int i25 = i2 + 8;
            qt.y0(140, (bArr[i25] >> 4) & 15);
            qt.y0(141, (bArr[i25] >> 3) & 1);
            qt.y0(142, (bArr[i25] >> 2) & 1);
            qt.y0(143, (bArr[i25] >> 1) & 1);
            qt.y0(144, (bArr[i25] >> 0) & 1);
            int i26 = i2 + 9;
            qt.y0(145, (bArr[i26] >> 7) & 1);
            qt.y0(146, (bArr[i26] >> 5) & 3);
            qt.y0(147, (bArr[i26] >> 4) & 1);
            qt.y0(148, (bArr[i26] >> 0) & 15);
            return;
        }
        if (b2 != 17) {
            if (b2 == 18) {
                int i27 = i2 + 5;
                qt.y0(153, (bArr[i27] >> 7) & 1);
                qt.y0(154, (bArr[i27] >> 6) & 1);
                qt.y0(155, (bArr[i27] >> 5) & 1);
                qt.y0(156, (bArr[i27] >> 4) & 1);
                qt.y0(157, (bArr[i27] >> 3) & 1);
                qt.y0(158, (bArr[i27] >> 2) & 1);
                qt.y0(159, bArr[i2 + 6] & 255);
                return;
            }
            if (b2 != 49) {
                if (b2 != 50) {
                    return;
                }
                qt.y0(99, bArr[i2 + 8] & 255);
                qt.y0(100, bArr[i2 + 9] & 255);
                return;
            }
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            byte b6 = bArr[i2 + 4];
            byte b7 = bArr[i2 + 6];
            byte b8 = bArr[i2 + 7];
            qt.y0(10, (b4 >> 6) & 1);
            qt.y0(53, (b4 >> 5) & 1);
            qt.y0(13, (b4 >> 3) & 1);
            qt.y0(58, (b5 >> 7) & 1);
            qt.y0(11, (b5 >> 6) & 1);
            qt.y0(12, (b5 >> 4) & 1);
            qt.y0(14, (b5 >> 2) & 1);
            qt.y0(54, (b5 >> 0) & 1);
            qt.y0(15, (b6 >> 4) & 1);
            qt.y0(16, (b6 >> 5) & 1);
            qt.y0(29, (b6 >> 0) & 3);
            qt.y0(30, (b6 >> 2) & 3);
            if (b7 != 3) {
                if (b7 == 5) {
                    i5 = 0;
                    i6 = 1;
                } else if (b7 == 6) {
                    i5 = 0;
                    i7 = 0;
                    i6 = 1;
                } else if (b7 == 11) {
                    i6 = 0;
                    i7 = 0;
                    i5 = 1;
                } else if (b7 != 12) {
                    i5 = 0;
                    i6 = 0;
                } else {
                    i6 = 0;
                    i5 = 1;
                    i7 = 1;
                }
                i7 = i6;
            } else {
                i5 = 0;
                i6 = 0;
                i7 = 1;
            }
            qt.y0(18, i5);
            qt.y0(19, i6);
            qt.y0(20, i7);
            qt.y0(21, b8 & 255);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i28 = i2 + 8;
                if ((bArr[i28] & 255) == 254) {
                    qt.y0(28, -2);
                } else if ((bArr[i28] & 255) == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i28] & 255);
                }
                int i29 = i2 + 9;
                if ((bArr[i29] & 255) == 254) {
                    qt.y0(27, -2);
                    return;
                } else if ((bArr[i29] & 255) == 255) {
                    qt.y0(27, -3);
                    return;
                } else {
                    qt.y0(27, bArr[i29] & 255);
                    return;
                }
            }
            int i30 = i2 + 8;
            if ((bArr[i30] & 255) == 254) {
                qt.y0(27, -2);
            } else if ((bArr[i30] & 255) == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, bArr[i30] & 255);
            }
            int i31 = i2 + 9;
            if ((bArr[i31] & 255) == 254) {
                qt.y0(28, -2);
                return;
            } else if ((bArr[i31] & 255) == 255) {
                qt.y0(28, -3);
                return;
            } else {
                qt.y0(28, bArr[i31] & 255);
                return;
            }
        }
        byte b9 = bArr[i2 + 4];
        byte b10 = bArr[i2 + 5];
        this.f10664c = b9 & 255;
        int i32 = 0;
        while (true) {
            iArr = this.f10670i;
            if (i32 >= iArr.length) {
                break;
            }
            int i33 = this.f10664c;
            if (i33 == iArr[i32][0]) {
                if (i33 == 0) {
                    break;
                }
                this.f10663b = i32;
                this.f10665d = i33;
                break;
            }
            i32++;
        }
        int i34 = this.f10664c;
        if (i34 == 0) {
            if (this.f10665d != 12) {
                if ((b10 & 255) == 0) {
                    int i35 = this.f10663b;
                    if (i35 < iArr.length && i35 != 255) {
                        l0.b0.l0(iArr[i35][1], 1);
                    }
                    this.f10663b = 255;
                }
            } else if (!this.f10666e) {
                l0.b0.l0(2, 0);
                l0.b0.l0(2, 1);
            }
            l0.b0.o0(this.f10668g);
            this.f10666e = false;
            this.f10667f = (byte) 0;
            this.f10669h = 0;
            this.f10665d = 0;
            return;
        }
        if (i34 == 12) {
            if (nt.f8637c != 210) {
                if ((b10 & 255) == 1) {
                    l0.b0.l0(2, 0);
                    l0.b0.l0(2, 1);
                    return;
                }
                return;
            }
            if (this.f10669h != b10) {
                this.f10669h = b10;
                if (b10 == 1) {
                    this.f10666e = false;
                    this.f10667f = (byte) 0;
                    l0.b0.a(this.f10668g);
                    return;
                }
                return;
            }
            return;
        }
        if (i34 == 4) {
            if ((b10 & 255) == 1) {
                int i36 = nt.f8637c;
                if (i36 != 208 && i36 != 209) {
                    l0.b0.l0(13, 0);
                    l0.b0.l0(13, 1);
                    return;
                } else if (h0.c.E != 4) {
                    l0.b0.l0(13, 0);
                    l0.b0.l0(13, 1);
                    return;
                } else {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                    return;
                }
            }
            return;
        }
        if (i34 != 5) {
            if ((b10 & 255) != 0) {
                if (i32 < iArr.length) {
                    l0.b0.l0(iArr[i32][1], 0);
                    return;
                }
                return;
            }
            int i37 = this.f10663b;
            if (i37 < iArr.length) {
                i4 = 255;
                if (i37 != 255) {
                    l0.b0.l0(iArr[i37][1], 1);
                }
            } else {
                i4 = 255;
            }
            this.f10663b = i4;
            return;
        }
        if ((b10 & 255) == 1) {
            int i38 = nt.f8637c;
            if (i38 != 210 && i38 != 212) {
                l0.b0.l0(18, 0);
                l0.b0.l0(18, 1);
                return;
            }
            int i39 = h0.c.E;
            if (i39 == 3 || i39 == 5) {
                l0.b0.l0(26, 0);
                l0.b0.l0(26, 1);
            } else {
                l0.b0.l0(18, 0);
                l0.b0.l0(18, 1);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        o1.y yVar = u0.c.f17386m;
        yVar.d(this.G);
        l0.b0.p0(this.H);
        qt.q0(this.E);
        yVar.d(this.D);
        u0.c.f17374a.d(this.D);
        w0.e.f17815a.d(this.D);
        w0.e.f17819e.d(this.D);
        u0.c.f17388o.d(this.A);
        u0.c.f17389p.d(this.B);
        u0.c.f17390q.d(this.C);
        o1.h.f16865a.d(this.f10674m);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 153) {
            return;
        }
        y.e.a(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 2, 59, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 1029) {
            return;
        }
        int iW = (iArr[1] * 1280) / a.f.w();
        int i3 = (iArr[2] * MediaProperties.HEIGHT_720) / a.f.i();
        if (T2(iArr, 2)) {
            if (iArr[0] == 0) {
                z.k.s(227, 6, 44, 1, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
            } else {
                z.k.s(227, 6, 44, 0, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
            }
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 2, 61, i2, 1);
        a.i.a0(100L);
        z.k.s(227, 2, 61, i2, 0);
    }

    public final int d3(int i2) {
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

    public final void e3(int i2, String str) {
        if (str == null) {
            str = " ";
        }
        int length = str.length();
        if (length >= 15) {
            length = 15;
        }
        int i3 = length << 1;
        byte[] bArr = new byte[i3];
        for (int i4 = 0; i4 < length; i4++) {
            int iCodePointAt = str.codePointAt(i4);
            int i5 = i4 << 1;
            bArr[i5 + 1] = (byte) ((iCodePointAt >> 8) & 255);
            bArr[i5] = (byte) (iCodePointAt & 255);
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = i2;
        for (int i6 = 0; i6 < i3; i6++) {
            iArr[i6 + 3] = bArr[i6];
        }
        z.k.s(iArr);
    }

    public final void f3(int i2, String str) {
        if (str == null) {
            str = " ";
        }
        try {
            byte[] bytes = str.getBytes("GB2312");
            int length = 30;
            if (bytes.length <= 30) {
                length = bytes.length;
            }
            int[] iArr = new int[35];
            iArr[0] = 227;
            iArr[1] = 32;
            iArr[2] = i2;
            for (int i3 = 0; i3 < length; i3++) {
                iArr[i3 + 3] = bytes[i3];
            }
            z.k.s(iArr);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void g3() {
        int i2 = this.f10683v;
        if (i2 < 0 || i2 >= I.length) {
            return;
        }
        int i3 = this.f10684w;
        if (i3 == 0 && this.f10680s == 0) {
            return;
        }
        int i4 = this.f10679r * 10;
        int i5 = this.f10678q * 10;
        int i6 = this.f10681t;
        z.k.s(227, 19, 228, (byte) (this.f10685x << 7), (byte) (i3 << 7), (i4 >> 24) & 255, (i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255, this.f10682u, (i5 >> 24) & 255, (i5 >> 16) & 255, (i5 >> 8) & 255, i5 & 255, d3(this.f10680s), i6 / BatchedScanSettings.MAX_INTERVAL_SEC, (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i6 / BatchedScanSettings.MAX_INTERVAL_SEC, (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, I[this.f10683v], 0, 0);
    }

    public final void v3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() < 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 4] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 3] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }
}
