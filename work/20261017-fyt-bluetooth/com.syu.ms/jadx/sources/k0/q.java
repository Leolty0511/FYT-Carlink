package k0;

import android.bluetooth.BluetoothClass;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.drm.DrmManagerClient;
import android.media.TextTrackRegion;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.UrlQuerySanitizer;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.opengl.GLES10;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.provider.Downloads;
import android.text.format.DateFormat;
import android.text.format.Time;
import android.util.Log;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class q extends lt {
    public static int A0;
    public static int B0;
    public static int[] C0 = {0, 0, 7, 3, 8, 2, 6, 4, 6, 1, 9, 10, 12, 9, 9, 14, 9, 11, 13, 5, 1};
    public static int D0 = 0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static String f9367z0;
    public r J;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f9393n;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public String f9410v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public String f9412w0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9369b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9371c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9373d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f9375e = new int[7][];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f9377f = new int[7][];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f9379g = new int[16][];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public o1.g0 f9381h = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f9383i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f9385j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f9387k = 3;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f9389l = 5;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f9391m = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f9395o = 255;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int[][] f9397p = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 2}, new int[]{11, 2}, new int[]{12, -1}};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f9399q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f9401r = 9;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f9403s = 9;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f9405t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f9407u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f9409v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f9411w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f9413x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f9415y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f9417z = 0;
    public int A = 0;
    public int B = 0;
    public int C = 1;
    public int D = 0;
    public int E = 0;
    public Runnable F = new i();
    public Runnable G = new j();
    public Runnable H = new k();
    public Runnable I = new l();
    public int K = 0;
    public int L = 0;
    public int M = 0;
    public int N = 0;
    public Runnable O = new m();
    public Runnable P = new n();
    public final int Q = 10;
    public int R = 10;
    public Runnable S = new o();
    public String T = ProxyProperties.LOCAL_EXCL_LIST;
    public String U = ProxyProperties.LOCAL_EXCL_LIST;
    public int V = 0;
    public int W = 0;
    public int X = 0;
    public int Y = 0;
    public int Z = 0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f9368a0 = 0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f9370b0 = 0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f9372c0 = 1;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f9374d0 = 255;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final Runnable f9376e0 = new p();

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public float f9378f0 = 0.0f;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f9380g0 = 255;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f9382h0 = 255;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public Runnable f9384i0 = new RunnableC0069q();

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public Runnable f9386j0 = new a();

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public Runnable f9388k0 = new b();

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public Runnable f9390l0 = new c();

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public Runnable f9392m0 = new d();

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public String f9394n0 = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public Runnable f9396o0 = new e();

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public String f9398p0 = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public Runnable f9400q0 = new f();

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public Runnable f9402r0 = new g();

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public Runnable f9404s0 = new h();

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public boolean f9406t0 = false;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int f9408u0 = 0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public int f9414x0 = 0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public int f9416y0 = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 8 || i2 == 9 || i2 == 3) {
                q.this.I3((byte) -111, u0.b.i3);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                q.this.H3((byte) -109, u0.b.k3);
            } else {
                q.this.H3((byte) -109, " ");
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                q.this.H3((byte) -110, u0.b.j3);
            } else {
                q.this.H3((byte) -110, " ");
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            if (i2 == 3 || i2 == 4 || i2 == 5) {
                q.this.P3(h0.c.f2437h);
            } else {
                q.this.P3(h0.c.f2455t);
            }
            q.this.d3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (!q.this.f9394n0.equals(h0.c.f2437h)) {
                q.this.f9394n0 = h0.c.f2437h;
                if (q.this.f9394n0 == null) {
                    q.this.f9394n0 = ProxyProperties.LOCAL_EXCL_LIST;
                } else {
                    z2 = q.this.f9394n0.isEmpty() ? false : true;
                }
            }
            if (z2) {
                q qVar = q.this;
                qVar.P3(qVar.f9394n0);
            } else if (q.this.f9394n0 == null || q.this.f9394n0.isEmpty()) {
                q.this.P3(h0.c.f2455t);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!q.this.f9398p0.equals(h0.c.f2452q)) {
                q.this.f9398p0 = h0.c.f2452q;
                if (q.this.f9398p0 == null) {
                    q.this.f9398p0 = ProxyProperties.LOCAL_EXCL_LIST;
                }
            }
            try {
                q qVar = q.this;
                qVar.f9398p0 = q.O3(qVar.f9398p0);
                byte[] bytes = q.this.f9398p0.getBytes("utf-8");
                int length = 24;
                if (bytes.length <= 24) {
                    length = bytes.length;
                }
                int[] iArr = new int[28];
                iArr[0] = -29;
                iArr[1] = 25;
                iArr[2] = -107;
                for (int i2 = 0; i2 < length; i2++) {
                    iArr[4 + i2] = bytes[i2];
                }
                z.k.s(iArr);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            byte b3 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b4 = (byte) (time.month + 1);
            byte b5 = (byte) time.monthDay;
            int i2 = time.hour;
            byte b6 = (byte) time.minute;
            qt.y0(456, i2);
            qt.y0(457, time.minute);
            z.k.s(227, 10, -53, -64, (byte) i2, b6, 0, 8, b2, b3, b4, b5, 2);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q qVar = q.this;
            if (qVar.f9406t0) {
                qVar.e3();
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q qVar = q.this;
            int i2 = qVar.E - 1;
            qVar.E = i2;
            if (i2 <= 0) {
                if (qVar.D == 0) {
                    u0.d.C2(0);
                }
                l0.b0.p0(q.this.F);
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        /* JADX WARN: Code duplicated, block: B:24:0x005f  */
        @Override // java.lang.Runnable
        public void run() {
            String str;
            int i2 = u0.b.D;
            if (i2 == 1) {
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0 || 1 == i3 - 65536 || 2 == i3 - 65536) {
                    str = (w0.d.f17797i / 100) + "." + (w0.d.f17797i % 100) + " MHZ";
                } else {
                    str = w0.d.f17797i + " KHZ";
                }
            } else if (i2 == 2) {
                str = "BT Phone";
            } else if (i2 != 4) {
                if (i2 == 5) {
                    str = "AUX";
                } else if (i2 != 6) {
                    if (i2 == 7) {
                        str = "IPOD";
                    } else if (i2 != 10) {
                        str = ProxyProperties.LOCAL_EXCL_LIST;
                    } else {
                        str = "MEDIA";
                    }
                } else if (d1.d.f1570c == 1) {
                    str = "TV " + d1.d.f1572e + "-" + (d1.d.f1571d / 10000) + "." + ((d1.d.f1571d % 10000) / 100) + " Mhz";
                } else {
                    str = ProxyProperties.LOCAL_EXCL_LIST;
                }
            } else if (o0.e.C == 0) {
                str = ProxyProperties.LOCAL_EXCL_LIST;
            } else {
                str = "DVD " + o0.e.B;
            }
            q.this.I3((byte) -111, str);
            q.this.H3((byte) -110, " ");
            q.this.H3((byte) -109, " ");
            q.this.H3((byte) -108, " ");
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q qVar = q.this;
            int i2 = qVar.f9391m;
            if (i2 > 0) {
                qVar.f9391m = i2 - 1;
            }
            if (qVar.f9391m == 0) {
                q.a3();
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q.this.c3();
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q qVar = q.this;
            int i2 = qVar.f9403s;
            if ((i2 != 9) & (i2 > 0)) {
                qVar.f9403s = i2 - 1;
            }
            if (qVar.f9403s == 0) {
                qVar.f9403s = 9;
            }
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q.this.d3();
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17306a0;
            if (i2 == 0 && q.this.f9372c0 == 1) {
                o1.j.b(o1.l.a(), q.this.f9376e0, 50L);
            } else if (i2 == 1) {
                q qVar = q.this;
                if (qVar.f9372c0 == 0) {
                    qVar.f9372c0 = 1;
                    qVar.f9380g0 = 255;
                    o1.j.b(o1.l.a(), q.this.f9384i0, 1000L);
                }
            }
            q.this.d3();
            int i3 = u0.b.D;
            if (i3 == 8 || i3 == 9 || i3 == 3) {
                q.this.I3((byte) -111, u0.b.i3);
                q.this.H3((byte) -110, u0.b.j3);
                q.this.H3((byte) -109, u0.b.k3);
            }
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q qVar = q.this;
            qVar.f9372c0 = 0;
            qVar.f9370b0 = 0;
            qVar.i3();
        }
    }

    /* JADX INFO: renamed from: k0.q$q, reason: collision with other inner class name */
    public class RunnableC0069q implements Runnable {
        public RunnableC0069q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q qVar = q.this;
            if (qVar.f9370b0 == 0) {
                qVar.f9378f0 = u0.b.f17359s0;
                if ((q.this.f9378f0 <= 22.5d && q.this.f9378f0 >= 0.0f) || (q.this.f9378f0 >= 337.5d && q.this.f9378f0 <= 360.0f)) {
                    q.this.f9382h0 = 7;
                } else if (q.this.f9378f0 > 22.5d && q.this.f9378f0 < 67.5d) {
                    q.this.f9382h0 = 8;
                } else if (q.this.f9378f0 >= 67.5d && q.this.f9378f0 <= 112.5d) {
                    q.this.f9382h0 = 1;
                } else if (q.this.f9378f0 > 112.5d && q.this.f9378f0 < 157.5d) {
                    q.this.f9382h0 = 2;
                } else if (q.this.f9378f0 >= 157.5d && q.this.f9378f0 <= 202.5d) {
                    q.this.f9382h0 = 3;
                } else if (q.this.f9378f0 > 202.5d && q.this.f9378f0 < 247.5d) {
                    q.this.f9382h0 = 4;
                } else if (q.this.f9378f0 >= 247.5d && q.this.f9378f0 <= 292.5d) {
                    q.this.f9382h0 = 5;
                } else if (q.this.f9378f0 <= 292.5d || q.this.f9378f0 >= 337.5d) {
                    q.this.f9382h0 = 3;
                } else {
                    q.this.f9382h0 = 6;
                }
                if (q.this.f9382h0 != q.this.f9380g0) {
                    q qVar2 = q.this;
                    int i2 = qVar2.W * 10;
                    int i3 = qVar2.V * 10;
                    int i4 = q.this.Y;
                    z.k.s(227, 19, 228, (byte) (qVar2.f9372c0 << 7), (byte) (qVar2.f9370b0 << 7), (i2 >> 24) & 255, (i2 >> 16) & 255, (i2 >> 8) & 255, i2 & 255, qVar2.Z, (i3 >> 24) & 255, (i3 >> 16) & 255, (i3 >> 8) & 255, i3 & 255, qVar2.f9382h0, 0, 0, i4 / BatchedScanSettings.MAX_INTERVAL_SEC, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, q.C0[q.this.f9368a0], 0, 0);
                    q qVar3 = q.this;
                    qVar3.f9380g0 = qVar3.f9382h0;
                }
            }
        }
    }

    public class r extends BroadcastReceiver {
        public r() {
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0046 A[Catch: Exception -> 0x0143, TryCatch #0 {Exception -> 0x0143, blocks: (B:5:0x0023, B:7:0x002e, B:11:0x003a, B:13:0x003e, B:15:0x0046, B:17:0x0050, B:18:0x0065, B:20:0x006d, B:22:0x007b, B:24:0x0081, B:25:0x00ac, B:27:0x00b6, B:28:0x00bf, B:30:0x00c9, B:32:0x00d9, B:34:0x00dd, B:36:0x00e1, B:37:0x00e5, B:38:0x00f7, B:40:0x0101, B:41:0x010a, B:43:0x0114, B:44:0x011d, B:46:0x0127, B:48:0x0136, B:51:0x013d), top: B:56:0x0023 }] */
        /* JADX WARN: Code duplicated, block: B:17:0x0050 A[Catch: Exception -> 0x0143, TryCatch #0 {Exception -> 0x0143, blocks: (B:5:0x0023, B:7:0x002e, B:11:0x003a, B:13:0x003e, B:15:0x0046, B:17:0x0050, B:18:0x0065, B:20:0x006d, B:22:0x007b, B:24:0x0081, B:25:0x00ac, B:27:0x00b6, B:28:0x00bf, B:30:0x00c9, B:32:0x00d9, B:34:0x00dd, B:36:0x00e1, B:37:0x00e5, B:38:0x00f7, B:40:0x0101, B:41:0x010a, B:43:0x0114, B:44:0x011d, B:46:0x0127, B:48:0x0136, B:51:0x013d), top: B:56:0x0023 }] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            q qVar;
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
                                q qVar2 = q.this;
                                qVar2.f9372c0 = 1;
                                qVar2.f9370b0 = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                qVar = q.this;
                                qVar.f9372c0 = 1;
                                qVar.f9370b0 = 0;
                                if (u0.b.f17306a0 == 1) {
                                    qVar.f9380g0 = 255;
                                    o1.j.b(o1.l.a(), q.this.f9384i0, 1000L);
                                }
                                z2 = true;
                                break;
                        }
                    } else {
                        qVar = q.this;
                        qVar.f9372c0 = 1;
                        qVar.f9370b0 = 0;
                        if (u0.b.f17306a0 == 1) {
                            qVar.f9380g0 = 255;
                            o1.j.b(o1.l.a(), q.this.f9384i0, 1000L);
                        }
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!q.this.U.equals(extras.getString("NEXT_ROAD_NAME")) && extras.getString("NEXT_ROAD_NAME") != null) {
                        Log.d("LG", "NEXT_ROAD_NAME = " + q.this.U);
                        q.this.U = extras.getString("NEXT_ROAD_NAME");
                        q qVar3 = q.this;
                        qVar3.h3(229, qVar3.U);
                    }
                    if (q.this.W != extras.getInt("SEG_REMAIN_DIS")) {
                        q.this.W = extras.getInt("SEG_REMAIN_DIS");
                        z2 = true;
                    }
                    if (q.this.V != extras.getInt("ROUTE_REMAIN_DIS")) {
                        q.this.V = extras.getInt("ROUTE_REMAIN_DIS");
                        q qVar4 = q.this;
                        if (qVar4.f9372c0 == 0 && qVar4.V > 100 && u0.b.f17306a0 == 1) {
                            qVar4.f9372c0 = 1;
                            qVar4.f9370b0 = 1;
                        }
                        qVar4.Z = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (q.this.X != extras.getInt("CAR_DIRECTION")) {
                        q.this.X = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (q.this.Y != extras.getInt("ROUTE_REMAIN_TIME")) {
                        q.this.Y = extras.getInt("ROUTE_REMAIN_TIME");
                        z2 = true;
                    }
                    if (q.this.f9368a0 != extras.getInt("ICON")) {
                        q.this.f9368a0 = extras.getInt("ICON");
                        q qVar5 = q.this;
                        if (qVar5.f9368a0 >= 2) {
                            qVar5.f9372c0 = 1;
                            qVar5.f9370b0 = 1;
                        }
                        z2 = true;
                    }
                }
                if (z2) {
                    q.this.i3();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ r(q qVar, i iVar) {
            this();
        }
    }

    public static String O3(String str) {
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length);
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 + 1;
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\\') {
                i2 = i3 + 1;
                char cCharAt2 = str.charAt(i3);
                if (cCharAt2 == 'u') {
                    int i4 = 0;
                    int i5 = 0;
                    while (i4 < 4) {
                        int i6 = i2 + 1;
                        char cCharAt3 = str.charAt(i2);
                        switch (cCharAt3) {
                            case '0':
                            case '1':
                            case '2':
                            case '3':
                            case '4':
                            case '5':
                            case '6':
                            case '7':
                            case '8':
                            case '9':
                                i5 = ((i5 << 4) + cCharAt3) - 48;
                                break;
                            default:
                                switch (cCharAt3) {
                                    case 'A':
                                    case 'B':
                                    case 'C':
                                    case 'D':
                                    case 'E':
                                    case 'F':
                                        i5 = (((i5 << 4) + 10) + cCharAt3) - 65;
                                        break;
                                    default:
                                        switch (cCharAt3) {
                                            case 'a':
                                            case 'b':
                                            case 'c':
                                            case 'd':
                                            case 'e':
                                            case 'f':
                                                i5 = (((i5 << 4) + 10) + cCharAt3) - 97;
                                                break;
                                            default:
                                                throw new IllegalArgumentException("Malformed   \\uxxxx   encoding.");
                                        }
                                        break;
                                }
                                break;
                        }
                        i4++;
                        i2 = i6;
                    }
                    stringBuffer.append((char) i5);
                } else {
                    if (cCharAt2 == 't') {
                        cCharAt2 = '\t';
                    } else if (cCharAt2 == 'r') {
                        cCharAt2 = '\r';
                    } else if (cCharAt2 == 'n') {
                        cCharAt2 = '\n';
                    } else if (cCharAt2 == 'f') {
                        cCharAt2 = '\f';
                    }
                    stringBuffer.append(cCharAt2);
                }
            } else {
                stringBuffer.append(cCharAt);
                i2 = i3;
            }
        }
        return stringBuffer.toString();
    }

    public static void a3() {
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        byte b6;
        byte b7;
        byte b8;
        int i2 = 0;
        if (nt.f8637c == 2) {
            int[] iArr = new int[15];
            for (int i3 = 0; i3 < 15; i3++) {
                iArr[i3] = 32;
            }
            iArr[0] = 13;
            iArr[1] = 146;
            iArr[2] = b3();
            int i4 = u0.b.D;
            if (i4 == 1) {
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
            } else if (i4 != 4) {
                if (i4 != 6) {
                    if ((i4 == 8 || i4 == 9) && u0.b.s3 != 0) {
                        iArr[3] = 84;
                        int i8 = u0.b.r3 % 10000;
                        int i9 = i8 / 1000;
                        if (i9 > 0) {
                            iArr[3] = i9 + 48;
                            b4 = (byte) 1;
                        } else {
                            b4 = 0;
                        }
                        int i10 = i8 % 1000;
                        int i11 = i10 / 100;
                        if (i11 > 0) {
                            iArr[b4 + 4] = i11 + 48;
                            b4 = (byte) (b4 + 1);
                        }
                        int i12 = i10 % 100;
                        int i13 = i12 / 10;
                        if (i13 > 0) {
                            iArr[b4 + 4] = i13 + 48;
                            b4 = (byte) (b4 + 1);
                        }
                        int i14 = i12 % 10;
                        if (i14 > 0) {
                            iArr[b4 + 4] = (i14 / 1) + 48;
                        }
                        int i15 = u0.b.t3;
                        int i16 = (i15 / 60) % 60;
                        iArr[10] = (i16 / 10) + 48;
                        iArr[11] = (i16 % 10) + 48;
                        iArr[12] = 58;
                        int i17 = i15 % 60;
                        iArr[13] = (i17 / 10) + 48;
                        iArr[14] = (i17 % 10) + 48;
                    }
                } else if (d1.d.f1570c == 1) {
                    int i18 = d1.d.f1572e;
                    if (i18 / 10 > 0) {
                        iArr[3] = (i18 / 10) + 48;
                    }
                    iArr[4] = (i18 % 10) + 48;
                    iArr[5] = 45;
                    int i19 = d1.d.f1571d / 100;
                    int i20 = i19 / 10000;
                    if (i20 > 0) {
                        iArr[6] = i20 + 48;
                    }
                    iArr[7] = ((i19 % 10000) / 1000) + 48;
                    iArr[8] = ((i19 % 1000) / 100) + 48;
                    iArr[9] = 46;
                    iArr[10] = ((i19 % 100) / 10) + 48;
                    iArr[11] = ((i19 % 10) / 1) + 48;
                    iArr[12] = 77;
                    iArr[13] = 104;
                    iArr[14] = 122;
                }
            } else if (o0.e.C != 0) {
                iArr[3] = 84;
                int i21 = o0.e.B % 10000;
                int i22 = i21 / 1000;
                if (i22 > 0) {
                    iArr[3] = i22 + 48;
                    b2 = (byte) 1;
                } else {
                    b2 = 0;
                }
                int i23 = i21 % 1000;
                int i24 = i23 / 100;
                if (i24 > 0) {
                    iArr[b2 + 4] = i24 + 48;
                    b2 = (byte) (b2 + 1);
                }
                int i25 = i23 % 100;
                int i26 = i25 / 10;
                if (i26 > 0) {
                    iArr[b2 + 4] = i26 + 48;
                    b2 = (byte) (b2 + 1);
                }
                int i27 = i25 % 10;
                if (i27 > 0) {
                    iArr[b2 + 4] = (i27 / 1) + 48;
                }
                int i28 = o0.e.f16794r;
                int i29 = (i28 / 60) % 60;
                int i30 = i29 / 10;
                if (i30 > 0) {
                    iArr[10] = i30 + 48;
                    b3 = (byte) 1;
                } else {
                    b3 = 0;
                }
                int i31 = i29 % 10;
                if (i31 > 0) {
                    iArr[b3 + 10] = i31 + 48;
                    b3 = (byte) (b3 + 1);
                }
                iArr[b3 + 10] = 58;
                byte b9 = (byte) (b3 + 1);
                int i32 = i28 % 60;
                int i33 = i32 / 10;
                if (i33 > 0) {
                    iArr[b9 + 10] = i33 + 48;
                    b9 = (byte) (b9 + 1);
                }
                int i34 = i32 % 10;
                if (i34 > 0) {
                    iArr[b9 + 10] = i34 + 48;
                }
            }
            int[] iArr2 = new int[16];
            iArr2[0] = 227;
            while (i2 < 15) {
                int i35 = i2 + 1;
                iArr2[i35] = (byte) iArr[i2];
                i2 = i35;
            }
            z.k.s(iArr2);
            return;
        }
        int[] iArr3 = new int[27];
        for (int i36 = 0; i36 < 27; i36++) {
            iArr3[i36] = 32;
        }
        iArr3[0] = 25;
        iArr3[1] = 146;
        iArr3[2] = b3();
        switch (u0.b.D) {
            case 1:
                int i37 = w0.d.f17796h;
                if (i37 - 65536 == 0 || 1 == i37 - 65536 || 2 == i37 - 65536) {
                    if (i37 - 65536 == 0) {
                        byte b10 = (byte) 1;
                        iArr3[3] = 70;
                        byte b11 = (byte) (b10 + 1);
                        iArr3[b10 + 3] = 77;
                        b5 = (byte) (b11 + 1);
                        iArr3[b11 + 3] = 49;
                    } else if (1 == i37 - 65536) {
                        byte b12 = (byte) 1;
                        iArr3[3] = 70;
                        byte b13 = (byte) (b12 + 1);
                        iArr3[b12 + 3] = 77;
                        b5 = (byte) (b13 + 1);
                        iArr3[b13 + 3] = 50;
                    } else {
                        byte b14 = (byte) 1;
                        iArr3[3] = 70;
                        byte b15 = (byte) (b14 + 1);
                        iArr3[b14 + 3] = 77;
                        b5 = (byte) (b15 + 1);
                        iArr3[b15 + 3] = 50;
                    }
                    byte b16 = (byte) (b5 + 1);
                    iArr3[b5 + 3] = 32;
                    int i38 = w0.d.f17798j;
                    if ((i38 & 255) % 6 != 0 || (i38 & 255) == 0) {
                        iArr3[b16 + 3] = ((i38 & 255) % 6) + 48;
                        b6 = (byte) (b16 + 1);
                    } else {
                        b6 = (byte) (b16 + 1);
                        iArr3[b16 + 3] = 54;
                    }
                    byte b17 = (byte) (b6 + 1);
                    iArr3[b6 + 3] = 32;
                    byte b18 = (byte) (b17 + 1);
                    int i39 = b17 + 3;
                    int i40 = w0.d.f17797i;
                    iArr3[i39] = i40 / 10000 == 0 ? (i40 / 10000) + 32 : (i40 / 10000) + 48;
                    byte b19 = (byte) (b18 + 1);
                    iArr3[b18 + 3] = ((i40 % 10000) / 1000) + 48;
                    byte b20 = (byte) (b19 + 1);
                    iArr3[b19 + 3] = ((i40 % 1000) / 100) + 48;
                    byte b21 = (byte) (b20 + 1);
                    iArr3[b20 + 3] = 46;
                    byte b22 = (byte) (b21 + 1);
                    iArr3[b21 + 3] = ((i40 % 100) / 10) + 48;
                    byte b23 = (byte) (b22 + 1);
                    iArr3[b22 + 3] = (i40 % 10) + 48;
                    byte b24 = (byte) (b23 + 1);
                    iArr3[b23 + 3] = 32;
                    byte b25 = (byte) (b24 + 1);
                    iArr3[b24 + 3] = 77;
                    iArr3[b25 + 3] = 72;
                    iArr3[((byte) (b25 + 1)) + 3] = 90;
                } else {
                    if (i37 - 0 == 0) {
                        byte b26 = (byte) 1;
                        iArr3[3] = 65;
                        byte b27 = (byte) (b26 + 1);
                        iArr3[b26 + 3] = 77;
                        b7 = (byte) (b27 + 1);
                        iArr3[b27 + 3] = 49;
                    } else {
                        byte b28 = (byte) 1;
                        iArr3[3] = 65;
                        byte b29 = (byte) (b28 + 1);
                        iArr3[b28 + 3] = 77;
                        b7 = (byte) (b29 + 1);
                        iArr3[b29 + 3] = 50;
                    }
                    byte b30 = (byte) (b7 + 1);
                    iArr3[b7 + 3] = 32;
                    int i41 = w0.d.f17798j;
                    if ((i41 & 255) % 6 != 0 || (i41 & 255) == 0) {
                        iArr3[b30 + 3] = ((i41 & 255) % 6) + 48;
                        b8 = (byte) (b30 + 1);
                    } else {
                        b8 = (byte) (b30 + 1);
                        iArr3[b30 + 3] = 54;
                    }
                    byte b31 = (byte) (b8 + 1);
                    iArr3[b8 + 3] = 32;
                    byte b32 = (byte) (b31 + 1);
                    int i42 = b31 + 3;
                    int i43 = w0.d.f17797i;
                    iArr3[i42] = i43 / 10000 == 0 ? (i43 / 10000) + 32 : (i43 / 10000) + 48;
                    byte b33 = (byte) (b32 + 1);
                    iArr3[b32 + 3] = (i43 % 10000) / 1000 == 0 ? ((i43 % 10000) / 1000) + 32 : ((i43 % 10000) / 1000) + 48;
                    byte b34 = (byte) (b33 + 1);
                    iArr3[b33 + 3] = ((i43 % 1000) / 100) + 48;
                    byte b35 = (byte) (b34 + 1);
                    iArr3[b34 + 3] = ((i43 % 100) / 10) + 48;
                    byte b36 = (byte) (b35 + 1);
                    iArr3[b35 + 3] = (i43 % 10) + 48;
                    byte b37 = (byte) (b36 + 1);
                    iArr3[b36 + 3] = 32;
                    byte b38 = (byte) (b37 + 1);
                    iArr3[b37 + 3] = 75;
                    iArr3[b38 + 3] = 72;
                    iArr3[((byte) (b38 + 1)) + 3] = 90;
                }
                break;
            case 2:
                byte b39 = (byte) 1;
                iArr3[3] = 32;
                byte b40 = (byte) (b39 + 1);
                iArr3[b39 + 3] = 66;
                byte b41 = (byte) (b40 + 1);
                iArr3[b40 + 3] = 84;
                byte b42 = (byte) (b41 + 1);
                iArr3[b41 + 3] = 32;
                byte b43 = (byte) (b42 + 1);
                iArr3[b42 + 3] = 80;
                byte b44 = (byte) (b43 + 1);
                iArr3[b43 + 3] = 72;
                byte b45 = (byte) (b44 + 1);
                iArr3[b44 + 3] = 79;
                byte b46 = (byte) (b45 + 1);
                iArr3[b45 + 3] = 78;
                iArr3[b46 + 3] = 69;
                iArr3[((byte) (b46 + 1)) + 3] = 32;
                break;
            case 3:
                byte b47 = (byte) 1;
                iArr3[3] = 32;
                byte b48 = (byte) (b47 + 1);
                iArr3[b47 + 3] = 66;
                byte b49 = (byte) (b48 + 1);
                iArr3[b48 + 3] = 84;
                byte b50 = (byte) (b49 + 1);
                iArr3[b49 + 3] = 32;
                byte b51 = (byte) (b50 + 1);
                iArr3[b50 + 3] = 65;
                iArr3[b51 + 3] = 86;
                iArr3[((byte) (b51 + 1)) + 3] = 32;
                break;
            case 4:
                if (o0.e.C != 0) {
                    byte b52 = (byte) 1;
                    iArr3[3] = 77;
                    byte b53 = (byte) (b52 + 1);
                    iArr3[b52 + 3] = 69;
                    byte b54 = (byte) (b53 + 1);
                    iArr3[b53 + 3] = 68;
                    byte b55 = (byte) (b54 + 1);
                    iArr3[b54 + 3] = 73;
                    iArr3[b55 + 3] = 65;
                    iArr3[((byte) (b55 + 1)) + 3] = 32;
                    int i44 = o0.e.B % 10000;
                    iArr3[9] = (i44 / 1000) + 48;
                    int i45 = (i44 % 100) / 10;
                    int i46 = i44 % 1000;
                    if (i45 != 0) {
                        i46 /= 10;
                    }
                    iArr3[10] = i46 + 48;
                    iArr3[11] = i45 + 48;
                    iArr3[12] = (i44 % 10) + 48;
                    int i47 = o0.e.f16794r;
                    int i48 = (i47 / 60) % 60;
                    iArr3[13] = 32;
                    iArr3[14] = (i48 / 10) + 48;
                    iArr3[15] = (i48 % 10) + 48;
                    iArr3[16] = 32;
                    int i49 = i47 % 60;
                    iArr3[17] = (i49 / 10) + 48;
                    iArr3[18] = (i49 % 10) + 48;
                }
                break;
            case 5:
                byte b56 = (byte) 1;
                iArr3[3] = 32;
                byte b57 = (byte) (b56 + 1);
                iArr3[b56 + 3] = 65;
                byte b58 = (byte) (b57 + 1);
                iArr3[b57 + 3] = 85;
                iArr3[b58 + 3] = 88;
                iArr3[((byte) (b58 + 1)) + 3] = 32;
                break;
            case 6:
                if (d1.d.f1570c == 1) {
                    byte b59 = (byte) 1;
                    iArr3[3] = 84;
                    byte b60 = (byte) (b59 + 1);
                    iArr3[b59 + 3] = 86;
                    byte b61 = (byte) (b60 + 1);
                    iArr3[b60 + 3] = 32;
                    int i50 = d1.d.f1572e;
                    if (i50 / 10 > 0) {
                        iArr3[b61 + 3] = (i50 / 10) + 48;
                        b61 = (byte) (b61 + 1);
                    }
                    byte b62 = (byte) (b61 + 1);
                    iArr3[b61 + 3] = (i50 % 10) + 48;
                    byte b63 = (byte) (b62 + 1);
                    iArr3[b62 + 3] = 45;
                    int i51 = d1.d.f1571d / 100;
                    int i52 = i51 / 10000;
                    if (i52 > 0) {
                        iArr3[b63 + 3] = i52 + 48;
                        b63 = (byte) (b63 + 1);
                    }
                    byte b64 = (byte) (b63 + 1);
                    iArr3[b63 + 3] = ((i51 % 10000) / 1000) + 48;
                    byte b65 = (byte) (b64 + 1);
                    iArr3[b64 + 3] = ((i51 % 1000) / 100) + 48;
                    byte b66 = (byte) (b65 + 1);
                    iArr3[b65 + 3] = 46;
                    byte b67 = (byte) (b66 + 1);
                    iArr3[b66 + 3] = ((i51 % 100) / 10) + 48;
                    byte b68 = (byte) (b67 + 1);
                    iArr3[b67 + 3] = ((i51 % 10) / 1) + 48;
                    byte b69 = (byte) (b68 + 1);
                    iArr3[b68 + 3] = 77;
                    iArr3[b69 + 3] = 104;
                    iArr3[((byte) (b69 + 1)) + 3] = 122;
                }
                break;
            case 7:
                byte b70 = (byte) 1;
                iArr3[3] = 32;
                byte b71 = (byte) (b70 + 1);
                iArr3[b70 + 3] = 73;
                byte b72 = (byte) (b71 + 1);
                iArr3[b71 + 3] = 80;
                byte b73 = (byte) (b72 + 1);
                iArr3[b72 + 3] = 79;
                iArr3[b73 + 3] = 68;
                iArr3[((byte) (b73 + 1)) + 3] = 32;
                break;
            case 8:
            case 9:
                if (u0.b.s3 != 0) {
                    byte b74 = (byte) 1;
                    iArr3[3] = 77;
                    byte b75 = (byte) (b74 + 1);
                    iArr3[b74 + 3] = 69;
                    byte b76 = (byte) (b75 + 1);
                    iArr3[b75 + 3] = 68;
                    byte b77 = (byte) (b76 + 1);
                    iArr3[b76 + 3] = 73;
                    iArr3[b77 + 3] = 65;
                    iArr3[((byte) (b77 + 1)) + 3] = 32;
                    int i53 = u0.b.r3 % 10000;
                    iArr3[9] = (i53 / 1000) + 48;
                    int i54 = (i53 % 100) / 10;
                    int i55 = i53 % 1000;
                    if (i54 != 0) {
                        i55 /= 10;
                    }
                    iArr3[10] = i55 + 48;
                    iArr3[11] = i54 + 48;
                    iArr3[12] = (i53 % 10) + 48;
                    int i56 = u0.b.t3;
                    int i57 = (i56 / 60) % 60;
                    iArr3[13] = 32;
                    iArr3[14] = (i57 / 10) + 48;
                    iArr3[15] = (i57 % 10) + 48;
                    iArr3[16] = 32;
                    int i58 = i56 % 60;
                    iArr3[17] = (i58 / 10) + 48;
                    iArr3[18] = (i58 % 10) + 48;
                }
                break;
        }
        int[] iArr4 = new int[28];
        iArr4[0] = 227;
        while (i2 < 27) {
            int i59 = i2 + 1;
            iArr4[i59] = (byte) iArr3[i2];
            i2 = i59;
        }
        z.k.s(iArr4);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:31:0x0049  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static int b3() {
        int i2 = 2;
        switch (u0.b.D) {
            case 0:
                i2 = 9;
                break;
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
            case 3:
                i2 = 10;
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

    public final void F3(String str) {
        if (str == null) {
            if (this.f9410v0 != str) {
                this.f9410v0 = str;
            }
        } else {
            if (str.equals(this.f9410v0)) {
                return;
            }
            this.f9410v0 = str;
        }
    }

    public final int G3(int i2) {
        if (i2 < 0) {
            return 0;
        }
        if (i2 > 8) {
            return 8;
        }
        return i2;
    }

    public final void H3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[28];
        byte[] bytes = str.getBytes();
        iArr[0] = 227;
        iArr[1] = 25;
        iArr[2] = b2;
        int length = bytes.length <= 24 ? bytes.length : 24;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 4] = bytes[i2];
        }
        if (u0.b.D == 3 && (b2 & 255) == 147) {
            return;
        }
        z.k.s(iArr);
    }

    public final void I3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[29];
        byte[] bytes = str.getBytes();
        iArr[0] = 227;
        iArr[1] = 26;
        iArr[2] = b2;
        iArr[3] = 0;
        iArr[4] = 0;
        int length = bytes.length <= 24 ? bytes.length : 24;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 5] = bytes[i2];
        }
        z.k.s(iArr);
    }

    public final void J3() {
        if (qt.i0().equals("com.syu.carinfo.golf7.Golf7FunctionalHybridDrivingInfo1Acti")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.golf7.Golf7FunctionalHybridDrivingInfo1Acti");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void K3(int i2) {
        A0 = i2;
        if (i2 == 4) {
            A0 = 9;
        }
        z.k.s(227, 2, -14, (byte) A0, -1);
        int iB = this.f9381h.b(1, 0);
        int i3 = A0;
        if (iB != i3) {
            this.f9381h.g(1, i3);
        }
    }

    public final void L3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 4) {
            i2 = 4;
        }
        D0 = i2;
        qt.y0(183, i2);
        int iB = this.f9381h.b(3, 0);
        int i3 = D0;
        if (iB != i3) {
            this.f9381h.g(3, i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final void M3(int i2) {
        B0 = i2;
        qt.y0(207, i2);
        int iB = this.f9381h.b(2, 0);
        int i3 = B0;
        if (iB != i3) {
            this.f9381h.g(2, i3);
        }
    }

    public final void N3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 6) {
            i2 = 6;
        }
        this.f9416y0 = i2;
        qt.y0(295, i2);
        int iB = this.f9381h.b(5, 0);
        int i3 = this.f9416y0;
        if (iB != i3) {
            this.f9381h.g(5, i3);
        }
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        if (i2 == 33) {
            if (iArr[1] != 0) {
                if (nt.f8645g[10] == 0) {
                    f3(2, 1);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[10] == 1) {
                    f3(2, 0);
                    return;
                }
                return;
            }
        }
        if (i2 == 39) {
            int i3 = iArr[1];
            if (i3 == -2) {
                int i4 = this.f9373d;
                if (i4 > 0) {
                    this.f9373d = i4 - 1;
                }
            } else if (i3 != -1) {
                int i5 = iArr[1];
                this.f9373d = i5;
                if (i5 > 7) {
                    this.f9373d = 7;
                }
                if (this.f9373d < 0) {
                    this.f9373d = 0;
                }
            } else {
                int i6 = this.f9373d;
                if (i6 < 7) {
                    this.f9373d = i6 + 1;
                }
            }
            f3(23, this.f9373d);
            return;
        }
        int i7 = 32;
        if (i2 == 41) {
            if (iArr[1] != 0) {
                int i8 = this.f9369b;
                if (i8 == 254 || i8 < 32) {
                    this.f9369b = 32;
                } else if (i8 >= 59) {
                    this.f9369b = 255;
                } else {
                    this.f9369b = i8 + 1;
                }
            } else {
                int i9 = this.f9369b;
                if (i9 == 255 || (i9 < 254 && i9 > 59)) {
                    this.f9369b = 59;
                } else if (i9 == 254 || i9 < 32) {
                    this.f9369b = 254;
                } else {
                    this.f9369b = i9 - 1;
                }
            }
            f3(20, this.f9369b);
            return;
        }
        if (i2 != 42) {
            if (i2 == 55) {
                int i10 = iArr[1] & 255;
                if ((iArr[1] & 255) != 254 && (iArr[1] & 255) >= 16) {
                    i7 = (iArr[1] & 255) >= 30 ? 255 : i10 * 2;
                }
                f3(20, i7);
                return;
            }
            if (i2 != 56) {
                return;
            }
            int i11 = iArr[1] & 255;
            if ((iArr[1] & 255) != 254 && (iArr[1] & 255) >= 16) {
                i7 = (iArr[1] & 255) >= 30 ? 255 : i11 * 2;
            }
            f3(21, i7);
            return;
        }
        if (iArr[1] != 0) {
            int i12 = this.f9371c;
            if (i12 == 254 || i12 < 32) {
                this.f9371c = 32;
            } else if (i12 >= 59) {
                this.f9371c = 255;
            } else {
                this.f9371c = i12 + 1;
            }
        } else {
            int i13 = this.f9371c;
            if (i13 == 255 || (i13 < 254 && i13 > 59)) {
                this.f9371c = 59;
            } else if (i13 == 254 || i13 < 32) {
                this.f9371c = 254;
            } else {
                this.f9371c = i13 - 1;
            }
        }
        f3(21, this.f9371c);
    }

    public final void P3(String str) {
        byte[] bArr = new byte[28];
        if (str == null) {
            int[] iArr = new int[28];
            iArr[0] = -29;
            iArr[1] = 25;
            iArr[2] = -106;
            for (int i2 = 0; i2 < 24; i2++) {
                iArr[4 + i2] = 0;
            }
            z.k.s(iArr);
            return;
        }
        byte[] bytes = str.getBytes();
        int length = bytes.length <= 24 ? bytes.length : 24;
        for (int i3 = 0; i3 < length; i3++) {
            bArr[i3] = bytes[i3];
        }
        for (int i4 = length; i4 < 28; i4++) {
            bArr[i4] = 0;
        }
        int[] iArr2 = new int[28];
        iArr2[0] = -29;
        iArr2[1] = 25;
        iArr2[2] = -106;
        for (int i5 = 0; i5 < length; i5++) {
            iArr2[4 + i5] = bArr[i5];
        }
        z.k.s(iArr2);
    }

    @Override // k0.lt
    public void S2() {
        this.f9381h.a();
        int i2 = nt.f8637c;
        if (i2 == 6 || i2 == 7) {
            this.f9406t0 = true;
            qt.z(this.f9404s0);
        } else {
            qt.z(this.f9402r0);
        }
        z.k.s(227, 2, 10, 1, 49);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
        u0.c.f17388o.a(this.f9386j0, 1);
        u0.c.f17389p.a(this.f9390l0, 1);
        h0.d.f2464c.a(this.f9396o0, 1);
        o1.y yVar = h0.d.f2462a;
        yVar.a(this.f9392m0, 1);
        yVar.a(this.f9396o0, 1);
        h0.d.f2468g.a(this.f9396o0, 1);
        o1.y yVar2 = u0.c.f17386m;
        yVar2.a(this.S, 1);
        o1.y yVar3 = u0.c.f17374a;
        yVar3.a(this.S, 1);
        u0.c.f17379f.a(this.S, 1);
        o1.h.f16865a.a(this.f9384i0, 1);
        K3(this.f9381h.b(1, 0));
        M3(this.f9381h.b(2, 0));
        L3(this.f9381h.b(3, 0));
        N3(this.f9381h.b(5, 0));
        this.J = new r(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
        App.c().registerReceiver(this.J, intentFilter);
        i3();
        u0.c.f17390q.a(this.f9388k0, 1);
        yVar2.a(this.f9400q0, 1);
        h0.d.f2466e.a(this.f9400q0, 1);
        h0.d.f2467f.a(this.P, 1);
        h0.d.f2469h.a(this.P, 1);
        qt.z(this.G);
        qt.z(this.P);
        qt.z(this.f9388k0);
        qt.z(this.f9386j0);
        qt.z(this.f9390l0);
        o1.y yVar4 = w0.e.f17815a;
        yVar4.a(this.P, 1);
        o1.y yVar5 = w0.e.f17819e;
        yVar5.a(this.P, 1);
        y0.g.f18094d.a(this.P, 1);
        y0.g.f18095e.a(this.P, 1);
        yVar4.a(this.G, 1);
        yVar5.a(this.G, 1);
        yVar3.a(this.G, 1);
        yVar3.a(this.f9388k0, 1);
        yVar3.a(this.f9386j0, 1);
        yVar3.a(this.f9390l0, 1);
        switch (nt.f8637c) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 9:
            case 10:
            case 11:
                this.f7886a.f8314i = 1;
                break;
            case 6:
            case 7:
                mt mtVar2 = this.f7886a;
                mtVar2.f8314i = 0;
                mtVar2.f8310e = 0;
                mtVar2.f8311f = 0;
                this.f9403s = 9;
                l0.b0.b(this.O);
                String str = SystemProperties.get("ro.client.foreign", "false");
                f9367z0 = str;
                if (str != null && str.equals("true")) {
                    qt.y0(293, 1);
                } else {
                    qt.y0(293, 0);
                }
                break;
            case 8:
            default:
                this.f7886a.f8314i = 1;
                break;
        }
        mt mtVar3 = this.f7886a;
        mtVar3.f8320o = 1;
        mtVar3.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 66, 55, 56};
    }

    /* JADX WARN: Code duplicated, block: B:169:0x0cf7 A[PHI: r2
  0x0cf7: PHI (r2v212 int A[IMMUTABLE_TYPE]) = (r2v210 int), (r2v210 int), (r2v210 int), (r2v210 int), (r2v210 int), (r2v214 int) binds: [B:168:0x0cf5, B:165:0x0cef, B:162:0x0ce9, B:159:0x0ce3, B:156:0x0cdd, B:151:0x0cd5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:415:0x19f5  */
    /* JADX WARN: Code duplicated, block: B:447:0x1b8c  */
    /* JADX WARN: Code duplicated, block: B:450:0x1bd9  */
    /* JADX WARN: Code duplicated, block: B:452:0x1bdc  */
    /* JADX WARN: Code duplicated, block: B:454:0x1bdf  */
    /* JADX WARN: Code duplicated, block: B:456:0x1be2  */
    /* JADX WARN: Code duplicated, block: B:457:0x1be4  */
    /* JADX WARN: Code duplicated, block: B:459:0x1be7  */
    /* JADX WARN: Code duplicated, block: B:462:0x1c20  */
    /* JADX WARN: Code duplicated, block: B:464:0x1c29  */
    /* JADX WARN: Code duplicated, block: B:465:0x1c33  */
    /* JADX WARN: Code duplicated, block: B:614:? A[ADDED_TO_REGION, REMOVE, RETURN, SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:428:0x1b1b. Please report as an issue. */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        byte b2;
        int[][] iArr;
        char c2;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        byte b3 = bArr[i2 + 1];
        if (b3 == -63) {
            int i31 = i2 + 3;
            qt.y0(180, (bArr[i31] & 128) >> 7);
            int i32 = i2 + 2;
            qt.y0(231, ((128 & bArr[i32]) << 1) | ((bArr[i31] >> 7) & 1));
            qt.y0(178, ((bArr[i32] & 64) << 2) | ((bArr[i31] & 64) >> 6));
            qt.y0(181, ((bArr[i32] & 64) << 2) | ((bArr[i31] & 64) >> 6));
            qt.y0(163, ((bArr[i32] & 32) << 3) | ((bArr[i31] & 32) >> 5));
            this.C = (bArr[i31] & 32) >> 5;
            qt.y0(164, ((bArr[i32] & 16) << 4) | ((bArr[i31] & 24) >> 3));
            qt.y0(165, ((bArr[i32] & 8) << 5) | ((bArr[i31] & 6) >> 1));
            qt.y0(166, ((bArr[i32] & 4) << 6) | ((bArr[i2 + 4] & 192) >> 6));
            qt.y0(304, ((bArr[i32] & 2) << 7) | ((bArr[i31] & 1) >> 0));
            int[] iArr2 = new int[1];
            iArr2[0] = (bArr[i31] & 32) != 0 ? 0 : 1;
            qt.y0(174, iArr2);
        }
        if (b3 == -24) {
            int i33 = nt.f8637c;
            if (i33 == 11 || i33 == 21) {
                this.K = 0;
                int i34 = (bArr[i2 + 2] >> 1) & 1;
                this.L = i34;
                this.M = 0;
                this.N = 0;
                switch (bArr[i2 + 8] & 255) {
                    case 1:
                        this.N = 0;
                        break;
                    case 2:
                        this.N = 3;
                        break;
                    case 3:
                        this.N = 2;
                        break;
                    case 4:
                        this.N = 0;
                        break;
                    case 5:
                        this.N = 1;
                        break;
                    case 6:
                        this.N = 2;
                        break;
                    case 7:
                        this.N = 3;
                        break;
                    case 8:
                        this.N = 5;
                        break;
                    case 9:
                        this.N = 4;
                        break;
                    case 10:
                        this.N = 6;
                        break;
                }
                int i35 = i2 + 7;
                int i36 = bArr[i35] & 255;
                switch (i36) {
                    case 17:
                        i4 = 7;
                        i5 = 4;
                        this.M = 4;
                        break;
                    case 18:
                        i4 = 7;
                        this.M = 5;
                        i5 = 4;
                        break;
                    case 19:
                        i4 = 7;
                        this.M = 6;
                        i5 = 4;
                        break;
                    case 20:
                        i4 = 7;
                        this.M = 7;
                        i5 = 4;
                        break;
                    default:
                        switch (i36) {
                            case 33:
                                this.M = 0;
                                break;
                            case 34:
                                this.M = 2;
                                break;
                            case 35:
                                this.M = 1;
                                break;
                            case 36:
                                this.M = 3;
                                break;
                        }
                        i4 = 7;
                        i5 = 4;
                        break;
                }
                int i37 = ((i34 << i4) & 128) | ((this.M << i5) & 112) | (this.N & 15);
                this.K = i37;
                qt.y0(Process.MEDIA_UID, i37);
                if ((bArr[i35] & 255) != 0) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
                int i38 = this.M;
                if (i38 != 4 && i38 != 5 && i38 != 6 && i38 != 7) {
                    int i39 = this.L;
                    if (i39 == 1) {
                        if (u0.b.G == 0) {
                            u0.d.F(1);
                        }
                    } else if (i39 == 0 && u0.b.G == 1) {
                        u0.d.F(0);
                    }
                } else if (u0.b.G == 1) {
                    u0.d.F(0);
                }
            } else {
                int i40 = i2 + 3;
                int i41 = bArr[i40] & 255;
                int i42 = i41 == 0 ? 255 : i41;
                if ((bArr[i40] & 255) == 9) {
                    i7 = 1;
                    i6 = 4;
                } else {
                    i6 = i42;
                    i7 = 1;
                }
                int[] iArr3 = new int[i7];
                iArr3[0] = i6 - 1;
                qt.y0(Process.MEDIA_UID, iArr3);
            }
            byte b4 = bArr[i2 + 4];
            byte b5 = bArr[i2 + 5];
            byte b6 = bArr[i2 + 6];
            qt.y0(267, b4);
            qt.y0(268, b5);
            qt.y0(266, b6);
            return;
        }
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 49) {
            int i43 = i2 + 2;
            byte b7 = bArr[i43];
            int i44 = (bArr[i43] >> 7) & 1;
            if (this.f9414x0 != i44) {
                this.f9414x0 = i44;
                if (i44 != 1) {
                    i8 = 0;
                    if (qt.i0().equals("com.syu.carinfo.golf7.AirControlMQB_WC_Front")) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                    }
                } else if (qt.i0().equals("com.syu.carinfo.golf7.AirControlMQB_WC_Front")) {
                    i8 = 0;
                } else {
                    i8 = 0;
                    l0.b0.l0(62, 0);
                    l0.b0.l0(62, 1);
                }
            } else {
                i8 = 0;
            }
            int[] iArr4 = new int[1];
            iArr4[i8] = (b7 >> 6) & 1;
            qt.y0(10, iArr4);
            int[] iArr5 = new int[1];
            iArr5[i8] = (b7 >> 5) & 1;
            qt.y0(53, iArr5);
            int[] iArr6 = new int[1];
            iArr6[i8] = (b7 >> 4) & 1;
            qt.y0(38, iArr6);
            int[] iArr7 = new int[1];
            iArr7[i8] = (b7 >> 3) & 1;
            qt.y0(13, iArr7);
            int[] iArr8 = new int[1];
            iArr8[i8] = (b7 >> 2) & 1;
            qt.y0(62, iArr8);
            int[] iArr9 = new int[1];
            iArr9[i8] = (b7 >> 1) & 1;
            qt.y0(43, iArr9);
            byte b8 = bArr[i2 + 3];
            int[] iArr10 = new int[1];
            iArr10[i8] = (b8 >> 7) & 1;
            qt.y0(67, iArr10);
            int[] iArr11 = new int[1];
            iArr11[i8] = (b8 >> 6) & 1;
            qt.y0(11, iArr11);
            int[] iArr12 = new int[1];
            iArr12[i8] = ((b8 >> 5) & 1) == 0 ? 1 : i8;
            qt.y0(37, iArr12);
            int[] iArr13 = new int[1];
            iArr13[i8] = (b8 >> 4) & 1;
            qt.y0(12, iArr13);
            int[] iArr14 = new int[1];
            iArr14[i8] = (b8 >> 2) & 3;
            qt.y0(89, iArr14);
            int[] iArr15 = new int[1];
            iArr15[i8] = b8 & 3;
            qt.y0(88, iArr15);
            byte b9 = bArr[i2 + 4];
            int[] iArr16 = new int[1];
            iArr16[i8] = (b9 >> 0) & 3;
            qt.y0(29, iArr16);
            int[] iArr17 = new int[1];
            iArr17[i8] = (b9 >> 2) & 3;
            qt.y0(30, iArr17);
            int[] iArr18 = new int[1];
            iArr18[i8] = (b9 >> 4) & 3;
            qt.y0(31, iArr18);
            int[] iArr19 = new int[1];
            iArr19[i8] = (b9 >> 6) & 3;
            qt.y0(32, iArr19);
            byte b10 = bArr[i2 + 5];
            int[] iArr20 = new int[1];
            iArr20[i8] = (b10 >> 6) & 3;
            qt.y0(69, iArr20);
            int[] iArr21 = new int[1];
            iArr21[i8] = (b10 >> 5) & 1;
            qt.y0(76, iArr21);
            int[] iArr22 = new int[1];
            iArr22[i8] = (b10 >> 4) & 1;
            qt.y0(66, iArr22);
            int[] iArr23 = new int[1];
            iArr23[i8] = (b10 >> 3) & 1;
            qt.y0(55, iArr23);
            int[] iArr24 = new int[1];
            iArr24[i8] = (b10 >> 2) & 1;
            qt.y0(65, iArr24);
            int[] iArr25 = new int[1];
            iArr25[i8] = (b10 >> 1) & 1;
            qt.y0(17, iArr25);
            byte b11 = bArr[i2 + 6];
            if (b11 != 1) {
                if (b11 != 3) {
                    if (b11 != 5) {
                        if (b11 != 6) {
                            switch (b11) {
                                case 11:
                                    i9 = 0;
                                    i12 = 1;
                                    i11 = 0;
                                    i10 = 0;
                                    break;
                                case 12:
                                    i9 = 0;
                                    i12 = 1;
                                    break;
                                case 13:
                                    i9 = 0;
                                    i12 = 1;
                                    break;
                                case 14:
                                    i9 = 0;
                                    i12 = 1;
                                    break;
                                default:
                                    i9 = 0;
                                    break;
                            }
                            qt.y0(49, i9);
                            qt.y0(18, i12);
                            qt.y0(19, i11);
                            qt.y0(20, i10);
                            int i45 = i2 + 7;
                            qt.y0(21, bArr[i45] & 255);
                            this.f9373d = bArr[i45] & 255;
                            i13 = i2 + 8;
                            i14 = bArr[i13] & 255;
                            i15 = i2 + 9;
                            i16 = bArr[i15] & 255;
                            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                                i14 = bArr[i15] & 255;
                                i16 = bArr[i13] & 255;
                            }
                            qt.y0(27, i14);
                            qt.y0(28, i16);
                            this.f9369b = bArr[i13] & 255;
                            this.f9371c = bArr[i15] & 255;
                            qt.y0(73, bArr[i2 + 10] & DhcpPacket.DHCP_DOMAIN_NAME);
                            int i46 = i2 + 11;
                            qt.y0(44, (bArr[i46] >> 4) & 15);
                            i17 = bArr[i46] & DhcpPacket.DHCP_DOMAIN_NAME;
                            if (i17 != 3) {
                                if (i17 == 5) {
                                    i18 = 1;
                                } else if (i17 != 6) {
                                    i18 = 0;
                                } else {
                                    i18 = 0;
                                }
                                i19 = 1;
                                qt.y0(47, i18);
                                qt.y0(46, i19);
                                qt.y0(87, bArr[i46] & DhcpPacket.DHCP_DOMAIN_NAME);
                                qt.y0(40, bArr[i2 + 12] & 255);
                                if (nt.a()) {
                                    i20 = bArr[i2 + 13] & 255;
                                    if (this.C == 0) {
                                        i21 = ((i20 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 32768;
                                    } else {
                                        i21 = (i20 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                                    }
                                    u0.d.A3(i21);
                                    return;
                                }
                                return;
                            }
                            i18 = 1;
                            i19 = 0;
                            qt.y0(47, i18);
                            qt.y0(46, i19);
                            qt.y0(87, bArr[i46] & DhcpPacket.DHCP_DOMAIN_NAME);
                            qt.y0(40, bArr[i2 + 12] & 255);
                            if (nt.a()) {
                                i20 = bArr[i2 + 13] & 255;
                                if (this.C == 0) {
                                    i21 = ((i20 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 32768;
                                } else {
                                    i21 = (i20 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                                }
                                u0.d.A3(i21);
                                return;
                            }
                            return;
                        }
                        i9 = 0;
                        i12 = 0;
                        i11 = 1;
                        i10 = 0;
                        qt.y0(49, i9);
                        qt.y0(18, i12);
                        qt.y0(19, i11);
                        qt.y0(20, i10);
                        int i47 = i2 + 7;
                        qt.y0(21, bArr[i47] & 255);
                        this.f9373d = bArr[i47] & 255;
                        i13 = i2 + 8;
                        i14 = bArr[i13] & 255;
                        i15 = i2 + 9;
                        i16 = bArr[i15] & 255;
                        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            i14 = bArr[i15] & 255;
                            i16 = bArr[i13] & 255;
                        }
                        qt.y0(27, i14);
                        qt.y0(28, i16);
                        this.f9369b = bArr[i13] & 255;
                        this.f9371c = bArr[i15] & 255;
                        qt.y0(73, bArr[i2 + 10] & DhcpPacket.DHCP_DOMAIN_NAME);
                        int i48 = i2 + 11;
                        qt.y0(44, (bArr[i48] >> 4) & 15);
                        i17 = bArr[i48] & DhcpPacket.DHCP_DOMAIN_NAME;
                        if (i17 != 3) {
                            if (i17 == 5) {
                                i18 = 1;
                            } else if (i17 != 6) {
                                i18 = 0;
                            } else {
                                i18 = 0;
                            }
                            i19 = 1;
                            qt.y0(47, i18);
                            qt.y0(46, i19);
                            qt.y0(87, bArr[i48] & DhcpPacket.DHCP_DOMAIN_NAME);
                            qt.y0(40, bArr[i2 + 12] & 255);
                            if (nt.a()) {
                                i20 = bArr[i2 + 13] & 255;
                                if (this.C == 0) {
                                    i21 = ((i20 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 32768;
                                } else {
                                    i21 = (i20 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                                }
                                u0.d.A3(i21);
                                return;
                            }
                            return;
                        }
                        i18 = 1;
                        i19 = 0;
                        qt.y0(47, i18);
                        qt.y0(46, i19);
                        qt.y0(87, bArr[i48] & DhcpPacket.DHCP_DOMAIN_NAME);
                        qt.y0(40, bArr[i2 + 12] & 255);
                        if (nt.a()) {
                            i20 = bArr[i2 + 13] & 255;
                            if (this.C == 0) {
                                i21 = ((i20 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 32768;
                            } else {
                                i21 = (i20 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                            }
                            u0.d.A3(i21);
                            return;
                        }
                        return;
                    }
                    i9 = 0;
                    i12 = 0;
                    i11 = 1;
                    i10 = 1;
                    qt.y0(49, i9);
                    qt.y0(18, i12);
                    qt.y0(19, i11);
                    qt.y0(20, i10);
                    int i49 = i2 + 7;
                    qt.y0(21, bArr[i49] & 255);
                    this.f9373d = bArr[i49] & 255;
                    i13 = i2 + 8;
                    i14 = bArr[i13] & 255;
                    i15 = i2 + 9;
                    i16 = bArr[i15] & 255;
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        i14 = bArr[i15] & 255;
                        i16 = bArr[i13] & 255;
                    }
                    qt.y0(27, i14);
                    qt.y0(28, i16);
                    this.f9369b = bArr[i13] & 255;
                    this.f9371c = bArr[i15] & 255;
                    qt.y0(73, bArr[i2 + 10] & DhcpPacket.DHCP_DOMAIN_NAME);
                    int i410 = i2 + 11;
                    qt.y0(44, (bArr[i410] >> 4) & 15);
                    i17 = bArr[i410] & DhcpPacket.DHCP_DOMAIN_NAME;
                    if (i17 != 3) {
                        if (i17 == 5) {
                            i18 = 1;
                        } else if (i17 != 6) {
                            i18 = 0;
                        } else {
                            i18 = 0;
                        }
                        i19 = 1;
                        qt.y0(47, i18);
                        qt.y0(46, i19);
                        qt.y0(87, bArr[i410] & DhcpPacket.DHCP_DOMAIN_NAME);
                        qt.y0(40, bArr[i2 + 12] & 255);
                        if (nt.a()) {
                            i20 = bArr[i2 + 13] & 255;
                            if (this.C == 0) {
                                i21 = ((i20 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 32768;
                            } else {
                                i21 = (i20 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                            }
                            u0.d.A3(i21);
                            return;
                        }
                        return;
                    }
                    i18 = 1;
                    i19 = 0;
                    qt.y0(47, i18);
                    qt.y0(46, i19);
                    qt.y0(87, bArr[i410] & DhcpPacket.DHCP_DOMAIN_NAME);
                    qt.y0(40, bArr[i2 + 12] & 255);
                    if (nt.a()) {
                        i20 = bArr[i2 + 13] & 255;
                        if (this.C == 0) {
                            i21 = ((i20 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 32768;
                        } else {
                            i21 = (i20 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                        }
                        u0.d.A3(i21);
                        return;
                    }
                    return;
                }
                i9 = 0;
                i12 = 0;
                i11 = 0;
                i10 = 1;
                qt.y0(49, i9);
                qt.y0(18, i12);
                qt.y0(19, i11);
                qt.y0(20, i10);
                int i411 = i2 + 7;
                qt.y0(21, bArr[i411] & 255);
                this.f9373d = bArr[i411] & 255;
                i13 = i2 + 8;
                i14 = bArr[i13] & 255;
                i15 = i2 + 9;
                i16 = bArr[i15] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i14 = bArr[i15] & 255;
                    i16 = bArr[i13] & 255;
                }
                qt.y0(27, i14);
                qt.y0(28, i16);
                this.f9369b = bArr[i13] & 255;
                this.f9371c = bArr[i15] & 255;
                qt.y0(73, bArr[i2 + 10] & DhcpPacket.DHCP_DOMAIN_NAME);
                int i412 = i2 + 11;
                qt.y0(44, (bArr[i412] >> 4) & 15);
                i17 = bArr[i412] & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i17 != 3) {
                    if (i17 == 5) {
                        i18 = 1;
                    } else if (i17 != 6) {
                        i18 = 0;
                    } else {
                        i18 = 0;
                    }
                    i19 = 1;
                    qt.y0(47, i18);
                    qt.y0(46, i19);
                    qt.y0(87, bArr[i412] & DhcpPacket.DHCP_DOMAIN_NAME);
                    qt.y0(40, bArr[i2 + 12] & 255);
                    if (nt.a()) {
                        i20 = bArr[i2 + 13] & 255;
                        if (this.C == 0) {
                            i21 = ((i20 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 32768;
                        } else {
                            i21 = (i20 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                        }
                        u0.d.A3(i21);
                        return;
                    }
                    return;
                }
                i18 = 1;
                i19 = 0;
                qt.y0(47, i18);
                qt.y0(46, i19);
                qt.y0(87, bArr[i412] & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(40, bArr[i2 + 12] & 255);
                if (nt.a()) {
                    i20 = bArr[i2 + 13] & 255;
                    if (this.C == 0) {
                        i21 = ((i20 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 32768;
                    } else {
                        i21 = (i20 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                    }
                    u0.d.A3(i21);
                    return;
                }
                return;
            }
            i9 = 1;
            i12 = 0;
            i11 = 0;
            i10 = 0;
            qt.y0(49, i9);
            qt.y0(18, i12);
            qt.y0(19, i11);
            qt.y0(20, i10);
            int i413 = i2 + 7;
            qt.y0(21, bArr[i413] & 255);
            this.f9373d = bArr[i413] & 255;
            i13 = i2 + 8;
            i14 = bArr[i13] & 255;
            i15 = i2 + 9;
            i16 = bArr[i15] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i14 = bArr[i15] & 255;
                i16 = bArr[i13] & 255;
            }
            qt.y0(27, i14);
            qt.y0(28, i16);
            this.f9369b = bArr[i13] & 255;
            this.f9371c = bArr[i15] & 255;
            qt.y0(73, bArr[i2 + 10] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i414 = i2 + 11;
            qt.y0(44, (bArr[i414] >> 4) & 15);
            i17 = bArr[i414] & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i17 != 3) {
                if (i17 == 5) {
                    i18 = 1;
                } else if (i17 != 6) {
                    i18 = 0;
                } else {
                    i18 = 0;
                }
                i19 = 1;
                qt.y0(47, i18);
                qt.y0(46, i19);
                qt.y0(87, bArr[i414] & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(40, bArr[i2 + 12] & 255);
                if (nt.a()) {
                    i20 = bArr[i2 + 13] & 255;
                    if (this.C == 0) {
                        i21 = ((i20 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 32768;
                    } else {
                        i21 = (i20 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                    }
                    u0.d.A3(i21);
                    return;
                }
                return;
            }
            i18 = 1;
            i19 = 0;
            qt.y0(47, i18);
            qt.y0(46, i19);
            qt.y0(87, bArr[i414] & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(40, bArr[i2 + 12] & 255);
            if (nt.a()) {
                i20 = bArr[i2 + 13] & 255;
                if (this.C == 0) {
                    i21 = ((i20 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 32768;
                } else {
                    i21 = (i20 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                }
                u0.d.A3(i21);
                return;
            }
            return;
        }
        if (b3 == 100) {
            qt.y0(136, ((bArr[i2 + 2] & 128) << 1) | ((bArr[i2 + 4] & 192) >> 6));
            int i50 = i2 + 3;
            int i51 = i2 + 5;
            qt.y0(137, ((bArr[i50] & 128) << 1) | ((bArr[i51] & 192) >> 6));
            qt.y0(138, ((bArr[i50] & 64) << 2) | ((bArr[i51] & 32) >> 5));
            qt.y0(208, ((32 & bArr[i50]) << 3) | ((bArr[i51] & 16) >> 4));
            qt.y0(209, ((bArr[i50] & 16) << 4) | ((bArr[i51] & 8) >> 3));
            qt.y0(297, ((bArr[i51] & 4) >> 2) | ((bArr[i50] & 8) << 5));
            return;
        }
        if (b3 == 30) {
            int i52 = i2 + 3;
            qt.y0(167, ((bArr[i52] & 192) << 18) | ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
            int i53 = i2 + 2;
            qt.y0(168, ((bArr[i52] & 48) << 20) | ((bArr[i53] & 255) << 16) | ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
            qt.y0(169, ((bArr[i52] & DhcpPacket.DHCP_HOST_NAME) << 22) | ((bArr[i2 + 8] & 255) << 8) | (bArr[i2 + 9] & 255));
            qt.y0(170, (bArr[i2 + 11] & 255) | ((bArr[i52] & 3) << 24) | ((bArr[i53] & 255) << 16) | ((bArr[i2 + 10] & 255) << 8));
            return;
        }
        if (b3 == 31) {
            StringBuffer stringBuffer = new StringBuffer(20);
            int i54 = i2 + 22;
            for (int i55 = i2 + 2; i55 < i54; i55++) {
                stringBuffer.append((char) bArr[i55]);
            }
            this.f9412w0 = this.f9410v0;
            F3(stringBuffer.toString());
            qt.B0(179, this.f9410v0, this.f9412w0);
            return;
        }
        if (b3 == 53) {
            int i56 = i2 + 4;
            qt.y0(69, (bArr[i56] >> 6) & 3);
            qt.y0(210, ((bArr[i56] >> 6) & 3) | ((bArr[i2 + 2] & 128) << 1));
            int i57 = i2 + 3;
            qt.y0(211, ((bArr[i57] & 64) << 2) | ((bArr[i2 + 5] >> 1) & 1));
            qt.y0(212, ((bArr[i2 + 6] >> 4) & 1) | ((bArr[i57] & 8) << 5));
            return;
        }
        if (b3 == 54) {
            int i58 = i2 + 3;
            qt.y0(291, (bArr[i58] >> 1) & 1);
            qt.y0(292, (bArr[i58] >> 0) & 1);
            l0.c0.a((bArr[i58] >> 0) & 1, (bArr[i58] >> 1) & 1, 0);
            return;
        }
        if (b3 == 65) {
            if (nt.a()) {
                int i59 = i2 + 2;
                int i60 = bArr[i59] & 255;
                int i61 = i2 + 3;
                int i62 = bArr[i61] & 255;
                int i63 = i2 + 4;
                int i64 = bArr[i63] & 255;
                int i65 = i2 + 5;
                int i66 = bArr[i65] & 255;
                int i67 = i2 + 6;
                int i68 = bArr[i67] & 255;
                int i69 = i2 + 7;
                int i70 = bArr[i69] & 255;
                int i71 = i2 + 8;
                int i72 = bArr[i71] & 255;
                int i73 = i2 + 9;
                int i74 = bArr[i73] & 255;
                if ((bArr[i59] & 255) >= 60) {
                    u0.d.R2(15);
                } else {
                    u0.d.R2((i60 * 6) / 60);
                }
                if ((bArr[i61] & 255) >= 166) {
                    u0.d.S2(15);
                    i22 = 11;
                } else {
                    i22 = 11;
                    u0.d.S2((i62 * 11) / 166);
                }
                if ((bArr[i63] & 255) >= 166) {
                    u0.d.T2(15);
                } else {
                    u0.d.T2((i64 * i22) / 166);
                }
                if ((bArr[i65] & 255) >= 60) {
                    u0.d.U2(15);
                    i23 = 6;
                } else {
                    i23 = 6;
                    u0.d.U2((i66 * 6) / 60);
                }
                int i75 = nt.f8637c;
                if (i75 == i23 || i75 == 7) {
                    if (i68 < 60 || i70 < 120 || i72 < 120 || i74 < 60) {
                        if (u0.b.f17347o == 0) {
                            u0.d.C2(1);
                        }
                    } else if (u0.b.f17350p == 1) {
                        this.E = 2;
                        l0.b0.b(this.F);
                    }
                    if ((bArr[i67] & 255) >= 60) {
                        u0.d.D2(15);
                    } else {
                        u0.d.D2((i68 * 6) / 60);
                    }
                    if ((bArr[i69] & 255) >= 120) {
                        u0.d.E2(15);
                        i24 = 8;
                    } else {
                        i24 = 8;
                        u0.d.E2((i70 * 8) / 120);
                    }
                    if ((bArr[i71] & 255) >= 120) {
                        u0.d.F2(15);
                    } else {
                        u0.d.F2((i72 * i24) / 120);
                    }
                    if ((bArr[i73] & 255) >= 60) {
                        u0.d.G2(15);
                        return;
                    } else {
                        u0.d.G2((i74 * 6) / 60);
                        return;
                    }
                }
                if (i68 < 166 || i70 < 166 || i72 < 166 || i74 < 166) {
                    if (u0.b.f17347o == 0) {
                        u0.d.C2(1);
                    }
                } else if (u0.b.f17350p == 1) {
                    this.E = 2;
                    l0.b0.b(this.F);
                }
                if ((bArr[i67] & 255) >= 166) {
                    u0.d.D2(15);
                    i25 = 10;
                } else {
                    i25 = 10;
                    u0.d.D2(((bArr[i67] & 255) * 10) / 166);
                }
                if ((bArr[i69] & 255) >= 166) {
                    u0.d.E2(15);
                } else {
                    u0.d.E2(((bArr[i69] & 255) * i25) / 166);
                }
                if ((bArr[i71] & 255) >= 166) {
                    u0.d.F2(15);
                } else {
                    u0.d.F2(((bArr[i71] & 255) * i25) / 166);
                }
                if ((bArr[i73] & 255) >= 166) {
                    u0.d.G2(15);
                    return;
                } else {
                    u0.d.G2(((bArr[i73] & 255) * i25) / 166);
                    return;
                }
            }
            return;
        }
        if (b3 == 66) {
            u0.d.H2(((bArr[i2 + 9] & 255) * 6) / 166);
            u0.d.I2(((bArr[i2 + 6] & 255) * 6) / 166);
            u0.d.J2(((bArr[i2 + 8] & 255) * 6) / 166);
            u0.d.K2(((bArr[i2 + 7] & 255) * 6) / 166);
            u0.d.N2(((bArr[i2 + 5] & 255) * 6) / 166);
            u0.d.O2(((bArr[i2 + 2] & 255) * 6) / 166);
            u0.d.P2(((bArr[i2 + 4] & 255) * 6) / 166);
            u0.d.Q2(((bArr[i2 + 3] & 255) * 6) / 166);
            return;
        }
        if (b3 == 80) {
            int i76 = i2 + 2;
            qt.y0(398, (bArr[i76] >> 7) & 1);
            qt.y0(397, (bArr[i76] >> 6) & 1);
            qt.y0(396, (bArr[i76] >> 5) & 1);
            qt.y0(399, bArr[i2 + 3] & 255);
            qt.y0(400, bArr[i2 + 4] & 255);
            int i77 = i2 + 5;
            qt.y0(402, (bArr[i77] >> 7) & 1);
            qt.y0(403, (bArr[i77] >> 6) & 1);
            qt.y0(UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL, (bArr[i77] >> 5) & 1);
            int i78 = i2 + 6;
            qt.y0(413, (bArr[i78] >> 1) & 127);
            qt.y0(414, (bArr[i78] >> 0) & 1);
            int i79 = i2 + 7;
            qt.y0(415, (bArr[i79] >> 1) & 127);
            qt.y0(416, (bArr[i79] >> 0) & 1);
            int i80 = i2 + 8;
            qt.y0(401, (bArr[i80] >> 7) & 1);
            qt.y0(Downloads.Impl.STATUS_NOT_ACCEPTABLE, (bArr[i80] >> 6) & 1);
            qt.y0(407, (bArr[i80] >> 5) & 1);
            qt.y0(408, (bArr[i80] >> 4) & 1);
            qt.y0(409, (bArr[i80] >> 3) & 1);
            qt.y0(410, (bArr[i80] >> 2) & 1);
            qt.y0(Downloads.Impl.STATUS_LENGTH_REQUIRED, (bArr[i80] >> 1) & 1);
            qt.y0(Downloads.Impl.STATUS_PRECONDITION_FAILED, (bArr[i80] >> 0) & 1);
            qt.y0(418, bArr[i2 + 9] & 255);
            qt.y0(419, bArr[i2 + 10] & 255);
            int i81 = i2 + 11;
            qt.y0(421, (bArr[i81] >> 7) & 1);
            qt.y0(422, (bArr[i81] >> 6) & 1);
            qt.y0(423, (bArr[i81] >> 5) & 1);
            int i82 = i2 + 12;
            qt.y0(432, (bArr[i82] >> 1) & 127);
            qt.y0(433, (bArr[i82] >> 0) & 1);
            int i83 = i2 + 13;
            qt.y0(434, (bArr[i83] >> 1) & 127);
            qt.y0(435, (bArr[i83] >> 0) & 1);
            int i84 = i2 + 14;
            qt.y0(420, (bArr[i84] >> 7) & 1);
            qt.y0(425, (bArr[i84] >> 6) & 1);
            qt.y0(426, (bArr[i84] >> 5) & 1);
            qt.y0(427, (bArr[i84] >> 4) & 1);
            qt.y0(428, (bArr[i84] >> 3) & 1);
            qt.y0(429, (bArr[i84] >> 2) & 1);
            qt.y0(430, (bArr[i84] >> 1) & 1);
            qt.y0(431, (bArr[i84] >> 0) & 1);
            qt.y0(437, bArr[i2 + 15] & 255);
            qt.y0(438, bArr[i2 + 16] & 255);
            int i85 = i2 + 17;
            qt.y0(440, (bArr[i85] >> 7) & 1);
            qt.y0(441, (bArr[i85] >> 6) & 1);
            qt.y0(442, (bArr[i85] >> 5) & 1);
            int i86 = i2 + 18;
            qt.y0(451, (bArr[i86] >> 1) & 127);
            qt.y0(452, (bArr[i86] >> 0) & 1);
            int i87 = i2 + 19;
            qt.y0(453, (bArr[i87] >> 1) & 127);
            qt.y0(454, (bArr[i87] >> 0) & 1);
            int i88 = i2 + 20;
            qt.y0(439, (bArr[i88] >> 7) & 1);
            qt.y0(444, (bArr[i88] >> 6) & 1);
            qt.y0(445, (bArr[i88] >> 5) & 1);
            qt.y0(446, (bArr[i88] >> 4) & 1);
            qt.y0(447, (bArr[i88] >> 3) & 1);
            qt.y0(448, (bArr[i88] >> 2) & 1);
            qt.y0(449, (bArr[i88] >> 1) & 1);
            qt.y0(450, (bArr[i88] >> 0) & 1);
            return;
        }
        if (b3 == 81) {
            int i89 = i2 + 2;
            qt.y0(468, (bArr[i89] >> 7) & 1);
            qt.y0(469, (bArr[i89] >> 0) & 127);
            qt.y0(470, bArr[i2 + 3] & 255);
            qt.y0(471, bArr[i2 + 4] & 255);
            qt.y0(472, bArr[i2 + 5] & 255);
            qt.y0(473, bArr[i2 + 6] & 255);
            qt.y0(474, bArr[i2 + 7] & 255);
            qt.y0(475, bArr[i2 + 8] & 255);
            qt.y0(476, bArr[i2 + 9] & 255);
            qt.y0(477, bArr[i2 + 10] & 255);
            qt.y0(478, bArr[i2 + 11] & 255);
            qt.y0(479, bArr[i2 + 12] & 255);
            qt.y0(480, bArr[i2 + 13] & 255);
            qt.y0(481, bArr[i2 + 14] & 255);
            qt.y0(482, bArr[i2 + 15] & 255);
            qt.y0(483, bArr[i2 + 16] & 255);
            qt.y0(484, bArr[i2 + 17] & 255);
            qt.y0(485, bArr[i2 + 18] & 255);
            return;
        }
        switch (b3) {
            case -123:
                qt.y0(162, ((bArr[i2 + 3] & 96) >> 5) | ((bArr[i2 + 2] & 32) << 3));
                break;
            case -122:
                int i90 = i2 + 2;
                int i91 = i2 + 3;
                qt.y0(190, ((bArr[i90] & 128) << 1) | ((bArr[i91] & 128) >> 7));
                qt.y0(191, ((bArr[i90] & 64) << 2) | ((bArr[i91] & 64) >> 6));
                qt.y0(192, ((bArr[i90] & 32) << 3) | ((bArr[i91] & 32) >> 5));
                qt.y0(193, ((bArr[i90] & 16) << 4) | ((bArr[i91] & 16) >> 4));
                qt.y0(194, ((bArr[i90] & 8) << 5) | ((bArr[i91] & 8) >> 3));
                qt.y0(i.a.Theme_preferencePanelStyle, ((bArr[i90] & 4) << 6) | ((bArr[i91] >> 2) & 1));
                qt.y0(i.a.Theme_preferenceHeaderPanelStyle, ((bArr[i90] & 2) << 7) | ((bArr[i91] >> 1) & 1));
                qt.y0(248, ((bArr[i90] & 1) << 8) | (bArr[i91] & 1));
                if (((bArr[i90] >> 2) & 1) == 1) {
                    this.f9405t = true;
                }
                if (((bArr[i91] & 128) >> 7) == 1) {
                    this.f9399q = 4;
                } else if (((bArr[i91] & 64) >> 6) == 1) {
                    this.f9399q = 0;
                } else if (((bArr[i91] & 32) >> 5) == 1) {
                    this.f9399q = 1;
                } else if (((bArr[i91] & 16) >> 4) == 1) {
                    this.f9399q = 2;
                } else if (((bArr[i91] & 8) >> 3) == 1) {
                    this.f9399q = 3;
                } else if (((bArr[i91] & 4) >> 2) == 1) {
                    this.f9399q = 5;
                } else if (((bArr[i91] & 2) >> 1) == 1) {
                    this.f9399q = 6;
                } else if ((bArr[i91] & 1) == 1) {
                    this.f9399q = 7;
                }
                if (g.e.a() != 7) {
                    Intent intent = new Intent();
                    intent.putExtra("driving_mode", this.f9399q);
                    intent.setAction("syu.intent.action.gaoerfu");
                    App.c().sendBroadcast(intent);
                }
                int i92 = i2 + 4;
                qt.y0(195, (bArr[i92] >> 6) & 3);
                qt.y0(196, (bArr[i92] >> 4) & 3);
                qt.y0(197, (bArr[i92] >> 2) & 3);
                qt.y0(198, (bArr[i92] >> 0) & 3);
                int i93 = i2 + 5;
                qt.y0(199, (bArr[i93] >> 7) & 1);
                qt.y0(200, (bArr[i93] >> 6) & 1);
                break;
            case -121:
                byte b12 = bArr[i2 + 4];
                byte b13 = bArr[i2 + 5];
                byte b14 = bArr[i2 + 6];
                byte b15 = bArr[i2 + 7];
                byte b16 = bArr[i2 + 8];
                qt.y0(i.a.Theme_findOnPageNextDrawable, b14);
                o1.x.C(nt.f8643f, 201, new int[]{(bArr[i2 + 2] >> 7) & 1}, null, null);
                qt.y0(262, (((b15 >> 7) & 1) << 8) | ((b12 >> 4) & 3));
                qt.y0(255, (((b15 >> 6) & 1) << 8) | ((b12 >> 2) & 3));
                qt.y0(263, (b12 & 3) | (((b15 >> 5) & 1) << 8));
                qt.y0(258, (((b15 >> 4) & 1) << 8) | ((b13 >> 7) & 1));
                qt.y0(256, (((b15 >> 3) & 1) << 8) | ((b13 >> 6) & 1));
                qt.y0(257, (((b15 >> 2) & 1) << 8) | ((b13 >> 5) & 1));
                qt.y0(259, (((b15 >> 1) & 1) << 8) | ((b13 >> 4) & 1));
                qt.y0(260, (((b15 >> 0) & 1) << 8) | ((b13 >> 3) & 1));
                qt.y0(261, ((b13 >> 2) & 1) | (((b16 >> 7) & 1) << 8));
                break;
            case -120:
                int i94 = i2 + 2;
                int i95 = i2 + 3;
                qt.y0(316, ((bArr[i94] & 128) << 1) | ((128 & bArr[i95]) >> 7));
                qt.y0(317, ((bArr[i94] & 64) << 2) | ((bArr[i95] & 64) >> 6));
                qt.y0(318, ((32 & bArr[i95]) >> 5) | ((bArr[i94] & 32) << 3));
                qt.y0(319, ((bArr[i94] & 16) << 4) | ((16 & bArr[i95]) >> 4));
                qt.y0(320, ((bArr[i95] & 8) >> 3) | ((bArr[i94] & 8) << 5));
                break;
            default:
                switch (b3) {
                    case 17:
                        qt.y0(188, bArr[i2 + 3] & 255);
                        int i96 = i2 + 2;
                        qt.y0(MediaProperties.HEIGHT_288, (bArr[i96] >> 1) & 1);
                        qt.y0(289, (bArr[i96] >> 3) & 1);
                        qt.y0(486, bArr[i2 + 11] & 255);
                        int i97 = (bArr[i96] >> 7) & 1;
                        int i98 = this.B;
                        if (i98 != i97) {
                            if (i97 == 1) {
                                if (y0.f.f18055i != 1) {
                                    l0.b0.l0(12, 0);
                                    l0.b0.l0(12, 1);
                                }
                            } else if (i98 == 1 && i97 == 0 && y0.f.f18055i == 1) {
                                l0.b0.l0(12, 0);
                                l0.b0.l0(12, 1);
                            }
                            this.B = i97;
                        }
                        int i99 = i2 + 4;
                        int i100 = bArr[i99] & 255;
                        int i101 = i2 + 5;
                        int i102 = bArr[i101] & 255;
                        if (i100 == 12 && i102 == 1) {
                            o1.x.C(nt.f8643f, 201, new int[]{1}, null, null);
                            if (this.f9403s == 9) {
                                this.f9403s = 8;
                                switch (this.f9399q) {
                                    case 0:
                                        c2 = 1;
                                        i26 = 3;
                                        break;
                                    case 1:
                                        c2 = 1;
                                        i26 = 5;
                                        break;
                                    case 2:
                                        c2 = 1;
                                        i26 = 1;
                                        break;
                                    case 3:
                                        c2 = 1;
                                        i26 = this.f9405t ? 8 : 4;
                                        break;
                                    case 4:
                                        i26 = 2;
                                        c2 = 1;
                                        break;
                                    case 5:
                                    case 7:
                                        i26 = 4;
                                        c2 = 1;
                                        break;
                                    case 6:
                                        i26 = 6;
                                        c2 = 1;
                                        break;
                                    default:
                                        c2 = 1;
                                        i26 = 0;
                                        break;
                                }
                                int[] iArr26 = new int[6];
                                iArr26[0] = 227;
                                iArr26[c2] = 3;
                                iArr26[2] = 139;
                                iArr26[3] = i26;
                                iArr26[4] = 0;
                                iArr26[5] = 0;
                                z.k.s(iArr26);
                            }
                        }
                        if (nt.a()) {
                            int i103 = nt.f8637c;
                            if (i103 == 6 || i103 == 7) {
                                b2 = 255;
                                if ((bArr[i2 + 6] & 255) != 0) {
                                    this.D = 1;
                                    u0.d.C2(1);
                                } else {
                                    this.D = 0;
                                    u0.d.C2(0);
                                }
                            } else {
                                b2 = 255;
                            }
                            qt.i(bArr[i2 + 9] & b2, bArr[i2 + 8] & b2, true, 540);
                            byte b17 = bArr[i99];
                            byte b18 = bArr[i101];
                            this.f9395o = b17 & b2;
                            int i104 = 0;
                            while (true) {
                                iArr = this.f9397p;
                                if (i104 < iArr.length) {
                                    int i105 = this.f9395o;
                                    if (i105 != iArr[i104][0]) {
                                        i104++;
                                    } else if (i105 != 0) {
                                        this.f9393n = i104;
                                    }
                                }
                            }
                            int i106 = this.f9395o;
                            if (i106 != 5) {
                                if (i106 != 13) {
                                    if (i106 != 8) {
                                        if (i106 != 9) {
                                            int i107 = b18 & 255;
                                            if (i107 == 1) {
                                                if (i104 < iArr.length) {
                                                    l0.b0.l0(iArr[i104][1], 0);
                                                }
                                            } else if (i107 == 0) {
                                                int i108 = this.f9393n;
                                                if (i108 < iArr.length && i108 != 255) {
                                                    l0.b0.l0(iArr[i108][1], 1);
                                                }
                                                this.f9393n = 255;
                                            }
                                        } else if ((b18 & 255) == 1) {
                                            if (h0.c.E != 4) {
                                                l0.b0.l0(3, 0);
                                                l0.b0.l0(3, 1);
                                            } else {
                                                l0.b0.l0(18, 0);
                                                l0.b0.l0(18, 1);
                                            }
                                        }
                                    } else if ((255 & b18) == 1) {
                                        int i109 = h0.c.E;
                                        if (i109 == 3 || i109 == 4 || i109 == 5) {
                                            l0.b0.l0(26, 0);
                                            l0.b0.l0(26, 1);
                                        } else {
                                            l0.b0.l0(4, 0);
                                            l0.b0.l0(4, 1);
                                        }
                                    }
                                } else if ((255 & b18) == 1) {
                                    J3();
                                }
                            } else if ((255 & b18) == 1) {
                                int i110 = h0.c.E;
                                if (i110 == 3 || i110 == 5) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                }
                            }
                        }
                        break;
                    case 18:
                        int i111 = bArr[i2 + 4];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            i27 = 1;
                            i28 = (i111 >> 6) & 1;
                            qt.y0(1, i28);
                            i29 = (i111 >> 7) & 1;
                            qt.y0(2, i29);
                            qt.y0(3, (i111 >> 4) & 1);
                            qt.y0(4, (i111 >> 5) & 1);
                        } else {
                            i27 = 1;
                            i28 = (i111 >> 7) & 1;
                            qt.y0(1, i28);
                            i29 = (i111 >> 6) & 1;
                            qt.y0(2, i29);
                            qt.y0(3, (i111 >> 5) & 1);
                            qt.y0(4, (i111 >> 4) & 1);
                        }
                        int[] iArr27 = new int[i27];
                        int i112 = (i111 >> 3) & i27;
                        iArr27[0] = i112;
                        qt.y0(5, iArr27);
                        int[] iArr28 = new int[i27];
                        int i113 = (i111 >> 2) & i27;
                        iArr28[0] = i113;
                        qt.y0(0, iArr28);
                        int i114 = (i111 >> 4) & i27;
                        int i115 = (i111 >> 5) & i27;
                        int[] iArr29 = new int[i27];
                        int i116 = i2 + 7;
                        iArr29[0] = ((bArr[i116] & 128) << i27) | ((bArr[i116] >> 6) & 1);
                        qt.y0(249, iArr29);
                        int[] iArr30 = new int[i27];
                        iArr30[0] = ((128 & bArr[i116]) << i27) | ((bArr[i116] >> 5) & i27);
                        qt.y0(250, iArr30);
                        int i117 = nt.f8637c;
                        if (i117 == 6 || i117 == 7 || i117 == 8) {
                            if (this.f9409v != i114) {
                                i30 = 1;
                                if (i114 == 1) {
                                    o1.x[] xVarArr = nt.f8643f;
                                    int[] iArr31 = new int[i30];
                                    iArr31[0] = i30;
                                    o1.x.C(xVarArr, 294, iArr31, null, null);
                                }
                                this.f9409v = i114;
                                this.f9411w = i115;
                                this.f9413x = i29;
                                this.f9415y = i28;
                                this.f9417z = i112;
                                this.A = i113;
                            } else {
                                i30 = 1;
                            }
                            if ((this.f9411w != i115 && i115 == i30) || ((this.f9413x != i29 && i29 == i30) || ((this.f9415y != i28 && i28 == i30) || ((this.f9417z != i112 && i112 == i30) || (this.A != i113 && i113 == i30))))) {
                                o1.x[] xVarArr2 = nt.f8643f;
                                int[] iArr32 = new int[i30];
                                iArr32[0] = i30;
                                o1.x.C(xVarArr2, 294, iArr32, null, null);
                            } else if (i114 == 0 && i115 == 0 && i29 == 0 && i28 == 0 && i112 == 0 && i113 == 0) {
                                o1.x.C(nt.f8643f, 294, new int[]{0}, null, null);
                            }
                            this.f9409v = i114;
                            this.f9411w = i115;
                            this.f9413x = i29;
                            this.f9415y = i28;
                            this.f9417z = i112;
                            this.A = i113;
                        }
                        qt.y0(290, (bArr[i2 + 8] >> 5) & 1);
                        qt.y0(278, bArr[i2 + 9] & 255);
                        break;
                    case 19:
                        qt.y0(97, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(98, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(99, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(100, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                        qt.y0(101, bArr[i2 + 10] & 255);
                        break;
                    case 20:
                        qt.y0(102, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(103, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(104, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(105, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                        qt.y0(106, bArr[i2 + 10] & 255);
                        break;
                    case 21:
                        qt.y0(107, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(108, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(109, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(110, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                        qt.y0(111, bArr[i2 + 10] & 255);
                        break;
                    case 22:
                        qt.y0(113, bArr[i2 + 2] & 255);
                        qt.y0(114, bArr[i2 + 3] & 255);
                        qt.y0(115, bArr[i2 + 11] & 255);
                        break;
                    case 23:
                        qt.y0(305, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(306, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(307, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(308, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                        qt.y0(309, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                        qt.y0(310, (bArr[i2 + 13] & 255) | ((bArr[i2 + 12] << 8) & 65280));
                        break;
                    case 24:
                        qt.y0(311, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(312, bArr[i2 + 4] & 255);
                        qt.y0(313, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                        qt.y0(314, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                        qt.y0(315, bArr[i2 + 9] & 255);
                        qt.y0(321, bArr[i2 + 10] & 255);
                        break;
                    case 25:
                        byte b19 = bArr[i2 + 8];
                        byte b20 = bArr[i2 + 9];
                        qt.y0(264, b19 & 255);
                        qt.y0(265, b20 & 255);
                        int i118 = (((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255)) & 65535;
                        qt.y0(189, i118);
                        qt.y0(1032, i118);
                        break;
                    default:
                        switch (b3) {
                            case 69:
                                int i119 = i2 + 2;
                                int i120 = i2 + 3;
                                qt.y0(116, ((bArr[i119] & 128) << 1) | ((128 & bArr[i120]) >> 7));
                                qt.y0(117, ((bArr[i119] & 64) << 2) | G3((bArr[i2 + 4] & 255) - 1));
                                qt.y0(118, ((bArr[i119] & 32) << 3) | G3((bArr[i2 + 5] & 255) - 1));
                                qt.y0(119, ((bArr[i119] & 16) << 4) | G3((bArr[i2 + 6] & 255) - 1));
                                qt.y0(120, ((bArr[i119] & 8) << 5) | G3((bArr[i2 + 7] & 255) - 1));
                                qt.y0(i.a.Theme_actionModePopupWindowStyle, ((bArr[i119] & 4) << 6) | ((bArr[i120] >> 6) & 1));
                                int i121 = i2 + 8;
                                qt.y0(121, ((bArr[i119] & 2) << 7) | ((bArr[i121] & 192) >> 6));
                                qt.y0(122, ((bArr[i119] & 1) << 8) | ((bArr[i121] & 32) >> 5));
                                if (((bArr[i120] >> 3) & 1) != 1) {
                                    qt.y0(1039, 0);
                                } else if (((bArr[i120] >> 2) & 1) == 1) {
                                    qt.y0(1039, 1);
                                } else if (((bArr[i120] >> 2) & 1) == 0) {
                                    qt.y0(1039, 2);
                                }
                                qt.y0(BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA, ((bArr[i120] & 16) >> 4) | ((bArr[i120] & 32) << 3));
                                break;
                            case 70:
                                qt.y0(123, 256);
                                int i122 = i2 + 3;
                                qt.y0(124, ((bArr[i122] & 128) >> 7) | 256);
                                qt.y0(125, (bArr[i2 + 4] & 255) | 256);
                                qt.y0(i.a.Theme_dialogTitleDecorLayout, ((bArr[i122] >> 5) & 3) | ((1 & (bArr[i2 + 2] >> 5)) << 8));
                                break;
                            case 71:
                                int i123 = i2 + 2;
                                int i124 = i2 + 9;
                                qt.y0(126, ((bArr[i123] & 128) << 1) | ((bArr[i124] & 192) >> 6));
                                qt.y0(127, ((bArr[i123] & 64) << 2) | ((bArr[i124] & 32) >> 5));
                                qt.y0(128, ((bArr[i123] & 64) << 2) | (bArr[i124] & 31));
                                int i125 = i2 + 3;
                                int i126 = i2 + 10;
                                qt.y0(129, ((bArr[i125] & 128) << 1) | ((bArr[i126] & 128) >> 7));
                                qt.y0(131, ((32 & bArr[i125]) << 3) | ((bArr[i126] >> 5) & 1));
                                int i127 = nt.f8637c;
                                if (i127 == 3 || i127 == 9) {
                                    qt.y0(130, ((bArr[i125] & 64) << 2) | ((bArr[i126] >> 3) & 3));
                                } else {
                                    qt.y0(130, ((bArr[i125] & 64) << 2) | ((bArr[i126] & 64) >> 6));
                                }
                                qt.y0(132, ((bArr[i2 + 8] & 128) << 1) | ((bArr[i2 + 15] & 128) >> 7));
                                qt.y0(133, ((bArr[i2 + 5] & 128) << 1) | ((bArr[i2 + 12] & 128) >> 7));
                                int i128 = i2 + 6;
                                int i129 = i2 + 13;
                                qt.y0(134, ((bArr[i128] & 128) << 1) | ((bArr[i129] & 128) >> 7));
                                qt.y0(i.a.Theme_preferenceFragmentStyle, ((bArr[i128] & 8) << 5) | ((bArr[i129] >> 3) & 1));
                                qt.y0(135, ((bArr[i2 + 7] & 128) << 1) | ((bArr[i2 + 14] & 128) >> 7));
                                qt.y0(BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA, ((bArr[i2 + 11] & 128) >> 7) | ((bArr[i2 + 4] & 128) << 1));
                                break;
                            case 72:
                                byte b21 = bArr[i2 + 2];
                                byte b22 = bArr[i2 + 3];
                                byte b23 = bArr[i2 + 4];
                                byte b24 = bArr[i2 + 5];
                                byte b25 = bArr[i2 + 6];
                                byte b26 = bArr[i2 + 7];
                                byte b27 = bArr[i2 + 8];
                                byte b28 = bArr[i2 + 9];
                                byte b29 = bArr[i2 + 10];
                                byte b30 = bArr[i2 + 11];
                                byte b31 = bArr[i2 + 12];
                                byte b32 = bArr[i2 + 13];
                                byte b33 = bArr[i2 + 14];
                                byte b34 = bArr[i2 + 15];
                                byte b35 = bArr[i2 + 16];
                                byte b36 = bArr[i2 + 17];
                                byte b37 = bArr[i2 + 18];
                                byte b38 = bArr[i2 + 19];
                                int i130 = (b21 >> 6) & 3;
                                qt.y0(252, i130);
                                qt.y0(251, b22);
                                int i131 = ((b23 << 8) & 65280) | (b24 & 255);
                                qt.y0(184, ((((b31 << 8) & 65280) | (b32 & 255)) << 16) | i131);
                                int i132 = ((b25 << 8) & 65280) | (b26 & 255);
                                qt.y0(185, ((((b33 << 8) & 65280) | (b34 & 255)) << 16) | i132);
                                int i133 = (b28 & 255) | ((b27 << 8) & 65280);
                                qt.y0(186, ((((b35 << 8) & 65280) | (b36 & 255)) << 16) | i133);
                                int i134 = (255 & b30) | ((b29 << 8) & 65280);
                                qt.y0(187, (((b38 & 255) | ((b37 << 8) & 65280)) << 16) | i134);
                                if (i130 == 0) {
                                    o1.x[] xVarArr3 = nt.f8643f;
                                    o1.x.C(xVarArr3, 1049, new int[]{8, (i131 / 25) | GLES10.GL_MODULATE}, null, null);
                                    o1.x.C(xVarArr3, 1049, new int[]{8, (i132 / 25) | GLES10.GL_TEXTURE_ENV_MODE}, null, null);
                                    o1.x.C(xVarArr3, 1049, new int[]{8, (i133 / 25) | GLES10.GL_TEXTURE_ENV}, null, null);
                                    o1.x.C(xVarArr3, 1049, new int[]{8, (i134 / 25) | 9216}, null, null);
                                } else if (i130 != 1) {
                                    o1.x[] xVarArr4 = nt.f8643f;
                                    o1.x.C(xVarArr4, 1049, new int[]{8, (i131 / 10) | 4352}, null, null);
                                    o1.x.C(xVarArr4, 1049, new int[]{8, (i132 / 10) | GLES10.GL_AMBIENT}, null, null);
                                    o1.x.C(xVarArr4, 1049, new int[]{8, (i133 / 10) | 4864}, null, null);
                                    o1.x.C(xVarArr4, 1049, new int[]{8, (i134 / 10) | 5120}, null, null);
                                } else {
                                    o1.x[] xVarArr5 = nt.f8643f;
                                    o1.x.C(xVarArr5, 1049, new int[]{8, i131 | 256}, null, null);
                                    o1.x.C(xVarArr5, 1049, new int[]{8, i132 | 512}, null, null);
                                    o1.x.C(xVarArr5, 1049, new int[]{8, i133 | 768}, null, null);
                                    o1.x.C(xVarArr5, 1049, new int[]{8, i134 | 1024}, null, null);
                                }
                                break;
                            case 73:
                                qt.y0(299, bArr[i2 + 2] & 255);
                                int i135 = i2 + 3;
                                qt.y0(300, bArr[i135] & 255);
                                qt.y0(443, bArr[i135] & 255);
                                int i136 = i2 + 4;
                                qt.y0(TextTrackRegion.SCROLL_VALUE_SCROLL_UP, bArr[i136] & 255);
                                qt.y0(352, bArr[i136] & 255);
                                qt.y0(302, bArr[i2 + 5] & 255);
                                int i137 = i2 + 6;
                                qt.y0(303, bArr[i137] & 255);
                                qt.y0(417, bArr[i137] & 255);
                                qt.y0(436, bArr[i137] & 255);
                                qt.y0(455, bArr[i137] & 255);
                                break;
                            default:
                                switch (b3) {
                                    case 103:
                                        int i138 = i2 + 2;
                                        qt.y0(202, ((128 & bArr[i138]) << 1) | bArr[i2 + 4]);
                                        qt.y0(203, ((bArr[i138] & 64) << 2) | bArr[i2 + 5]);
                                        qt.y0(204, ((32 & bArr[i138]) << 3) | bArr[i2 + 6]);
                                        qt.y0(296, ((bArr[i138] & 16) << 4) | bArr[i2 + 8]);
                                        qt.y0(287, ((bArr[i138] & 4) << 6) | bArr[i2 + 7]);
                                        qt.y0(277, bArr[i2 + 3] | ((bArr[i138] & 8) << 5));
                                        break;
                                    case 104:
                                        int i139 = i2 + 2;
                                        int i140 = i2 + 5;
                                        qt.y0(205, ((bArr[i139] & 128) << 1) | ((bArr[i140] & 128) >> 7));
                                        qt.y0(206, ((bArr[i139] & 64) << 2) | ((bArr[i140] & 64) >> 6));
                                        qt.y0(139, ((bArr[i139] & 32) << 3) | ((bArr[i140] & 48) >> 4));
                                        qt.y0(140, ((bArr[i139] & 16) << 4) | ((bArr[i140] & 8) >> 3));
                                        qt.y0(141, ((bArr[i139] & 8) << 5) | ((bArr[i140] & 4) >> 2));
                                        qt.y0(142, ((bArr[i139] & 4) << 6) | ((bArr[i140] & 2) >> 1));
                                        qt.y0(175, ((bArr[i139] & 2) << 7) | (bArr[i140] & 1));
                                        int i141 = i2 + 3;
                                        qt.y0(143, ((bArr[i141] & 128) << 1) | (bArr[i2 + 6] & 255));
                                        qt.y0(144, ((bArr[i141] & 64) << 2) | (bArr[i2 + 7] & 255));
                                        qt.y0(145, ((32 & bArr[i141]) << 3) | (bArr[i2 + 8] & 255));
                                        int i142 = i2 + 4;
                                        qt.y0(146, ((bArr[i142] & 128) << 1) | (bArr[i2 + 9] & 255));
                                        qt.y0(147, (bArr[i2 + 10] & 255) | ((bArr[i142] & 64) << 2));
                                        break;
                                    case 105:
                                        int i143 = i2 + 2;
                                        int i144 = i2 + 4;
                                        qt.y0(148, ((bArr[i144] & 128) >> 7) | ((bArr[i143] & 128) << 1));
                                        qt.y0(149, ((bArr[i143] & 64) << 2) | ((bArr[i144] & 64) >> 6));
                                        qt.y0(150, ((32 & bArr[i144]) >> 5) | ((bArr[i143] & 32) << 3));
                                        int i145 = i2 + 3;
                                        int i146 = i2 + 5;
                                        qt.y0(151, ((bArr[i145] & 128) << 1) | ((128 & bArr[i146]) >> 7));
                                        qt.y0(152, ((bArr[i146] & 64) >> 6) | ((bArr[i145] & 64) << 2));
                                        break;
                                    default:
                                        switch (b3) {
                                            case 116:
                                                int i147 = bArr[i2 + 2] & 255;
                                                if (i147 > 16) {
                                                    i147 = 16;
                                                }
                                                if (i147 > 0) {
                                                    for (int i148 = 0; i148 < i147; i148++) {
                                                        int[] iArr33 = {i148, bArr[i2 + 3 + i148] & 255};
                                                        if (qt.C0(171, iArr33, this.f9379g[i148])) {
                                                            this.f9379g[i148] = iArr33;
                                                        }
                                                    }
                                                    while (i147 < 16) {
                                                        int[] iArr34 = {i147, 0};
                                                        if (qt.C0(171, iArr34, this.f9379g[i147])) {
                                                            this.f9379g[i147] = iArr34;
                                                        }
                                                        i147++;
                                                    }
                                                } else {
                                                    for (int i149 = 0; i149 < 16; i149++) {
                                                        int[] iArr35 = {i149, 0};
                                                        if (qt.C0(171, iArr35, this.f9379g[i149])) {
                                                            this.f9379g[i149] = iArr35;
                                                        }
                                                    }
                                                }
                                                break;
                                            case 117:
                                                int i150 = bArr[i2 + 2] & 255;
                                                if (i150 > 7) {
                                                    i150 = 7;
                                                }
                                                if (i150 > 0) {
                                                    for (int i151 = 0; i151 < i150; i151++) {
                                                        int[] iArr36 = {i151, bArr[i2 + 3 + i151] & 255};
                                                        if (qt.C0(172, iArr36, this.f9377f[i151])) {
                                                            this.f9377f[i151] = iArr36;
                                                        }
                                                    }
                                                    while (i150 < 7) {
                                                        int[] iArr37 = {i150, 0};
                                                        if (qt.C0(172, iArr37, this.f9377f[i150])) {
                                                            this.f9377f[i150] = iArr37;
                                                        }
                                                        i150++;
                                                    }
                                                } else {
                                                    for (int i152 = 0; i152 < 7; i152++) {
                                                        int[] iArr38 = {i152, 0};
                                                        if (qt.C0(172, iArr38, this.f9377f[i152])) {
                                                            this.f9377f[i152] = iArr38;
                                                        }
                                                    }
                                                }
                                                break;
                                            case 118:
                                                int i153 = i2 + 2;
                                                int i154 = i2 + 4;
                                                qt.y0(153, ((bArr[i154] & 128) >> 7) | ((bArr[i153] & 128) << 1));
                                                qt.y0(154, ((bArr[i153] & 64) << 2) | ((bArr[i154] & 64) >> 6));
                                                qt.y0(155, ((32 & bArr[i154]) >> 5) | ((bArr[i153] & 32) << 3));
                                                qt.y0(156, ((bArr[i153] & 16) << 4) | ((bArr[i154] & 16) >> 4));
                                                qt.y0(157, ((bArr[i153] & 8) << 5) | ((bArr[i154] & 8) >> 3));
                                                qt.y0(158, ((bArr[i153] & 4) << 6) | ((4 & bArr[i154]) >> 2));
                                                qt.y0(159, ((bArr[i153] & 2) << 7) | ((bArr[i154] & 2) >> 1));
                                                qt.y0(160, ((bArr[i153] & 1) << 8) | (bArr[i154] & 1));
                                                int i155 = i2 + 3;
                                                int i156 = i2 + 5;
                                                qt.y0(161, ((bArr[i155] & 128) << 1) | ((128 & bArr[i156]) >> 7));
                                                qt.y0(182, ((bArr[i156] & 64) >> 6) | ((bArr[i155] & 64) << 2));
                                                break;
                                            case 119:
                                                int i157 = bArr[i2 + 2] & 255;
                                                if (i157 > 7) {
                                                    i157 = 7;
                                                }
                                                if (i157 > 0) {
                                                    for (int i158 = 0; i158 < i157; i158++) {
                                                        int[] iArr39 = {i158, bArr[i2 + 3 + i158] & 255};
                                                        if (qt.C0(173, iArr39, this.f9375e[i158])) {
                                                            this.f9375e[i158] = iArr39;
                                                        }
                                                    }
                                                    while (i157 < 7) {
                                                        int[] iArr40 = {i157, 0};
                                                        if (qt.C0(173, iArr40, this.f9375e[i157])) {
                                                            this.f9375e[i157] = iArr40;
                                                        }
                                                        i157++;
                                                    }
                                                } else {
                                                    for (int i159 = 0; i159 < 7; i159++) {
                                                        int[] iArr41 = {i159, 0};
                                                        if (qt.C0(173, iArr41, this.f9375e[i159])) {
                                                            this.f9375e[i159] = iArr41;
                                                        }
                                                    }
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f9381h.j();
        qt.q0(this.f9402r0);
        qt.q0(this.f9404s0);
        u0.c.f17388o.d(this.f9386j0);
        u0.c.f17389p.d(this.f9390l0);
        h0.d.f2464c.d(this.f9396o0);
        o1.y yVar = h0.d.f2462a;
        yVar.d(this.f9392m0);
        yVar.d(this.f9396o0);
        h0.d.f2468g.d(this.f9396o0);
        o1.y yVar2 = u0.c.f17386m;
        yVar2.d(this.S);
        o1.y yVar3 = u0.c.f17374a;
        yVar3.d(this.S);
        u0.c.f17379f.d(this.S);
        o1.h.f16865a.d(this.f9384i0);
        qt.q0(this.H);
        o1.y yVar4 = y0.g.f18094d;
        yVar4.d(this.I);
        o1.y yVar5 = y0.g.f18095e;
        yVar5.d(this.I);
        o1.y yVar6 = w0.e.f17815a;
        yVar6.d(this.H);
        o1.y yVar7 = w0.e.f17819e;
        yVar7.d(this.H);
        u0.c.f17390q.d(this.f9388k0);
        yVar2.d(this.f9400q0);
        h0.d.f2466e.d(this.f9400q0);
        h0.d.f2467f.d(this.P);
        h0.d.f2469h.d(this.P);
        qt.q0(this.G);
        qt.q0(this.P);
        qt.q0(this.f9388k0);
        qt.q0(this.f9386j0);
        qt.q0(this.f9390l0);
        yVar6.d(this.P);
        yVar7.d(this.P);
        yVar4.d(this.P);
        yVar5.d(this.P);
        yVar6.d(this.G);
        yVar7.d(this.G);
        yVar3.d(this.G);
        yVar3.d(this.f9388k0);
        yVar3.d(this.f9386j0);
        yVar3.d(this.f9390l0);
        l0.b0.p0(this.O);
        if (this.J != null) {
            App.c().unregisterReceiver(this.J);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 487) {
            return;
        }
        if (i2 == 179) {
            o1.x.u(bVar, i2, this.f9410v0);
        }
        int i4 = 0;
        switch (i2) {
            case 171:
                while (i4 < 16) {
                    o1.x.v(bVar, i2, this.f9379g[i4]);
                    i4++;
                }
                break;
            case 172:
                while (i4 < 7) {
                    o1.x.v(bVar, i2, this.f9377f[i4]);
                    i4++;
                }
                break;
            case 173:
                while (i4 < 7) {
                    o1.x.v(bVar, i2, this.f9375e[i4]);
                    i4++;
                }
                break;
            default:
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                break;
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            j3(123, 10, iArr[0]);
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            iArr[0] = iArr[0] + 1;
            if (iArr[0] < 1) {
                iArr[0] = 1;
            } else if (iArr[0] > 2) {
                iArr[0] = 2;
            }
            j3(202, 1, iArr[0]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            iArr[0] = iArr[0] + 1;
            if (iArr[0] < 1) {
                iArr[0] = 1;
            } else if (iArr[0] > 2) {
                iArr[0] = 2;
            }
            j3(202, 2, iArr[0]);
            return;
        }
        if (i2 == 13) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            j3(109, 16, iArr[0]);
            return;
        }
        if (i2 == 96) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            j3(154, 1, iArr[0]);
            return;
        }
        if (i2 == 120) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            j3(76, 4, iArr[0]);
            return;
        }
        if (i2 == 130) {
            o1.u.b(u0.b.D);
            return;
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            int i3 = nt.f8637c;
            if (i3 != 11 && i3 != 21) {
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 4) {
                    iArr[0] = 4;
                }
                K3(iArr[0]);
                return;
            }
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CAMERA_MODE  ===> " + iArr[0]);
            switch (iArr[0]) {
                case 0:
                    if (this.M != 2) {
                        if (this.L != 1) {
                            z.k.s(227, 2, -14, 25, 0);
                        } else {
                            z.k.s(227, 2, -14, 25, 1);
                        }
                    } else if (this.L != 1) {
                        z.k.s(227, 2, -14, 28, 0);
                    } else {
                        z.k.s(227, 2, -14, 28, 1);
                    }
                    break;
                case 1:
                    if (this.L != 1) {
                        z.k.s(227, 2, -14, 29, 0);
                    } else {
                        z.k.s(227, 2, -14, 29, 1);
                    }
                    break;
                case 2:
                    if (this.M != 2) {
                        if (this.L != 1) {
                            z.k.s(227, 2, -14, 27, 0);
                        } else {
                            z.k.s(227, 2, -14, 27, 1);
                        }
                    } else if (this.L != 1) {
                        z.k.s(227, 2, -14, 30, 0);
                    } else {
                        z.k.s(227, 2, -14, 30, 1);
                    }
                    break;
                case 3:
                    if (this.M != 2) {
                        if (this.L != 1) {
                            z.k.s(227, 2, -14, 26, 0);
                        } else {
                            z.k.s(227, 2, -14, 26, 1);
                        }
                    } else if (this.L != 1) {
                        z.k.s(227, 2, -14, 31, 0);
                    } else {
                        z.k.s(227, 2, -14, 31, 1);
                    }
                    break;
                case 4:
                    if (this.L != 1) {
                        z.k.s(227, 2, -14, 23, 0);
                    } else {
                        z.k.s(227, 2, -14, 23, 1);
                    }
                    break;
                case 5:
                    if (this.L != 1) {
                        z.k.s(227, 2, -14, 22, 0);
                    } else {
                        z.k.s(227, 2, -14, 22, 1);
                    }
                    break;
                case 6:
                    if (this.L != 1) {
                        z.k.s(227, 2, -14, 24, 0);
                    } else {
                        z.k.s(227, 2, -14, 24, 1);
                    }
                    break;
                case 7:
                    int i4 = this.M;
                    if (i4 == 0) {
                        int i5 = this.N;
                        if (i5 == 0) {
                            if (this.L != 1) {
                                z.k.s(227, 2, -14, 25, 1);
                            } else {
                                z.k.s(227, 2, -14, 25, 0);
                            }
                            break;
                        } else if (i5 == 2) {
                            if (this.L != 1) {
                                z.k.s(227, 2, -14, 27, 1);
                            } else {
                                z.k.s(227, 2, -14, 27, 0);
                            }
                            break;
                        } else if (i5 == 3) {
                            if (this.L != 1) {
                                z.k.s(227, 2, -14, 26, 1);
                            } else {
                                z.k.s(227, 2, -14, 26, 0);
                            }
                            break;
                        }
                    } else {
                        if (i4 != 1) {
                            if (i4 == 2) {
                                int i6 = this.N;
                                if (i6 == 0) {
                                    if (this.L != 1) {
                                        z.k.s(227, 2, -14, 28, 1);
                                    } else {
                                        z.k.s(227, 2, -14, 28, 0);
                                    }
                                    break;
                                } else if (i6 == 1) {
                                    if (this.L != 1) {
                                        z.k.s(227, 2, -14, 29, 1);
                                    } else {
                                        z.k.s(227, 2, -14, 29, 0);
                                    }
                                    break;
                                } else if (i6 == 2) {
                                    if (this.L != 1) {
                                        z.k.s(227, 2, -14, 30, 1);
                                    } else {
                                        z.k.s(227, 2, -14, 30, 0);
                                    }
                                    break;
                                } else if (i6 == 3) {
                                    if (this.L != 1) {
                                        z.k.s(227, 2, -14, 31, 1);
                                    } else {
                                        z.k.s(227, 2, -14, 31, 0);
                                    }
                                    break;
                                }
                            } else if (i4 != 3) {
                            }
                        }
                        int i7 = this.N;
                        if (i7 == 4) {
                            if (this.L != 1) {
                                z.k.s(227, 2, -14, 23, 1);
                            } else {
                                z.k.s(227, 2, -14, 23, 0);
                            }
                            break;
                        } else if (i7 == 5) {
                            if (this.L != 1) {
                                z.k.s(227, 2, -14, 22, 1);
                            } else {
                                z.k.s(227, 2, -14, 22, 0);
                            }
                            break;
                        } else if (i7 == 6) {
                            if (this.L != 1) {
                                z.k.s(227, 2, -14, 24, 1);
                            } else {
                                z.k.s(227, 2, -14, 24, 0);
                            }
                            break;
                        }
                    }
                    break;
                case 8:
                    z.k.s(227, 2, -14, 20, 1);
                    break;
                case 9:
                    z.k.s(227, 2, -14, 22, 1);
                    break;
                case 10:
                    z.k.s(227, 2, -14, 21, 1);
                    break;
                case 11:
                    z.k.s(227, 2, -14, 23, 1);
                    break;
                case 12:
                    z.k.s(227, 2, -14, 16, 255);
                    break;
                case 13:
                    z.k.s(227, 2, -14, 32, 255);
                    break;
                case 14:
                    if (this.M != 4) {
                        z.k.s(227, 2, -14, 16, 255);
                    } else {
                        z.k.s(227, 2, -14, 17, 255);
                    }
                    break;
                case 15:
                    z.k.s(227, 2, -14, 16, 255);
                    break;
                case 16:
                    z.k.s(227, 2, -14, 17, 255);
                    break;
                case 17:
                    z.k.s(227, 2, -14, 18, 255);
                    break;
                case 18:
                    z.k.s(227, 2, -14, 19, 255);
                    break;
            }
        }
        if (i2 == 1031) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 1) {
                z.k.s(227, 2, 74, 12, 1);
                return;
            } else {
                if (iArr[0] == 2) {
                    z.k.s(227, 2, 74, 12, 0);
                    return;
                }
                return;
            }
        }
        if (i2 == 132) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            j3(74, 11, iArr[0]);
            return;
        }
        if (i2 == 133) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            j3(109, 17, iArr[0]);
            return;
        }
        if (i2 == 139) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            N3(iArr[0]);
            return;
        }
        if (i2 == 140) {
            this.f9406t0 = true;
            qt.z(this.f9404s0);
            return;
        }
        switch (i2) {
            case 30:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(74, 8, iArr[0]);
                    break;
                }
                break;
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
                if (iArr != null && iArr.length > 0) {
                    int i8 = iArr[0];
                    if (i8 != 0) {
                        i8 = 1;
                    }
                    switch (i2) {
                        case 31:
                            j3(26, i8 << 7, 0);
                            break;
                        case 32:
                            j3(26, i8 << 6, 0);
                            break;
                        case 33:
                            j3(26, i8 << 5, 0);
                            break;
                        case 34:
                            j3(26, i8 << 4, 0);
                            break;
                        case 35:
                            j3(26, i8 << 3, 0);
                            break;
                        case 36:
                            j3(26, i8 << 2, 0);
                            break;
                        case 37:
                            j3(26, i8 << 1, 0);
                            break;
                    }
                }
                break;
            case 38:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(58, 2, (byte) iArr[0]);
                    break;
                }
                break;
            case 39:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(74, 1, iArr[0]);
                    break;
                }
                break;
            case 40:
                if (iArr != null && iArr.length > 0) {
                    iArr[0] = iArr[0] + 1;
                    if (iArr[0] < 1) {
                        iArr[0] = 1;
                    } else if (iArr[0] > 9) {
                        iArr[0] = 9;
                    }
                    j3(74, 2, iArr[0]);
                    break;
                }
                break;
            case 41:
                if (iArr != null && iArr.length > 0) {
                    iArr[0] = iArr[0] + 1;
                    if (iArr[0] < 1) {
                        iArr[0] = 1;
                    } else if (iArr[0] > 9) {
                        iArr[0] = 9;
                    }
                    j3(74, 3, iArr[0]);
                    break;
                }
                break;
            case 42:
                if (iArr != null && iArr.length > 0) {
                    iArr[0] = iArr[0] + 1;
                    if (iArr[0] < 1) {
                        iArr[0] = 1;
                    } else if (iArr[0] > 9) {
                        iArr[0] = 9;
                    }
                    j3(74, 4, iArr[0]);
                    break;
                }
                break;
            case 43:
                if (iArr != null && iArr.length > 0) {
                    iArr[0] = iArr[0] + 1;
                    if (iArr[0] < 1) {
                        iArr[0] = 1;
                    } else if (iArr[0] > 9) {
                        iArr[0] = 9;
                    }
                    j3(74, 5, iArr[0]);
                    break;
                }
                break;
            case 44:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(74, 7, iArr[0]);
                    break;
                }
                break;
            case 45:
                j3(75, 1, 1);
                break;
            case 46:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(75, 2, iArr[0]);
                    break;
                }
                break;
            case 47:
                if (iArr != null && iArr.length > 0) {
                    j3(75, 3, iArr[0]);
                    break;
                }
                break;
            case 48:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(76, 1, iArr[0]);
                    break;
                }
                break;
            case 49:
                if (iArr != null && iArr.length > 0) {
                    int i9 = nt.f8637c;
                    if (i9 == 3 || i9 == 9) {
                        j3(76, 12, iArr[0]);
                    } else {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        j3(76, 2, iArr[0]);
                    }
                    break;
                }
                break;
            case 50:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(76, 3, iArr[0]);
                    break;
                }
                break;
            case 51:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(76, 10, iArr[0]);
                    break;
                }
                break;
            case 52:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(76, 5, iArr[0]);
                    break;
                }
                break;
            case 53:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(76, 6, iArr[0]);
                    break;
                }
                break;
            case 54:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(76, 7, iArr[0]);
                    break;
                }
                break;
            case 55:
                if (iArr != null && iArr.length > 0) {
                    iArr[0] = iArr[0] + 1;
                    if (iArr[0] < 1) {
                        iArr[0] = 1;
                    } else if (iArr[0] > 4) {
                        iArr[0] = 5;
                    }
                    j3(76, 8, iArr[0]);
                    break;
                }
                break;
            case 56:
                if (iArr != null && iArr.length > 0) {
                    iArr[0] = iArr[0] + 1;
                    if (iArr[0] < 1) {
                        iArr[0] = 1;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    j3(76, 9, iArr[0]);
                    break;
                }
                break;
            case 57:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(76, 11, iArr[0]);
                    break;
                }
                break;
            case 58:
                if (iArr != null && iArr.length > 0) {
                    j3(109, 3, iArr[0]);
                    break;
                }
                break;
            case 59:
                if (iArr != null && iArr.length > 0) {
                    j3(109, 4, iArr[0]);
                    break;
                }
                break;
            case 60:
                if (iArr != null && iArr.length > 0) {
                    j3(109, 5, iArr[0]);
                    break;
                }
                break;
            case 61:
                if (iArr != null && iArr.length > 0) {
                    j3(109, 6, iArr[0]);
                    break;
                }
                break;
            case 62:
                if (iArr != null && iArr.length > 0) {
                    j3(109, 7, iArr[0]);
                    break;
                }
                break;
            case 63:
                if (iArr != null && iArr.length > 0) {
                    j3(109, 8, iArr[0]);
                    break;
                }
                break;
            case 64:
                if (iArr != null && iArr.length > 0) {
                    j3(109, 9, iArr[0]);
                    break;
                }
                break;
            case 65:
                if (iArr != null && iArr.length > 0) {
                    j3(109, 10, iArr[0]);
                    break;
                }
                break;
            case 66:
                if (iArr != null && iArr.length > 0) {
                    j3(109, 11, iArr[0]);
                    break;
                }
                break;
            case 67:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(110, 1, iArr[0]);
                    break;
                }
                break;
            case 68:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(110, 2, iArr[0]);
                    break;
                }
                break;
            case 69:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(110, 3, iArr[0]);
                    break;
                }
                break;
            case 70:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(110, 4, iArr[0]);
                    break;
                }
                break;
            case 71:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(110, 5, iArr[0]);
                    break;
                }
                break;
            case 72:
                if (iArr != null && iArr.length > 0) {
                    j3(111, 1, iArr[0]);
                    break;
                }
                break;
            case 73:
                if (iArr != null && iArr.length > 0) {
                    j3(111, 2, iArr[0]);
                    break;
                }
                break;
            case 74:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(111, 3, iArr[0]);
                    break;
                }
                break;
            case 75:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(123, 1, iArr[0]);
                    break;
                }
                break;
            case 76:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(123, 2, iArr[0]);
                    break;
                }
                break;
            case 77:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(123, 3, iArr[0]);
                    break;
                }
                break;
            case 78:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(123, 4, iArr[0]);
                    break;
                }
                break;
            case 79:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(123, 5, iArr[0]);
                    break;
                }
                break;
            case 80:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(123, 6, iArr[0]);
                    break;
                }
                break;
            case 81:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(123, 7, iArr[0]);
                    break;
                }
                break;
            case 82:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(123, 8, iArr[0]);
                    break;
                }
                break;
            case 83:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    j3(123, 9, iArr[0]);
                    break;
                }
                break;
            case 84:
                if (iArr != null && iArr.length > 0) {
                    j3(123, 11, iArr[0]);
                    break;
                }
                break;
            case 85:
                if (iArr != null && iArr.length > 0) {
                    j3(123, 12, iArr[0]);
                    break;
                }
                break;
            case 86:
                if (iArr != null && iArr.length > 0) {
                    j3(138, 3, iArr[0]);
                    break;
                }
                break;
            case 87:
                if (iArr != null && iArr.length > 0) {
                    iArr[0] = iArr[0] + 1;
                    if (iArr[0] < 1) {
                        iArr[0] = 1;
                    } else if (iArr[0] > 2) {
                        iArr[0] = 2;
                    }
                    j3(202, 3, iArr[0]);
                    break;
                }
                break;
            case 88:
                if (iArr != null && iArr.length > 0) {
                    iArr[0] = iArr[0] + 1;
                    if (iArr[0] < 1) {
                        iArr[0] = 1;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    j3(202, 4, iArr[0]);
                    break;
                }
                break;
            case 89:
                if (iArr != null && iArr.length > 0) {
                    iArr[0] = iArr[0] + 1;
                    if (iArr[0] < 1) {
                        iArr[0] = 1;
                    } else if (iArr[0] > 4) {
                        iArr[0] = 4;
                    }
                    j3(202, 5, iArr[0]);
                    break;
                }
                break;
            case 90:
                if (iArr != null && iArr.length > 0) {
                    iArr[0] = iArr[0] + 1;
                    if (iArr[0] < 1) {
                        iArr[0] = 1;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    j3(202, 6, iArr[0]);
                    break;
                }
                break;
            default:
                switch (i2) {
                    case 103:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] >= 32) {
                                z.k.s(227, 3, 139, iArr[0], 0, 0);
                            } else if (iArr[0] < 6) {
                                z.k.s(227, 3, 139, iArr[0], 0, 0);
                            } else if (this.f9405t) {
                                z.k.s(227, 3, 139, iArr[0], 0, 0);
                            }
                            break;
                        }
                        break;
                    case 104:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, 3, 139, 5, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                    case 105:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] == 15) {
                                M3(iArr[1]);
                            }
                            j3(109, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                    case 106:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[1] != 0) {
                                iArr[1] = 1;
                            }
                            j3(111, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                    case 107:
                        if (iArr != null && iArr.length > 0) {
                            j3(58, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                    case 108:
                        z.k.s(227, 2, 58, iArr[0], iArr[1]);
                        break;
                    default:
                        switch (i2) {
                            case 110:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        iArr[0] = 1;
                                    }
                                    j3(74, 9, iArr[0]);
                                    break;
                                }
                                break;
                            case 111:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        iArr[0] = 1;
                                    }
                                    j3(74, 10, iArr[0]);
                                    break;
                                }
                                break;
                            case 112:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        iArr[0] = 1;
                                    }
                                    j3(76, 13, iArr[0]);
                                    break;
                                }
                                break;
                            case 113:
                                if (iArr != null && iArr.length > 2) {
                                    z.k.s(227, 3, 139, iArr[0], iArr[1], iArr[2]);
                                    break;
                                }
                                break;
                            case 114:
                                if (iArr != null && iArr.length > 0) {
                                    j3(75, 4, iArr[0]);
                                    break;
                                }
                                break;
                            case 115:
                                if (iArr != null && iArr.length > 0) {
                                    j3(i.a.Theme_actionModeFindDrawable, 10, iArr[0]);
                                    break;
                                }
                                break;
                            case 116:
                                if (iArr != null && iArr.length > 0) {
                                    j3(i.a.Theme_actionModeFindDrawable, 11, iArr[0]);
                                    break;
                                }
                                break;
                            case 117:
                                if (iArr != null && iArr.length > 0) {
                                    j3(i.a.Theme_actionModeFindDrawable, 12, iArr[0]);
                                    break;
                                }
                                break;
                            default:
                                switch (i2) {
                                    case 135:
                                        if (iArr != null && iArr.length > 0) {
                                            j3(109, 18, iArr[0]);
                                            break;
                                        }
                                        break;
                                    case 136:
                                        z.k.s(227, 2, 58, 36, iArr[0]);
                                        break;
                                    case 137:
                                        if (iArr != null && iArr.length > 0) {
                                            L3(iArr[0]);
                                            break;
                                        }
                                        break;
                                    default:
                                        switch (i2) {
                                            case 145:
                                                z.k.s(227, 2, 77, iArr[0], iArr[1]);
                                                break;
                                            case 146:
                                                if (iArr != null && iArr.length > 0) {
                                                    iArr[0] = iArr[0] + 1;
                                                    if (iArr[0] < 1) {
                                                        iArr[0] = 1;
                                                    } else if (iArr[0] > 2) {
                                                        iArr[0] = 2;
                                                    }
                                                    j3(202, 7, iArr[0]);
                                                    break;
                                                }
                                                break;
                                            case 147:
                                                z.k.s(227, 19, 78, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7], iArr[8], iArr[9], iArr[10], iArr[11], iArr[12], iArr[13], iArr[14], iArr[15], iArr[16], iArr[17], iArr[18]);
                                                break;
                                            case 148:
                                                z.k.s(227, 6, 79, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public void c3() {
        int i2;
        int[] iArr = new int[25];
        if (nt.f8637c == 2) {
            return;
        }
        this.f9391m = 4;
        int i3 = 0;
        for (int i4 = 0; i4 < 25; i4++) {
            iArr[i4] = 32;
        }
        iArr[0] = 26;
        iArr[1] = 145;
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
        int[] iArr2 = new int[26];
        iArr2[0] = 227;
        while (i3 < 25) {
            int i5 = i3 + 1;
            iArr2[i5] = (byte) iArr[i3];
            i3 = i5;
        }
        z.k.s(iArr2);
    }

    public void d3() {
        int[] iArr = new int[13];
        iArr[0] = 227;
        iArr[1] = 10;
        iArr[2] = 230;
        if (h0.c.E == 0) {
            iArr[3] = 0;
        } else {
            iArr[3] = 64;
        }
        iArr[4] = y0.f.f18037c;
        String str = h0.c.f2454s;
        if (str == null) {
            iArr[5] = 0;
        } else {
            try {
                iArr[5] = Integer.valueOf(str).intValue();
            } catch (Exception unused) {
            }
        }
        iArr[6] = h0.c.C;
        int i2 = u0.b.D;
        if (i2 == 6) {
            iArr[7] = 133;
        } else if (i2 == 5) {
            iArr[7] = 136;
        } else if (i2 == 2 || i2 == 3) {
            iArr[7] = 141;
            int i3 = h0.c.E;
            if (i3 == 4 || i3 == 5 || i3 == 3) {
                iArr[9] = 133;
            }
        } else if (i2 == 9 || i2 == 10 || i2 == 8) {
            iArr[7] = 134;
        } else if (i2 == 1) {
            int i4 = w0.d.f17796h;
            if (i4 >= 65536) {
                iArr[7] = 129;
                iArr[8] = (i4 + 129) - 65536;
            } else {
                iArr[7] = 130;
                iArr[8] = (i4 + 129) - 0;
            }
        }
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[9] = 132;
        } else {
            iArr[9] = 128;
        }
        iArr[10] = 0;
        iArr[11] = 0;
        iArr[12] = 0;
        z.k.s(iArr);
    }

    public final void e3() {
        this.f9408u0++;
        Time time = new Time(Time.getCurrentTimezone());
        time.setToNow();
        byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
        byte b3 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
        byte b4 = (byte) (time.month + 1);
        byte b5 = (byte) time.monthDay;
        byte b6 = (byte) time.hour;
        byte b7 = (byte) time.minute;
        if (((byte) time.second) <= 1) {
            this.f9406t0 = false;
            z.k.s(227, 10, -53, -64, b6, b7, 0, 8, b2, b3, b4, b5, 2);
        }
    }

    public final void f3(int i2, int i3) {
        z.k.s(227, 2, 58, i2, i3);
    }

    public final int g3(int i2) {
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

    public final void h3(int i2, String str) {
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

    public final void i3() {
        int i2 = this.f9368a0;
        if (i2 < 0 || i2 >= C0.length) {
            return;
        }
        int i3 = this.f9370b0;
        if (i3 == 0 && this.X == 0) {
            return;
        }
        int i4 = this.W * 10;
        int i5 = this.V * 10;
        int i6 = this.Y;
        z.k.s(227, 19, 228, (byte) (this.f9372c0 << 7), (byte) (i3 << 7), (i4 >> 24) & 255, (i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255, 0, (i5 >> 24) & 255, (i5 >> 16) & 255, (i5 >> 8) & 255, i5 & 255, g3(this.X), i6 / BatchedScanSettings.MAX_INTERVAL_SEC, (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i6 / BatchedScanSettings.MAX_INTERVAL_SEC, (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, C0[this.f9368a0], 0, 0);
    }

    public final void j3(int i2, int i3, int i4) {
        if (i2 != 26) {
            z.k.s(227, 2, i2, i3, i4);
        } else {
            z.k.s(227, 1, i2, i3);
        }
    }
}
