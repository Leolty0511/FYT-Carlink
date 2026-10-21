package g;

import android.net.ConnectivityManager;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.text.TextUtils;
import app.App;
import base.Configure;
import o1.j0;
import o1.s0;
import o1.u;

/* JADX INFO: loaded from: classes.dex */
public class f {
    public static void a(Runnable runnable) {
        j0.f16912g.c(runnable);
    }

    public static void b(Runnable runnable) {
        j0.f16915j.c(runnable);
    }

    public static boolean c(int i2) {
        return e.a() <= i2;
    }

    public static void d(boolean z2) {
        u0.d.m0("com.syu.fourcamera2", z2);
        u0.d.m0("com.ivicar.avm", z2);
        u0.d.m0("com.baony.avm360", z2);
    }

    public static String e() {
        String strH = Configure.Property.REAL_PLATFORM.h(ProxyProperties.LOCAL_EXCL_LIST);
        return ("829".equals(strH) || "832".equals(strH)) ? "825" : strH;
    }

    public static boolean f(int i2) {
        return e.a() >= i2;
    }

    public static int g() {
        return s0.m("persist.syu.camera360", 0);
    }

    public static boolean h() {
        return u.k0(App.c(), "com.syu.fourcamera2") || u.k0(App.c(), "com.ivicar.avm") || u.k0(App.c(), "com.baony.avm360");
    }

    public static void i() {
        e.f2254a.a();
        switch (e.a()) {
            case 3:
                e.f2254a = new a();
                break;
            case 4:
                e.f2254a = new d();
                break;
            case 5:
                e.f2254a = new n();
                break;
            case 6:
                e.f2254a = new b();
                break;
            case 7:
                e.f2254a = new o();
                break;
            case 8:
                e.f2254a = new j();
                break;
            case 9:
                e.f2254a = new k();
                break;
            case 10:
                e.f2254a = new p();
                break;
            case 11:
                e.f2254a = new m();
                break;
            case 12:
                e.f2254a = new h();
                break;
            case 13:
                e.f2254a = new l();
                break;
            case 14:
                e.f2254a = new i();
                break;
            default:
                e.f2254a = new g.a();
                break;
        }
        e.f2254a.b();
    }

    public static void j() {
        u0.b.P2 = 50;
        u0.b.R2 = 50;
        u0.b.v3 = ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT;
        if (e.e() == 38) {
            u0.b.t4[3] = 6;
            y0.d.t();
            y0.d.z();
            z.k.g("/dev/ttyS4");
            e1.b.c(4);
        }
    }

    public static void k() {
        u0.b.P2 = 50;
        u0.b.R2 = 50;
        u0.b.v3 = ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT;
        if (e.e() != 17 && e.e() != 25 && e.e() != 26 && e.e() != 27) {
            if (e.e() == 39) {
                y0.h.V(4);
                if (SystemProperties.getInt("ro.fyt.m_VideoIC", 0) == 6) {
                    e1.b.c(8);
                } else {
                    e1.b.c(6);
                }
                u0.d.i0();
                return;
            }
            return;
        }
        if (e.e() == 26 || e.e() == 27) {
            y0.b.s();
        } else {
            y0.b.t();
        }
        z.k.c();
        if (SystemProperties.getInt("ro.fyt.m_VideoIC", 0) == 6) {
            e1.b.c(8);
        } else {
            e1.b.c(5);
        }
        u0.d.i0();
        z.a.f18172w.a("/dev/sound_spectrogram");
        s0.d.k(2);
    }

    public static void l() {
        u0.b.P2 = 0;
        u0.b.R2 = 0;
        u0.b.v3 = ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT;
        if (e.e() == 9) {
            q0.c.a(1);
            y0.h.V(4);
            e1.b.c(1);
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            return;
        }
        if (e.e() != 8 && e.e() != 11 && e.e() != 16 && e.e() != 14 && e.e() != 15 && e.e() != 18 && e.e() != 19 && e.e() != 20 && e.e() != 21 && e.e() != 22 && e.e() != 23 && e.e() != 28 && e.e() != 29 && e.e() != 30 && e.e() != 31 && e.e() != 32 && e.e() != 33 && e.e() != 34 && e.e() != 35 && e.e() != 36 && e.e() != 37) {
            if (e.e() == 10) {
                y0.d.s();
                y0.d.y();
                z.k.g("/dev/ttyS1");
                e1.b.c(4);
                return;
            }
            if (e.e() == 12 || e.e() == 13) {
                y0.d.s();
                y0.d.z();
                z.k.g("/dev/ttyS1");
                e1.b.c(4);
                return;
            }
            return;
        }
        if (e.e() == 22 || e.e() == 23 || e.e() == 28 || e.e() == 29 || e.e() == 34 || e.e() == 35 || e.e() == 36 || e.e() == 37) {
            y0.b.v();
        } else {
            y0.b.u();
        }
        z.k.c();
        u();
        if (SystemProperties.getInt("ro.build.version.sdk", 0) == 23) {
            z.a.f18172w.a("/dev/sound_spectrogram");
        } else {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
        }
        if (e.e() == 11) {
            u0.b.t4[7] = 22;
        }
    }

