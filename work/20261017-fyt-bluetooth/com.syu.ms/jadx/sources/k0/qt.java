package k0;

import android.app.ActivityManager;
import android.bluetooth.BluetoothClass;
import android.media.TextTrackRegion;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.UrlQuerySanitizer;
import android.net.wifi.WifiStateMachine;
import android.os.BatteryStats;
import android.os.FileObserver;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.Downloads;
import android.util.Log;
import android.view.View;
import android.widget.SpellChecker;
import app.App;
import chip.Chip;
import com.syu.jni.SyuJniNative;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.List;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class qt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f9721a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int[] f9722b = {255, 96, 238, 1, 255, 112, 1, 128, 3, 72, 4, 162, 12, 128, 19, 128, 24, 80, 56, 176, 255, 112, 48, 0, 49, 44, 51, 5, 52, 2, 36, 100, 35, 31, 35, 159, 255, 128, 106, 10, 190, 64, 2, 0, 3, 192, 255, 131, 70, 4, 71, 4, 72, 10, 74, 48, 64, 0, 255, 131, 18, 2, 19, 88, 20, 2, 21, 29, 22, 1, 23, 16, 24, 9, 25, 30, 26, 30, 27, 30, 28, 1, 29, 224, 16, 88, 31, 4, 17, 44, 255, 128, 255, 128, 51, 9};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int[] f9723c = {255, 96, 238, 1, 255, 112, 1, 128, 3, 72, 4, 162, 12, 128, 19, 128, 24, 80, 56, 176, 255, 112, 48, 0, 49, 44, 51, 8, 52, 2, 36, 100, 35, 31, 35, 159, 255, 128, 106, 10, 190, 64, 2, 0, 3, 192, 255, 131, 70, 4, 71, 4, 72, 10, 74, 48, 64, 0, 255, 131, 18, 2, 19, 88, 20, 2, 21, 41, 22, 1, 23, 224, 24, 2, 25, 30, 26, 30, 27, 30, 28, 3, 29, 32, 16, 88, 31, 4, 17, 44, 255, 128, 255, 128, 51, 9};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int[] f9724d = {255, 96, 238, 1, 255, 112, 1, 128, 3, 72, 4, 162, 12, 128, 19, 128, 24, 80, 56, 176, 255, 112, 48, 0, 49, 44, 51, 10, 52, 2, 36, 100, 35, 31, 35, 159, 255, 128, 106, 10, 190, 64, 2, 0, 3, 192, 255, 131, 70, 4, 71, 4, 72, 10, 74, 48, 64, 0, 255, 131, 18, 2, 19, 109, 20, 2, 21, 41, 22, 1, 23, 224, 24, 2, 25, 30, 26, 30, 27, 30, 28, 3, 29, 32, 16, 88, 31, 4, 17, 44, 255, 128, 255, 128, 51, 9};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f9725e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f9726f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f9727g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f9728h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f9729i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f9730j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f9731k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f9732l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f9733m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f9734n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static boolean f9735o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Runnable f9736p = new a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f9737q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final Runnable f9738r = new b();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final o1.o f9739s = new c();

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (g.e.a() == 7) {
                switch (nt.f8633a) {
                    case 317:
                        ((Chip) g.e.f2254a).s(qt.f9722b);
                        a.f.p().s("8918数据：= ATS_480_272");
                        break;
                    case 65853:
                    case 327997:
                        ((Chip) g.e.f2254a).s(qt.f9724d);
                        a.f.p().s("8918数据：= XTS_800_480_15");
                        break;
                    case 131389:
                        ((Chip) g.e.f2254a).s(qt.f9724d);
                        a.f.p().s("8918数据：= XTS_800_480_15");
                        break;
                    case 196925:
                    case 393533:
                    case 459069:
                        ((Chip) g.e.f2254a).s(qt.f9723c);
                        a.f.p().s("8918数据：= XTS_800_480_12");
                        break;
                    case 262461:
                        ((Chip) g.e.f2254a).s(qt.f9723c);
                        a.f.p().s("8918数据：= XTS_800_480_12");
                        break;
                }
            }
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = qt.f9737q - 1;
            qt.f9737q = i2;
            if (i2 < 0) {
                qt.q0(qt.f9738r);
                return;
            }
            qt.y0(1037, qt.g(nt.f8633a));
            qt.y0(1000, nt.f8633a);
            Log.v("zed", "FinalCanbus.U_CANBUS_ID   == " + nt.f8633a + "  GetcanbusIdToUiserver(DataCanbus.sCanbusId   == " + qt.g(nt.f8633a) + "  SendNum = " + qt.f9737q);
            u0.d.w(m1.c.c(196, 0));
            int i3 = nt.f8633a;
            int i4 = 65535 & i3;
            if (i4 == 112 || i4 == 298 || i4 == 448 || i3 == 5702087 || i3 == 12452296) {
                return;
            }
            if (u0.b.f17366w == 1) {
                qt.y0(1049, 11, 64);
            } else {
                qt.y0(1049, 11, 0);
            }
        }
    }

    public class c implements o1.o {
        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            u0.d.m0(a.b.K, nt.K == 1);
            return false;
        }
    }

    public static void A() {
        int[] iArr;
        if (nt.f8644f0 == 0 || (iArr = nt.f8639d.f7886a.f8318m) == null || iArr.length <= 0) {
            return;
        }
        u0.d.I3(72, iArr);
    }

    public static void A0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        rt rtVarA3 = rt.a3();
        if (rtVarA3 != null) {
            rtVarA3.H0(i2, iArr, fArr, strArr);
        }
    }

    public static void B(int i2) {
        if (i2 == 0) {
            C(0);
            return;
        }
        if (i2 == 1) {
            C(1);
        } else {
            if (i2 != 2) {
                return;
            }
            if (nt.U != 0) {
                C(0);
            } else {
                C(1);
            }
        }
    }

    public static boolean B0(int i2, String str, String str2) {
        A0(i2, null, null, new String[]{str});
        return true;
    }

    public static void C(int i2) {
        if (nt.U != i2) {
            nt.U = i2;
            y0(1001, i2);
            m1.c.g(137, i2);
        }
    }

    public static boolean C0(int i2, int[] iArr, int[] iArr2) {
        A0(i2, iArr, null, null);
        return true;
    }

    public static void D() {
        E(null);
    }

    public static void D0(y.b bVar) {
        u0.i.l3().o3(a.b.K, nt.K == 0, bVar);
        u0.i.l3().o3(a.b.Q, nt.M == 0, bVar);
    }

    public static void E(y.b bVar) {
        if (nt.f8644f0 == 0) {
            return;
        }
        if (bVar != null) {
            String[] strArr = nt.f8639d.f7886a.f8306a;
            o1.x xVarL2 = u0.i.l3().L2();
            if (strArr != null) {
                for (String str : strArr) {
                    if (xVarL2 != null) {
                        xVarL2.E(bVar, 39, 1, str);
                    }
                }
                return;
            }
            return;
        }
        o1.c cVar = new o1.c(-1);
        for (String str2 : nt.f8642e0) {
            cVar.f(str2, 0);
        }
        String[] strArr2 = nt.f8639d.f7886a.f8306a;
        if (strArr2 != null) {
            for (String str3 : strArr2) {
                cVar.f(str3, 1);
            }
        }
        int iH = cVar.h();
        for (int i2 = 0; i2 < iH; i2++) {
            u0.i.l3().n3((String) cVar.e(i2), cVar.i(i2) == 0);
        }
        o1.o oVar = nt.f8640d0;
        if (oVar != null) {
            oVar.a(0, null, null, null, cVar);
        }
        u0.d.m0("com.syu.canbusdvr", nt.N == 1);
        u0.d.m0(a.b.Q, nt.M == 1);
    }

    public static void F() {
        int i2 = (nt.f8654o == 0 || nt.f8658s != 0) ? 0 : 1;
        if (nt.f8661v != i2) {
            nt.f8661v = i2;
            y0.h.s0(17, i2);
            if (i2 != 0) {
                for (int i3 = 0; i3 < 3; i3++) {
                    y0.h.E(i3, y0.f.f18035b0[i3]);
                }
            }
        }
    }

    public static void G() {
        int i2 = (nt.f8653n == 0 || nt.f8657r != 0) ? 0 : 1;
        if (nt.f8660u != i2) {
            nt.f8660u = i2;
        }
    }

    public static void H() {
        int i2 = (nt.f8652m == 0 || nt.f8656q != 0) ? 0 : 1;
        if (nt.f8659t != i2) {
            nt.f8659t = i2;
        }
    }

    public static void I(String str) {
        if (str == null) {
            nt.f8636b0 = str;
            w0(Process.MEDIA_RW_GID, 0, str);
        } else {
            if (str.equals(nt.f8636b0)) {
                return;
            }
            nt.f8636b0 = str;
            w0(Process.MEDIA_RW_GID, 1, str);
        }
    }

    public static void J(int i2) {
        if (!m1.a.f13514c) {
            nt.f8646g0 = i2;
            return;
        }
        if (a.i.k("ro.fyt.canbus_id", -1) != -1) {
            i2 = (a.i.k("ro.fyt.canbus_type", 0) << 16) | a.i.k("ro.fyt.canbus_id", -1);
        }
        n1.b bVarP = a.f.p();
        LogType logType = LogType.CANBUS;
        StringBuilder sb = new StringBuilder();
        sb.append("MCU回传的协议ID = ");
        int i3 = i2 & 65535;
        sb.append(i3);
        sb.append(" 高低配 = ");
        int i4 = i2 >> 16;
        int i5 = i4 & 255;
        sb.append(i5);
        sb.append("  iTestID = ");
        sb.append(f9721a);
        bVarP.t(logType, sb.toString());
        Log.e("CAN", "MCU Canbus ID = " + i3 + " type = " + i5 + "  iTestID = " + f9721a);
        if (nt.f8633a != i2) {
            u0.b.K3 = u0.d.s0();
            if (nt.a()) {
                u0.d.C2(0);
            }
            lt ltVarZ2 = rt.a3().Z2();
            if (ltVarZ2 != null) {
                ltVarZ2.W2();
            }
            for (int i6 = 0; i6 < 1000; i6++) {
                nt.f8645g[i6] = 0;
            }
            nt.f8635b = nt.f8633a;
            nt.f8633a = i2;
            nt.f8637c = i4 & 65535;
            if (nt.a()) {
                u0.d.C2(0);
                u0.d.R2(255);
                u0.d.S2(255);
                u0.d.T2(255);
                u0.d.U2(255);
                u0.d.D2(255);
                u0.d.E2(255);
                u0.d.F2(255);
                u0.d.G2(255);
                u0.d.I3(41, 20);
            }
            if (nt.f8648i == 1 || g.e.j(63) || g.e.j(59) || g.e.j(66)) {
                l0.a aVarK0 = l0.b0.k0(i2);
                l0.z.f13137a = aVarK0;
                if (rt.a3().g3()) {
                    n0.c4 c4Var = n0.j4.f16466d;
                    if (c4Var != null) {
                        c4Var.J3(aVarK0, l0.b0.j0());
                    }
                } else {
                    l0.b0.m0();
                }
            }
            lt ltVarH0 = h0(i2);
            rt.a3().h3(ltVarH0);
            Log.e("CAN", " Canbus ID = " + ltVarH0);
            if (ltVarH0 != null) {
                ltVarH0.S2();
            }
            nt.f8639d = ltVarH0;
            u0.d.A3(1073741824);
            mt mtVar = ltVarH0.f7886a;
            X(mtVar.f8307b);
            U(mtVar.f8308c);
            T(mtVar.f8309d);
            Z(mtVar.f8310e);
            Q(mtVar.f8311f);
            f0(mtVar.f8312g);
            b0(mtVar.f8313h);
            V(mtVar.f8315j);
            s(mtVar.f8321p);
            R(mtVar.f8314i);
            d0(mtVar.f8316k);
            Y(mtVar.f8317l);
            S(mtVar.f8319n);
            c0(mtVar.f8320o);
            a0(mtVar.f8322q);
            e0(mtVar.f8323r);
            W(mtVar.f8324s);
            y0.h.s();
            nt.f8644f0 = 1;
            D();
            A();
            ot.f9019a.c();
        } else if (nt.f8644f0 == 0) {
            nt.f8644f0 = 1;
            D();
        }
        if (a.b.f16e0 == 1) {
            h(4);
        }
        f9737q = 5;
        z(f9738r);
    }

    public static void K(int i2) {
        if (m1.c.c(145, 0) != i2) {
            m1.c.e(145, i2);
        }
        if (u0.b.f17308b == 1) {
            if (g.e.h()) {
                J(i2);
            } else {
                if ((nt.f8633a & 65535) != (i2 & 65535)) {
                    z.k.s(97, (i2 >> 8) & 255, i2 & 255);
                }
                z.k.s(1, 122, (i2 >> 16) & 255);
            }
            a.f.p().s("设置协议ID ===== " + (i2 & 65535) + " 高低配 = " + ((i2 >> 16) & 255));
        }
    }

    public static void L(String str) {
        if (str == null) {
            if (nt.f8634a0 != null) {
                nt.f8634a0 = str;
                x0(1005, str);
                return;
            }
            return;
        }
        if (str.equals(nt.f8634a0)) {
            return;
        }
        nt.f8634a0 = str;
        x0(1005, str);
    }

    public static void M(int i2) {
        if (i2 == 0) {
            N(0);
            return;
        }
        if (i2 == 1) {
            N(1);
        } else {
            if (i2 != 2) {
                return;
            }
            if (nt.S != 0) {
                N(0);
            } else {
                N(1);
            }
        }
    }

    public static void N(int i2) {
        if (nt.S != i2) {
            nt.S = i2;
            y0(1002, i2);
            m1.c.g(142, i2);
        }
    }

    public static void O(int i2) {
        if (nt.W != i2) {
            nt.W = i2;
            y0(1003, i2);
            ot.f9020b.c();
            m1.c.g(136, i2);
        }
    }

    public static void P(int i2) {
        if (i2 == 0) {
            if (nt.W != 0) {
                O(0);
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            O((nt.W + 1) & 1);
        } else if (nt.W == 0) {
            O(1);
        }
    }

    public static void Q(int i2) {
        if (nt.B != i2) {
            nt.B = i2;
            y0(1007, i2);
        }
    }

    public static void R(int i2) {
        if (nt.E != i2) {
            nt.E = i2;
            y0(1018, i2);
        }
    }

    public static void S(int i2) {
        if (nt.N != i2) {
            nt.N = i2;
            y0(1034, i2);
            u0.i.l3().n3("com.syu.canbusdvr", nt.N == 0);
        }
    }

    public static void T(int i2) {
        if (nt.f8654o != i2) {
            nt.f8654o = i2;
            F();
        }
    }

    public static void U(int i2) {
        if (nt.f8653n != i2) {
            nt.f8653n = i2;
            G();
        }
    }

    public static void V(int i2) {
        if (nt.K != i2) {
            nt.K = i2;
            y0(Process.VPN_UID, i2);
            D0(null);
        }
    }

    public static void W(int i2) {
        if (nt.I != i2) {
            nt.I = i2;
            y0(1050, i2);
        }
    }

    public static void X(int i2) {
        if (nt.f8652m != i2) {
            nt.f8652m = i2;
            H();
        }
    }

    public static void Y(int i2) {
        if (nt.M != i2) {
            nt.M = i2;
            y0(1054, i2);
            D0(null);
        }
    }

    public static void Z(int i2) {
        if (nt.A != i2) {
            nt.A = i2;
            y0(1004, i2);
        }
    }

    public static void a(int i2) {
        a.f.p().t(LogType.CANBUS, "FinalCanbus.ArmBackCar == " + i2);
        if (!k0()) {
            if (f9725e != i2) {
                f9725e = i2;
                ((Chip) g.e.f2254a).h(2, i2 == 1);
                return;
            }
            return;
        }
        if (u() || f9725e == i2) {
            return;
        }
        f9725e = i2;
        if (i2 == 0) {
            if (f9726f && o1.u.S("com.syu.fourcamera2")) {
                c.e.d().c(614);
                return;
            }
            return;
        }
        if (o1.u.S("com.syu.fourcamera2")) {
            return;
        }
        c.e.d().c(590);
        f9726f = true;
    }

    public static void a0(int i2) {
        if (nt.G != i2) {
            nt.G = i2;
            y0(1041, i2);
        }
    }

    public static void b(int i2) {
        if (i2 != 0) {
            z.k.s(1, 0, 199);
        } else {
            z.k.s(1, 0, 198);
        }
    }

    public static void b0(int i2) {
        if (nt.D != i2) {
            nt.D = i2;
            y0(1009, i2);
        }
    }

    public static int c(int i2) {
        int i3 = i2 >> 4;
        int i4 = i2 & 15;
        if (i3 > 9) {
            i3 = 0;
        }
        if (i4 > 9) {
            i4 = 0;
        }
        return (i3 * 10) + i4;
    }

    public static void c0(int i2) {
        if (nt.F != i2) {
            nt.F = i2;
            y0(1035, i2);
        }
    }

    public static void d() {
        switch (nt.f8633a) {
            case 77:
            case 65613:
                z.k.s(227, -58, 3, 51, 1, 0);
                break;
            case 420:
                z.k.s(227, 2, i.a.Theme_actionModeFindDrawable, 7, 0);
                break;
            case 429:
            case 65965:
            case 131501:
            case 197037:
            case 262573:
            case 328109:
                z.k.s(227, 116, 2, 8, 1);
                z.k.s(227, 116, 2, 8, 0);
                break;
            case 655681:
                z.k.s(227, 2, i.a.Theme_actionModeShareDrawable, 1, 1);
                break;
            case 983483:
                z.k.s(227, 2, -14, 7, 0);
                break;
            case 1638721:
            case 1704257:
            case 1769793:
            case 1966401:
            case 3277121:
                z.k.s(227, 2, -84, 7, 1);
                break;
            case 3211717:
            case 3277253:
            case 3342789:
            case 14680503:
            case 14746039:
            case 14811575:
            case 14877111:
            case 14942647:
            case 15008183:
            case 15073719:
            case 15139255:
            case 15204791:
                z.k.s(227, 130, 3, 132, 0, 0);
                break;
        }
    }

    public static void d0(int i2) {
        if (nt.L != i2) {
            nt.L = i2;
        }
    }

    public static void e() {
        switch (nt.f8633a) {
            case 77:
            case 65613:
                z.k.s(227, -58, 3, 51, 2, 0);
                break;
            case 420:
                z.k.s(227, 2, i.a.Theme_actionModeFindDrawable, 7, 1);
                break;
            case 429:
            case 65965:
            case 131501:
            case 197037:
            case 262573:
            case 328109:
                z.k.s(227, 116, 2, 9, 1);
                z.k.s(227, 116, 2, 9, 0);
                break;
            case 655681:
                z.k.s(227, 2, i.a.Theme_actionModeShareDrawable, 1, 0);
                break;
            case 983483:
                z.k.s(227, 2, -14, 7, 1);
                break;
            case 1638721:
            case 1704257:
            case 1769793:
            case 1966401:
            case 3277121:
                z.k.s(227, 2, -84, 7, 0);
                break;
            case 3211717:
            case 3277253:
            case 3342789:
            case 14680503:
            case 14746039:
            case 14811575:
            case 14877111:
            case 14942647:
            case 15008183:
            case 15073719:
            case 15139255:
            case 15204791:
                z.k.s(227, 130, 3, 131, 0, 0);
                break;
        }
    }

    public static void e0(int i2) {
        if (nt.H != i2) {
            nt.H = i2;
            y0(1046, i2);
        }
    }

    public static void f() {
        if (o1.u.T(a.b.O)) {
            if (g.e.a() == 11 || g.e.a() == 12 || g.e.a() == 13) {
                a.f.p().t(LogType.CANBUS, "Updata   FinalMain.U_RIGHTCAMERA_7870_ONOFF ---> 0");
                y0(1017, 0);
                u0.b.f17321f0 = 0;
                u0.d.I3(199, 0);
            } else if (u0.b.K3 == 2) {
                o1.u.k();
            } else {
                o1.u.k();
            }
            z.k.s(1, 0, 120);
        }
    }

    public static void f0(int i2) {
        if (nt.C != i2) {
            nt.C = i2;
            y0(1012, i2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:58:0x00fc  */
    public static int g(int i2) {
        int i3 = 458832;
        switch (i2) {
            case 160:
            case 131232:
            case 1114129:
            case 1573024:
            case 2424992:
                i3 = 196768;
                break;
            case i.a.Theme_actionModePopupWindowStyle /* 244 */:
            case 65780:
            case 327924:
            case 1048820:
            case 1835252:
                i3 = 262388;
                break;
            case 290:
            case 65926:
            case 131401:
            case 262283:
            case 459066:
            case 786722:
            case 983179:
            case 983295:
            case 1245323:
            case 1311034:
            case 1769727:
            case 1900858:
            case 2359735:
            case 3080331:
            case 3997835:
            case 8389060:
            case 8782263:
            case 12386756:
            case 13894071:
            case 14287302:
                i3 = 131211;
                break;
            case 449:
            case 65750:
            case 65910:
            case 65984:
            case 65990:
            case 131173:
            case 131286:
            case 131520:
            case 131526:
            case 197062:
            case 262592:
            case 262598:
            case 327974:
            case 328134:
            case 393670:
            case 459206:
            case 524400:
            case 524532:
            case 524568:
            case 524685:
            case 524742:
            case 590244:
            case 590278:
            case 655380:
            case 655814:
            case 721185:
            case 721217:
            case 721269:
            case 721348:
            case 786544:
            case 786659:
            case 852038:
            case 852069:
            case 852080:
            case 852195:
            case 917616:
            case 917802:
            case 983495:
            case 1048688:
            case 1049005:
            case 1049031:
            case 1049032:
            case 1114213:
            case 1114567:
            case 1114568:
            case 1180103:
            case 1245296:
            case 1311014:
            case 1311041:
            case 1311124:
            case 1442090:
            case 1507649:
            case 1572965:
            case 1573185:
            case 1638680:
            case 1638855:
            case 1704006:
            case 1704037:
            case 1704340:
            case 1835078:
            case 1835120:
            case 1835288:
            case 1835462:
            case 1900645:
            case 1900656:
            case 1900842:
            case 1966374:
            case 1966534:
            case 2031717:
            case 2032070:
            case 2097446:
            case 2097450:
            case 2097473:
            case 2097606:
            case 2162800:
            case 2163142:
            case 2228468:
            case 2228522:
            case 2228678:
            case 2294054:
            case 2294081:
            case 2294214:
            case 2359397:
            case 2359594:
            case 2359750:
            case 2424944:
            case 2425126:
            case 2425153:
            case 2425286:
            case 2490689:
            case 2556005:
            case 2556198:
            case 2556202:
            case 2556356:
            case 2621761:
            case 2621894:
            case 2687077:
            case 2687270:
            case 2687297:
            case 2752833:
            case 2818149:
            case 2818342:
            case 2883905:
            case 2884037:
            case 2949221:
            case 2949232:
            case 2949441:
            case 3014768:
            case 3014977:
            case 3015111:
            case 3080486:
            case 3080490:
            case 3080638:
            case 3080645:
            case 3080647:
            case 3146167:
            case 3211558:
            case 3211637:
            case 3276901:
            case 3276912:
            case 3277098:
            case 3342356:
            case 3342448:
            case 3342630:
            case 3342634:
            case 3342657:
            case 3342791:
            case 3407892:
            case 3408327:
            case 3473520:
            case 3473702:
            case 3473706:
            case 3473729:
            case 3473864:
            case 3539265:
            case 3539400:
            case 3604592:
            case 3604774:
            case 3604884:
            case 3604935:
            case 3604936:
            case 3670337:
            case 3670471:
            case 3735664:
            case 3735846:
            case 3735873:
            case 3736007:
            case 3736008:
            case 3801200:
            case 3801409:
            case 3801544:
            case 3866918:
            case 3866945:
            case 3932481:
            case 3932604:
            case 3932612:
            case 3997990:
            case 4063687:
            case 4128907:
            case 4129062:
            case 4129066:
            case 4129089:
            case 4194602:
            case 4194625:
            case 4194759:
            case 4260134:
            case 4260161:
            case 4391233:
            case 4456742:
            case 4456769:
            case 4456904:
            case 4522278:
            case 4522305:
            case 4587841:
            case 4587975:
            case 4587976:
            case 4653350:
            case 4653511:
            case 4653512:
            case 4719044:
            case 4719047:
            case 4719048:
            case 4784422:
            case 4784583:
            case 4784584:
            case 4849958:
            case 4849962:
            case 4850120:
            case 4915251:
            case 4915312:
            case 4915521:
            case 4915655:
            case 4915656:
            case 4981030:
            case 4981034:
            case 4981057:
            case 4981191:
            case 5046384:
            case 5046570:
            case 5046593:
            case 5046727:
            case 5111920:
            case 5112102:
            case 5112263:
            case 5177456:
            case 5177665:
            case 5177741:
            case 5177796:
            case 5177797:
            case 5177799:
            case 5242992:
            case 5243174:
            case 5243201:
            case 5243277:
            case 5243333:
            case 5243335:
            case 5308528:
            case 5308737:
            case 5308813:
            case 5308868:
            case 5308871:
            case 5374246:
            case 5374273:
            case 5374349:
            case 5374404:
            case 5439600:
            case 5439809:
            case 5439885:
            case 5505318:
            case 5505421:
            case 5505479:
            case 5570957:
            case 5636390:
            case 5636493:
            case 5702006:
            case 5832998:
            case 5833101:
            case 5898534:
            case 5898637:
            case 5964070:
            case 5964074:
            case 5964150:
            case 5964173:
            case 6029606:
            case 6029686:
            case 6029709:
            case 6095142:
            case 6095146:
            case 6095222:
            case 6095245:
            case 6160496:
            case 6160678:
            case 6160758:
            case 6160781:
            case 6226214:
            case 6226218:
            case 6226294:
            case 6226317:
            case 6291568:
            case 6291750:
            case 6291830:
            case 6291853:
            case 6357286:
            case 6357290:
            case 6357366:
            case 6357389:
            case 6357445:
            case 6422640:
            case 6422822:
            case 6422902:
            case 6422981:
            case 6488517:
            case 6554053:
            case 6554056:
            case 6619248:
            case 6619580:
            case 6619589:
            case 6619590:
            case 6619592:
            case 6685125:
            case 6750320:
            case 6750661:
            case 6816042:
            case 6816197:
            case 6881392:
            case 6881733:
            case 6947110:
            case 6947114:
            case 6947269:
            case 7012464:
            case 7012805:
            case 7078341:
            case 7143536:
            case 7143863:
            case 7143877:
            case 7209072:
            case 7209413:
            case 7209415:
            case 7274608:
            case 7274949:
            case 7340326:
            case 7340330:
            case 7340485:
            case 7405680:
            case 7405889:
            case 7406021:
            case 7471557:
            case 7536961:
            case 7537093:
            case 7602615:
            case 7602629:
            case 7667824:
            case 7668165:
            case 7733701:
            case 7798896:
            case 7799237:
            case 7864773:
            case 7864776:
            case 7929968:
            case 7930312:
            case 7995504:
            case 8061040:
            case 8126762:
            case 8126903:
            case 8192298:
            case 8192439:
            case 8257834:
            case 8323370:
            case 8323528:
            case 8388902:
            case 8388906:
            case 8388929:
            case 8389064:
            case 8454442:
            case 8454600:
            case 8519974:
            case 8519978:
            case 8585514:
            case 8585537:
            case 8585672:
            case 8651046:
            case 8651050:
            case 8651205:
            case 8716400:
            case 8716586:
            case 8716609:
            case 8781936:
            case 8782118:
            case 8782122:
            case 8847681:
            case 8847813:
            case 8847816:
            case 8913348:
            case 8913349:
            case 8913352:
            case 8978884:
            case 8978885:
            case 8978888:
            case 9044424:
            case 9109802:
            case 9109825:
            case 9175338:
            case 9306410:
            case 9371760:
            case 9371946:
            case 9437482:
            case 9503018:
            case 9568554:
            case 9568699:
            case 9568708:
            case 9633904:
            case 9765162:
            case 9830512:
            case 9896048:
            case 9896234:
            case 9961584:
            case 10027120:
            case 10092656:
            case 10092999:
            case 10158192:
            case 10158535:
            case 10223728:
            case 10420679:
            case 10485872:
            case 10486215:
            case 10551408:
            case 11010160:
            case 11469255:
            case 11600315:
            case 11665851:
            case 11731387:
            case 11796923:
            case 11862459:
            case 12059080:
            case 12124616:
            case 12583365:
            case 12648900:
            case 13894087:
            case 13959611:
            case 14156231:
            case 14221764:
            case 14221767:
            case 14287303:
            case 14352836:
            case 14549435:
            case 14877115:
            case 15008187:
            case 15008198:
            case 15073734:
            case 15073735:
            case 15139270:
            case 15139271:
            case 15204806:
            case 15532486:
            case 15532487:
            case 15598022:
            case 15598023:
            case 15663559:
            case 15794628:
            case 15860164:
            case 15925700:
            case 15991236:
            case 16056772:
            case 16187846:
            case 16253382:
            case 16253383:
            case 16318918:
            case 16318919:
            case 16384454:
            case 16384455:
            case 16581062:
            case 16646598:
                i3 = 2031910;
                break;
            case 65577:
            case 131113:
            case 196649:
            case 262185:
                i3 = 41;
                break;
            case 65606:
            case 65726:
            case 196688:
            case 262224:
            case 655550:
            case 720976:
            case 786622:
            case 852048:
            case 983120:
            case 1114192:
            case 1245264:
            case 1245374:
            case 1376336:
            case 1507518:
            case 1638480:
            case 1638590:
            case 1769552:
            case 1769662:
            case 1900624:
            case 2031696:
            case 2162768:
            case 2228414:
            case 2293840:
            case 2293950:
            case 2359486:
            case 2424912:
            case 2490558:
            case 2555984:
            case 2621630:
            case 2687056:
            case 2752702:
            case 2818128:
            case 2883774:
            case 3014846:
            case 3145918:
            case 3342526:
            case 3473598:
            case 3604670:
            case 3735742:
            case 3866814:
            case 3997886:
            case 4128958:
            case 4260030:
            case 4456638:
            case 4718782:
            case 4849854:
            case 8651191:
                i3 = WifiStateMachine.CMD_SET_COUNTRY_CODE;
                break;
            case 65679:
            case 327870:
            case 721039:
            case 917647:
            case 1048719:
            case 1114255:
                i3 = 131215;
                break;
            case 65857:
            case 786730:
            case 1048874:
            case 1114410:
            case 1376554:
            case 1507626:
            case 1573162:
            case 1638698:
            case 1704234:
            case 1704257:
            case 1769770:
            case 1769793:
            case 1835306:
            case 1835329:
            case 1900865:
            case 2031914:
            case 2163009:
            case 2425130:
            case 2490666:
            case 2949418:
            case 3014954:
            case 3146049:
            case 3211585:
            case 3277121:
            case 3604778:
            case 3932458:
            case 3997994:
            case 3998017:
            case 4063530:
            case 4063553:
            case 4653354:
            case 4718890:
            case 4784426:
            case 4850117:
            case 5112106:
            case 5177642:
            case 5243178:
            case 5308714:
            case 5636394:
            case 5701930:
            case 5767466:
            case 5833002:
            case 7143722:
            case 7209258:
            case 7274794:
            case 7405866:
            case 7471402:
            case 7536938:
            case 7602474:
            case 7668010:
            case 7733546:
            case 7799082:
            case 7864618:
            case 7930154:
            case 7995690:
            case 8061226:
            case 8651073:
            case 8847658:
            case 8913194:
            case 9044266:
            case 9175361:
            case 9240874:
            case 9830698:
            case 9961770:
            case 10027306:
            case 10092842:
            case 10158378:
            case 10223914:
                i3 = 298;
                break;
            case 65875:
            case 2097491:
            case 2163027:
            case 2425171:
            case 2490707:
            case 2556243:
            case 2621779:
            case 2687315:
            case 2752851:
            case 2818387:
            case 2883923:
                i3 = 655699;
                break;
            case 65960:
            case 131496:
            case 196915:
            case 197032:
            case 262496:
            case 262568:
            case 328104:
            case 393536:
            case 393640:
            case 459072:
            case 459176:
            case 524712:
            case 721320:
            case 1311144:
            case 1376695:
            case 1638720:
            case 1704256:
            case 1769911:
            case 1900799:
            case 2097504:
            case 2163040:
            case 2228576:
            case 2359648:
            case 2425184:
            case 2490720:
            case 2490763:
            case 3473810:
            case 5505426:
            case 5636498:
            case 5702034:
            case 5833106:
            case 5898642:
            case 12124615:
            case 12190151:
            case 16122308:
            case 16187844:
            case 16253380:
            case 16318916:
            case 16384452:
            case 16449988:
                i3 = 196897;
                break;
            case WifiStateMachine.CMD_SET_HIGH_PERF_MODE /* 131149 */:
            case 327757:
                i3 = 77;
                break;
            case 131366:
            case 459046:
                i3 = 524582;
                break;
            case 131519:
            case 197055:
            case 328127:
            case 393663:
            case 459199:
            case 524735:
            case 655807:
            case 721343:
            case 786879:
            case 983487:
            case 1049023:
            case 1180095:
            case 1376702:
            case 1376703:
            case 1442239:
            case 1769919:
            case 1835455:
            case 1900991:
            case 1966527:
            case 2032063:
            case 2097599:
            case 2163135:
            case 2228671:
            case 2359743:
            case 2490815:
            case 2687423:
            case 2818495:
            case 2949567:
            case 3015103:
            case 3146175:
            case 3211711:
            case 3277247:
            case 3408319:
            case 3801535:
                i3 = 1311075;
                break;
            case 196706:
            case 1573108:
            case 7012795:
            case 9175483:
            case 9241019:
                i3 = 458853;
                break;
            case 197051:
                i3 = 321;
                break;
            case 262347:
                i3 = 203;
                break;
            case 327935:
                i3 = 655615;
                break;
            case 393344:
            case 12059067:
                i3 = 128;
                break;
            case 459073:
            case 1048897:
            case 1114433:
            case 1179969:
            case 1376577:
            case 2031937:
            case 2228545:
            case 2359617:
            case 2556225:
            case 2818369:
            case 3080513:
            case 3408193:
            case 3604801:
            case 6029633:
            case 6095169:
            case 6160705:
            case 6226241:
            case 6291777:
            case 6357313:
            case 6422849:
            case 6488385:
            case 6553921:
            case 6619457:
            case 6684993:
            case 6750529:
            case 6816065:
            case 6881601:
            case 6947137:
            case 7012673:
            case 7078209:
            case 7143745:
            case 7209281:
            case 7274817:
            case 7340353:
            case 7471425:
            case 7602497:
            case 7668033:
            case 7733569:
            case 7799105:
            case 7864641:
            case 7930177:
            case 7995713:
            case 8061249:
            case 8126785:
            case 8192321:
            case 8257857:
            case 8323393:
            case 8454465:
            case 8520001:
            case 8782145:
            case 8913217:
                i3 = 590145;
                break;
            case 459156:
            case 655764:
            case 721216:
            case 786752:
            case 786836:
            case 917824:
            case 917908:
            case 1442112:
            case 1835328:
            case 1966400:
            case 2097472:
            case 2294080:
            case 2425152:
            case 2621760:
            case 2752916:
            case 2818368:
            case 2883988:
            case 3015060:
            case 3342740:
            case 4456892:
            case 4587964:
            case 5702075:
            case 10682820:
            case 10813892:
                i3 = 328084;
                break;
            case 459168:
            case 1048849:
            case 1114367:
            case 1114385:
            case 1376511:
            case 1442065:
            case 1966353:
            case 2097407:
                i3 = 14025143;
                break;
            case 524358:
            case 655430:
                i3 = 65542;
                break;
            case 524608:
                i3 = 65856;
                break;
            case 589904:
            case 6029767:
            case 6095291:
            case 8585671:
            case 8651207:
            case 9503159:
            case 9568695:
            case 10289591:
            case 10355127:
            case 10486214:
            case 16056774:
                break;
            case 655640:
            case 1114392:
                i3 = 196888;
                break;
            case 655689:
            case 721225:
            case 852364:
            case 3473860:
                i3 = 1311159;
                break;
            case 655756:
            case 1048972:
            case 1114508:
                i3 = 196824;
                break;
            case 720936:
                i3 = 262184;
                break;
            case 720997:
                i3 = 131173;
                break;
            case 721008:
                i3 = 655472;
                break;
            case 786697:
                i3 = 459017;
                break;
            case 852212:
            case 1442036:
            case 1638644:
            case 1769716:
            case 2162932:
            case 2425076:
            case 2490807:
            case 2556148:
            case 2556343:
            case 11272631:
            case 11796934:
            case 11862470:
                i3 = 1507572;
                break;
            case 852362:
                i3 = 393610;
                break;
            case 983364:
            case 1376580:
                i3 = 721220;
                break;
            case 1245603:
                i3 = 328099;
                break;
            case 1376273:
                i3 = 720913;
                break;
            case 1376296:
            case 3801248:
                i3 = 3473568;
                break;
            case 1376630:
            case 1507702:
            case 1573238:
            case 1638774:
            case 1704310:
            case 1835382:
            case 1900918:
            case 2097526:
            case 2163062:
            case 5177718:
                i3 = 1442166;
                break;
            case 1507771:
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    i3 = i2;
                }
                break;
            case 1638852:
            case 1704388:
            case 1769924:
            case 1835460:
            case 1900996:
            case 1966532:
            case 2032068:
                i3 = 1573316;
                break;
            case 2359691:
            case 4063293:
            case 9044407:
                i3 = 1966475;
                break;
            case 2687274:
            case 2818346:
            case 3211562:
            case 3408170:
            case 5898538:
            case 6029610:
            case 6160682:
            case 6291754:
            case 6750506:
            case 6881578:
            case 13435335:
            case 16253381:
                i3 = 196906;
                break;
            case 2883882:
                i3 = 262442;
                break;
            case 4391355:
            case 4456891:
            case 4981179:
            case 5046715:
            case 5112251:
            case 5177787:
            case 5571003:
            case 6685115:
            case 6750651:
                i3 = 1638843;
                break;
            case 4915639:
            case 5374391:
                i3 = 393296;
                break;
            case 5112129:
                i3 = 524609;
                break;
            case 6422967:
            case 9830855:
            case 11076038:
            case 11141574:
            case 11207110:
            case 11272646:
                i3 = 3408311;
                break;
            case 8257830:
                i3 = 8847799;
                break;
            case 8389047:
            case 10944964:
                i3 = 2752951;
                break;
            case 12124599:
            case 12190135:
            case 12255671:
            case 12321207:
            case 12386743:
            case 12452279:
            case 12583351:
                i3 = 12517815;
                break;
            case 12124614:
            case 12190150:
            case 12255686:
            case 12321222:
            case 12386758:
            case 12452294:
            case 12517830:
            case 12583366:
            case 12648902:
            case 12714438:
            case 12779974:
            case 12845510:
            case 12911046:
            case 12976582:
            case 13435333:
            case 13500869:
            case 13566405:
            case 13631941:
            case 13697477:
            case 13763013:
            case 13828549:
            case 13894085:
            case 13959621:
            case 14025157:
            case 14090693:
            case 14156229:
            case 14221765:
            case 14287301:
            case 14352837:
            case 14418373:
            case 14483909:
            case 14549445:
            case 14614981:
            case 14680517:
            case 14746053:
            case 14811589:
            case 14877125:
            case 14942661:
            case 15008197:
            case 15073733:
            case 15139269:
            case 15204805:
            case 15270341:
            case 15335877:
            case 15401413:
            case 15466949:
                i3 = 13369797;
                break;
            case 13238724:
                i3 = 12779972;
                break;
            default:
                i3 = i2;
                break;
        }
        int i4 = 65535 & i2;
        if (i4 == 112) {
            i3 = 2031910;
        }
        if (i4 == 20) {
            i3 = 2031910;
        }
        int i5 = i4 != 294 ? i3 : 2031910;
        if (i4 == 334) {
            i5 = 196942;
        }
        if (i2 == 1311075) {
            return 0;
        }
        return i5;
    }

    public static void g0() {
        if (nt.a()) {
            nt.f8639d.Z2(y0.f.f18037c);
        }
    }

    public static void h(int i2) {
        o1.j.b(o1.l.a(), f9736p, i2 * 1000);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:5922:0x34e6  */
    /* JADX WARN: Switch 'out' block B:5922:0x34e6 for B:13:0x005f already processed. Defaulting to fallback option. */
    /* JADX WARN: Switch 'out' block B:5922:0x34e6 for B:8:0x0051 already processed. Defaulting to fallback option. */
    public static lt h0(int i2) {
        int i3 = i2 & 65535;
        int i4 = (i2 >> 16) & 65535;
        Log.e("CAN", "getCanbusById Canbus ID = " + i3 + " carId = " + i4 + "  iTestID = " + f9721a);
        switch (i3) {
            case 0:
                if (i4 == 0 || i4 == 3) {
                    return new k0.a();
                }
                break;
            case 1:
                break;
            case 2:
                return new module.canbus.a();
            case 3:
                return new k0.c();
            case 4:
                return new d();
            case 5:
                return new e();
            case 6:
                return new f();
            case 7:
                return new g();
            case 8:
                return new h();
            case 9:
                return new i();
            case 10:
                return new j();
            case 11:
                return new k();
            case 12:
                return new l();
            case 13:
                return new m();
            case 14:
                return new n();
            case 15:
                return new o();
            case 16:
                return new p();
            case 17:
                return new q();
            case 18:
                return new r();
            case 19:
                return new s();
            case 20:
                return new t();
            case 21:
                return new u();
            case 22:
                return new v();
            case 23:
                return new w();
            case 24:
                return new x();
            case 25:
                return new y();
            default:
                switch (i3) {
                    case 27:
                        return new z();
                    case 28:
                        return new a0();
                    case 29:
                        return new b0();
                    case 30:
                        return new c0();
                    case 31:
                        return new module.canbus.b();
                    case 32:
                        return new d0();
                    case 33:
                        return new e0();
                    case 34:
                        return new f0();
                    case 35:
                        return new g0();
                    case 36:
                        return new h0();
                    case 37:
                        return new i0();
                    case 38:
                        return new j0();
                    case 39:
                        return new k0();
                    case 40:
                        return (i4 == 5 || i4 == 6) ? new l0() : new m0();
                    case 41:
                        return new n0();
                    case 42:
                        return new o0();
                    case 43:
                        return new p0();
                    case 44:
                        return new q0();
                    case 45:
                        return new r0();
                    case 46:
                        return new s0();
                    case 47:
                        return new t0();
                    case 48:
                        return new v();
                    case 49:
                        return new n();
                    case 50:
                        return new u0();
                    case 51:
                        if (i4 != 40) {
                            return new module.canbus.c();
                        }
                        break;
                    case 52:
                        break;
                    case 53:
                        return new w0();
                    case 54:
                        return new x0();
                    case 55:
                        return new module.canbus.d();
                    case 56:
                        return new y0();
                    case 57:
                        return new z0();
                    case 58:
                        return new a1();
                    case 59:
                        return new b1();
                    case 60:
                        return new c1();
                    case 61:
                        return new d1();
                    case 62:
                        return new e1();
                    default:
                        switch (i3) {
                            case 64:
                                return new g1();
                            case 65:
                                return new h1();
                            case 66:
                                return new module.canbus.e();
                            case 67:
                                return new i1();
                            case 68:
                                return new j1();
                            case 69:
                                return new k1();
                            case 70:
                                return new l1();
                            case 71:
                                return new m1();
                            case 72:
                                return new n1();
                            case 73:
                                return new o1();
                            case 74:
                                return new p1();
                            case 75:
                                return new q1();
                            case 76:
                                return new r1();
                            case 77:
                                return new s1();
                            case 78:
                                return new t1();
                            case 79:
                                return new u1();
                            case 80:
                                return new module.canbus.f();
                            case 81:
                                return new v1();
                            case 82:
                                return new w1();
                            case 83:
                                return new x1();
                            case 84:
                                return new y1();
                            case 85:
                                return new z1();
                            case 86:
                                return new a2();
                            case 87:
                                return new b2();
                            case 88:
                                return new c2();
                            case 89:
                                return new d2();
                            case 90:
                                return new e2();
                            case 91:
                                return new f2();
                            case 92:
                                return new g2();
                            case 93:
                                return new h2();
                            case 94:
                                return new i2();
                            case 95:
                                return new j2();
                            case 96:
                                return new k2();
                            case 97:
                                return new l2();
                            case 98:
                                return new m2();
                            case 99:
                                return new n2();
                            case 100:
                                return new o2();
                            case 101:
                                return new p2();
                            case 102:
                                return new q2();
                            case 103:
                                return new r2();
                            case 104:
                                return new s2();
                            case 105:
                                return new t2();
                            case 106:
                                return new u2();
                            case 107:
                                return new v2();
                            case 108:
                                return new w2();
                            case 109:
                                return new x2();
                            case 110:
                                return new y2();
                            case 111:
                                return new z2();
                            case 112:
                                return new a3();
                            case 113:
                                return new b3();
                            case 114:
                                return new c3();
                            case 115:
                                return new n();
                            case 116:
                                return new v();
                            case 117:
                                return new module.canbus.g();
                            case 118:
                                return new d3();
                            case 119:
                                return new module.canbus.h();
                            case 120:
                                return new e3();
                            case 121:
                                return new module.canbus.i();
                            case 122:
                                return new f3();
                            case 123:
                                return new g3();
                            case 124:
                                return new h3();
                            case 125:
                                return new i3();
                            case 126:
                                return new j3();
                            case 127:
                                return new k3();
                            case 128:
                                return new l3();
                            case 129:
                                return new m3();
                            case 130:
                                return new n3();
                            case 131:
                                return new o3();
                            case 132:
                                if (i4 == 0 || i4 == 4 || i4 == 5 || i4 == 3) {
                                    return new r3();
                                }
                                if (i4 == 1) {
                                    return new p3();
                                }
                                if (i4 == 2) {
                                    return new q3();
                                }
                                return new s3();
                            case 133:
                                return new s3();
                            case 134:
                                return new t3();
                            case 135:
                                return new u3();
                            case 136:
                                return new module.canbus.j();
                            case 137:
                                return new v3();
                            case 138:
                                return new w3();
                            case 139:
                                return i4 == 7 ? new y3() : new x3();
                            case 140:
                                return new z3();
                            case 141:
                                return new a4();
                            case 142:
                                return new b4();
                            case 143:
                                return new c4();
                            case 144:
                                return new d4();
                            case 145:
                                return new e4();
                            case 146:
                                return new f4();
                            case 147:
                                return new g4();
                            case 148:
                                return new h4();
                            case 149:
                                return new i4();
                            case 150:
                                return new j4();
                            case 151:
                                if (i4 == 3 || i4 == 4) {
                                    return new l4();
                                }
                                if (i4 == 2 || i4 == 6) {
                                    return new k4();
                                }
                                return i4 == 5 ? new n4() : new m4();
                            case 152:
                                return new o4();
                            case 153:
                                return new p4();
                            case 154:
                                return new q4();
                            case 155:
                                return new r4();
                            case 156:
                                return new s4();
                            case 157:
                                return new t4();
                            case 158:
                                return new u4();
                            case 159:
                                return new v4();
                            case 160:
                                return new w4();
                            case 161:
                                return new x4();
                            case 162:
                                return new module.canbus.k();
                            case 163:
                                return new y4();
                            case 164:
                                return new z4();
                            case 165:
                                return new a5();
                            case 166:
                                return new b5();
                            case 167:
                                return new c5();
                            case 168:
                                return new module.canbus.l();
                            case 169:
                                return new d5();
                            case 170:
                                return new e5();
                            case 171:
                                return new f5();
                            case 172:
                                return new g5();
                            case 173:
                                return new h5();
                            case 174:
                                return new i5();
                            case 175:
                                return new j5();
                            case 176:
                                return new k5();
                            case 177:
                                return new l5();
                            case 178:
                                return (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4) ? new n5() : new m5();
                            case 179:
                                return new o5();
                            case 180:
                                return new p5();
                            case 181:
                                return new q5();
                            case 182:
                                return new r5();
                            case 183:
                                return new s5();
                            case 184:
                                return new t5();
                            case 185:
                                return new u5();
                            case 186:
                                return new v5();
                            case 187:
                                return new w5();
                            case 188:
                                return new x5();
                            case 189:
                                return new y5();
                            case 190:
                                return new z5();
                            case 191:
                                return new a6();
                            case 192:
                                return new b6();
                            case 193:
                                return new c6();
                            case 194:
                                return new module.canbus.m();
                            case 195:
                                return new d6();
                            case 196:
                                return new e6();
                            case 197:
                                return new f6();
                            case 198:
                                return new g6();
                            case 199:
                                return new h6();
                            case 200:
                                return new i6();
                            case 201:
                                return new j6();
                            case 202:
                                return new k6();
                            case 203:
                                return new l6();
                            case 204:
                                return new m6();
                            case 205:
                                return new n6();
                            case 206:
                                return new o6();
                            case 207:
                                return new p6();
                            case 208:
                                return new q6();
                            case 209:
                                return new r6();
                            case 210:
                                return new s6();
                            case 211:
                                return new t6();
                            case 212:
                                return new u6();
                            case 213:
                                return new v6();
                            case 214:
                                return new w6();
                            case 215:
                                return new x6();
                            case 216:
                                return new y6();
                            case 217:
                                return new z6();
                            case 218:
                                return new a7();
                            case 219:
                                return new b7();
                            case 220:
                                return new c7();
                            case 221:
                                return new d7();
                            case 222:
                                return new e7();
                            case 223:
                                return new f7();
                            case 224:
                                return new g7();
                            case 225:
                                return new h7();
                            case 226:
                                return new i7();
                            case 227:
                                return new j7();
                            case 228:
                                return new k7();
                            case 229:
                                return new l7();
                            case 230:
                                return new m7();
                            case 231:
                                return new n7();
                            case 232:
                                return new o7();
                            case 233:
                                return new module.canbus.n();
                            case 234:
                                return new p7();
                            case 235:
                                return new q7();
                            case 236:
                                return new r7();
                            case 237:
                                return new s7();
                            case 238:
                                return new t7();
                            case 239:
                                return new u7();
                            case 240:
                                return new v7();
                            case i.a.Theme_actionModeShareDrawable /* 241 */:
                                return new w7();
                            case i.a.Theme_actionModeFindDrawable /* 242 */:
                                return new x7();
                            case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                                return new y7();
                            case i.a.Theme_actionModePopupWindowStyle /* 244 */:
                                return new module.canbus.o();
                            case i.a.Theme_preferenceFragmentStyle /* 245 */:
                                return new z7();
                            case i.a.Theme_preferencePanelStyle /* 246 */:
                                return new a8();
                            case i.a.Theme_preferenceHeaderPanelStyle /* 247 */:
                                return new b8();
                            case 248:
                                return new c8();
                            case 249:
                                return new d8();
                            case 250:
                                return new e8();
                            case 251:
                                return new module.canbus.p();
                            case 252:
                                return new f8();
                            case i.a.Theme_dialogTitleDecorLayout /* 253 */:
                                return new g8();
                            case 254:
                                return new h8();
                            case 255:
                                return (i4 == 2 || i4 == 3 || i4 == 6 || i4 == 7 || i4 == 8 || i4 == 28 || i4 == 29 || i4 == 30) ? new i8() : new j8();
                            case 256:
                                return new k8();
                            case 257:
                                return i4 == 2 ? new m8() : new l8();
                            case 258:
                                return new n8();
                            case 259:
                                return new o8();
                            case 260:
                                return new p8();
                            case 261:
                                return new q8();
                            case 262:
                                return new r8();
                            case 263:
                                return new s8();
                            case 264:
                                return new t8();
                            case 265:
                                return new u8();
                            case 266:
                                return new module.canbus.q();
                            case 267:
                                return new v8();
                            case 268:
                                return new w8();
                            case i.a.Theme_findOnPageNextDrawable /* 269 */:
                                return new x8();
                            case i.a.Theme_findOnPagePreviousDrawable /* 270 */:
                                return new y8();
                            case 271:
                                return new z8();
                            case BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA /* 272 */:
                                return new a9();
                            case 273:
                                return new b9();
                            case 274:
                                return new c9();
                            case 275:
                                return new d9();
                            case BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA /* 276 */:
                                return new e9();
                            case 277:
                                return new f9();
                            case 278:
                                return new g9();
                            case 279:
                                return new h9();
                            case BluetoothClass.Device.COMPUTER_WEARABLE /* 280 */:
                                return new i9();
                            case 281:
                                return new j9();
                            case 282:
                                return new k9();
                            case 283:
                                return new l9();
                            case 284:
                                return new m9();
                            case 285:
                                return new n9();
                            case 286:
                                return new o9();
                            case 287:
                                return new p9();
                            case MediaProperties.HEIGHT_288 /* 288 */:
                                return new q9();
                            case 289:
                                return new r9();
                            case 290:
                                return (i4 == 5 || i4 == 6 || i4 == 7 || i4 == 9 || i4 == 10 || i4 == 11 || i4 == 13 || i4 == 14 || i4 == 15) ? new t9() : new s9();
                            case 291:
                                return new u9();
                            case 292:
                                return new v9();
                            case 293:
                                return new w9();
                            case 294:
                                return i4 == 0 ? new x9() : new module.canbus.r();
                            case 295:
                                return new y9();
                            case 296:
                                return new z9();
                            case 297:
                                return new aa();
                            case 298:
                                return new module.canbus.s();
                            case 299:
                                return new ba();
                            case 300:
                                return new ca();
                            case TextTrackRegion.SCROLL_VALUE_SCROLL_UP /* 301 */:
                                return new da();
                            case 302:
                                return new ea();
                            case 303:
                                return new fa();
                            case 304:
                                return new ga();
                            case 305:
                                return new ha();
                            case 306:
                                return new ia();
                            case 307:
                                return new ja();
                            case 308:
                                return new ka();
                            case 309:
                                return new la();
                            case 310:
                                return new ma();
                            case 311:
                                return new na();
                            case 312:
                                return new oa();
                            case 313:
                                return new pa();
                            case 314:
                                return new qa();
                            case 315:
                                return new ra();
                            case 316:
                                return new sa();
                            case 317:
                                return new ta();
                            case 318:
                                return new ua();
                            case 319:
                                return new va();
                            case 320:
                                return new module.canbus.t();
                            case 321:
                                return (i4 == 10 || i4 == 22) ? new wa() : new xa();
                            case 322:
                                return new module.canbus.u();
                            case 323:
                                return new module.canbus.v();
                            case 324:
                                return new ya();
                            case 325:
                                return new za();
                            case 326:
                                return new ab();
                            case 327:
                                return new bb();
                            case 328:
                                return new module.canbus.w();
                            case 329:
                                return new cb();
                            case 330:
                                return new db();
                            case 331:
                                return new eb();
                            case 332:
                                return new fb();
                            case 333:
                                return new gb();
                            case 334:
                                return new hb();
                            case 335:
                                return new ib();
                            case 336:
                                return new jb();
                            case 337:
                                return new kb();
                            case 338:
                                return new lb();
                            case 339:
                                return new mb();
                            case 340:
                                return new nb();
                            case 341:
                                return new ob();
                            case 342:
                                return new pb();
                            case 343:
                                return new qb();
                            case 344:
                                return new rb();
                            case 345:
                                return new sb();
                            case 346:
                                return new tb();
                            case 347:
                                return new ub();
                            case 348:
                            case 363:
                                return new vb();
                            case 349:
                                return new wb();
                            case SpellChecker.WORD_ITERATOR_INTERVAL /* 350 */:
                                return new xb();
                            case 351:
                                return new yb();
                            case 352:
                                return new zb();
                            case 353:
                                return new ac();
                            case 354:
                                return new module.canbus.x();
                            case 355:
                                return new module.canbus.y();
                            case 356:
                                return new bc();
                            case 357:
                                return new cc();
                            case 358:
                                return new dc();
                            case 359:
                                return new ec();
                            case MediaProperties.HEIGHT_360 /* 360 */:
                                return new module.canbus.z();
                            case 361:
                                return new fc();
                            case 362:
                                return new gc();
                            case 3276820:
                                return new f1();
                            case 6422589:
                                return new hc();
                            default:
                                switch (i3) {
                                    case 365:
                                        return new ic();
                                    case 366:
                                        return new jc();
                                    case 367:
                                        return new kc();
                                    case 368:
                                        return new lc();
                                    case 369:
                                        return new mc();
                                    case 370:
                                        return new nc();
                                    case 371:
                                        return new oc();
                                    case 372:
                                        return new pc();
                                    case 373:
                                        return new qc();
                                    case 374:
                                        return new rc();
                                    case 375:
                                        return new sc();
                                    case 376:
                                        return new tc();
                                    case 377:
                                        return new uc();
                                    case 378:
                                        return new vc();
                                    case 379:
                                        return new wc();
                                    case 380:
                                        return new xc();
                                    case 381:
                                        return new yc();
                                    case 382:
                                        return new zc();
                                    case 383:
                                        return new ad();
                                    case 384:
                                        return new bd();
                                    case 385:
                                        return new cd();
                                    case 386:
                                        return new dd();
                                    case 387:
                                        return new ed();
                                    case 388:
                                        return new fd();
                                    case 389:
                                        return new module.canbus.a0();
                                    case 390:
                                        return new gd();
                                    default:
                                        switch (i3) {
                                            case 392:
                                                return new module.canbus.b0();
                                            case 393:
                                                return new hd();
                                            case 394:
                                                return new module.canbus.c0();
                                            case 395:
                                                if (i4 == 5 || i4 == 11 || i4 == 19 || i4 == 20 || i4 == 31 || i4 == 33 || i4 == 34) {
                                                    return new jd();
                                                }
                                                if (i4 == 29 || i4 == 30 || i4 == 35 || i4 == 36) {
                                                    return new kd();
                                                }
                                                if (i4 == 2 || i4 == 4 || i4 == 22 || i4 == 26) {
                                                    return new md();
                                                }
                                                return (i4 == 0 || i4 == 8 || i4 == 10 || i4 == 14 || i4 == 15 || i4 == 25 || i4 == 28 || i4 == 32 || i4 == 38 || i4 == 39 || i4 == 40 || i4 == 41 || i4 == 42 || i4 == 43 || i4 == 44) ? new ld() : new id();
                                            case 396:
                                                return new nd();
                                            case 397:
                                                return new module.canbus.d0();
                                            case 398:
                                                return i4 == 5 ? new pd() : new od();
                                            case 399:
                                            case 400:
                                                return new qd();
                                            case 401:
                                                return new rd();
                                            case 402:
                                                return new sd();
                                            case 403:
                                                return new td();
                                            case UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL /* 404 */:
                                                return new ud();
                                            case UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL /* 405 */:
                                                return new vd();
                                            case Downloads.Impl.STATUS_NOT_ACCEPTABLE /* 406 */:
                                                return i4 == 1 ? new wd() : new xd();
                                            case 407:
                                                return new yd();
                                            case 408:
                                                if (i4 == 1 || i4 == 2) {
                                                    return new zd();
                                                }
                                            case 409:
                                                return new ae();
                                            case 410:
                                                return new be();
                                            case Downloads.Impl.STATUS_LENGTH_REQUIRED /* 411 */:
                                                return new ce();
                                            case Downloads.Impl.STATUS_PRECONDITION_FAILED /* 412 */:
                                                return new de();
                                            case 413:
                                                return new ee();
                                            case 414:
                                                return new fe();
                                            case 415:
                                                return new module.canbus.e0();
                                            case 416:
                                                return new ge();
                                            case 417:
                                                return i4 == 2 ? new ie() : new he();
                                            case 418:
                                                return new je();
                                            case 419:
                                                return new ke();
                                            case 420:
                                                return new module.canbus.f0();
                                            case 421:
                                                return new le();
                                            case 422:
                                                return new me();
                                            case 423:
                                                return new ne();
                                            case 424:
                                                return i4 == 0 ? new pe() : new oe();
                                            case 425:
                                                if (i4 == 2) {
                                                    return new se();
                                                }
                                                return i4 == 3 ? new qe() : new re();
                                            case 426:
                                                return new te();
                                            case 427:
                                                return new ue();
                                            case 428:
                                                return new ve();
                                            case 429:
                                                return new module.canbus.g0();
                                            case 430:
                                                return new we();
                                            case 431:
                                                return new xe();
                                            case 432:
                                                return new ye();
                                            case 433:
                                                return new ze();
                                            case 434:
                                                return new af();
                                            case 435:
                                                return new bf();
                                            case 436:
                                                return new cf();
                                            case 437:
                                                return new df();
                                            case 438:
                                                return i4 == 5 ? new ef() : new module.canbus.h0();
                                            case 439:
                                                if (i4 == 1) {
                                                    return new aj();
                                                }
                                                if (i4 == 2 || i4 == 3 || i4 == 4) {
                                                    return new yg();
                                                }
                                                if (i4 == 5) {
                                                    return new uf();
                                                }
                                                if (i4 == 6 || i4 == 7) {
                                                    return new bg();
                                                }
                                                if (i4 == 8) {
                                                    return new rf();
                                                }
                                                if (i4 == 9) {
                                                    return new sf();
                                                }
                                                if (i4 == 10) {
                                                    return new vh();
                                                }
                                                if (i4 != 11 && i4 != 12) {
                                                    if (!((i4 == 13) | (i4 == 14)) && i4 != 15) {
                                                        if (i4 == 16) {
                                                            return new xf();
                                                        }
                                                        if (i4 == 17) {
                                                            return new jg();
                                                        }
                                                        if (i4 == 18) {
                                                            return new wg();
                                                        }
                                                        if (i4 == 19 || i4 == 58) {
                                                            return new wf();
                                                        }
                                                        if (i4 == 20) {
                                                            return new ih();
                                                        }
                                                        if (i4 == 21 || i4 == 27 || i4 == 38 || i4 == 39 || i4 == 238 || i4 == 239 || i4 == 108 || i4 == 109 || i4 == 116 || i4 == 172) {
                                                            return new yh();
                                                        }
                                                        if (i4 == 22) {
                                                            return new qf();
                                                        }
                                                        if (i4 == 23) {
                                                            return new gf();
                                                        }
                                                        if (i4 == 24) {
                                                            return new jh();
                                                        }
                                                        if (i4 == 25) {
                                                            return new jf();
                                                        }
                                                        if (i4 == 26) {
                                                            return new xh();
                                                        }
                                                        if (i4 == 28 || i4 == 29 || i4 == 117 || i4 == 118) {
                                                            return new lf();
                                                        }
                                                        if (i4 == 30 || i4 == 193) {
                                                            return new dh();
                                                        }
                                                        if (i4 == 31 || i4 == 60) {
                                                            return new sh();
                                                        }
                                                        if (i4 == 32 || i4 == 123) {
                                                            return new rh();
                                                        }
                                                        if (i4 == 33 || i4 == 34 || i4 == 35 || i4 == 36 || i4 == 115 || i4 == 130 || i4 == 223) {
                                                            return new pi();
                                                        }
                                                        if (i4 == 37 || i4 == 51 || i4 == 133) {
                                                            return new ti();
                                                        }
                                                        if (i4 == 40 || i4 == 41 || i4 == 42 || i4 == 127 || i4 == 128 || i4 == 173 || i4 == 174) {
                                                            return new ii();
                                                        }
                                                        if (i4 == 43 || i4 == 44 || i4 == 45 || i4 == 46) {
                                                            return new fi();
                                                        }
                                                        if (i4 == 47 || i4 == 48 || i4 == 49 || i4 == 50) {
                                                            return new eh();
                                                        }
                                                        if (i4 == 52 || i4 == 95 || i4 == 96 || i4 == 98) {
                                                            return new ch();
                                                        }
                                                        if (i4 == 53 || i4 == 54) {
                                                            return new ig();
                                                        }
                                                        if (i4 == 55) {
                                                            return new vg();
                                                        }
                                                        if (i4 == 56) {
                                                            return new xi();
                                                        }
                                                        if (i4 == 57 || i4 == 103 || i4 == 198) {
                                                            return new xg();
                                                        }
                                                        if (i4 == 59) {
                                                            return new kg();
                                                        }
                                                        if (i4 == 61) {
                                                            return new rg();
                                                        }
                                                        if (i4 == 62) {
                                                            return new ri();
                                                        }
                                                        if (i4 == 63) {
                                                            return new tg();
                                                        }
                                                        if (i4 == 64) {
                                                            return new Cif();
                                                        }
                                                        if (i4 == 65) {
                                                            return new gi();
                                                        }
                                                        if (i4 == 66) {
                                                            return new ji();
                                                        }
                                                        if (i4 == 67 || i4 == 113 || i4 == 114 || i4 == 126 || i4 == 175) {
                                                            return new ei();
                                                        }
                                                        if (i4 == 68 || i4 == 69 || i4 == 176 || i4 == 177 || i4 == 178 || i4 == 179 || i4 == 180 || i4 == 181 || i4 == 182 || i4 == 183 || i4 == 184) {
                                                            return new di();
                                                        }
                                                        if (i4 == 70) {
                                                            return new ci();
                                                        }
                                                        if (i4 == 71) {
                                                            return new fg();
                                                        }
                                                        if (i4 == 72) {
                                                            return new sg();
                                                        }
                                                        if (i4 == 73 || i4 == 74 || i4 == 94) {
                                                            return new bi();
                                                        }
                                                        if (i4 == 75 || i4 == 82 || i4 == 83 || i4 == 84 || i4 == 85 || i4 == 86 || i4 == 87 || i4 == 88 || i4 == 89 || i4 == 90 || i4 == 91 || i4 == 131 || i4 == 132 || i4 == 171) {
                                                            return new li();
                                                        }
                                                        if (i4 == 76 || i4 == 77 || i4 == 78 || i4 == 79 || i4 == 80 || i4 == 81) {
                                                            return new yi();
                                                        }
                                                        if (i4 == 92) {
                                                            return new hi();
                                                        }
                                                        if (i4 == 93 || i4 == 99 || i4 == 107 || i4 == 119) {
                                                            return new ug();
                                                        }
                                                        if (i4 == 97) {
                                                            return new gg();
                                                        }
                                                        if (i4 == 100) {
                                                            return new mh();
                                                        }
                                                        if (i4 == 101) {
                                                            return new hf();
                                                        }
                                                        if (i4 == 102) {
                                                            return new qg();
                                                        }
                                                        if (i4 == 104 || i4 == 105) {
                                                            return new mg();
                                                        }
                                                        if (i4 == 106) {
                                                            return new oi();
                                                        }
                                                        if (i4 == 110) {
                                                            return new cg();
                                                        }
                                                        if (i4 == 111 || i4 == 112 || i4 == 124 || i4 == 125) {
                                                            return new gh();
                                                        }
                                                        if (i4 == 120) {
                                                            return new pg();
                                                        }
                                                        if (i4 == 121) {
                                                            return new nh();
                                                        }
                                                        if (i4 == 122 || i4 == 162 || i4 == 163 || i4 == 164 || i4 == 165 || i4 == 221) {
                                                            return new of();
                                                        }
                                                        if (i4 == 129) {
                                                            return new ai();
                                                        }
                                                        if (i4 == 134) {
                                                            return new si();
                                                        }
                                                        if (i4 == 135) {
                                                            return new pf();
                                                        }
                                                        if (i4 == 136 || i4 == 143 || i4 == 144 || i4 == 145 || i4 == 146 || i4 == 147 || i4 == 156 || i4 == 157 || i4 == 158 || i4 == 252) {
                                                            return new ni();
                                                        }
                                                        if (i4 == 138) {
                                                            return new ff();
                                                        }
                                                        if (i4 == 139 || i4 == 245) {
                                                            return new th();
                                                        }
                                                        if (i4 == 140) {
                                                            return new qi();
                                                        }
                                                        if (i4 == 141) {
                                                            return new ah();
                                                        }
                                                        if (i4 == 142) {
                                                            return new qh();
                                                        }
                                                        if (i4 == 148 || i4 == 149 || i4 == 150 || i4 == 151 || i4 == 152 || i4 == 153 || i4 == 154) {
                                                            return new zh();
                                                        }
                                                        if (i4 == 155) {
                                                            return new hg();
                                                        }
                                                        if (i4 == 159 || i4 == 160) {
                                                            return new vf();
                                                        }
                                                        if (i4 == 161) {
                                                            return new og();
                                                        }
                                                        if (i4 == 166 || i4 == 167 || i4 == 168) {
                                                            return new nf();
                                                        }
                                                        if (i4 == 169 || i4 == 249 || i4 == 250) {
                                                            return new kf();
                                                        }
                                                        if (i4 == 170) {
                                                            return new mf();
                                                        }
                                                        if (i4 == 185 || i4 == 186 || i4 == 187 || i4 == 188 || i4 == 189 || i4 == 190 || i4 == 191 || i4 == 192) {
                                                            return new bj();
                                                        }
                                                        if (i4 == 194) {
                                                            return new bh();
                                                        }
                                                        if (i4 == 195 || i4 == 196) {
                                                            return new eg();
                                                        }
                                                        if (i4 == 197) {
                                                            return new dg();
                                                        }
                                                        if (i4 == 199 || i4 == 200 || i4 == 201 || i4 == 202 || i4 == 203 || i4 == 204 || i4 == 205 || i4 == 206) {
                                                            return new oh();
                                                        }
                                                        if (i4 == 207) {
                                                            return new fh();
                                                        }
                                                        if (i4 == 208 || i4 == 209 || i4 == 210 || i4 == 211) {
                                                            return new wi();
                                                        }
                                                        if (i4 == 212 || i4 == 240 || i4 == 241) {
                                                            return new mi();
                                                        }
                                                        if (i4 == 213 || i4 == 214) {
                                                            return new zf();
                                                        }
                                                        if (i4 == 215 || i4 == 216 || i4 == 217 || i4 == 218 || i4 == 219) {
                                                            return new wh();
                                                        }
                                                        if (i4 == 220) {
                                                            return new tf();
                                                        }
                                                        if (i4 == 222) {
                                                            return new ag();
                                                        }
                                                        if (i4 == 224 || i4 == 225 || i4 == 226 || i4 == 227 || i4 == 228 || i4 == 229 || i4 == 230 || i4 == 231 || i4 == 232) {
                                                            return new ki();
                                                        }
                                                        if (i4 == 233) {
                                                            return new zg();
                                                        }
                                                        if (i4 == 234) {
                                                            return new lg();
                                                        }
                                                        if (i4 == 235 || i4 == 236) {
                                                            return new vi();
                                                        }
                                                        if (i4 == 237) {
                                                            return new ui();
                                                        }
                                                        if (i4 == 242 || i4 == 243 || i4 == 244) {
                                                            return new yf();
                                                        }
                                                        if (i4 == 246) {
                                                            return new ng();
                                                        }
                                                        if (i4 == 247) {
                                                            return new hh();
                                                        }
                                                        if (i4 == 248) {
                                                            return new cj();
                                                        }
                                                        if (i4 == 251) {
                                                            return new ph();
                                                        }
                                                        if (i4 == 253) {
                                                            return new kh();
                                                        }
                                                        return i4 == 254 ? new lh() : new zi();
                                                    }
                                                }
                                                return new uh();
                                            default:
                                                switch (i3) {
                                                    case 442:
                                                        if (i4 == 1) {
                                                            return new ej();
                                                        }
                                                        if (i4 == 2 || i4 == 3 || i4 == 4 || i4 == 5 || i4 == 6 || i4 == 7 || i4 == 8) {
                                                            return new hj();
                                                        }
                                                        if (i4 == 9) {
                                                            return new jj();
                                                        }
                                                        if (i4 == 10) {
                                                            return new ij();
                                                        }
                                                        if (i4 == 11 || i4 == 14 || i4 == 15 || i4 == 16 || i4 == 17 || i4 == 18 || i4 == 19 || i4 == 20 || i4 == 21) {
                                                            return new fj();
                                                        }
                                                        if (i4 == 12) {
                                                            return new gj();
                                                        }
                                                        return i4 == 13 ? new kj() : new dj();
                                                    case 443:
                                                        if (i4 == 0 || i4 == 107 || i4 == 133 || i4 == 134 || i4 == 135 || i4 == 136 || i4 == 137 || i4 == 138 || i4 == 139 || i4 == 140 || i4 == 141 || i4 == 219 || i4 == 220 || i4 == 226 || i4 == 227) {
                                                            return new ck();
                                                        }
                                                        if (i4 == 2) {
                                                            return new vj();
                                                        }
                                                        if (i4 == 3 || i4 == 108) {
                                                            return new ok();
                                                        }
                                                        if (i4 == 4) {
                                                            return new pk();
                                                        }
                                                        if (i4 == 5) {
                                                            return new qk();
                                                        }
                                                        if (i4 == 6 || i4 == 7 || i4 == 8 || i4 == 9 || i4 == 10 || i4 == 11 || i4 == 12 || i4 == 13 || i4 == 14 || i4 == 15 || i4 == 16 || i4 == 233 || i4 == 234 || i4 == 239) {
                                                            return new xj();
                                                        }
                                                        if (i4 == 17 || i4 == 86 || i4 == 87 || i4 == 88 || i4 == 89) {
                                                            return new sj();
                                                        }
                                                        if (i4 == 18 || i4 == 72 || i4 == 75) {
                                                            return new lj();
                                                        }
                                                        if (i4 == 19 || i4 == 54 || i4 == 217 || i4 == 218) {
                                                            return new oj();
                                                        }
                                                        if (i4 == 20) {
                                                            return new uj();
                                                        }
                                                        if (i4 == 21 || i4 == 22 || i4 == 24) {
                                                            return new kk();
                                                        }
                                                        if (i4 == 23 || i4 == 62 || i4 == 63 || i4 == 64 || i4 == 65 || i4 == 66 || i4 == 70 || i4 == 81 || i4 == 93 || i4 == 109 || i4 == 110 || i4 == 132 || i4 == 232) {
                                                            return new nk();
                                                        }
                                                        if (i4 == 25 || i4 == 27 || i4 == 28 || i4 == 67 || i4 == 68 || i4 == 69 || i4 == 90 || i4 == 91 || i4 == 94 || i4 == 95 || i4 == 96 || i4 == 97 || i4 == 231 || i4 == 237 || i4 == 238) {
                                                            return new nj();
                                                        }
                                                        if (i4 == 26 || i4 == 119) {
                                                            return new ak();
                                                        }
                                                        if (i4 == 29) {
                                                            return new mj();
                                                        }
                                                        if ((i4 >= 30 && i4 <= 53) || i4 == 59 || i4 == 98 || i4 == 99 || i4 == 152 || i4 == 153 || i4 == 154 || i4 == 155 || i4 == 221 || i4 == 222 || i4 == 230) {
                                                            return new module.canbus.i0();
                                                        }
                                                        if (i4 == 55 || i4 == 56 || i4 == 57 || i4 == 60 || i4 == 61 || i4 == 73 || i4 == 74 || i4 == 84 || i4 == 100 || i4 == 101 || i4 == 104 || i4 == 120 || i4 == 121 || i4 == 122 || i4 == 123 || i4 == 124 || i4 == 125 || i4 == 126 || i4 == 127 || i4 == 128 || i4 == 129 || i4 == 130 || i4 == 185 || i4 == 186 || i4 == 187 || i4 == 188 || i4 == 189 || i4 == 190 || i4 == 191 || i4 == 192 || i4 == 193 || i4 == 194 || i4 == 195 || i4 == 196 || i4 == 197 || i4 == 198 || i4 == 199 || i4 == 200 || i4 == 201 || i4 == 202 || i4 == 203 || i4 == 204 || i4 == 205 || i4 == 206 || i4 == 207 || i4 == 215) {
                                                            return new pj();
                                                        }
                                                        if (i4 == 58) {
                                                            return new zj();
                                                        }
                                                        if (i4 == 71) {
                                                            return new mk();
                                                        }
                                                        if (i4 == 76 || i4 == 77 || i4 == 78 || i4 == 79 || i4 == 85 || i4 == 102 || i4 == 103 || i4 == 235 || i4 == 236 || i4 == 240 || i4 == 241 || i4 == 242 || i4 == 243 || i4 == 244 || i4 == 245 || i4 == 246 || i4 == 247 || i4 == 248 || i4 == 249 || i4 == 250) {
                                                            return new qj();
                                                        }
                                                        if (i4 == 80) {
                                                            return new bk();
                                                        }
                                                        if (i4 == 82 || i4 == 83 || i4 == 182 || i4 == 183 || i4 == 184) {
                                                            return new jk();
                                                        }
                                                        if (i4 == 92 || i4 == 147 || i4 == 148 || i4 == 149 || i4 == 150 || i4 == 151) {
                                                            return new yj();
                                                        }
                                                        if (i4 == 105) {
                                                            return new gk();
                                                        }
                                                        if (i4 == 106) {
                                                            return new lk();
                                                        }
                                                        if (i4 == 107) {
                                                            return new ck();
                                                        }
                                                        if (i4 == 111 || i4 == 112 || i4 == 113 || i4 == 114 || i4 == 115 || i4 == 116 || i4 == 159 || i4 == 160 || i4 == 161 || i4 == 162 || i4 == 163 || i4 == 164 || i4 == 165 || i4 == 166 || i4 == 167 || i4 == 168 || i4 == 169 || i4 == 170 || i4 == 171 || i4 == 172 || i4 == 173 || i4 == 174 || i4 == 175 || i4 == 176) {
                                                            return new dk();
                                                        }
                                                        if (i4 == 117 || i4 == 118) {
                                                            return new rk();
                                                        }
                                                        if (i4 == 131) {
                                                            return new rj();
                                                        }
                                                        if (i4 == 142 || i4 == 143 || i4 == 144 || i4 == 145 || i4 == 146 || i4 == 251 || i4 == 252 || i4 == 253 || i4 == 254) {
                                                            return new fk();
                                                        }
                                                        if (i4 == 156 || i4 == 157 || i4 == 158) {
                                                            return new ek();
                                                        }
                                                        if (i4 == 177 || i4 == 178 || i4 == 179 || i4 == 180 || i4 == 181) {
                                                            return new ik();
                                                        }
                                                        if (i4 == 208 || i4 == 209 || i4 == 210 || i4 == 211 || i4 == 212 || i4 == 213 || i4 == 214) {
                                                            return new tj();
                                                        }
                                                        if (i4 == 223 || i4 == 224 || i4 == 225) {
                                                            return new wj();
                                                        }
                                                        return (i4 == 228 || i4 == 229) ? new hk() : new ck();
                                                    case 444:
                                                        if (i4 == 0 || i4 == 1 || i4 == 2) {
                                                            return new ek();
                                                        }
                                                        if (i4 == 3 || i4 == 4 || i4 == 11 || i4 == 13 || i4 == 14 || i4 == 15 || i4 == 16 || i4 == 17 || i4 == 18 || i4 == 19 || i4 == 20 || i4 == 28 || i4 == 29 || i4 == 42 || i4 == 47 || i4 == 50) {
                                                            return new ak();
                                                        }
                                                        if (i4 == 5 || i4 == 6 || i4 == 30 || i4 == 31 || i4 == 32 || i4 == 33 || i4 == 34 || i4 == 35 || i4 == 36 || i4 == 37 || i4 == 45 || i4 == 46 || i4 == 49 || i4 == 51 || i4 == 52 || i4 == 53 || i4 == 54 || i4 == 56 || i4 == 57 || i4 == 61 || i4 == 62 || i4 == 109 || i4 == 114 || i4 == 115 || i4 == 116 || i4 == 117 || i4 == 183 || i4 == 184 || i4 == 185 || i4 == 186 || i4 == 187 || i4 == 188 || i4 == 189 || i4 == 190 || i4 == 191 || i4 == 192 || i4 == 193 || i4 == 194 || i4 == 195 || i4 == 196 || i4 == 197 || i4 == 198 || i4 == 199 || i4 == 200 || i4 == 201 || i4 == 202 || i4 == 203 || i4 == 204 || i4 == 205 || i4 == 206 || i4 == 207 || i4 == 208 || i4 == 209 || i4 == 210 || i4 == 211 || i4 == 212 || i4 == 213 || i4 == 214 || i4 == 215 || i4 == 216 || i4 == 217 || i4 == 218 || i4 == 219 || i4 == 220 || i4 == 221 || i4 == 222 || i4 == 223 || i4 == 224 || i4 == 225 || i4 == 226 || i4 == 228 || i4 == 229 || i4 == 230 || i4 == 231 || i4 == 232 || i4 == 233 || i4 == 234 || i4 == 235 || i4 == 236 || i4 == 237 || i4 == 238 || i4 == 239 || i4 == 240 || i4 == 241 || i4 == 243 || i4 == 244 || i4 == 245 || i4 == 246 || i4 == 247 || i4 == 248 || i4 == 249 || i4 == 250 || i4 == 251 || i4 == 252 || i4 == 253 || i4 == 254) {
                                                            return new module.canbus.i0();
                                                        }
                                                        if (i4 == 7 || i4 == 84 || i4 == 85 || i4 == 86) {
                                                            return new cl();
                                                        }
                                                        if (i4 == 8 || i4 == 9 || i4 == 10 || i4 == 43 || i4 == 93 || i4 == 99 || i4 == 106 || i4 == 108) {
                                                            return new rk();
                                                        }
                                                        if (i4 == 12) {
                                                            return new wk();
                                                        }
                                                        if (i4 == 21 || i4 == 22 || i4 == 23 || i4 == 24 || i4 == 25 || i4 == 26) {
                                                            return new yk();
                                                        }
                                                        if (i4 == 27) {
                                                            return new vk();
                                                        }
                                                        if (i4 == 38 || i4 == 39 || i4 == 40) {
                                                            return new dl();
                                                        }
                                                        if (i4 == 41) {
                                                            return new qj();
                                                        }
                                                        if (i4 == 44) {
                                                            return new ek();
                                                        }
                                                        if (i4 == 48 || i4 == 64) {
                                                            return new nk();
                                                        }
                                                        if (i4 == 55 || i4 == 87) {
                                                            return new xk();
                                                        }
                                                        if (i4 == 58 || i4 == 59) {
                                                            return new yj();
                                                        }
                                                        if (i4 == 60) {
                                                            return new ik();
                                                        }
                                                        if (i4 == 63) {
                                                            return new bl();
                                                        }
                                                        if (i4 == 65) {
                                                            return new al();
                                                        }
                                                        if (i4 == 66) {
                                                            return new zk();
                                                        }
                                                        if (i4 == 67 || i4 == 68 || i4 == 69 || i4 == 70) {
                                                            return new sj();
                                                        }
                                                        if (i4 == 71 || i4 == 72 || i4 == 73 || i4 == 74 || i4 == 75 || i4 == 76 || i4 == 77 || i4 == 78 || i4 == 79 || i4 == 80 || i4 == 81 || i4 == 82 || i4 == 102 || i4 == 103 || i4 == 104 || i4 == 105 || i4 == 156 || i4 == 157 || i4 == 158 || i4 == 159 || i4 == 160 || i4 == 161 || i4 == 162 || i4 == 163 || i4 == 164 || i4 == 165 || i4 == 166 || i4 == 167 || i4 == 168 || i4 == 169 || i4 == 170 || i4 == 171 || i4 == 172 || i4 == 173 || i4 == 174 || i4 == 175 || i4 == 176 || i4 == 177 || i4 == 178 || i4 == 179 || i4 == 180 || i4 == 181 || i4 == 182) {
                                                            return new pj();
                                                        }
                                                        if (i4 == 83 || i4 == 88) {
                                                            return new fk();
                                                        }
                                                        if (i4 == 89 || i4 == 90 || i4 == 91 || i4 == 92) {
                                                            return new hk();
                                                        }
                                                        if (i4 == 94 || i4 == 95 || i4 == 96) {
                                                            return new tk();
                                                        }
                                                        if (i4 == 97 || i4 == 98 || i4 == 100) {
                                                            return new ck();
                                                        }
                                                        if (i4 == 101) {
                                                            return new uk();
                                                        }
                                                        if (i4 == 107) {
                                                            return new sk();
                                                        }
                                                        if (i4 == 110) {
                                                            return new lk();
                                                        }
                                                        if (i4 == 111 || i4 == 112 || i4 == 113 || i4 == 118 || i4 == 119 || i4 == 120 || i4 == 121 || i4 == 122 || i4 == 123 || i4 == 124 || i4 == 125 || i4 == 126 || i4 == 127 || i4 == 128 || i4 == 129 || i4 == 130 || i4 == 131 || i4 == 132 || i4 == 133 || i4 == 134 || i4 == 135 || i4 == 136 || i4 == 137 || i4 == 138 || i4 == 139 || i4 == 140 || i4 == 141 || i4 == 142 || i4 == 143 || i4 == 144 || i4 == 145 || i4 == 146 || i4 == 147 || i4 == 148 || i4 == 149 || i4 == 150 || i4 == 151 || i4 == 152 || i4 == 153 || i4 == 154 || i4 == 155) {
                                                            return new qj();
                                                        }
                                                    case 446:
                                                        if (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 20 || i4 == 41 || i4 == 59) {
                                                            return new module.canbus.i0();
                                                        }
                                                        if (i4 == 4 || i4 == 5 || i4 == 6 || i4 == 10 || i4 == 14 || i4 == 21 || i4 == 26 || i4 == 27 || i4 == 28 || i4 == 42 || i4 == 43 || i4 == 52 || i4 == 53) {
                                                            return new ak();
                                                        }
                                                        if (i4 == 7 || i4 == 8 || i4 == 18 || i4 == 19) {
                                                            return new fk();
                                                        }
                                                        if (i4 == 9) {
                                                            return new sj();
                                                        }
                                                        if (i4 == 11 || i4 == 12 || i4 == 54 || i4 == 55 || i4 == 56) {
                                                            return new fl();
                                                        }
                                                        if (i4 == 13) {
                                                            return new lk();
                                                        }
                                                        if (i4 == 15 || i4 == 16 || i4 == 17 || i4 == 22 || i4 == 23 || i4 == 24 || i4 == 25 || i4 == 49 || i4 == 50 || i4 == 51) {
                                                            return new sk();
                                                        }
                                                        if (i4 == 29 || i4 == 30 || i4 == 31 || i4 == 32 || i4 == 33 || i4 == 34 || i4 == 35 || i4 == 36 || i4 == 37 || i4 == 38 || i4 == 39) {
                                                            return new rk();
                                                        }
                                                        if (i4 == 40) {
                                                            return new gl();
                                                        }
                                                        if (i4 == 44 || i4 == 45 || i4 == 46) {
                                                            return new qj();
                                                        }
                                                        if (i4 == 47) {
                                                            return new ik();
                                                        }
                                                        if (i4 == 48) {
                                                            return new ek();
                                                        }
                                                        if (i4 == 57) {
                                                            return new nj();
                                                        }
                                                        if (i4 == 58) {
                                                            return new lj();
                                                        }
                                                    case 445:
                                                        if (i4 == 1) {
                                                            return new el();
                                                        }
                                                    case 447:
                                                        return new hl();
                                                    case 448:
                                                        return i4 == 0 ? new il() : new jl();
                                                    case 449:
                                                        return new kl();
                                                    case 450:
                                                        return new ll();
                                                    default:
                                                        switch (i3) {
                                                            case 452:
                                                                if (i4 == 1) {
                                                                    return new ug();
                                                                }
                                                                if (i4 == 2 || i4 == 3 || i4 == 42 || i4 == 43 || i4 == 44 || i4 == 45 || i4 == 46 || i4 == 47) {
                                                                    return new nl();
                                                                }
                                                                if (i4 == 4 || i4 == 5 || i4 == 6 || i4 == 21 || i4 == 60 || i4 == 72 || i4 == 73 || i4 == 168 || i4 == 175) {
                                                                    return new ei();
                                                                }
                                                                if (i4 == 7 || i4 == 8 || i4 == 9) {
                                                                    return new pn();
                                                                }
                                                                if (i4 == 10 || i4 == 11 || i4 == 145 || i4 == 146) {
                                                                    return new qn();
                                                                }
                                                                if (i4 == 12 || i4 == 13 || i4 == 16 || i4 == 33 || i4 == 85 || i4 == 209) {
                                                                    return new pi();
                                                                }
                                                                if (i4 == 14 || i4 == 15 || i4 == 81 || i4 == 82 || i4 == 83 || i4 == 84) {
                                                                    return new eh();
                                                                }
                                                                if (i4 == 17 || i4 == 18) {
                                                                    return new ho();
                                                                }
                                                                if (i4 == 19) {
                                                                    return new oi();
                                                                }
                                                                if (i4 == 20 || i4 == 32) {
                                                                    return new io();
                                                                }
                                                                if (i4 == 22) {
                                                                    return new ah();
                                                                }
                                                                if (i4 == 23) {
                                                                    return new in();
                                                                }
                                                                if (i4 == 24 || i4 == 25 || i4 == 26 || i4 == 27 || i4 == 28 || i4 == 29 || i4 == 30 || i4 == 31 || i4 == 61 || i4 == 62 || i4 == 63 || i4 == 77 || i4 == 78) {
                                                                    return new oo();
                                                                }
                                                                if (i4 == 34 || i4 == 35 || i4 == 36) {
                                                                    return new lo();
                                                                }
                                                                if (i4 == 37) {
                                                                    return new no();
                                                                }
                                                                if (i4 == 38) {
                                                                    return new om();
                                                                }
                                                                if (i4 == 39) {
                                                                    return new qg();
                                                                }
                                                                if (i4 == 40) {
                                                                    return new fo();
                                                                }
                                                                if (i4 == 41) {
                                                                    return new km();
                                                                }
                                                                if (i4 == 48 || i4 == 49) {
                                                                    return new module.canbus.j0();
                                                                }
                                                                if (i4 == 50 || i4 == 51) {
                                                                    return new qo();
                                                                }
                                                                if (i4 == 52 || i4 == 53) {
                                                                    return new un();
                                                                }
                                                                if (i4 == 54) {
                                                                    return new pi();
                                                                }
                                                                if (i4 == 55 || i4 == 96 || i4 == 97 || i4 == 188) {
                                                                    return new qi();
                                                                }
                                                                if (i4 == 56 || i4 == 105 || i4 == 106 || i4 == 107 || i4 == 195 || i4 == 202 || i4 == 240) {
                                                                    return new em();
                                                                }
                                                                if (i4 == 57) {
                                                                    return new ln();
                                                                }
                                                                if (i4 == 58 || i4 == 140 || i4 == 157) {
                                                                    return new tn();
                                                                }
                                                                if (i4 == 59) {
                                                                    return new lm();
                                                                }
                                                                if (i4 == 64 || i4 == 65 || i4 == 66 || i4 == 67 || i4 == 68 || i4 == 69 || i4 == 70 || i4 == 71) {
                                                                    return new mm();
                                                                }
                                                                if (i4 == 74 || i4 == 123 || i4 == 124 || i4 == 236 || i4 == 237) {
                                                                    return new xn();
                                                                }
                                                                if (i4 == 75 || i4 == 92) {
                                                                    return new dm();
                                                                }
                                                                if (i4 == 76) {
                                                                    return new ql();
                                                                }
                                                                if (i4 == 79) {
                                                                    return new hn();
                                                                }
                                                                if (i4 == 80) {
                                                                    return new an();
                                                                }
                                                                if (i4 == 86) {
                                                                    return new fn();
                                                                }
                                                                if (i4 == 87 || i4 == 89 || i4 == 158) {
                                                                    return new rm();
                                                                }
                                                                if (i4 == 88) {
                                                                    return new ol();
                                                                }
                                                                if (i4 == 90) {
                                                                    return new yl();
                                                                }
                                                                if (i4 == 91) {
                                                                    return new po();
                                                                }
                                                                if (i4 == 93) {
                                                                    return new gn();
                                                                }
                                                                if (i4 == 94) {
                                                                    return new nn();
                                                                }
                                                                if (i4 == 95) {
                                                                    return new ui();
                                                                }
                                                                if (i4 == 98 || i4 == 99 || i4 == 100 || i4 == 101 || i4 == 102) {
                                                                    return new lg();
                                                                }
                                                                if (i4 == 103) {
                                                                    return new nm();
                                                                }
                                                                if (i4 == 104 || i4 == 189 || i4 == 190) {
                                                                    return new on();
                                                                }
                                                                if (i4 == 108) {
                                                                    return new im();
                                                                }
                                                                if (i4 == 109) {
                                                                    return new bo();
                                                                }
                                                                if (i4 == 110) {
                                                                    return new wn();
                                                                }
                                                                if (i4 == 111 || i4 == 126 || i4 == 186 || i4 == 196 || i4 == 206 || i4 == 207) {
                                                                    return new di();
                                                                }
                                                                if (i4 == 112) {
                                                                    return new ro();
                                                                }
                                                                if (i4 == 113) {
                                                                    return new vn();
                                                                }
                                                                if (i4 == 114 || i4 == 115) {
                                                                    return new co();
                                                                }
                                                                if (i4 == 116) {
                                                                    return new xm();
                                                                }
                                                                if (i4 == 117 || i4 == 118) {
                                                                    return new yn();
                                                                }
                                                                if (i4 == 119) {
                                                                    return new dn();
                                                                }
                                                                if (i4 == 120) {
                                                                    return new hm();
                                                                }
                                                                if (i4 == 121) {
                                                                    return new cn();
                                                                }
                                                                if (i4 == 122 || i4 == 208 || i4 == 252) {
                                                                    return new jm();
                                                                }
                                                                if (i4 == 125) {
                                                                    return new kn();
                                                                }
                                                                if (i4 == 127 || i4 == 128 || i4 == 234 || i4 == 235) {
                                                                    return new zm();
                                                                }
                                                                if (i4 == 129 || i4 == 141) {
                                                                    return new vm();
                                                                }
                                                                if (i4 == 130 || i4 == 131 || i4 == 220 || i4 == 221 || i4 == 222 || i4 == 223) {
                                                                    return new eo();
                                                                }
                                                                if (i4 == 132 || i4 == 246 || i4 == 247 || i4 == 248 || i4 == 249 || i4 == 250 || i4 == 251) {
                                                                    return new yh();
                                                                }
                                                                if (i4 == 133) {
                                                                    return new go();
                                                                }
                                                                if (i4 == 134) {
                                                                    return new ml();
                                                                }
                                                                if (i4 == 135) {
                                                                    return new so();
                                                                }
                                                                if (i4 == 136 || i4 == 137) {
                                                                    return new ao();
                                                                }
                                                                if (i4 == 138 || i4 == 139) {
                                                                    return new rl();
                                                                }
                                                                if (i4 == 142 || i4 == 143 || i4 == 144 || i4 == 169 || i4 == 170 || i4 == 171) {
                                                                    return new zl();
                                                                }
                                                                if (i4 == 147 || i4 == 148 || i4 == 149 || i4 == 150 || i4 == 151 || i4 == 152 || i4 == 153 || i4 == 154 || i4 == 155 || i4 == 156) {
                                                                    return new vl();
                                                                }
                                                                if (i4 == 159) {
                                                                    return new tl();
                                                                }
                                                                if (i4 == 160) {
                                                                    return new bn();
                                                                }
                                                                if (i4 == 161) {
                                                                    return new gm();
                                                                }
                                                                if (i4 == 162 || i4 == 163 || i4 == 164 || i4 == 165) {
                                                                    return new xl();
                                                                }
                                                                if (i4 == 166 || i4 == 167) {
                                                                    return new ii();
                                                                }
                                                                if (i4 == 172) {
                                                                    return new sl();
                                                                }
                                                                if (i4 == 173) {
                                                                    return new mi();
                                                                }
                                                                if (i4 == 174 || i4 == 215) {
                                                                    return new cm();
                                                                }
                                                                if (i4 == 176) {
                                                                    return new sh();
                                                                }
                                                                if (i4 == 177 || i4 == 178) {
                                                                    return new jo();
                                                                }
                                                                if (i4 == 179 || i4 == 180 || i4 == 181 || i4 == 182 || i4 == 212) {
                                                                    return new sn();
                                                                }
                                                                if (i4 == 183) {
                                                                    return new zn();
                                                                }
                                                                if (i4 == 184) {
                                                                    return new tm();
                                                                }
                                                                if (i4 == 185) {
                                                                    return new ym();
                                                                }
                                                                if (i4 == 187) {
                                                                    return new fm();
                                                                }
                                                                if (i4 == 191) {
                                                                    return new jn();
                                                                }
                                                                if (i4 == 192) {
                                                                    return new um();
                                                                }
                                                                if (i4 == 193 || i4 == 194) {
                                                                    return new gh();
                                                                }
                                                                if (i4 == 197 || i4 == 198 || i4 == 199) {
                                                                    return new Cdo();
                                                                }
                                                                if (i4 == 200 || i4 == 201) {
                                                                    return new en();
                                                                }
                                                                if (i4 == 203 || i4 == 204) {
                                                                    return new ko();
                                                                }
                                                                if (i4 == 205) {
                                                                    return new bm();
                                                                }
                                                                if (i4 == 210) {
                                                                    return new pm();
                                                                }
                                                                if (i4 == 211) {
                                                                    return new hh();
                                                                }
                                                                if (i4 == 213 || i4 == 214) {
                                                                    return new pl();
                                                                }
                                                                if (i4 == 216) {
                                                                    return new qm();
                                                                }
                                                                if (i4 == 217 || i4 == 218 || i4 == 219) {
                                                                    return new wl();
                                                                }
                                                                if (i4 == 224) {
                                                                    return new mo();
                                                                }
                                                                if (i4 == 225) {
                                                                    return new ul();
                                                                }
                                                                if (i4 == 226 || i4 == 227 || i4 == 228 || i4 == 229 || i4 == 230 || i4 == 231 || i4 == 232 || i4 == 233) {
                                                                    return new am();
                                                                }
                                                                if (i4 == 238) {
                                                                    return new rn();
                                                                }
                                                                if (i4 == 239) {
                                                                    return new mn();
                                                                }
                                                                if (i4 == 241 || i4 == 242 || i4 == 243 || i4 == 244 || i4 == 245) {
                                                                    return new vf();
                                                                }
                                                                return (i4 == 253 || i4 == 254) ? new mn() : new zi();
                                                            case 453:
                                                                if (i4 == 1 || i4 == 2) {
                                                                    return new yn();
                                                                }
                                                                if (i4 == 3 || i4 == 132) {
                                                                    return new sm();
                                                                }
                                                                if (i4 == 4 || i4 == 5 || i4 == 6 || i4 == 7) {
                                                                    return new hh();
                                                                }
                                                                if (i4 == 8) {
                                                                    return new jf();
                                                                }
                                                                if (i4 == 9) {
                                                                    return new ni();
                                                                }
                                                                if (i4 == 10) {
                                                                    return new dp();
                                                                }
                                                                if (i4 == 11 || i4 == 87 || i4 == 88) {
                                                                    return new rn();
                                                                }
                                                                if (i4 == 12) {
                                                                    return new wm();
                                                                }
                                                                if (i4 == 13) {
                                                                    return new hq();
                                                                }
                                                                if (i4 == 14 || i4 == 193) {
                                                                    return new up();
                                                                }
                                                                if (i4 == 15) {
                                                                    return new aq();
                                                                }
                                                                if (i4 == 16) {
                                                                    return new qp();
                                                                }
                                                                if (i4 == 17 || i4 == 18 || i4 == 136 || i4 == 137 || i4 == 147 || i4 == 148) {
                                                                    return new eh();
                                                                }
                                                                if (i4 == 19 || i4 == 20) {
                                                                    return new tp();
                                                                }
                                                                if (i4 == 21) {
                                                                    return new yo();
                                                                }
                                                                if (i4 == 22) {
                                                                    return new ug();
                                                                }
                                                                if (i4 == 23) {
                                                                    return new ap();
                                                                }
                                                                if (i4 == 24) {
                                                                    return new mp();
                                                                }
                                                                if (i4 == 25) {
                                                                    return new tn();
                                                                }
                                                                if (i4 == 26 || i4 == 138 || i4 == 139) {
                                                                    return new eq();
                                                                }
                                                                if (i4 == 27 || i4 == 28) {
                                                                    return new vm();
                                                                }
                                                                if (i4 == 29 || i4 == 30 || i4 == 31 || i4 == 32 || i4 == 65 || i4 == 66 || i4 == 67 || i4 == 68 || i4 == 69 || i4 == 70 || i4 == 71 || i4 == 200 || i4 == 201 || i4 == 202 || i4 == 203) {
                                                                    return new mo();
                                                                }
                                                                if (i4 == 33 || i4 == 34 || i4 == 35) {
                                                                    return new gp();
                                                                }
                                                                if (i4 == 36) {
                                                                    return new cp();
                                                                }
                                                                if (i4 == 37 || i4 == 38 || i4 == 129 || i4 == 245) {
                                                                    return new tm();
                                                                }
                                                                if (i4 == 39) {
                                                                    return new ep();
                                                                }
                                                                if (i4 == 40) {
                                                                    return new bp();
                                                                }
                                                                if (i4 == 41 || i4 == 42) {
                                                                    return new lp();
                                                                }
                                                                if (i4 == 43 || i4 == 44 || i4 == 46 || i4 == 47) {
                                                                    return new wp();
                                                                }
                                                                if (i4 == 45 || i4 == 48) {
                                                                    return new mn();
                                                                }
                                                                if (i4 == 49 || i4 == 50 || i4 == 51) {
                                                                    return new ki();
                                                                }
                                                                if (i4 == 52 || i4 == 53 || i4 == 54) {
                                                                    return new ei();
                                                                }
                                                                if (i4 == 55 || i4 == 56 || i4 == 57 || i4 == 58 || i4 == 59 || i4 == 60 || i4 == 61) {
                                                                    return new ql();
                                                                }
                                                                if (i4 == 62 || i4 == 63 || i4 == 64) {
                                                                    return new oq();
                                                                }
                                                                if (i4 == 72) {
                                                                    return new to();
                                                                }
                                                                if (i4 == 73 || i4 == 91) {
                                                                    return new mi();
                                                                }
                                                                if (i4 == 74 || i4 == 196 || i4 == 197) {
                                                                    return new pp();
                                                                }
                                                                if (i4 == 75 || i4 == 76) {
                                                                    return new gq();
                                                                }
                                                                if (i4 == 77) {
                                                                    return new op();
                                                                }
                                                                if (i4 == 78) {
                                                                    return new zo();
                                                                }
                                                                if (i4 == 79 || i4 == 80 || i4 == 124 || i4 == 125) {
                                                                    return new gh();
                                                                }
                                                                if (i4 == 81 || i4 == 82 || i4 == 83 || i4 == 84) {
                                                                    return new wo();
                                                                }
                                                                if (i4 == 85 || i4 == 86) {
                                                                    return new jp();
                                                                }
                                                                if (i4 == 89 || i4 == 90) {
                                                                    return new eg();
                                                                }
                                                                if (i4 == 92 || i4 == 93) {
                                                                    return new ii();
                                                                }
                                                                if (i4 == 94) {
                                                                    return new fq();
                                                                }
                                                                if (i4 == 95) {
                                                                    return new bq();
                                                                }
                                                                if (i4 == 96 || i4 == 127) {
                                                                    return new cq();
                                                                }
                                                                if (i4 == 97 || i4 == 98 || i4 == 99 || i4 == 100 || i4 == 101 || i4 == 102 || i4 == 103 || i4 == 104 || i4 == 105 || i4 == 106 || i4 == 107 || i4 == 108 || i4 == 109 || i4 == 110 || i4 == 111 || i4 == 112 || i4 == 113 || i4 == 114 || i4 == 115 || i4 == 116 || i4 == 117 || i4 == 118 || i4 == 119 || i4 == 120) {
                                                                    return new wl();
                                                                }
                                                                if (i4 == 121) {
                                                                    return new xo();
                                                                }
                                                                if (i4 == 122) {
                                                                    return new fp();
                                                                }
                                                                if (i4 == 123) {
                                                                    return new xg();
                                                                }
                                                                if (i4 == 126) {
                                                                    return new pq();
                                                                }
                                                                if (i4 == 128) {
                                                                    return new vm();
                                                                }
                                                                if (i4 == 130 || i4 == 199) {
                                                                    return new zh();
                                                                }
                                                                if (i4 == 131) {
                                                                    return new uo();
                                                                }
                                                                if (i4 == 133) {
                                                                    return new mq();
                                                                }
                                                                if (i4 == 134 || i4 == 135) {
                                                                    return new ip();
                                                                }
                                                                if (i4 == 140 || i4 == 141 || i4 == 142) {
                                                                    return new vo();
                                                                }
                                                                if (i4 == 143 || i4 == 144 || i4 == 145 || i4 == 146) {
                                                                    return new module.canbus.k0();
                                                                }
                                                                if (i4 >= 149 && i4 <= 189) {
                                                                    return new ao();
                                                                }
                                                                if (i4 == 190) {
                                                                    return new Cdo();
                                                                }
                                                                if (i4 == 191 || i4 == 192) {
                                                                    return new np();
                                                                }
                                                                if (i4 == 194) {
                                                                    return new sp();
                                                                }
                                                                if (i4 == 195) {
                                                                    return new vp();
                                                                }
                                                                if (i4 == 198) {
                                                                    return new yp();
                                                                }
                                                                if (i4 == 204 || i4 == 205 || i4 == 206 || i4 == 207 || i4 == 208 || i4 == 209 || i4 == 210 || i4 == 211 || i4 == 212 || i4 == 213 || i4 == 214 || i4 == 215 || i4 == 216 || i4 == 217 || i4 == 218 || i4 == 219 || i4 == 220 || i4 == 221 || i4 == 222 || i4 == 223 || i4 == 224 || i4 == 225 || i4 == 226 || i4 == 227 || i4 == 228 || i4 == 229 || i4 == 230 || i4 == 231 || i4 == 232 || i4 == 233 || i4 == 234 || i4 == 235 || i4 == 236) {
                                                                    return new kq();
                                                                }
                                                                if (i4 == 237 || i4 == 238 || i4 == 239) {
                                                                    return new kp();
                                                                }
                                                                if (i4 == 240 || i4 == 241) {
                                                                    return new hp();
                                                                }
                                                                if (i4 == 242) {
                                                                    return new jq();
                                                                }
                                                                if (i4 == 243) {
                                                                    return new rp();
                                                                }
                                                                if (i4 == 244) {
                                                                    return new zp();
                                                                }
                                                                if (i4 == 246 || i4 == 247) {
                                                                    return new nq();
                                                                }
                                                                if (i4 == 248) {
                                                                    return new iq();
                                                                }
                                                                if (i4 == 249) {
                                                                    return new dq();
                                                                }
                                                                if (i4 == 250) {
                                                                    return new xp();
                                                                }
                                                                return (i4 == 251 || i4 == 252 || i4 == 253 || i4 == 254) ? new lq() : new zi();
                                                            case 454:
                                                                if (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4 || i4 == 5 || i4 == 6 || i4 == 7 || i4 == 8 || i4 == 9 || i4 == 10) {
                                                                    return new tr();
                                                                }
                                                                if (i4 == 11 || i4 == 12 || i4 == 13 || i4 == 14 || i4 == 15 || i4 == 16) {
                                                                    return new or();
                                                                }
                                                                if (i4 == 17 || i4 == 18 || i4 == 19) {
                                                                    return new nr();
                                                                }
                                                                if (i4 == 20 || i4 == 21 || i4 == 22 || i4 == 23 || i4 == 24 || i4 == 25 || i4 == 26 || i4 == 27) {
                                                                    return new cm();
                                                                }
                                                                if (i4 == 28) {
                                                                    return new ao();
                                                                }
                                                                if (i4 == 29 || i4 == 39) {
                                                                    return new ch();
                                                                }
                                                                if (i4 == 30 || i4 == 31 || i4 == 32 || i4 == 33 || i4 == 34 || i4 == 35 || i4 == 36 || i4 == 37) {
                                                                    return new wl();
                                                                }
                                                                if (i4 == 38 || i4 == 233) {
                                                                    return new wp();
                                                                }
                                                                if (i4 == 40 || i4 == 101) {
                                                                    return new gh();
                                                                }
                                                                if (i4 == 41) {
                                                                    return new yq();
                                                                }
                                                                if (i4 == 42 || i4 == 43 || i4 == 44 || i4 == 45 || i4 == 46 || i4 == 47 || i4 == 48 || i4 == 49 || i4 == 50 || i4 == 51 || i4 == 52 || i4 == 53) {
                                                                    return new sr();
                                                                }
                                                                if (i4 == 54 || i4 == 55 || i4 == 58 || i4 == 59) {
                                                                    return new eh();
                                                                }
                                                                if (i4 == 56 || i4 == 57) {
                                                                    return new fn();
                                                                }
                                                                if (i4 == 60 || i4 == 61) {
                                                                    return new cm();
                                                                }
                                                                if (i4 == 62 || i4 == 63 || i4 == 64 || i4 == 65 || i4 == 66 || i4 == 67 || i4 == 68) {
                                                                    return new hr();
                                                                }
                                                                if (i4 == 69 || i4 == 70 || i4 == 71 || i4 == 72 || i4 == 73 || i4 == 74 || i4 == 75 || i4 == 76 || i4 == 77 || i4 == 78 || i4 == 79 || i4 == 80 || i4 == 81 || i4 == 82 || i4 == 83 || i4 == 84 || i4 == 85 || i4 == 86 || i4 == 87 || i4 == 88 || i4 == 89 || i4 == 90 || i4 == 91 || i4 == 92 || i4 == 93 || i4 == 94 || i4 == 95 || i4 == 96 || i4 == 97 || i4 == 98 || i4 == 99 || i4 == 100) {
                                                                    return new rr();
                                                                }
                                                                if (i4 == 102 || i4 == 103 || i4 == 104 || i4 == 128 || i4 == 156 || i4 == 157 || i4 == 158) {
                                                                    return new hi();
                                                                }
                                                                if (i4 == 105) {
                                                                    return new di();
                                                                }
                                                                if (i4 == 106 || i4 == 107) {
                                                                    return new gp();
                                                                }
                                                                if (i4 == 108) {
                                                                    return new jp();
                                                                }
                                                                if (i4 == 109 || i4 == 161 || i4 == 176 || i4 == 177) {
                                                                    return new ph();
                                                                }
                                                                if (i4 == 110 || i4 == 111) {
                                                                    return new fr();
                                                                }
                                                                if (i4 == 112) {
                                                                    return new pr();
                                                                }
                                                                if (i4 == 113 || i4 == 114 || i4 == 115 || i4 == 116 || i4 == 117 || i4 == 118 || i4 == 147 || i4 == 148 || i4 == 150 || i4 == 163 || i4 == 167 || i4 == 168) {
                                                                    return new di();
                                                                }
                                                                if (i4 == 119 || i4 == 120 || i4 == 121) {
                                                                    return new xn();
                                                                }
                                                                if (i4 == 122 || i4 == 123 || i4 == 124) {
                                                                    return new ii();
                                                                }
                                                                if (i4 == 125 || i4 == 126) {
                                                                    return new mr();
                                                                }
                                                                if (i4 == 127) {
                                                                    return new wn();
                                                                }
                                                                if (i4 == 129) {
                                                                    return new ar();
                                                                }
                                                                if (i4 == 130 || i4 == 131 || i4 == 132 || i4 == 133 || i4 == 134 || i4 == 135 || i4 == 136) {
                                                                    return new zp();
                                                                }
                                                                if (i4 == 137) {
                                                                    return new rq();
                                                                }
                                                                if (i4 == 138) {
                                                                    return new wq();
                                                                }
                                                                if (i4 == 139) {
                                                                    return new er();
                                                                }
                                                                if (i4 == 140) {
                                                                    return new xq();
                                                                }
                                                                if (i4 == 141 || i4 == 142 || i4 == 143 || i4 == 144) {
                                                                    return new li();
                                                                }
                                                                if (i4 == 145) {
                                                                    return new sq();
                                                                }
                                                                if (i4 == 146 || i4 == 246) {
                                                                    return new zo();
                                                                }
                                                                if (i4 == 149) {
                                                                    return new fq();
                                                                }
                                                                if (i4 == 151) {
                                                                    return new mi();
                                                                }
                                                                if (i4 == 152) {
                                                                    return new zq();
                                                                }
                                                                if (i4 == 153) {
                                                                    return new qr();
                                                                }
                                                                if (i4 == 154 || i4 == 155) {
                                                                    return new ei();
                                                                }
                                                                if (i4 == 159 || i4 == 160 || i4 == 244 || i4 == 245) {
                                                                    return new ni();
                                                                }
                                                                if (i4 == 162) {
                                                                    return new tp();
                                                                }
                                                                if (i4 == 164 || i4 == 165) {
                                                                    return new gr();
                                                                }
                                                                if (i4 == 166) {
                                                                    return new ir();
                                                                }
                                                                if (i4 == 169 || i4 == 170 || i4 == 171 || i4 == 172) {
                                                                    return new lq();
                                                                }
                                                                if (i4 == 173 || i4 == 199) {
                                                                    return new kr();
                                                                }
                                                                if (i4 == 174) {
                                                                    return new jr();
                                                                }
                                                                if (i4 == 175) {
                                                                    return new ln();
                                                                }
                                                                if (i4 == 178 || i4 == 179) {
                                                                    return new vp();
                                                                }
                                                                if (i4 == 180 || i4 == 181) {
                                                                    return new yh();
                                                                }
                                                                if (i4 == 182 || i4 == 183) {
                                                                    return new tq();
                                                                }
                                                                if (i4 == 184) {
                                                                    return new ur();
                                                                }
                                                                if (i4 == 185 || i4 == 186 || i4 == 187 || i4 == 188 || i4 == 189 || i4 == 190 || i4 == 191 || i4 == 192 || i4 == 193 || i4 == 194 || i4 == 195 || i4 == 196 || i4 == 197 || i4 == 198) {
                                                                    return new kq();
                                                                }
                                                                if (i4 == 200 || i4 == 239) {
                                                                    return new xg();
                                                                }
                                                                if (i4 == 201 || i4 == 202 || i4 == 203 || i4 == 204 || i4 == 205 || i4 == 206 || i4 == 207) {
                                                                    return new lr();
                                                                }
                                                                if (i4 == 208 || i4 == 209) {
                                                                    return new qq();
                                                                }
                                                                if (i4 == 210 || i4 == 211) {
                                                                    return new yn();
                                                                }
                                                                if (i4 == 212) {
                                                                    return new vo();
                                                                }
                                                                if (i4 == 213) {
                                                                    return new vr();
                                                                }
                                                                if (i4 == 214 || i4 == 215) {
                                                                    return new ui();
                                                                }
                                                                if (i4 == 216 || i4 == 222) {
                                                                    return new tm();
                                                                }
                                                                if (i4 == 217 || i4 == 218) {
                                                                    return new nn();
                                                                }
                                                                if (i4 == 219 || i4 == 220) {
                                                                    return new br();
                                                                }
                                                                if (i4 == 221) {
                                                                    return new vm();
                                                                }
                                                                if (i4 == 223) {
                                                                    return new zm();
                                                                }
                                                                if (i4 == 224 || i4 == 225 || i4 == 226 || i4 == 240 || i4 == 241 || i4 == 242 || i4 == 243) {
                                                                    return new vq();
                                                                }
                                                                if (i4 == 227 || i4 == 228 || i4 == 230 || i4 == 232 || i4 == 247 || i4 == 248 || i4 == 249 || i4 == 250) {
                                                                    return new gh();
                                                                }
                                                                if (i4 == 229 || i4 == 231 || i4 == 237 || i4 == 238 || i4 == 253 || i4 == 254) {
                                                                    return new eh();
                                                                }
                                                                if (i4 == 234 || i4 == 235) {
                                                                    return new cr();
                                                                }
                                                                if (i4 == 236) {
                                                                    return new dr();
                                                                }
                                                                if (i4 == 251) {
                                                                    return new uq();
                                                                }
                                                                return i4 == 252 ? new ym() : new zi();
                                                            case 455:
                                                                if (i4 == 4 || i4 == 5) {
                                                                    return new li();
                                                                }
                                                                if (i4 == 6 || i4 == 7 || i4 == 8) {
                                                                    return new as();
                                                                }
                                                                if (i4 == 9 || i4 == 10) {
                                                                    return new wl();
                                                                }
                                                                if (i4 == 11) {
                                                                    return new gq();
                                                                }
                                                                if (i4 == 12) {
                                                                    return new ls();
                                                                }
                                                                if (i4 == 13 || i4 == 14) {
                                                                    return new ps();
                                                                }
                                                                if (i4 == 15 || i4 == 16 || i4 == 41 || i4 == 42 || i4 == 43 || i4 == 46 || i4 == 47 || i4 == 51 || i4 == 52 || i4 == 159 || i4 == 160 || i4 == 182 || i4 == 183 || i4 == 187 || i4 == 188 || i4 == 189 || i4 == 190 || i4 == 193 || i4 == 194) {
                                                                    return new eh();
                                                                }
                                                                if (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 17 || i4 == 18 || i4 == 49 || i4 == 53 || i4 == 54 || i4 == 55 || i4 == 56 || i4 == 57 || i4 == 62 || i4 == 63 || i4 == 64 || i4 == 70 || i4 == 72 || i4 == 73 || i4 == 75 || i4 == 78 || i4 == 79 || i4 == 80 || i4 == 81 || i4 == 84 || i4 == 154 || i4 == 155 || i4 == 161 || i4 == 166 || i4 == 217 || i4 == 218 || i4 == 248) {
                                                                    return new gh();
                                                                }
                                                                if (i4 == 19 || i4 == 20 || i4 == 21 || i4 == 22) {
                                                                    return new cm();
                                                                }
                                                                if (i4 == 23 || i4 == 24 || i4 == 83 || i4 == 144 || i4 == 145 || i4 == 146 || i4 == 147 || i4 == 240 || i4 == 241 || i4 == 242 || i4 == 243) {
                                                                    return new tq();
                                                                }
                                                                if (i4 == 25) {
                                                                    return new bj();
                                                                }
                                                                if (i4 == 26 || i4 == 27 || i4 == 28 || i4 == 29 || i4 == 30 || i4 == 31 || i4 == 32) {
                                                                    return new yn();
                                                                }
                                                                if (i4 == 33 || i4 == 128 || i4 == 129) {
                                                                    return new ii();
                                                                }
                                                                if (i4 == 34) {
                                                                    return new tm();
                                                                }
                                                                if (i4 == 35) {
                                                                    return new ar();
                                                                }
                                                                if (i4 == 36 || i4 == 37 || i4 == 38) {
                                                                    return new es();
                                                                }
                                                                if (i4 == 39) {
                                                                    return new xg();
                                                                }
                                                                if (i4 == 40) {
                                                                    return new fh();
                                                                }
                                                                if (i4 == 44) {
                                                                    return new vr();
                                                                }
                                                                if (i4 == 45) {
                                                                    return new jq();
                                                                }
                                                                if (i4 == 48 || i4 == 149 || i4 == 197 || i4 == 198 || i4 == 220 || i4 == 221 || i4 == 222 || i4 == 223 || i4 == 224 || i4 == 225) {
                                                                    return new zo();
                                                                }
                                                                if (i4 == 50 || i4 == 207) {
                                                                    return new nh();
                                                                }
                                                                if (i4 == 58 || i4 == 59 || i4 == 60 || i4 == 61 || i4 == 120 || i4 == 121 || i4 == 122 || i4 == 123 || i4 == 195 || i4 == 196 || i4 == 219) {
                                                                    return new mo();
                                                                }
                                                                if (i4 == 65 || i4 == 156) {
                                                                    return new yn();
                                                                }
                                                                if (i4 == 66 || i4 == 67 || i4 == 68) {
                                                                    return new zh();
                                                                }
                                                                if (i4 == 69 || i4 == 114 || i4 == 201 || i4 == 202 || i4 == 203) {
                                                                    return new ph();
                                                                }
                                                                if (i4 == 71 || i4 == 211 || i4 == 212) {
                                                                    return new wo();
                                                                }
                                                                if (i4 == 74) {
                                                                    return new wp();
                                                                }
                                                                if (i4 == 76 || i4 == 77 || i4 == 249 || i4 == 250) {
                                                                    return new tr();
                                                                }
                                                                if (i4 == 82 || i4 == 113) {
                                                                    return new yr();
                                                                }
                                                                if (i4 == 85 || i4 == 86) {
                                                                    return new er();
                                                                }
                                                                if (i4 == 87 || i4 == 181) {
                                                                    return new wr();
                                                                }
                                                                if (i4 == 88) {
                                                                    return new pr();
                                                                }
                                                                if (i4 == 89 || i4 == 90 || i4 == 91 || i4 == 92 || i4 == 109 || i4 == 110 || i4 == 130 || i4 == 131 || i4 == 132) {
                                                                    return new ni();
                                                                }
                                                                if (i4 == 93 || i4 == 94 || i4 == 95 || i4 == 96 || i4 == 99) {
                                                                    return new di();
                                                                }
                                                                if (i4 == 97 || i4 == 98 || i4 == 163 || i4 == 164 || i4 == 165 || i4 == 227 || i4 == 228) {
                                                                    return new zr();
                                                                }
                                                                if (i4 == 100) {
                                                                    return new os();
                                                                }
                                                                if (i4 == 101) {
                                                                    return new eg();
                                                                }
                                                                if (i4 == 102) {
                                                                    return new xr();
                                                                }
                                                                if (i4 == 103) {
                                                                    return new tm();
                                                                }
                                                                if (i4 == 104 || i4 == 105 || i4 == 106 || i4 == 107 || i4 == 108 || i4 == 158 || i4 == 177 || i4 == 178 || i4 == 179 || i4 == 180) {
                                                                    return new oo();
                                                                }
                                                                if (i4 == 111) {
                                                                    return new ym();
                                                                }
                                                                if (i4 == 112) {
                                                                    return new ms();
                                                                }
                                                                if (i4 == 115 || i4 == 116) {
                                                                    return new ah();
                                                                }
                                                                if (i4 == 117 || i4 == 118 || i4 == 245) {
                                                                    return new ei();
                                                                }
                                                                if (i4 == 119) {
                                                                    return new zq();
                                                                }
                                                                if (i4 == 124) {
                                                                    return new cs();
                                                                }
                                                                if (i4 == 125 || i4 == 126 || i4 == 153) {
                                                                    return new cp();
                                                                }
                                                                if (i4 == 127) {
                                                                    return new ns();
                                                                }
                                                                if (i4 == 133) {
                                                                    return new tm();
                                                                }
                                                                if (i4 == 134) {
                                                                    return new hi();
                                                                }
                                                                if (i4 == 135) {
                                                                    return new on();
                                                                }
                                                                if (i4 == 136) {
                                                                    return new zq();
                                                                }
                                                                if (i4 == 137) {
                                                                    return new wn();
                                                                }
                                                                if (i4 == 138 || i4 == 139 || i4 == 140 || i4 == 141 || i4 == 142 || i4 == 143 || i4 == 230 || i4 == 231) {
                                                                    return new ao();
                                                                }
                                                                if (i4 == 148) {
                                                                    return new xm();
                                                                }
                                                                if (i4 == 150 || i4 == 151 || i4 == 152 || i4 == 157 || i4 == 191 || i4 == 192 || i4 == 206) {
                                                                    return new ch();
                                                                }
                                                                if (i4 == 162) {
                                                                    return new vm();
                                                                }
                                                                if (i4 == 167 || i4 == 168 || i4 == 169 || i4 == 170 || i4 == 171 || i4 == 253) {
                                                                    return new ds();
                                                                }
                                                                if (i4 == 172 || i4 == 173 || i4 == 174 || i4 == 184 || i4 == 234 || i4 == 235) {
                                                                    return new tm();
                                                                }
                                                                if (i4 == 175 || i4 == 176) {
                                                                    return new hs();
                                                                }
                                                                if (i4 == 185 || i4 == 186) {
                                                                    return new yh();
                                                                }
                                                                if (i4 == 199 || i4 == 200) {
                                                                    return new is();
                                                                }
                                                                if (i4 == 204) {
                                                                    return new qm();
                                                                }
                                                                if (i4 == 205) {
                                                                    return new iq();
                                                                }
                                                                if (i4 == 208 || i4 == 209) {
                                                                    return new ks();
                                                                }
                                                                if (i4 == 210 || i4 == 232) {
                                                                    return new yq();
                                                                }
                                                                if (i4 == 213 || i4 == 214) {
                                                                    return new fq();
                                                                }
                                                                if (i4 == 215 || i4 == 216) {
                                                                    return new qn();
                                                                }
                                                                if (i4 == 226) {
                                                                    return new bs();
                                                                }
                                                                if (i4 == 229) {
                                                                    return new fs();
                                                                }
                                                                if (i4 == 233) {
                                                                    return new jn();
                                                                }
                                                                if (i4 == 236) {
                                                                    return new pp();
                                                                }
                                                                if (i4 == 237 || i4 == 238 || i4 == 239) {
                                                                    return new ao();
                                                                }
                                                                if (i4 == 244) {
                                                                    return new ql();
                                                                }
                                                                if (i4 == 246 || i4 == 247) {
                                                                    return new em();
                                                                }
                                                                if (i4 == 251 || i4 == 252) {
                                                                    return new gs();
                                                                }
                                                                if (i4 == 254) {
                                                                    return new js();
                                                                }
                                                            case 456:
                                                                if (i4 == 1) {
                                                                    return new ym();
                                                                }
                                                                if (i4 == 2 || i4 == 3 || i4 == 4 || i4 == 134) {
                                                                    return new ei();
                                                                }
                                                                if (i4 == 5 || i4 == 6 || i4 == 7 || i4 == 8 || i4 == 9) {
                                                                    return new hi();
                                                                }
                                                                if (i4 == 10) {
                                                                    return new qp();
                                                                }
                                                                if (i4 == 11 || i4 == 12) {
                                                                    return new zo();
                                                                }
                                                                if (i4 == 13 || i4 == 14 || i4 == 19 || i4 == 79 || i4 == 110 || i4 == 111 || i4 == 112 || i4 == 113 || i4 == 123 || i4 == 124 || i4 == 125 || i4 == 126 || i4 == 141 || i4 == 142 || i4 == 143 || i4 == 144 || i4 == 145 || i4 == 146 || i4 == 150 || i4 == 151 || i4 == 156) {
                                                                    return new mo();
                                                                }
                                                                if (i4 == 15 || i4 == 26 || i4 == 106) {
                                                                    return new er();
                                                                }
                                                                if (i4 == 16 || i4 == 17 || i4 == 135 || i4 == 136 || i4 == 137 || i4 == 138) {
                                                                    return new tr();
                                                                }
                                                                if (i4 == 18 || i4 == 114 || i4 == 115 || i4 == 116 || i4 == 117 || i4 == 118 || i4 == 119) {
                                                                    return new lg();
                                                                }
                                                                if (i4 == 20 || i4 == 89 || i4 == 132 || i4 == 133) {
                                                                    return new qn();
                                                                }
                                                                if (i4 == 21 || i4 == 84 || i4 == 85) {
                                                                    return new jn();
                                                                }
                                                                if (i4 == 22 || i4 == 23 || i4 == 24 || i4 == 25 || i4 == 81 || i4 == 82 || i4 == 96 || i4 == 97 || i4 == 98 || i4 == 99 || i4 == 152 || i4 == 153 || i4 == 154 || i4 == 155 || i4 == 162 || i4 == 163 || i4 == 164 || i4 == 165 || i4 == 166 || i4 == 167 || i4 == 168 || i4 == 169 || i4 == 170 || i4 == 171 || i4 == 172 || i4 == 173 || i4 == 174 || i4 == 175 || i4 == 176 || i4 == 177 || i4 == 178 || i4 == 187 || i4 == 188) {
                                                                    return new tq();
                                                                }
                                                                if (i4 == 27 || i4 == 28 || i4 == 29 || i4 == 30 || i4 == 31 || i4 == 32 || i4 == 33 || i4 == 34 || i4 == 35 || i4 == 36 || i4 == 37 || i4 == 38 || i4 == 39 || i4 == 40 || i4 == 41 || i4 == 42 || i4 == 43 || i4 == 44 || i4 == 45 || i4 == 46 || i4 == 47 || i4 == 48 || i4 == 49 || i4 == 50 || i4 == 51 || i4 == 52) {
                                                                    return new vs();
                                                                }
                                                                if (i4 == 53 || i4 == 54 || i4 == 55) {
                                                                    return new vf();
                                                                }
                                                                if (i4 == 56 || i4 == 83 || i4 == 107 || i4 == 108) {
                                                                    return new tm();
                                                                }
                                                                if (i4 == 57 || i4 == 58) {
                                                                    return new wl();
                                                                }
                                                                if (i4 == 59) {
                                                                    return new xq();
                                                                }
                                                                if (i4 == 60) {
                                                                    return new zo();
                                                                }
                                                                if (i4 == 61) {
                                                                    return new es();
                                                                }
                                                                if (i4 == 62 || i4 == 63 || i4 == 64 || i4 == 65 || i4 == 66 || i4 == 122) {
                                                                    return new ds();
                                                                }
                                                                if (i4 == 67 || i4 == 68 || i4 == 72 || i4 == 73 || i4 == 74 || i4 == 75 || i4 == 76 || i4 == 77 || i4 == 120 || i4 == 121 || i4 == 127 || i4 == 128 || i4 == 129) {
                                                                    return new eh();
                                                                }
                                                                if (i4 == 69 || i4 == 70 || i4 == 71 || i4 == 100 || i4 == 101 || i4 == 131 || i4 == 184 || i4 == 185) {
                                                                    return new gh();
                                                                }
                                                                if (i4 == 78) {
                                                                    return new wn();
                                                                }
                                                                if (i4 == 80) {
                                                                    return new ni();
                                                                }
                                                                if (i4 == 86) {
                                                                    return new cp();
                                                                }
                                                                if (i4 == 87) {
                                                                    return new ar();
                                                                }
                                                                if (i4 == 88) {
                                                                    return new ph();
                                                                }
                                                                if (i4 == 90) {
                                                                    return new cg();
                                                                }
                                                                if (i4 == 91) {
                                                                    return new wr();
                                                                }
                                                                if (i4 == 92 || i4 == 93 || i4 == 94 || i4 == 95) {
                                                                    return new us();
                                                                }
                                                                if (i4 == 102 || i4 == 103) {
                                                                    return new hr();
                                                                }
                                                                if (i4 == 104 || i4 == 105) {
                                                                    return new ph();
                                                                }
                                                                if (i4 == 109) {
                                                                    return new rs();
                                                                }
                                                                if (i4 == 130) {
                                                                    return new yq();
                                                                }
                                                                if (i4 == 139 || i4 == 140) {
                                                                    return new qi();
                                                                }
                                                                if (i4 == 147 || i4 == 148) {
                                                                    return new cm();
                                                                }
                                                                if (i4 == 149) {
                                                                    return new sq();
                                                                }
                                                                if (i4 == 157 || i4 == 158 || i4 == 159 || i4 == 160 || i4 == 161 || i4 == 179 || i4 == 180 || i4 == 181 || i4 == 182) {
                                                                    return new zr();
                                                                }
                                                                if (i4 == 183) {
                                                                    return new qs();
                                                                }
                                                                if (i4 == 186) {
                                                                    return new ws();
                                                                }
                                                                if (i4 == 189) {
                                                                    return new ts();
                                                                }
                                                                if (i4 == 190) {
                                                                    return new wr();
                                                                }
                                                                if (i4 == 191) {
                                                                    return new xg();
                                                                }
                                                                if (i4 == 192) {
                                                                    return new ss();
                                                                }
                                                                if (i4 == 193) {
                                                                    return new jq();
                                                                }
                                                                if (i4 == 194) {
                                                                    return new jp();
                                                                }
                                                                return new xs();
                                                            default:
                                                                switch (i3) {
                                                                    case 460:
                                                                        return new xs();
                                                                    case 461:
                                                                        return new ys();
                                                                    case 462:
                                                                        return new zs();
                                                                    case 463:
                                                                        return new at();
                                                                    default:
                                                                        switch (i3) {
                                                                            case View.PFLAG2_TEXT_ALIGNMENT_MASK /* 57344 */:
                                                                                return new bt();
                                                                            case 57345:
                                                                                return new o6();
                                                                            default:
                                                                                switch (i3) {
                                                                                    case BatteryStats.HistoryItem.STATE_DATA_CONNECTION_MASK /* 61440 */:
                                                                                        return i4 == 2 ? new ct() : new dt();
                                                                                    case 61441:
                                                                                        return new et();
                                                                                    case 61442:
                                                                                        return new ft();
                                                                                    case 61443:
                                                                                        return new gt();
                                                                                    case 61444:
                                                                                        return new ht();
                                                                                    case 61445:
                                                                                        return new it();
                                                                                    case 61446:
                                                                                        return new jt();
                                                                                    case 61447:
                                                                                        return new kt();
                                                                                    default:
                                                                                        return new lt();
                                                                                }
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
                return new v0();
        }
        return new k0.b();
    }

    public static void i(int i2, int i3, boolean z2, int i4) {
        boolean z3;
        if (f9734n || f9735o) {
            return;
        }
        int i5 = SystemProperties.getInt("persist.fyt.track_angle_max", 40);
        int i6 = i5 != 0 ? i5 : 40;
        int i7 = i6 * 4;
        int i8 = ((i2 & 255) | ((i3 << 8) & 65280)) & 65535;
        if ((32768 & i8) != 0) {
            i8 = 65536 - i8;
            z3 = true;
        } else {
            z3 = false;
        }
        int i9 = (i8 * i7) / (i4 * 2);
        int i10 = i7 / 2;
        if (i9 > i10) {
            i9 = i10;
        }
        int i11 = (!z2 ? z3 : !z3) ? i10 - i9 : i9 + i10;
        if (u0.i.l3().f17464l == 1) {
            u0.d.I3(41, i10, i7, i6 * 2);
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> staticTrackEnable = " + u0.i.l3().f17464l);
        } else {
            if (u0.b.f17316d1 == 1) {
                i11 = i7 - i11;
                u0.d.I3(41, i11, i7, i6 * 2);
            } else {
                u0.d.I3(41, i11, i7, i6 * 2);
            }
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> WheelAngle = " + i11 + "------ cntnum = " + i7);
        }
        A0(1049, new int[]{0, ((i11 - i10) * 64) / i7}, null, null);
        if (u0.b.I2 != i11) {
            u0.b.I2 = i11;
            u0.c.I.c();
        }
        f9733m = i11;
    }

    public static String i0() {
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

    public static void j(int i2, int i3, int i4, int i5) {
        if (f9734n || f9735o) {
            return;
        }
        int i6 = SystemProperties.getInt("persist.fyt.track_angle_max", 40);
        int i7 = i6 != 0 ? i6 : 40;
        int i8 = i7 * 4;
        int i9 = ((((i2 & 255) | ((i3 << 8) & 65280)) & 65535) * i8) / (i5 * 2);
        int i10 = i8 / 2;
        if (i9 > i10) {
            i9 = i10;
        }
        int i11 = i4 == 1 ? i9 + i10 : i10 - i9;
        if (u0.i.l3().f17464l == 1) {
            u0.d.I3(41, i10, i8, i7 * 2);
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> staticTrackEnable = " + u0.i.l3().f17464l);
        } else {
            if (u0.b.f17316d1 == 1) {
                i11 = i8 - i11;
                u0.d.I3(41, i11, i8, i7 * 2);
            } else {
                u0.d.I3(41, i11, i8, i7 * 2);
            }
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> WheelAngle = " + i11 + "------ cntnum = " + i8);
        }
        A0(1049, new int[]{0, ((i11 - i10) * 64) / i8}, null, null);
        if (u0.b.I2 != i11) {
            u0.b.I2 = i11;
            u0.c.I.c();
        }
    }

    public static void j0(int i2) {
        int i3;
        if (nt.f8649j == 1) {
            if (u0.i.l3().f17464l == 1) {
                i2 = 35;
            }
        } else if (u0.i.l3().f17464l == 1) {
            i2 = 20;
        }
        if (u0.b.f17316d1 == 1) {
            i2 = nt.f8649j == 1 ? 70 - i2 : 40 - i2;
            u0.d.I3(41, i2);
        } else {
            u0.d.I3(41, i2);
        }
        if (nt.f8649j == 1) {
            i3 = ((i2 - 35) * 32) / 35;
            A0(1049, new int[]{0, i3}, null, null);
        } else {
            i3 = ((i2 - 20) * 32) / 20;
            A0(1049, new int[]{0, i3}, null, null);
        }
        a.f.p().t(LogType.CANBUS, "Update steer  FinalMain.U_STEER_ANGLE === " + i3);
        if (u0.b.I2 != i3) {
            u0.b.I2 = i3;
            u0.c.I.c();
        }
    }

    public static void k(int i2, int i3, boolean z2, int i4) {
        boolean z3;
        if (f9734n || f9735o) {
            return;
        }
        int i5 = SystemProperties.getInt("persist.fyt.track_angle_max", 40);
        int i6 = i5 != 0 ? i5 : 40;
        int i7 = i6 * 4;
        int i8 = ((i2 & 255) | ((i3 << 8) & 65280)) & FileObserver.ALL_EVENTS;
        if ((i8 & 2048) != 0) {
            i8 = 4096 - i8;
            z3 = true;
        } else {
            z3 = false;
        }
        int i9 = (i8 * i7) / (i4 * 2);
        int i10 = i7 / 2;
        if (i9 > i10) {
            i9 = i10;
        }
        int i11 = (!z2 ? z3 : !z3) ? i10 - i9 : i9 + i10;
        if (u0.i.l3().f17464l == 1) {
            u0.d.I3(41, i10, i7, i6 * 2);
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> staticTrackEnable = " + u0.i.l3().f17464l);
        } else {
            if (u0.b.f17316d1 == 1) {
                i11 = i7 - i11;
                u0.d.I3(41, i11, i7, i6 * 2);
            } else {
                u0.d.I3(41, i11, i7, i6 * 2);
            }
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> WheelAngle = " + i11 + "------ cntnum = " + i7);
        }
        A0(1049, new int[]{0, ((i11 - i10) * 64) / i7}, null, null);
        if (u0.b.I2 != i11) {
            u0.b.I2 = i11;
            u0.c.I.c();
        }
    }

    public static boolean k0() {
        if (SystemProperties.getInt("persist.syu.fourcamera2.truck", 0) == 5) {
            return false;
        }
        int i2 = SystemProperties.getInt("persist.syu.camera360", 0);
        return i2 == 1 || i2 == 5 || SystemProperties.getBoolean("sys.syu.camera360", false);
    }

    public static void l(int i2, int i3, boolean z2, int i4) {
        if (f9734n || f9735o) {
            return;
        }
        int i5 = SystemProperties.getInt("persist.fyt.track_angle_max", 40);
        int i6 = i5 != 0 ? i5 : 40;
        int i7 = i6 * 4;
        int i8 = ((i2 & 255) | ((i3 << 8) & 65280)) & 65535;
        boolean z3 = (32768 & i8) != 0;
        int i9 = ((i8 & 32767) * i7) / (i4 * 2);
        int i10 = i7 / 2;
        if (i9 > i10) {
            i9 = i10;
        }
        int i11 = (!z2 ? z3 : !z3) ? i10 - i9 : i9 + i10;
        if (u0.i.l3().f17464l == 1) {
            u0.d.I3(41, i10, i7, i6 * 2);
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> staticTrackEnable = " + u0.i.l3().f17464l);
        } else {
            if (u0.b.f17316d1 == 1) {
                i11 = i7 - i11;
                u0.d.I3(41, i11, i7, i6 * 2);
            } else {
                u0.d.I3(41, i11, i7, i6 * 2);
            }
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> WheelAngle = " + i11 + "------ cntnum = " + i7);
        }
        A0(1049, new int[]{0, ((i11 - i10) * 64) / i7}, null, null);
        if (u0.b.I2 != i11) {
            u0.b.I2 = i11;
            u0.c.I.c();
        }
    }

    public static boolean l0(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public static void m(int i2, int i3, int i4, boolean z2, int i5) {
        int i6;
        boolean z3;
        if (f9734n || f9735o) {
            return;
        }
        int i7 = SystemProperties.getInt("persist.fyt.track_angle_max", 40);
        int i8 = i7 != 0 ? i7 : 40;
        int i9 = i8 * 4;
        int i10 = ((i2 & 255) | ((i3 << 8) & 65280)) & 65535;
        if (i10 < i4) {
            i6 = i4 - i10;
            z3 = true;
        } else {
            i6 = i10 - i4;
            z3 = false;
        }
        int i11 = (i6 * i9) / (i5 * 2);
        int i12 = i9 / 2;
        if (i11 > i12) {
            i11 = i12;
        }
        int i13 = (!z2 ? !z3 : z3) ? i11 + i12 : i12 - i11;
        if (u0.i.l3().f17464l == 1) {
            u0.d.I3(41, i12, i9, i8 * 2);
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> staticTrackEnable = " + u0.i.l3().f17464l);
        } else {
            if (u0.b.f17316d1 == 1) {
                i13 = i9 - i13;
                u0.d.I3(41, i13, i9, i8 * 2);
            } else {
                u0.d.I3(41, i13, i9, i8 * 2);
            }
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> WheelAngle = " + i13 + "------ cntnum = " + i9);
        }
        A0(1049, new int[]{0, ((i13 - i12) * 64) / i9}, null, null);
        if (u0.b.I2 != i13) {
            u0.b.I2 = i13;
            u0.c.I.c();
        }
    }

    public static void m0(int i2) {
        if (nt.Y != i2) {
            nt.Y = i2;
            y0(1010, i2);
        }
    }

    public static void n(int i2, int i3, boolean z2, int i4) {
        if (f9734n || f9735o) {
            return;
        }
        int i5 = SystemProperties.getInt("persist.fyt.track_angle_max", 40);
        int i6 = i5 != 0 ? i5 : 40;
        int i7 = i6 * 4;
        int i8 = ((i2 & 255) | ((i3 << 8) & 65280)) & 65535;
        boolean z3 = (i8 & 1) != 0;
        int i9 = (i8 * i7) / (i4 * 2);
        int i10 = i7 / 2;
        if (i9 > i10) {
            i9 = i10;
        }
        int i11 = (!z2 ? z3 : !z3) ? i10 - i9 : i9 + i10;
        if (u0.i.l3().f17464l == 1) {
            u0.d.I3(41, i10, i7, i6 * 2);
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> staticTrackEnable = " + u0.i.l3().f17464l);
        } else {
            if (u0.b.f17316d1 == 1) {
                i11 = i7 - i11;
                u0.d.I3(41, i11, i7, i6 * 2);
            } else {
                u0.d.I3(41, i11, i7, i6 * 2);
            }
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> WheelAngle = " + i11 + "------ cntnum = " + i7);
        }
        A0(1049, new int[]{0, ((i11 - i10) * 64) / i7}, null, null);
        if (u0.b.I2 != i11) {
            u0.b.I2 = i11;
            u0.c.I.c();
        }
    }

    public static String n0(String str) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(str)));
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return stringBuffer.toString();
                }
                stringBuffer.append(line + "\n");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
    }

    public static void o(int i2, boolean z2, int i3) {
        boolean z3;
        if (f9734n || f9735o) {
            return;
        }
        int i4 = SystemProperties.getInt("persist.fyt.track_angle_max", 40);
        int i5 = i4 != 0 ? i4 : 40;
        int i6 = i5 * 4;
        int i7 = i2 & 255;
        if ((i7 & 128) != 0) {
            i7 = 256 - i7;
            z3 = true;
        } else {
            z3 = false;
        }
        int i8 = (i7 * i6) / (i3 * 2);
        int i9 = i6 / 2;
        if (i8 > i9) {
            i8 = i9;
        }
        int i10 = (!z2 ? z3 : !z3) ? i9 - i8 : i8 + i9;
        if (u0.i.l3().f17464l == 1) {
            u0.d.I3(41, i9, i6, i5 * 2);
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> staticTrackEnable = " + u0.i.l3().f17464l);
        } else {
            if (u0.b.f17316d1 == 1) {
                i10 = i6 - i10;
                u0.d.I3(41, i10, i6, i5 * 2);
            } else {
                u0.d.I3(41, i10, i6, i5 * 2);
            }
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> WheelAngle = " + i10 + "------ cntnum = " + i6);
        }
        A0(1049, new int[]{0, ((i10 - i9) * 64) / i6}, null, null);
        if (u0.b.I2 != i10) {
            u0.b.I2 = i10;
            u0.c.I.c();
        }
        f9733m = i10;
    }

    public static void o0(Runnable runnable) {
        o1.j0.f16913h.d(runnable);
    }

    public static void p(int i2, int i3, int i4) {
        int i5;
        int i6;
        if (f9734n || f9735o) {
            return;
        }
        int i7 = SystemProperties.getInt("persist.fyt.track_angle_max", 40);
        int i8 = i7 != 0 ? i7 : 40;
        int i9 = i8 * 4;
        if (i2 != 0) {
            i5 = i2;
        } else {
            i5 = i3 != 0 ? i3 : 0;
        }
        int i10 = (i5 * i9) / (i4 * 2);
        int i11 = i9 / 2;
        if (i10 > i11) {
            i10 = i11;
        }
        if (i2 != 0) {
            i6 = i11 - i10;
        } else {
            i6 = i3 != 0 ? i11 + i10 : i11;
        }
        if (u0.i.l3().f17464l == 1) {
            u0.d.I3(41, i11, i9, i8 * 2);
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> staticTrackEnable = " + u0.i.l3().f17464l);
        } else {
            if (u0.b.f17316d1 == 1) {
                i6 = i9 - i6;
                u0.d.I3(41, i6, i9, i8 * 2);
            } else {
                u0.d.I3(41, i6, i9, i8 * 2);
            }
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> WheelAngle = " + i6 + "------ cntnum = " + i9);
        }
        A0(1049, new int[]{0, ((i6 - i11) * 64) / i9}, null, null);
        if (u0.b.I2 != i6) {
            u0.b.I2 = i6;
            u0.c.I.c();
        }
    }

    public static void p0(Runnable runnable) {
        o1.j0.f16914i.d(runnable);
    }

    public static void q(int i2, int i3, int i4, boolean z2, int i5) {
        int i6;
        boolean z3;
        f9734n = true;
        int i7 = SystemProperties.getInt("persist.fyt.track_angle_max", 40);
        int i8 = i7 != 0 ? i7 : 40;
        int i9 = i8 * 4;
        int i10 = ((i2 & 255) | ((i3 << 8) & 65280)) & 65535;
        if (i10 < i4) {
            i6 = i4 - i10;
            z3 = true;
        } else {
            i6 = i10 - i4;
            z3 = false;
        }
        int i11 = (i6 * i9) / (i5 * 2);
        int i12 = i9 / 2;
        if (i11 > i12) {
            i11 = i12;
        }
        int i13 = (!z2 ? !z3 : z3) ? i11 + i12 : i12 - i11;
        if (u0.i.l3().f17464l == 1) {
            u0.d.I3(41, i12, i9, i8 * 2);
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> staticTrackEnable = " + u0.i.l3().f17464l);
        } else {
            if (u0.b.f17316d1 == 1) {
                i13 = i9 - i13;
                u0.d.I3(41, i13, i9, i8 * 2);
            } else {
                u0.d.I3(41, i13, i9, i8 * 2);
            }
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> WheelAngle = " + i13 + "------ cntnum = " + i9);
        }
        A0(1049, new int[]{0, ((i13 - i12) * 64) / i9}, null, null);
        if (u0.b.I2 != i13) {
            u0.b.I2 = i13;
            u0.c.I.c();
        }
    }

    public static void q0(Runnable runnable) {
        o1.j0.f16915j.d(runnable);
    }

    public static void r(int i2, int i3, boolean z2, int i4) {
        boolean z3;
        f9735o = true;
        int i5 = SystemProperties.getInt("persist.fyt.track_angle_max", 40);
        int i6 = i5 != 0 ? i5 : 40;
        int i7 = i6 * 4;
        int i8 = ((i2 & 255) | ((i3 << 8) & 65280)) & 65535;
        if ((32768 & i8) != 0) {
            i8 = 65536 - i8;
            z3 = true;
        } else {
            z3 = false;
        }
        int i9 = (i8 * i7) / (i4 * 2);
        int i10 = i7 / 2;
        if (i9 > i10) {
            i9 = i10;
        }
        int i11 = (!z2 ? z3 : !z3) ? i10 - i9 : i9 + i10;
        if (u0.i.l3().f17464l == 1) {
            u0.d.I3(41, i10, i7, i6 * 2);
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> staticTrackEnable = " + u0.i.l3().f17464l);
        } else {
            if (u0.b.f17316d1 == 1) {
                i11 = i7 - i11;
                u0.d.I3(41, i11, i7, i6 * 2);
            } else {
                u0.d.I3(41, i11, i7, i6 * 2);
            }
            a.f.p().t(LogType.CANBUS, "Update  U_STEER_ANGLE ---> WheelAngle = " + i11 + "------ cntnum = " + i7);
        }
        A0(1049, new int[]{0, ((i11 - i10) * 64) / i7}, null, null);
        if (u0.b.I2 != i11) {
            u0.b.I2 = i11;
            u0.c.I.c();
        }
        f9733m = i11;
    }

    public static void r0() {
        try {
            SyuJniNative syuJniNative = SyuJniNative.getInstance();
            if (syuJniNative != null) {
                syuJniNative.syu_jni_command(i.a.Theme_dialogTitleDecorLayout, null, null);
            }
        } catch (Exception unused) {
        }
    }

    public static void s(int i2) {
        if (nt.O != i2) {
            nt.O = i2;
            y0(1036, i2);
            D0(null);
        }
    }

    public static void s0(int i2) {
        if (nt.R != i2) {
            nt.R = i2;
            y0(1022, i2);
            m1.c.g(151, i2);
        }
    }

    public static void t() {
        if (o1.u.T(a.b.O)) {
            return;
        }
        o1.u.f(a.b.O);
        z.k.s(1, 0, 121);
        a.f.p().t(LogType.CANBUS, "Updata   FinalMain.U_RIGHTCAMERA_7870_ONOFF ---> 1");
        y0(1017, 1);
        u0.b.f17321f0 = 1;
        u0.d.I3(199, 1);
    }

    public static void t0(int i2) {
        if (i2 == 0) {
            s0(0);
            return;
        }
        if (i2 == 1) {
            s0(1);
        } else {
            if (i2 != 2) {
                return;
            }
            if (nt.R != 0) {
                s0(0);
            } else {
                s0(1);
            }
        }
    }

    public static boolean u() {
        return o1.u.k0(App.c(), "com.syu.panoramic");
    }

    public static void u0(int i2) {
        if (nt.Q != i2) {
            nt.Q = i2 != 1 ? 0 : 1;
            ot.f9022d.c();
        }
    }

    public static void v(int i2) {
        if (nt.Z != i2) {
            nt.Z = i2;
            ot.f9021c.c();
            y0(1031, i2);
        }
    }

    public static void v0(int i2) {
        y0(1006, 0);
    }

    public static void w0(int i2, int i3, String str) {
        A0(i2, new int[]{i3}, null, new String[]{str});
    }

    public static void x(Runnable runnable) {
        o1.j0.f16913h.c(runnable);
    }

    public static void x0(int i2, String str) {
        A0(i2, null, null, new String[]{str});
    }

    public static void y(Runnable runnable) {
        o1.j0.f16914i.c(runnable);
    }

    public static synchronized void y0(int i2, int... iArr) {
        boolean z2 = true;
        if (iArr.length == 1) {
            int[] iArr2 = nt.f8645g;
            if (o1.s0.h(iArr2, i2)) {
                if (iArr2[i2] != iArr[0]) {
                    iArr2[i2] = iArr[0];
                } else {
                    z2 = false;
                }
            }
        }
        if (z2) {
            A0(i2, iArr, null, null);
        }
    }

    public static void z(Runnable runnable) {
        o1.j0.f16915j.c(runnable);
    }

    public static void z0(int i2, int[] iArr, String str) {
        A0(i2, iArr, null, new String[]{str});
    }
}
