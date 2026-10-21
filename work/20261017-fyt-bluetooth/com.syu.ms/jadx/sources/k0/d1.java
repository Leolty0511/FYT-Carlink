package k0;

import android.app.ActivityManager;
import android.bluetooth.BluetoothClass;
import android.content.ComponentName;
import android.content.Intent;
import android.hardware.Camera;
import android.media.TextTrackRegion;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import android.widget.SpellChecker;
import app.App;
import java.io.UnsupportedEncodingException;
import java.util.List;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class d1 extends lt implements o1.q {
    public static int F;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4277h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4278i;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f4285p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f4271b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4272c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4273d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4274e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4275f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4276g = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4279j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f4280k = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{136, 34}, new int[]{137, 35}, new int[]{138, 63}, new int[]{139, 29}, new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 2}, new int[]{5, 38}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 22}, new int[]{9, 0}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 11}, new int[]{17, 11}, new int[]{18, 1}, new int[]{19, 56}, new int[]{20, 2}, new int[]{21, 39}, new int[]{22, 5}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 35}, new int[]{26, 34}, new int[]{27, 16}, new int[]{28, 35}, new int[]{29, 34}, new int[]{30, 32}, new int[]{31, 33}, new int[]{52, 35}, new int[]{53, 34}, new int[]{64, 53}, new int[]{65, 18}, new int[]{66, 65}, new int[]{67, 1}, new int[]{68, 53}, new int[]{80, 5}, new int[]{81, 2}, new int[]{83, 5}, new int[]{84, 2}, new int[]{85, 6}, new int[]{86, 1}, new int[]{96, -1}, new int[]{97, -1}, new int[]{98, 63}, new int[]{99, 13}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[][] f4281l = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{1, 24}, new int[]{2, 6}, new int[]{3, 4}, new int[]{4, 58}, new int[]{5, 2}, new int[]{6, 4}, new int[]{7, 21}, new int[]{8, 22}, new int[]{9, 3}, new int[]{10, 39}, new int[]{11, 29}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 11}, new int[]{17, 11}, new int[]{18, 18}, new int[]{19, 56}, new int[]{20, 2}, new int[]{21, 39}, new int[]{22, 53}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 35}, new int[]{26, 34}, new int[]{27, 16}, new int[]{28, 35}, new int[]{29, 34}, new int[]{30, 32}, new int[]{31, 33}, new int[]{52, 35}, new int[]{53, 34}, new int[]{64, 53}, new int[]{65, 18}, new int[]{66, 65}, new int[]{67, 1}, new int[]{68, 53}, new int[]{80, 38}, new int[]{81, 2}, new int[]{83, 5}, new int[]{84, 2}, new int[]{85, 6}, new int[]{86, 1}, new int[]{88, 5}, new int[]{96, -1}, new int[]{97, -1}, new int[]{98, 63}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f4282m = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{1, 41}, new int[]{2, 12}, new int[]{3, 6}, new int[]{4, 2}, new int[]{5, 24}, new int[]{6, 3}, new int[]{7, 25}, new int[]{8, 29}, new int[]{9, 1}, new int[]{10, 42}, new int[]{11, 43}, new int[]{12, 44}, new int[]{13, 45}, new int[]{14, -1}, new int[]{15, -1}, new int[]{16, 39}, new int[]{17, 11}, new int[]{18, 55}, new int[]{19, 56}, new int[]{20, 38}, new int[]{21, 40}, new int[]{22, 4}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 31}, new int[]{26, 30}, new int[]{27, 36}, new int[]{28, -1}, new int[]{29, -1}, new int[]{52, -1}, new int[]{53, -1}, new int[]{54, 22}, new int[]{64, 53}, new int[]{85, 6}, new int[]{86, 1}, new int[]{98, 63}};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[][] f4283n = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{1, 21}, new int[]{2, 6}, new int[]{3, 29}, new int[]{4, 58}, new int[]{5, 54}, new int[]{6, 4}, new int[]{7, -1}, new int[]{8, -1}, new int[]{9, 3}, new int[]{10, 62}, new int[]{11, 0}, new int[]{12, 40}, new int[]{13, 41}, new int[]{14, 42}, new int[]{15, 43}, new int[]{16, -1}, new int[]{17, 13}, new int[]{18, 18}, new int[]{19, 25}, new int[]{20, 55}, new int[]{21, -1}, new int[]{22, 53}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 31}, new int[]{26, 30}, new int[]{27, -1}, new int[]{28, 34}, new int[]{29, 35}, new int[]{30, 32}, new int[]{31, 33}, new int[]{80, 38}, new int[]{85, 5}, new int[]{86, 1}, new int[]{88, 63}, new int[]{89, 44}};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f4284o = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f4286q = new e();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f4287r = new k();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f4288s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f4289t = new l();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f4290u = new m();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f4291v = -1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f4292w = new a();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public o1.g0 f4293x = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f4294y = 1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f4295z = 0;
    public Runnable A = new b();
    public Runnable B = new c();
    public Runnable C = new d();
    public int[] D = {34, 204};
    public int E = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = nt.f8637c;
            if (i3 == 71 || i3 == 92 || i3 == 93 || i3 == 94 || i3 == 95 || i3 == 96) {
                if (d1.this.f4291v == 1 || (i2 = u0.b.D) == 13 || i2 == 0) {
                    z.k.s(227, 197, 1, 1);
                    return;
                } else {
                    z.k.s(227, 197, 1, 2);
                    return;
                }
            }
            if (i3 == 83 || i3 == 3) {
                if (u0.b.D == 6) {
                    z.k.s(227, 161, 1, 1);
                } else {
                    z.k.s(227, 161, 1, 0);
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d1 d1Var = d1.this;
            int i2 = d1Var.f4295z;
            if (i2 > 0) {
                d1Var.f4295z = i2 - 1;
            }
            if (d1Var.f4295z == 0) {
                d1Var.c3();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d1.this.e3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0);
            byte b3 = (byte) time.hour;
            byte b4 = (byte) time.minute;
            if (u0.b.f17306a0 == 1 && d1.F == 1) {
                z.k.s(227, 137, 3, b3, b4, b2 & 1);
            }
            z.k.s(227, 144, 1, 34);
            z.k.s(227, 144, 1, 35);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8637c) {
                case 3:
                case 27:
                    z.k.s(227, 226, 1, 22);
                    break;
                case 5:
                case 74:
                    z.k.s(227, 226, 1, 0);
                    break;
                case 6:
                    z.k.s(227, 226, 1, 1);
                    break;
                case 7:
                    z.k.s(227, 226, 1, 2);
                    break;
                case 8:
                    z.k.s(227, 226, 1, 3);
                    break;
                case 9:
                case 102:
                    z.k.s(227, 226, 1, 4);
                    break;
                case 10:
                case 103:
                    z.k.s(227, 226, 1, 5);
                    break;
                case 11:
                    z.k.s(227, 226, 1, 6);
                    break;
                case 12:
                    z.k.s(227, 226, 1, 7);
                    break;
                case 13:
                    z.k.s(227, 226, 1, 8);
                    break;
                case 14:
                    z.k.s(227, 226, 1, 9);
                    break;
                case 15:
                    z.k.s(227, 226, 1, 10);
                    break;
                case 16:
                    z.k.s(227, 226, 1, 11);
                    break;
                case 17:
                    z.k.s(227, 226, 1, 12);
                    break;
                case 18:
                    z.k.s(227, 226, 1, 13);
                    break;
                case 19:
                case 56:
                    z.k.s(227, 226, 1, 14);
                    break;
                case 20:
                case 101:
                    z.k.s(227, 226, 1, 15);
                    break;
                case 21:
                    z.k.s(227, 226, 1, 16);
                    break;
                case 22:
                    z.k.s(227, 226, 1, 17);
                    break;
                case 23:
                    z.k.s(227, 226, 1, 18);
                    break;
                case 24:
                    z.k.s(227, 226, 1, 19);
                    break;
                case 25:
                case 159:
                    z.k.s(227, 226, 1, 20);
                    break;
                case 26:
                case 78:
                    z.k.s(227, 226, 1, 21);
                    break;
                case 28:
                case 158:
                    z.k.s(227, 226, 1, 23);
                    break;
                case 29:
                    z.k.s(227, 226, 1, 24);
                    break;
                case 30:
                    z.k.s(227, 226, 1, 25);
                    break;
                case 31:
                    z.k.s(227, 226, 1, 64);
                    break;
                case 32:
                    z.k.s(227, 226, 1, 65);
                    break;
                case 36:
                    z.k.s(227, 226, 1, 66);
                    break;
                case 37:
                    z.k.s(227, 226, 1, 67);
                    break;
                case 39:
                    z.k.s(227, 226, 1, 4);
                    break;
                case 45:
                    z.k.s(227, 226, 1, 14);
                    break;
                case 53:
                    z.k.s(227, 226, 1, 68);
                    break;
                case 54:
                    z.k.s(227, 226, 1, 100);
                    break;
                case 62:
                    z.k.s(227, 226, 1, 101);
                    break;
                case 64:
                    z.k.s(227, 226, 1, 74);
                    break;
                case 65:
                    z.k.s(227, 226, 1, 69);
                    break;
                case 69:
                    z.k.s(227, 226, 1, 99);
                    break;
                case 77:
                    z.k.s(227, 226, 1, 75);
                    break;
                case 79:
                    z.k.s(227, 226, 1, 76);
                    break;
                case 80:
                    z.k.s(227, 226, 1, 96);
                    break;
                case 81:
                case 136:
                    z.k.s(227, 226, 1, 97);
                    break;
                case 82:
                    z.k.s(227, 226, 1, 40);
                    break;
                case 86:
                    z.k.s(227, 226, 1, 98);
                    break;
                case 88:
                    z.k.s(227, 226, 1, 45);
                    break;
                case 98:
                    z.k.s(227, 226, 1, 5);
                    break;
                case 99:
                    z.k.s(227, 226, 1, 18);
                    break;
                case 100:
                    z.k.s(227, 226, 1, 19);
                    break;
                case 104:
                case 114:
                    z.k.s(227, 226, 1, 26);
                    break;
                case 105:
                    z.k.s(227, 226, 1, 38);
                    break;
                case 106:
                    z.k.s(227, 226, 1, 28);
                    break;
                case 107:
                case 125:
                    z.k.s(227, 226, 1, 32);
                    break;
                case 109:
                    z.k.s(227, 226, 1, 34);
                    break;
                case 110:
                case 127:
                    z.k.s(227, 226, 1, 30);
                    break;
                case 113:
                case 115:
                    z.k.s(227, 226, 1, 27);
                    break;
                case 116:
                    z.k.s(227, 226, 1, 29);
                    break;
                case 117:
                case 128:
                    z.k.s(227, 226, 1, 31);
                    break;
                case 118:
                case 126:
                    z.k.s(227, 226, 1, 33);
                    break;
                case 119:
                    z.k.s(227, 226, 1, 35);
                    break;
                case 120:
                case 122:
                    z.k.s(227, 226, 1, 36);
                    break;
                case 121:
                case 123:
                    z.k.s(227, 226, 1, 37);
                    break;
                case 124:
                    z.k.s(227, 226, 1, 39);
                    break;
                case 129:
                    z.k.s(227, 226, 1, 77);
                    break;
                case 130:
                    z.k.s(227, 226, 1, 78);
                    break;
                case 131:
                case 132:
                case 133:
                case 134:
                case 135:
                    z.k.s(227, 226, 1, 79);
                    break;
                case 139:
                case 141:
                    z.k.s(227, 226, 1, 41);
                    break;
                case 140:
                case 142:
                    z.k.s(227, 226, 1, 42);
                    break;
                case 149:
                    z.k.s(227, 226, 1, 43);
                    break;
                case 150:
                    z.k.s(227, 226, 1, 44);
                    break;
                case 151:
                    z.k.s(227, 226, 1, 45);
                    break;
                case 152:
                    z.k.s(227, 226, 1, 46);
                    break;
                case 156:
                    z.k.s(227, 226, 1, 5);
                    break;
                case 157:
                    z.k.s(227, 226, 1, 15);
                    break;
                case 160:
                    z.k.s(227, 226, 1, 47);
                    break;
                case 161:
                    z.k.s(227, 226, 1, 48);
                    break;
                case 162:
                    z.k.s(227, 226, 1, 49);
                    break;
                case 163:
                    z.k.s(227, 226, 1, 50);
                    break;
                case 164:
                    z.k.s(227, 226, 1, 51);
                    break;
                case 165:
                    z.k.s(227, 226, 1, 66);
                    break;
                case 166:
                    z.k.s(227, 226, 1, 67);
                    break;
            }
        }
    }

    public class f implements o1.o {
        public f() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 == 0) {
                z.k.s(227, 162, 2, 1, 1);
            } else if (i2 == 1) {
                z.k.s(227, 162, 2, 1, 0);
            }
            return true;
        }
    }

    public class g implements o1.o {
        public g() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 == 0) {
                z.k.s(227, 162, 2, 2, 1);
            } else if (i2 == 1) {
                z.k.s(227, 162, 2, 2, 0);
            }
            return true;
        }
    }

    public class h implements o1.o {
        public h() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 == 0) {
                z.k.s(227, 162, 2, 3, 1);
            } else if (i2 == 1) {
                z.k.s(227, 162, 2, 3, 0);
            }
            return true;
        }
    }

    public class i implements o1.o {
        public i() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 == 0) {
                z.k.s(227, 162, 2, 4, 1);
            } else if (i2 == 1) {
                z.k.s(227, 162, 2, 4, 0);
            }
            return true;
        }
    }

    public class j implements o1.o {
        public j() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 == 0) {
                z.k.s(227, 162, 2, 5, 1);
            } else if (i2 == 1) {
                z.k.s(227, 162, 2, 5, 0);
            }
            return true;
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 1, 38);
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(d1.this.f4290u);
            d1.this.f4288s = 5;
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d1 d1Var = d1.this;
            int i2 = d1Var.f4288s - 1;
            d1Var.f4288s = i2;
            if (i2 <= 0) {
                l0.b0.p0(d1Var.f4290u);
                d1.this.f4288s = 6;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 1, 3);
                z.k.s(227, 144, 2, 74, 1);
            }
        }
    }

    public static void o3(byte[] bArr) {
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
        if (App.c().getResources().getConfiguration().orientation == 1) {
            switch (i2) {
                case 33:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[10] == 1) {
                            a3(1);
                        }
                    } else if (nt.f8645g[10] == 0) {
                        a3(1);
                    }
                    break;
                case 34:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[11] == 1) {
                            a3(23);
                        }
                    } else if (nt.f8645g[11] == 0) {
                        a3(23);
                    }
                    break;
                case 35:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[13] == 1) {
                            a3(21);
                        }
                    } else if (nt.f8645g[13] == 0) {
                        a3(21);
                    }
                    break;
                case 37:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[16] == 1) {
                            a3(20);
                        }
                    } else if (nt.f8645g[16] == 0) {
                        a3(20);
                    }
                    break;
                case 38:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[12] == 1) {
                            a3(35);
                        }
                    } else if (nt.f8645g[12] == 0) {
                        a3(34);
                    }
                    break;
                case 39:
                    int i3 = iArr[1];
                    if (i3 == -2) {
                        a3(9);
                        break;
                    } else if (i3 == -1) {
                        a3(10);
                        break;
                    }
                    break;
                case 41:
                    if (iArr[1] == 0) {
                        a3(2);
                    } else {
                        a3(3);
                    }
                    break;
                case 42:
                    if (iArr[1] == 0) {
                        a3(4);
                    } else {
                        a3(5);
                    }
                    break;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        b3(26);
                    }
                } else if (nt.f8645g[10] == 0) {
                    b3(26);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        b3(1);
                    }
                } else if (nt.f8645g[11] == 0) {
                    b3(1);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        b3(2);
                    }
                } else if (nt.f8645g[13] == 0) {
                    b3(2);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        b3(12);
                    }
                } else if (nt.f8645g[65] == 0) {
                    b3(12);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        b3(27);
                    }
                } else if (nt.f8645g[16] == 0) {
                    b3(27);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        b3(3);
                    }
                } else if (nt.f8645g[12] == 0) {
                    b3(3);
                }
                break;
            case 39:
                int i4 = iArr[1];
                if (i4 == -2) {
                    b3(7);
                    break;
                } else if (i4 == -1) {
                    b3(6);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    b3(5);
                } else {
                    b3(4);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    b3(21);
                } else {
                    b3(20);
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x007c A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:28:0x0098 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:31:0x00ba  */
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
            Method dump skipped, instruction units count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k0.d1.S2():void");
    }

    /* JADX WARN: Code duplicated, block: B:278:0x156f  */
    /* JADX WARN: Code duplicated, block: B:281:0x1575  */
    /* JADX WARN: Code duplicated, block: B:284:0x157f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:285:0x1581 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:286:0x1583 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:288:0x1586  */
    /* JADX WARN: Code duplicated, block: B:289:0x1589  */
    /* JADX WARN: Code duplicated, block: B:290:0x158d  */
    /* JADX WARN: Code duplicated, block: B:291:0x1590  */
    /* JADX WARN: Code duplicated, block: B:324:0x168b  */
    /* JADX WARN: Code duplicated, block: B:342:0x170f  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int[][] iArr4;
        int[][] iArr5;
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
        String str;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f4279j = (b3 | 128) & 255;
                int i17 = 0;
                while (true) {
                    iArr = this.f4280k;
                    if (i17 >= iArr.length) {
                        break;
                    }
                    int i18 = this.f4279j;
                    if (i18 == iArr[i17][0]) {
                        if (i18 == 0) {
                            break;
                        }
                        this.f4278i = i17;
                        break;
                    }
                    i17++;
                }
                switch (this.f4279j) {
                    case 134:
                        if ((b4 & 255) == 1) {
                            if (h0.c.E == 4) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            } else if (u0.i.l3().r3()) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            } else {
                                l0.b0.l0(13, 0);
                                l0.b0.l0(13, 1);
                            }
                        }
                        break;
                    case 135:
                        if ((b4 & 255) == 1) {
                            int i19 = h0.c.E;
                            if (i19 != 3) {
                                if (i19 == 4) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                } else if (i19 != 5) {
                                    if (u0.i.l3().r3()) {
                                        l0.b0.l0(26, 0);
                                        l0.b0.l0(26, 1);
                                    } else {
                                        l0.b0.l0(12, 0);
                                        l0.b0.l0(12, 1);
                                    }
                                }
                            }
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        }
                        break;
                    case 136:
                        if (h3().equals("com.syu.carinfo.rzc.andra.GmAndraCarinfoIndexAct")) {
                            qt.y0(198, b4);
                        } else if ((b4 & 255) == 1) {
                            l0.b0.l0(34, 0);
                            l0.b0.l0(34, 1);
                        }
                        break;
                    case 137:
                        if (h3().equals("com.syu.carinfo.rzc.andra.GmAndraCarinfoIndexAct")) {
                            qt.y0(199, b4);
                        } else if ((b4 & 255) == 1) {
                            l0.b0.l0(35, 0);
                            l0.b0.l0(35, 1);
                        }
                        break;
                    case 138:
                        if ((b4 & 255) == 1) {
                            i3();
                        }
                        break;
                    default:
                        if ((b4 & 255) == 0) {
                            int i20 = this.f4278i;
                            if (i20 < iArr.length && i20 != 255) {
                                l0.b0.l0(iArr[i20][1], 1);
                            }
                            this.f4278i = 255;
                        } else if (i17 < iArr.length) {
                            l0.b0.l0(iArr[i17][1], 0);
                        }
                        break;
                }
            }
            return;
        }
        if (b2 == 2) {
            if (!nt.a()) {
                int i21 = bArr[i2 + 2] & 255;
                if ((bArr[i2 + 3] & 255) == 1 && i21 == 4) {
                    o1.u.v();
                    return;
                }
                return;
            }
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f4279j = b5 & 255;
            int i22 = nt.f8637c;
            if (i22 == 1 || i22 == 2) {
                int i23 = 0;
                while (true) {
                    iArr2 = this.f4282m;
                    if (i23 >= iArr2.length) {
                        break;
                    }
                    int i24 = this.f4279j;
                    if (i24 == iArr2[i23][0]) {
                        if (i24 == 0) {
                            break;
                        }
                        this.f4278i = i23;
                        break;
                    }
                    i23++;
                }
                switch (this.f4279j) {
                    case 23:
                        for (int i25 = 0; i25 < (b6 & 255); i25++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        break;
                    case 24:
                        for (int i26 = 0; i26 < (b6 & 255); i26++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        break;
                    case 25:
                        for (int i27 = 0; i27 < (b6 & 255); i27++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                        break;
                    case 26:
                        for (int i28 = 0; i28 < (b6 & 255); i28++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                        break;
                    default:
                        int i29 = b6 & 255;
                        if (i29 == 1) {
                            if (i23 < iArr2.length) {
                                l0.b0.l0(iArr2[i23][1], 0);
                            }
                        } else if (i29 == 0) {
                            int i30 = this.f4278i;
                            if (i30 < iArr2.length && i30 != 255) {
                                l0.b0.l0(iArr2[i30][1], 1);
                            }
                            this.f4278i = 255;
                        }
                        break;
                }
            }
            try {
                if (i22 == 45 || i22 == 157) {
                    int i31 = 0;
                    while (true) {
                        iArr3 = this.f4281l;
                        if (i31 >= iArr3.length) {
                            break;
                        }
                        int i32 = this.f4279j;
                        if (i32 == iArr3[i31][0]) {
                            if (i32 == 0) {
                                break;
                            }
                            this.f4278i = i31;
                            break;
                        }
                        i31++;
                    }
                    int i33 = this.f4279j;
                    if (i33 != 96) {
                        if (i33 != 97) {
                            switch (i33) {
                                case 23:
                                    for (int i34 = 0; i34 < (b6 & 255); i34++) {
                                        l0.b0.l0(7, 0);
                                    }
                                    l0.b0.l0(7, 1);
                                    break;
                                case 24:
                                    for (int i35 = 0; i35 < (b6 & 255); i35++) {
                                        l0.b0.l0(8, 0);
                                    }
                                    l0.b0.l0(8, 1);
                                    break;
                                case 25:
                                    for (int i36 = 0; i36 < (b6 & 255); i36++) {
                                        l0.b0.l0(31, 0);
                                    }
                                    l0.b0.l0(31, 1);
                                    break;
                                case 26:
                                    for (int i37 = 0; i37 < (b6 & 255); i37++) {
                                        l0.b0.l0(30, 0);
                                    }
                                    l0.b0.l0(30, 1);
                                    break;
                                default:
                                    int i38 = b6 & 255;
                                    if (i38 == 1) {
                                        if (i31 < iArr3.length) {
                                            l0.b0.l0(iArr3[i31][1], 0);
                                        }
                                    } else if (i38 == 0) {
                                        int i39 = this.f4278i;
                                        if (i39 < iArr3.length && i39 != 255) {
                                            l0.b0.l0(iArr3[i39][1], 1);
                                        }
                                        this.f4278i = 255;
                                    }
                                    break;
                            }
                        }
                        return;
                    }
                    Intent intent = new Intent();
                    intent.setComponent(new ComponentName("com.syu.canbus", "com.syu.carinfo.rzc.klc.RzcKlcOnStarAct"));
                    intent.putExtra("onstar", Camera.Parameters.FLASH_MODE_ON);
                    intent.setFlags((intent.getFlags() & (-2097153)) | 268435456);
                    App.c().startActivity(intent);
                } else {
                    if (i22 == 39 || i22 == 156) {
                        int i40 = 0;
                        while (true) {
                            iArr4 = this.f4283n;
                            if (i40 >= iArr4.length) {
                                break;
                            }
                            int i41 = this.f4279j;
                            if (i41 == iArr4[i40][0]) {
                                if (i41 == 0) {
                                    break;
                                }
                                this.f4278i = i40;
                                break;
                            }
                            i40++;
                        }
                        int i42 = this.f4279j;
                        if (i42 == 18) {
                            if ((b6 & 255) == 1) {
                                int i43 = h0.c.E;
                                if (i43 != 3) {
                                    if (i43 == 4) {
                                        l0.b0.l0(18, 0);
                                        l0.b0.l0(18, 1);
                                        return;
                                    } else if (i43 != 5) {
                                        l0.b0.l0(12, 0);
                                        l0.b0.l0(12, 1);
                                        return;
                                    }
                                }
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                                return;
                            }
                            return;
                        }
                        switch (i42) {
                            case 23:
                                for (int i44 = 0; i44 < (b6 & 255); i44++) {
                                    l0.b0.l0(7, 0);
                                }
                                l0.b0.l0(7, 1);
                                break;
                            case 24:
                                for (int i45 = 0; i45 < (b6 & 255); i45++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                                break;
                            case 25:
                                for (int i46 = 0; i46 < (b6 & 255); i46++) {
                                    l0.b0.l0(31, 0);
                                }
                                l0.b0.l0(31, 1);
                                break;
                            case 26:
                                for (int i47 = 0; i47 < (b6 & 255); i47++) {
                                    l0.b0.l0(30, 0);
                                }
                                l0.b0.l0(30, 1);
                                break;
                            default:
                                int i48 = b6 & 255;
                                if (i48 == 1) {
                                    if (i40 < iArr4.length) {
                                        l0.b0.l0(iArr4[i40][1], 0);
                                    }
                                } else if (i48 == 0) {
                                    int i49 = this.f4278i;
                                    if (i49 < iArr4.length && i49 != 255) {
                                        l0.b0.l0(iArr4[i49][1], 1);
                                    }
                                    this.f4278i = 255;
                                }
                                break;
                        }
                    }
                    int i50 = 0;
                    while (true) {
                        iArr5 = this.f4280k;
                        if (i50 >= iArr5.length) {
                            break;
                        }
                        int i51 = this.f4279j;
                        if (i51 == iArr5[i50][0]) {
                            if (i51 == 0) {
                                break;
                            }
                            this.f4278i = i50;
                            break;
                        }
                        i50++;
                    }
                    int i52 = this.f4279j;
                    if (i52 != 96) {
                        if (i52 != 97) {
                            switch (i52) {
                                case 23:
                                    for (int i53 = 0; i53 < (b6 & 255); i53++) {
                                        l0.b0.l0(7, 0);
                                    }
                                    l0.b0.l0(7, 1);
                                    break;
                                case 24:
                                    for (int i54 = 0; i54 < (b6 & 255); i54++) {
                                        l0.b0.l0(8, 0);
                                    }
                                    l0.b0.l0(8, 1);
                                    break;
                                case 25:
                                    for (int i55 = 0; i55 < (b6 & 255); i55++) {
                                        l0.b0.l0(31, 0);
                                    }
                                    l0.b0.l0(31, 1);
                                    break;
                                case 26:
                                    for (int i56 = 0; i56 < (b6 & 255); i56++) {
                                        l0.b0.l0(30, 0);
                                    }
                                    l0.b0.l0(30, 1);
                                    break;
                                default:
                                    int i57 = b6 & 255;
                                    if (i57 == 1) {
                                        if (i50 < iArr5.length) {
                                            l0.b0.l0(iArr5[i50][1], 0);
                                        }
                                    } else if (i57 == 0) {
                                        int i58 = this.f4278i;
                                        if (i58 < iArr5.length && i58 != 255) {
                                            l0.b0.l0(iArr5[i58][1], 1);
                                        }
                                        this.f4278i = 255;
                                    }
                                    break;
                            }
                        }
                        return;
                    }
                    Intent intent2 = new Intent();
                    intent2.setComponent(new ComponentName("com.syu.canbus", "com.syu.carinfo.rzc.klc.RzcKlcOnStarAct"));
                    intent2.putExtra("onstar", Camera.Parameters.FLASH_MODE_ON);
                    intent2.setFlags((intent2.getFlags() & (-2097153)) | 268435456);
                    App.c().startActivity(intent2);
                }
            } catch (Exception unused) {
                return;
            }
        }
        if (b2 == 3) {
            if (nt.f8633a == 10027069) {
                return;
            }
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            byte b9 = bArr[i2 + 6];
            qt.y0(10, (b7 >> 7) & 1);
            qt.y0(11, (b7 >> 6) & 1);
            qt.y0(12, (b7 >> 5) & 1);
            qt.y0(16, (b7 >> 4) & 1);
            qt.y0(54, (b7 >> 3) & 1);
            int i59 = nt.f8637c;
            if (i59 != 82) {
                switch (i59) {
                    case 120:
                    case 121:
                    case 122:
                    case 123:
                        i4 = ((b8 >> 4) & 1) != 1 ? 0 : 8;
                        i5 = bArr[i2 + 9] & DhcpPacket.DHCP_DOMAIN_NAME;
                        if (i5 != 1) {
                            i4 = 9;
                        } else if (i5 != 2) {
                            i4 = 10;
                        } else if (i5 != 3) {
                            i4 = 11;
                        } else if (i5 == 4) {
                            i4 = 12;
                        }
                        qt.y0(21, b7 & (i4 + 7));
                        break;
                    default:
                        int i60 = (b8 >> 4) & 1;
                        if (i60 == 0) {
                            qt.y0(21, b7 & 7);
                        } else if (i60 == 1) {
                            qt.y0(21, (b7 & 7) + 8);
                        }
                        break;
                }
            } else {
                if (((b8 >> 4) & 1) != 1) {
                }
                i5 = bArr[i2 + 9] & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i5 != 1) {
                    i4 = 9;
                } else if (i5 != 2) {
                    i4 = 10;
                } else if (i5 != 3) {
                    i4 = 11;
                } else if (i5 == 4) {
                    i4 = 12;
                }
                qt.y0(21, b7 & (i4 + 7));
            }
            int i61 = b8 & DhcpPacket.DHCP_DOMAIN_NAME & 255;
            switch (i61) {
                case 1:
                    i6 = 0;
                    i7 = 0;
                    i8 = 0;
                    i9 = 0;
                    i10 = 1;
                    break;
                case 2:
                    i10 = 0;
                    i7 = 0;
                    i8 = 0;
                    i9 = 0;
                    i6 = 1;
                    break;
                case 3:
                    i10 = 0;
                    i6 = 0;
                    i7 = 0;
                    i8 = 0;
                    i9 = 1;
                    break;
                case 4:
                    i10 = 0;
                    i6 = 0;
                    i7 = 0;
                    i8 = 1;
                    i9 = i8;
                    break;
                case 5:
                    i10 = 0;
                    i6 = 0;
                    i7 = 0;
                    i9 = 0;
                    i8 = 1;
                    break;
                case 6:
                    i10 = 0;
                    i6 = 0;
                    i9 = 0;
                    i7 = 1;
                    i8 = 1;
                    break;
                case 7:
                    i10 = 0;
                    i6 = 0;
                    i8 = 0;
                    i9 = 0;
                    i7 = 1;
                    break;
                case 8:
                    i10 = 0;
                    i6 = 0;
                    i8 = 0;
                    i7 = 1;
                    i9 = 1;
                    break;
                case 9:
                    i10 = 0;
                    i6 = 0;
                    i7 = 1;
                    i8 = i7;
                    i9 = i8;
                    break;
                default:
                    i10 = 0;
                    i6 = 0;
                    i7 = 0;
                    i8 = i7;
                    i9 = i8;
                    break;
            }
            qt.y0(49, i10);
            qt.y0(65, i6);
            qt.y0(18, i7);
            qt.y0(19, i8);
            qt.y0(20, i9);
            qt.y0(77, i61);
            int i62 = i2 + 4;
            byte b10 = bArr[i62];
            int i63 = i2 + 5;
            byte b11 = bArr[i63];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b10 = bArr[i63];
                b11 = bArr[i62];
            }
            int i64 = b10 & 255;
            if (i64 == 0) {
                qt.y0(27, i64);
            } else if (i64 != 255) {
                switch (i64) {
                    case 29:
                        qt.y0(27, 160);
                        break;
                    case 30:
                        qt.y0(27, i64);
                        break;
                    case 31:
                        qt.y0(27, 165);
                        break;
                    case 32:
                        qt.y0(27, 150);
                        break;
                    case 33:
                        qt.y0(27, 155);
                        break;
                    case 34:
                        qt.y0(27, 310);
                        break;
                    case 35:
                        qt.y0(27, 315);
                        break;
                    case 36:
                        qt.y0(27, 320);
                        break;
                    default:
                        if (i64 >= 1 && i64 <= 28) {
                            qt.y0(27, (i64 * 5) + 165);
                        }
                        break;
                }
            } else {
                qt.y0(27, -1);
            }
            int i65 = b11 & 255;
            if (i65 == 0) {
                qt.y0(28, i65);
            } else if (i65 != 255) {
                switch (i65) {
                    case 29:
                        qt.y0(28, 160);
                        break;
                    case 30:
                        qt.y0(28, i65);
                        break;
                    case 31:
                        qt.y0(28, 165);
                        break;
                    case 32:
                        qt.y0(28, 150);
                        break;
                    case 33:
                        qt.y0(28, 155);
                        break;
                    case 34:
                        qt.y0(28, 310);
                        break;
                    case 35:
                        qt.y0(28, 315);
                        break;
                    case 36:
                        qt.y0(28, 320);
                        break;
                    default:
                        if (i65 >= 1 && i65 <= 28) {
                            qt.y0(28, (i65 * 5) + 165);
                        }
                        break;
                }
            } else {
                qt.y0(28, -1);
            }
            qt.y0(29, (b9 >> 4) & 15);
            qt.y0(30, b9 & DhcpPacket.DHCP_DOMAIN_NAME);
            if (nt.a()) {
                int i66 = bArr[i2 + 7] & 255;
                u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((((i66 & 128) != 0 ? 1320 - ((256 - i66) * 18) : (i66 * 18) + 1320) / 10) * 10) | 268435456) & (-1) : (i66 & 128) != 0 ? 1000 - ((256 - i66) * 10) : ((i66 & 255) * 10) + 1000);
            }
            qt.y0(57, (b8 >> 5) & 1);
            int i67 = i2 + 8;
            if (((bArr[i67] >> 4) & 1) == 1 || ((bArr[i67] >> 1) & 1) == 1 || ((bArr[i67] >> 0) & 1) == 1) {
                qt.y0(13, 1);
            } else {
                qt.y0(13, 0);
            }
            int i68 = i2 + 9;
            if (((bArr[i68] >> 5) & 1) == 1) {
                qt.y0(37, (bArr[i68] >> 4) & 1);
            } else {
                qt.y0(37, 0);
            }
            if (this.f4288s == 6 && ((bArr[i67] >> 7) & 1) == 1) {
                if (!qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP")) {
                    l0.b0.l0(62, 0);
                    l0.b0.l0(62, 1);
                    return;
                } else {
                    if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP")) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 12) {
            qt.y0(131, bArr[i2 + 2] & 255);
            return;
        }
        if (b2 == 13) {
            qt.y0(129, bArr[i2 + 2]);
            return;
        }
        if (b2 == 19) {
            byte b12 = bArr[i2 + 2];
            qt.y0(31, (b12 >> 4) & 3);
            qt.y0(32, (b12 >> 0) & 3);
            int i69 = i2 + 3;
            qt.y0(93, (bArr[i69] >> 4) & 3);
            qt.y0(94, (bArr[i69] >> 0) & 3);
            return;
        }
        if (b2 == 38) {
            if (this.f4284o) {
                return;
            }
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 8640);
            return;
        }
        if (b2 == 40) {
            qt.y0(314, bArr[i2 + 2] & 255);
            qt.y0(315, bArr[i2 + 3] & 255);
            qt.y0(316, bArr[i2 + 4] & 255);
            qt.y0(317, bArr[i2 + 5] & 255);
            qt.y0(318, bArr[i2 + 6] & 255);
            qt.y0(319, bArr[i2 + 7] & 255);
            qt.y0(320, bArr[i2 + 8] & DhcpPacket.DHCP_DOMAIN_NAME);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 71) {
            qt.y0(132, (bArr[i2 + 2] >> 7) & 1);
            int i70 = i2 + 3;
            qt.y0(133, (bArr[i70] >> 7) & 1);
            qt.y0(134, (bArr[i70] >> 6) & 1);
            qt.y0(135, (bArr[i70] >> 5) & 1);
            qt.y0(136, (bArr[i70] >> 4) & 1);
            qt.y0(137, (bArr[i70] >> 3) & 1);
            qt.y0(138, (bArr[i70] >> 2) & 1);
            int i71 = i2 + 4;
            qt.y0(139, (bArr[i71] >> 7) & 1);
            qt.y0(140, (bArr[i71] >> 6) & 1);
            qt.y0(141, (bArr[i71] >> 5) & 1);
            qt.y0(142, (bArr[i71] >> 4) & 1);
            qt.y0(143, bArr[i2 + 5] & 255);
            return;
        }
        if (b2 == 85) {
            if (nt.f8633a != 10027069) {
                return;
            }
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i72 = i2 + 2;
                if ((bArr[i72] & 255) < 10) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, bArr[i72] & 255);
                }
                int i73 = i2 + 3;
                if ((bArr[i73] & 255) < 10) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, bArr[i73] & 255);
                }
            } else {
                int i74 = i2 + 2;
                if ((bArr[i74] & 255) < 10) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, bArr[i74] & 255);
                }
                int i75 = i2 + 3;
                if ((bArr[i75] & 255) < 10) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, bArr[i75] & 255);
                }
            }
            int i76 = i2 + 4;
            qt.y0(21, (bArr[i76] >> 0) & 15);
            switch ((bArr[i76] >> 4) & 15) {
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
            int i77 = i2 + 6;
            qt.y0(13, (bArr[i77] >> 0) & 1);
            qt.y0(11, (bArr[i77] >> 1) & 1);
            qt.y0(14, (bArr[i77] >> 2) & 1);
            qt.y0(15, (bArr[i77] >> 5) & 1);
            qt.y0(16, (bArr[i77] >> 6) & 1);
            qt.y0(12, (bArr[i2 + 7] >> 0) & 3);
            u0.d.A3(((bArr[i2 + 9] & 255) * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            return;
        }
        if (b2 == 125) {
            int i78 = bArr[i2 + 2] & 255;
            if (i78 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i79 = i2 + 3;
                    l0.c0.b((bArr[i79] >> 3) & 1, (bArr[i79] >> 4) & 1, 0);
                } else {
                    int i80 = i2 + 3;
                    l0.c0.a((bArr[i80] >> 3) & 1, (bArr[i80] >> 4) & 1, 0);
                }
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
                return;
            }
            if (i78 == 3) {
                int i81 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i81);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i81}, null, null);
                return;
            } else if (i78 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f4284o = true;
                return;
            } else {
                if (i78 != 240) {
                    return;
                }
                qt.y0(321, bArr[i2 + 3] & 255);
                qt.y0(322, bArr[i2 + 4] & 255);
                qt.y0(323, bArr[i2 + 5] & 255);
                qt.y0(324, bArr[i2 + 6] & 255);
                qt.y0(325, bArr[i2 + 7] & 255);
                qt.y0(326, bArr[i2 + 8] & 255);
                return;
            }
        }
        if (b2 == 80) {
            byte b13 = bArr[i2 + 2];
            if (b13 != 1) {
                if (b13 != 2) {
                    return;
                }
                qt.y0(226, bArr[i2 + 3] & 255);
                qt.y0(227, bArr[i2 + 4] & 255);
                qt.y0(228, bArr[i2 + 5] & 255);
                qt.y0(229, bArr[i2 + 6] & 255);
                return;
            }
            qt.y0(217, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(218, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(219, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(220, bArr[i2 + 9] & 255);
            qt.y0(221, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(222, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(223, bArr[i2 + 14] & 255);
            qt.y0(224, ((bArr[i2 + 15] << 8) & 65280) | (bArr[i2 + 16] & 255));
            qt.y0(225, (bArr[i2 + 18] & 255) | ((bArr[i2 + 17] << 8) & 65280));
            return;
        }
        if (b2 == 81) {
            byte b14 = bArr[i2 + 2];
            if (b14 == 1) {
                int i82 = i2 + 3;
                qt.y0(230, (bArr[i82] >> 6) & 3);
                qt.y0(231, (bArr[i82] >> 0) & 15);
                int i83 = i2 + 4;
                qt.y0(232, (bArr[i83] >> 7) & 1);
                qt.y0(233, (bArr[i83] >> 6) & 1);
                qt.y0(234, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(235, bArr[i2 + 7] & 255);
                qt.y0(236, bArr[i2 + 8] & 255);
                qt.y0(237, bArr[i2 + 9] & 255);
                qt.y0(238, bArr[i2 + 10] & 255);
                return;
            }
            if (b14 == 2) {
                int i84 = i2 + 3;
                qt.y0(239, (bArr[i84] >> 7) & 1);
                qt.y0(240, (bArr[i84] >> 5) & 3);
                qt.y0(i.a.Theme_actionModeShareDrawable, (bArr[i84] >> 4) & 1);
                qt.y0(i.a.Theme_actionModeFindDrawable, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(i.a.Theme_actionModeWebSearchDrawable, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                return;
            }
            if (b14 == 3) {
                switch (bArr[i2 + 3]) {
                    case 1:
                        int i85 = i2 + 4;
                        qt.y0(i.a.Theme_actionModePopupWindowStyle, (bArr[i85] >> 7) & 1);
                        qt.y0(i.a.Theme_preferenceFragmentStyle, (bArr[i85] >> 5) & 3);
                        qt.y0(i.a.Theme_preferencePanelStyle, (bArr[i85] >> 4) & 1);
                        int i86 = i2 + 5;
                        qt.y0(i.a.Theme_preferenceHeaderPanelStyle, (bArr[i86] >> 7) & 1);
                        qt.y0(248, (bArr[i86] >> 4) & 3);
                        qt.y0(249, (bArr[i86] >> 2) & 3);
                        qt.y0(250, (bArr[i86] >> 0) & 3);
                        qt.y0(251, bArr[i2 + 6] & 255);
                        qt.y0(252, bArr[i2 + 7] & 255);
                        qt.y0(i.a.Theme_dialogTitleDecorLayout, bArr[i2 + 8] & 255);
                        qt.y0(254, bArr[i2 + 9] & 255);
                        qt.y0(255, bArr[i2 + 10] & 255);
                        qt.y0(256, bArr[i2 + 11] & 255);
                        qt.y0(257, bArr[i2 + 12] & 255);
                        qt.y0(258, bArr[i2 + 13] & 255);
                        qt.y0(259, bArr[i2 + 14] & 255);
                        qt.y0(260, bArr[i2 + 15] & 255);
                        qt.y0(261, bArr[i2 + 16] & 255);
                        break;
                    case 2:
                        qt.y0(262, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                    case 3:
                        qt.y0(263, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                    case 4:
                        qt.y0(264, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                    case 5:
                        qt.y0(265, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                    case 6:
                        qt.y0(266, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                    case 7:
                        qt.y0(267, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                    case 8:
                        qt.y0(268, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                }
            }
            if (b14 != 4) {
                if (b14 != 5) {
                    return;
                }
                switch (bArr[i2 + 3]) {
                    case 1:
                        int i87 = i2 + 4;
                        qt.y0(294, (bArr[i87] >> 6) & 3);
                        qt.y0(295, (bArr[i87] >> 4) & 1);
                        qt.y0(296, bArr[i2 + 6] & 255);
                        qt.y0(297, bArr[i2 + 7] & 255);
                        qt.y0(298, bArr[i2 + 8] & 255);
                        qt.y0(299, bArr[i2 + 9] & 255);
                        qt.y0(300, bArr[i2 + 10] & 255);
                        qt.y0(TextTrackRegion.SCROLL_VALUE_SCROLL_UP, bArr[i2 + 11] & 255);
                        qt.y0(302, bArr[i2 + 12] & 255);
                        qt.y0(303, bArr[i2 + 13] & 255);
                        qt.y0(304, bArr[i2 + 14] & 255);
                        qt.y0(305, bArr[i2 + 15] & 255);
                        qt.y0(306, bArr[i2 + 16] & 255);
                        break;
                    case 2:
                        qt.y0(307, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                    case 3:
                        qt.y0(308, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                    case 4:
                        qt.y0(309, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                    case 5:
                        qt.y0(310, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                    case 6:
                        qt.y0(311, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                    case 7:
                        qt.y0(312, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                    case 8:
                        qt.y0(313, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                }
            }
            byte b15 = bArr[i2 + 3];
            switch (b15) {
                case 1:
                    int i88 = i2 + 4;
                    qt.y0(i.a.Theme_findOnPageNextDrawable, (bArr[i88] >> 7) & 1);
                    qt.y0(i.a.Theme_findOnPagePreviousDrawable, (bArr[i88] >> 5) & 3);
                    qt.y0(271, (bArr[i88] >> 4) & 1);
                    int i89 = i2 + 5;
                    qt.y0(BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA, (bArr[i89] >> 7) & 1);
                    qt.y0(273, (bArr[i89] >> 4) & 3);
                    qt.y0(274, (bArr[i89] >> 2) & 3);
                    qt.y0(275, (bArr[i89] >> 0) & 3);
                    qt.y0(BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA, bArr[i2 + 6] & 255);
                    qt.y0(277, bArr[i2 + 7] & 255);
                    qt.y0(278, bArr[i2 + 8] & 255);
                    qt.y0(279, bArr[i2 + 9] & 255);
                    qt.y0(BluetoothClass.Device.COMPUTER_WEARABLE, bArr[i2 + 10] & 255);
                    qt.y0(281, bArr[i2 + 11] & 255);
                    qt.y0(282, bArr[i2 + 12] & 255);
                    qt.y0(283, bArr[i2 + 13] & 255);
                    qt.y0(284, bArr[i2 + 14] & 255);
                    qt.y0(285, bArr[i2 + 15] & 255);
                    qt.y0(286, bArr[i2 + 16] & 255);
                    break;
                case 2:
                    qt.y0(287, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                    break;
                case 3:
                    qt.y0(MediaProperties.HEIGHT_288, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                    break;
                case 4:
                    qt.y0(289, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                    break;
                case 5:
                    qt.y0(290, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                    break;
                case 6:
                    qt.y0(291, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                    break;
                case 7:
                    qt.y0(292, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                    break;
                case 8:
                    qt.y0(293, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                    break;
                default:
                    switch (b15) {
                        case 16:
                            qt.y0(327, bArr[i2 + 4] & 255);
                            qt.y0(328, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                            qt.y0(329, (bArr[i2 + 8] & 255) | ((bArr[i2 + 7] << 8) & 65280));
                            break;
                        case 17:
                            qt.y0(330, bArr[i2 + 4] & 255);
                            qt.y0(331, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                            qt.y0(332, (bArr[i2 + 8] & 255) | ((bArr[i2 + 7] << 8) & 65280));
                            break;
                        case 18:
                            qt.y0(333, bArr[i2 + 4] & 255);
                            qt.y0(334, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                            qt.y0(335, (bArr[i2 + 8] & 255) | ((bArr[i2 + 7] << 8) & 65280));
                            break;
                        case 19:
                            qt.y0(336, bArr[i2 + 4] & 255);
                            qt.y0(337, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                            qt.y0(338, (bArr[i2 + 8] & 255) | ((bArr[i2 + 7] << 8) & 65280));
                            break;
                        case 20:
                            qt.y0(339, bArr[i2 + 4] & 255);
                            qt.y0(340, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                            qt.y0(341, (bArr[i2 + 8] & 255) | ((bArr[i2 + 7] << 8) & 65280));
                            break;
                    }
                    break;
            }
        }
        switch (b2) {
            case 5:
                byte b16 = bArr[i2 + 2];
                byte b17 = bArr[i2 + 3];
                qt.y0(98, (b16 >> 6) & 3);
                qt.y0(99, (b16 >> 4) & 3);
                qt.y0(100, (b16 >> 2) & 3);
                qt.y0(101, (b16 >> 1) & 1);
                qt.y0(102, b16 & 1);
                qt.y0(162, (b17 >> 5) & 1);
                qt.y0(163, (b17 >> 4) & 1);
                qt.y0(103, (b17 >> 3) & 1);
                qt.y0(104, b17 & 3);
                break;
            case 6:
                byte b18 = bArr[i2 + 2];
                byte b19 = bArr[i2 + 3];
                qt.y0(105, (b18 >> 7) & 1);
                qt.y0(106, (b18 >> 5) & 3);
                qt.y0(107, (b18 >> 4) & 1);
                qt.y0(108, (b18 >> 3) & 1);
                qt.y0(109, (b18 >> 1) & 3);
                qt.y0(110, b18 & 1);
                qt.y0(111, (b19 >> 7) & 1);
                qt.y0(112, (b19 >> 5) & 3);
                qt.y0(113, (b19 >> 4) & 1);
                qt.y0(114, (b19 >> 3) & 1);
                qt.y0(115, (b19 >> 2) & 1);
                qt.y0(116, (b19 >> 1) & 1);
                qt.y0(164, (b19 >> 0) & 1);
                break;
            case 7:
                qt.y0(130, bArr[i2 + 2] & 1);
                break;
            case 8:
                l3(bArr, i2 + 2, i3 - 2);
                break;
            case 9:
                m3(bArr[i2 + 2]);
                break;
            case 10:
                byte b20 = bArr[i2 + 2];
                byte b21 = bArr[i2 + 3];
                qt.y0(120, (b20 >> 7) & 1);
                qt.y0(121, (b20 >> 6) & 1);
                qt.y0(122, (b20 >> 5) & 1);
                qt.y0(123, (b20 >> 4) & 1);
                qt.y0(125, (b20 >> 2) & 1);
                qt.y0(126, b20 & 3);
                qt.y0(127, (b21 >> 6) & 3);
                qt.y0(128, (b21 >> 5) & 1);
                qt.y0(144, (b21 >> 4) & 1);
                qt.y0(145, (b21 >> 3) & 1);
                qt.y0(146, (b21 >> 2) & 1);
                qt.y0(147, (b21 >> 0) & 3);
                int i90 = i2 + 4;
                qt.y0(148, (bArr[i90] >> 7) & 1);
                qt.y0(149, (bArr[i90] >> 6) & 1);
                qt.y0(150, (bArr[i90] >> 5) & 1);
                qt.y0(151, (bArr[i90] >> 4) & 1);
                qt.y0(152, (bArr[i90] >> 2) & 3);
                qt.y0(153, (bArr[i90] >> 1) & 1);
                qt.y0(154, (bArr[i90] >> 0) & 1);
                int i91 = i2 + 5;
                qt.y0(155, (bArr[i91] >> 7) & 1);
                qt.y0(156, (bArr[i91] >> 6) & 1);
                qt.y0(157, (bArr[i91] >> 5) & 1);
                qt.y0(158, (bArr[i91] >> 4) & 1);
                qt.y0(159, (bArr[i91] >> 3) & 1);
                qt.y0(160, (bArr[i91] >> 2) & 1);
                qt.y0(161, (bArr[i91] >> 0) & 3);
                int i92 = i2 + 6;
                qt.y0(165, (bArr[i92] >> 7) & 1);
                qt.y0(166, (bArr[i92] >> 5) & 3);
                qt.y0(167, (bArr[i92] >> 4) & 1);
                qt.y0(168, (bArr[i92] >> 3) & 1);
                qt.y0(169, (bArr[i92] >> 2) & 1);
                qt.y0(170, (bArr[i92] >> 1) & 1);
                qt.y0(171, (bArr[i92] >> 0) & 1);
                break;
            default:
                switch (b2) {
                    case 34:
                        if (nt.a()) {
                            u0.d.R2(l0.c0.L0(bArr[i2 + 2] & 255));
                            u0.d.S2(l0.c0.L0(bArr[i2 + 3] & 255));
                            u0.d.T2(l0.c0.L0(bArr[i2 + 4] & 255));
                            u0.d.U2(l0.c0.L0(bArr[i2 + 5] & 255));
                        }
                        break;
                    case 35:
                        if (nt.a()) {
                            int i93 = i2 + 2;
                            int i94 = bArr[i93] & 255;
                            int i95 = i2 + 3;
                            int i96 = bArr[i95] & 255;
                            int i97 = i2 + 4;
                            int i98 = bArr[i97] & 255;
                            int i99 = i2 + 5;
                            int i100 = bArr[i99] & 255;
                            if (i94 == 0 && i96 == 0 && i98 == 0 && i100 == 0) {
                                u0.d.C2(0);
                            } else if ((l0.c0.f13013g != i94 || l0.c0.f13014h != i96 || l0.c0.f13015i != i98 || l0.c0.f13016j != i100) && u0.b.f17347o == 0) {
                                u0.d.C2(1);
                                l0.c0.f13017k = 4;
                                l0.b0.b(l0.c0.f13018l);
                            }
                            l0.c0.f13013g = i94;
                            l0.c0.f13014h = i96;
                            l0.c0.f13015i = i98;
                            l0.c0.f13016j = i100;
                            u0.d.D2(l0.c0.L0(bArr[i93] & 255));
                            u0.d.E2(l0.c0.L0(bArr[i95] & 255));
                            u0.d.F2(l0.c0.L0(bArr[i97] & 255));
                            u0.d.G2(l0.c0.L0(bArr[i99] & 255));
                        }
                        break;
                    case 36:
                        byte b22 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(2, (b22 >> 6) & 1);
                            qt.y0(1, (b22 >> 7) & 1);
                        } else {
                            qt.y0(2, (b22 >> 7) & 1);
                            qt.y0(1, (b22 >> 6) & 1);
                        }
                        qt.y0(4, (b22 >> 5) & 1);
                        qt.y0(3, (b22 >> 4) & 1);
                        qt.y0(5, (b22 >> 3) & 1);
                        break;
                    default:
                        switch (b2) {
                            case 65:
                                o1.x.A(nt.f8643f, 207, g3(bArr, i2 + 2, i3 - 2));
                                break;
                            case 66:
                                o1.x.A(nt.f8643f, 208, g3(bArr, i2 + 2, i3 - 2));
                                break;
                            case 67:
                                qt.y0(SpellChecker.WORD_ITERATOR_INTERVAL, bArr[i2 + 7] & 255);
                                break;
                            case 68:
                                int i101 = i2 + 2;
                                qt.y0(209, (bArr[i101] >> 7) & 1);
                                qt.y0(210, (bArr[i101] >> 6) & 1);
                                qt.y0(211, (bArr[i101] >> 5) & 1);
                                qt.y0(212, (bArr[i101] >> 3) & 3);
                                qt.y0(213, (bArr[i101] >> 0) & 7);
                                int i102 = i2 + 3;
                                qt.y0(214, (bArr[i102] >> 5) & 7);
                                qt.y0(215, (bArr[i102] >> 4) & 1);
                                qt.y0(216, (bArr[i102] >> 3) & 1);
                                break;
                            case 69:
                                qt.y0(40, bArr[i2 + 2] & 255);
                                int i103 = i2 + 3;
                                qt.y0(44, (bArr[i103] >> 4) & 15);
                                int i104 = bArr[i103] & DhcpPacket.DHCP_DOMAIN_NAME;
                                if (i104 == 1) {
                                    i14 = 0;
                                    i15 = 0;
                                    i16 = 1;
                                } else if (i104 == 2) {
                                    i15 = 0;
                                    i16 = 0;
                                    i14 = 1;
                                } else if (i104 == 3) {
                                    i16 = 0;
                                    i14 = 1;
                                    i15 = 1;
                                } else if (i104 != 4) {
                                    i14 = 0;
                                    i15 = 0;
                                    i16 = 0;
                                } else {
                                    i14 = 0;
                                    i16 = 0;
                                    i15 = 1;
                                }
                                qt.y0(46, i14);
                                qt.y0(47, i15);
                                qt.y0(43, i16);
                                int i105 = i2 + 4;
                                qt.y0(67, (bArr[i105] >> 7) & 1);
                                qt.y0(39, (bArr[i105] >> 6) & 1);
                                break;
                            default:
                                switch (b2) {
                                    case 73:
                                        if (nt.f8637c == 62) {
                                            if ((bArr[i2 + 2] & 255) == 1) {
                                                qt.a(1);
                                            } else {
                                                qt.a(0);
                                            }
                                        }
                                        break;
                                    case 74:
                                        int i106 = i2 + 2;
                                        if (bArr[i106] == 1) {
                                            int i107 = i2 + 3;
                                            qt.y0(173, bArr[i107] & 255);
                                            int i108 = i2 + 4;
                                            qt.y0(174, bArr[i108] & 255);
                                            int i109 = i2 + 5;
                                            qt.y0(175, bArr[i109] & 255);
                                            int i110 = i2 + 6;
                                            qt.y0(176, bArr[i110] & 255);
                                            int i111 = i2 + 7;
                                            qt.y0(177, bArr[i111] & 255);
                                            int i112 = bArr[i107] & 255;
                                            int i113 = bArr[i108] * 4;
                                            int i114 = bArr[i109] * 4;
                                            int i115 = bArr[i110] * 4;
                                            int i116 = bArr[i111] * 4;
                                            if (i112 == 0) {
                                                o1.x[] xVarArr = nt.f8643f;
                                                o1.x.C(xVarArr, 1049, new int[]{8, ((i113 * 4) / 10) | GLES10.GL_MODULATE}, null, null);
                                                o1.x.C(xVarArr, 1049, new int[]{8, ((i114 * 4) / 10) | GLES10.GL_TEXTURE_ENV_MODE}, null, null);
                                                o1.x.C(xVarArr, 1049, new int[]{8, ((i115 * 4) / 10) | GLES10.GL_TEXTURE_ENV}, null, null);
                                                o1.x.C(xVarArr, 1049, new int[]{8, ((i116 * 4) / 10) | 9216}, null, null);
                                            } else if (i112 != 1) {
                                                o1.x[] xVarArr2 = nt.f8643f;
                                                o1.x.C(xVarArr2, 1049, new int[]{8, (i113 / 10) | 256}, null, null);
                                                o1.x.C(xVarArr2, 1049, new int[]{8, (i114 / 10) | 512}, null, null);
                                                o1.x.C(xVarArr2, 1049, new int[]{8, (i115 / 10) | 768}, null, null);
                                                o1.x.C(xVarArr2, 1049, new int[]{8, (i116 / 10) | 1024}, null, null);
                                            } else {
                                                o1.x[] xVarArr3 = nt.f8643f;
                                                o1.x.C(xVarArr3, 1049, new int[]{8, ((i113 * 1000) / 6895) | 4352}, null, null);
                                                o1.x.C(xVarArr3, 1049, new int[]{8, ((i114 * 1000) / 6895) | GLES10.GL_AMBIENT}, null, null);
                                                o1.x.C(xVarArr3, 1049, new int[]{8, ((i115 * 1000) / 6895) | 4864}, null, null);
                                                o1.x.C(xVarArr3, 1049, new int[]{8, ((i116 * 1000) / 6895) | 5120}, null, null);
                                            }
                                        } else if (bArr[i106] == 2) {
                                            qt.y0(178, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                            qt.y0(179, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                                            qt.y0(197, (bArr[i2 + 8] & 255) | ((bArr[i2 + 7] << 8) & 65280));
                                        } else if (bArr[i106] == 3) {
                                            int i117 = i2 + 3;
                                            qt.y0(180, (bArr[i117] >> 7) & 1);
                                            qt.y0(181, (bArr[i117] >> 6) & 1);
                                            qt.y0(182, (bArr[i117] >> 5) & 1);
                                            qt.y0(183, (bArr[i117] >> 4) & 1);
                                            qt.y0(184, (bArr[i117] >> 2) & 3);
                                            qt.y0(185, ((bArr[i2 + 4] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                                            qt.y0(186, bArr[i2 + 7] & 255);
                                            qt.y0(187, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                                            qt.y0(188, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                                            qt.y0(189, ((bArr[i2 + 12] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
                                            qt.y0(190, bArr[i2 + 15] & 255);
                                            qt.y0(191, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
                                            qt.y0(192, (bArr[i2 + 19] & 255) | ((bArr[i2 + 18] << 8) & 65280));
                                        } else if (bArr[i106] == 4) {
                                            qt.y0(200, bArr[i2 + 3] & 255);
                                            qt.y0(201, bArr[i2 + 4] & 255);
                                            qt.y0(202, bArr[i2 + 5] & 255);
                                            qt.y0(203, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                                            qt.y0(204, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                                            qt.y0(205, bArr[i2 + 10] & 255);
                                            qt.y0(206, bArr[i2 + 11] & 255);
                                        }
                                        break;
                                    case 75:
                                        int i118 = i2 + 2;
                                        qt.y0(193, (bArr[i118] >> 7) & 1);
                                        qt.y0(194, (bArr[i118] >> 4) & 7);
                                        qt.y0(195, (bArr[i118] >> 3) & 1);
                                        try {
                                            str = new String(bArr, i2 + 3, i3 - 3, "UTF-16LE");
                                        } catch (UnsupportedEncodingException e2) {
                                            e2.printStackTrace();
                                            str = ProxyProperties.LOCAL_EXCL_LIST;
                                        }
                                        qt.x0(196, str);
                                        break;
                                    case 76:
                                        int i119 = nt.f8637c;
                                        if (i119 == 71 || i119 == 92 || i119 == 93 || i119 == 94 || i119 == 95 || i119 == 96) {
                                            int i120 = i2 + 2;
                                            if (bArr[i120] == 2 && u0.b.D != 13) {
                                                u0.b.f17311c.c(13);
                                                break;
                                            } else if (bArr[i120] == 1 && u0.b.D == 13) {
                                                u0.b.f17311c.c(0);
                                                break;
                                            }
                                        }
                                        break;
                                    case 77:
                                        int i121 = bArr[i2 + 2] & 255;
                                        if (i121 == 16) {
                                            qt.y0(342, (bArr[i2 + 3] >> 7) & 1);
                                            qt.y0(343, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                                            break;
                                        } else if (i121 == 32) {
                                            qt.x0(344, new String(bArr, i2 + 3, i3 - 3));
                                            break;
                                        } else if (i121 == 48) {
                                            qt.x0(345, new String(bArr, i2 + 3, i3 - 3));
                                            break;
                                        } else if (i121 == 64) {
                                            qt.x0(346, new String(bArr, i2 + 3, i3 - 3));
                                            break;
                                        } else if (i121 == 80) {
                                            qt.x0(347, new String(bArr, i2 + 3, i3 - 3));
                                            break;
                                        } else if (i121 == 128) {
                                            o1.x.z(nt.f8643f, 348, bArr[i2 + 3] & 255, new String(bArr, i2 + 4, i3 - 4));
                                            break;
                                        } else if (i121 == 144) {
                                            o1.x.z(nt.f8643f, 349, bArr[i2 + 3] & 255, new String(bArr, i2 + 4, i3 - 4));
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
        this.f4293x.j();
        qt.q0(this.f4286q);
        qt.q0(this.C);
        qt.q0(this.A);
        y0.g.f18094d.d(this.B);
        y0.g.f18095e.d(this.B);
        qt.q0(this.f4292w);
        u0.c.f17386m.d(this.f4289t);
        l0.b0.p0(this.f4290u);
        qt.o0(this.f4287r);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 351) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1) {
            int i3 = nt.f8637c;
            if (i3 != 71 && i3 != 72) {
                switch (i3) {
                    case 59:
                    case 60:
                    case 61:
                        break;
                    default:
                        switch (i3) {
                            case 87:
                            case 88:
                            case 89:
                            case 90:
                            case 91:
                            case 92:
                            case 93:
                            case 94:
                            case 95:
                            case 96:
                                break;
                            default:
                                switch (i3) {
                                    case 160:
                                    case 161:
                                    case 162:
                                        break;
                                    default:
                                        if (T2(iArr, 2)) {
                                            z.k.s(227, 130, 2, iArr[0], iArr[1]);
                                        }
                                        break;
                                }
                        }
                        break;
                }
            }
            z.k.s(227, 198, 1, iArr[0]);
        }
        if (i2 == 49) {
            if (T2(iArr, 2)) {
                z.k.s(227, 239, 8, 125, 240, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                return;
            }
            return;
        }
        if (i2 == 1003) {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 153, 6, 0, 0, 0, 0, 0, 0);
                return;
            } else {
                z.k.s(227, 153, 6, 1, 0, 0, 0, 0, 0);
                return;
            }
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int iW = (iArr[1] * 1024) / a.f.w();
                int i4 = (iArr[2] * 1000) / a.f.i();
                if (iArr[0] == 0) {
                    z.k.s(227, 152, 6, 1, iW >> 8, iW & 255, i4 >> 8, i4 & 255, 0);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, 152, 6, 0, iW >> 8, iW & 255, i4 >> 8, i4 & 255, 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 3:
                if (T2(iArr, 2)) {
                    z.k.s(227, 131, 2, iArr[0], iArr[1]);
                }
                break;
            case 4:
                if (T2(iArr, 1)) {
                    z.k.s(227, 132, 1, iArr[0]);
                }
                break;
            case 5:
                if (T2(iArr, 1)) {
                    z.k.s(227, 133, 1, iArr[0]);
                }
                break;
            case 6:
                n3(134, (byte) 10, iArr);
                break;
            case 7:
                if (T2(iArr, 1)) {
                    z.k.s(227, 136, 1, iArr[0]);
                }
                break;
            case 8:
                if (T2(iArr, 1)) {
                    z.k.s(227, 144, 1, iArr[0]);
                }
                break;
            case 9:
                z.k.s(227, 239, 11, 125, i.a.Theme_actionModeFindDrawable, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], 0, 0, 0, 0);
                break;
            case 10:
                if (T2(iArr, 1)) {
                    if (iArr[0] != 2) {
                        z.k.s(227, 224, 2, iArr[0], iArr[1]);
                        break;
                    } else if (nt.f8645g[27] != 0) {
                        z.k.s(227, 224, 2, iArr[0], iArr[1]);
                        break;
                    }
                }
                break;
            case 11:
                if (T2(iArr, 2)) {
                    z.k.s(227, 144, 2, iArr[0], iArr[1]);
                }
                break;
            case 12:
                if (T2(iArr, 4)) {
                    z.k.s(227, 138, 4, iArr[0], iArr[1], iArr[2], iArr[3]);
                }
                break;
            case 13:
                if (T2(iArr, 2)) {
                    z.k.s(227, 139, 2, iArr[0], iArr[1]);
                }
                break;
            case 14:
                if (T2(iArr, 2)) {
                    z.k.s(227, 141, 2, iArr[0], iArr[1]);
                }
                break;
            case 15:
                if (T2(iArr, 2)) {
                    z.k.s(227, 142, 2, iArr[0], iArr[1]);
                }
                break;
            case 16:
                if (T2(iArr, 5)) {
                    z.k.s(227, 152, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], 0);
                }
                break;
            default:
                switch (i2) {
                    case 96:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, 135, 1, iArr[0]);
                            break;
                        }
                        break;
                    case 97:
                        if (iArr != null && iArr.length > 0) {
                            k3(iArr[0]);
                            break;
                        }
                        break;
                    case 98:
                        if (iArr != null && iArr.length > 0) {
                            this.f4291v = iArr[0];
                            break;
                        }
                        break;
                    case 99:
                        if (iArr != null && iArr.length > 0) {
                            j3(iArr[0]);
                            break;
                        }
                        break;
                }
                break;
        }
    }

    public final void a3(int i2) {
        z.k.s(227, -32, 2, i2, 1);
        a.i.a0(50L);
        z.k.s(227, -32, 2, i2, 0);
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
        if (this.f4272c + bArr.length > 1024) {
            this.f4272c = 0;
            this.f4273d = 0;
            this.f4274e = 0;
        }
        System.arraycopy(bArr, 0, this.f4271b, this.f4272c, bArr.length);
        int length = this.f4272c + bArr.length;
        this.f4272c = length;
        int i5 = this.f4274e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f4271b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f4274e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f4271b[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f4271b;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f4273d = this.f4274e + 1;
            } else {
                this.f4273d = 1;
            }
            this.f4274e = 0;
        }
        int i7 = this.f4272c - 2;
        while (true) {
            i2 = this.f4273d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f4271b;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f4274e = i8;
                int i9 = i8 + i2 + 3;
                this.f4274e = i9;
                if (i9 >= this.f4272c) {
                    this.f4274e = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f4274e;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f4271b[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f4271b;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f4273d;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f4273d = this.f4274e;
                } else {
                    this.f4273d++;
                }
                this.f4274e = 0;
            }
            this.f4273d++;
        }
        if (i2 != 0) {
            int i12 = this.f4272c - i2;
            this.f4272c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f4271b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f4273d = 0;
        }
    }

    public final void b3(int i2) {
        z.k.s(227, -126, 2, 7, i2);
        a.i.a0(50L);
        z.k.s(227, -126, 2, 7, 0);
    }

    public void c3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 192;
        iArr[1] = 13;
        iArr[2] = d3();
        switch (u0.b.D) {
            case 0:
                iArr[4] = 87;
                iArr[5] = 69;
                iArr[6] = 76;
                iArr[7] = 67;
                iArr[8] = 79;
                iArr[9] = 77;
                iArr[10] = 69;
                break;
            case 1:
                int i4 = w0.d.f17796h;
                if (i4 < 65536 || i4 > 65538) {
                    int i5 = w0.d.f17797i;
                    iArr[6] = i5 / 10000 == 0 ? (i5 / 10000) + 32 : (i5 / 10000) + 48;
                    iArr[7] = (i5 % 10000) / 1000 == 0 ? ((i5 % 10000) / 1000) + 32 : ((i5 % 10000) / 1000) + 48;
                    iArr[8] = ((i5 % 1000) / 100) + 48;
                    iArr[9] = ((i5 % 100) / 10) + 48;
                    iArr[10] = (i5 % 10) + 48;
                    iArr[11] = 75;
                    iArr[12] = 72;
                    iArr[13] = 122;
                } else {
                    int i6 = w0.d.f17797i;
                    iArr[6] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                    iArr[7] = ((i6 % 10000) / 1000) + 48;
                    iArr[8] = ((i6 % 1000) / 100) + 48;
                    iArr[9] = 46;
                    iArr[10] = ((i6 % 100) / 10) + 48;
                    iArr[11] = (i6 % 10) + 48;
                    iArr[12] = 77;
                    iArr[13] = 72;
                    iArr[14] = 122;
                }
                break;
            case 2:
            case 3:
                iArr[5] = 80;
                iArr[6] = 72;
                iArr[7] = 79;
                iArr[8] = 78;
                iArr[9] = 69;
                break;
            case 4:
                if (o0.e.C != 0) {
                    if (o0.e.H == 1) {
                        iArr[3] = 68;
                        iArr[4] = 86;
                        iArr[5] = 68;
                    }
                    int i7 = o0.e.B % 1000;
                    int i8 = (i7 % 100) / 10;
                    int i9 = i7 % 1000;
                    if (i8 != 0) {
                        i9 /= 10;
                    }
                    iArr[6] = i9 + 48;
                    iArr[7] = i8 + 48;
                    iArr[8] = (i7 % 10) + 48;
                    int i10 = o0.e.f16794r;
                    int i11 = (i10 / 60) % 60;
                    iArr[9] = 32;
                    iArr[10] = (i11 / 10) + 48;
                    iArr[11] = (i11 % 10) + 48;
                    iArr[12] = 32;
                    int i12 = i10 % 60;
                    iArr[13] = (i12 / 10) + 48;
                    iArr[14] = (i12 % 10) + 48;
                }
                break;
            case 5:
                iArr[6] = 65;
                iArr[7] = 85;
                iArr[8] = 88;
                break;
            case 6:
                iArr[3] = 84;
                iArr[4] = 86;
                iArr[5] = 32;
                if (d1.d.f1570c == 1) {
                    int i13 = d1.d.f1572e;
                    if (i13 / 10 > 0) {
                        iArr[6] = (i13 / 10) + 48;
                    }
                    iArr[7] = (i13 % 10) + 48;
                    iArr[8] = 45;
                    int i14 = d1.d.f1571d / 100;
                    int i15 = i14 / 10000;
                    if (i15 > 0) {
                        iArr[9] = i15 + 48;
                    }
                    iArr[10] = ((i14 % 10000) / 1000) + 48;
                    iArr[11] = ((i14 % 1000) / 100) + 48;
                    iArr[12] = 46;
                    iArr[13] = ((i14 % 100) / 10) + 48;
                    iArr[14] = ((i14 % 10) / 1) + 48;
                }
                break;
            case 7:
            default:
                iArr[4] = 87;
                iArr[5] = 69;
                iArr[6] = 76;
                iArr[7] = 67;
                iArr[8] = 79;
                iArr[9] = 77;
                iArr[10] = 69;
                break;
            case 8:
            case 9:
                if (u0.b.s3 != 0) {
                    iArr[3] = 77;
                    iArr[4] = 80;
                    iArr[5] = 51;
                    int i16 = u0.b.r3 % 1000;
                    int i17 = (i16 % 100) / 10;
                    int i18 = i16 % 1000;
                    if (i17 != 0) {
                        i18 /= 10;
                    }
                    iArr[6] = i18 + 48;
                    iArr[7] = i17 + 48;
                    iArr[8] = (i16 % 10) + 48;
                    int i19 = u0.b.t3;
                    int i20 = (i19 / 60) % 60;
                    iArr[9] = 32;
                    iArr[10] = (i20 / 10) + 48;
                    iArr[11] = (i20 % 10) + 48;
                    iArr[12] = 32;
                    int i21 = i19 % 60;
                    iArr[13] = (i21 / 10) + 48;
                    iArr[14] = (i21 % 10) + 48;
                }
                break;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i22 = i2 + 1;
            iArr2[i22] = (byte) iArr[i2];
            i2 = i22;
        }
        z.k.s(iArr2);
    }

    public int d3() {
        int i2 = u0.b.D;
        if (i2 == 1) {
            int i3 = w0.d.f17796h;
            if (i3 == 65536 || i3 == 65537 || i3 == 65538) {
                return 1;
            }
            if (i3 == 0 || i3 == 1) {
                return 2;
            }
        } else {
            if (i2 == 2 || i2 == 3) {
                return 5;
            }
            if (i2 == 4) {
                int i4 = o0.e.H;
                if (i4 == 1 || i4 == 2) {
                    return 6;
                }
                if (i4 == 3) {
                    return 4;
                }
            } else {
                if (i2 == 5) {
                    return 7;
                }
                if (i2 == 8 || i2 == 10) {
                    return 3;
                }
                if (i2 == 13) {
                    return 0;
                }
            }
        }
        return 8;
    }

    public void e3() {
        int i2;
        int[] iArr = new int[15];
        int i3 = 0;
        for (int i4 = 0; i4 < 13; i4++) {
            iArr[i4] = 32;
        }
        iArr[0] = 192;
        iArr[1] = 13;
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
        this.f4295z = 3;
        z.k.s(iArr2);
    }

    public final String g3(byte[] bArr, int i2, int i3) {
        int i4 = 0;
        while (i4 < i3 && bArr[i4 + i2] != 0) {
            i4++;
        }
        return new String(bArr, i2, i4);
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
        if (h3().equals("com.syu.carinfo.rzc.andra.GmAndraCarinfoIndexAct")) {
            l0.b0.l0(6, 0);
            l0.b0.l0(6, 1);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.andra.GmAndraCarinfoIndexAct");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void j3(int i2) {
        byte b2 = (byte) i2;
        o3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, b2, (byte) this.D[this.E % 2], 37, 0, -86, 0});
        o3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, b2, (byte) this.D[this.E % 2], 37, 0, -86, 0});
        o3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, b2, (byte) this.D[this.E % 2], 37, 0, -86, 0});
        int i3 = this.E + 1;
        this.E = i3;
        this.E = i3 % 2;
    }

    public final void k3(int i2) {
        F = i2;
        qt.y0(172, i2);
        int iB = this.f4293x.b(1, 0);
        int i3 = F;
        if (iB != i3) {
            this.f4293x.g(1, i3);
        }
    }

    public final void l3(byte[] bArr, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            int i6 = ((bArr[i5] & 240) >> 4) & 255;
            if (i6 == 15) {
                break;
            }
            if (i6 > -1 && i6 < 10) {
                stringBuffer.append((char) (i6 + 48));
            } else if (i6 == 10) {
                stringBuffer.append('*');
            } else if (i6 == 11) {
                stringBuffer.append('#');
            }
            int i7 = bArr[i5] & DhcpPacket.DHCP_DOMAIN_NAME & 255;
            if (i7 == 15) {
                break;
            }
            if (i7 > -1 && i7 < 10) {
                stringBuffer.append((char) (i7 + 48));
            } else if (i7 == 10) {
                stringBuffer.append('*');
            } else if (i7 == 11) {
                stringBuffer.append('#');
            }
        }
        String string = stringBuffer.toString();
        if (qt.B0(118, stringBuffer.toString(), this.f4285p)) {
            this.f4285p = string;
        }
    }

    public final void m3(int i2) {
        qt.y0(119, i2);
        if (i2 == 0) {
            if (this.f4276g == 1 && o1.u.S("com.syu.carinfo.rzc.klc.RzcKlcOnStarAct")) {
                l0.b0.l0(6, 0);
                l0.b0.l0(6, 1);
            }
            this.f4276g = 0;
            this.f4275f = 0;
            return;
        }
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            int i3 = h0.c.G;
            if (i3 != 0 || this.f4276g != 0) {
                if (i3 == 0 || this.f4276g != 0) {
                    return;
                }
                z.k.s(227, 186, 2, 3, 0);
                return;
            }
            this.f4276g = 1;
            this.f4277h = u0.b.D;
            if (u0.b.f17332j != 0) {
                u0.d.M(0);
            }
            if (u0.b.D == 12 && this.f4276g != 0 && y0.f.f18055i != 0) {
                y0.h.u0(-4);
            }
            if (u0.b.D != 12) {
                u0.b.f17311c.c(12);
            }
            if (o1.u.S(u0.b.J1)) {
                App.c().sendOrderedBroadcast(new Intent("com.syu.onstar.rzc.showpip"), "com.syu.canbus");
                return;
            }
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.syu.canbus", "com.syu.carinfo.rzc.klc.RzcKlcOnStarAct"));
            intent.putExtra("onstar", Camera.Parameters.FLASH_MODE_ON);
            intent.setFlags((intent.getFlags() & (-2097153)) | 268435456);
            try {
                App.c().startActivity(intent);
            } catch (Exception unused) {
            }
        }
    }

    public final void n3(int i2, byte b2, int... iArr) {
        int[] iArr2 = new int[13];
        iArr2[0] = -29;
        iArr2[1] = -122;
        iArr2[2] = 10;
        int length = iArr.length;
        int i3 = length <= 10 ? length : 10;
        for (int i4 = 0; i4 < i3; i4++) {
            iArr2[3 + i4] = (byte) (iArr[i4] & 255);
        }
        for (int i5 = 3 + i3; i5 < 13; i5++) {
            iArr2[i5] = 0;
        }
        z.k.s(iArr2);
    }
}