    public static boolean m() {
        return g() == 1 || s0.l("sys.syu.camera360", false) || s();
    }

    public static boolean n(int i2) {
        return e.a() == i2;
    }

    public static boolean o() {
        return g() == 4;
    }

    public static boolean p() {
        return g() == 2;
    }

    public static boolean q() {
        return e.e() == 59;
    }

    public static boolean r() {
        int iE = e.e();
        return iE == 54 || iE == 55 || iE == 57;
    }

    public static boolean s() {
        return g() == 5;
    }

    public static boolean t() {
        int iA = e.a();
        return iA == 5 || iA == 7 || iA == 8 || iA == 9 || iA == 10 || iA == 11 || iA == 13;
    }

    public static void u() {
        switch (SystemProperties.getInt("ro.fyt.m_VideoIC", 0)) {
            case 0:
                e1.b.c(2);
                break;
            case 1:
                e1.b.c(1);
                break;
            case 2:
                e1.b.c(0);
                break;
            case 3:
                e1.b.c(3);
                break;
            case 4:
                e1.b.c(5);
                break;
            case 5:
                e1.b.c(6);
                break;
            case 6:
                e1.b.c(8);
                break;
            default:
                e1.b.c(2);
                break;
        }
    }

    public static void v(Runnable runnable) {
        j0.f16912g.d(runnable);
    }

    public static void w(Runnable runnable) {
        j0.f16915j.d(runnable);
    }

