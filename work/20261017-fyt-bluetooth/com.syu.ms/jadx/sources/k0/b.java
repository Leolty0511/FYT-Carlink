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
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class b extends lt {
    public static int[] X = {0, 0, 7, 3, 8, 2, 6, 4, 6, 1, 9, 10, 12, 9, 9, 14, 9, 11, 13, 5, 1};
    public static int Y = 128;
    public static int Z = 128;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static int f3460a0 = 128;
    public k L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3462c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3468i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3463d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f3464e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 4}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{15, 13}, new int[]{17, 3}, new int[]{18, 3}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f3465f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 13}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 4}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{15, 13}, new int[]{17, 3}, new int[]{18, 3}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3466g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3467h = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3469j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f3470k = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 29}, new int[]{5, 38}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 53}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 16}, new int[]{17, 11}, new int[]{18, 58}, new int[]{19, 56}, new int[]{20, 2}, new int[]{21, 39}, new int[]{22, 29}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{27, 34}, new int[]{28, 33}, new int[]{29, 35}, new int[]{30, 32}, new int[]{31, 53}, new int[]{32, 1}, new int[]{33, -1}, new int[]{34, -1}, new int[]{35, -1}, new int[]{36, 54}, new int[]{37, 65}, new int[]{38, 54}, new int[]{39, 1}, new int[]{40, 18}, new int[]{41, -1}, new int[]{42, 29}, new int[]{43, 5}, new int[]{44, 2}, new int[]{45, 54}, new int[]{46, 10}, new int[]{47, 5}, new int[]{48, 18}, new int[]{49, 71}, new int[]{50, -1}, new int[]{51, 24}, new int[]{52, 18}, new int[]{53, 26}, new int[]{54, -1}, new int[]{55, 55}, new int[]{56, 1}, new int[]{57, 25}, new int[]{60, 66}, new int[]{61, -1}, new int[]{62, -1}, new int[]{63, 13}, new int[]{64, 25}, new int[]{65, -1}, new int[]{66, 38}, new int[]{67, 64}, new int[]{69, 7}, new int[]{70, 8}, new int[]{71, 74}, new int[]{72, 75}, new int[]{73, -1}, new int[]{74, -1}, new int[]{75, 21}, new int[]{76, 18}, new int[]{77, 27}, new int[]{78, 28}, new int[]{79, 56}, new int[]{80, 56}, new int[]{81, 63}, new int[]{82, -1}, new int[]{83, 12}, new int[]{84, -1}, new int[]{85, -1}, new int[]{86, 22}, new int[]{87, 4}, new int[]{88, 3}, new int[]{89, 4}, new int[]{90, 3}, new int[]{91, 4}, new int[]{92, 3}, new int[]{93, -1}, new int[]{94, -1}, new int[]{95, -1}, new int[]{96, -1}, new int[]{97, 62}, new int[]{98, 15}, new int[]{99, 10}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3471l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3472m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3473n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3474o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3475p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3476q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3477r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f3478s = new RunnableC0065b();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f3479t = new c();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f3480u = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f3481v = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f3482w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f3483x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f3484y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f3485z = 0;
    public int A = 0;
    public int B = 0;
    public int C = 0;
    public int D = 1;
    public int E = 255;
    public final Runnable F = new d();
    public float G = 0.0f;
    public int H = 255;
    public int I = 255;
    public Runnable J = new e();
    public Runnable K = new f();
    public o1.g0 M = new o1.g0(getClass().getSimpleName(), 32);
    public final int N = 1;
    public final int O = 2;
    public final int P = 3;
    public int Q = 0;
    public Runnable R = new g();
    public Runnable S = new h();
    public Runnable T = new i();
    public byte U = 0;
    public Runnable V = new j();
    public Runnable W = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 2, 10, 1, 50);
        }
    }

    /* JADX INFO: renamed from: k0.b$b, reason: collision with other inner class name */
    public class RunnableC0065b implements Runnable {
        public RunnableC0065b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            int i2 = bVar.f3477r;
            if (i2 > 0) {
                bVar.f3477r = i2 - 1;
            }
            if (bVar.f3477r == 0) {
                b.a3();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            bVar.f3477r = 4;
            bVar.c3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            bVar.D = 0;
            bVar.C = 0;
            bVar.g3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            if (bVar.C == 0) {
                bVar.G = u0.b.f17359s0;
                if ((b.this.G <= 22.5d && b.this.G >= 0.0f) || (b.this.G >= 337.5d && b.this.G <= 360.0f)) {
                    b.this.I = 7;
                } else if (b.this.G > 22.5d && b.this.G < 67.5d) {
                    b.this.I = 8;
                } else if (b.this.G >= 67.5d && b.this.G <= 112.5d) {
                    b.this.I = 1;
                } else if (b.this.G > 112.5d && b.this.G < 157.5d) {
                    b.this.I = 2;
                } else if (b.this.G >= 157.5d && b.this.G <= 202.5d) {
                    b.this.I = 3;
                } else if (b.this.G > 202.5d && b.this.G < 247.5d) {
                    b.this.I = 4;
                } else if (b.this.G >= 247.5d && b.this.G <= 292.5d) {
                    b.this.I = 5;
                } else if (b.this.G <= 292.5d || b.this.G >= 337.5d) {
                    b.this.I = 3;
                } else {
                    b.this.I = 6;
                }
                if (b.this.I != b.this.H) {
                    b bVar2 = b.this;
                    int i2 = bVar2.f3483x * 10;
                    int i3 = bVar2.f3482w * 10;
                    int i4 = b.this.f3485z;
                    z.k.s(227, 19, 228, (byte) (bVar2.D << 7), (byte) (bVar2.C << 7), (i2 >> 24) & 255, (i2 >> 16) & 255, (i2 >> 8) & 255, i2 & 255, 0, (i3 >> 24) & 255, (i3 >> 16) & 255, (i3 >> 8) & 255, i3 & 255, bVar2.I, i4 / BatchedScanSettings.MAX_INTERVAL_SEC, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i4 / BatchedScanSettings.MAX_INTERVAL_SEC, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, b.X[b.this.B], 0, 0);
                    b bVar3 = b.this;
                    bVar3.H = bVar3.I;
                }
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.w3((byte) -30, u0.b.i3);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(b.this.S);
            b bVar = b.this;
            bVar.Q = 5;
            bVar.f3466g = 0;
            bVar.f3467h = 0;
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            int i2 = bVar.Q - 1;
            bVar.Q = i2;
            if (i2 <= 0) {
                l0.b0.p0(bVar.S);
                b.this.Q = 5;
            } else if (u0.b.f17306a0 == 1) {
                bVar.x3(bVar.M.b(1, 128), b.this.M.b(2, 128), b.this.M.b(3, 128));
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(112, u0.b.X1);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            byte b2 = (byte) (bVar.U + 1);
            bVar.U = b2;
            if (b2 > 5) {
                l0.b0.o0(bVar.V);
                b.this.U = (byte) 0;
            }
        }
    }

    public class k extends BroadcastReceiver {
        public k() {
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0048 A[Catch: Exception -> 0x0153, TryCatch #0 {Exception -> 0x0153, blocks: (B:5:0x0024, B:7:0x0030, B:11:0x003c, B:13:0x0040, B:15:0x0048, B:18:0x0054, B:20:0x0058, B:21:0x006d, B:23:0x0075, B:25:0x0083, B:27:0x0089, B:28:0x009a, B:30:0x00a4, B:31:0x00ad, B:33:0x00b7, B:35:0x00c7, B:37:0x00cb, B:39:0x00cf, B:40:0x00d3, B:41:0x00e5, B:43:0x00ef, B:44:0x00f8, B:46:0x0102, B:47:0x010b, B:49:0x0115, B:51:0x0123, B:54:0x012a, B:58:0x0136), top: B:63:0x0024 }] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            b bVar;
            int i2;
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (!"AUTONAVI_STANDARD_BROADCAST_SEND".equals(action) || extras == null) {
                return;
            }
            try {
                boolean z2 = false;
                if (extras.getInt("KEY_TYPE") == 10019) {
                    int i3 = extras.getInt("EXTRA_STATE");
                    if (i3 != 2 && i3 != 39) {
                        switch (i3) {
                            case 8:
                            case 10:
                                b bVar2 = b.this;
                                bVar2.D = 1;
                                bVar2.C = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                bVar = b.this;
                                bVar.D = 1;
                                bVar.C = 0;
                                i2 = nt.f8637c;
                                if (i2 != 2) {
                                    bVar.H = 255;
                                    o1.j.b(o1.l.a(), b.this.J, 1000L);
                                } else {
                                    bVar.H = 255;
                                    o1.j.b(o1.l.a(), b.this.J, 1000L);
                                }
                                z2 = true;
                                break;
                        }
                    } else {
                        bVar = b.this;
                        bVar.D = 1;
                        bVar.C = 0;
                        i2 = nt.f8637c;
                        if ((i2 != 2 || i2 == 3) && u0.b.f17306a0 == 1) {
                            bVar.H = 255;
                            o1.j.b(o1.l.a(), b.this.J, 1000L);
                        }
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!b.this.f3481v.equals(extras.getString("NEXT_ROAD_NAME")) && extras.getString("NEXT_ROAD_NAME") != null) {
                        b.this.f3481v = extras.getString("NEXT_ROAD_NAME");
                        b bVar3 = b.this;
                        bVar3.f3(229, bVar3.f3481v);
                    }
                    if (b.this.f3483x != extras.getInt("SEG_REMAIN_DIS")) {
                        b.this.f3483x = extras.getInt("SEG_REMAIN_DIS");
                        z2 = true;
                    }
                    if (b.this.f3482w != extras.getInt("ROUTE_REMAIN_DIS")) {
                        b.this.f3482w = extras.getInt("ROUTE_REMAIN_DIS");
                        b bVar4 = b.this;
                        if (bVar4.D == 0 && bVar4.f3482w > 100 && u0.b.f17306a0 == 1) {
                            bVar4.D = 1;
                            bVar4.C = 1;
                        }
                        bVar4.A = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (b.this.f3484y != extras.getInt("CAR_DIRECTION")) {
                        b.this.f3484y = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (b.this.f3485z != extras.getInt("ROUTE_REMAIN_TIME")) {
                        b.this.f3485z = extras.getInt("ROUTE_REMAIN_TIME");
                        z2 = true;
                    }
                    if (b.this.B != extras.getInt("ICON")) {
                        b.this.B = extras.getInt("ICON");
                        b bVar5 = b.this;
                        if (bVar5.B >= 2) {
                            bVar5.D = 1;
                            bVar5.C = 1;
                        }
                        z2 = true;
                    }
                }
                if (z2) {
                    b.this.g3();
                    int i4 = nt.f8637c;
                    if (i4 == 2 || i4 == 3) {
                        return;
                    }
                    o1.j.e(o1.l.a(), b.this.F);
                    o1.j.b(o1.l.a(), b.this.F, 20000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ k(b bVar, RunnableC0065b runnableC0065b) {
            this();
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        for (int i2 = 0; i2 < 15; i2++) {
            iArr[i2] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = b3();
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                int i6 = w0.d.f17797i;
                iArr[3] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                iArr[4] = ((i6 % 10000) / 1000) + 48;
                iArr[5] = ((i6 % 1000) / 100) + 48;
                iArr[6] = 46;
                iArr[7] = ((i6 % 100) / 10) + 48;
                iArr[8] = (i6 % 10) + 48;
                iArr[9] = 77;
                iArr[10] = 104;
                iArr[11] = 122;
            } else {
                int i7 = w0.d.f17797i;
                iArr[3] = i7 / 10000 == 0 ? (i7 / 10000) + 32 : (i7 / 10000) + 48;
                iArr[4] = (i7 % 10000) / 1000 == 0 ? ((i7 % 10000) / 1000) + 32 : ((i7 % 10000) / 1000) + 48;
                iArr[5] = ((i7 % 1000) / 100) + 48;
                iArr[6] = ((i7 % 100) / 10) + 48;
                iArr[7] = (i7 % 10) + 48;
                iArr[8] = 75;
                iArr[9] = 104;
                iArr[10] = 122;
            }
        } else if (i3 != 4) {
            if (i3 != 6) {
                if ((i3 == 8 || i3 == 9) && u0.b.s3 != 0) {
                    int i8 = u0.b.r3 % 10000;
                    iArr[4] = (i8 / 1000) + 48;
                    iArr[5] = ((i8 % 1000) / 100) + 48;
                    iArr[6] = ((i8 % 100) / 10) + 48;
                    iArr[7] = (i8 % 10) + 48;
                    int i9 = u0.b.t3;
                    int i10 = (i9 / 60) % 60;
                    iArr[8] = 32;
                    iArr[9] = (i10 / 10) + 48;
                    iArr[10] = (i10 % 10) + 48;
                    iArr[11] = 58;
                    int i11 = i9 % 60;
                    iArr[12] = (i11 / 10) + 48;
                    iArr[13] = (i11 % 10) + 48;
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
                iArr[12] = 77;
                iArr[13] = 104;
                iArr[14] = 122;
            }
        } else if (o0.e.C != 0) {
            iArr[3] = 84;
            int i15 = o0.e.B % 10000;
            iArr[4] = (i15 / 1000) + 48;
            iArr[5] = ((i15 % 1000) / 100) + 48;
            iArr[6] = ((i15 % 100) / 10) + 48;
            iArr[7] = (i15 % 10) + 48;
            int i16 = o0.e.f16794r;
            int i17 = (i16 / 60) % 60;
            iArr[8] = 32;
            iArr[9] = (i17 / 10) + 48;
            iArr[10] = (i17 % 10) + 48;
            iArr[11] = 58;
            int i18 = i16 % 60;
            iArr[12] = (i18 / 10) + 48;
            iArr[13] = (i18 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        int i19 = 0;
        iArr2[0] = 227;
        while (i19 < 15) {
            int i20 = i19 + 1;
            iArr2[i20] = (byte) iArr[i19];
            i19 = i20;
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

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.M.a();
        if (App.c().getResources().getConfiguration().orientation == 1) {
            qt.y(this.W);
        }
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        int i2 = nt.f8637c;
        RunnableC0065b runnableC0065b = null;
        if (i2 == 2 || i2 == 3) {
            if (i2 == 2) {
                mtVar.f8306a = null;
            } else if (i2 == 3) {
                mtVar.f8306a = new String[]{"com.syu.canbus"};
            }
            mtVar.f8318m = new int[]{66};
        } else if (i2 == 4) {
            mtVar.f8306a = null;
            mtVar.f8312g = 0;
        } else {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
        }
        this.L = new k(this, runnableC0065b);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
        App.c().registerReceiver(this.L, intentFilter);
        g3();
        o1.h.f16865a.a(this.J, 1);
        u0.c.f17388o.a(this.K, 1);
        u0.c.f17386m.a(this.R, 1);
        qt.z(this.f3478s);
        y0.g.f18094d.a(this.f3479t, 0);
        y0.g.f18095e.a(this.f3479t, 0);
        w0.e.f17815a.a(this.f3478s, 1);
        w0.e.f17819e.a(this.f3478s, 1);
        o1.h.f16866b.a(this.T, 0);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        byte b2;
        int[][] iArr3;
        byte b3;
        int i6;
        int i7;
        byte b4 = bArr[i2 + 1];
        if (b4 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b4 == 24) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            qt.y0(114, (b5 >> 2) & 1);
            qt.y0(115, (b5 >> 1) & 1);
            int i8 = (b6 >> 6) & 1;
            int i9 = (b6 >> 7) & 1;
            int i10 = (b6 >> 3) & 1;
            if (i9 == 0 && i10 == 0) {
                qt.y0(116, 0);
            } else {
                qt.y0(116, 1);
            }
            if (i8 == 0 && i10 == 0) {
                qt.y0(117, 0);
                return;
            } else {
                qt.y0(117, 1);
                return;
            }
        }
        if (b4 == 26) {
            int i11 = i2 + 4;
            l0.c0.N1((bArr[i11] >> 0) & 1, (bArr[i11] >> 1) & 1, (bArr[i11] >> 2) & 1);
            o1.x.C(nt.f8643f, 1049, new int[]{11, ((((bArr[i11] >> 1) & 1) << 4) & 16) | ((((bArr[i11] >> 0) & 1) << 3) & 8) | ((u0.b.f17366w << 6) & 64)}, null, null);
            return;
        }
        if (b4 == 66) {
            if (nt.a()) {
                u0.d.H2((bArr[i2 + 9] >> 4) & 15);
                u0.d.I2((bArr[i2 + 6] >> 4) & 15);
                u0.d.J2((bArr[i2 + 8] >> 4) & 15);
                u0.d.K2((bArr[i2 + 7] >> 4) & 15);
                u0.d.N2((bArr[i2 + 5] >> 4) & 15);
                u0.d.O2((bArr[i2 + 2] >> 4) & 15);
                u0.d.P2((bArr[i2 + 4] >> 4) & 15);
                u0.d.Q2((bArr[i2 + 3] >> 4) & 15);
                return;
            }
            return;
        }
        if (b4 == 71) {
            int i12 = bArr[i2 + 15] & 255;
            qt.y0(106, (i12 >> 7) & 1);
            qt.y0(107, (i12 >> 6) & 1);
            qt.y0(108, (i12 >> 5) & 1);
            return;
        }
        if (b4 == 18) {
            qt.y0(110, bArr[i2 + 4] & 255);
            qt.y0(98, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
            int i13 = bArr[i2 + 8] & 255;
            qt.y0(99, (i13 >> 7) & 1);
            qt.y0(100, (i13 >> 6) & 1);
            qt.y0(101, (i13 >> 5) & 1);
            qt.y0(102, (i13 >> 4) & 1);
            qt.y0(111, (i13 >> 3) & 1);
            qt.y0(103, bArr[i2 + 9] & 255);
            qt.y0(104, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280));
            return;
        }
        if (b4 == 19) {
            qt.y0(105, ((bArr[i2 + 2] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            int i14 = i2 + 10;
            int i15 = i2 + 11;
            qt.y0(113, ((bArr[i14] << 8) & 65280) | (bArr[i15] & 255));
            qt.y0(1032, (bArr[i15] & 255) | ((bArr[i14] << 8) & 65280));
            return;
        }
        if (b4 == 33) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            this.f3469j = b7 & 255;
            int i16 = 0;
            while (true) {
                iArr = this.f3470k;
                if (i16 >= iArr.length) {
                    break;
                }
                int i17 = this.f3469j;
                if (i17 == iArr[i16][0]) {
                    if (i17 == 0) {
                        break;
                    }
                    this.f3468i = i16;
                    break;
                }
                i16++;
            }
            if (b8 == 1) {
                if (i16 < iArr.length) {
                    l0.b0.l0(iArr[i16][1], 0);
                    return;
                }
                return;
            } else {
                if (b8 == 0) {
                    int i18 = this.f3468i;
                    if (i18 < iArr.length) {
                        l0.b0.l0(iArr[i18][1], 1);
                    }
                    this.f3468i = 255;
                    return;
                }
                return;
            }
        }
        if (b4 == 34) {
            byte b9 = bArr[i2 + 2];
            byte b10 = bArr[i2 + 3];
            if (b9 == 0) {
                this.f3466g = 0;
                this.f3467h = 0;
                return;
            }
            if (b9 != 1) {
                if (b9 == 2 && b10 != (i4 = this.f3467h)) {
                    if (b10 > i4) {
                        for (int i19 = 0; i19 < b10 - this.f3467h; i19++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b10 < i4) {
                        for (int i20 = 0; i20 < this.f3467h - b10; i20++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f3467h = b10;
                    return;
                }
                return;
            }
            int i21 = this.f3466g;
            if (b10 != i21) {
                if (b10 > i21) {
                    for (int i22 = 0; i22 < b10 - this.f3466g; i22++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b10 < i21) {
                    for (int i23 = 0; i23 < this.f3466g - b10; i23++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f3466g = b10;
                return;
            }
            return;
        }
        if (b4 == 114) {
            qt.y0(109, bArr[i2 + 3] & 255);
            int i24 = i2 + 2;
            qt.y0(121, (bArr[i24] >> 1) & 1);
            qt.y0(122, (bArr[i24] >> 3) & 1);
            if (nt.a()) {
                qt.p(bArr[i2 + 6] & 255, bArr[i2 + 7] & 255, 140);
                if (nt.f8637c == 2) {
                    this.f3462c = bArr[i2 + 4] & 255;
                    int i25 = 0;
                    while (true) {
                        iArr3 = this.f3465f;
                        if (i25 >= iArr3.length) {
                            break;
                        }
                        int i26 = this.f3462c;
                        if (i26 == iArr3[i25][0]) {
                            if (i26 == 0) {
                                break;
                            }
                            this.f3461b = i25;
                            break;
                        }
                        i25++;
                    }
                    if (this.f3462c == 0) {
                        int i27 = this.f3461b;
                        if (i27 < iArr3.length && i27 != 255) {
                            l0.b0.l0(iArr3[i27][1], 1);
                            l0.b0.o0(this.V);
                            this.U = (byte) 0;
                        }
                        this.f3461b = 255;
                    } else if (i25 < iArr3.length && (b3 = this.U) == 0) {
                        this.U = (byte) (b3 + 1);
                        l0.b0.l0(iArr3[i25][1], 0);
                        l0.b0.a(this.V);
                    }
                } else {
                    this.f3462c = bArr[i2 + 4] & 255;
                    int i28 = 0;
                    while (true) {
                        iArr2 = this.f3464e;
                        if (i28 >= iArr2.length) {
                            break;
                        }
                        int i29 = this.f3462c;
                        if (i29 == iArr2[i28][0]) {
                            if (i29 == 0) {
                                break;
                            }
                            this.f3461b = i28;
                            break;
                        }
                        i28++;
                    }
                    if (this.f3462c != 0 && (i5 = this.f3461b) < iArr2.length) {
                        l0.b0.l0(iArr2[i5][1], 0);
                        l0.b0.l0(this.f3464e[this.f3461b][1], 1);
                    }
                }
                if (((bArr[i24] >> 5) & 1) == 1) {
                    u0.d.R2((bArr[i2 + 8] >> 4) & 15);
                    u0.d.S2((bArr[i2 + 9] >> 4) & 15);
                    u0.d.T2((bArr[i2 + 10] >> 4) & 15);
                    u0.d.U2((bArr[i2 + 11] >> 4) & 15);
                    int i30 = i2 + 12;
                    int i31 = bArr[i30] & 255;
                    int i32 = i2 + 13;
                    int i33 = bArr[i32] & 255;
                    int i34 = i2 + 14;
                    int i35 = bArr[i34] & 255;
                    int i36 = i2 + 15;
                    int i37 = 255 & bArr[i36];
                    int i38 = i31 / 9;
                    int i39 = i33 / 9;
                    int i40 = i35 / 9;
                    int i41 = i37 / 9;
                    if (i31 <= 127 || i33 <= 127 || i35 <= 127 || i37 <= 127) {
                        if ((l0.c0.f13013g != i38 || l0.c0.f13014h != i39 || l0.c0.f13015i != i40 || l0.c0.f13016j != i41) && u0.b.f17347o == 0) {
                            u0.d.C2(1);
                            b2 = 4;
                            l0.c0.f13017k = 4;
                            l0.b0.b(l0.c0.f13018l);
                        }
                        l0.c0.f13013g = i38;
                        l0.c0.f13014h = i39;
                        l0.c0.f13015i = i40;
                        l0.c0.f13016j = i41;
                        u0.d.D2((bArr[i30] >> b2) & 15);
                        u0.d.E2((bArr[i32] >> b2) & 15);
                        u0.d.F2((bArr[i34] >> b2) & 15);
                        u0.d.G2((bArr[i36] >> b2) & 15);
                        return;
                    }
                    u0.d.C2(0);
                    b2 = 4;
                    l0.c0.f13013g = i38;
                    l0.c0.f13014h = i39;
                    l0.c0.f13015i = i40;
                    l0.c0.f13016j = i41;
                    u0.d.D2((bArr[i30] >> b2) & 15);
                    u0.d.E2((bArr[i32] >> b2) & 15);
                    u0.d.F2((bArr[i34] >> b2) & 15);
                    u0.d.G2((bArr[i36] >> b2) & 15);
                    return;
                }
                return;
            }
            return;
        }
        if (b4 != 115) {
            return;
        }
        int i42 = bArr[i2 + 2] & 255;
        qt.y0(49, (i42 >> 0) & 1);
        qt.y0(53, (i42 >> 1) & 1);
        qt.y0(14, (i42 >> 2) & 1);
        qt.y0(13, (i42 >> 3) & 1);
        qt.y0(12, (i42 >> 4) & 3);
        qt.y0(10, (i42 >> 6) & 1);
        int i43 = bArr[i2 + 3] & 255;
        qt.y0(65, (i43 >> 4) & 1);
        qt.y0(16, (i43 >> 5) & 1);
        qt.y0(11, (i43 >> 6) & 1);
        qt.y0(67, (i43 >> 7) & 1);
        qt.y0(29, (i43 >> 0) & 3);
        qt.y0(30, (i43 >> 2) & 3);
        int i44 = i2 + 4;
        int i45 = bArr[i44] & 255;
        int i46 = i2 + 5;
        int i47 = bArr[i46] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i45 = bArr[i46] & 255;
            i47 = bArr[i44] & 255;
        }
        if (i45 == 0) {
            qt.y0(27, -1);
        } else if (i45 == 1) {
            qt.y0(27, -2);
        } else if (i45 != 255) {
            qt.y0(27, (i45 * 10) + (((bArr[i2 + 6] >> 7) & 1) * 5));
        } else {
            qt.y0(27, -3);
        }
        if (i47 == 0) {
            qt.y0(28, -1);
        } else if (i47 == 1) {
            qt.y0(28, -2);
        } else if (i47 != 255) {
            qt.y0(28, (i47 * 10) + (((bArr[i2 + 7] >> 7) & 1) * 5));
        } else {
            qt.y0(28, -3);
        }
        int i48 = bArr[i2 + 6] & 255;
        qt.y0(18, (i48 >> 4) & 1);
        qt.y0(19, (i48 >> 5) & 1);
        qt.y0(20, (i48 >> 6) & 1);
        qt.y0(21, (i48 >> 0) & 15);
        int i49 = bArr[i2 + 7] & 255;
        qt.y0(22, (i49 >> 4) & 1);
        qt.y0(23, (i49 >> 5) & 1);
        qt.y0(24, (i49 >> 6) & 1);
        qt.y0(25, (i49 >> 0) & 15);
        if (nt.a()) {
            u0.d.B3(((bArr[i2 + 8] & 255) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
        int i50 = i2 + 8;
        qt.y0(118, bArr[i50] & 255);
        if (bArr[i2] != 6 && bArr[i2] == 8) {
            byte b11 = bArr[i50];
            int i51 = bArr[i2 + 9] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                i6 = (i51 >> 7) & 1;
                qt.y0(1, i6);
                i7 = (i51 >> 6) & 1;
                qt.y0(2, i7);
            } else {
                i6 = (i51 >> 6) & 1;
                qt.y0(1, i6);
                i7 = (i51 >> 7) & 1;
                qt.y0(2, i7);
            }
            int i52 = (i51 >> 5) & 1;
            qt.y0(3, i52);
            int i53 = (i51 >> 4) & 1;
            qt.y0(4, i53);
            int i54 = (i51 >> 3) & 1;
            qt.y0(5, i54);
            int i55 = (i51 >> 2) & 1;
            qt.y0(0, i55);
            int i56 = nt.f8637c;
            if (i56 == 2 || i56 == 3) {
                if ((this.f3471l != i53 && i53 == 1) || ((this.f3472m != i52 && i52 == 1) || ((this.f3473n != i6 && i6 == 1) || ((this.f3474o != i7 && i7 == 1) || ((this.f3475p != i54 && i54 == 1) || (this.f3476q != i55 && i55 == 1)))))) {
                    o1.x.C(nt.f8643f, 120, new int[]{1}, null, null);
                } else if (i53 == 0 && i52 == 0 && i6 == 0 && i7 == 0 && i54 == 0 && i55 == 0) {
                    o1.x.C(nt.f8643f, 120, new int[]{0}, null, null);
                }
                this.f3471l = i53;
                this.f3472m = i52;
                this.f3473n = i6;
                this.f3474o = i7;
                this.f3475p = i54;
                this.f3476q = i55;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.p0(this.W);
        qt.q0(this.f3478s);
        y0.g.f18094d.d(this.f3479t);
        y0.g.f18095e.d(this.f3479t);
        w0.e.f17815a.d(this.f3478s);
        w0.e.f17819e.d(this.f3478s);
        o1.h.f16865a.d(this.J);
        u0.c.f17388o.d(this.K);
        o1.h.f16866b.d(this.T);
        u0.c.f17386m.d(this.R);
        l0.b0.p0(this.S);
        if (this.L != null) {
            App.c().unregisterReceiver(this.L);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 126) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 1)) {
                z.k.s(227, 2, 76, 9, iArr[0] & 1);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (T2(iArr, 1)) {
                z.k.s(227, 2, 76, 10, iArr[0] & 1);
            }
        } else if (i2 == 2) {
            if (T2(iArr, 1)) {
                z.k.s(227, 2, 76, 11, iArr[0] & 1);
            }
        } else if (i2 == 3) {
            d3();
        } else {
            if (i2 != 4) {
                return;
            }
            x3(iArr[0], iArr[1], iArr[2]);
        }
    }

    public void c3() {
        int i2;
        int[] iArr = new int[15];
        this.f3477r = 4;
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

    public final void d3() {
        Time time = new Time(Time.getCurrentTimezone());
        time.setToNow();
        z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 2);
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
        int[] iArr = new int[23];
        byte[] bytes = str.getBytes();
        iArr[0] = 227;
        iArr[1] = 20;
        iArr[2] = i2;
        int length = bytes.length <= 19 ? bytes.length : 19;
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3 + 3] = bytes[i3];
        }
        z.k.s(iArr);
    }

    public final void g3() {
        int i2 = this.B;
        if (i2 < 0 || i2 >= X.length) {
            return;
        }
        int i3 = this.C;
        if (i3 == 0 && this.f3484y == 0) {
            return;
        }
        int i4 = this.f3483x * 10;
        int i5 = this.f3482w * 10;
        int i6 = this.f3485z;
        z.k.s(227, 19, 228, (byte) (this.D << 7), (byte) (i3 << 7), (i4 >> 24) & 255, (i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255, 0, (i5 >> 24) & 255, (i5 >> 16) & 255, (i5 >> 8) & 255, i5 & 255, e3(this.f3484y), i6 / BatchedScanSettings.MAX_INTERVAL_SEC, (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i6 / BatchedScanSettings.MAX_INTERVAL_SEC, (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, X[this.B], 0, 0);
    }

    public final void w3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[16];
        byte[] bytes = str.getBytes();
        iArr[0] = 227;
        iArr[1] = 13;
        iArr[2] = b2;
        int length = bytes.length <= 12 ? bytes.length : 12;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 4] = bytes[i2];
        }
        z.k.s(iArr);
    }

    public final void x3(int i2, int i3, int i4) {
        qt.y0(123, i2);
        qt.y0(124, i3);
        qt.y0(125, i4);
        z.k.s(227, 4, 111, 1, i2, i3, i4);
        Y = i2;
        int iB = this.M.b(1, 0);
        int i5 = Y;
        if (iB != i5) {
            this.M.g(1, i5);
        }
        Z = i3;
        int iB2 = this.M.b(2, 0);
        int i6 = Z;
        if (iB2 != i6) {
            this.M.g(2, i6);
        }
        f3460a0 = i4;
        int iB3 = this.M.b(3, 0);
        int i7 = f3460a0;
        if (iB3 != i7) {
            this.M.g(3, i7);
        }
    }
}
