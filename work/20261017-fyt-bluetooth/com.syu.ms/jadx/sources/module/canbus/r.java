package module.canbus;

import android.app.ActivityManager;
import android.bluetooth.BluetoothClass;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.hardware.camera2.utils.CameraBinderDecorator;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.io.UnsupportedEncodingException;
import java.util.List;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class r extends lt implements o1.q {
    public static int U = 255;
    public static int V;
    public static int W;
    public static final int[] X = {0, 3, 6, 9, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63};
    public static final o1.f<n> Y = new o1.f<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14701e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f14707k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f14698b = new int[5][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f14699c = new int[30][];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f14700d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14702f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14703g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f14704h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14705i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f14706j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f14708l = 255;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f14709m = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{8, 53}, new int[]{9, 12}, new int[]{10, 29}, new int[]{16, 16}, new int[]{18, 58}, new int[]{32, 1}, new int[]{36, 54}, new int[]{40, 18}, new int[]{42, 29}, new int[]{43, 5}, new int[]{44, 2}, new int[]{47, 9}, new int[]{48, 18}, new int[]{51, 24}, new int[]{52, 18}, new int[]{53, 26}, new int[]{57, 25}, new int[]{59, 2}, new int[]{69, 7}, new int[]{70, 8}, new int[]{75, 21}, new int[]{97, 62}};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final byte[] f14710n = new byte[1024];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f14711o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f14712p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f14713q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public byte f14714r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f14715s = new e();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f14716t = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f14717u = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f14718v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f14719w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f14720x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f14721y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f14722z = -1;
    public float A = 0.0f;
    public int B = 255;
    public int C = 255;
    public Runnable D = new f();
    public Runnable E = new g();
    public int F = 0;
    public boolean G = false;
    public Runnable H = new h();
    public Runnable I = new i();
    public Runnable J = new j();
    public int K = 200;
    public Runnable L = new k();
    public int M = 0;
    public Runnable N = new l();
    public Runnable O = new m();
    public Runnable P = new a();
    public Runnable Q = new b();
    public Runnable R = new c();
    public String S = ProxyProperties.LOCAL_EXCL_LIST;
    public Runnable T = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r.this.B3((byte) -110, u0.b.i3);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r.this.B3((byte) -108, u0.b.j3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r.this.B3((byte) -109, u0.b.k3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            r.this.S = h0.c.f2437h;
            if (r.this.S == null) {
                r.this.S = ProxyProperties.LOCAL_EXCL_LIST;
                z2 = false;
            } else {
                z2 = true;
            }
            if (z2) {
                r rVar = r.this;
                rVar.J3(rVar.S);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r rVar = r.this;
            byte b2 = (byte) (rVar.f14714r + 1);
            rVar.f14714r = b2;
            if (b2 == 20) {
                rVar.f14704h = true;
                if (rVar.f14702f == 12) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                }
                l0.b0.o0(r.this.f14715s);
                r.this.f14714r = (byte) 0;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r.this.A = u0.b.f17359s0;
            if ((r.this.A <= 22.5d && r.this.A >= 0.0f) || (r.this.A >= 337.5d && r.this.A <= 360.0f)) {
                r.this.C = 7;
            } else if (r.this.A > 22.5d && r.this.A < 67.5d) {
                r.this.C = 8;
            } else if (r.this.A >= 67.5d && r.this.A <= 112.5d) {
                r.this.C = 1;
            } else if (r.this.A > 112.5d && r.this.A < 157.5d) {
                r.this.C = 2;
            } else if (r.this.A >= 157.5d && r.this.A <= 202.5d) {
                r.this.C = 3;
            } else if (r.this.A > 202.5d && r.this.A < 247.5d) {
                r.this.C = 4;
            } else if (r.this.A >= 247.5d && r.this.A <= 292.5d) {
                r.this.C = 5;
            } else if (r.this.A <= 292.5d || r.this.A >= 337.5d) {
                r.this.C = 7;
            } else {
                r.this.C = 6;
            }
            if (r.this.C != r.this.B) {
                z.k.s(227, 19, 228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, r.this.C, 0, 0, 0, 0, 0, 0, 0);
                r rVar = r.this;
                rVar.B = rVar.C;
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
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            byte b3 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b4 = (byte) (time.month + 1);
            byte b5 = (byte) time.monthDay;
            byte b6 = (byte) time.hour;
            byte b7 = (byte) time.minute;
            z.k.s(227, 10, -53, 0, b6, b7, 0, 8, b2, b3, b4, b5, 0);
            int i2 = nt.f8633a;
            if (i2 == 8323366 || i2 == 8847654) {
                r.K3(new byte[]{90, -91, 10, -53, 0, b6, b7, 0, 0, b2, 0, 0, 0, 0, 0});
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(r.this.I);
            r rVar = r.this;
            rVar.F = 5;
            rVar.f14720x = 0;
            rVar.f14721y = 0;
            rVar.G = false;
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r rVar = r.this;
            int i2 = rVar.F - 1;
            rVar.F = i2;
            if (i2 <= 0) {
                l0.b0.p0(rVar.I);
                r.this.F = 5;
            }
            switch (nt.f8637c) {
                case 1:
                    z.k.s(227, 2, 36, 130, 1);
                    break;
                case 3:
                    z.k.s(227, 2, 36, 129, 1);
                    break;
                case 5:
                    z.k.s(227, 2, 36, 148, 1);
                    break;
                case 7:
                case 8:
                    z.k.s(227, 2, 36, 32, 1);
                    break;
                case 9:
                    if (App.c().getResources().getConfiguration().orientation == 1) {
                        z.k.s(227, 2, 36, 129, 1);
                    } else {
                        z.k.s(227, 2, 36, 24, 1);
                    }
                    break;
                case 10:
                    if (App.c().getResources().getConfiguration().orientation == 1) {
                        z.k.s(227, 2, 36, 130, 1);
                    } else {
                        z.k.s(227, 2, 36, 25, 1);
                    }
                    break;
                case 11:
                case 12:
                case 13:
                    z.k.s(227, 2, 36, 133, 1);
                    break;
                case 14:
                    if (App.c().getResources().getConfiguration().orientation == 1) {
                        z.k.s(227, 2, 36, 134, 1);
                    } else {
                        z.k.s(227, 2, 36, 84, 1);
                    }
                    break;
                case 15:
                    if (App.c().getResources().getConfiguration().orientation == 1) {
                        z.k.s(227, 2, 36, 135, 1);
                    } else {
                        z.k.s(227, 2, 36, 48, 1);
                    }
                    break;
                case 16:
                    z.k.s(227, 2, 36, 136, 1);
                    break;
                case 17:
                    z.k.s(227, 2, 36, 137, 1);
                    break;
                case 18:
                    z.k.s(227, 2, 36, 138, 1);
                    break;
                case 19:
                    z.k.s(227, 2, 36, 139, 1);
                    break;
                case 20:
                    if (App.c().getResources().getConfiguration().orientation == 1) {
                        z.k.s(227, 2, 36, 140, 1);
                    } else {
                        z.k.s(227, 2, 36, 36, 1);
                    }
                    break;
                case 21:
                    if (App.c().getResources().getConfiguration().orientation == 1) {
                        z.k.s(227, 2, 36, 143, 1);
                    } else {
                        z.k.s(227, 2, 36, 88, 1);
                    }
                    break;
                case 22:
                    if (App.c().getResources().getConfiguration().orientation == 1) {
                        z.k.s(227, 2, 36, 141, 1);
                    } else {
                        z.k.s(227, 2, 36, 60, 1);
                    }
                    break;
                case 23:
                    z.k.s(227, 2, 36, 142, 1);
                    break;
                case 24:
                    z.k.s(227, 2, 36, 154, 1);
                    break;
                case 25:
                    z.k.s(227, 2, 36, 153, 1);
                    break;
                case 26:
                case 74:
                    z.k.s(227, 2, 36, 146, 1);
                    break;
                case 30:
                    if (App.c().getResources().getConfiguration().orientation == 1) {
                        z.k.s(227, 2, 36, 132, 1);
                    } else {
                        z.k.s(227, 2, 36, 63, 1);
                    }
                    break;
                case 31:
                    z.k.s(227, 2, 36, 152, 1);
                    break;
                case 32:
                    if (App.c().getResources().getConfiguration().orientation == 1) {
                        z.k.s(227, 2, 36, 131, 1);
                    } else {
                        z.k.s(227, 2, 36, 63, 1);
                    }
                    break;
                case 33:
                    if (App.c().getResources().getConfiguration().orientation == 1) {
                        z.k.s(227, 2, 36, 132, 1);
                    } else {
                        z.k.s(227, 2, 36, 61, 1);
                    }
                    break;
                case 34:
                    if (App.c().getResources().getConfiguration().orientation == 1) {
                        z.k.s(227, 2, 36, 131, 1);
                    } else {
                        z.k.s(227, 2, 36, 61, 1);
                    }
                    break;
                case 35:
                    z.k.s(227, 2, 36, 33, 1);
                    break;
                case 36:
                case 37:
                    z.k.s(227, 2, 36, 159, 1);
                    break;
                case 38:
                case 39:
                    z.k.s(227, 2, 36, 160, 1);
                    break;
                case 40:
                case 41:
                case 125:
                case 126:
                    z.k.s(227, 2, 36, 161, 1);
                    break;
                case 42:
                case 43:
                    z.k.s(227, 2, 36, 162, 1);
                    break;
                case 44:
                    z.k.s(227, 2, 36, 155, 1);
                    break;
                case 45:
                    z.k.s(227, 2, 36, 156, 1);
                    break;
                case 46:
                case 47:
                    z.k.s(227, 2, 36, 165, 1);
                    break;
                case 48:
                case 49:
                    z.k.s(227, 2, 36, 166, 1);
                    break;
                case 50:
                case 51:
                    z.k.s(227, 2, 36, 167, 1);
                    break;
                case 52:
                case 53:
                    z.k.s(227, 2, 36, 168, 1);
                    break;
                case 54:
                case 55:
                case 90:
                    z.k.s(227, 2, 36, 157, 1);
                    break;
                case 56:
                case 57:
                    z.k.s(227, 2, 36, 158, 1);
                    break;
                case 58:
                case 59:
                    z.k.s(227, 2, 36, 171, 1);
                    break;
                case 60:
                case 61:
                    z.k.s(227, 2, 36, 172, 1);
                    break;
                case 62:
                case 63:
                    z.k.s(227, 2, 36, 173, 1);
                    break;
                case 64:
                case 65:
                    z.k.s(227, 2, 36, 174, 1);
                    break;
                case 66:
                case 68:
                    z.k.s(227, 2, 36, 169, 1);
                    break;
                case 67:
                case 69:
                    z.k.s(227, 2, 36, 170, 1);
                    break;
                case 70:
                case 71:
                    z.k.s(227, 2, 36, 16, 1);
                    break;
                case 72:
                case 73:
                    z.k.s(227, 2, 36, 145, 1);
                    break;
                case 75:
                case 76:
                case 77:
                case 78:
                    z.k.s(227, 2, 36, 147, 1);
                    break;
                case 79:
                case 80:
                case 121:
                    z.k.s(227, 2, 36, 149, 1);
                    break;
                case 81:
                case 82:
                    z.k.s(227, 2, 36, 150, 1);
                    break;
                case 83:
                case 84:
                    z.k.s(227, 2, 36, 151, 1);
                    break;
                case 85:
                    z.k.s(227, 2, 36, 163, 1);
                    break;
                case 86:
                    z.k.s(227, 2, 36, 164, 1);
                    break;
                case 87:
                    z.k.s(227, 2, 36, 175, 1);
                    break;
                case 88:
                case 89:
                    z.k.s(227, 2, 36, 176, 1);
                    break;
                case 91:
                    z.k.s(227, 2, 36, 177, 1);
                    break;
                case 92:
                    z.k.s(227, 2, 36, 178, 1);
                    break;
                case 93:
                    z.k.s(227, 2, 36, 179, 1);
                    break;
                case 94:
                    z.k.s(227, 2, 36, 180, 1);
                    break;
                case 95:
                    z.k.s(227, 2, 36, 181, 1);
                    break;
                case 96:
                    z.k.s(227, 2, 36, 182, 1);
                    break;
                case 97:
                    z.k.s(227, 2, 36, 183, 1);
                    break;
                case 98:
                    z.k.s(227, 2, 36, 184, 1);
                    break;
                case 99:
                case 100:
                    z.k.s(227, 2, 36, 20, 1);
                    break;
                case 101:
                    z.k.s(227, 2, 36, 28, 1);
                    break;
                case 102:
                    z.k.s(227, 2, 36, 29, 1);
                    break;
                case 103:
                    z.k.s(227, 2, 36, 40, 1);
                    break;
                case 104:
                    z.k.s(227, 2, 36, 41, 1);
                    break;
                case 105:
                    z.k.s(227, 2, 36, 44, 1);
                    break;
                case 106:
                case 128:
                    z.k.s(227, 2, 36, 62, 1);
                    break;
                case 107:
                    z.k.s(227, 2, 36, 64, 1);
                    break;
                case 108:
                    z.k.s(227, 2, 36, 65, 1);
                    break;
                case 109:
                    z.k.s(227, 2, 36, 66, 1);
                    break;
                case 110:
                    z.k.s(227, 2, 36, 68, 1);
                    break;
                case 111:
                    z.k.s(227, 2, 36, 69, 1);
                    break;
                case 112:
                    z.k.s(227, 2, 36, 185, 1);
                    break;
                case 113:
                    z.k.s(227, 2, 36, 72, 1);
                    break;
                case 114:
                    z.k.s(227, 2, 36, 76, 1);
                    break;
                case 115:
                    z.k.s(227, 2, 36, 77, 1);
                    break;
                case 116:
                    z.k.s(227, 2, 36, 80, 1);
                    break;
                case 117:
                    z.k.s(227, 2, 36, 85, 1);
                    break;
                case 118:
                    z.k.s(227, 2, 36, 92, 1);
                    break;
                case 119:
                    z.k.s(227, 2, 36, 96, 1);
                    break;
                case 120:
                    z.k.s(227, 2, 36, 100, 1);
                    break;
                case 122:
                    z.k.s(227, 2, 36, 108, 1);
                    break;
                case 123:
                    z.k.s(227, 2, 36, 104, 1);
                    break;
                case 124:
                    z.k.s(227, 2, 36, 105, 1);
                    break;
                case 127:
                case 135:
                    r.K3(new byte[]{90, -91, 2, 36, 37, 1, 0});
                    break;
                case 130:
                    z.k.s(227, 2, 36, 186, 1);
                    break;
                case 131:
                case 132:
                    z.k.s(227, 2, 36, 188, 1);
                    break;
                case 133:
                    z.k.s(227, 2, 36, 79, 1);
                    break;
                case 134:
                    z.k.s(227, 2, 36, 189, 1);
                    break;
                case 136:
                    z.k.s(227, 2, 36, 42, 1);
                    break;
                case 137:
                    z.k.s(227, 2, 36, 43, 1);
                    break;
                case 138:
                    z.k.s(227, 2, 36, 196, 1);
                    break;
                case 139:
                    z.k.s(227, 2, 36, 195, 1);
                    break;
                case 140:
                    z.k.s(227, 2, 36, 199, 1);
                    break;
                case 141:
                    z.k.s(227, 2, 36, 200, 1);
                    break;
                case 142:
                    z.k.s(227, 2, 36, 200, 1);
                    break;
                case 143:
                    z.k.s(227, 2, 36, 201, 1);
                    break;
                case 144:
                    z.k.s(227, 2, 36, 202, 1);
                    break;
                case 145:
                    z.k.s(227, 2, 36, 198, 1);
                    break;
                case 146:
                    z.k.s(227, 2, 36, 86, 1);
                    break;
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = r.U;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 == 13) {
                    z.k.s(227, 2, i.a.Theme_actionModeWebSearchDrawable, 1, 4);
                } else {
                    int i4 = r.U;
                    if (i4 == 13 || i4 == 255) {
                        z.k.s(227, 2, i.a.Theme_actionModeWebSearchDrawable, 1, 5);
                    }
                }
                r.U = u0.b.D;
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if (nt.a() || (i2 = nt.f8637c) == 32 || i2 == 34) {
                if (r.this.K > 100) {
                    r.s3(r.this);
                    if (r.this.M == r.this.K / 100) {
                        r.this.M = 0;
                        return;
                    }
                }
                int i3 = u0.b.f17306a0;
                int i4 = u0.b.f17320f;
                int i5 = y0.f.f18055i;
                if (i3 == 0 || i4 == 0 || i5 == 1) {
                    int unused = r.W = r.X[0];
                } else {
                    int unused2 = r.W = r.X[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (r.this.f7886a.f8307b != 1 || r.V == r.W) {
                    return;
                }
                r.this.H3();
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r rVar = r.this;
            int i2 = rVar.f14700d;
            if (i2 > 0) {
                rVar.f14700d = i2 - 1;
            }
            if (rVar.f14700d == 0) {
                r.b3();
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            r.this.f14700d = 2;
            int[] iArr = new int[16];
            iArr[0] = 227;
            iArr[1] = 13;
            iArr[2] = 145;
            iArr[3] = 32;
            if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
                iArr[4] = 48;
                iArr[5] = 48;
            } else {
                iArr[4] = (i2 / 10) + 48;
                iArr[5] = (i2 % 10) + 48;
            }
            z.k.s(iArr);
        }
    }

    public static class n implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14736a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14737b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14738c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14739d;

        public n(int i2, int i3) {
            this.f14736a = i2;
            this.f14739d = i3;
        }

        public synchronized void a(int i2) {
            this.f14737b = i2;
            if (!this.f14738c) {
                this.f14738c = true;
                o1.k.a().postDelayed(this, this.f14739d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 2, 173, this.f14736a, this.f14737b);
            this.f14738c = false;
        }
    }

    public static void K3(byte[] bArr) {
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
                iArr[10] = ((i6 % 100000) / 10000) + 48;
                iArr[11] = ((i6 % 10000) / 1000) + 48;
                iArr[12] = ((i6 % 1000) / 100) + 48;
                iArr[13] = 46;
                iArr[14] = ((i6 % 100) / 10) + 48;
            } else {
                int i7 = w0.d.f17798j;
                iArr[3] = (i7 / 10) + 1 + 48;
                iArr[4] = (i7 % 10) + 1 + 48;
                int i8 = w0.d.f17797i;
                iArr[10] = (i8 / 10000) + 48;
                iArr[11] = ((i8 % 10000) / 1000) + 48;
                iArr[12] = ((i8 % 1000) / 100) + 48;
                iArr[13] = ((i8 % 100) / 10) + 48;
                iArr[14] = (i8 % 10) + 48;
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

    public static /* synthetic */ int s3(r rVar) {
        int i2 = rVar.M;
        rVar.M = i2 + 1;
        return i2;
    }

    public static void y3(int i2, int i3) {
        n nVarC = Y.c(i2);
        if (nVarC != null) {
            nVarC.a(i3);
        }
    }

    public String A3() {
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

    public final void B3(byte b2, String str) {
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

    public final void C3() {
        Z2(y0.f.f18037c);
    }

    public final void D3() {
        try {
            if (A3().equals("com.syu.carinfo.wccamry.Wc09LexusESCarCDActi")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.wccamry.Wc09LexusESCarCDActi");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void E3() {
        if (A3().equals("com.syu.carinfo.wccamry.Wc09LexusESCarRadioActi")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.wccamry.Wc09LexusESCarRadioActi");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void F3() {
        if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_WC_YL_Toyota_UI")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.air.Air_Activity_WC_YL_Toyota_UI");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public void G3(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = nt.f8633a;
        if (i9 == 8323366 || i9 == 8847654) {
            byte b2 = bArr[i2 + 1];
            if (b2 == -90) {
                if (nt.a()) {
                    int i10 = i2 + 2;
                    V = o0.a(bArr[i10] & 255, 0, 63);
                    qt.y0(161, bArr[i10] & 255);
                    qt.y0(157, bArr[i2 + 3] & 255);
                    qt.y0(156, bArr[i2 + 4] & 255);
                    qt.y0(158, bArr[i2 + 5] & 255);
                    qt.y0(160, bArr[i2 + 6] & 255);
                    qt.y0(159, bArr[i2 + 7] & 255);
                    int i11 = i2 + 8;
                    qt.y0(126, (bArr[i11] >> 1) & 1);
                    qt.y0(127, bArr[i11] & 1);
                    return;
                }
                return;
            }
            if (b2 == -16) {
                this.f14716t = new String(bArr, i2 + 2, i3 - 2);
                qt.L(this.f14717u + "__" + this.f14716t);
                return;
            }
            if (b2 != 49) {
                return;
            }
            int i12 = bArr[i2 + 13] & 255;
            int i13 = i2 + 2;
            int i14 = (bArr[i13] >> 0) & 1;
            if (i12 == 0) {
                u0.d.A3(0);
            } else {
                u0.d.B3(i14 == 1 ? (((i12 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i12 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            }
            qt.y0(10, (bArr[i13] >> 6) & 1);
            qt.y0(53, (bArr[i13] >> 5) & 1);
            qt.y0(42, (bArr[i13] >> 4) & 1);
            qt.y0(13, (bArr[i13] >> 3) & 1);
            qt.y0(92, (bArr[i13] >> 1) & 1);
            qt.y0(37, (bArr[i13] >> 0) & 1);
            int i15 = i2 + 3;
            qt.y0(67, (bArr[i15] >> 7) & 1);
            qt.y0(11, (bArr[i15] >> 6) & 1);
            qt.y0(12, (bArr[i15] >> 4) & 1);
            qt.y0(54, (bArr[i15] >> 3) & 1);
            qt.y0(14, (bArr[i15] >> 2) & 1);
            qt.y0(52, (bArr[i15] >> 1) & 1);
            qt.y0(34, (bArr[i15] >> 0) & 1);
            int i16 = i2 + 4;
            qt.y0(43, (bArr[i16] >> 7) & 1);
            qt.y0(16, (bArr[i16] >> 5) & 1);
            qt.y0(65, (bArr[i16] >> 4) & 1);
            qt.y0(30, (bArr[i16] >> 2) & 3);
            qt.y0(29, (bArr[i16] >> 0) & 3);
            int i17 = i2 + 5;
            qt.y0(32, (bArr[i17] >> 6) & 3);
            qt.y0(31, (bArr[i17] >> 4) & 3);
            qt.y0(17, (bArr[i17] >> 3) & 1);
            qt.y0(75, (bArr[i17] >> 2) & 1);
            qt.y0(80, (bArr[i17] >> 1) & 1);
            int i18 = i2 + 6;
            qt.y0(77, (bArr[i18] >> 0) & 15);
            int i19 = (bArr[i18] >> 0) & 15;
            if (i19 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i19 == 5) {
                i5 = 0;
                i6 = 1;
                i4 = 1;
            } else if (i19 != 6) {
                switch (i19) {
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
            int i20 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 8] : bArr[i2 + 9]) & 255;
            if (i20 == 254) {
                qt.y0(27, -2);
            } else if (i20 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i20 * 5);
            }
            int i21 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 9] : bArr[i2 + 8]) & 255;
            if (i21 == 254) {
                qt.y0(28, -2);
            } else if (i21 == 255) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i21 * 5);
            }
            int i22 = bArr[i2 + 10] & 255;
            if (i22 == 1) {
                i7 = 0;
                i8 = 1;
            } else if (i22 != 2) {
                i8 = i22 != 3 ? 0 : 1;
                i7 = i8;
            } else {
                i8 = 0;
                i7 = 1;
            }
            qt.y0(47, i8);
            qt.y0(46, i7);
            qt.y0(44, bArr[i2 + 11] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i23 = bArr[i2 + 12] & 255;
            if (i23 == 254) {
                qt.y0(40, -2);
            } else if (i23 == 255) {
                qt.y0(40, -3);
            } else {
                qt.y0(40, i23 * 5);
            }
        }
    }

    public final synchronized void H3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = 0;
        int i3 = V;
        int i4 = W;
        if (i3 < i4) {
            i2 = 1;
        } else if (i3 > i4) {
            i2 = -1;
        }
        y3(1, i2);
    }

    public final void I3(byte b2, byte b3, byte b4) {
        z.k.s(227, 3, 106, b2, b3, b4);
    }

    public final void J3(String str) {
        if (str == null) {
            return;
        }
        int[] iArr = new int[30];
        iArr[0] = -29;
        iArr[1] = 27;
        iArr[2] = -51;
        iArr[3] = z3();
        iArr[4] = 0;
        iArr[5] = 0;
        int length = str.length() <= 12 ? str.length() : 12;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 7] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 6] = iCodePointAt & 255;
        }
        z.k.s(iArr);
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
                z.k.s(227, 3, 106, 6, 1, 0);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, 3, 106, 6, 1, 1);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, 3, 106, 6, 2, 0);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, 3, 106, 6, 2, 1);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, 3, 106, 6, 4, 0);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, 3, 106, 6, 4, 1);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, 3, 106, 6, 8, 0);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, 3, 106, 6, 8, 1);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, 3, 106, 6, 16, 0);
                return;
            }
            if (iArr[1] == 10) {
                z.k.s(227, 3, 106, 6, 16, 1);
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, 3, 106, 6, 15, 0);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, 3, 106, 6, 15, 1);
                    return;
                }
                return;
            }
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

    /* JADX WARN: Code duplicated, block: B:30:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c4  */
    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        if (nt.f8637c == 6) {
            mtVar.f8306a = null;
        }
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8307b = 0;
        if (nt.f8633a != 8454438) {
            qt.z(this.E);
        }
        o1.y yVar = u0.c.f17386m;
        yVar.a(this.H, 1);
        yVar.a(this.N, 1);
        o1.y yVar2 = u0.c.f17374a;
        yVar2.a(this.N, 1);
        w0.e.f17815a.a(this.N, 1);
        w0.e.f17819e.a(this.N, 1);
        y0.g.f18094d.a(this.O, 1);
        y0.g.f18095e.a(this.O, 1);
        u0.c.f17388o.a(this.P, 1);
        u0.c.f17389p.a(this.Q, 1);
        u0.c.f17390q.a(this.R, 1);
        h0.d.f2464c.a(this.T, 1);
        h0.d.f2462a.a(this.T, 1);
        o1.h.f16865a.a(this.D, 1);
        int i2 = nt.f8637c;
        if (i2 == 32) {
            this.f7886a.f8307b = 1;
            if (nt.a()) {
                init();
                l0.b0.a(this.L);
                C3();
            }
        } else if (i2 == 37 || i2 == 39 || i2 == 41 || i2 == 43 || i2 == 47 || i2 == 49 || i2 == 51 || i2 == 126) {
            this.f7886a.f8313h = 2;
        } else if (i2 != 128) {
            this.f7886a.f8313h = 0;
        } else {
            this.f7886a.f8307b = 1;
            if (nt.a()) {
                init();
                l0.b0.a(this.L);
                C3();
            }
        }
        int i3 = nt.f8637c;
        if ((i3 == 24 || i3 == 25 || i3 == 44 || i3 == 45 || i3 == 137) && App.c().getResources().getConfiguration().orientation != 1) {
            yVar2.a(this.J, 1);
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        } else {
            this.f7886a.f8314i = 1;
        }
        if (nt.f8637c == 9) {
            this.f7886a.f8314i = 0;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8322q = 1;
        mtVar2.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56};
    }

    /* JADX WARN: Code duplicated, block: B:80:0x085d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x085f  */
    /* JADX WARN: Code duplicated, block: B:82:0x086b  */
    /* JADX WARN: Code duplicated, block: B:84:0x086e  */
    /* JADX WARN: Code duplicated, block: B:85:0x0879  */
    /* JADX WARN: Code duplicated, block: B:86:0x0884  */
    /* JADX WARN: Code duplicated, block: B:88:0x0887  */
    /* JADX WARN: Code duplicated, block: B:89:0x0892  */
    /* JADX WARN: Code duplicated, block: B:91:0x0896  */
    /* JADX WARN: Code duplicated, block: B:92:0x089f  */
    /* JADX WARN: Code duplicated, block: B:95:0x08e5  */
    /* JADX WARN: Failed to find 'out' block for switch in B:130:0x0b1f. Please report as an issue. */
    /* JADX WARN: Type inference failed for: r10v106 */
    /* JADX WARN: Type inference failed for: r10v107, types: [float[], java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r10v108 */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
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
        char c2;
        ?? r10;
        switch (bArr[i2 + 1]) {
            case -126:
                if (!this.G) {
                    int i21 = i2 + 2;
                    qt.y0(10, (bArr[i21] >> 6) & 1);
                    qt.y0(43, (bArr[i21] >> 5) & 1);
                    qt.y0(42, (bArr[i21] >> 4) & 1);
                    qt.y0(13, (bArr[i21] >> 3) & 1);
                    qt.y0(37, (bArr[i21] >> 0) & 1);
                    int i22 = i2 + 3;
                    qt.y0(67, (bArr[i22] >> 7) & 1);
                    qt.y0(11, (bArr[i22] >> 6) & 1);
                    qt.y0(65, (bArr[i22] >> 4) & 1);
                    qt.y0(16, (bArr[i22] >> 5) & 1);
                    qt.y0(12, (bArr[i22] >> 3) & 1);
                    qt.y0(14, (bArr[i22] >> 2) & 1);
                    qt.y0(54, (bArr[i22] >> 0) & 1);
                    qt.y0(52, (bArr[i22] >> 1) & 1);
                    int i23 = bArr[i2 + 4] & 255;
                    if (i23 == 1) {
                        qt.y0(27, -2);
                    } else if (i23 == 255) {
                        qt.y0(27, -3);
                    } else if (i23 == 0 || i23 < 116 || i23 > 144) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, (i23 * 5) - 400);
                    }
                    int i24 = bArr[i2 + 5] & 255;
                    if (i24 == 1) {
                        qt.y0(28, -2);
                    } else if (i24 == 255) {
                        qt.y0(28, -3);
                    } else if (i24 == 0 || i24 < 116 || i24 > 144) {
                        qt.y0(28, -1);
                    } else {
                        qt.y0(28, (i24 * 5) - 400);
                    }
                    int i25 = i2 + 6;
                    qt.y0(20, (bArr[i25] >> 6) & 1);
                    qt.y0(19, (bArr[i25] >> 5) & 1);
                    qt.y0(18, (bArr[i25] >> 4) & 1);
                    qt.y0(21, bArr[i25] & DhcpPacket.DHCP_DOMAIN_NAME);
                    int i26 = i2 + 7;
                    qt.y0(46, (bArr[i26] >> 1) & 1);
                    qt.y0(47, (bArr[i26] >> 0) & 1);
                    qt.y0(44, bArr[i2 + 8] & DhcpPacket.DHCP_DOMAIN_NAME);
                    int i27 = bArr[i2 + 9] & 255;
                    if (i27 == 1) {
                        qt.y0(40, -2);
                    } else if (i27 == 255) {
                        qt.y0(40, -3);
                    } else if (i27 == 0 || i27 < 116 || i27 > 144) {
                        qt.y0(40, -1);
                    } else {
                        qt.y0(40, (i27 * 5) - 400);
                    }
                    break;
                }
                break;
            case -124:
                qt.y0(176, bArr[i2 + 2] & 255);
                qt.y0(177, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(178, bArr[i2 + 5] & 255);
                int i28 = i2 + 6;
                qt.y0(179, (bArr[i28] >> 7) & 1);
                qt.y0(180, (bArr[i28] >> 6) & 1);
                qt.y0(181, bArr[i2 + 7] & 255);
                break;
            case -122:
                qt.y0(138, (bArr[i2 + 2] >> 4) & 15);
                int i29 = i2 + 3;
                qt.y0(139, (bArr[i29] >> 0) & 1);
                qt.y0(140, (bArr[i29] >> 1) & 1);
                qt.y0(141, (bArr[i29] >> 2) & 1);
                qt.y0(142, (bArr[i29] >> 3) & 1);
                qt.y0(143, (bArr[i29] >> 4) & 1);
                qt.y0(144, (bArr[i29] >> 5) & 1);
                int i30 = i2 + 8;
                qt.y0(145, (bArr[i30] >> 7) & 1);
                qt.y0(146, (bArr[i30] >> 6) & 1);
                qt.y0(147, (bArr[i30] >> 5) & 1);
                qt.y0(148, (bArr[i30] >> 4) & 1);
                qt.y0(149, (bArr[i30] >> 3) & 1);
                qt.y0(150, (bArr[i30] >> 2) & 1);
                qt.y0(151, bArr[i2 + 9] & 255);
                qt.y0(152, bArr[i2 + 5] & 255);
                qt.y0(153, bArr[i2 + 6] & 255);
                qt.y0(154, bArr[i2 + 7] & 255);
                break;
            case -90:
                if (nt.a()) {
                    int i31 = i2 + 2;
                    V = o0.a(bArr[i31] & 255, 0, 63);
                    qt.y0(161, bArr[i31] & 255);
                    qt.y0(157, bArr[i2 + 3] & 255);
                    qt.y0(156, bArr[i2 + 4] & 255);
                    qt.y0(158, bArr[i2 + 5] & 255);
                    qt.y0(160, bArr[i2 + 6] & 255);
                    qt.y0(159, bArr[i2 + 7] & 255);
                    int i32 = i2 + 8;
                    qt.y0(126, (bArr[i32] >> 1) & 1);
                    qt.y0(127, bArr[i32] & 1);
                }
                break;
            case -88:
                try {
                    int i33 = i2 + 2;
                    qt.z0(155, new int[]{bArr[i33]}, new String(bArr, i33, 32, "UTF-16LE"));
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                    return;
                }
                break;
            case CameraBinderDecorator.DEAD_OBJECT /* -32 */:
                int i34 = i2 + 2;
                if (this.f14722z != bArr[i34]) {
                    this.f14722z = bArr[i34];
                    switch (bArr[i34]) {
                        case 32:
                            int i35 = nt.f8637c;
                            if (i35 != 24 && i35 != 25 && i35 != 44 && i35 != 45 && i35 != 137 && i35 != 14) {
                                l0.b0.l0(75, 0);
                                l0.b0.l0(75, 1);
                            } else if (!A3().equals("com.syu.carinfo.wccamry.Wc09LexusESCarRadioActi")) {
                                E3();
                            }
                            break;
                        case 33:
                            int i36 = nt.f8637c;
                            if (i36 != 24 && i36 != 25 && i36 != 44 && i36 != 45 && i36 != 137 && i36 != 14) {
                                l0.b0.l0(74, 0);
                                l0.b0.l0(74, 1);
                            } else if (!A3().equals("com.syu.carinfo.wccamry.Wc09LexusESCarRadioActi")) {
                                E3();
                            }
                            break;
                        case 34:
                            l0.b0.l0(54, 0);
                            l0.b0.l0(54, 1);
                            break;
                        case 35:
                            l0.b0.l0(76, 0);
                            l0.b0.l0(76, 1);
                            break;
                        case 37:
                            l0.b0.l0(52, 0);
                            l0.b0.l0(52, 1);
                            break;
                        case 38:
                            if (u0.b.D != 13) {
                                D3();
                            }
                            break;
                        case 39:
                            l0.b0.l0(53, 0);
                            l0.b0.l0(53, 1);
                            break;
                    }
                }
                break;
            case PackageManager.INSTALL_FAILED_UID_CHANGED /* -24 */:
                if (qt.k0()) {
                    int i37 = i2 + 5;
                    if (this.f14719w != (bArr[i37] & 255)) {
                        int i38 = bArr[i37] & 255;
                        this.f14719w = i38;
                        if (i38 == 0) {
                            c.e.d().c(614);
                        } else {
                            c.e.d().c(590);
                        }
                    }
                } else if ((bArr[i2 + 5] & 255) != 0) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
                break;
            case -16:
                this.f14717u = new String(bArr, i2 + 2, i3 - 2);
                qt.L(this.f14717u + "__" + this.f14716t);
                break;
            case 17:
                int i39 = (bArr[i2 + 2] >> 7) & 1;
                int i40 = this.f14718v;
                if (i40 != i39) {
                    if (i39 != 0) {
                        if (y0.f.f18055i != 1) {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    } else if (i40 == 1 && i39 == 0 && y0.f.f18055i == 1) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                    this.f14718v = i39;
                }
                byte b2 = bArr[i2 + 6];
                qt.y0(0, (b2 >> 2) & 1);
                qt.y0(5, (b2 >> 3) & 1);
                qt.y0(3, (b2 >> 4) & 1);
                qt.y0(4, (b2 >> 5) & 1);
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b2 >> 6) & 1);
                    qt.y0(1, (b2 >> 7) & 1);
                } else {
                    qt.y0(1, (b2 >> 6) & 1);
                    qt.y0(2, (b2 >> 7) & 1);
                }
                this.f14702f = bArr[i2 + 4] & 255;
                int i41 = bArr[i2 + 5] & 255;
                int i42 = 0;
                while (true) {
                    iArr = this.f14706j;
                    if (i42 < iArr.length) {
                        int i43 = this.f14702f;
                        if (i43 != iArr[i42][0]) {
                            i42++;
                        } else if (i43 != 0) {
                            this.f14701e = i42;
                            this.f14703g = i43;
                        }
                    }
                }
                int i44 = this.f14702f;
                if (i44 == 0) {
                    if (this.f14703g != 12) {
                        if ((i41 & 255) == 0) {
                            int i45 = this.f14701e;
                            if (i45 < iArr.length && i45 != 255) {
                                l0.b0.l0(iArr[i45][1], 1);
                            }
                            this.f14701e = 255;
                        }
                    } else if (!this.f14704h) {
                        l0.b0.l0(2, 0);
                        l0.b0.l0(2, 1);
                    }
                    l0.b0.o0(this.f14715s);
                    this.f14704h = false;
                    this.f14714r = (byte) 0;
                    this.f14705i = 0;
                    this.f14703g = 0;
                } else if (i44 != 5) {
                    if (i44 != 12) {
                        int i46 = i41 & 255;
                        if (i46 == 1) {
                            if (i42 < iArr.length) {
                                l0.b0.l0(iArr[i42][1], 0);
                            }
                        } else if (i46 == 0) {
                            int i47 = this.f14701e;
                            if (i47 < iArr.length && i47 != 255) {
                                l0.b0.l0(iArr[i47][1], 1);
                            }
                            this.f14701e = 255;
                        }
                    } else if (this.f14705i != i41) {
                        this.f14705i = i41;
                        if (i41 == 1) {
                            this.f14704h = false;
                            this.f14714r = (byte) 0;
                            l0.b0.a(this.f14715s);
                        }
                    }
                } else if (i41 == 1) {
                    int i48 = h0.c.E;
                    if (i48 == 3 || i48 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    }
                }
                qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                break;
            case 18:
                if (nt.f8637c == 90) {
                    int i49 = (bArr[i2 + 2] >> 7) & 1;
                    if (u0.b.f17347o == 0) {
                        if (i49 != 0) {
                            if (!o1.u.T(a.b.O)) {
                                qt.t();
                            }
                        } else if (o1.u.T(a.b.O)) {
                            qt.f();
                        }
                    }
                }
                break;
            case 19:
                int i50 = i2 + 12;
                int i51 = (bArr[i50] & 255) << 24;
                int i52 = i2 + 13;
                int i53 = (bArr[i52] & 255) << 24;
                qt.y0(98, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i51);
                qt.y0(99, i53 | ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(118, i51 | ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
                qt.y0(101, ((bArr[i2 + 8] & 255) << 8) | (bArr[i2 + 9] & 255));
                qt.y0(100, ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
                qt.y0(189, bArr[i50] & 255);
                qt.y0(190, bArr[i52] & 255);
                break;
            case 22:
                int i54 = (bArr[i2 + 14] & 255) << 24;
                qt.y0(115, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i54);
                for (int i55 = 0; i55 < 5; i55++) {
                    int i56 = i2 + (i55 * 2);
                    int[] iArr3 = {i55, (bArr[i56 + 5] & 255) | ((bArr[i56 + 4] & 255) << 8) | i54};
                    if (qt.C0(116, iArr3, this.f14698b[i55])) {
                        this.f14698b[i55] = iArr3;
                    }
                }
                break;
            case 23:
                int i57 = (bArr[i2 + 62] & 255) << 24;
                for (int i58 = 0; i58 < 30; i58++) {
                    int i59 = i2 + (i58 * 2);
                    int[] iArr4 = {i58, (bArr[i59 + 3] & 255) | ((bArr[i59 + 2] & 255) << 8) | i57};
                    if (qt.C0(117, iArr4, this.f14699c[i58])) {
                        this.f14699c[i58] = iArr4;
                    }
                }
                break;
            case 24:
                int i60 = i2 + 3;
                o1.x.C(nt.f8643f, 1049, new int[]{11, ((((bArr[i60] >> 7) & 1) << 3) & 8) | ((((bArr[i60] >> 6) & 1) << 4) & 16) | ((u0.b.f17366w << 6) & 64)}, null, null);
                l0.c0.N1((bArr[i60] >> 7) & 1, (bArr[i60] >> 6) & 1, (bArr[i60] >> 3) & 1);
                qt.y0(194, bArr[i2 + 4] & 255);
                qt.y0(195, bArr[i2 + 5] & 255);
                qt.y0(196, bArr[i2 + 6] & 255);
                qt.y0(197, bArr[i2 + 7] & 255);
                qt.y0(198, bArr[i2 + 11] & 255);
                break;
            case 26:
                o1.x.C(nt.f8643f, 1049, new int[]{12, (bArr[i2 + 4] >> 7) & 1}, null, null);
                break;
            case 31:
                int i61 = i2 + 2;
                qt.y0(128, (bArr[i61] >> 7) & 1);
                qt.y0(130, bArr[i61] & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(129, bArr[i2 + 3] & 255);
                break;
            case 33:
                this.f14708l = bArr[i2 + 2] & 255;
                int i62 = bArr[i2 + 3] & 255;
                int i63 = 0;
                while (true) {
                    iArr2 = this.f14709m;
                    if (i63 < iArr2.length) {
                        int i64 = this.f14708l;
                        if (i64 != iArr2[i63][0]) {
                            i63++;
                        } else if (i64 != 0) {
                            this.f14707k = i63;
                        }
                    }
                }
                int i65 = i62 & 255;
                if (i65 == 1) {
                    if (i63 < iArr2.length) {
                        l0.b0.l0(iArr2[i63][1], 0);
                    }
                } else if (i65 == 0) {
                    int i66 = this.f14707k;
                    if (i66 < iArr2.length && i66 != 255) {
                        l0.b0.l0(iArr2[i66][1], 1);
                    }
                    this.f14707k = 255;
                }
                break;
            case 34:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                if (b3 == 1) {
                    int i67 = this.f14720x;
                    if (b4 != i67) {
                        if (b4 > i67) {
                            for (int i68 = 0; i68 < b4 - this.f14720x; i68++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                        } else if (b4 < i67) {
                            for (int i69 = 0; i69 < this.f14720x - b4; i69++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                        }
                        this.f14720x = b4;
                    }
                } else if (b3 == 2 && b4 != (i4 = this.f14721y)) {
                    if (b4 > i4) {
                        for (int i70 = 0; i70 < b4 - this.f14721y; i70++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b4 < i4) {
                        for (int i71 = 0; i71 < this.f14721y - b4; i71++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f14721y = b4;
                }
                break;
            case 35:
                qt.y0(186, bArr[i2 + 2] & 255);
                break;
            case 49:
                int i72 = nt.f8637c;
                if (i72 != 127 && i72 != 135) {
                    int i73 = 1;
                    this.G = true;
                    int i74 = bArr[i2 + 13] & 255;
                    int i75 = i2 + 2;
                    int i76 = (bArr[i75] >> 0) & 1;
                    if (i74 == 0) {
                        u0.d.A3(0);
                    } else {
                        int i77 = i76 == 1 ? (268435456 | ((i74 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR)) & (-1) : (i74 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                        a.f.p().t(LogType.CANBUS, "HandlerMain.tempOut2 == " + i77);
                        u0.d.B3(i77);
                        i73 = 1;
                    }
                    int[] iArr5 = new int[i73];
                    iArr5[0] = (bArr[i75] >> 6) & i73;
                    qt.y0(10, iArr5);
                    int[] iArr6 = new int[i73];
                    iArr6[0] = (bArr[i75] >> 5) & i73;
                    qt.y0(53, iArr6);
                    int[] iArr7 = new int[i73];
                    iArr7[0] = (bArr[i75] >> 4) & i73;
                    qt.y0(42, iArr7);
                    int[] iArr8 = new int[i73];
                    iArr8[0] = (bArr[i75] >> 3) & i73;
                    qt.y0(13, iArr8);
                    int[] iArr9 = new int[i73];
                    iArr9[0] = (bArr[i75] >> i73) & i73;
                    qt.y0(92, iArr9);
                    int[] iArr10 = new int[i73];
                    iArr10[0] = (bArr[i75] >> 0) & i73;
                    qt.y0(37, iArr10);
                    int[] iArr11 = new int[i73];
                    int i78 = i2 + 3;
                    iArr11[0] = (bArr[i78] >> 7) & i73;
                    qt.y0(67, iArr11);
                    int[] iArr12 = new int[i73];
                    iArr12[0] = (bArr[i78] >> 6) & i73;
                    qt.y0(11, iArr12);
                    int[] iArr13 = new int[i73];
                    iArr13[0] = (bArr[i78] >> 4) & i73;
                    qt.y0(12, iArr13);
                    int[] iArr14 = new int[i73];
                    iArr14[0] = (bArr[i78] >> 3) & i73;
                    qt.y0(54, iArr14);
                    int[] iArr15 = new int[i73];
                    iArr15[0] = (bArr[i78] >> 2) & i73;
                    qt.y0(14, iArr15);
                    int[] iArr16 = new int[i73];
                    iArr16[0] = (bArr[i78] >> i73) & i73;
                    qt.y0(52, iArr16);
                    int[] iArr17 = new int[i73];
                    iArr17[0] = (bArr[i78] >> 0) & i73;
                    qt.y0(34, iArr17);
                    int[] iArr18 = new int[i73];
                    int i79 = i2 + 4;
                    iArr18[0] = (bArr[i79] >> 7) & i73;
                    qt.y0(43, iArr18);
                    int[] iArr19 = new int[i73];
                    iArr19[0] = (bArr[i79] >> 5) & i73;
                    qt.y0(16, iArr19);
                    int[] iArr20 = new int[i73];
                    iArr20[0] = (bArr[i79] >> 4) & i73;
                    qt.y0(65, iArr20);
                    int[] iArr21 = new int[i73];
                    iArr21[0] = (bArr[i79] >> 2) & 3;
                    qt.y0(30, iArr21);
                    int[] iArr22 = new int[i73];
                    iArr22[0] = (bArr[i79] >> 0) & 3;
                    qt.y0(29, iArr22);
                    int[] iArr23 = new int[i73];
                    int i80 = i2 + 5;
                    iArr23[0] = (bArr[i80] >> 6) & 3;
                    qt.y0(32, iArr23);
                    int[] iArr24 = new int[i73];
                    iArr24[0] = (bArr[i80] >> 4) & 3;
                    qt.y0(31, iArr24);
                    int[] iArr25 = new int[i73];
                    iArr25[0] = (bArr[i80] >> 3) & i73;
                    qt.y0(17, iArr25);
                    int[] iArr26 = new int[i73];
                    iArr26[0] = (bArr[i80] >> 2) & i73;
                    qt.y0(63, iArr26);
                    int[] iArr27 = new int[i73];
                    iArr27[0] = (bArr[i80] >> i73) & i73;
                    qt.y0(76, iArr27);
                    int[] iArr28 = new int[i73];
                    int i81 = i2 + 6;
                    iArr28[0] = (bArr[i81] >> 0) & 15;
                    qt.y0(77, iArr28);
                    int i82 = (bArr[i81] >> 0) & 15;
                    if (i82 != 3) {
                        if (i82 == 5) {
                            i6 = 0;
                            i7 = 1;
                        } else if (i82 != 6) {
                            switch (i82) {
                                case 12:
                                    i5 = 0;
                                    i7 = 1;
                                    i6 = 1;
                                    break;
                                case 13:
                                    i7 = 0;
                                    i5 = 1;
                                    i6 = 1;
                                    break;
                                case 14:
                                    i7 = 1;
                                    i5 = 1;
                                    i6 = 1;
                                    break;
                                default:
                                    i7 = 0;
                                    i5 = 0;
                                    i6 = 0;
                                    break;
                            }
                        } else {
                            i7 = 0;
                            i6 = 0;
                        }
                        i5 = 1;
                    } else {
                        i5 = 0;
                        i6 = 0;
                        i7 = 1;
                    }
                    qt.y0(20, i7);
                    qt.y0(19, i5);
                    qt.y0(18, i6);
                    if (nt.f8637c == 21) {
                        qt.y0(87, (bArr[i81] >> 4) & 15);
                        int i83 = (bArr[i81] >> 4) & 15;
                        if (i83 == 3) {
                            i12 = 0;
                            i13 = 0;
                        } else if (i83 != 5) {
                            if (i83 != 6) {
                                switch (i83) {
                                    case 12:
                                        i12 = 0;
                                        i13 = 1;
                                        break;
                                    case 13:
                                        i14 = 0;
                                        i12 = 1;
                                        i13 = 1;
                                        break;
                                    case 14:
                                        i12 = 1;
                                        i13 = 1;
                                        break;
                                    default:
                                        i12 = 0;
                                        i13 = 0;
                                        i14 = 0;
                                        break;
                                }
                                int[] iArr29 = new int[i8];
                                iArr29[0] = i14;
                                qt.y0(24, iArr29);
                                int[] iArr30 = new int[i8];
                                iArr30[0] = i12;
                                qt.y0(23, iArr30);
                                int[] iArr31 = new int[i8];
                                iArr31[0] = i13;
                                qt.y0(22, iArr31);
                            } else {
                                i13 = 0;
                                i14 = 0;
                                i12 = 1;
                            }
                            i8 = 1;
                            int[] iArr210 = new int[i8];
                            iArr210[0] = i14;
                            qt.y0(24, iArr210);
                            int[] iArr32 = new int[i8];
                            iArr32[0] = i12;
                            qt.y0(23, iArr32);
                            int[] iArr33 = new int[i8];
                            iArr33[0] = i13;
                            qt.y0(22, iArr33);
                        } else {
                            i13 = 0;
                            i12 = 1;
                        }
                        i8 = 1;
                        i14 = 1;
                        int[] iArr211 = new int[i8];
                        iArr211[0] = i14;
                        qt.y0(24, iArr211);
                        int[] iArr34 = new int[i8];
                        iArr34[0] = i12;
                        qt.y0(23, iArr34);
                        int[] iArr35 = new int[i8];
                        iArr35[0] = i13;
                        qt.y0(22, iArr35);
                    } else {
                        i8 = 1;
                    }
                    int[] iArr36 = new int[i8];
                    iArr36[0] = bArr[i2 + 7] & DhcpPacket.DHCP_DOMAIN_NAME;
                    qt.y0(21, iArr36);
                    int i84 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 8] : bArr[i2 + 9]) & 255;
                    if (i84 == 254) {
                        qt.y0(27, -2);
                    } else if (i84 == 255) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, i84 * 5);
                    }
                    int i85 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 9] : bArr[i2 + 8]) & 255;
                    if (i85 == 254) {
                        i9 = 1;
                        qt.y0(28, -2);
                    } else {
                        i9 = 1;
                        if (i85 == 255) {
                            qt.y0(28, -3);
                        } else {
                            qt.y0(28, i85 * 5);
                        }
                    }
                    int i86 = bArr[i2 + 10] & 255;
                    if (i86 == i9) {
                        i10 = i9;
                        i11 = 0;
                    } else if (i86 != 2) {
                        i11 = i86 != 3 ? 0 : i9;
                        i10 = i11;
                    } else {
                        i11 = i9;
                        i10 = 0;
                    }
                    int[] iArr37 = new int[i9];
                    iArr37[0] = i10;
                    qt.y0(47, iArr37);
                    int[] iArr38 = new int[i9];
                    iArr38[0] = i11;
                    qt.y0(46, iArr38);
                    int[] iArr39 = new int[i9];
                    iArr39[0] = bArr[i2 + 11] & DhcpPacket.DHCP_DOMAIN_NAME;
                    qt.y0(44, iArr39);
                    int i87 = bArr[i2 + 12] & 255;
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        if (i87 == 254) {
                            qt.y0(41, -2);
                        } else if (i87 == 255) {
                            qt.y0(41, -3);
                        } else {
                            qt.y0(41, i87 * 5);
                        }
                    } else if (i87 == 254) {
                        qt.y0(40, -2);
                    } else if (i87 == 255) {
                        qt.y0(40, -3);
                    } else {
                        qt.y0(40, i87 * 5);
                    }
                    break;
                }
                break;
            case 50:
                qt.y0(199, bArr[i2 + 11] & 255);
                qt.y0(201, (bArr[i2 + 15] & 255) | ((bArr[i2 + 14] << 8) & 65280));
                break;
            case 55:
                if (nt.f8637c != 21) {
                    int i88 = i2 + 2;
                    qt.y0(87, bArr[i88] & 255);
                    int i89 = bArr[i88] & 255;
                    if (i89 != 3) {
                        if (i89 != 12) {
                            if (i89 == 5) {
                                i15 = 0;
                                i17 = 1;
                            } else if (i89 != 6) {
                                i15 = 0;
                                i17 = 0;
                                i16 = 0;
                            } else {
                                i15 = 0;
                                i17 = 0;
                            }
                            i16 = 1;
                        } else {
                            i16 = 0;
                            i15 = 1;
                        }
                        qt.y0(22, i15);
                        qt.y0(24, i17);
                        qt.y0(23, i16);
                        i18 = bArr[i2 + 3] & 255;
                        if (!SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            i19 = 1;
                            if (i18 == 254) {
                                qt.y0(40, -2);
                            } else if (i18 == 255) {
                                qt.y0(40, -3);
                            } else {
                                qt.y0(40, i18 * 5);
                            }
                        } else if (i18 == 254) {
                            i19 = 1;
                            qt.y0(41, -2);
                        } else {
                            i19 = 1;
                            if (i18 == 255) {
                                qt.y0(41, -3);
                            } else {
                                qt.y0(41, i18 * 5);
                            }
                        }
                        int[] iArr40 = new int[i19];
                        int i90 = i2 + 4;
                        iArr40[0] = (bArr[i90] >> 0) & 3;
                        qt.y0(88, iArr40);
                        int[] iArr41 = new int[i19];
                        iArr41[0] = (bArr[i90] >> 2) & 3;
                        qt.y0(89, iArr41);
                        int[] iArr42 = new int[i19];
                        iArr42[0] = (bArr[i90] >> 4) & 3;
                        qt.y0(90, iArr42);
                        int[] iArr43 = new int[i19];
                        iArr43[0] = 3 & (bArr[i90] >> 6);
                        qt.y0(91, iArr43);
                        if (nt.f8637c == 141) {
                            int[] iArr44 = new int[i19];
                            int i91 = i2 + 5;
                            iArr44[0] = (bArr[i91] >> 7) & i19;
                            qt.y0(75, iArr44);
                            int[] iArr45 = new int[i19];
                            iArr45[0] = (bArr[i91] >> 7) & i19;
                            qt.y0(80, iArr45);
                        }
                    } else {
                        i15 = 0;
                        i16 = 0;
                    }
                    i17 = 1;
                    qt.y0(22, i15);
                    qt.y0(24, i17);
                    qt.y0(23, i16);
                    i18 = bArr[i2 + 3] & 255;
                    if (!SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        i19 = 1;
                        if (i18 == 254) {
                            qt.y0(40, -2);
                        } else if (i18 == 255) {
                            qt.y0(40, -3);
                        } else {
                            qt.y0(40, i18 * 5);
                        }
                    } else if (i18 == 254) {
                        i19 = 1;
                        qt.y0(41, -2);
                    } else {
                        i19 = 1;
                        if (i18 == 255) {
                            qt.y0(41, -3);
                        } else {
                            qt.y0(41, i18 * 5);
                        }
                    }
                    int[] iArr46 = new int[i19];
                    int i92 = i2 + 4;
                    iArr46[0] = (bArr[i92] >> 0) & 3;
                    qt.y0(88, iArr46);
                    int[] iArr47 = new int[i19];
                    iArr47[0] = (bArr[i92] >> 2) & 3;
                    qt.y0(89, iArr47);
                    int[] iArr48 = new int[i19];
                    iArr48[0] = (bArr[i92] >> 4) & 3;
                    qt.y0(90, iArr48);
                    int[] iArr49 = new int[i19];
                    iArr49[0] = 3 & (bArr[i92] >> 6);
                    qt.y0(91, iArr49);
                    if (nt.f8637c == 141) {
                        int[] iArr410 = new int[i19];
                        int i93 = i2 + 5;
                        iArr410[0] = (bArr[i93] >> 7) & i19;
                        qt.y0(75, iArr410);
                        int[] iArr411 = new int[i19];
                        iArr411[0] = (bArr[i93] >> 7) & i19;
                        qt.y0(80, iArr411);
                    }
                }
                break;
            case 65:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                switch (nt.f8633a) {
                    case 2621734:
                    case 2687270:
                    case 2752806:
                    case 2818342:
                    case 3670310:
                    case 3735846:
                    case 8519974:
                    case 8782118:
                        u0.d.T2(l0.c0.V0(bArr[i2 + 4] & 255));
                        break;
                    default:
                        u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                        break;
                }
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                int i94 = i2 + 6;
                int i95 = bArr[i94] & 255;
                int i96 = i2 + 7;
                int i97 = bArr[i96] & 255;
                int i98 = i2 + 8;
                int i99 = bArr[i98] & 255;
                int i100 = i2 + 9;
                int i101 = bArr[i100] & 255;
                if (u0.b.f17347o == 0) {
                    if (l0.c0.f13013g != i95 || l0.c0.f13014h != i97 || l0.c0.f13015i != i99 || l0.c0.f13016j != i101) {
                        if (i95 != 255 || i97 != 255 || i99 != 255 || i101 != 255) {
                            u0.d.C2(1);
                        } else if (u0.b.f17350p == 1) {
                            l0.c0.f13017k = 2;
                            l0.b0.b(l0.c0.f13018l);
                        }
                    }
                    l0.c0.f13013g = i95;
                    l0.c0.f13014h = i97;
                    l0.c0.f13015i = i99;
                    l0.c0.f13016j = i101;
                }
                l0.c0.f13013g = i95;
                l0.c0.f13014h = i97;
                l0.c0.f13015i = i99;
                l0.c0.f13016j = i101;
                u0.d.D2(l0.c0.E0(bArr[i94] & 255));
                u0.d.E2(l0.c0.E0(bArr[i96] & 255));
                u0.d.F2(l0.c0.E0(bArr[i98] & 255));
                u0.d.G2(l0.c0.E0(bArr[i100] & 255));
                break;
            case 72:
                int i102 = i2 + 2;
                qt.y0(132, (bArr[i102] >> 6) & 1);
                if (((bArr[i102] >> 6) & 1) == 1) {
                    o1.x.C(nt.f8643f, 1049, new int[]{30, 1}, null, null);
                } else {
                    o1.x.C(nt.f8643f, 1049, new int[]{30, 0}, null, null);
                }
                int i103 = i2 + 4;
                int i104 = i2 + 9;
                qt.y0(133, ((bArr[i104] & 255) | ((bArr[i103] << 8) & 65280)) & 65535);
                int i105 = i2 + 5;
                int i106 = i2 + 10;
                qt.y0(134, ((bArr[i106] & 255) | ((bArr[i105] << 8) & 65280)) & 65535);
                int i107 = i2 + 6;
                int i108 = i2 + 11;
                qt.y0(135, ((bArr[i108] & 255) | ((bArr[i107] << 8) & 65280)) & 65535);
                int i109 = i2 + 7;
                int i110 = i2 + 12;
                qt.y0(136, ((bArr[i110] & 255) | ((bArr[i109] << 8) & 65280)) & 65535);
                int i111 = (bArr[i103] & 255) + (bArr[i104] & 255);
                int i112 = (bArr[i105] & 255) + (bArr[i106] & 255);
                int i113 = (bArr[i107] & 255) + (bArr[i108] & 255);
                int i114 = (bArr[i109] & 255) + (bArr[i110] & 255);
                if (i111 == 254) {
                    i111 = 255;
                }
                if (i112 == 254) {
                    i112 = 255;
                }
                if (i113 == 254) {
                    i113 = 255;
                }
                if (i114 == 254) {
                    i114 = 255;
                }
                if (i111 == 255) {
                    c2 = 1;
                    i20 = 1049;
                    r10 = 0;
                    o1.x.C(nt.f8643f, 1049, new int[]{8, 8703}, null, null);
                } else {
                    i20 = 1049;
                    c2 = 1;
                    r10 = 0;
                    o1.x.C(nt.f8643f, 1049, new int[]{8, ((i111 * 4) / 10) | GLES10.GL_MODULATE}, null, null);
                }
                if (i112 == 255) {
                    o1.x[] xVarArr = nt.f8643f;
                    int[] iArr50 = new int[2];
                    iArr50[0] = 8;
                    iArr50[c2] = 8959;
                    o1.x.C(xVarArr, i20, iArr50, r10, r10);
                } else {
                    o1.x[] xVarArr2 = nt.f8643f;
                    int[] iArr51 = new int[2];
                    iArr51[0] = 8;
                    iArr51[c2] = ((i112 * 4) / 10) | GLES10.GL_TEXTURE_ENV_MODE;
                    o1.x.C(xVarArr2, i20, iArr51, r10, r10);
                }
                if (i113 == 255) {
                    o1.x[] xVarArr3 = nt.f8643f;
                    int[] iArr52 = new int[2];
                    iArr52[0] = 8;
                    iArr52[c2] = 9215;
                    o1.x.C(xVarArr3, i20, iArr52, r10, r10);
                } else {
                    o1.x[] xVarArr4 = nt.f8643f;
                    int[] iArr53 = new int[2];
                    iArr53[0] = 8;
                    iArr53[c2] = 8960 | ((i113 * 4) / 10);
                    o1.x.C(xVarArr4, i20, iArr53, r10, r10);
                }
                if (i114 == 255) {
                    o1.x[] xVarArr5 = nt.f8643f;
                    int[] iArr54 = new int[2];
                    iArr54[0] = 8;
                    iArr54[c2] = 9471;
                    o1.x.C(xVarArr5, i20, iArr54, r10, r10);
                } else {
                    o1.x[] xVarArr6 = nt.f8643f;
                    int[] iArr55 = new int[2];
                    iArr55[0] = 8;
                    iArr55[c2] = 9216 | ((i114 * 4) / 10);
                    o1.x.C(xVarArr6, i20, iArr55, r10, r10);
                }
                break;
            case 82:
                int i115 = i2 + 2;
                qt.y0(218, (bArr[i115] >> 7) & 1);
                qt.y0(219, (bArr[i115] >> 6) & 1);
                qt.y0(220, bArr[i2 + 3] & 255);
                qt.y0(221, bArr[i2 + 4] & 255);
                qt.y0(222, bArr[i2 + 5] & 255);
                qt.y0(223, bArr[i2 + 6] & 255);
                qt.y0(224, bArr[i2 + 7] & 255);
                int i116 = i2 + 8;
                qt.y0(225, (bArr[i116] >> 4) & 15);
                qt.y0(226, (bArr[i116] >> 0) & 15);
                int i117 = i2 + 9;
                qt.y0(227, (bArr[i117] >> 4) & 15);
                qt.y0(228, (bArr[i117] >> 0) & 15);
                break;
            case 94:
                qt.y0(214, bArr[i2 + 2] & 255);
                qt.y0(215, bArr[i2 + 3] & 255);
                qt.y0(216, bArr[i2 + 4] & 255);
                qt.y0(217, bArr[i2 + 5] & 255);
                qt.y0(229, bArr[i2 + 6] & 255);
                break;
            case 97:
                int i118 = i2 + 2;
                qt.y0(202, (bArr[i118] >> 6) & 3);
                qt.y0(203, (bArr[i118] >> 4) & 3);
                qt.y0(204, (bArr[i118] >> 2) & 3);
                qt.y0(205, (bArr[i118] >> 0) & 3);
                int i119 = i2 + 3;
                qt.y0(206, (bArr[i119] >> 7) & 1);
                qt.y0(207, (bArr[i119] >> 6) & 1);
                qt.y0(208, (bArr[i119] >> 5) & 1);
                qt.y0(209, (bArr[i119] >> 4) & 1);
                qt.y0(210, (bArr[i119] >> 3) & 1);
                int i120 = i2 + 4;
                qt.y0(230, (bArr[i120] >> 6) & 3);
                qt.y0(231, (bArr[i120] >> 4) & 3);
                qt.y0(232, (bArr[i120] >> 2) & 3);
                qt.y0(233, (bArr[i120] >> 1) & 1);
                qt.y0(234, (bArr[i120] >> 0) & 1);
                int i121 = i2 + 5;
                qt.y0(212, (bArr[i121] >> 6) & 3);
                qt.y0(213, (bArr[i121] >> 4) & 3);
                qt.y0(BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA, (bArr[i121] >> 3) & 1);
                qt.y0(211, (bArr[i121] >> 0) & 1);
                break;
            case 98:
                byte b5 = bArr[i2 + 2];
                qt.y0(119, b5 & 128);
                qt.y0(120, (b5 & 112) >> 4);
                qt.y0(122, (b5 & DhcpPacket.DHCP_HOST_NAME) >> 2);
                qt.y0(123, b5 & 3);
                byte b6 = bArr[i2 + 3];
                qt.y0(103, b6 & 64);
                int[] iArr56 = new int[1];
                iArr56[0] = (b6 & 32) != 0 ? 1 : 0;
                qt.y0(113, iArr56);
                qt.y0(111, b6 & 16);
                qt.y0(105, b6 & 8);
                qt.y0(104, b6 & 4);
                qt.y0(106, b6 & 2);
                qt.y0(107, b6 & 1);
                byte b7 = bArr[i2 + 4];
                qt.y0(112, b7 & 128);
                qt.y0(108, b7 & 64);
                qt.y0(114, b7 & 32);
                qt.y0(110, b7 & 16);
                qt.y0(170, (b7 >> 1) & 7);
                qt.y0(191, (b7 >> 0) & 1);
                byte b8 = bArr[i2 + 5];
                qt.y0(109, b8 & 7);
                qt.y0(102, (b8 & 24) >> 3);
                qt.y0(131, (b8 >> 5) & 3);
                qt.y0(171, (b8 >> 7) & 1);
                byte b9 = bArr[i2 + 6];
                qt.y0(172, (b9 >> 5) & 7);
                qt.y0(173, (b9 >> 2) & 7);
                qt.y0(174, (b9 >> 0) & 3);
                qt.y0(175, 255 & bArr[i2 + 7]);
                int i122 = i2 + 8;
                qt.y0(182, (bArr[i122] >> 6) & 3);
                qt.y0(183, (bArr[i122] >> 4) & 3);
                qt.y0(184, (bArr[i122] >> 3) & 1);
                qt.y0(185, (bArr[i122] >> 2) & 1);
                qt.y0(235, (bArr[i122] >> 1) & 1);
                int i123 = i2 + 9;
                qt.y0(192, (bArr[i123] >> 4) & 15);
                qt.y0(193, (bArr[i123] >> 0) & 15);
                int i124 = i2 + 10;
                qt.y0(236, (bArr[i124] >> 6) & 3);
                qt.y0(237, (bArr[i124] >> 4) & 3);
                qt.y0(187, (bArr[i124] >> 2) & 3);
                qt.y0(188, (bArr[i124] >> 0) & 3);
                break;
            case 99:
                int i125 = i2 + 2;
                qt.y0(238, (bArr[i125] >> 7) & 1);
                qt.y0(239, (bArr[i125] >> 5) & 3);
                qt.y0(240, (bArr[i125] >> 4) & 1);
                qt.y0(i.a.Theme_actionModeShareDrawable, (bArr[i125] >> 3) & 1);
                qt.y0(i.a.Theme_actionModeFindDrawable, (bArr[i125] >> 2) & 1);
                qt.y0(i.a.Theme_actionModeWebSearchDrawable, (bArr[i125] >> 1) & 1);
                qt.y0(i.a.Theme_actionModePopupWindowStyle, (bArr[i125] >> 0) & 1);
                int i126 = i2 + 3;
                qt.y0(i.a.Theme_preferenceFragmentStyle, (bArr[i126] >> 6) & 1);
                qt.y0(i.a.Theme_preferencePanelStyle, (bArr[i126] >> 4) & 3);
                qt.y0(i.a.Theme_preferenceHeaderPanelStyle, (bArr[i126] >> 2) & 3);
                qt.y0(248, (bArr[i126] >> 0) & 3);
                int i127 = i2 + 4;
                qt.y0(249, (bArr[i127] >> 7) & 1);
                qt.y0(250, (bArr[i127] >> 6) & 1);
                qt.y0(251, (bArr[i127] >> 5) & 1);
                qt.y0(252, (bArr[i127] >> 4) & 1);
                qt.y0(i.a.Theme_dialogTitleDecorLayout, (bArr[i127] >> 3) & 1);
                qt.y0(254, (bArr[i127] >> 2) & 1);
                qt.y0(255, (bArr[i127] >> 0) & 3);
                int i128 = i2 + 5;
                qt.y0(256, (bArr[i128] >> 7) & 1);
                qt.y0(257, (bArr[i128] >> 5) & 3);
                qt.y0(258, (bArr[i128] >> 4) & 1);
                qt.y0(259, (bArr[i128] >> 3) & 1);
                qt.y0(260, (bArr[i128] >> 2) & 1);
                int i129 = i2 + 6;
                qt.y0(261, (bArr[i129] >> 7) & 1);
                qt.y0(262, (bArr[i129] >> 5) & 3);
                qt.y0(263, (bArr[i129] >> 4) & 1);
                qt.y0(264, (bArr[i129] >> 3) & 1);
                qt.y0(265, (bArr[i129] >> 1) & 3);
                qt.y0(266, (bArr[i129] >> 0) & 1);
                int i130 = i2 + 7;
                qt.y0(267, (bArr[i130] >> 6) & 3);
                qt.y0(268, (bArr[i130] >> 4) & 3);
                qt.y0(i.a.Theme_findOnPageNextDrawable, (bArr[i130] >> 2) & 3);
                qt.y0(i.a.Theme_findOnPagePreviousDrawable, (bArr[i130] >> 0) & 3);
                int i131 = i2 + 8;
                qt.y0(271, (bArr[i131] >> 7) & 1);
                qt.y0(BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA, (bArr[i131] >> 6) & 1);
                qt.y0(273, (bArr[i131] >> 5) & 1);
                qt.y0(274, (bArr[i131] >> 4) & 1);
                qt.y0(275, (bArr[i131] >> 2) & 3);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        l0.b0.o0(this.L);
        o1.y yVar = u0.c.f17386m;
        yVar.d(this.N);
        o1.y yVar2 = u0.c.f17374a;
        yVar2.d(this.N);
        w0.e.f17815a.d(this.N);
        w0.e.f17819e.d(this.N);
        yVar2.d(this.J);
        u0.c.f17388o.d(this.P);
        u0.c.f17389p.d(this.Q);
        u0.c.f17390q.d(this.R);
        y0.g.f18094d.d(this.O);
        y0.g.f18095e.d(this.O);
        h0.d.f2464c.d(this.T);
        h0.d.f2462a.d(this.T);
        yVar.d(this.H);
        l0.b0.p0(this.I);
        qt.q0(this.E);
        o1.h.f16865a.d(this.D);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 277) {
            return;
        }
        int i4 = 0;
        if (i2 == 116) {
            while (i4 < 5) {
                o1.x.v(bVar, i2, this.f14698b[i4]);
                i4++;
            }
        } else {
            if (i2 != 117) {
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                return;
            }
            while (i4 < 30) {
                o1.x.v(bVar, i2, this.f14699c[i4]);
                i4++;
            }
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003) {
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CHANGE_PANORAMA == ints[0] = " + iArr[0]);
            z.k.s(227, 3, 250, 255, 6, 1);
            a.i.a0(100L);
            z.k.s(227, 3, 250, 255, 6, 0);
        }
        if (i2 == 1005) {
            z.k.s(227, 3, 250, 255, iArr[0] + 1, iArr[1]);
            return;
        }
        if (i2 == 1029) {
            int iW = (iArr[1] * 1024) / a.f.w();
            int i3 = (iArr[2] * 1000) / a.f.i();
            a.f.p().t(LogType.CANBUS, "touch_state = " + iArr[0] + "__touch_x = " + iW + "__touch_y ==" + i3 + "__ObjApp.getHeight()" + a.f.i());
            if (nt.f8637c == 126) {
                if (T2(iArr, 2)) {
                    z.k.s(227, 6, 44, (byte) iArr[0], (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
                    return;
                }
                return;
            } else {
                if (T2(iArr, 2) && iArr[0] == 0) {
                    z.k.s(227, 6, 44, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    I3((byte) 1, (byte) 1, (byte) iArr[0]);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    I3((byte) 1, (byte) 2, (byte) iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    I3((byte) 1, (byte) 3, (byte) iArr[0]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    I3((byte) 1, (byte) 4, (byte) iArr[0]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    I3((byte) 1, (byte) 5, (byte) iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    I3((byte) 2, (byte) 1, (byte) iArr[0]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    I3((byte) 2, (byte) 2, (byte) iArr[0]);
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    I3((byte) 2, (byte) 3, (byte) iArr[0]);
                    break;
                }
                break;
            case 8:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    I3((byte) 2, (byte) 4, (byte) iArr[0]);
                    break;
                }
                break;
            case 9:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    I3((byte) 1, (byte) 6, (byte) iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    I3((byte) 1, (byte) 7, (byte) iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 4) {
                        iArr[0] = 4;
                    }
                    I3((byte) 3, (byte) 1, (byte) iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    I3((byte) 3, (byte) 2, (byte) iArr[0]);
                    break;
                }
                break;
            case 13:
                I3((byte) 3, (byte) 2, (byte) iArr[0]);
                break;
            case 14:
                I3((byte) 4, (byte) 1, (byte) 1);
                break;
            case 15:
                I3((byte) 4, (byte) 2, (byte) 2);
                break;
            case 16:
                I3((byte) 4, (byte) 2, (byte) 1);
                break;
            default:
                switch (i2) {
                    case 19:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(7, iArr[0]);
                            break;
                        }
                        break;
                    case 20:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(8, iArr[0]);
                            break;
                        }
                        break;
                    case 21:
                        I3((byte) 3, (byte) 3, (byte) iArr[0]);
                        break;
                    default:
                        switch (i2) {
                            case 24:
                                I3((byte) 1, (byte) 8, (byte) iArr[0]);
                                break;
                            case 25:
                                I3((byte) 1, (byte) 9, (byte) iArr[0]);
                                break;
                            case 26:
                                I3((byte) 1, (byte) 10, (byte) iArr[0]);
                                break;
                            case 27:
                                if (T2(iArr, 2)) {
                                    if (!SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                                        z.k.s(227, 2, 61, (byte) iArr[0], (byte) iArr[1]);
                                    } else {
                                        switch (iArr[0]) {
                                            case 13:
                                                iArr[0] = 15;
                                                break;
                                            case 14:
                                                iArr[0] = 16;
                                                break;
                                            case 15:
                                                iArr[0] = 13;
                                                break;
                                            case 16:
                                                iArr[0] = 14;
                                                break;
                                        }
                                        z.k.s(227, 2, 61, (byte) iArr[0], (byte) iArr[1]);
                                    }
                                }
                                break;
                            case 28:
                                z.k.s(227, 2, -83, (byte) iArr[0], (byte) iArr[1]);
                                int i4 = nt.f8633a;
                                if (i4 == 8323366 || i4 == 8847654) {
                                    K3(new byte[]{90, -91, 2, -83, (byte) iArr[0], (byte) iArr[1], 0});
                                }
                                break;
                            case 29:
                                z.k.s(227, 3, 106, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2]);
                                break;
                            case 30:
                                z.k.s(227, 2, -14, iArr[0], iArr[1]);
                                break;
                            case 31:
                                z.k.s(227, 2, 42, iArr[0], iArr[1]);
                                break;
                            case 32:
                                z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, iArr[0], iArr[1]);
                                break;
                            case 33:
                                int i5 = nt.f8633a;
                                if (i5 == 8323366 || i5 == 8847654) {
                                    K3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[0], (byte) iArr[1], 0});
                                } else {
                                    z.k.s(227, 2, 61, iArr[0], iArr[1]);
                                }
                                break;
                            case 34:
                                if (iArr[0] != 1) {
                                    if (iArr[0] == 0) {
                                        l0.b0.l0(62, 0);
                                        l0.b0.l0(62, 1);
                                    }
                                } else if (!qt.i0().equals("com.syu.carinfo.air.Air_Activity_WC_YL_Toyota_UI")) {
                                    F3();
                                }
                                break;
                            case 35:
                                qt.y0(200, iArr[0]);
                                break;
                            case 36:
                                z.k.s(227, 4, 95, iArr[0], iArr[1], iArr[2], iArr[3]);
                                break;
                            case 37:
                                z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            W = X[o0.a(i2, 0, 36)];
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 2, 61, i2, 1);
        a.i.a0(100L);
        z.k.s(227, 2, 61, i2, 0);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (nt.f8633a == 8454438) {
            return;
        }
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
            int i5 = nt.f8633a;
            if (i5 == 8323366 || i5 == 8847654) {
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
        if (this.f14711o + bArr.length > 1024) {
            this.f14711o = 0;
            this.f14712p = 0;
            this.f14713q = 0;
        }
        System.arraycopy(bArr, 0, this.f14710n, this.f14711o, bArr.length);
        int length2 = this.f14711o + bArr.length;
        this.f14711o = length2;
        int i7 = this.f14713q;
        if (i7 != 0) {
            if (i7 >= length2) {
                return;
            }
            byte b2 = this.f14710n[2];
            int i8 = 3;
            while (true) {
                i4 = this.f14713q;
                if (i8 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f14710n[i8]);
                i8++;
            }
            byte b3 = (byte) ((b2 - 1) & 255);
            byte[] bArr2 = this.f14710n;
            if (b3 == bArr2[i4]) {
                G3(bArr2, 2, bArr2[2]);
                this.f14712p = this.f14713q + 1;
            } else {
                this.f14712p = 2;
            }
            this.f14713q = 0;
        }
        int i9 = this.f14711o - 3;
        while (true) {
            i2 = this.f14712p;
            if (i2 >= i9) {
                break;
            }
            byte[] bArr3 = this.f14710n;
            if (bArr3[i2] == 90 && bArr3[i2 + 1] == -91) {
                if (this.f14713q > 512) {
                    this.f14713q = 0;
                } else {
                    int i10 = bArr3[i2 + 2] + i2 + 4;
                    this.f14713q = i10;
                    if (i10 >= this.f14711o) {
                        this.f14713q = i10 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 2];
                    int i11 = i2 + 3;
                    while (true) {
                        i3 = this.f14713q;
                        if (i11 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f14710n[i11]);
                        i11++;
                    }
                    byte b5 = (byte) ((b4 - 1) & 255);
                    byte[] bArr4 = this.f14710n;
                    if (b5 == bArr4[i3]) {
                        int i12 = this.f14712p;
                        G3(bArr4, i12 + 2, bArr4[i12 + 2]);
                        this.f14712p = this.f14713q;
                    } else {
                        this.f14712p++;
                    }
                    this.f14713q = 0;
                }
            }
            this.f14712p++;
        }
        if (i2 != 0) {
            int i13 = this.f14711o - i2;
            this.f14711o = i13;
            if (i13 != 0) {
                byte[] bArr5 = this.f14710n;
                System.arraycopy(bArr5, i2, bArr5, 0, i13);
            }
            this.f14712p = 0;
        }
    }

    public final void d3(int i2, int i3) {
        z.k.s(227, 2, -83, (byte) i2, (byte) i3);
    }

    public final void init() {
        Y.f(1, new n(1, 100));
    }

    public final byte z3() {
        int i2 = h0.c.E;
        if (i2 == 0) {
            return (byte) 6;
        }
        if (i2 == 3) {
            return (byte) 2;
        }
        if (i2 != 4) {
            return i2 != 5 ? (byte) 7 : (byte) 4;
        }
        return (byte) 1;
    }
}