    public static void x(String str, boolean z2) {
        String str2 = SystemProperties.get("ro.fyt.platform", ProxyProperties.LOCAL_EXCL_LIST);
        if (TextUtils.isEmpty(str2)) {
            str2 = SystemProperties.get("sys.fyt.platform", str);
        }
        if (!TextUtils.isEmpty(str2) && !z2) {
            str = str2;
        }
        if ("5002".equals(str)) {
            e.n(1);
            e.o(1);
            return;
        }
        if ("5005".equals(str)) {
            e.n(1);
            e.o(3);
            return;
        }
        if ("5006".equals(str)) {
            e.n(3);
            e.o(4);
            return;
        }
        if ("5008".equals(str)) {
            e.n(3);
            e.o(6);
            return;
        }
        if ("5009".equals(str)) {
            e.n(4);
            e.o(8);
            return;
        }
        if ("6006".equals(str)) {
            e.n(3);
            e.o(7);
            return;
        }
        if ("2009".equals(str)) {
            e.n(4);
            e.o(9);
            return;
        }
        if ("5011".equals(str)) {
            e.n(4);
            e.o(10);
            return;
        }
        if ("6021".equals(str)) {
            e.n(4);
            e.o(11);
            return;
        }
        if ("6023".equals(str)) {
            e.n(4);
            e.o(12);
            return;
        }
        if ("6022".equals(str)) {
            e.n(4);
            e.o(16);
            return;
        }
        if ("6011".equals(str)) {
            e.n(4);
            e.o(14);
            return;
        }
        if ("6012".equals(str)) {
            e.n(4);
            e.o(15);
            return;
        }
        if ("6013".equals(str)) {
            e.n(4);
            e.o(13);
            return;
        }
        if ("6025".equals(str)) {
            e.n(5);
            e.o(17);
            return;
        }
        if ("6121".equals(str)) {
            e.n(4);
            e.o(18);
            return;
        }
        if ("6122".equals(str)) {
            e.n(4);
            e.o(19);
            return;
        }
        if ("6111".equals(str)) {
            e.n(4);
            e.o(20);
            return;
        }
        if ("6112".equals(str)) {
            e.n(4);
            e.o(21);
            return;
        }
        if ("800".equals(str)) {
            e.n(4);
            e.o(22);
            return;
        }
        if ("801".equals(str)) {
            e.n(4);
            e.o(23);
            return;
        }
        if ("6015".equals(str)) {
            e.n(5);
            e.o(25);
            return;
        }
        if ("802".equals(str)) {
            e.n(5);
            e.o(26);
            return;
        }
        if ("803".equals(str)) {
            e.n(5);
            e.o(27);
            return;
        }
        if ("804".equals(str)) {
            e.n(4);
            e.o(28);
            return;
        }
        if ("805".equals(str)) {
            e.n(4);
            e.o(29);
            return;
        }
        if ("6112S".equals(str)) {
            e.n(4);
            e.o(30);
            return;
        }
        if ("6121S".equals(str)) {
            e.n(4);
            e.o(31);
            return;
        }
        if ("6111S".equals(str)) {
            e.n(4);
            e.o(32);
            return;
        }
        if ("6122S".equals(str)) {
            e.n(4);
            e.o(33);
            return;
        }
        if ("800S".equals(str)) {
            e.n(4);
            e.o(34);
            return;
        }
        if ("801S".equals(str)) {
            e.n(4);
            e.o(35);
            return;
        }
        if ("804S".equals(str)) {
            e.n(4);
            e.o(36);
            return;
        }
        if ("805S".equals(str)) {
            e.n(4);
            e.o(37);
            return;
        }
        if ("6026".equals(str)) {
            e.n(6);
            e.o(38);
            return;
        }
        if ("6322".equals(str)) {
            e.n(5);
            e.o(39);
            u0.b.w4 = 1;
            u0.b.x4 = 1;
            u0.b.y4 = 1;
            y0.f.f18042d1 = 1;
            y0.f.f18036b1 = 1;
            y0.f.f18039c1 = 1;
            y0.f.Z0 = 1;
            y0.f.f18033a1 = 1;
            y0.f.f18045e1 = 1;
            y0.f.f18048f1 = 1;
            y0.f.f18051g1 = 1;
            y0.f.f18054h1 = 1;
            u0.b.v4 = 1;
            u0.b.z4 = 1;
            u0.b.A4 = 1;
            p0.b.f17028j = 1;
            return;
        }
        if ("6521".equals(str)) {
            e.n(7);
            e.o(40);
            return;
        }
        if ("6523".equals(str)) {
            e.n(8);
            e.o(41);
            return;
        }
        if ("808".equals(str)) {
            e.n(8);
            e.o(42);
            return;
        }
        if ("6522".equals(str)) {
            e.n(8);
            e.o(43);
            return;
        }
        if ("812".equals(str)) {
            e.n(8);
            e.o(44);
            return;
        }
        if ("809".equals(str)) {
            e.n(8);
            e.o(45);
            return;
        }
        if ("816".equals(str)) {
            e.n(8);
            e.o(46);
            return;
        }
        if ("815".equals(str)) {
            e.n(8);
            e.o(63);
            return;
        }
        if ("817".equals(str)) {
            e.n(8);
            e.o(47);
            return;
        }
        if ("818".equals(str)) {
            e.n(8);
            e.o(48);
            return;
        }
        if ("855".equals(str)) {
            e.n(8);
            e.o(58);
            return;
        }
        if ("hj8141".equals(str)) {
            e.n(8);
            e.o(53);
            return;
        }
        if ("6314".equals(str)) {
            e.n(7);
            e.o(49);
            return;
        }
        if ("3003".equals(str)) {
            e.n(5);
            e.o(50);
            return;
        }
        if ("6315".equals(str)) {
            e.n(9);
            e.o(51);
            return;
        }
        if ("6312".equals(str)) {
            e.n(9);
            e.o(52);
            return;
        }
        if ("6316".equals(str)) {
            e.n(10);
            e.o(53);
            return;
        }
        if ("601".equals(str)) {
            e.n(10);
            e.o(54);
            return;
        }
        if ("602".equals(str)) {
            e.n(10);
            e.o(55);
            return;
        }
        if ("CC3P".equals(str)) {
            e.n(9);
            e.o(56);
            return;
        }
        if ("603".equals(str)) {
            e.n(9);
            e.o(57);
            return;
        }
        if ("862".equals(str)) {
            e.n(10);
            e.o(59);
            return;
        }
        if ("863".equals(str)) {
            e.n(8);
            e.o(64);
            return;
        }
        if ("813".equals(str)) {
            e.n(8);
            e.o(60);
            return;
        }
        if ("YF_P9".equals(str)) {
            e.n(10);
            e.o(61);
            u0.b.g4 = 0;
            return;
        }
        if ("6318".equals(str)) {
            e.n(11);
            e.o(62);
            return;
        }
        if ("6321".equals(str)) {
            e.n(11);
            e.o(24);
            return;
        }
        if ("823".equals(str)) {
            e.n(12);
            e.o(65);
            return;
        }
        if ("825".equals(str)) {
            e.n(10);
            e.o(66);
            return;
        }
        if ("829".equals(str)) {
            e.n(10);
            e.o(71);
            return;
        }
        if ("865".equals(str)) {
            e.n(12);
            e.o(67);
            return;
        }
        if ("867".equals(str)) {
            e.n(10);
            e.o(68);
            u0.b.g4 = 0;
            return;
        }
        if ("6319".equals(str)) {
            e.n(13);
            e.o(69);
            return;
        }
        if ("869".equals(str)) {
            e.n(10);
            e.o(70);
        } else if ("890A".equals(str)) {
            e.n(14);
            e.o(73);
        } else if ("MOTOA6".equals(str)) {
            e.n(14);
            e.o(74);
        }
    }
}
