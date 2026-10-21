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
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.util.Calendar;
import java.util.TimeZone;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class p2 extends lt implements o1.q {
    public static int[] M = {0, 0, 7, 3, 8, 2, 6, 4, 6, 1, 9, 10, 12, 9, 9, 14, 9, 11, 13, 5, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9042c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9043d;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public i f9059t;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9044e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f9045f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, -1}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{11, 2}, new int[]{12, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{22, 25}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f9046g = {new int[]{1, 34}, new int[]{2, 35}, new int[]{3, 32}, new int[]{4, 33}, new int[]{5, 3}, new int[]{6, 4}, new int[]{7, 32}, new int[]{8, 33}, new int[]{9, 29}, new int[]{10, 6}, new int[]{11, 5}, new int[]{12, 1}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f9047h = new byte[1024];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9048i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f9049j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f9050k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f9051l = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f9052m = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f9053n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f9054o = new a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f9055p = 0.0f;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f9056q = 255;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f9057r = 255;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f9058s = new b();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f9060u = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f9061v = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f9062w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f9063x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f9064y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f9065z = 0;
    public int A = 0;
    public int B = 0;
    public int C = 0;
    public int D = 1;
    public int E = 255;
    public final Runnable F = new c();
    public int G = 0;
    public Runnable H = new d();
    public Runnable I = new e();
    public Runnable J = new f();
    public Runnable K = new g();
    public Runnable L = new h();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p2.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p2 p2Var = p2.this;
            if (p2Var.C == 0) {
                p2Var.f9055p = u0.b.f17359s0;
                if ((p2.this.f9055p <= 22.5d && p2.this.f9055p >= 0.0f) || (p2.this.f9055p >= 337.5d && p2.this.f9055p <= 360.0f)) {
                    p2.this.f9057r = 7;
                } else if (p2.this.f9055p > 22.5d && p2.this.f9055p < 67.5d) {
                    p2.this.f9057r = 8;
                } else if (p2.this.f9055p >= 67.5d && p2.this.f9055p <= 112.5d) {
                    p2.this.f9057r = 1;
                } else if (p2.this.f9055p > 112.5d && p2.this.f9055p < 157.5d) {
                    p2.this.f9057r = 2;
                } else if (p2.this.f9055p >= 157.5d && p2.this.f9055p <= 202.5d) {
                    p2.this.f9057r = 3;
                } else if (p2.this.f9055p > 202.5d && p2.this.f9055p < 247.5d) {
                    p2.this.f9057r = 4;
                } else if (p2.this.f9055p >= 247.5d && p2.this.f9055p <= 292.5d) {
                    p2.this.f9057r = 5;
                } else if (p2.this.f9055p <= 292.5d || p2.this.f9055p >= 337.5d) {
                    p2.this.f9057r = 3;
                } else {
                    p2.this.f9057r = 6;
                }
                if (p2.this.f9057r != p2.this.f9056q) {
                    p2 p2Var2 = p2.this;
                    int i2 = p2Var2.f9063x * 10;
                    int i3 = p2Var2.f9062w * 10;
                    int i4 = p2.this.f9065z;
                    z.k.s(227, 19, 228, (byte) (p2Var2.D << 7), (byte) (p2Var2.C << 7), (i2 >> 24) & 255, (i2 >> 16) & 255, (i2 >> 8) & 255, i2 & 255, 0, (i3 >> 24) & 255, (i3 >> 16) & 255, (i3 >> 8) & 255, i3 & 255, p2Var2.f9057r, i4 / BatchedScanSettings.MAX_INTERVAL_SEC, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i4 / BatchedScanSettings.MAX_INTERVAL_SEC, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, p2.M[p2.this.B], 0, 0);
                    p2 p2Var3 = p2.this;
                    p2Var3.f9056q = p2Var3.f9057r;
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p2 p2Var = p2.this;
            p2Var.D = 0;
            p2Var.C = 0;
            p2Var.g3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(p2.this.I);
            p2 p2Var = p2.this;
            p2Var.G = 5;
            p2Var.f9053n = 0;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p2 p2Var = p2.this;
            int i2 = p2Var.G - 1;
            p2Var.G = i2;
            if (i2 <= 0) {
                l0.b0.p0(p2Var.I);
                p2.this.G = 5;
            }
            if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8637c;
                if (i3 == 0) {
                    z.k.s(227, 2, 36, 162, 4);
                    return;
                }
                if (i3 == 2) {
                    z.k.s(227, 2, 36, 161, 4);
                    return;
                }
                switch (i3) {
                    case 6:
                        z.k.s(227, 2, 36, 164, 4);
                        break;
                    case 7:
                        z.k.s(227, 2, 36, 163, 4);
                        break;
                    case 8:
                    case 10:
                        z.k.s(227, 2, 36, 165, 4);
                        break;
                    case 9:
                        z.k.s(227, 2, 36, 166, 4);
                        break;
                    case 11:
                        z.k.s(227, 2, 36, 165, 4);
                        break;
                    case 12:
                        z.k.s(227, 2, 36, 167, 4);
                        break;
                    default:
                        switch (i3) {
                            case 14:
                                z.k.s(227, 2, 36, 5, 4);
                                break;
                            case 15:
                                z.k.s(227, 2, 36, 11, 4);
                                break;
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 32:
                                z.k.s(227, 2, 36, 15, 4);
                                break;
                            case 23:
                            case 24:
                                z.k.s(227, 2, 36, 16, 4);
                                break;
                            case 25:
                            case 26:
                                z.k.s(227, 2, 36, 17, 4);
                                break;
                            case 27:
                                z.k.s(227, 2, 36, 19, 4);
                                break;
                            case 28:
                            case 29:
                                z.k.s(227, 2, 36, 20, 4);
                                break;
                            case 30:
                            case 31:
                            case 38:
                            case 39:
                                z.k.s(227, 2, 36, 21, 4);
                                break;
                            case 33:
                                z.k.s(227, 2, 36, 22, 4);
                                break;
                            case 34:
                                z.k.s(227, 2, 36, 24, 4);
                                break;
                            case 35:
                                z.k.s(227, 2, 36, 23, 4);
                                break;
                            case 36:
                                z.k.s(227, 2, 36, 25, 4);
                                break;
                            case 37:
                                z.k.s(227, 2, 36, 64, 4);
                                break;
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                                z.k.s(227, 2, 36, 26, 4);
                                break;
                            case 44:
                            case 45:
                                z.k.s(227, 2, 36, 27, 4);
                                break;
                            case 46:
                                z.k.s(227, 2, 36, 28, 4);
                                break;
                            case 47:
                                z.k.s(227, 2, 36, 29, 4);
                                break;
                            case 48:
                                z.k.s(227, 2, 36, 30, 4);
                                break;
                            case 49:
                            case 50:
                                p2.x3(new byte[]{90, -91, 2, 36, 18, 4, 0});
                                break;
                        }
                        break;
                }
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p2.this.w3(212, u0.b.j3);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p2.this.v3(211, u0.b.i3);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, DateFormat.is24HourFormat(App.c()) ? 1 : 0, (byte) (Calendar.getInstance(TimeZone.getDefault()).get(9) == 0 ? 0 : 1), 0, 0, 0);
        }
    }

    public class i extends BroadcastReceiver {
        public i() {
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0046 A[Catch: Exception -> 0x0145, TryCatch #0 {Exception -> 0x0145, blocks: (B:5:0x0023, B:7:0x002e, B:11:0x003a, B:13:0x003e, B:15:0x0046, B:17:0x0050, B:18:0x0065, B:20:0x006d, B:22:0x007b, B:24:0x0081, B:25:0x0092, B:27:0x009c, B:28:0x00a5, B:30:0x00af, B:32:0x00bf, B:34:0x00c3, B:36:0x00c7, B:37:0x00cb, B:38:0x00dd, B:40:0x00e7, B:41:0x00f0, B:43:0x00fa, B:44:0x0103, B:46:0x010d, B:48:0x011c, B:51:0x0123), top: B:56:0x0023 }] */
        /* JADX WARN: Code duplicated, block: B:17:0x0050 A[Catch: Exception -> 0x0145, TryCatch #0 {Exception -> 0x0145, blocks: (B:5:0x0023, B:7:0x002e, B:11:0x003a, B:13:0x003e, B:15:0x0046, B:17:0x0050, B:18:0x0065, B:20:0x006d, B:22:0x007b, B:24:0x0081, B:25:0x0092, B:27:0x009c, B:28:0x00a5, B:30:0x00af, B:32:0x00bf, B:34:0x00c3, B:36:0x00c7, B:37:0x00cb, B:38:0x00dd, B:40:0x00e7, B:41:0x00f0, B:43:0x00fa, B:44:0x0103, B:46:0x010d, B:48:0x011c, B:51:0x0123), top: B:56:0x0023 }] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            p2 p2Var;
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
                                p2 p2Var2 = p2.this;
                                p2Var2.D = 1;
                                p2Var2.C = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                p2Var = p2.this;
                                p2Var.D = 1;
                                p2Var.C = 0;
                                if (u0.b.f17306a0 == 1) {
                                    p2Var.f9056q = 255;
                                    o1.j.b(o1.l.a(), p2.this.f9058s, 1000L);
                                }
                                z2 = true;
                                break;
                        }
                    } else {
                        p2Var = p2.this;
                        p2Var.D = 1;
                        p2Var.C = 0;
                        if (u0.b.f17306a0 == 1) {
                            p2Var.f9056q = 255;
                            o1.j.b(o1.l.a(), p2.this.f9058s, 1000L);
                        }
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!p2.this.f9061v.equals(extras.getString("NEXT_ROAD_NAME")) && extras.getString("NEXT_ROAD_NAME") != null) {
                        p2.this.f9061v = extras.getString("NEXT_ROAD_NAME");
                        p2 p2Var3 = p2.this;
                        p2Var3.f3(229, p2Var3.f9061v);
                    }
                    if (p2.this.f9063x != extras.getInt("SEG_REMAIN_DIS")) {
                        p2.this.f9063x = extras.getInt("SEG_REMAIN_DIS");
                        z2 = true;
                    }
                    if (p2.this.f9062w != extras.getInt("ROUTE_REMAIN_DIS")) {
                        p2.this.f9062w = extras.getInt("ROUTE_REMAIN_DIS");
                        p2 p2Var4 = p2.this;
                        if (p2Var4.D == 0 && p2Var4.f9062w > 100 && u0.b.f17306a0 == 1) {
                            p2Var4.D = 1;
                            p2Var4.C = 1;
                        }
                        p2Var4.A = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (p2.this.f9064y != extras.getInt("CAR_DIRECTION")) {
                        p2.this.f9064y = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (p2.this.f9065z != extras.getInt("ROUTE_REMAIN_TIME")) {
                        p2.this.f9065z = extras.getInt("ROUTE_REMAIN_TIME");
                        z2 = true;
                    }
                    if (p2.this.B != extras.getInt("ICON")) {
                        p2.this.B = extras.getInt("ICON");
                        p2 p2Var5 = p2.this;
                        if (p2Var5.B >= 2) {
                            p2Var5.D = 1;
                            p2Var5.C = 1;
                        }
                        z2 = true;
                    }
                }
                if (z2) {
                    p2.this.g3();
                    o1.j.e(o1.l.a(), p2.this.F);
                    o1.j.b(o1.l.a(), p2.this.F, 20000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ i(p2 p2Var, a aVar) {
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
                if (i6 % 6 != 0 || i6 == 0) {
                    iArr[4] = ((i6 & 255) % 6) + 48;
                } else {
                    iArr[4] = 54;
                }
                if (iArr[4] == 0) {
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
                if (i8 % 6 != 0 || i8 == 0) {
                    iArr[4] = ((i8 & 255) % 6) + 48;
                } else {
                    iArr[4] = 54;
                }
                if (iArr[4] == 0) {
                    iArr[4] = 54;
                }
                int i9 = w0.d.f17797i;
                if (i9 >= 1000) {
                    iArr[6] = (i9 / 1000) + 48;
                    iArr[7] = ((i9 % 1000) / 100) + 48;
                    iArr[8] = ((i9 % 100) / 10) + 48;
                    iArr[9] = (i9 % 10) + 48;
                } else {
                    iArr[6] = (i9 / 100) + 48;
                    iArr[7] = ((i9 % 100) / 10) + 48;
                    iArr[8] = (i9 % 10) + 48;
                }
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
    /* JADX WARN: Code duplicated, block: B:32:0x004b  */
    /* JADX WARN: Code duplicated, block: B:5:0x0010  */
    public static byte b3() {
        byte b2 = 3;
        switch (u0.b.D) {
            case 0:
            case 9:
            default:
                b2 = 9;
                break;
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 - 65536 == 0) {
                    b2 = 1;
                } else if (1 == i2 - 65536) {
                    b2 = 2;
                } else if (2 != i2 - 65536) {
                    if (i2 + 0 == 0) {
                        b2 = 4;
                    } else if (1 != i2 - 0) {
                        b2 = 0;
                    } else {
                        b2 = 5;
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
        }
        if (u0.b.f17347o == 1) {
            return (byte) 16;
        }
        return b2;
    }

    public static void x3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
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
        int i2 = iArr[0];
        if (i2 == 41) {
            if (iArr[1] != 0) {
                d3(13);
                return;
            }
            d3(14);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                d3(15);
                return;
            } else {
                d3(16);
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] == 1) {
                z.k.s(227, 4, 111, 69, 0, 255, 255);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, 4, 111, 69, 1, 255, 255);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, 4, 111, 70, 0, 255, 255);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, 4, 111, 70, 1, 255, 255);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, 4, 111, 71, 0, 255, 255);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, 4, 111, 71, 1, 255, 255);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, 4, 111, 72, 0, 255, 255);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, 4, 111, 72, 1, 255, 255);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, 4, 111, 75, 0, 255, 255);
                return;
            }
            if (iArr[1] == 10) {
                z.k.s(227, 4, 111, 75, 1, 255, 255);
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, 4, 111, 73, 0, 255, 255);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, 4, 111, 73, 1, 255, 255);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        d3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    d3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        d3(2);
                    }
                } else if (nt.f8645g[11] == 0) {
                    d3(2);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        d3(4);
                    }
                } else if (nt.f8645g[13] == 0) {
                    d3(4);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        d3(5);
                    }
                } else if (nt.f8645g[65] == 0) {
                    d3(5);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        d3(6);
                    }
                } else if (nt.f8645g[16] == 0) {
                    d3(6);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        d3(7);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    d3(7);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    d3(12);
                } else {
                    d3(11);
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x007c  */
    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        a aVar = null;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68};
        u0.c.f17388o.a(this.K, 1);
        u0.c.f17389p.a(this.J, 1);
        qt.z(this.L);
        this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        if (nt.a()) {
            qt.z(this.f9054o);
            w0.e.f17815a.a(this.f9054o, 1);
            w0.e.f17819e.a(this.f9054o, 1);
            u0.c.f17386m.a(this.H, 1);
        }
        int i2 = nt.f8637c;
        if (i2 != 6 && i2 != 7 && i2 != 35 && i2 != 36) {
            if (i2 != 49 && i2 != 50) {
                switch (i2) {
                    case 2:
                    case 9:
                    case 13:
                    case 17:
                    case 24:
                    case 26:
                    case 29:
                    case 31:
                    case 39:
                    case 41:
                    case 43:
                    case 45:
                        this.f7886a.f8313h = 2;
                        break;
                    default:
                        this.f7886a.f8313h = 0;
                        break;
                }
            } else {
                this.f7886a.f8314i = 1;
            }
        } else {
            this.f7886a.f8313h = 2;
        }
        o1.h.f16865a.a(this.f9058s, 1);
        this.f9059t = new i(this, aVar);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
        App.c().registerReceiver(this.f9059t, intentFilter);
        g3();
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        byte b2;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        byte b3 = bArr[i2 + 1];
        if (b3 == -90) {
            if (nt.a()) {
                qt.y0(102, bArr[i2 + 2]);
                qt.y0(103, bArr[i2 + 3]);
                qt.y0(104, bArr[i2 + 4]);
                qt.y0(105, bArr[i2 + 5]);
                qt.y0(106, bArr[i2 + 6]);
                qt.y0(107, bArr[i2 + 7]);
                int i11 = i2 + 8;
                qt.y0(108, (bArr[i11] >> 4) & 1);
                qt.y0(109, (bArr[i11] >> 3) & 1);
                qt.y0(110, bArr[i11] & 7);
                qt.y0(111, bArr[i2 + 9]);
                return;
            }
            return;
        }
        if (b3 == -32) {
            c3(bArr[i2 + 2] & 255);
            return;
        }
        if (b3 == -24) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 6];
            byte b6 = bArr[i2 + 7];
            byte b7 = bArr[i2 + 8];
            qt.y0(98, b4 & 255);
            qt.y0(99, b5 & 255);
            qt.y0(100, b6 & 255);
            qt.y0(101, b7 & 255);
            return;
        }
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 18) {
            int i12 = bArr[i2 + 4] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i12 >> 6) & 1);
                qt.y0(2, (i12 >> 7) & 1);
            } else {
                qt.y0(1, (i12 >> 7) & 1);
                qt.y0(2, (i12 >> 6) & 1);
            }
            qt.y0(3, (i12 >> 5) & 1);
            qt.y0(4, (i12 >> 4) & 1);
            qt.y0(5, (i12 >> 3) & 1);
            return;
        }
        if (b3 == 26) {
            int i13 = bArr[i2 + 3] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i13 >> 6) & 1);
                qt.y0(2, (i13 >> 7) & 1);
            } else {
                qt.y0(1, (i13 >> 7) & 1);
                qt.y0(2, (i13 >> 6) & 1);
            }
            qt.y0(3, (i13 >> 5) & 1);
            qt.y0(4, (i13 >> 4) & 1);
            qt.y0(5, (i13 >> 3) & 1);
            int i14 = i2 + 4;
            l0.c0.a((bArr[i14] >> 0) & 1, (bArr[i14] >> 1) & 1, 0);
            return;
        }
        if (b3 == 65) {
            if (nt.a()) {
                u0.d.R2(l0.c0.s1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.h0.p(bArr[i2 + 3] & 255));
                u0.d.T2(l0.h0.p(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.s1(bArr[i2 + 5] & 255));
                int i15 = i2 + 6;
                int i16 = bArr[i15] & 255;
                int i17 = i2 + 7;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 8;
                int i20 = bArr[i19] & 255;
                int i21 = i2 + 9;
                int i22 = bArr[i21] & 255;
                if ((i16 == 0 || i16 == 255) && ((i18 == 0 || i18 == 255) && ((i20 == 0 || i20 == 255) && (i22 == 0 || i22 == 255)))) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i16 || l0.c0.f13014h != i18 || l0.c0.f13015i != i20 || l0.c0.f13016j != i22) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i16;
                l0.c0.f13014h = i18;
                l0.c0.f13015i = i20;
                l0.c0.f13016j = i22;
                u0.d.D2(l0.c0.s1(bArr[i15] & 255));
                u0.d.E2(l0.h0.p(bArr[i17] & 255));
                u0.d.F2(l0.h0.p(bArr[i19] & 255));
                u0.d.G2(l0.c0.s1(bArr[i21] & 255));
                return;
            }
            return;
        }
        if (b3 == 97) {
            qt.y0(112, (bArr[i2 + 4] >> 2) & 1);
            return;
        }
        if (b3 == 114) {
            if (nt.a()) {
                qt.i(bArr[i2 + 7] & 255, bArr[i2 + 6] & 255, true, 500);
                this.f9043d = bArr[i2 + 4] & 255;
                int i23 = 0;
                while (true) {
                    iArr = this.f9045f;
                    if (i23 >= iArr.length) {
                        break;
                    }
                    int i24 = this.f9043d;
                    if (i24 == iArr[i23][0]) {
                        if (i24 == 0) {
                            break;
                        }
                        this.f9041b = i23;
                        break;
                    }
                    i23++;
                }
                int i25 = this.f9043d;
                if (i25 == 0) {
                    int i26 = this.f9041b;
                    if (i26 < iArr.length) {
                        i4 = 255;
                        if (i26 != 255) {
                            l0.b0.l0(iArr[i26][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f9041b = i4;
                    return;
                }
                if (i23 < iArr.length) {
                    if (i25 != 5) {
                        if (i25 != 15) {
                            l0.b0.l0(iArr[i23][1], 0);
                            return;
                        }
                        int i27 = nt.f8637c;
                        if (i27 != 6 && i27 != 7) {
                            switch (i27) {
                                case 2:
                                case 11:
                                case 24:
                                case 26:
                                case 29:
                                case 31:
                                case 36:
                                case 39:
                                case 41:
                                case 43:
                                case 45:
                                    break;
                                default:
                                    l0.b0.l0(29, 0);
                                    l0.b0.l0(29, 1);
                                    break;
                            }
                            return;
                        }
                        z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 1, 0);
                        return;
                    }
                    int i28 = h0.c.E;
                    if (i28 == 3 || i28 == 4 || i28 == 5) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    } else if (u0.i.l3().r3()) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    } else {
                        if (o1.u.W()) {
                            return;
                        }
                        o1.u.f(a.b.f23k);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (b3 == 116) {
            if (nt.a()) {
                this.f9044e = bArr[i2 + 2] & 255;
                int i29 = 0;
                while (true) {
                    iArr2 = this.f9046g;
                    if (i29 >= iArr2.length) {
                        break;
                    }
                    int i30 = this.f9044e;
                    if (i30 == iArr2[i29][0]) {
                        if (i30 == 0) {
                            break;
                        }
                        this.f9042c = i29;
                        break;
                    }
                    i29++;
                }
                if (this.f9044e == 0) {
                    int i31 = this.f9042c;
                    if (i31 < iArr2.length) {
                        i5 = 255;
                        if (i31 != 255) {
                            l0.b0.l0(iArr2[i31][1], 1);
                        }
                    } else {
                        i5 = 255;
                    }
                    this.f9042c = i5;
                } else if (i29 < iArr2.length) {
                    l0.b0.l0(iArr2[i29][1], 0);
                }
                if (this.f9044e != 0 || (b2 = bArr[i2 + 3]) == (i6 = this.f9053n)) {
                    return;
                }
                if (b2 > i6) {
                    for (int i32 = 0; i32 < b2 - this.f9053n; i32++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b2 < i6) {
                    for (int i33 = 0; i33 < this.f9053n - b2; i33++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f9053n = b2;
                return;
            }
            return;
        }
        if (b3 != 49) {
            if (b3 != 50) {
                return;
            }
            qt.y0(1032, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
            return;
        }
        int i34 = nt.f8633a;
        if (i34 == 3211365 || i34 == 3276901) {
            return;
        }
        byte b8 = bArr[i2 + 2];
        byte b9 = bArr[i2 + 3];
        byte b10 = bArr[i2 + 4];
        byte b11 = bArr[i2 + 6];
        byte b12 = bArr[i2 + 7];
        byte b13 = bArr[i2 + 8];
        byte b14 = bArr[i2 + 9];
        qt.y0(10, (b8 >> 6) & 1);
        qt.y0(13, (b8 >> 3) & 1);
        qt.y0(11, (b9 >> 6) & 1);
        qt.y0(12, (b9 >> 4) & 1);
        qt.y0(62, (b9 >> 2) & 1);
        qt.y0(16, (b10 >> 5) & 1);
        qt.y0(65, (b10 >> 4) & 1);
        int i35 = b11 & DhcpPacket.DHCP_DOMAIN_NAME;
        if (i35 == 1) {
            i7 = 0;
            i8 = 0;
            i9 = 0;
            i10 = 1;
        } else if (i35 != 3) {
            if (i35 == 5) {
                i7 = 0;
                i10 = 0;
                i8 = 1;
            } else if (i35 != 6) {
                switch (i35) {
                    case 11:
                        i8 = 0;
                        i9 = 0;
                        i10 = 0;
                        i7 = 1;
                        break;
                    case 12:
                        i8 = 0;
                        i10 = 0;
                        i7 = 1;
                        i9 = 1;
                        break;
                    case 13:
                        i9 = 0;
                        i10 = 0;
                        i7 = 1;
                        i8 = 1;
                        break;
                    case 14:
                        i10 = 0;
                        i7 = 1;
                        i8 = 1;
                        break;
                    default:
                        i7 = 0;
                        i8 = 0;
                        i9 = 0;
                        i10 = 0;
                        break;
                }
            } else {
                i7 = 0;
                i9 = 0;
                i10 = 0;
                i8 = 1;
            }
            i9 = i8;
        } else {
            i7 = 0;
            i8 = 0;
            i10 = 0;
            i9 = 1;
        }
        qt.y0(18, i7);
        qt.y0(19, i8);
        qt.y0(20, i9);
        qt.y0(49, i10);
        qt.y0(21, b12 & 255);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            int i36 = b14 & 255;
            if (i36 == 254) {
                qt.y0(27, -2);
            } else if (i36 != 255) {
                qt.y0(27, i36);
            } else {
                qt.y0(27, -3);
            }
            int i37 = b13 & 255;
            if (i37 == 254) {
                qt.y0(28, -2);
            } else if (i37 != 255) {
                qt.y0(28, i37);
            } else {
                qt.y0(28, -3);
            }
        } else {
            int i38 = b13 & 255;
            if (i38 == 254) {
                qt.y0(27, -2);
            } else if (i38 != 255) {
                qt.y0(27, i38);
            } else {
                qt.y0(27, -3);
            }
            int i39 = b14 & 255;
            if (i39 == 254) {
                qt.y0(28, -2);
            } else if (i39 != 255) {
                qt.y0(28, i39);
            } else {
                qt.y0(28, -3);
            }
        }
        int i40 = bArr[i2 + 13] & 255;
        if (i40 == 0) {
            u0.d.A3(0);
        } else {
            u0.d.A3((i40 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17388o.d(this.K);
        qt.q0(this.L);
        qt.q0(this.f9054o);
        w0.e.f17815a.d(this.f9054o);
        w0.e.f17819e.d(this.f9054o);
        u0.c.f17386m.d(this.H);
        l0.b0.p0(this.I);
        o1.h.f16865a.d(this.f9058s);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 113) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 == 1) {
                z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, iArr[0], iArr[1]);
                return;
            }
            if (i2 == 2) {
                z.k.s(227, 2, 173, iArr[0], iArr[1]);
                return;
            }
            if (i2 == 3) {
                z.k.s(227, 2, 154, iArr[0], iArr[1]);
                return;
            }
            if (i2 == 4) {
                if (u0.b.f17347o == 1) {
                    z.k.s(227, 2, -3, 2, 0);
                    return;
                }
                return;
            }
            if (i2 == 5) {
                z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
                return;
            }
            if (i2 == 33) {
                x3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[0], (byte) iArr[1], 0});
                return;
            }
            if (i2 == 1003) {
                z.k.s(227, 2, -3, 1, 0);
                return;
            }
            if (i2 == 1029 && T2(iArr, 2)) {
                int iW = (iArr[1] * Process.MEDIA_RW_GID) / a.f.w();
                int i3 = (iArr[2] * 1000) / a.f.i();
                if (iArr[0] == 0) {
                    z.k.s(227, 6, 44, 0, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, 6, 44, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (iArr == null || iArr.length <= 1) {
            return;
        }
        if (iArr[1] == 1) {
            x3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[0], 1, 0});
        } else if (iArr[1] == 0) {
            x3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[0], 0, 0});
        }
        if (nt.W != 1) {
            if (iArr[1] == 1) {
                z.k.s(227, 2, 61, iArr[0], 1);
                return;
            } else {
                if (iArr[1] == 0) {
                    z.k.s(227, 2, 61, iArr[0], 0);
                    return;
                }
                return;
            }
        }
        if (iArr[0] == 13) {
            if (iArr[1] == 1) {
                z.k.s(227, 2, 61, 15, 1);
                return;
            } else {
                if (iArr[1] == 0) {
                    z.k.s(227, 2, 61, 15, 0);
                    return;
                }
                return;
            }
        }
        if (iArr[0] == 14) {
            if (iArr[1] == 1) {
                z.k.s(227, 2, 61, 16, 1);
                return;
            } else {
                if (iArr[1] == 0) {
                    z.k.s(227, 2, 61, 16, 0);
                    return;
                }
                return;
            }
        }
        if (iArr[0] == 15) {
            if (iArr[1] == 1) {
                z.k.s(227, 2, 61, 13, 1);
                return;
            } else {
                if (iArr[1] == 0) {
                    z.k.s(227, 2, 61, 13, 0);
                    return;
                }
                return;
            }
        }
        if (iArr[0] == 16) {
            if (iArr[1] == 1) {
                z.k.s(227, 2, 61, 14, 1);
                return;
            } else {
                if (iArr[1] == 0) {
                    z.k.s(227, 2, 61, 14, 0);
                    return;
                }
                return;
            }
        }
        if (iArr[1] == 1) {
            z.k.s(227, 2, 61, iArr[0], 1);
        } else if (iArr[1] == 0) {
            z.k.s(227, 2, 61, iArr[0], 0);
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
            int i5 = nt.f8633a;
            if (i5 == 3211365 || i5 == 3276901) {
                int[] iArr = new int[bArr.length];
                int length = bArr.length - 1;
                for (int i6 = 0; i6 < length; i6++) {
                    iArr[i6] = bArr[i6] & 255;
                }
                o1.x.B(nt.f8643f, 1052, iArr);
            }
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f9048i + bArr.length > 1024) {
            this.f9048i = 0;
            this.f9049j = 0;
            this.f9050k = 0;
        }
        System.arraycopy(bArr, 0, this.f9047h, this.f9048i, bArr.length);
        int length2 = this.f9048i + bArr.length;
        this.f9048i = length2;
        int i7 = this.f9050k;
        if (i7 != 0) {
            if (i7 >= length2) {
                return;
            }
            byte b2 = this.f9047h[2];
            int i8 = 3;
            while (true) {
                i4 = this.f9050k;
                if (i8 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f9047h[i8]);
                i8++;
            }
            byte b3 = (byte) ((b2 - 1) & 255);
            byte[] bArr2 = this.f9047h;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 2, bArr2[2]);
                this.f9049j = this.f9050k + 1;
            } else {
                this.f9049j = 2;
            }
            this.f9050k = 0;
        }
        int i9 = this.f9048i - 3;
        while (true) {
            i2 = this.f9049j;
            if (i2 >= i9) {
                break;
            }
            byte[] bArr3 = this.f9047h;
            if (bArr3[i2] == 90 && bArr3[i2 + 1] == -91) {
                if (this.f9050k > 512) {
                    this.f9050k = 0;
                } else {
                    int i10 = bArr3[i2 + 2] + i2 + 4;
                    this.f9050k = i10;
                    if (i10 >= this.f9048i) {
                        this.f9050k = i10 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 2];
                    int i11 = i2 + 3;
                    while (true) {
                        i3 = this.f9050k;
                        if (i11 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f9047h[i11]);
                        i11++;
                    }
                    byte b5 = (byte) ((b4 - 1) & 255);
                    byte[] bArr4 = this.f9047h;
                    if (b5 == bArr4[i3]) {
                        int i12 = nt.f8633a;
                        if (i12 == 3211365 || i12 == 3276901) {
                            int i13 = this.f9049j;
                            u3(bArr4, i13 + 2, bArr4[i13 + 2]);
                        } else {
                            int i14 = this.f9049j;
                            U2(bArr4, i14 + 2, bArr4[i14 + 2]);
                        }
                        this.f9049j = this.f9050k;
                    } else {
                        this.f9049j++;
                    }
                    this.f9050k = 0;
                }
            }
            this.f9049j++;
        }
        if (i2 != 0) {
            int i15 = this.f9048i - i2;
            this.f9048i = i15;
            if (i15 != 0) {
                byte[] bArr5 = this.f9047h;
                System.arraycopy(bArr5, i2, bArr5, 0, i15);
            }
            this.f9049j = 0;
        }
    }

    public void c3(int i2) {
        switch (i2) {
            case 32:
            case 33:
            case 34:
                if (i2 == 32) {
                    w0.d.f17790b.x(-2);
                } else if (i2 == 33) {
                    w0.d.f17790b.x(-3);
                } else if (i2 == 34) {
                    w0.d.f17790b.x(-3);
                }
                break;
            case 35:
                o1.u.E();
                break;
            case 36:
                o1.u.i();
                break;
            case 37:
                o1.u.q();
                break;
            case 38:
                o1.u.j();
                break;
            case 39:
                o1.u.i();
                break;
        }
    }

    public final void d3(int i2) {
        byte b2 = (byte) i2;
        x3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, b2, 1, 0});
        x3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, b2, 0, 0});
        z.k.s(227, 2, 61, i2, 1);
        z.k.s(227, 2, 61, i2, 0);
    }

    public final int e3(int i2) {
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

    public final void f3(int i2, String str) {
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

    public final void g3() {
        int i2 = this.B;
        if (i2 < 0 || i2 >= M.length) {
            return;
        }
        int i3 = this.C;
        if (i3 == 0 && this.f9064y == 0) {
            return;
        }
        int i4 = this.f9063x * 10;
        int i5 = this.f9062w * 10;
        int i6 = this.f9065z;
        z.k.s(227, 19, 228, (byte) (this.D << 7), (byte) (i3 << 7), (i4 >> 24) & 255, (i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255, 0, (i5 >> 24) & 255, (i5 >> 16) & 255, (i5 >> 8) & 255, i5 & 255, e3(this.f9064y), i6 / BatchedScanSettings.MAX_INTERVAL_SEC, (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i6 / BatchedScanSettings.MAX_INTERVAL_SEC, (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, M[this.B], 0, 0);
    }

    public void u3(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = nt.f8633a;
        if (i9 == 3211365 || i9 == 3276901) {
            byte b2 = bArr[i2 + 1];
            if (b2 == -16) {
                this.f9051l = new String(bArr, i2 + 2, i3 - 2);
                qt.L(this.f9052m + "__" + this.f9051l);
                return;
            }
            if (b2 != 49) {
                if (b2 != 50) {
                    return;
                }
                int i10 = bArr[i2 + 15] & 255;
                int i11 = nt.f8645g[37];
                if (i10 == 0) {
                    u0.d.A3(0);
                    return;
                } else {
                    u0.d.B3(i11 == 1 ? (((i10 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i10 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    return;
                }
            }
            int i12 = i2 + 2;
            qt.y0(10, (bArr[i12] >> 6) & 1);
            qt.y0(53, (bArr[i12] >> 5) & 1);
            qt.y0(42, (bArr[i12] >> 4) & 1);
            qt.y0(13, (bArr[i12] >> 3) & 1);
            qt.y0(92, (bArr[i12] >> 1) & 1);
            qt.y0(37, (bArr[i12] >> 0) & 1);
            int i13 = i2 + 3;
            qt.y0(67, (bArr[i13] >> 7) & 1);
            qt.y0(11, (bArr[i13] >> 6) & 1);
            qt.y0(12, (bArr[i13] >> 4) & 1);
            qt.y0(54, (bArr[i13] >> 3) & 1);
            qt.y0(14, (bArr[i13] >> 2) & 1);
            qt.y0(52, (bArr[i13] >> 1) & 1);
            qt.y0(34, (bArr[i13] >> 0) & 1);
            int i14 = i2 + 4;
            qt.y0(43, (bArr[i14] >> 7) & 1);
            qt.y0(16, (bArr[i14] >> 5) & 1);
            qt.y0(65, (bArr[i14] >> 4) & 1);
            qt.y0(30, (bArr[i14] >> 2) & 3);
            qt.y0(29, (bArr[i14] >> 0) & 3);
            int i15 = i2 + 5;
            qt.y0(32, (bArr[i15] >> 6) & 3);
            qt.y0(31, (bArr[i15] >> 4) & 3);
            qt.y0(17, (bArr[i15] >> 3) & 1);
            qt.y0(75, (bArr[i15] >> 2) & 1);
            qt.y0(80, (bArr[i15] >> 1) & 1);
            qt.y0(66, (bArr[i15] >> 0) & 1);
            int i16 = i2 + 6;
            qt.y0(77, (bArr[i16] >> 0) & 15);
            int i17 = (bArr[i16] >> 0) & 15;
            if (i17 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i17 == 5) {
                i5 = 0;
                i6 = 1;
                i4 = 1;
            } else if (i17 != 6) {
                switch (i17) {
                    case 12:
                        i4 = 0;
                        i6 = 1;
                        i5 = 1;
                        break;
                    case 13:
                        i6 = 0;
                        i4 = 1;
                        i5 = i4;
                        break;
                    case 14:
                        i6 = 1;
                        i4 = i6;
                        i5 = i4;
                        break;
                    default:
                        i6 = 0;
                        i4 = i6;
                        i5 = i4;
                        break;
                }
            } else {
                i6 = 0;
                i5 = 0;
                i4 = 1;
            }
            qt.y0(20, i6);
            qt.y0(19, i4);
            qt.y0(18, i5);
            qt.y0(21, bArr[i2 + 7] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i18 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 8] : bArr[i2 + 9]) & 255;
            if (i18 == 254) {
                qt.y0(27, -2);
            } else if (i18 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i18 * 5);
            }
            int i19 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 9] : bArr[i2 + 8]) & 255;
            if (i19 == 254) {
                qt.y0(28, -2);
            } else if (i19 == 255) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i19 * 5);
            }
            int i20 = bArr[i2 + 10] & 255;
            if (i20 == 1) {
                i7 = 0;
                i8 = 1;
            } else if (i20 != 2) {
                i8 = i20 != 3 ? 0 : 1;
                i7 = i8;
            } else {
                i8 = 0;
                i7 = 1;
            }
            qt.y0(47, i8);
            qt.y0(46, i7);
            qt.y0(44, bArr[i2 + 11] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i21 = bArr[i2 + 12] & 255;
            if (i21 == 254) {
                qt.y0(40, -2);
            } else if (i21 == 255) {
                qt.y0(40, -3);
            } else {
                qt.y0(40, i21 * 5);
            }
        }
    }

    public final void v3(int i2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[19];
        iArr[0] = 227;
        iArr[1] = 16;
        iArr[2] = i2;
        int length = str.length() <= 7 ? str.length() : 7;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i4 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void w3(int i2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = i2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i4 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }
}
