package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.drm.DrmManagerClient;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class j0 extends lt {
    public static int[] H = {0, 0, 7, 3, 8, 2, 6, 4, 6, 1, 9, 10, 12, 9, 9, 14, 9, 11, 13, 5, 1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6634c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6636e;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public i f6650s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6633b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6635d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6637f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f6638g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, -1}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 16}, new int[]{16, 6}, new int[]{129, 34}, new int[]{130, 35}, new int[]{131, 32}, new int[]{132, 33}, new int[]{133, 3}, new int[]{134, 4}, new int[]{135, 32}, new int[]{136, 33}, new int[]{137, 29}, new int[]{138, 6}, new int[]{139, 9}, new int[]{140, 1}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6639h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6640i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f6641j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f6642k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f6643l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f6644m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f6645n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f6646o = 0.0f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f6647p = 255;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f6648q = 255;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f6649r = new e();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f6651t = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f6652u = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f6653v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f6654w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f6655x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f6656y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f6657z = 0;
    public int A = 0;
    public int B = 0;
    public int C = 1;
    public int D = 255;
    public final Runnable E = new f();
    public Runnable F = new g();
    public Runnable G = new h();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j0 j0Var = j0.this;
            int i2 = j0Var.f6633b;
            if (i2 > 0) {
                j0Var.f6633b = i2 - 1;
            }
            if (j0Var.f6633b == 0) {
                j0.a3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j0.this.c3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(j0.this.f6645n);
            j0 j0Var = j0.this;
            j0Var.f6643l = 5;
            j0Var.f6639h = 0;
            j0Var.f6640i = 0;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j0 j0Var = j0.this;
            int i2 = j0Var.f6643l - 1;
            j0Var.f6643l = i2;
            if (i2 <= 0) {
                l0.b0.p0(j0Var.f6645n);
                j0.this.f6643l = 5;
                return;
            }
            int i3 = nt.f8637c;
            if (i3 == 0) {
                z.k.s(227, 2, 36, 1, 4);
            } else {
                if (i3 != 1) {
                    return;
                }
                z.k.s(227, 2, 36, 18, 4);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j0 j0Var = j0.this;
            if (j0Var.B == 0) {
                j0Var.f6646o = u0.b.f17359s0;
                if ((j0.this.f6646o <= 22.5d && j0.this.f6646o >= 0.0f) || (j0.this.f6646o >= 337.5d && j0.this.f6646o <= 360.0f)) {
                    j0.this.f6648q = 7;
                } else if (j0.this.f6646o > 22.5d && j0.this.f6646o < 67.5d) {
                    j0.this.f6648q = 8;
                } else if (j0.this.f6646o >= 67.5d && j0.this.f6646o <= 112.5d) {
                    j0.this.f6648q = 1;
                } else if (j0.this.f6646o > 112.5d && j0.this.f6646o < 157.5d) {
                    j0.this.f6648q = 2;
                } else if (j0.this.f6646o >= 157.5d && j0.this.f6646o <= 202.5d) {
                    j0.this.f6648q = 3;
                } else if (j0.this.f6646o > 202.5d && j0.this.f6646o < 247.5d) {
                    j0.this.f6648q = 4;
                } else if (j0.this.f6646o >= 247.5d && j0.this.f6646o <= 292.5d) {
                    j0.this.f6648q = 5;
                } else if (j0.this.f6646o <= 292.5d || j0.this.f6646o >= 337.5d) {
                    j0.this.f6648q = 3;
                } else {
                    j0.this.f6648q = 6;
                }
                if (j0.this.f6648q != j0.this.f6647p) {
                    j0 j0Var2 = j0.this;
                    int i2 = j0Var2.f6654w * 10;
                    int i3 = j0Var2.f6653v * 10;
                    int i4 = j0.this.f6656y;
                    z.k.s(227, 19, 228, (byte) (j0Var2.C << 7), (byte) (j0Var2.B << 7), (i2 >> 24) & 255, (i2 >> 16) & 255, (i2 >> 8) & 255, i2 & 255, 0, (i3 >> 24) & 255, (i3 >> 16) & 255, (i3 >> 8) & 255, i3 & 255, j0Var2.f6648q, i4 / BatchedScanSettings.MAX_INTERVAL_SEC, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i4 / BatchedScanSettings.MAX_INTERVAL_SEC, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, j0.H[j0.this.A], 0, 0);
                    j0 j0Var3 = j0.this;
                    j0Var3.f6647p = j0Var3.f6648q;
                }
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j0 j0Var = j0.this;
            j0Var.C = 0;
            j0Var.B = 0;
            j0Var.h3();
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, DateFormat.is24HourFormat(App.c()) ? 1 : 0, (byte) (Calendar.getInstance(TimeZone.getDefault()).get(9) == 0 ? 0 : 1), 0, 0, 0);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j0.this.u3(211, u0.b.i3);
        }
    }

    public class i extends BroadcastReceiver {
        public i() {
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0046 A[Catch: Exception -> 0x0145, TryCatch #0 {Exception -> 0x0145, blocks: (B:5:0x0023, B:7:0x002e, B:11:0x003a, B:13:0x003e, B:15:0x0046, B:17:0x0050, B:18:0x0065, B:20:0x006d, B:22:0x007b, B:24:0x0081, B:25:0x0092, B:27:0x009c, B:28:0x00a5, B:30:0x00af, B:32:0x00bf, B:34:0x00c3, B:36:0x00c7, B:37:0x00cb, B:38:0x00dd, B:40:0x00e7, B:41:0x00f0, B:43:0x00fa, B:44:0x0103, B:46:0x010d, B:48:0x011c, B:51:0x0123), top: B:56:0x0023 }] */
        /* JADX WARN: Code duplicated, block: B:17:0x0050 A[Catch: Exception -> 0x0145, TryCatch #0 {Exception -> 0x0145, blocks: (B:5:0x0023, B:7:0x002e, B:11:0x003a, B:13:0x003e, B:15:0x0046, B:17:0x0050, B:18:0x0065, B:20:0x006d, B:22:0x007b, B:24:0x0081, B:25:0x0092, B:27:0x009c, B:28:0x00a5, B:30:0x00af, B:32:0x00bf, B:34:0x00c3, B:36:0x00c7, B:37:0x00cb, B:38:0x00dd, B:40:0x00e7, B:41:0x00f0, B:43:0x00fa, B:44:0x0103, B:46:0x010d, B:48:0x011c, B:51:0x0123), top: B:56:0x0023 }] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            j0 j0Var;
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
                                j0 j0Var2 = j0.this;
                                j0Var2.C = 1;
                                j0Var2.B = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                j0Var = j0.this;
                                j0Var.C = 1;
                                j0Var.B = 0;
                                if (u0.b.f17306a0 == 1) {
                                    j0Var.f6647p = 255;
                                    o1.j.b(o1.l.a(), j0.this.f6649r, 1000L);
                                }
                                z2 = true;
                                break;
                        }
                    } else {
                        j0Var = j0.this;
                        j0Var.C = 1;
                        j0Var.B = 0;
                        if (u0.b.f17306a0 == 1) {
                            j0Var.f6647p = 255;
                            o1.j.b(o1.l.a(), j0.this.f6649r, 1000L);
                        }
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!j0.this.f6652u.equals(extras.getString("NEXT_ROAD_NAME")) && extras.getString("NEXT_ROAD_NAME") != null) {
                        j0.this.f6652u = extras.getString("NEXT_ROAD_NAME");
                        j0 j0Var3 = j0.this;
                        j0Var3.g3(229, j0Var3.f6652u);
                    }
                    if (j0.this.f6654w != extras.getInt("SEG_REMAIN_DIS")) {
                        j0.this.f6654w = extras.getInt("SEG_REMAIN_DIS");
                        z2 = true;
                    }
                    if (j0.this.f6653v != extras.getInt("ROUTE_REMAIN_DIS")) {
                        j0.this.f6653v = extras.getInt("ROUTE_REMAIN_DIS");
                        j0 j0Var4 = j0.this;
                        if (j0Var4.C == 0 && j0Var4.f6653v > 100 && u0.b.f17306a0 == 1) {
                            j0Var4.C = 1;
                            j0Var4.B = 1;
                        }
                        j0Var4.f6657z = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (j0.this.f6655x != extras.getInt("CAR_DIRECTION")) {
                        j0.this.f6655x = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (j0.this.f6656y != extras.getInt("ROUTE_REMAIN_TIME")) {
                        j0.this.f6656y = extras.getInt("ROUTE_REMAIN_TIME");
                        z2 = true;
                    }
                    if (j0.this.A != extras.getInt("ICON")) {
                        j0.this.A = extras.getInt("ICON");
                        j0 j0Var5 = j0.this;
                        if (j0Var5.A >= 2) {
                            j0Var5.C = 1;
                            j0Var5.B = 1;
                        }
                        z2 = true;
                    }
                }
                if (z2) {
                    j0.this.h3();
                    o1.j.e(o1.l.a(), j0.this.E);
                    o1.j.b(o1.l.a(), j0.this.E, 20000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ i(j0 j0Var, a aVar) {
            this();
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = b3();
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                iArr[3] = 48;
                int i6 = w0.d.f17798j;
                if ((i6 & 255) % 6 != 0 || (i6 & 255) == 0) {
                    iArr[4] = ((i6 & 255) % 6) + 48;
                } else {
                    iArr[4] = 54;
                }
                int i7 = w0.d.f17797i;
                iArr[6] = i7 / 10000 == 0 ? (i7 / 10000) + 32 : (i7 / 10000) + 48;
                iArr[7] = ((i7 % 10000) / 1000) + 48;
                iArr[8] = ((i7 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i7 % 100) / 10) + 48;
            } else {
                iArr[3] = 48;
                int i8 = w0.d.f17798j;
                if ((i8 & 255) % 6 != 0 || (i8 & 255) == 0) {
                    iArr[4] = ((i8 & 255) % 6) + 48;
                } else {
                    iArr[4] = 54;
                }
                int i9 = w0.d.f17797i;
                iArr[6] = i9 / 10000 == 0 ? (i9 / 10000) + 32 : (i9 / 10000) + 48;
                iArr[7] = (i9 % 10000) / 1000 == 0 ? ((i9 % 10000) / 1000) + 32 : ((i9 % 10000) / 1000) + 48;
                iArr[8] = ((i9 % 1000) / 100) + 48;
                iArr[9] = ((i9 % 100) / 10) + 48;
                iArr[10] = (i9 % 10) + 48;
            }
        } else if (i4 != 4) {
            if (i4 != 6) {
                if ((i4 == 8 || i4 == 9) && u0.b.s3 != 0) {
                    int i10 = u0.b.r3;
                    iArr[3] = ((i10 / 100) % 10) + 48;
                    iArr[4] = ((i10 / 10) % 10) + 48;
                    iArr[5] = (i10 % 10) + 48;
                    iArr[6] = 32;
                    int i11 = u0.b.t3;
                    iArr[7] = ((i11 / 60) / 10) + 48;
                    iArr[8] = ((i11 / 60) % 10) + 48;
                    iArr[9] = ((i11 % 60) / 10) + 48;
                    iArr[10] = ((i11 % 60) % 10) + 48;
                }
            } else if (d1.d.f1570c == 1) {
                int i12 = d1.d.f1572e;
                if (i12 / 10 > 0) {
                    iArr[3] = (i12 / 10) + 48;
                }
                iArr[4] = (i12 % 10) + 48;
                iArr[5] = 45;
                int i13 = d1.d.f1571d / 100;
                int i14 = i13 / 10000;
                if (i14 > 0) {
                    iArr[6] = i14 + 48;
                }
                iArr[7] = ((i13 % 10000) / 1000) + 48;
                iArr[8] = ((i13 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i13 % 100) / 10) + 48;
                iArr[11] = ((i13 % 10) / 1) + 48;
            }
        } else if (o0.e.C != 0) {
            int i15 = o0.e.B;
            iArr[3] = ((i15 / 100) % 10) + 48;
            iArr[4] = ((i15 / 10) % 10) + 48;
            iArr[5] = (i15 % 10) + 48;
            iArr[6] = 32;
            int i16 = o0.e.f16794r;
            iArr[7] = ((i16 / 60) / 10) + 48;
            iArr[8] = ((i16 / 60) % 10) + 48;
            iArr[9] = ((i16 % 60) / 10) + 48;
            iArr[10] = ((i16 % 60) % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i17 = i2 + 1;
            iArr2[i17] = (byte) iArr[i2];
            i2 = i17;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:5:0x000e  */
    public static byte b3() {
        byte b2 = 3;
        switch (u0.b.D) {
            case 0:
                b2 = 9;
                break;
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 - 65536 == 0) {
                    b2 = 1;
                } else if (1 == i2 - 65536) {
                    b2 = 2;
                } else if (2 != i2 - 65536) {
                    if (i2 + 0 != 0) {
                        b2 = 1 != i2 - 0 ? (byte) 0 : (byte) 5;
                    } else {
                        b2 = 4;
                    }
                }
                break;
            case 2:
            case 3:
                b2 = 10;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    b2 = 7;
                } else if (i3 == 2) {
                    b2 = 14;
                } else if (i3 != 3) {
                    b2 = 0;
                } else {
                    b2 = 13;
                }
                break;
            case 5:
                b2 = DhcpPacket.DHCP_HOST_NAME;
                break;
            case 6:
                b2 = 8;
                break;
            case 7:
                b2 = 11;
                break;
            case 8:
            case 10:
                b2 = 13;
                break;
            case 9:
            default:
                b2 = 0;
                break;
        }
        if (u0.b.f17347o == 1) {
            return (byte) 16;
        }
        return b2;
    }

    public static int d3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 9;
        }
        if (i2 == 2) {
            return 6;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 0;
        }
        return 3;
    }

    public static void v3(byte[] bArr) {
        if (qt.k0() || bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = bArr[0];
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 & 255);
        z.k.q(bArr);
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
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        e3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    e3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        e3(2);
                    }
                } else if (nt.f8645g[11] == 0) {
                    e3(2);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        e3(4);
                    }
                } else if (nt.f8645g[13] == 0) {
                    e3(4);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        e3(5);
                    }
                } else if (nt.f8645g[65] == 0) {
                    e3(5);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        e3(6);
                    }
                } else if (nt.f8645g[16] == 0) {
                    e3(6);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        e3(7);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    e3(7);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    e3(12);
                } else {
                    e3(11);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    e3(14);
                } else {
                    e3(13);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    e3(16);
                } else {
                    e3(15);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        a aVar = null;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        } else {
            this.f7886a.f8306a = null;
        }
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
            if (a.f.w() == 1080) {
                this.f7886a.f8314i = 1;
            }
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
        qt.z(this.F);
        u0.c.f17388o.a(this.G, 1);
        if (nt.a()) {
            qt.z(this.f6641j);
            w0.e.f17815a.a(this.f6641j, 1);
            w0.e.f17819e.a(this.f6641j, 1);
            u0.c.f17386m.a(this.f6644m, 1);
        }
        o1.h.f16865a.a(this.f6649r, 1);
        this.f6650s = new i(this, aVar);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
        App.c().registerReceiver(this.f6650s, intentFilter);
        h3();
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
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 18) {
            int i9 = bArr[i2 + 4] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i9 >> 6) & 1);
                qt.y0(2, (i9 >> 7) & 1);
            } else {
                qt.y0(1, (i9 >> 7) & 1);
                qt.y0(2, (i9 >> 6) & 1);
            }
            qt.y0(3, (i9 >> 5) & 1);
            qt.y0(4, (i9 >> 4) & 1);
            qt.y0(5, (i9 >> 3) & 1);
            return;
        }
        if (b2 == 49) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 6];
            byte b7 = bArr[i2 + 7];
            int i10 = (b3 >> 6) & 1;
            qt.y0(10, i10);
            qt.y0(13, (b3 >> 3) & 1);
            qt.y0(62, (b3 >> 2) & 1);
            qt.y0(11, (b4 >> 6) & 1);
            qt.y0(12, (b4 >> 4) & 1);
            qt.y0(62, (b4 >> 2) & 1);
            qt.y0(16, (b5 >> 5) & 1);
            qt.y0(65, (b5 >> 4) & 1);
            int i11 = b6 & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i11 == 1) {
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 0;
                i8 = 1;
            } else if (i11 == 2) {
                i5 = 0;
                i6 = 0;
                i7 = 0;
                i8 = 0;
                i4 = 1;
            } else if (i11 != 3) {
                if (i11 == 5) {
                    i4 = 0;
                    i5 = 0;
                    i8 = 0;
                    i6 = 1;
                } else if (i11 != 6) {
                    switch (i11) {
                        case 11:
                            i4 = 0;
                            i6 = 0;
                            i7 = 0;
                            i8 = 0;
                            i5 = 1;
                            break;
                        case 12:
                            i4 = 0;
                            i6 = 0;
                            i8 = 0;
                            i5 = 1;
                            i7 = 1;
                            break;
                        case 13:
                            i4 = 0;
                            i7 = 0;
                            i8 = 0;
                            i5 = 1;
                            i6 = 1;
                            break;
                        case 14:
                            i4 = 0;
                            i8 = 0;
                            i5 = 1;
                            i6 = 1;
                            break;
                        default:
                            i4 = 0;
                            i5 = 0;
                            i6 = 0;
                            i7 = 0;
                            i8 = 0;
                            break;
                    }
                } else {
                    i4 = 0;
                    i5 = 0;
                    i7 = 0;
                    i8 = 0;
                    i6 = 1;
                }
                i7 = i6;
            } else {
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i8 = 0;
                i7 = 1;
            }
            qt.y0(15, i4);
            qt.y0(18, i5);
            qt.y0(19, i6);
            qt.y0(20, i7);
            qt.y0(49, i8);
            qt.y0(77, i11);
            qt.y0(21, b7 & 255);
            if (i10 != 1) {
                qt.y0(27, -1);
                qt.y0(28, -1);
                return;
            }
            int i12 = i2 + 8;
            byte b8 = bArr[i12];
            int i13 = i2 + 9;
            byte b9 = bArr[i13];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b8 = bArr[i13];
                b9 = bArr[i12];
            }
            int i14 = b8 & 255;
            if (i14 == 254) {
                qt.y0(27, -2);
            } else if (i14 != 255) {
                qt.y0(27, i14);
            } else {
                qt.y0(27, -3);
            }
            int i15 = b9 & 255;
            if (i15 == 254) {
                qt.y0(28, -2);
                return;
            } else if (i15 != 255) {
                qt.y0(28, i15);
                return;
            } else {
                qt.y0(28, -3);
                return;
            }
        }
        if (b2 == 65) {
            u0.d.R2(d3(bArr[i2 + 2] & 255));
            u0.d.S2(d3(bArr[i2 + 3] & 255));
            u0.d.T2(d3(bArr[i2 + 4] & 255));
            u0.d.U2(d3(bArr[i2 + 5] & 255));
            u0.d.D2(d3(bArr[i2 + 6] & 255));
            u0.d.E2(d3(bArr[i2 + 7] & 255));
            u0.d.F2(d3(bArr[i2 + 8] & 255));
            u0.d.G2(d3(bArr[i2 + 9] & 255));
            return;
        }
        if (b2 == 114) {
            if (nt.a()) {
                this.f6635d = bArr[i2 + 4] & 255;
                int i16 = 0;
                while (true) {
                    iArr = this.f6638g;
                    if (i16 >= iArr.length) {
                        break;
                    }
                    int i17 = this.f6635d;
                    if (i17 == iArr[i16][0]) {
                        if (i17 == 0) {
                            break;
                        }
                        this.f6634c = i16;
                        break;
                    }
                    i16++;
                }
                if (nt.f8637c == 1) {
                    int i18 = this.f6635d;
                    if (i18 == 5) {
                        l0.b0.l0(13, 0);
                        l0.b0.l0(13, 1);
                    } else if (i18 != 6) {
                        if (i18 == 13) {
                            l0.b0.l0(4, 0);
                            l0.b0.l0(4, 1);
                        } else if (i18 == 14) {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                        } else if (i18 == 0) {
                            int i19 = this.f6634c;
                            if (i19 < iArr.length && i19 != 255) {
                                l0.b0.l0(iArr[i19][1], 1);
                            }
                            this.f6634c = 255;
                        } else if (i16 < iArr.length) {
                            l0.b0.l0(iArr[i16][1], 0);
                        }
                    } else if (h0.c.E != 4) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    }
                } else if (this.f6635d == 0) {
                    int i20 = this.f6634c;
                    if (i20 < iArr.length && i20 != 255) {
                        l0.b0.l0(iArr[i20][1], 1);
                    }
                    this.f6634c = 255;
                } else if (i16 < iArr.length) {
                    l0.b0.l0(iArr[i16][1], 0);
                }
            }
            qt.i(bArr[i2 + 7] & 255, bArr[i2 + 6] & 255, true, 540);
            return;
        }
        if (b2 != 116) {
            return;
        }
        int i21 = bArr[i2 + 2] & 255;
        this.f6637f = i21;
        if (i21 != 0) {
            this.f6637f = i21 | 128;
        }
        int i22 = 0;
        while (true) {
            iArr2 = this.f6638g;
            if (i22 >= iArr2.length) {
                break;
            }
            int i23 = this.f6637f;
            if (i23 == iArr2[i22][0]) {
                if (i23 == 0) {
                    break;
                }
                this.f6636e = i22;
                break;
            }
            i22++;
        }
        byte b10 = bArr[i2 + 3];
        int i24 = this.f6637f;
        if (i24 == 1) {
            int i25 = this.f6639h;
            if (b10 != i25) {
                if (b10 > i25) {
                    for (int i26 = 0; i26 < b10 - this.f6639h; i26++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b10 < i25) {
                    for (int i27 = 0; i27 < this.f6639h - b10; i27++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f6639h = b10;
                return;
            }
            return;
        }
        if (i24 != 2) {
            if (i24 != 0) {
                if (i22 < iArr2.length) {
                    l0.b0.l0(iArr2[i22][1], 0);
                    return;
                }
                return;
            } else {
                int i28 = this.f6636e;
                if (i28 < iArr2.length && i28 != 255) {
                    l0.b0.l0(iArr2[i28][1], 1);
                }
                this.f6636e = 255;
                return;
            }
        }
        int i29 = this.f6640i;
        if (b10 != i29) {
            if (b10 > i29) {
                for (int i30 = 0; i30 < b10 - this.f6640i; i30++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
            } else if (b10 < i29) {
                for (int i31 = 0; i31 < this.f6640i - b10; i31++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
            }
            this.f6640i = b10;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.F);
        u0.c.f17388o.d(this.G);
        qt.q0(this.f6641j);
        w0.e.f17815a.d(this.f6641j);
        w0.e.f17819e.d(this.f6641j);
        u0.c.f17386m.d(this.f6644m);
        l0.b0.p0(this.f6645n);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 != 1005) {
                return;
            }
            z.k.s(227, 2, -3, 1, 0);
        } else {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            if (iArr[1] == 1) {
                v3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[0], 1, 0});
            } else if (iArr[1] == 0) {
                v3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[0], 0, 0});
            }
            if (iArr[1] == 1) {
                z.k.s(227, 2, 61, iArr[0], 1);
            } else if (iArr[1] == 0) {
                z.k.s(227, 2, 61, iArr[0], 0);
            }
        }
    }

    public void c3() {
        int i2;
        int[] iArr = new int[15];
        this.f6633b = 4;
        int i3 = 0;
        for (int i4 = 0; i4 < 15; i4++) {
            iArr[i4] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = b3();
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[3] = 77;
            iArr[4] = 85;
            iArr[5] = 84;
            iArr[6] = 69;
        } else {
            iArr[3] = 86;
            iArr[4] = 79;
            iArr[5] = 76;
            if (i2 >= 10) {
                iArr[7] = (i2 / 10) + 48;
            }
            iArr[8] = (i2 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i3 < 15) {
            int i5 = i3 + 1;
            iArr2[i5] = (byte) iArr[i3];
            i3 = i5;
        }
        z.k.s(iArr2);
    }

    public final void e3(int i2) {
        byte b2 = (byte) i2;
        v3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, b2, 1, 0});
        v3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, b2, 0, 0});
        z.k.s(227, 2, 61, i2, 1);
        z.k.s(227, 2, 61, i2, 0);
    }

    public final int f3(int i2) {
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

    public final void g3(int i2, String str) {
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
            iArr[i3 + 3] = bytes[i3];
        }
        z.k.s(iArr);
    }

    public final void h3() {
        int i2 = this.A;
        if (i2 < 0 || i2 >= H.length) {
            return;
        }
        int i3 = this.B;
        if (i3 == 0 && this.f6655x == 0) {
            return;
        }
        int i4 = this.f6654w * 10;
        int i5 = this.f6653v * 10;
        int i6 = this.f6656y;
        z.k.s(227, 19, 228, (byte) (this.C << 7), (byte) (i3 << 7), (i4 >> 24) & 255, (i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255, 0, (i5 >> 24) & 255, (i5 >> 16) & 255, (i5 >> 8) & 255, i5 & 255, f3(this.f6655x), i6 / BatchedScanSettings.MAX_INTERVAL_SEC, (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i6 / BatchedScanSettings.MAX_INTERVAL_SEC, (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, H[this.A], 0, 0);
    }

    public final void u3(int i2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[19];
        iArr[0] = 227;
        iArr[1] = 16;
        iArr[2] = i2;
        int length = str.length() < 7 ? str.length() : 7;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i4 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }
}
