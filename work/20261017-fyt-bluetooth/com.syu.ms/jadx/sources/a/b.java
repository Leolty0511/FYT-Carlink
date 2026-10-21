package a;

import android.app.Application;
import app.App;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.regex.Pattern;
import o1.a0;
import o1.s;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f7a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Pattern f9b;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static int f14d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static s f15e;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static int f18f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static s f19g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o1.e<String> f11c = new o1.e<>(10240, -1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final o1.d<String, s> f13d = new o1.d<>(16);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final o1.d<String, s> f17f = new o1.d<>(16);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final o1.d<String, a0> f20h = new o1.d<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f21i = "com.syu.gallery";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static String f22j = "com.syu.media";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static String f23k = "com.syu.bt";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static String f24l = "com.syu.bt";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static String f25m = "com.syu.dvd";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f26n = "com.syu.dvd";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static String f27o = "com.syu.radio";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static String f28p = "com.syu.radio";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static String f29q = "com.syu.tv";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static String f30r = "com.syu.tv";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static String f31s = "com.syu.av";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static String f32t = "com.syu.av";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static String f33u = "com.syu.eq";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static String f34v = "com.syu.eq";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static String f35w = "com.syu.ipod";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static String f36x = "com.syu.online";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static String f37y = "com.syu.music";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static String f38z = "com.syu.music";
    public static String A = "com.syu.video";
    public static String B = "com.syu.video";
    public static String C = "com.syu.canbus";
    public static String D = "com.syu.canbus";
    public static String E = "com.syu.settings";
    public static String F = "com.syu.settings";
    public static String G = "com.syu.dvr";
    public static String H = "com.syu.dvr";
    public static String I = "com.syu.exdvr";
    public static String J = "com.syu.exdvr";
    public static String K = "com.syu.carradio";
    public static String L = "com.syu.carradio";
    public static String M = "com.syu.carbt";
    public static String N = "com.syu.carbt";
    public static String O = "com.syu.rightcamera";
    public static String P = "com.syu.rightcamera";
    public static String Q = "com.syu.carui";
    public static String R = "com.syu.carui";
    public static String S = "com.glsx.ddbox";
    public static String T = "com.android.dialer";
    public static String U = "com.syu.filemanager";
    public static String V = "com.syu.leftcamera";
    public static String W = "com.syu.leftcamera";
    public static String X = "com.syu.frontvideo";
    public static String Y = "com.syu.frontvideo";
    public static String Z = "com.syu.camera360";

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static String f8a0 = "com.syu.camera360";

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static String f10b0 = "com.syu.rearcamera";

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static String f12c0 = "com.syu.rearcamera";

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static int f16e0 = -1;

    public class a extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            b.f("property/audio_foucs_app.txt", Integer.MAX_VALUE, 0, 256);
        }
    }

    /* JADX INFO: renamed from: a.b$b, reason: collision with other inner class name */
    public class C0000b extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            b.h("audio/audio_fix.txt", Integer.MAX_VALUE, 0);
        }
    }

    public class c extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (b.f9b == null) {
                try {
                    String strC = q1.a.c(App.c().getAssets().open("app_category/protected_app.txt"));
                    if (strC == null || strC.isEmpty()) {
                        return;
                    }
                    b.f9b = Pattern.compile(strC);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public class d extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            b.f("property/navi_app.txt", Integer.MAX_VALUE, 0, 1);
        }
    }

    public class e extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            b.f("property/player_app.txt", Integer.MAX_VALUE, 0, 2);
        }
    }

    public class f extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            b.f("property/tip_sound_app.txt", Integer.MAX_VALUE, 0, 4);
        }
    }

    public class g extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            b.f("property/player_mutex_app.txt", Integer.MAX_VALUE, 0, 8);
        }
    }

    public class h extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            b.f("property/no_sound_deal_app.txt", Integer.MAX_VALUE, 0, 16);
        }
    }

    public class i extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            b.f("property/no_move_top_app.txt", Integer.MAX_VALUE, 0, 64);
        }
    }

    public class j extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            b.f("property/player_app_unmute_ic.txt", Integer.MAX_VALUE, 0, 128);
        }
    }

    public static void c(Application application) {
        a.c.a(application);
        e();
        g();
        new C0000b().start();
        new c().start();
    }

    public static boolean d(String str) {
        Pattern pattern = f9b;
        if (pattern == null) {
            return false;
        }
        return pattern.matcher(str).find();
    }

    public static void e() {
        new d().start();
        new e().start();
        new f().start();
        new g().start();
        new h().start();
        new i().start();
        new j().start();
        new a().start();
    }

    public static void f(String str, int i2, int i3, int i4) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(App.c().getAssets().open(str)));
            while (true) {
                int i5 = 0;
                do {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        return;
                    }
                    int iIndexOf = line.indexOf(35);
                    if (iIndexOf != -1) {
                        line = line.substring(0, iIndexOf);
                    }
                    String strTrim = line.trim();
                    if (!strTrim.isEmpty()) {
                        f11c.g(strTrim, i4);
                    }
                    i5++;
                } while (i5 != i2);
                Thread.sleep(i3);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void g() {
        if (f.b.f1841d.f1844c.h()) {
            f13d.h("com.tima.carnet.vt", c0.b.f402a);
        }
    }

    public static void h(String str, int i2, int i3) {
        String[] strArrSplit;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(App.c().getAssets().open(str)));
            while (true) {
                int i4 = 0;
                do {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        return;
                    }
                    int iIndexOf = line.indexOf(35);
                    if (iIndexOf != -1) {
                        line = line.substring(0, iIndexOf);
                    }
                    String strTrim = line.trim();
                    if (!strTrim.isEmpty() && (strArrSplit = strTrim.split("/")) != null && strArrSplit.length >= 3) {
                        try {
                            f20h.h(strArrSplit[0], new a0(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2])));
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    i4++;
                } while (i4 != i2);
                Thread.sleep(i3);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
