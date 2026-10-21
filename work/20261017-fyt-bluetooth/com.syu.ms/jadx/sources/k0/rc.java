package k0;

import android.bluetooth.BluetoothClass;
import android.content.Intent;
import android.drm.DrmManagerClient;
import android.media.TextTrackRegion;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.UrlQuerySanitizer;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.provider.Downloads;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.format.Time;
import android.widget.SpellChecker;
import app.App;
import java.nio.charset.Charset;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class rc extends lt implements o1.q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9841b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9844e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9847h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9842c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9843d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{18, 16}, new int[]{19, 12}, new int[]{20, 25}, new int[]{21, 6}, new int[]{22, 16}, new int[]{27, 0}, new int[]{32, 0}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9845f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f9846g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{16, 34}, new int[]{17, 35}, new int[]{18, 29}, new int[]{19, 12}, new int[]{20, 25}, new int[]{21, 6}, new int[]{22, 16}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 31}, new int[]{26, 30}, new int[]{27, 0}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{49, 5}, new int[]{50, 1}, new int[]{51, 5}, new int[]{52, 1}, new int[]{53, 58}, new int[]{54, 18}, new int[]{55, 62}, new int[]{56, 6}, new int[]{57, 24}, new int[]{58, 54}, new int[]{59, 0}, new int[]{60, 67}, new int[]{61, 68}, new int[]{62, 21}, new int[]{63, 25}, new int[]{64, 38}, new int[]{65, 8}, new int[]{66, 7}, new int[]{67, 30}, new int[]{68, 31}, new int[]{69, 6}, new int[]{70, 5}, new int[]{71, 2}, new int[]{72, 16}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9848i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f9849j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 5}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 13}, new int[]{18, 16}, new int[]{19, 12}, new int[]{20, 25}, new int[]{21, 6}, new int[]{22, 2}, new int[]{27, 0}, new int[]{32, 0}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f9850k = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{19, 67}, new int[]{20, 68}, new int[]{22, 29}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final byte[] f9851l = new byte[1024];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f9852m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f9853n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f9854o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f9855p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f9856q = new k();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f9857r = new o();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f9858s = new p();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public byte f9859t = DhcpPacket.DHCP_DOMAIN_NAME;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f9860u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f9861v = new q();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f9862w = new r();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f9863x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f9864y = new t();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f9865z = 0;
    public String A = ProxyProperties.LOCAL_EXCL_LIST;
    public Runnable B = new u();
    public String C = ProxyProperties.LOCAL_EXCL_LIST;
    public Runnable D = new v();
    public Runnable E = new a();
    public Runnable F = new b();
    public float G = 0.0f;
    public int H = 255;
    public int I = 255;
    public Runnable J = new c();
    public Runnable K = new d();
    public Runnable L = new e();
    public Runnable M = new f();
    public Runnable N = new g();
    public Runnable O = new h();
    public Runnable P = new i();
    public Runnable Q = new j();
    public Runnable R = new l();
    public Runnable S = new m();
    public Runnable T = new n();
    public int U = 0;
    public int V = 0;
    public int W = 0;
    public int X = 0;
    public int Y = 0;
    public int[] Z = {34, 204};

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f9840a0 = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = h0.c.E;
            if (i3 == 3) {
                i2 = 3;
            } else if (i3 != 4) {
                i2 = i3 != 5 ? 0 : 2;
            } else {
                i2 = 1;
            }
            int i4 = h0.c.P / 1000;
            z.k.s(227, 197, 3, i2, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i4 % 60);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false) || u0.b.f17347o == 1) {
                z.k.s(227, 144, 4, 41, 0, 0, 0);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rc.this.G = u0.b.f17359s0;
            if (rc.this.G > 360.0f) {
                rc.f3(rc.this, 360.0f);
            }
            if (rc.this.G < 0.0f) {
                rc.f3(rc.this, 360.0f);
                rc rcVar = rc.this;
                rcVar.G = 360.0f - Math.abs(rcVar.G);
            }
            if ((rc.this.G <= 22.5d && rc.this.G >= 0.0f) || (rc.this.G >= 337.5d && rc.this.G <= 360.0f)) {
                rc.this.I = 0;
            } else if (rc.this.G > 22.5d && rc.this.G < 67.5d) {
                rc.this.I = 8;
            } else if (rc.this.G >= 67.5d && rc.this.G <= 112.5d) {
                rc.this.I = 16;
            } else if (rc.this.G > 112.5d && rc.this.G < 157.5d) {
                rc.this.I = 24;
            } else if (rc.this.G >= 157.5d && rc.this.G <= 202.5d) {
                rc.this.I = 32;
            } else if (rc.this.G > 202.5d && rc.this.G < 247.5d) {
                rc.this.I = 40;
            } else if (rc.this.G >= 247.5d && rc.this.G <= 292.5d) {
                rc.this.I = 48;
            } else if (rc.this.G <= 292.5d || rc.this.G >= 337.5d) {
                rc.this.I = 64;
            } else {
                rc.this.I = 56;
            }
            if (rc.this.I != rc.this.H) {
                z.k.s(227, -55, 2, rc.this.I, 0);
                qt.y0(MediaProperties.HEIGHT_288, u0.b.f17359s0);
                rc rcVar2 = rc.this;
                rcVar2.H = rcVar2.I;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(285, u0.b.f17361t0);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(286, (int) (u0.b.b2 * 10000.0d));
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(287, (int) (u0.b.c2 * 10000.0d));
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (TextUtils.isEmpty(u0.b.i3)) {
                    return;
                }
                rc.this.k3(2, u0.b.i3);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (TextUtils.isEmpty(h0.c.f2437h)) {
                    return;
                }
                rc.this.k3(1, h0.c.f2437h);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 9 || i2 == 3 || i2 == 4 || i2 == 8 || i2 == 10) {
                rc.this.l3((byte) 112, u0.b.i3);
            } else {
                u0.b.i3 = ProxyProperties.LOCAL_EXCL_LIST;
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 9) {
                rc.this.l3((byte) 113, ProxyProperties.LOCAL_EXCL_LIST);
            } else if (i2 == 3 || i2 == 4 || i2 == 8 || i2 == 10) {
                rc.this.l3((byte) 113, u0.b.j3);
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.m();
            int i2 = nt.f8633a;
            if (i2 == 3408246 || i2 == 3998070 || i2 == 3473782 || i2 == 3539318 || i2 == 3604854 || i2 == 3670390 || i2 == 3735926 || i2 == 3801462 || i2 == 3866998 || i2 == 4915574) {
                a.f.p().t(LogType.CANBUS, "DataMain.sAppId 1111 = " + u0.b.D + "--------- AppID_pre = " + rc.this.f9855p);
                int i3 = rc.this.f9855p;
                int i4 = u0.b.D;
                if (i3 != i4) {
                    if (i4 != 11) {
                        z.k.s(227, 207, 1, 4);
                    } else if (i4 == 11 && (i3 == 2 || i3 == 15)) {
                        int[] iArr = nt.f8645g;
                        if (iArr[420] == 2) {
                            z.k.s(227, 207, 1, 2);
                        } else if (iArr[420] == 3) {
                            z.k.s(227, 207, 1, 3);
                        } else {
                            z.k.s(227, 207, 1, 1);
                        }
                    }
                    rc.this.f9855p = u0.b.D;
                }
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.m3 == 2 ? 64 : 0;
            z.k.s(227, 114, 2, (y0.f.f18055i == 1 || y0.f.C0 == 0) ? i2 | 128 : i2 & 112, 0);
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 1) {
                String str = w0.d.H;
                if (str == null) {
                    rc.this.l3((byte) 112, "----");
                } else {
                    rc.this.l3((byte) 112, str);
                }
            }
        }
    }

    public class n implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f9879a;

        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f9879a = time;
            time.setToNow();
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            Time time2 = this.f9879a;
            byte b2 = (byte) (time2.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time2.month + 1);
            byte b4 = (byte) time2.monthDay;
            byte b5 = (byte) time2.hour;
            byte b6 = (byte) time2.minute;
            byte b7 = (byte) time2.second;
            int i3 = nt.f8637c;
            switch (i3) {
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    break;
                default:
                    switch (i3) {
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                            break;
                        default:
                            switch (i3) {
                                case 35:
                                case 36:
                                case 37:
                                case 38:
                                case 39:
                                case 40:
                                case 41:
                                case 42:
                                case 43:
                                    break;
                                default:
                                    switch (i3) {
                                        case 77:
                                        case 78:
                                        case 79:
                                        case 80:
                                        case 81:
                                        case 82:
                                        case 83:
                                            break;
                                        default:
                                            z.k.s(227, -57, 6, b2, b3, b4, (i2 << 7) | b5, b6, b7);
                                            break;
                                    }
                            }
                            break;
                    }
                    break;
            }
            z.k.s(227, -57, 7, b2, b3, b4, (i2 << 7) | b5, b6, b7, (byte) time2.weekDay);
        }
    }

    public class o implements Runnable {
        public o() {
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0053  */
        /* JADX WARN: Code duplicated, block: B:21:0x005d  */
        /* JADX WARN: Code duplicated, block: B:22:0x0067  */
        /* JADX WARN: Code duplicated, block: B:23:0x0071  */
        /* JADX WARN: Code duplicated, block: B:24:0x007b  */
        /* JADX WARN: Code duplicated, block: B:25:0x0085  */
        /* JADX WARN: Code duplicated, block: B:26:0x008f  */
        /* JADX WARN: Code duplicated, block: B:27:0x0099  */
        /* JADX WARN: Code duplicated, block: B:28:0x00a2  */
        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 32) {
                z.k.s(227, 202, 2, 0, 64);
                return;
            }
            if (i2 == 33) {
                z.k.s(227, 202, 2, 1, 64);
                return;
            }
            if (i2 == 40) {
                z.k.s(227, 202, 2, 1, 16);
                return;
            }
            if (i2 == 41) {
                z.k.s(227, 202, 2, 1, 16);
                return;
            }
            switch (i2) {
                case 21:
                    z.k.s(227, 202, 2, 1, 16);
                    return;
                case 22:
                    z.k.s(227, 202, 2, 0, 16);
                    return;
                case 23:
                    break;
                case 24:
                    z.k.s(227, 202, 2, 0, 32);
                    return;
                case 25:
                    z.k.s(227, 202, 2, 1, 48);
                    return;
                case 26:
                    z.k.s(227, 202, 2, 0, 48);
                    return;
                default:
                    switch (i2) {
                        case 44:
                        case 52:
                            z.k.s(227, 202, 2, 1, 0);
                            break;
                        case 45:
                        case 53:
                            z.k.s(227, 202, 2, 2, 0);
                            break;
                        case 46:
                        case 54:
                            z.k.s(227, 202, 2, 3, 0);
                            break;
                        case 47:
                        case 55:
                            z.k.s(227, 202, 2, 4, 0);
                            break;
                        case 48:
                        case 56:
                            z.k.s(227, 202, 2, 5, 0);
                            break;
                        case 49:
                        case 57:
                            z.k.s(227, 202, 2, 6, 0);
                            break;
                        case 50:
                        case 58:
                            z.k.s(227, 202, 2, 7, 0);
                            break;
                        case 51:
                        case 59:
                            z.k.s(227, 202, 2, 4, 0);
                            break;
                        case 60:
                        case 61:
                            z.k.s(227, 202, 2, 5, 0);
                            break;
                        default:
                            switch (i2) {
                                case 65:
                                    z.k.s(227, 202, 2, 1, 0);
                                    break;
                                case 66:
                                    z.k.s(227, 202, 2, 2, 0);
                                    break;
                                case 67:
                                    z.k.s(227, 202, 2, 3, 0);
                                    break;
                                case 68:
                                    z.k.s(227, 202, 2, 4, 0);
                                    break;
                                case 69:
                                    z.k.s(227, 202, 2, 5, 0);
                                    break;
                                case 70:
                                    z.k.s(227, 202, 2, 6, 0);
                                    break;
                                case 71:
                                    z.k.s(227, 202, 2, 7, 0);
                                    break;
                                case 72:
                                    z.k.s(227, 202, 2, 4, 0);
                                    break;
                                case 73:
                                    z.k.s(227, 202, 2, 5, 0);
                                    break;
                                case 74:
                                case 75:
                                case 76:
                                    z.k.s(227, 202, 2, 8, 0);
                                    break;
                                default:
                                    switch (i2) {
                                        case 80:
                                            z.k.s(227, 202, 2, 0, 16);
                                            break;
                                        case 81:
                                            z.k.s(227, 202, 2, 0, 16);
                                            break;
                                        case 82:
                                            z.k.s(227, 202, 2, 1, 48);
                                            break;
                                        case 83:
                                            z.k.s(227, 202, 2, 0, 48);
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    return;
            }
            z.k.s(227, 202, 2, 1, 32);
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 != 64 && i2 != 101 && i2 != 104 && i2 != 107) {
                z.k.s(227, 132, 2, 1, 1);
            } else if (rc.this.f9860u == 0) {
                z.k.s(227, 132, 2, 2, 0);
            } else {
                z.k.s(227, 132, 2, 1, 1);
            }
        }
    }

    public class q implements Runnable {
        public q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(rc.this.f9862w);
            rc.this.f9859t = DhcpPacket.DHCP_DOMAIN_NAME;
            int i2 = nt.f8637c;
            if (i2 != 1 && i2 != 4 && i2 != 15 && i2 != 18 && i2 != 64 && i2 != 85 && i2 != 101 && i2 != 104 && i2 != 107 && i2 != 12 && i2 != 13 && i2 != 87 && i2 != 88) {
                switch (i2) {
                }
            }
            z.k.s(227, 132, 2, 2, 0);
        }
    }

    public class r implements Runnable {
        public r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rc rcVar = rc.this;
            byte b2 = (byte) (rcVar.f9859t - 1);
            rcVar.f9859t = b2;
            if (b2 <= 0) {
                l0.b0.p0(rcVar.f9862w);
                rc.this.f9859t = (byte) 16;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 != 1) {
                int i2 = nt.f8637c;
                if (i2 != 1 && i2 != 4 && i2 != 15 && i2 != 18 && i2 != 64 && i2 != 85 && i2 != 101 && i2 != 104 && i2 != 107 && i2 != 12 && i2 != 13 && i2 != 87 && i2 != 88) {
                    switch (i2) {
                    }
                    return;
                }
                z.k.s(227, 132, 2, 2, 0);
                return;
            }
            z.k.s(227, 144, 4, 48, 0, 0, 0);
            switch (nt.f8637c) {
                case 1:
                case 4:
                case 12:
                case 13:
                case 15:
                case 18:
                case 85:
                case 87:
                case 88:
                case 90:
                case 91:
                case 92:
                case 93:
                case 94:
                case 95:
                case 96:
                case 97:
                case 98:
                    z.k.s(227, 144, 2, 36, 0);
                    break;
                case 10:
                case 99:
                case 102:
                case 105:
                case 108:
                    z.k.s(227, 198, 2, 69, 1);
                    break;
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 28:
                case 29:
                case 40:
                case 41:
                case 42:
                case 43:
                case 79:
                case 80:
                case 81:
                case 82:
                case 83:
                    z.k.s(227, 144, 2, 23, 0);
                    z.k.s(227, 144, 2, 79, 0);
                    break;
                case 30:
                case 31:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 77:
                case 78:
                    z.k.s(227, 144, 2, 23, 0);
                    break;
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 61:
                case 65:
                case 66:
                case 67:
                case 68:
                case 69:
                case 70:
                case 71:
                case 72:
                case 73:
                case 75:
                case 76:
                    z.k.s(227, 144, 2, 23, 0);
                    if (u0.b.D != 11) {
                        z.k.s(227, 207, 1, 4);
                    }
                    break;
                case 64:
                case 101:
                case 104:
                case 107:
                    z.k.s(227, 198, 2, 69, 0);
                    z.k.s(227, 144, 2, 36, 0);
                    break;
            }
            int i3 = nt.f8637c;
            if (i3 != 1 && i3 != 4 && i3 != 15 && i3 != 18 && i3 != 64 && i3 != 85 && i3 != 101 && i3 != 104 && i3 != 107 && i3 != 12 && i3 != 13 && i3 != 87 && i3 != 88) {
                switch (i3) {
                }
                return;
            }
            if (rc.this.f9859t <= 2) {
                z.k.s(227, 132, 2, 2, 30);
            } else {
                z.k.s(227, 132, 2, 2, 0);
            }
        }
    }

    public class s implements o1.p {
        public s() {
        }

        @Override // o1.p
        public void d(Object obj) {
            rc rcVar = rc.this;
            int i2 = rcVar.f9865z;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                rcVar.f9865z = i3;
                if (u0.b.D == 11) {
                    int i4 = y0.f.Q0 == 1 ? 1 : 0;
                    z.k.s(227, 208, 1, y0.f.T0 == 1 ? i4 | 2 : i4 & i.a.Theme_dialogTitleDecorLayout);
                }
            }
        }
    }

    public class t implements Runnable {
        public t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rc rcVar = rc.this;
            int i2 = rcVar.f9863x;
            int i3 = y0.f.Q0;
            if (i2 != i3) {
                rcVar.f9863x = i3;
                if (u0.b.D == 11) {
                    int i4 = y0.f.Q0 == 1 ? 1 : 0;
                    z.k.s(227, 208, 1, y0.f.T0 == 1 ? i4 | 2 : i4 & i.a.Theme_dialogTitleDecorLayout);
                }
            }
        }
    }

    public class u implements Runnable {
        public u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (!rc.this.A.equals(h0.c.f2437h)) {
                rc rcVar = rc.this;
                String str = h0.c.f2437h;
                rcVar.A = str;
                if (str == null) {
                    rcVar.A = ProxyProperties.LOCAL_EXCL_LIST;
                } else {
                    z2 = str.isEmpty() ? false : true;
                }
            }
            if (u0.b.D == 2) {
                if (z2) {
                    rc rcVar2 = rc.this;
                    rcVar2.l3((byte) 112, rcVar2.A);
                    return;
                }
                String str2 = rc.this.A;
                if (str2 == null || str2.isEmpty()) {
                    rc.this.l3((byte) 112, " ");
                }
            }
        }
    }

    public class v implements Runnable {
        public v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (!rc.this.C.equals(h0.c.f2441j)) {
                rc rcVar = rc.this;
                String str = h0.c.f2441j;
                rcVar.C = str;
                if (str == null) {
                    rcVar.C = ProxyProperties.LOCAL_EXCL_LIST;
                } else {
                    z2 = str.isEmpty() ? false : true;
                }
            }
            if (u0.b.D == 2) {
                if (z2) {
                    rc.this.l3((byte) 113, h0.c.f2441j);
                    return;
                }
                String str2 = h0.c.f2441j;
                if (str2 == null || str2.isEmpty()) {
                    rc.this.l3((byte) 113, ProxyProperties.LOCAL_EXCL_LIST);
                }
            }
        }
    }

    public static /* synthetic */ float f3(rc rcVar, float f2) {
        float f3 = rcVar.G % f2;
        rcVar.G = f3;
        return f3;
    }

    public static void q3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 ^ 255);
        z.k.q(bArr);
    }

    @Override // k0.lt
    public int[] K2() {
        return new int[]{8, 8};
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        int i2 = nt.f8637c;
        if (i2 == 1 || i2 == 4 || i2 == 13) {
            y0.f.C0 = 32;
            return;
        }
        if (i2 == 52 || i2 == 53 || i2 == 54 || i2 == 55 || i2 == 56 || i2 == 57 || i2 == 58 || i2 == 59 || i2 == 61 || i2 == 65 || i2 == 66 || i2 == 67 || i2 == 68 || i2 == 69 || i2 == 70 || i2 == 71 || i2 == 72 || i2 == 73 || i2 == 75 || i2 == 76 || i2 == 22 || i2 == 24 || i2 == 26 || i2 == 32 || i2 == 80 || i2 == 81 || i2 == 83) {
            y0.f.C0 = 26;
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:109:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:20:0x00a3 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:39:0x0115  */
    /* JADX WARN: Code duplicated, block: B:57:0x0144  */
    /* JADX WARN: Code duplicated, block: B:59:0x014c  */
    /* JADX WARN: Code duplicated, block: B:63:0x0170  */
    /* JADX WARN: Code duplicated, block: B:66:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:67:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:68:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:70:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:71:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:72:0x0213  */
    /* JADX WARN: Code duplicated, block: B:84:0x0244  */
    /* JADX WARN: Code duplicated, block: B:98:0x0271 A[FALL_THROUGH] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    @Override // k0.lt
    public void S2() {
        /*
            Method dump skipped, instruction units count: 1148
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k0.rc.S2():void");
    }

    /* JADX WARN: Code duplicated, block: B:871:0x2030  */
    /* JADX WARN: Code duplicated, block: B:874:0x2035 A[LOOP:2: B:872:0x2031->B:874:0x2035, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:876:0x2044  */
    /* JADX WARN: Code duplicated, block: B:879:0x2049 A[LOOP:3: B:877:0x2045->B:879:0x2049, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:881:0x2058  */
    /* JADX WARN: Code duplicated, block: B:884:0x205d A[LOOP:4: B:882:0x2059->B:884:0x205d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:886:0x206c  */
    /* JADX WARN: Code duplicated, block: B:889:0x2071 A[LOOP:5: B:887:0x206d->B:889:0x2071, LOOP_END] */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int i4;
        int i5;
        int i6;
        int i7;
        int[][] iArr4;
        byte b2;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        byte b3 = bArr[i2];
        if (b3 == 7) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            byte b6 = bArr[i2 + 4];
            byte b7 = bArr[i2 + 5];
            switch (b4) {
                case 1:
                    qt.y0(156, ((b5 << 8) & 65280) | (b6 & 255));
                    break;
                case 2:
                    qt.y0(157, ((b5 << 8) & 65280) | (b6 & 255));
                    break;
                case 3:
                    qt.y0(158, ((b5 << 8) & 65280) | (b6 & 255));
                    break;
                case 4:
                    qt.y0(159, ((b5 << 8) & 65280) | (b6 & 255));
                    break;
                case 5:
                    qt.y0(160, (b7 & 255) | ((b5 << 16) & Spanned.SPAN_PRIORITY) | ((b6 << 8) & 65280));
                    break;
                case 6:
                    qt.y0(161, (b7 & 255) | ((b5 << 16) & Spanned.SPAN_PRIORITY) | ((b6 << 8) & 65280));
                    break;
                case 7:
                    qt.y0(162, ((b5 << 8) & 65280) | (b6 & 255));
                    break;
                case 8:
                    qt.y0(163, ((b5 << 8) & 65280) | (b6 & 255));
                    break;
                case 9:
                    qt.y0(164, (b7 & 255) | ((b5 << 16) & Spanned.SPAN_PRIORITY) | ((b6 << 8) & 65280));
                    break;
                case 10:
                    qt.y0(165, (b7 & 255) | ((b5 << 16) & Spanned.SPAN_PRIORITY) | ((b6 << 8) & 65280));
                    break;
            }
        }
        if (b3 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 51) {
            qt.y0(195, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(196, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(197, (bArr[i2 + 8] & 255) | ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | (65280 & (bArr[i2 + 7] << 8)));
            return;
        }
        if (b3 == 93) {
            int i14 = i2 + 2;
            qt.y0(217, (bArr[i14] >> 0) & 1);
            qt.y0(357, (bArr[i14] >> 1) & 1);
            qt.y0(358, (bArr[i14] >> 2) & 1);
            qt.y0(416, bArr[i2 + 3] & 255);
            return;
        }
        if (b3 == 99) {
            int i15 = i2 + 2;
            qt.y0(349, (bArr[i15] >> 7) & 1);
            qt.y0(SpellChecker.WORD_ITERATOR_INTERVAL, (bArr[i15] >> 6) & 1);
            qt.y0(351, (bArr[i15] >> 4) & 3);
            return;
        }
        if (b3 == 72) {
            int i16 = i2 + 2;
            qt.y0(42, (bArr[i16] >> 7) & 1);
            qt.y0(43, (bArr[i16] >> 6) & 1);
            qt.y0(86, (bArr[i16] >> 5) & 1);
            qt.y0(67, (bArr[i16] >> 4) & 1);
            qt.y0(46, (bArr[i16] >> 3) & 1);
            qt.y0(47, (bArr[i16] >> 2) & 1);
            qt.y0(44, (bArr[i2 + 3] >> 0) & 15);
            int i17 = i2 + 4;
            int i18 = bArr[i17] & 255;
            if (i18 == 0) {
                qt.y0(40, -2);
                return;
            }
            if (i18 == 254) {
                qt.y0(40, -1);
                return;
            } else if (i18 != 255) {
                qt.y0(40, bArr[i17] & 255);
                return;
            } else {
                qt.y0(40, -3);
                return;
            }
        }
        if (b3 == 73) {
            int i19 = i2 + 2;
            qt.y0(499, (bArr[i19] >> 6) & 3);
            qt.y0(500, (bArr[i19] >> 4) & 3);
            qt.y0(501, (bArr[i19] >> 2) & 3);
            qt.y0(502, (bArr[i19] >> 0) & 3);
            int i20 = i2 + 3;
            qt.y0(503, (bArr[i20] >> 6) & 3);
            qt.y0(504, (bArr[i20] >> 5) & 1);
            qt.y0(505, (bArr[i20] >> 4) & 1);
            qt.y0(506, (bArr[i20] >> 3) & 1);
            qt.y0(507, (bArr[i20] >> 2) & 1);
            qt.y0(508, (bArr[i2 + 4] >> 0) & 255);
            qt.y0(509, (bArr[i2 + 5] >> 0) & 255);
            qt.y0(510, (bArr[i2 + 6] >> 0) & 255);
            qt.y0(511, (bArr[i2 + 7] >> 0) & 255);
            qt.y0(512, (bArr[i2 + 8] >> 0) & 255);
            qt.y0(513, (bArr[i2 + 9] >> 0) & 255);
            return;
        }
        if (b3 == 95) {
            int i21 = i2 + 2;
            qt.y0(199, (bArr[i21] >> 7) & 1);
            qt.y0(200, (bArr[i21] >> 6) & 1);
            qt.y0(201, (bArr[i21] >> 5) & 1);
            qt.y0(202, (bArr[i21] >> 4) & 1);
            qt.y0(203, (bArr[i21] >> 3) & 1);
            qt.y0(204, (bArr[i21] >> 2) & 1);
            qt.y0(205, (bArr[i21] >> 1) & 1);
            qt.y0(206, (bArr[i21] >> 0) & 1);
            qt.y0(207, bArr[i2 + 3] & 255);
            qt.y0(208, bArr[i2 + 4] & 255);
            qt.y0(209, bArr[i2 + 5] & 255);
            qt.y0(210, bArr[i2 + 6] & 255);
            return;
        }
        if (b3 == 96) {
            qt.y0(363, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(364, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(365, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(366, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(367, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(368, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(375, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            qt.y0(376, (bArr[i2 + 17] & 255) | ((bArr[i2 + 16] << 8) & 65280));
            return;
        }
        switch (b3) {
            case 16:
                switch (bArr[i2 + 2]) {
                    case 1:
                        int i22 = nt.f8637c;
                        if (i22 == 52 || i22 == 53 || i22 == 54 || i22 == 55 || i22 == 56 || i22 == 57 || i22 == 58 || i22 == 59 || i22 == 61 || i22 == 75) {
                            if (u0.b.D != 11) {
                                p3();
                            }
                        } else if (u0.b.D != 1) {
                            o1.u.x0();
                        } else {
                            int i23 = w0.d.f17796h;
                            if (i23 == 0) {
                                w0.f.J(28, 31);
                            } else if (i23 == 1) {
                                w0.f.J(28, 30);
                            } else if (i23 == 65536) {
                                w0.f.J(28, 30);
                            } else if (i23 == 65537) {
                                w0.f.J(28, 30);
                            } else if (i23 == 65538) {
                                w0.f.J(28, 30);
                            }
                        }
                        break;
                    case 2:
                        int i24 = nt.f8637c;
                        if (i24 == 52 || i24 == 53 || i24 == 54 || i24 == 55 || i24 == 56 || i24 == 57 || i24 == 58 || i24 == 59 || i24 == 61 || i24 == 75) {
                            if (u0.b.D != 11) {
                                p3();
                            }
                        } else if (u0.b.D != 1) {
                            o1.u.x0();
                        } else {
                            int i25 = w0.d.f17796h;
                            if (i25 == 0 || i25 == 1) {
                                w0.f.J(28, 27);
                            } else if (i25 == 65536) {
                                w0.f.J(28, 28);
                            } else if (i25 == 65537) {
                                w0.f.J(28, 29);
                            } else if (i25 == 65538) {
                                w0.f.J(28, 27);
                            }
                        }
                        break;
                    case 3:
                        l0.b0.l0(54, 0);
                        l0.b0.l0(54, 1);
                        break;
                    case 4:
                        o1.u.c1();
                        break;
                    case 5:
                        l0.b0.l0(76, 0);
                        l0.b0.l0(76, 1);
                        break;
                    case 6:
                        l0.b0.l0(53, 0);
                        l0.b0.l0(53, 1);
                        break;
                    case 7:
                        l0.b0.l0(1, 0);
                        l0.b0.l0(1, 1);
                        break;
                    case 8:
                        if (!o1.u.S("com.syu.carlink")) {
                            o1.u.g("com.syu.carlink");
                        }
                        break;
                }
                break;
            case 17:
                int i26 = i2 + 2;
                if (this.Y != bArr[i26]) {
                    byte b8 = bArr[i26];
                    this.Y = b8;
                    if (b8 == 1) {
                        y0.f.f18034b.a(5);
                    } else {
                        y0.f.f18034b.a(u0.b.D);
                    }
                }
                break;
            case 18:
                int i27 = nt.f8637c;
                if (i27 == 52 || i27 == 53 || i27 == 54 || i27 == 55 || i27 == 56 || i27 == 57 || i27 == 58 || i27 == 59 || i27 == 61 || i27 == 75) {
                    int i28 = i2 + 2;
                    qt.y0(420, bArr[i28] & 7);
                    qt.y0(Downloads.Impl.STATUS_UNKNOWN_ERROR, (bArr[i28] >> 3) & 1);
                    qt.y0(Downloads.Impl.STATUS_FILE_ERROR, (bArr[i28] >> 4) & 1);
                    qt.y0(Downloads.Impl.STATUS_UNHANDLED_REDIRECT, (bArr[i28] >> 5) & 1);
                    qt.y0(Downloads.Impl.STATUS_UNHANDLED_HTTP_CODE, (bArr[i28] >> 6) & 1);
                    qt.y0(Downloads.Impl.STATUS_HTTP_DATA_ERROR, (bArr[i28] >> 7) & 1);
                    int i29 = i2 + 3;
                    qt.y0(421, (bArr[i29] >> 0) & 1);
                    qt.y0(422, (bArr[i29] >> 1) & 1);
                    qt.y0(423, (bArr[i29] >> 4) & 15);
                    qt.y0(424, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(Downloads.Impl.STATUS_TOO_MANY_REDIRECTS, bArr[i2 + 6] & 255);
                    qt.y0(Downloads.Impl.STATUS_BLOCKED, bArr[i2 + 7] & 255);
                } else {
                    qt.y0(UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL, bArr[i2 + 2] & 255);
                    qt.y0(Downloads.Impl.STATUS_NOT_ACCEPTABLE, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                    qt.y0(407, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                    qt.y0(408, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                    qt.y0(409, (bArr[i2 + 10] & 255) | ((bArr[i2 + 9] << 8) & 65280));
                }
                break;
            case 19:
                int i30 = nt.f8637c;
                if (i30 == 52 || i30 == 53 || i30 == 54 || i30 == 55 || i30 == 56 || i30 == 57 || i30 == 58 || i30 == 59 || i30 == 61 || i30 == 75) {
                    qt.x0(425, new String(bArr, i2 + 2, i3 - 2));
                } else {
                    qt.y0(410, bArr[i2 + 2] & 255);
                }
                break;
            case 20:
                qt.x0(426, new String(bArr, i2 + 2, i3 - 2));
                break;
            case 21:
                qt.x0(427, new String(bArr, i2 + 2, i3 - 2));
                break;
            case 22:
                qt.x0(428, new String(bArr, i2 + 2, i3 - 2));
                break;
            case 23:
                int i31 = i2 + 2;
                qt.y0(290, (bArr[i31] >> 0) & 1);
                qt.y0(418, (bArr[i31] >> 4) & 15);
                qt.y0(291, bArr[i2 + 3] & 255);
                qt.y0(292, bArr[i2 + 4] & 255);
                qt.y0(293, bArr[i2 + 5] & 255);
                qt.y0(294, bArr[i2 + 6] & 255);
                qt.y0(295, bArr[i2 + 7] & 255);
                qt.y0(296, bArr[i2 + 8] & 255);
                int i32 = i2 + 9;
                qt.y0(297, bArr[i32] & 255);
                qt.y0(298, (bArr[i32] >> 6) & 1);
                qt.y0(299, (bArr[i32] >> 0) & 15);
                qt.y0(385, (bArr[i32] >> 4) & 3);
                qt.y0(419, (bArr[i32] >> 5) & 1);
                switch (nt.f8637c) {
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                    case 60:
                    case 61:
                    case 65:
                    case 66:
                    case 67:
                    case 68:
                    case 69:
                    case 70:
                    case 71:
                    case 72:
                    case 73:
                    case 74:
                    case 75:
                    case 76:
                    case 77:
                    case 78:
                    case 79:
                    case 80:
                    case 81:
                    case 82:
                    case 83:
                        if ((bArr[i32] & 128) != 0 && (bArr[i31] & 1) == 0) {
                            z.k.s(227, 132, 2, 1, 1);
                            break;
                        }
                        break;
                }
                break;
            case 24:
                qt.x0(429, new String(bArr, i2 + 2, i3 - 2));
                break;
            case 25:
                switch (bArr[i2 + 2]) {
                    case 1:
                        qt.x0(430, new String(bArr, i2 + 3, i3 - 3));
                        break;
                    case 2:
                        qt.x0(431, new String(bArr, i2 + 3, i3 - 3));
                        break;
                    case 3:
                        qt.x0(432, new String(bArr, i2 + 3, i3 - 3));
                        break;
                    case 4:
                        qt.x0(433, new String(bArr, i2 + 3, i3 - 3));
                        break;
                    case 5:
                        qt.x0(434, new String(bArr, i2 + 3, i3 - 3));
                        break;
                    case 6:
                        qt.x0(435, new String(bArr, i2 + 3, i3 - 3));
                        break;
                    case 7:
                        qt.x0(436, new String(bArr, i2 + 3, i3 - 3));
                        break;
                    case 8:
                        qt.x0(437, new String(bArr, i2 + 3, i3 - 3));
                        break;
                    case 9:
                        qt.x0(438, new String(bArr, i2 + 3, i3 - 3));
                        break;
                    case 10:
                        qt.x0(439, new String(bArr, i2 + 3, i3 - 3));
                        break;
                }
                break;
            case 26:
                qt.x0(Downloads.Impl.STATUS_HTTP_EXCEPTION, new String(bArr, i2 + 2, i3 - 2));
                break;
            default:
                switch (b3) {
                    case 32:
                        byte b9 = bArr[i2 + 2];
                        byte b10 = bArr[i2 + 3];
                        int i33 = nt.f8637c;
                        if (i33 != 9) {
                            if (i33 != 19 && i33 != 20 && i33 != 27) {
                                if ((i33 < 0 || i33 > 13) && i33 != 34 && i33 != 89 && i33 != 62 && i33 != 99 && i33 != 100 && i33 != 102 && i33 != 103 && i33 != 104 && i33 != 105 && i33 != 106 && i33 != 107 && i33 != 108 && i33 != 63 && i33 != 64 && i33 != 101 && i33 != 84 && i33 != 85 && i33 != 86) {
                                    int i34 = b9 & 255;
                                    if (i34 != 23) {
                                        if (i34 != 24) {
                                            if (i34 != 25) {
                                                if (i34 != 26) {
                                                    if (i34 != 64) {
                                                        if (i34 != 65) {
                                                            if (i34 != 66) {
                                                                if (i34 != 67) {
                                                                    this.f9842c = i34;
                                                                    int i35 = 0;
                                                                    while (true) {
                                                                        iArr2 = this.f9843d;
                                                                        if (i35 < iArr2.length) {
                                                                            int i36 = this.f9842c;
                                                                            if (i36 != iArr2[i35][0]) {
                                                                                i35++;
                                                                            } else if (i36 != 0) {
                                                                                this.f9841b = i35;
                                                                            }
                                                                        }
                                                                    }
                                                                    int i37 = this.f9842c;
                                                                    if (i37 == 1) {
                                                                        if ((b10 & 255) != 0) {
                                                                            switch (nt.f8633a) {
                                                                                case 1442166:
                                                                                case 1573238:
                                                                                case 1704310:
                                                                                case 2097526:
                                                                                case 5243254:
                                                                                case 5308790:
                                                                                case 5439862:
                                                                                    int i38 = nt.f8645g[291];
                                                                                    if (i38 < 38) {
                                                                                        i38++;
                                                                                    }
                                                                                    z.k.s(227, -124, 2, 2, i38);
                                                                                    break;
                                                                                case 3408246:
                                                                                case 3473782:
                                                                                case 3539318:
                                                                                case 3604854:
                                                                                case 3670390:
                                                                                case 3735926:
                                                                                case 3801462:
                                                                                case 3866998:
                                                                                case 3998070:
                                                                                case 4260214:
                                                                                case 4325750:
                                                                                case 4391286:
                                                                                case 4456822:
                                                                                case 4522358:
                                                                                case 4587894:
                                                                                case 4653430:
                                                                                case 4718966:
                                                                                case 4784502:
                                                                                case 4915574:
                                                                                case 4981110:
                                                                                    z.k.s(227, -50, 2, 1, 1);
                                                                                    a.i.a0(50L);
                                                                                    z.k.s(227, -50, 2, 1, 0);
                                                                                    break;
                                                                                default:
                                                                                    l0.b0.l0(7, 0);
                                                                                    l0.b0.l0(7, 1);
                                                                                    break;
                                                                            }
                                                                        }
                                                                    } else if (i37 == 2) {
                                                                        if ((b10 & 255) != 0) {
                                                                            switch (nt.f8633a) {
                                                                                case 1442166:
                                                                                case 1573238:
                                                                                case 1704310:
                                                                                case 2097526:
                                                                                case 5243254:
                                                                                case 5308790:
                                                                                case 5439862:
                                                                                    int i39 = nt.f8645g[291];
                                                                                    if (i39 > 0) {
                                                                                        i39--;
                                                                                    }
                                                                                    z.k.s(227, -124, 2, 2, i39);
                                                                                    break;
                                                                                case 3408246:
                                                                                case 3473782:
                                                                                case 3539318:
                                                                                case 3604854:
                                                                                case 3670390:
                                                                                case 3735926:
                                                                                case 3801462:
                                                                                case 3866998:
                                                                                case 3998070:
                                                                                case 4260214:
                                                                                case 4325750:
                                                                                case 4391286:
                                                                                case 4456822:
                                                                                case 4522358:
                                                                                case 4587894:
                                                                                case 4653430:
                                                                                case 4718966:
                                                                                case 4784502:
                                                                                case 4915574:
                                                                                case 4981110:
                                                                                    z.k.s(227, -50, 2, 2, 1);
                                                                                    a.i.a0(50L);
                                                                                    z.k.s(227, -50, 2, 2, 0);
                                                                                    break;
                                                                                default:
                                                                                    l0.b0.l0(8, 0);
                                                                                    l0.b0.l0(8, 1);
                                                                                    break;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        int i40 = b10 & 255;
                                                                        if (i40 == 1) {
                                                                            if (i35 < iArr2.length) {
                                                                                l0.b0.l0(iArr2[i35][1], 0);
                                                                            }
                                                                        } else if (i40 == 0) {
                                                                            int i41 = this.f9841b;
                                                                            if (i41 < iArr2.length && i41 != 255) {
                                                                                l0.b0.l0(iArr2[i41][1], 1);
                                                                            }
                                                                            this.f9841b = 255;
                                                                        }
                                                                        break;
                                                                    }
                                                                } else {
                                                                    int i42 = b10 & 255;
                                                                    if (i42 == 1) {
                                                                        o3();
                                                                    }
                                                                    if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.PAJeepRaceOptionsIndexAct")) {
                                                                        qt.y0(384, i42);
                                                                    }
                                                                    break;
                                                                }
                                                            } else {
                                                                if ((b10 & 255) == 1) {
                                                                    m3();
                                                                }
                                                                break;
                                                            }
                                                        } else {
                                                            int i43 = b10 & 255;
                                                            if (i43 == 1) {
                                                                o3();
                                                            }
                                                            if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.PAJeepRaceOptionsIndexAct")) {
                                                                qt.y0(359, i43);
                                                            }
                                                            break;
                                                        }
                                                    } else {
                                                        int i44 = b10 & 255;
                                                        if (i44 == 1) {
                                                            n3();
                                                        }
                                                        if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.PAJeepOffRoadIndexAct")) {
                                                            qt.y0(310, i44);
                                                        }
                                                        break;
                                                    }
                                                } else {
                                                    for (int i45 = 0; i45 < (b10 & 255); i45++) {
                                                        l0.b0.l0(30, 0);
                                                    }
                                                    l0.b0.l0(30, 1);
                                                    break;
                                                }
                                            } else {
                                                for (int i46 = 0; i46 < (b10 & 255); i46++) {
                                                    l0.b0.l0(31, 0);
                                                }
                                                l0.b0.l0(31, 1);
                                                break;
                                            }
                                        } else {
                                            l0.b0.r0(b10 & 255);
                                            break;
                                        }
                                    } else {
                                        l0.b0.s0(b10 & 255);
                                        break;
                                    }
                                } else {
                                    this.f9845f = b9 & 255;
                                    int i47 = 0;
                                    while (true) {
                                        iArr3 = this.f9846g;
                                        if (i47 < iArr3.length) {
                                            int i48 = this.f9845f;
                                            if (i48 != iArr3[i47][0]) {
                                                i47++;
                                            } else if (i48 != 0) {
                                                this.f9844e = i47;
                                            }
                                        }
                                    }
                                    int i49 = this.f9845f;
                                    switch (i49) {
                                        case 23:
                                            for (i4 = 0; i4 < (b10 & 255); i4++) {
                                                l0.b0.l0(7, 0);
                                            }
                                            l0.b0.l0(7, 1);
                                            break;
                                        case 24:
                                            for (i5 = 0; i5 < (b10 & 255); i5++) {
                                                l0.b0.l0(8, 0);
                                            }
                                            l0.b0.l0(8, 1);
                                            break;
                                        case 25:
                                            for (i6 = 0; i6 < (b10 & 255); i6++) {
                                                l0.b0.l0(31, 0);
                                            }
                                            l0.b0.l0(31, 1);
                                            break;
                                        case 26:
                                            for (i7 = 0; i7 < (b10 & 255); i7++) {
                                                l0.b0.l0(30, 0);
                                            }
                                            l0.b0.l0(30, 1);
                                            break;
                                        default:
                                            switch (i49) {
                                                case 65:
                                                    while (i5 < (b10 & 255)) {
                                                        l0.b0.l0(8, 0);
                                                    }
                                                    l0.b0.l0(8, 1);
                                                    break;
                                                case 66:
                                                    while (i4 < (b10 & 255)) {
                                                        l0.b0.l0(7, 0);
                                                    }
                                                    l0.b0.l0(7, 1);
                                                    break;
                                                case 67:
                                                    while (i7 < (b10 & 255)) {
                                                        l0.b0.l0(30, 0);
                                                    }
                                                    l0.b0.l0(30, 1);
                                                    break;
                                                case 68:
                                                    while (i6 < (b10 & 255)) {
                                                        l0.b0.l0(31, 0);
                                                    }
                                                    l0.b0.l0(31, 1);
                                                    break;
                                                default:
                                                    int i50 = b10 & 255;
                                                    if (i50 == 1) {
                                                        if (i47 < iArr3.length) {
                                                            l0.b0.l0(iArr3[i47][1], 0);
                                                        }
                                                    } else if (i50 == 0) {
                                                        int i51 = this.f9844e;
                                                        if (i51 < iArr3.length && i51 != 255) {
                                                            l0.b0.l0(iArr3[i51][1], 1);
                                                        }
                                                        this.f9844e = 255;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                }
                            } else {
                                this.f9848i = b9 & 255;
                                int i52 = 0;
                                while (true) {
                                    iArr = this.f9849j;
                                    if (i52 < iArr.length) {
                                        int i53 = this.f9848i;
                                        if (i53 != iArr[i52][0]) {
                                            i52++;
                                        } else if (i53 != 0) {
                                            this.f9847h = i52;
                                        }
                                    }
                                }
                                int i54 = this.f9848i;
                                if (i54 != 3) {
                                    if (i54 != 4) {
                                        if (i54 != 9 && i54 != 10) {
                                            int i55 = b10 & 255;
                                            if (i55 == 1) {
                                                if (i52 < iArr.length) {
                                                    l0.b0.l0(iArr[i52][1], 0);
                                                }
                                            } else if (i55 == 0) {
                                                int i56 = this.f9847h;
                                                if (i56 < iArr.length && i56 != 255) {
                                                    l0.b0.l0(iArr[i56][1], 1);
                                                }
                                                this.f9847h = 255;
                                            }
                                        } else if ((b10 & 255) == 1) {
                                            int i57 = h0.c.E;
                                            if (i57 == 3 || i57 == 5) {
                                                l0.b0.l0(26, 0);
                                                l0.b0.l0(26, 1);
                                            } else {
                                                l0.b0.l0(18, 0);
                                                l0.b0.l0(18, 1);
                                            }
                                        }
                                    } else if ((b10 & 255) == 1) {
                                        if (u0.b.D != 1) {
                                            l0.b0.l0(3, 0);
                                            l0.b0.l0(3, 1);
                                        } else {
                                            l0.b0.l0(68, 0);
                                            l0.b0.l0(68, 1);
                                        }
                                    }
                                } else if ((b10 & 255) == 1) {
                                    if (u0.b.D != 1) {
                                        l0.b0.l0(4, 0);
                                        l0.b0.l0(4, 1);
                                    } else {
                                        l0.b0.l0(67, 0);
                                        l0.b0.l0(67, 1);
                                    }
                                }
                                break;
                            }
                        } else {
                            this.f9842c = b9 & 255;
                            int i58 = 0;
                            while (true) {
                                iArr4 = this.f9850k;
                                if (i58 < iArr4.length) {
                                    int i59 = this.f9842c;
                                    if (i59 != iArr4[i58][0]) {
                                        i58++;
                                    } else if (i59 != 0) {
                                        this.f9841b = i58;
                                    }
                                }
                            }
                            int i60 = b10 & 255;
                            if (i60 == 1) {
                                if (i58 < iArr4.length) {
                                    l0.b0.l0(iArr4[i58][1], 0);
                                }
                            } else if (i60 == 0) {
                                int i61 = this.f9841b;
                                if (i61 < iArr4.length && i61 != 255) {
                                    l0.b0.l0(iArr4[i61][1], 1);
                                }
                                this.f9841b = 255;
                            }
                            break;
                        }
                        break;
                    case 33:
                        int i62 = bArr[i2 + 2] & 255;
                        int i63 = bArr[i2 + 3] & 255;
                        int i64 = i2 + 4;
                        int i65 = bArr[i64] & 255;
                        int i66 = i2 + 5;
                        int i67 = bArr[i66] & 255;
                        int i68 = bArr[i2 + 6] & 255;
                        int i69 = bArr[i2 + 7] & 255;
                        qt.y0(10, (i62 >> 7) & 1);
                        qt.y0(11, (i62 >> 6) & 1);
                        qt.y0(12, (i62 >> 5) & 1);
                        qt.y0(13, (i62 >> 3) & 1);
                        qt.y0(62, (i62 >> 2) & 1);
                        qt.y0(15, (i62 >> 1) & 1);
                        qt.y0(18, (i63 >> 7) & 1);
                        qt.y0(19, (i63 >> 6) & 1);
                        qt.y0(20, (i63 >> 5) & 1);
                        qt.y0(21, i63 & 15);
                        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            i65 = bArr[i66] & 255;
                            i67 = bArr[i64] & 255;
                        }
                        int i70 = i65 & 255;
                        if (i70 == 0) {
                            qt.y0(27, -2);
                        } else if (i70 == 254) {
                            qt.y0(27, -1);
                        } else if (i70 != 255) {
                            qt.y0(27, i70);
                        } else {
                            qt.y0(27, -3);
                        }
                        int i71 = i67 & 255;
                        if (i71 == 0) {
                            qt.y0(28, -2);
                        } else if (i71 == 254) {
                            qt.y0(28, -1);
                        } else if (i71 != 255) {
                            qt.y0(28, i71);
                        } else {
                            qt.y0(28, -3);
                        }
                        qt.y0(65, (i68 >> 7) & 1);
                        qt.y0(16, (i68 >> 6) & 1);
                        qt.y0(53, (i68 >> 3) & 1);
                        qt.y0(153, (i68 >> 2) & 3);
                        int i72 = nt.f8633a;
                        if (i72 == 917878 || i72 == 983414 || i72 == 1048950 || i72 == 1114486 || i72 == 1180022) {
                            qt.y0(36, (i68 >> 5) & 1);
                        } else {
                            qt.y0(36, (i68 >> 1) & 1);
                        }
                        qt.y0(37, i68 & 1);
                        qt.y0(29, (i69 >> 4) & 7);
                        qt.y0(30, (i69 >> 0) & 7);
                        qt.y0(176, (i69 >> 7) & 1);
                        int i73 = nt.f8633a;
                        if (i73 == 655734 || i73 == 6488438 || i73 == 6685046 || i73 == 6881654) {
                            qt.y0(177, bArr[i2 + 8] & 1);
                        }
                        int i74 = nt.f8633a;
                        if (i74 == 2031990 || i74 == 2294134 || i74 == 2359670) {
                            int i75 = i2 + 8;
                            b2 = 7;
                            qt.y0(Downloads.Impl.STATUS_LENGTH_REQUIRED, (bArr[i75] >> 7) & 1);
                            qt.y0(Downloads.Impl.STATUS_PRECONDITION_FAILED, (bArr[i75] >> 4) & 7);
                            qt.y0(413, (bArr[i75] >> 0) & 7);
                        } else {
                            b2 = 7;
                        }
                        int i76 = i2 + 9;
                        qt.y0(31, (bArr[i76] >> 4) & b2);
                        qt.y0(32, (bArr[i76] >> 0) & b2);
                        qt.y0(66, (bArr[i76] >> b2) & 1);
                        break;
                    case 34:
                        if (nt.a() || nt.f8637c == 9) {
                            if (i3 == 6) {
                                int i77 = i2 + 6;
                                u0.d.D2(l0.c0.k1(bArr[i77] & 255));
                                u0.d.E2(l0.c0.k1(bArr[i77] & 255));
                                int i78 = i2 + 7;
                                u0.d.F2(l0.c0.k1(bArr[i78] & 255));
                                u0.d.G2(l0.c0.k1(bArr[i78] & 255));
                            }
                            int i79 = nt.f8633a;
                            if (i79 == 328054 || i79 == 393590 || i79 == 590198 || i79 == 590198 || i79 == 1245558 || i79 == 1311094 || i79 == 1769846) {
                                u0.d.R2(l0.c0.l1(bArr[i2 + 2] & 255));
                                u0.d.S2(l0.c0.l1(bArr[i2 + 3] & 255));
                                u0.d.T2(l0.c0.l1(bArr[i2 + 4] & 255));
                                u0.d.U2(l0.c0.l1(bArr[i2 + 5] & 255));
                            } else if (a3()) {
                                u0.d.R2(l0.c0.m1(bArr[i2 + 2] & 255));
                                u0.d.S2(l0.c0.m1(bArr[i2 + 3] & 255));
                                u0.d.T2(l0.c0.m1(bArr[i2 + 4] & 255));
                                u0.d.U2(l0.c0.m1(bArr[i2 + 5] & 255));
                            } else {
                                int i80 = nt.f8633a;
                                if (i80 == 917878 || i80 == 983414 || i80 == 1048950 || i80 == 1114486 || i80 == 1180022) {
                                    u0.d.R2(l0.c0.Q0(bArr[i2 + 2] & 255));
                                    u0.d.S2(l0.c0.Q0(bArr[i2 + 3] & 255));
                                    u0.d.T2(l0.c0.Q0(bArr[i2 + 4] & 255));
                                    u0.d.U2(l0.c0.Q0(bArr[i2 + 5] & 255));
                                } else {
                                    u0.d.R2(l0.c0.k1(bArr[i2 + 2] & 255));
                                    u0.d.S2(l0.c0.m1(bArr[i2 + 3] & 255));
                                    u0.d.T2(l0.c0.m1(bArr[i2 + 4] & 255));
                                    u0.d.U2(l0.c0.k1(bArr[i2 + 5] & 255));
                                }
                            }
                        }
                        break;
                    case 35:
                        if (nt.a()) {
                            int i81 = i2 + 2;
                            int i82 = bArr[i81] & 255;
                            int i83 = i2 + 3;
                            int i84 = bArr[i83] & 255;
                            int i85 = i2 + 4;
                            int i86 = bArr[i85] & 255;
                            int i87 = i2 + 5;
                            int i88 = bArr[i87] & 255;
                            if (i82 == 0 && i84 == 0 && i86 == 0 && i88 == 0) {
                                u0.d.C2(0);
                            } else if ((l0.c0.f13013g != i82 || l0.c0.f13014h != i84 || l0.c0.f13015i != i86 || l0.c0.f13016j != i88) && u0.b.f17347o == 0) {
                                u0.d.C2(1);
                                l0.c0.f13017k = 4;
                                l0.b0.b(l0.c0.f13018l);
                            }
                            l0.c0.f13013g = i82;
                            l0.c0.f13014h = i84;
                            l0.c0.f13015i = i86;
                            l0.c0.f13016j = i88;
                            int i89 = nt.f8633a;
                            if (i89 == 917878 || i89 == 983414 || i89 == 1048950 || i89 == 1114486 || i89 == 1180022) {
                                u0.d.R2(l0.c0.Q0(bArr[i81] & 255));
                                u0.d.S2(l0.c0.Q0(bArr[i83] & 255));
                                u0.d.T2(l0.c0.Q0(bArr[i85] & 255));
                                u0.d.U2(l0.c0.Q0(bArr[i87] & 255));
                            } else if (a3()) {
                                u0.d.D2(l0.c0.m1(bArr[i81] & 255));
                                u0.d.E2(l0.c0.m1(bArr[i83] & 255));
                                u0.d.F2(l0.c0.m1(bArr[i85] & 255));
                                u0.d.G2(l0.c0.m1(bArr[i87] & 255));
                            } else {
                                u0.d.D2(l0.c0.k1(bArr[i81] & 255));
                                u0.d.E2(l0.c0.m1(bArr[i83] & 255));
                                u0.d.F2(l0.c0.m1(bArr[i85] & 255));
                                u0.d.G2(l0.c0.k1(bArr[i87] & 255));
                            }
                        }
                        break;
                    case 36:
                        byte b11 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(1, (b11 >> 7) & 1);
                            qt.y0(2, (b11 >> 6) & 1);
                        } else {
                            qt.y0(1, (b11 >> 6) & 1);
                            qt.y0(2, (b11 >> 7) & 1);
                        }
                        qt.y0(4, (b11 >> 5) & 1);
                        qt.y0(3, (b11 >> 4) & 1);
                        qt.y0(5, (b11 >> 3) & 1);
                        qt.y0(0, (b11 >> 2) & 1);
                        this.f9860u = (bArr[i2 + 3] >> 3) & 1;
                        break;
                    default:
                        switch (b3) {
                            case 39:
                                int i90 = i2 + 2;
                                byte b12 = bArr[i90];
                                int i91 = b12 & 255;
                                if (i91 == 0) {
                                    u0.d.A3(0);
                                } else {
                                    if (nt.f8637c == 9) {
                                        i10 = ((b12 >> 7) & 1) == 1 ? 1000 - ((b12 & 127) * 5) : ((b12 & 127) * 5) + 1000;
                                    } else {
                                        if (a3()) {
                                            int i92 = i2 + 3;
                                            i8 = bArr[i92] == 1 ? (((i91 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i91 * 5) + 605;
                                            qt.y0(388, (bArr[i90] & 255) | ((bArr[i92] << 8) & 65280));
                                        } else {
                                            byte b13 = bArr[i2 + 3];
                                            int i93 = nt.f8637c;
                                            if (i93 == 12 || i93 == 13 || i93 == 87 || i93 == 93 || i93 == 94 || i93 == 95 || i93 == 96 || i93 == 97 || i93 == 98 || i93 == 92 || i93 == 10 || i93 == 99 || i93 == 100 || i93 == 62 || i93 == 63 || i93 == 64 || i93 == 101 || i93 == 102 || i93 == 103 || i93 == 104 || i93 == 105 || i93 == 106 || i93 == 107 || i93 == 108) {
                                                if (b13 == 1 || SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                                                    int i94 = i91 * 10;
                                                    i9 = i94 + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                                                } else {
                                                    i8 = (i91 * 5) + 605;
                                                }
                                            } else if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1 || b13 == 1) {
                                                int i95 = (i91 * 9) + 609;
                                                i9 = i95 % 10 >= 5 ? ((i95 / 10) * 10) + 10 : (i95 / 10) * 10;
                                            } else {
                                                i10 = (i91 * 5) + 605;
                                            }
                                            i10 = (268435456 | i9) & (-1);
                                        }
                                        i10 = i8;
                                    }
                                    u0.d.B3(i10);
                                }
                                break;
                            case 40:
                                int i96 = bArr[i2 + 2] & 255;
                                int i97 = bArr[i2 + 3] & 255;
                                int i98 = bArr[i2 + 4] & 255;
                                int i99 = bArr[i2 + 5] & 255;
                                int i100 = i96 | (i97 << 8);
                                qt.y0(1031, i100);
                                qt.y0(369, i100);
                                qt.y0(1032, (i99 << 8) | i98);
                                break;
                            case 41:
                                int i101 = nt.f8637c;
                                if (i101 == 12 || i101 == 13 || i101 == 64 || i101 == 101 || i101 == 104 || i101 == 107 || i101 == 87 || i101 == 93 || i101 == 94 || i101 == 95 || i101 == 96 || i101 == 97 || i101 == 98 || i101 == 92 || i101 == 88 || i101 == 90 || i101 == 91) {
                                    qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 1000);
                                } else {
                                    qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 4600);
                                }
                                break;
                            default:
                                switch (b3) {
                                    case 64:
                                        byte b14 = bArr[i2 + 2];
                                        byte b15 = bArr[i2 + 3];
                                        int i102 = i2 + 4;
                                        byte b16 = bArr[i102];
                                        byte b17 = bArr[i2 + 5];
                                        int i103 = nt.f8637c;
                                        if (i103 == 19 || i103 == 20 || i103 == 27) {
                                            qt.y0(348, (bArr[i2 + 7] >> 5) & 1);
                                            break;
                                        } else if (i103 != 44 && i103 != 45 && i103 != 46 && i103 != 47 && i103 != 48 && i103 != 49 && i103 != 50 && i103 != 51 && i103 != 52 && i103 != 53 && i103 != 54 && i103 != 55 && i103 != 56 && i103 != 57 && i103 != 58 && i103 != 59 && i103 != 60 && i103 != 61 && i103 != 65 && i103 != 66 && i103 != 67 && i103 != 68 && i103 != 69 && i103 != 70 && i103 != 71 && i103 != 72 && i103 != 73 && i103 != 74 && i103 != 75 && i103 != 76) {
                                            int i104 = b14 & 255;
                                            if (i104 == 0) {
                                                qt.y0(154, b15 > 0 ? b15 - 1 : 1);
                                                qt.y0(417, bArr[i102] & 255);
                                            } else if (i104 != 1) {
                                                if (i104 == 2) {
                                                    qt.y0(377, (b15 >> 0) & 1);
                                                    break;
                                                } else if (i104 == 3) {
                                                    qt.y0(168, b15 & 1);
                                                    break;
                                                } else if (i104 == 16) {
                                                    qt.y0(178, b15 & 1);
                                                    break;
                                                } else if (i104 == 48) {
                                                    qt.y0(112, b15 & 1);
                                                    qt.y0(113, (b15 >> 1) & 1);
                                                    qt.y0(114, (b15 >> 2) & 1);
                                                    qt.y0(115, (b15 >> 3) & 3);
                                                    qt.y0(116, (b15 >> 5) & 1);
                                                    qt.y0(222, (b15 >> 6) & 1);
                                                    qt.y0(117, (b15 >> 7) & 1);
                                                    qt.y0(118, b16 & 1);
                                                    qt.y0(173, (b16 >> 1) & 1);
                                                    qt.y0(119, (b16 >> 2) & 1);
                                                    qt.y0(120, b17 & 1);
                                                    qt.y0(121, (b17 >> 1) & 1);
                                                    break;
                                                } else if (i104 == 96) {
                                                    if ((i103 >= 0 && i103 <= 13) || i103 == 19 || i103 == 20 || i103 == 27 || i103 == 62 || i103 == 63 || i103 == 64 || i103 == 84 || i103 == 85 || i103 == 86 || i103 == 87 || i103 == 88 || i103 == 90 || i103 == 91 || i103 == 92 || (i103 >= 93 && i103 <= 108)) {
                                                        qt.y0(311, (b15 >> 7) & 1);
                                                        qt.y0(312, (b15 >> 6) & 1);
                                                        qt.y0(313, (b15 >> 5) & 1);
                                                        qt.y0(314, (b15 >> 3) & 1);
                                                        qt.y0(315, (b15 >> 2) & 1);
                                                        qt.y0(316, (b15 >> 1) & 1);
                                                        qt.y0(317, (b16 >> 7) & 1);
                                                        qt.y0(318, (b16 >> 6) & 1);
                                                        qt.y0(319, (b16 >> 5) & 1);
                                                        qt.y0(320, (b16 >> 3) & 1);
                                                        qt.y0(321, (b16 >> 2) & 1);
                                                        qt.y0(322, (b16 >> 1) & 1);
                                                    } else {
                                                        qt.y0(378, b15 & 3);
                                                        qt.y0(379, (b15 >> 2) & 3);
                                                        qt.y0(380, (b15 >> 4) & 1);
                                                        qt.y0(381, (b15 >> 5) & 1);
                                                        qt.y0(382, (b15 >> 6) & 1);
                                                        qt.y0(386, (b15 >> 7) & 1);
                                                        qt.y0(414, (b16 >> 0) & 3);
                                                        qt.y0(415, (b16 >> 2) & 3);
                                                    }
                                                    break;
                                                } else if (i104 == 112) {
                                                    qt.y0(514, (b16 >> 7) & 1);
                                                    qt.y0(515, (b16 >> 6) & 1);
                                                    qt.y0(516, (b16 >> 5) & 1);
                                                    qt.y0(517, (b16 >> 4) & 1);
                                                    qt.y0(518, (b16 >> 3) & 1);
                                                    qt.y0(519, (b16 >> 2) & 1);
                                                    qt.y0(BluetoothClass.Device.PHONE_CORDLESS, (b16 >> 1) & 1);
                                                    qt.y0(521, (b16 >> 0) & 1);
                                                    qt.y0(BluetoothClass.Device.PHONE_SMART, (b17 >> 7) & 1);
                                                    break;
                                                } else if (i104 == 128) {
                                                    qt.y0(522, (b16 >> 7) & 1);
                                                    qt.y0(523, (b16 >> 6) & 1);
                                                    break;
                                                } else if (i104 == 144) {
                                                    qt.y0(125, b15 & 3);
                                                    break;
                                                } else if (i104 == 176) {
                                                    int[] iArr5 = new int[1];
                                                    int i105 = b15 & DhcpPacket.DHCP_DOMAIN_NAME;
                                                    iArr5[0] = i105 > 8 ? 8 : i105;
                                                    qt.y0(142, iArr5);
                                                    qt.y0(143, (b15 >> 4) & 1);
                                                    qt.y0(144, b16 & DhcpPacket.DHCP_DOMAIN_NAME);
                                                    break;
                                                } else if (i104 == 192) {
                                                    qt.y0(145, b15 & 1);
                                                    qt.y0(146, (b15 >> 1) & 1);
                                                    qt.y0(371, (b15 >> 2) & 1);
                                                    qt.y0(147, b16 & 255);
                                                    qt.y0(218, b16 & 1);
                                                    qt.y0(223, (b16 >> 1) & 1);
                                                    qt.y0(370, b17 & 255);
                                                    break;
                                                } else if (i104 == 208) {
                                                    qt.y0(148, b15 & 1);
                                                    qt.y0(149, (b15 >> 1) & 1);
                                                    qt.y0(150, (b15 >> 2) & 1);
                                                    qt.y0(151, (b15 >> 3) & 1);
                                                    qt.y0(152, (b15 >> 4) & 1);
                                                    qt.y0(224, (b17 >> 0) & 1);
                                                    qt.y0(225, (b17 >> 1) & 1);
                                                    qt.y0(226, (b17 >> 2) & 1);
                                                    break;
                                                } else if (i104 == 224) {
                                                    qt.y0(311, (b15 >> 0) & 1);
                                                    qt.y0(312, (b15 >> 1) & 1);
                                                    qt.y0(313, (b15 >> 2) & 1);
                                                    qt.y0(314, (b15 >> 4) & 1);
                                                    qt.y0(315, (b15 >> 5) & 1);
                                                    qt.y0(316, (b15 >> 6) & 1);
                                                    qt.y0(317, (b16 >> 0) & 1);
                                                    qt.y0(318, (b16 >> 1) & 1);
                                                    qt.y0(319, (b16 >> 2) & 1);
                                                    qt.y0(320, (b16 >> 4) & 1);
                                                    qt.y0(321, (b16 >> 5) & 1);
                                                    qt.y0(322, (b16 >> 6) & 1);
                                                    qt.y0(389, (b17 >> 0) & 1);
                                                    qt.y0(390, (b17 >> 1) & 1);
                                                    qt.y0(391, (b17 >> 2) & 1);
                                                    qt.y0(392, (b17 >> 4) & 1);
                                                    qt.y0(393, (b17 >> 5) & 1);
                                                    qt.y0(394, (b17 >> 6) & 1);
                                                    break;
                                                } else if (i104 == 32) {
                                                    qt.y0(171, (b15 >> 7) & 1);
                                                    int i106 = b15 & 127;
                                                    if (i106 == 30) {
                                                        qt.y0(102, 1);
                                                    } else if (i106 == 60) {
                                                        qt.y0(102, 2);
                                                    } else if (i106 != 90) {
                                                        qt.y0(102, 0);
                                                    } else {
                                                        qt.y0(102, 3);
                                                    }
                                                    qt.y0(103, (b16 >> 7) & 1);
                                                    int i107 = b16 & 127;
                                                    if (i107 == 30) {
                                                        qt.y0(104, 1);
                                                    } else if (i107 == 60) {
                                                        qt.y0(104, 2);
                                                    } else if (i107 != 90) {
                                                        qt.y0(104, 0);
                                                    } else {
                                                        qt.y0(104, 3);
                                                    }
                                                    qt.y0(105, b17 & 1);
                                                    qt.y0(106, (b17 >> 1) & 1);
                                                    qt.y0(107, (b17 >> 2) & 1);
                                                    qt.y0(108, (b17 >> 3) & 1);
                                                    qt.y0(109, (b17 >> 4) & 1);
                                                    qt.y0(110, (b17 >> 5) & 3);
                                                    qt.y0(111, (b17 >> 7) & 1);
                                                    break;
                                                } else if (i104 == 33) {
                                                    qt.y0(179, (b17 >> 0) & 15);
                                                    break;
                                                } else if (i104 == 64) {
                                                    int i108 = b15 & 255;
                                                    if (i108 == 30) {
                                                        qt.y0(122, 1);
                                                    } else if (i108 == 60) {
                                                        qt.y0(122, 2);
                                                    } else if (i108 != 90) {
                                                        qt.y0(122, 0);
                                                    } else {
                                                        qt.y0(122, 3);
                                                    }
                                                    int i109 = b16 & 255;
                                                    if (i109 == 3) {
                                                        qt.y0(123, 1);
                                                    } else if (i109 == 20) {
                                                        qt.y0(123, 2);
                                                    } else if (i109 != 40) {
                                                        qt.y0(123, 0);
                                                    } else {
                                                        qt.y0(123, 3);
                                                    }
                                                    qt.y0(124, b17 & 1);
                                                    qt.y0(198, (b17 >> 1) & 1);
                                                    break;
                                                } else if (i104 == 65) {
                                                    int i110 = b15 & 255;
                                                    if (i110 == 0) {
                                                        qt.y0(302, 0);
                                                    } else if (i110 == 3) {
                                                        qt.y0(302, 1);
                                                    } else if (i110 == 20) {
                                                        qt.y0(302, 2);
                                                    } else if (i110 == 40) {
                                                        qt.y0(302, 3);
                                                    }
                                                    int i111 = b16 & 255;
                                                    if (i111 == 0) {
                                                        qt.y0(303, 0);
                                                        break;
                                                    } else if (i111 == 3) {
                                                        qt.y0(303, 1);
                                                        break;
                                                    } else if (i111 == 20) {
                                                        qt.y0(303, 2);
                                                        break;
                                                    } else if (i111 == 40) {
                                                        qt.y0(303, 3);
                                                        break;
                                                    }
                                                } else if (i104 == 80) {
                                                    int i112 = (b15 >> 4) & 15;
                                                    if (i112 == 1) {
                                                        qt.y0(174, 0);
                                                    } else if (i112 == 2) {
                                                        qt.y0(174, 1);
                                                    } else if (i112 != 3) {
                                                        qt.y0(174, 3);
                                                    } else {
                                                        qt.y0(174, 2);
                                                    }
                                                    int i113 = b15 & DhcpPacket.DHCP_DOMAIN_NAME;
                                                    if (i113 == 1) {
                                                        qt.y0(175, 1);
                                                    } else if (i113 == 2) {
                                                        qt.y0(175, 2);
                                                    } else if (i113 != 3) {
                                                        qt.y0(175, 0);
                                                    } else {
                                                        qt.y0(175, 3);
                                                    }
                                                    qt.y0(323, (b16 >> 7) & 1);
                                                    qt.y0(401, (b16 >> 0) & 31);
                                                    qt.y0(402, (b17 >> 4) & 15);
                                                    qt.y0(403, (b17 >> 0) & 15);
                                                    break;
                                                } else if (i104 == 81) {
                                                    qt.y0(UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL, (b15 >> 0) & 255);
                                                    break;
                                                } else if (i104 == 160) {
                                                    qt.y0(126, b15 & 1);
                                                    qt.y0(127, (b15 >> 1) & 1);
                                                    qt.y0(128, (b15 >> 2) & 1);
                                                    qt.y0(129, (b15 >> 3) & 1);
                                                    qt.y0(130, (b15 >> 4) & 1);
                                                    qt.y0(220, (b15 >> 5) & 1);
                                                    qt.y0(131, (b15 >> 6) & 3);
                                                    qt.y0(132, b16 & 3);
                                                    qt.y0(133, (b16 >> 2) & 3);
                                                    qt.y0(134, (b16 >> 4) & 1);
                                                    int i114 = (b16 >> 5) & 3;
                                                    switch (nt.f8645g[1000]) {
                                                        case 196982:
                                                        case 262518:
                                                        case 5702006:
                                                        case 6029686:
                                                            if (i114 == 2) {
                                                                qt.y0(135, 1);
                                                            } else if (i114 == 3) {
                                                                qt.y0(135, 2);
                                                            } else {
                                                                qt.y0(135, i114);
                                                            }
                                                            break;
                                                        default:
                                                            qt.y0(135, i114);
                                                            break;
                                                    }
                                                    qt.y0(136, (b16 >> 7) & 1);
                                                    qt.y0(137, b17 & 3);
                                                    qt.y0(138, (b17 >> 2) & 1);
                                                    qt.y0(139, (b17 >> 3) & 1);
                                                    qt.y0(140, (b17 >> 4) & 1);
                                                    qt.y0(219, (b17 >> 5) & 1);
                                                    qt.y0(141, (b17 >> 6) & 3);
                                                    break;
                                                } else if (i104 == 161) {
                                                    qt.y0(211, (b15 >> 6) & 3);
                                                    qt.y0(212, (b15 >> 3) & 1);
                                                    qt.y0(213, (b15 >> 0) & 3);
                                                    qt.y0(214, (b16 >> 6) & 3);
                                                    qt.y0(215, (b16 >> 4) & 3);
                                                    qt.y0(216, (b16 >> 2) & 3);
                                                    qt.y0(324, (b17 >> 7) & 1);
                                                    qt.y0(325, (b17 >> 6) & 1);
                                                    qt.y0(326, (b17 >> 5) & 1);
                                                    break;
                                                }
                                            }
                                            qt.y0(97, b15 & 1);
                                            qt.y0(98, (b15 >> 1) & 3);
                                            qt.y0(99, (b15 >> 3) & 1);
                                            qt.y0(100, (b15 >> 4) & 1);
                                            qt.y0(101, (b15 >> 5) & 3);
                                            qt.y0(221, (b15 >> 7) & 1);
                                            qt.y0(MediaProperties.HEIGHT_360, (b16 >> 0) & 3);
                                            qt.y0(361, (b16 >> 2) & 1);
                                            break;
                                        } else {
                                            int i115 = b14 & 255;
                                            if (i115 == 0) {
                                                qt.y0(154, b15 > 0 ? b15 - 1 : 1);
                                                break;
                                            } else if (i115 == 1) {
                                                qt.y0(97, b15 & 1);
                                                qt.y0(98, (b15 >> 1) & 3);
                                                qt.y0(100, (b15 >> 3) & 1);
                                                qt.y0(101, (b15 >> 4) & 3);
                                                break;
                                            } else if (i115 == 16) {
                                                qt.y0(440, (b15 >> 0) & 3);
                                                qt.y0(441, (b15 >> 2) & 3);
                                                qt.y0(442, (b15 >> 4) & 1);
                                                qt.y0(443, (b15 >> 5) & 3);
                                                qt.y0(444, (b15 >> 7) & 1);
                                                qt.y0(445, (b16 >> 0) & 1);
                                                qt.y0(446, (b16 >> 1) & 1);
                                                qt.y0(447, (b16 >> 2) & 1);
                                                qt.y0(448, (b16 >> 3) & 1);
                                                qt.y0(449, (b16 >> 4) & 1);
                                                qt.y0(450, (b16 >> 5) & 1);
                                                qt.y0(451, (b16 >> 6) & 1);
                                                qt.y0(452, (b16 >> 7) & 1);
                                                qt.y0(453, (b17 >> 0) & 1);
                                                qt.y0(454, (b17 >> 1) & 1);
                                                qt.y0(455, (b17 >> 2) & 3);
                                                qt.y0(456, (b17 >> 4) & 1);
                                                qt.y0(457, (b17 >> 5) & 1);
                                                qt.y0(458, (b17 >> 6) & 1);
                                                qt.y0(459, (b17 >> 7) & 1);
                                                break;
                                            } else if (i115 == 17) {
                                                qt.y0(460, (b15 >> 0) & 1);
                                                qt.y0(461, (b15 >> 1) & 1);
                                                qt.y0(462, (b15 >> 2) & 3);
                                                qt.y0(463, (b15 >> 4) & 1);
                                                qt.y0(464, (b15 >> 5) & 1);
                                                qt.y0(465, (b15 >> 6) & 1);
                                                qt.y0(466, (b15 >> 7) & 1);
                                                qt.y0(467, (b16 >> 0) & 1);
                                                qt.y0(468, (b16 >> 1) & 1);
                                                qt.y0(469, (b16 >> 2) & 1);
                                                qt.y0(470, (b16 >> 3) & 1);
                                                qt.y0(471, (b16 >> 4) & 1);
                                                qt.y0(472, (b16 >> 5) & 1);
                                                qt.y0(473, (b16 >> 6) & 1);
                                                break;
                                            } else if (i115 == 64) {
                                                qt.y0(474, (b15 >> 0) & 255);
                                                qt.y0(475, (b16 >> 0) & 15);
                                                break;
                                            } else if (i115 == 80) {
                                                qt.y0(476, (b15 >> 0) & 15);
                                                qt.y0(477, (b15 >> 4) & 15);
                                                qt.y0(479, (b16 >> 0) & 15);
                                                qt.y0(478, (b16 >> 4) & 15);
                                                qt.y0(403, (b17 >> 0) & 15);
                                                qt.y0(402, (b17 >> 4) & 15);
                                                break;
                                            } else if (i115 == 81) {
                                                qt.y0(480, (b15 >> 0) & 3);
                                                qt.y0(481, (b15 >> 2) & 3);
                                                qt.y0(482, (b15 >> 4) & 3);
                                                qt.y0(483, (b15 >> 6) & 3);
                                                qt.y0(484, (b16 >> 0) & 3);
                                                qt.y0(485, (b16 >> 2) & 3);
                                                qt.y0(486, (b16 >> 4) & 3);
                                                qt.y0(487, (b16 >> 6) & 3);
                                                qt.y0(488, (b17 >> 0) & 3);
                                                qt.y0(Downloads.Impl.STATUS_CANNOT_RESUME, (b17 >> 2) & 3);
                                                break;
                                            }
                                        }
                                        break;
                                    case 65:
                                        int i116 = i2 + 2;
                                        l0.c0.a((bArr[i116] >> 6) & 1, (bArr[i116] >> 7) & 1, 0);
                                        break;
                                    case 66:
                                        qt.y0(181, bArr[i2 + 2] & 255);
                                        int i117 = i2 + 3;
                                        qt.y0(182, (bArr[i117] >> 0) & 1);
                                        qt.y0(183, (bArr[i117] >> 1) & 1);
                                        qt.y0(352, (bArr[i117] >> 2) & 1);
                                        qt.y0(356, (bArr[i2 + 4] >> 0) & 255);
                                        qt.y0(353, (bArr[i117] >> 3) & 1);
                                        qt.y0(354, (bArr[i117] >> 4) & 1);
                                        int i118 = (bArr[i117] >> 4) & 1;
                                        int i119 = (bArr[i117] >> 3) & 1;
                                        if (this.W != i118 || this.X != i119) {
                                            this.W = i118;
                                            this.X = i119;
                                            int[] iArr6 = nt.f8645g;
                                            if (iArr6[354] == 1 || iArr6[353] == 1) {
                                                o1.u.z();
                                                break;
                                            } else if (u0.b.D == 13 && !qt.i0().equals("com.syu.carinfo.xp.ziyouguang.PAJeepRearSpeakers")) {
                                                Intent intent = new Intent();
                                                intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.ziyouguang.PAJeepRearSpeakers");
                                                intent.addCategory(Intent.CATEGORY_DEFAULT);
                                                intent.setFlags(268435456);
                                                App.c().startActivity(intent);
                                                break;
                                            }
                                        }
                                        break;
                                    case 67:
                                        qt.y0(190, (((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255)) & 65535);
                                        qt.y0(184, bArr[i2 + 7] & 255);
                                        qt.y0(185, bArr[i2 + 8] & 255);
                                        qt.y0(186, bArr[i2 + 9] & 255);
                                        qt.y0(187, bArr[i2 + 4] & 255);
                                        qt.y0(188, bArr[i2 + 5] & 255);
                                        qt.y0(189, bArr[i2 + 6] & 255);
                                        qt.y0(191, ((bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280)) & 65535);
                                        break;
                                    case 68:
                                        int i120 = i2 + 1;
                                        String str = bArr[i120] > 2 ? new String(bArr, i2 + 6, bArr[i120] - 4, Charset.forName("unicode")) : ProxyProperties.LOCAL_EXCL_LIST;
                                        int i121 = ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255);
                                        byte b18 = bArr[i2 + 2];
                                        if (b18 == 1) {
                                            qt.x0(192, str);
                                        } else if (b18 == 2) {
                                            qt.x0(193, str);
                                        } else if (b18 == 3) {
                                            qt.x0(194, str);
                                        } else if (b18 == 4 && i121 >= 1) {
                                            o1.x.z(nt.f8643f, 355, i121 - 1, str);
                                        }
                                        break;
                                    default:
                                        switch (b3) {
                                            case 76:
                                                qt.y0(Downloads.Impl.STATUS_CANCELED, bArr[i2 + 2] & 255);
                                                break;
                                            case 77:
                                                qt.y0(281, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                                                qt.y0(282, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                                                break;
                                            case 78:
                                                qt.y0(283, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                                                qt.y0(284, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                                                qt.y0(300, bArr[i2 + 6] & 255);
                                                break;
                                            case 79:
                                                int i122 = i2 + 3;
                                                this.V = (bArr[i122] >> 7) & 1;
                                                int i123 = i2 + 2;
                                                int i124 = ((((bArr[i122] >> 0) & 1) << 0) & 15) | ((((bArr[i123] >> 0) & 1) << 2) & 15) | ((((bArr[i123] >> 7) & 1) << 3) & 15) | ((((bArr[i122] >> 7) & 1) << 1) & 15);
                                                if (nt.f8637c == 32) {
                                                    qt.y0(Process.MEDIA_UID, bArr[i2 + 4] & 255);
                                                } else {
                                                    qt.y0(Process.MEDIA_UID, i124);
                                                }
                                                break;
                                            default:
                                                switch (b3) {
                                                    case 81:
                                                        int i125 = i2 + 2;
                                                        qt.y0(42, (bArr[i125] >> 7) & 1);
                                                        qt.y0(43, (bArr[i125] >> 3) & 1);
                                                        int i126 = i2 + 3;
                                                        qt.y0(48, (bArr[i126] >> 7) & 1);
                                                        qt.y0(46, (bArr[i126] >> 6) & 1);
                                                        qt.y0(47, (bArr[i126] >> 5) & 1);
                                                        qt.y0(44, (bArr[i126] >> 0) & 15);
                                                        int i127 = i2 + 4;
                                                        int i128 = bArr[i127] & 255;
                                                        if (i128 == 0) {
                                                            qt.y0(40, -2);
                                                        } else if (i128 == 254) {
                                                            qt.y0(40, -1);
                                                        } else if (i128 != 255) {
                                                            qt.y0(40, bArr[i127] & 255);
                                                        } else {
                                                            qt.y0(40, -3);
                                                        }
                                                        qt.y0(67, (bArr[i2 + 5] >> 1) & 1);
                                                        break;
                                                    case 82:
                                                        qt.y0(227, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                                                        int i129 = i2 + 4;
                                                        qt.y0(228, (bArr[i129] >> 5) & 7);
                                                        qt.y0(229, (bArr[i129] >> 3) & 3);
                                                        qt.y0(230, (bArr[i129] >> 1) & 3);
                                                        qt.y0(231, (bArr[i129] >> 0) & 1);
                                                        int i130 = i2 + 5;
                                                        qt.y0(232, (bArr[i130] >> 4) & 15);
                                                        qt.y0(233, (bArr[i130] >> 0) & 15);
                                                        qt.y0(234, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                                                        qt.y0(235, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                                                        qt.y0(236, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                                                        qt.y0(237, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
                                                        qt.y0(238, bArr[i2 + 14] & 255);
                                                        qt.y0(TextTrackRegion.SCROLL_VALUE_SCROLL_UP, ((bArr[i2 + 15] << 8) & 65280) | (bArr[i2 + 16] & 255));
                                                        qt.y0(372, ((bArr[i2 + 17] << 8) & 65280) | (bArr[i2 + 18] & 255));
                                                        qt.y0(373, ((bArr[i2 + 19] << 8) & 65280) | (bArr[i2 + 20] & 255));
                                                        qt.y0(374, ((bArr[i2 + 21] << 8) & 65280) | (bArr[i2 + 22] & 255));
                                                        qt.y0(395, (bArr[i2 + 24] & 255) | ((bArr[i2 + 23] << 8) & 65280));
                                                        break;
                                                    case 83:
                                                        int i131 = i2 + 2;
                                                        qt.y0(239, (bArr[i131] >> 1) & 1);
                                                        qt.y0(240, (bArr[i131] >> 0) & 1);
                                                        qt.y0(i.a.Theme_actionModeShareDrawable, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                                        qt.y0(i.a.Theme_actionModeFindDrawable, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                                                        qt.y0(i.a.Theme_actionModeWebSearchDrawable, (bArr[i2 + 8] & 255) | ((bArr[i2 + 7] << 8) & 65280));
                                                        break;
                                                    case 84:
                                                        qt.y0(i.a.Theme_actionModePopupWindowStyle, bArr[i2 + 2] & 255);
                                                        qt.y0(i.a.Theme_preferenceFragmentStyle, bArr[i2 + 3] & 255);
                                                        qt.y0(i.a.Theme_preferencePanelStyle, bArr[i2 + 4] & 255);
                                                        qt.y0(i.a.Theme_preferenceHeaderPanelStyle, bArr[i2 + 5] & 255);
                                                        qt.y0(248, bArr[i2 + 6] & 255);
                                                        qt.y0(249, bArr[i2 + 7] & 255);
                                                        qt.y0(250, bArr[i2 + 8] & 255);
                                                        qt.y0(251, bArr[i2 + 9] & 255);
                                                        qt.y0(252, bArr[i2 + 10] & 255);
                                                        qt.y0(i.a.Theme_dialogTitleDecorLayout, bArr[i2 + 11] & 255);
                                                        qt.y0(254, bArr[i2 + 12] & 255);
                                                        qt.y0(255, bArr[i2 + 13] & 255);
                                                        qt.y0(256, bArr[i2 + 14] & 255);
                                                        qt.y0(257, bArr[i2 + 15] & 255);
                                                        break;
                                                    case 85:
                                                        int i132 = nt.f8637c;
                                                        if (i132 == 10 || i132 == 99 || i132 == 62 || i132 == 100 || i132 == 102 || i132 == 103 || i132 == 105 || i132 == 106 || i132 == 63) {
                                                            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                                                                int i133 = i2 + 2;
                                                                if ((bArr[i133] & 255) == 16) {
                                                                    qt.y0(28, -2);
                                                                } else if ((bArr[i133] & 255) == 80) {
                                                                    qt.y0(28, -3);
                                                                } else {
                                                                    qt.y0(28, bArr[i133] & 255);
                                                                }
                                                                int i134 = i2 + 3;
                                                                if ((bArr[i134] & 255) == 16) {
                                                                    qt.y0(27, -2);
                                                                } else if ((bArr[i134] & 255) == 80) {
                                                                    qt.y0(27, -3);
                                                                } else {
                                                                    qt.y0(27, bArr[i134] & 255);
                                                                }
                                                            } else {
                                                                int i135 = i2 + 2;
                                                                if ((bArr[i135] & 255) == 16) {
                                                                    qt.y0(27, -2);
                                                                } else if ((bArr[i135] & 255) == 80) {
                                                                    qt.y0(27, -3);
                                                                } else {
                                                                    qt.y0(27, bArr[i135] & 255);
                                                                }
                                                                int i136 = i2 + 3;
                                                                if ((bArr[i136] & 255) == 16) {
                                                                    qt.y0(28, -2);
                                                                } else if ((bArr[i136] & 255) == 80) {
                                                                    qt.y0(28, -3);
                                                                } else {
                                                                    qt.y0(28, bArr[i136] & 255);
                                                                }
                                                            }
                                                            int i137 = i2 + 4;
                                                            switch ((bArr[i137] >> 4) & 15) {
                                                                case 1:
                                                                    i11 = 0;
                                                                    i12 = 0;
                                                                    i13 = 1;
                                                                    break;
                                                                case 2:
                                                                    i11 = 0;
                                                                    i13 = 1;
                                                                    i12 = i13;
                                                                    break;
                                                                case 3:
                                                                    i11 = 0;
                                                                    i13 = 0;
                                                                    i12 = 1;
                                                                    break;
                                                                case 4:
                                                                    i13 = 0;
                                                                    i11 = 1;
                                                                    i12 = 1;
                                                                    break;
                                                                case 5:
                                                                    i12 = 0;
                                                                    i11 = 1;
                                                                    i13 = 1;
                                                                    break;
                                                                case 6:
                                                                    i13 = 0;
                                                                    i12 = 0;
                                                                    i11 = 1;
                                                                    break;
                                                                case 7:
                                                                    i11 = 1;
                                                                    i13 = i11;
                                                                    i12 = i13;
                                                                    break;
                                                                default:
                                                                    i11 = 0;
                                                                    i13 = i11;
                                                                    i12 = i13;
                                                                    break;
                                                            }
                                                            qt.y0(18, i11);
                                                            qt.y0(19, i13);
                                                            qt.y0(20, i12);
                                                            qt.y0(21, (bArr[i137] >> 0) & 15);
                                                            int i138 = i2 + 5;
                                                            qt.y0(29, (bArr[i138] >> 0) & 3);
                                                            qt.y0(31, (bArr[i138] >> 2) & 3);
                                                            qt.y0(30, (bArr[i138] >> 4) & 3);
                                                            qt.y0(32, (bArr[i138] >> 6) & 3);
                                                            int i139 = i2 + 6;
                                                            qt.y0(13, (bArr[i139] >> 0) & 1);
                                                            qt.y0(11, (bArr[i139] >> 1) & 1);
                                                            qt.y0(62, (bArr[i139] >> 2) & 1);
                                                            qt.y0(65, (bArr[i139] >> 5) & 1);
                                                            qt.y0(16, (bArr[i139] >> 6) & 1);
                                                            qt.y0(12, (bArr[i2 + 7] >> 0) & 3);
                                                        } else {
                                                            qt.y0(258, bArr[i2 + 2] & 255);
                                                            qt.y0(259, bArr[i2 + 3] & 255);
                                                            qt.y0(260, bArr[i2 + 4] & 255);
                                                            qt.y0(261, bArr[i2 + 5] & 255);
                                                            qt.y0(262, bArr[i2 + 6] & 255);
                                                            qt.y0(263, bArr[i2 + 7] & 255);
                                                            qt.y0(264, bArr[i2 + 8] & 255);
                                                            qt.y0(265, bArr[i2 + 9] & 255);
                                                            qt.y0(266, bArr[i2 + 10] & 255);
                                                            qt.y0(267, bArr[i2 + 11] & 255);
                                                            qt.y0(268, bArr[i2 + 12] & 255);
                                                            qt.y0(i.a.Theme_findOnPageNextDrawable, bArr[i2 + 13] & 255);
                                                            qt.y0(i.a.Theme_findOnPagePreviousDrawable, bArr[i2 + 14] & 255);
                                                            qt.y0(271, bArr[i2 + 15] & 255);
                                                        }
                                                        break;
                                                    case 86:
                                                        qt.y0(BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA, (bArr[i2 + 2] >> 0) & 1);
                                                        qt.y0(273, bArr[i2 + 3] & 255);
                                                        qt.y0(274, bArr[i2 + 4] & 255);
                                                        qt.y0(275, bArr[i2 + 5] & 255);
                                                        qt.y0(BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA, bArr[i2 + 6] & 255);
                                                        qt.y0(277, bArr[i2 + 7] & 255);
                                                        qt.y0(278, bArr[i2 + 8] & 255);
                                                        qt.y0(279, bArr[i2 + 9] & 255);
                                                        qt.y0(BluetoothClass.Device.COMPUTER_WEARABLE, bArr[i2 + 10] & 255);
                                                        qt.y0(304, bArr[i2 + 11] & 255);
                                                        qt.y0(305, bArr[i2 + 12] & 255);
                                                        qt.y0(306, bArr[i2 + 13] & 255);
                                                        qt.y0(307, bArr[i2 + 14] & 255);
                                                        qt.y0(308, bArr[i2 + 15] & 255);
                                                        qt.y0(309, bArr[i2 + 16] & 255);
                                                        break;
                                                    case 87:
                                                        int i140 = i2 + 2;
                                                        qt.y0(327, (bArr[i140] >> 4) & 15);
                                                        qt.y0(328, (bArr[i140] >> 0) & 15);
                                                        int i141 = i2 + 3;
                                                        qt.y0(329, (bArr[i141] >> 4) & 15);
                                                        qt.y0(330, (bArr[i141] >> 0) & 15);
                                                        int i142 = i2 + 4;
                                                        qt.y0(331, (bArr[i142] >> 4) & 15);
                                                        qt.y0(332, (bArr[i142] >> 0) & 15);
                                                        int i143 = i2 + 5;
                                                        qt.y0(333, (bArr[i143] >> 4) & 15);
                                                        qt.y0(334, (bArr[i143] >> 0) & 15);
                                                        qt.y0(383, (bArr[i2 + 6] >> 0) & 15);
                                                        break;
                                                    case 88:
                                                        qt.y0(335, (bArr[i2 + 2] >> 0) & 15);
                                                        qt.y0(336, (bArr[i2 + 3] >> 0) & 255);
                                                        qt.y0(337, (bArr[i2 + 4] >> 0) & 255);
                                                        qt.y0(338, (bArr[i2 + 5] >> 0) & 255);
                                                        qt.y0(339, (bArr[i2 + 6] >> 0) & 255);
                                                        qt.y0(340, (bArr[i2 + 7] >> 0) & 255);
                                                        break;
                                                    case 89:
                                                        qt.y0(341, (bArr[i2 + 2] >> 0) & 15);
                                                        qt.y0(342, (bArr[i2 + 3] >> 0) & 255);
                                                        int i144 = i2 + 4;
                                                        qt.y0(362, (bArr[i144] >> 0) & 15);
                                                        qt.y0(387, (bArr[i144] >> 4) & 15);
                                                        int i145 = i2 + 5;
                                                        qt.y0(396, (bArr[i145] >> 0) & 1);
                                                        qt.y0(397, (bArr[i145] >> 1) & 1);
                                                        qt.y0(398, (bArr[i145] >> 2) & 1);
                                                        qt.y0(399, (bArr[i145] >> 3) & 1);
                                                        qt.y0(400, (bArr[i145] >> 4) & 1);
                                                        break;
                                                    case 90:
                                                        qt.y0(343, (bArr[i2 + 2] >> 0) & 255);
                                                        qt.y0(344, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                                        qt.y0(345, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                                                        qt.y0(346, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                                                        qt.y0(347, (bArr[i2 + 10] & 255) | ((bArr[i2 + 9] << 8) & 65280));
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
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        l0.b0.p0(this.f9856q);
        l0.b0.p0(this.f9857r);
        w0.e.f17815a.d(this.f9856q);
        u0.c.f17374a.d(this.f9856q);
        u0.c.f17393t.d(this.f9856q);
        u0.c.f17392s.d(this.f9856q);
        qt.o0(this.F);
        l0.b0.p0(this.f9862w);
        u0.c.f17386m.d(this.f9861v);
        o1.y yVar = u0.c.f17388o;
        yVar.d(this.N);
        o1.y yVar2 = h0.d.f2464c;
        yVar2.d(this.O);
        qt.q0(this.T);
        yVar.d(this.P);
        u0.c.f17389p.d(this.Q);
        o1.h.f16865a.d(this.J);
        l0.b0.p0(this.f9858s);
        h0.d.f2462a.d(this.E);
        w0.e.f17817c.d(this.S);
        yVar2.d(this.B);
        h0.d.f2465d.d(this.E);
        h0.d.f2473l.d(this.D);
        y0.g.f18095e.d(this.R);
        y0.g.f18094d.d(this.R);
        u0.c.f17391r.d(this.R);
        o1.h.f16867c.d(this.K);
        o1.h.f16868d.d(this.L);
        o1.h.f16869e.d(this.M);
        y0.g.f18110t.d(this.f9864y);
        if (a.f.v() != null) {
            a.f.v().a(false);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 525) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    /* JADX WARN: Code duplicated, block: B:270:0x0763 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:272:0x0767 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:273:0x0769 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:274:0x076b  */
    /* JADX WARN: Code duplicated, block: B:275:0x076f  */
    /* JADX WARN: Code duplicated, block: B:276:0x0775  */
    /* JADX WARN: Code duplicated, block: B:277:0x077b  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:35:0x0132  */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    @Override // k0.lt, y.c
    public void Z0(int r19, int[] r20, float[] r21, java.lang.String[] r22) {
        /*
            Method dump skipped, instruction units count: 3036
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k0.rc.Z0(int, int[], float[], java.lang.String[]):void");
    }

    public final boolean a3() {
        int i2 = nt.f8637c;
        return i2 == 21 || i2 == 22 || i2 == 23 || i2 == 24 || i2 == 25 || i2 == 26 || i2 == 28 || i2 == 29 || i2 == 30 || i2 == 31 || i2 == 32 || i2 == 33 || i2 == 35 || i2 == 36 || i2 == 37 || i2 == 38 || i2 == 39 || i2 == 77 || i2 == 78 || i2 == 40 || i2 == 41 || i2 == 42 || i2 == 43 || i2 == 44 || i2 == 45 || i2 == 46 || i2 == 47 || i2 == 48 || i2 == 49 || i2 == 50 || i2 == 51 || i2 == 52 || i2 == 53 || i2 == 54 || i2 == 55 || i2 == 56 || i2 == 57 || i2 == 58 || i2 == 59 || i2 == 60 || i2 == 61 || i2 == 65 || i2 == 66 || i2 == 67 || i2 == 68 || i2 == 69 || i2 == 70 || i2 == 71 || i2 == 72 || i2 == 73 || i2 == 74 || i2 == 75 || i2 == 76 || i2 == 77 || i2 == 78 || i2 == 79 || i2 == 80 || i2 == 81 || i2 == 82 || i2 == 83;
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f9852m + bArr.length > 1024) {
            this.f9852m = 0;
            this.f9853n = 0;
            this.f9854o = 0;
        }
        System.arraycopy(bArr, 0, this.f9851l, this.f9852m, bArr.length);
        int length = this.f9852m + bArr.length;
        this.f9852m = length;
        int i5 = this.f9854o;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f9851l[1];
            int i6 = 2;
            while (true) {
                i4 = this.f9854o;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f9851l[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f9851l;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f9853n = this.f9854o + 1;
            } else {
                this.f9853n = 1;
            }
            this.f9854o = 0;
        }
        int i7 = this.f9852m - 2;
        while (true) {
            i2 = this.f9853n;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f9851l;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f9854o = i8;
                int i9 = i8 + i2 + 3;
                this.f9854o = i9;
                if (i9 >= this.f9852m) {
                    this.f9854o = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f9854o;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f9851l[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f9851l;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f9853n;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f9853n = this.f9854o;
                } else {
                    this.f9853n++;
                }
                this.f9854o = 0;
            }
            this.f9853n++;
        }
        if (i2 != 0) {
            int i12 = this.f9852m - i2;
            this.f9852m = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f9851l;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f9853n = 0;
        }
    }

    public void k3(int i2, String str) {
        int[] iArr = new int[35];
        int i3 = 0;
        iArr[0] = 227;
        iArr[1] = 203;
        iArr[2] = 32;
        iArr[3] = i2;
        int length = str.length() <= 15 ? str.length() : 15;
        if (i2 == 1) {
            char[] charArray = str.toCharArray();
            while (i3 < length) {
                iArr[i3 + 4] = charArray[i3];
                i3++;
            }
        } else if (i2 == 2) {
            while (i3 < length) {
                int iCodePointAt = str.codePointAt(i3);
                int i4 = i3 << 1;
                iArr[i4 + 4] = (iCodePointAt >> 8) & 255;
                iArr[i4 + 5] = iCodePointAt & 255;
                i3++;
            }
        }
        z.k.s(iArr);
    }

    public final void l3(byte b2, String str) {
        if (str == null) {
            str = "  ";
        }
        int length = str.length();
        if (length > 30) {
            length = 30;
        }
        int i2 = length * 2;
        int[] iArr = new int[i2 + 4];
        iArr[0] = 227;
        iArr[1] = b2;
        iArr[2] = i2 + 1;
        iArr[3] = 16;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 5] = iCodePointAt & 255;
            iArr[i4 + 4] = (iCodePointAt >> 8) & 255;
        }
        z.k.s(iArr);
    }

    public final void m3() {
        if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.PAJeepDriveMode")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.ziyouguang.PAJeepDriveMode");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void n3() {
        if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.PAJeepOffRoadIndexAct")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.ziyouguang.PAJeepOffRoadIndexAct");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void o3() {
        if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.PAJeepRaceOptionsIndexAct")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.ziyouguang.PAJeepRaceOptionsIndexAct");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void p3() {
        if (qt.i0().equals("com.syu.carinfo.xp.ziyouguang.PAFordXMRadioAct")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.ziyouguang.PAFordXMRadioAct");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }
}
