package h0;

import a.i;
import android.net.ProxyProperties;
import android.os.FileUtils;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import app.App;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.regex.Pattern;
import k0.qt;
import module.bt.CmdBtSG9832;
import module.bt.CmdBtSofia;
import n0.k4;
import o1.j;
import o1.j0;
import o1.l;
import o1.o0;
import o1.p0;
import o1.s;
import o1.s0;
import o1.u;
import org.json.JSONArray;
import org.json.JSONObject;
import plugins.ZLink;
import y0.h;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Pattern f2476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Runnable f2477b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Runnable f2478c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Runnable f2479d = new c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final s f2480e = new d();

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            e.J(8, false);
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int iUptimeMillis = (int) (SystemClock.uptimeMillis() - h0.c.f2436g0);
            h0.c.P = iUptimeMillis;
            e.W(12, iUptimeMillis);
            h0.d.f2465d.c();
            l.a().postDelayed(this, 100L);
        }
    }

    public class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.A;
            if (i2 <= 0) {
                if (i2 == 0) {
                    h0.c.f2425b.n();
                }
            } else {
                int iUptimeMillis = (i2 * 1000) - ((int) (SystemClock.uptimeMillis() - h0.c.f2434f0));
                e.W(21, iUptimeMillis);
                if (iUptimeMillis > 0) {
                    l.a().postDelayed(this, 100L);
                } else {
                    h0.c.f2425b.n();
                }
            }
        }
    }

    public class d implements s {
        @Override // o1.s
        public void R(boolean z2) {
            if (z2 || h0.c.G == 0 || u0.b.f17347o != 0 || !h0.c.f2444k0 || h0.c.f2446l0 || ZLink.Y().d0() || h1.a.d().f()) {
                return;
            }
            u.f("com.syu.bt");
        }
    }

    public static void A(int i2) {
        if (i2 == 0) {
            z(0);
            return;
        }
        if (i2 == 1) {
            z(1);
        } else {
            if (i2 != 2) {
                return;
            }
            if (h0.c.M == 0) {
                A(1);
            } else {
                A(0);
            }
        }
    }

    public static void B(int i2) {
        if (h0.c.f2461z != i2) {
            h0.c.f2461z = i2;
            W(18, i2);
        }
    }

    public static final boolean C() {
        return (h0.c.Z & 65535) != 0;
    }

    public static void D() {
        File file = new File(a.f.B() + "/oem/ble_steers.config");
        if (!file.exists() || !file.isFile()) {
            file = new File(a.f.B() + "/app/ble_steers.config");
            if (!file.exists() || !file.isFile()) {
                return;
            }
        }
        try {
            String textFile = FileUtils.readTextFile(file, 0, null);
            Log.e("BT", "load Str: " + textFile);
            if (textFile != null && !textFile.isEmpty()) {
                HashMap<String, Integer> map = new HashMap<>();
                JSONObject jSONObject = new JSONObject(textFile);
                if (jSONObject.has("bleStreer")) {
                    JSONArray jSONArray = jSONObject.getJSONArray("bleStreer");
                    int length = jSONArray == null ? 0 : jSONArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        if (jSONObject2.has("keyCode") && jSONObject2.has("func")) {
                            map.put(jSONObject2.getString("keyCode"), Integer.valueOf(jSONObject2.getInt("func")));
                        }
                    }
                }
                Log.e("BT", "load funcMap size : " + map.size());
                if (map.size() > 0) {
                    h0.c.f2429d = map;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void E(String str) {
        if (p0.g(h0.c.f2453r, str)) {
            return;
        }
        h0.c.f2453r = str;
        Y(14, str);
        if (g.e.a() == 3 || g.e.a() == 1) {
            try {
                StringBuilder sb = new StringBuilder();
                char[] charArray = str.toCharArray();
                for (int i2 = 0; i2 < charArray.length; i2++) {
                    sb.append((i2 % 2 == 0 || i2 == charArray.length - 1) ? Character.valueOf(charArray[i2]) : charArray[i2] + ":");
                }
                SystemProperties.set("sys.bt.address", sb.toString());
            } catch (Exception unused) {
            }
        }
    }

    public static void F(String str) {
        if (p0.g(h0.c.f2456u, str)) {
            return;
        }
        h0.c.f2456u = str;
        Y(15, str);
    }

    public static void G(int i2) {
        if (h0.c.S != i2) {
            h0.c.S = i2;
            W(32, i2);
            m1.c.e(382, i2);
        }
    }

    public static synchronized void H(int i2) {
        if (h0.c.f2423a == i2) {
            return;
        }
        h0.c.f2423a = i2;
        h0.c.f2425b.b();
        if (i2 == 1) {
            h0.c.f2425b = new h0.b();
        } else if (i2 == 3) {
            h0.c.f2425b = new CmdBtSofia();
        } else if (i2 == 4) {
            h0.c.f2425b = new CmdBtSG9832();
        } else if (i2 != 5) {
            h0.c.f2425b = new f.a();
        } else {
            h0.c.f2425b = new h0.a();
        }
        try {
            String strC = q1.a.c(App.c().getAssets().open("property/calling_show_btapp.txt"));
            String str = SystemProperties.get("com.lsec.calling_showapp", ProxyProperties.LOCAL_EXCL_LIST);
            if (!str.isEmpty()) {
                strC = strC + "|" + str;
            }
            if (strC != null && !strC.isEmpty()) {
                f2476a = Pattern.compile(strC);
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        h0.c.f2425b.a();
    }

    public static final synchronized void I(int i2) {
        int i3 = h0.c.Z;
        boolean z2 = true;
        boolean z3 = (i3 & 255) != 0;
        int i4 = i3 | i2;
        h0.c.Z = i4;
        if ((i2 | (i4 & 255)) == 0) {
            z2 = false;
        }
        if (z3 != z2) {
            h.M();
        }
    }

    public static final void J(int i2, boolean z2) {
        Log.e("BT", "  ==============>>> 00 BT Handle mute flag : " + Integer.toBinaryString(i2 & 65535) + " mute " + z2 + " DataBt.mMuteFlag: " + Integer.toBinaryString(h0.c.Z & 65535));
        if (z2) {
            I(i2);
        } else {
            V(i2);
        }
        Log.e("BT", "  ==============>>> 01 BT Handle mute DataBt.mMuteFlag: " + Integer.toBinaryString(h0.c.Z & 65535));
    }

    public static boolean K() {
        String strY0 = u.Y0();
        boolean z2 = h0.c.f2433f;
        if (!z2 && !k4.f(95) && !k4.f(107)) {
            z2 = f2476a != null && ("com.syu.fourcamera2".equals(u.Y0()) || !f2476a.matcher(u.Y0()).find());
        }
        return i.r(strY0) || z2;
    }

    public static void L(int i2) {
        h0.c.O = i2;
        W(29, i2);
    }

    public static void M(String str) {
        if (p0.g(str, h0.c.f2454s)) {
            return;
        }
        h0.c.f2454s = str;
        Y(44, str);
        h0.d.f2467f.c();
    }

    public static void N(String str) {
        if (p0.g(str, h0.c.f2451p)) {
            return;
        }
        h0.c.f2451p = str;
        h0.d.f2470i.c();
        Y(6, str);
    }

    public static void O(String str) {
        if (p0.g(str, h0.c.f2452q)) {
            return;
        }
        h0.c.f2452q = str;
        Y(7, str);
        h0.d.f2466e.c();
    }

    public static void P(String str) {
        if (p0.g(str, h0.c.f2455t)) {
            return;
        }
        h0.c.f2455t = str;
        Y(46, str);
        h0.d.f2468g.c();
    }

    public static void Q(int i2) {
        if (h0.c.C != i2) {
            h0.c.C = i2;
            W(45, i2);
            h0.d.f2469h.c();
        }
    }

    public static void R(String str) {
        if (p0.g(h0.c.f2459x, str)) {
            return;
        }
        h0.c.f2459x = str;
        Y(23, str);
    }

    public static void S(String str) {
        if (p0.g(h0.c.f2457v, str)) {
            return;
        }
        h0.c.f2457v = str;
        Y(16, str);
    }

    public static void T(Runnable runnable) {
        j0.f16915j.d(runnable);
    }

    public static void U(long j2) {
        if (h0.c.f2432e0 != j2) {
            h0.c.f2432e0 = j2;
            W(11, (int) (j2 >> 32), (int) j2);
        }
    }

    public static final synchronized void V(int i2) {
        int i3 = h0.c.Z;
        boolean z2 = true;
        boolean z3 = (i3 & 65535) != 0;
        int i4 = (~i2) & 65535 & i3;
        h0.c.Z = i4;
        if ((i4 & 65535) == 0) {
            z2 = false;
        }
        if (z3 != z2) {
            h.M();
        }
    }

    public static void W(int i2, int... iArr) {
        X(i2, iArr, null, null);
    }

    public static void X(int i2, int[] iArr, float[] fArr, String[] strArr) {
        g gVarY2 = g.Y2();
        if (gVarY2 != null) {
            gVarY2.H0(i2, iArr, fArr, strArr);
        }
    }

    public static void Y(int i2, String... strArr) {
        X(i2, null, null, strArr);
    }

    public static void Z(int i2, int i3, String... strArr) {
        X(i2, new int[]{i3}, null, strArr);
    }

    public static void a(String str) {
        h0.c.f2441j = str;
        h0.d.f2473l.c();
    }

    public static void b(String[] strArr) {
        for (int i2 = 0; i2 < 5; i2++) {
            h0.c.f2443k[i2] = null;
        }
        for (int i3 = 0; i3 < 5; i3++) {
            h0.c.f2443k[i3] = strArr[i3];
        }
        String[] strArr2 = h0.c.f2443k;
        qt.A0(1045, null, null, new String[]{strArr2[0], strArr2[1], strArr2[2], strArr2[3], strArr2[4]});
        h0.d.f2472k.c();
    }

    public static void c(int i2) {
        if (h0.c.T != i2) {
            h0.c.T = i2;
            W(34, i2);
            Log.d("bt", "A2DP状态发给UI显示 = " + i2);
        }
    }

    public static void d(Runnable runnable) {
        j0.f16915j.c(runnable);
    }

    public static void e(int i2) {
        if (h0.c.A != i2) {
            h0.c.A = i2;
            W(20, i2);
            m1.c.g(141, i2);
        }
    }

    public static void f(int i2) {
        e(i2);
    }

    public static void g(int i2) {
        if (h0.c.D != i2) {
            h0.c.D = i2;
            W(68, i2);
        }
    }

    public static void h(int i2) {
        int i3 = i2 == 1 ? 1 : 0;
        if (h0.c.W != i3) {
            h0.c.W = i3;
            W(58, i3);
        }
    }

    public static void i(String str) {
        if (!p0.g(h0.c.f2449n, str)) {
            h0.c.f2449n = str;
            Y(26, str);
        }
        if (u0.b.D == 3) {
            u0.d.J0(str, ProxyProperties.LOCAL_EXCL_LIST);
        }
    }

    public static void j(String str) {
        if (!p0.g(h0.c.f2447m, str)) {
            h0.c.f2447m = str;
            Y(1, str);
        }
        if (u0.b.D == 3) {
            u0.d.K0(str);
        }
    }

    public static void k(String str) {
        if (!s0.j(h0.c.f2445l, str)) {
            h0.c.f2445l = str;
            h0.d.f2475n.c();
            Y(0, str);
        }
        if (u0.b.D == 3) {
            u0.d.L0(str);
        }
    }

    public static void l(int i2) {
        if (h0.c.N != i2) {
            h0.c.N = i2;
            h0.d.f2474m.c();
            W(13, i2);
            h.M();
            a.f.p().s("蓝牙音乐播放状态 = " + i2);
        }
    }

    public static void m(int i2) {
        if (h0.c.H != i2) {
            h0.c.H = i2;
            W(28, i2);
        }
    }

    public static void n(int i2) {
        if (h0.c.J != i2) {
            h0.c.J = i2;
            W(3, i2);
        }
    }

    public static void o(int i2) {
        if (h0.c.I != i2) {
            h0.c.I = i2;
            W(2, i2);
            if (h0.c.H > h0.c.I) {
                m(0);
            }
        }
    }

    public static void p(int i2) {
        if (h0.c.K != i2) {
            h0.c.K = i2;
            W(4, i2);
        }
    }

    public static void q(String str) {
        h0.c.f2437h = str;
        if (s0.t(str)) {
            h0.c.f2439i = null;
        } else {
            h0.c.f2439i = new String[]{str};
        }
        h0.c.f2431e = false;
        Y(8, str);
        h0.d.f2464c.c();
        a.f.p().s("PHONE TO UI NUMBER = " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            SystemProperties.set("sys.btphone.number", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void r(String[] strArr) {
        h0.c.f2437h = strArr[1];
        h0.c.f2439i = strArr;
        h0.c.f2431e = strArr.length > 1;
        Y(8, strArr);
        h0.d.f2464c.c();
        a.f.p().s("PHONE TO UI NUMBER = " + strArr[1]);
        if (TextUtils.isEmpty(strArr[1])) {
            return;
        }
        SystemProperties.set("sys.btphone.number", strArr[1]);
    }

    public static void s(int i2) {
        Log.e("BT", "btPhoneState ---------->> " + i2);
        int i3 = h0.c.E;
        if (i3 != i2) {
            h0.c.F = i3;
            h0.c.E = i2;
            if (i2 == 3 || i2 == 4 || i2 == 5 || i2 == 7) {
                if (i2 == 4) {
                    U(System.currentTimeMillis());
                    h0.c.f2434f0 = SystemClock.uptimeMillis();
                    j.e(l.a(), f2479d);
                    j.b(l.a(), f2479d, 0L);
                } else if (i2 == 5) {
                    h0.c.f2436g0 = SystemClock.uptimeMillis();
                    j.b(l.a(), f2478c, 0L);
                }
                if (h0.c.G == 0) {
                    j.f(f2477b);
                    j.c(f2477b, 1000L);
                    h0.c.G = 1;
                    h.M();
                    if (!g.e.j(61) || !k4.f(1)) {
                        u0.d.N(0);
                    }
                    h0.d.f2463b.c();
                    h0.c.L = u0.b.D;
                    h0.c.X = u0.b.f17326h;
                    if (u0.b.f17326h != 0) {
                        u0.d.u3(0);
                    }
                    boolean zK = K();
                    if (zK) {
                        SystemProperties.set("syu.bt.show.pip", "true");
                    }
                    if (h0.c.f2444k0) {
                        if (zK) {
                            u.t();
                        } else {
                            u.s();
                        }
                    }
                    if (y0.f.f18055i == 1 && !s0.l("syu.bt.calling.unmute", false)) {
                        s0.F("syu.bt.calling.unmute", "true");
                        h.u0(-4);
                    }
                }
            } else if (h0.c.G != 0) {
                J(8, true);
                h0.c.G = 0;
                if (s0.l("syu.bt.calling.unmute", false)) {
                    s0.F("syu.bt.calling.unmute", "false");
                    h.u0(-3);
                }
                SystemProperties.set("syu.bt.show.pip", "false");
                h0.d.f2463b.c();
                h.M();
                if (u0.b.D == 2) {
                    u0.b.f17311c.c(h0.c.L);
                }
                if (u0.b.f17306a0 != 0 && u0.b.f17320f != 0 && h0.c.X != 0) {
                    u0.d.u3(1);
                }
                h0.c.f2444k0 = true;
                j.f(f2477b);
                j.c(f2477b, 2000L);
            }
            int i4 = h0.c.F;
            if (i4 == 5) {
                j.e(l.a(), f2478c);
            } else if (i4 == 4) {
                j.e(l.a(), f2479d);
            }
            W(9, i2);
            h0.d.f2462a.c();
        }
    }

    public static void t(int i2) {
        if (h0.c.Q != i2) {
            h0.c.Q = i2;
            W(31, i2);
        }
    }

    public static void u(int i2) {
        int iA = o0.a(i2, 0, h0.c.f2426b0);
        if (h0.c.f2424a0 != iA) {
            h0.c.f2424a0 = iA;
            W(33, iA);
            h.M();
            m1.c.g(154, iA);
        }
    }

    public static void v(String str) {
        if (p0.g(h0.c.f2458w, str)) {
            return;
        }
        h0.c.f2458w = str;
        Y(17, str);
        SystemProperties.set("sys.fyt.bt_version", str);
    }

    public static final boolean w(int i2) {
        return (i2 & h0.c.Z) != 0;
    }

    public static Runnable x() {
        return f2477b;
    }

    public static boolean y(String str) {
        HashMap<String, Integer> map = h0.c.f2429d;
        if (map == null || !map.containsKey(str)) {
            return false;
        }
        c.e.d().c(h0.c.f2429d.get(str).intValue());
        return true;
    }

    public static void z(int i2) {
        if (h0.c.M != i2) {
            h0.c.M = i2;
            W(10, i2);
        }
    }
}
